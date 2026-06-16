inline.NumInlined: 3334
inline.NumDeleted: 1601
begin_hunk_0_@_ZNK8facebook6hermes7tracing16TraceInterpreter11assertMatchERKNS1_10SynthTrace10TraceValueERKNS_3jsi5ValueE:bb.a
  br i1 %.not.i, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = xor i64 %rhsv.cast.i, %lhsv.cast.i
  %i.ct = icmp slt i64 %i.cs, 0
  br i1 %i.ct, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread39, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit

_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit: ; preds = %bb.o
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.cw = fadd double %i.cu, %i.cv
  %i.cx = fmul double %i.cw, f0x3CB0000000000000
  %i.cy = fsub double %i.cp, %i.cr
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ugt double %i.cz, %i.cx
  br i1 %i.da, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread39, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread

_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread39: ; preds = %bb.o, %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i1 noundef zeroext true)
  %i.dd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.1)
  %i.de = tail call fastcc noundef zeroext i1 @_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd(double noundef %i.cp, double noundef %i.cr)
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i1 noundef zeroext %i.de)
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.df), !inline_history !72 ; 0 uses
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !73
  %i.dk = add i64 %i.dj, -1
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.dk)
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dl), !inline_history !72 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !10, !range !67, !noundef !68
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load i32, ptr %2, align 8
  %i.dr = icmp ne i32 %i.dq, 6
  %or.cond48.not = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond48.not, label %bb.q, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i1 noundef zeroext true)
  %i.du = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.1)
  %i.dv = load i32, ptr %2, align 8, !tbaa !69
  %i.dw = icmp eq i32 %i.dv, 6
  %i.dx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i1 noundef zeroext %i.dw)
  %i.dy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx), !inline_history !72 ; 0 uses
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !73
  %i.ec = add i64 %i.eb, -1
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i64 noundef %i.ec)
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ed), !inline_history !72 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.r:                                             ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !10, !range !67, !noundef !68
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = load i32, ptr %2, align 8
  %i.ej = icmp ne i32 %i.ei, 7
  %or.cond51.not = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond51.not, label %bb.s, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.el = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i1 noundef zeroext true)
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.1)
  %i.en = load i32, ptr %2, align 8, !tbaa !69
  %i.eo = icmp eq i32 %i.en, 7
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i1 noundef zeroext %i.eo)
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !inline_history !72 ; 0 uses
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.et = load i64, ptr %i.es, align 8, !tbaa !73
  %i.eu = add i64 %i.et, -1
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i64 noundef %i.eu)
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev), !inline_history !72 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10, !range !67, !noundef !68
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = load i32, ptr %2, align 8
  %i.fb = icmp ne i32 %i.fa, 4
  %or.cond54.not = select i1 %i.ez, i1 %i.fb, i1 false
  br i1 %or.cond54.not, label %bb.u, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i1 noundef zeroext true)
  %i.fe = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull @.str.1)
  %i.ff = load i32, ptr %2, align 8, !tbaa !69
  %i.fg = icmp eq i32 %i.ff, 4
  %i.fh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i1 noundef zeroext %i.fg)
  %i.fi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.fh), !inline_history !72 ; 0 uses
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !73
  %i.fm = add i64 %i.fl, -1
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i64 noundef %i.fm)
  %i.fo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.fn), !inline_history !72 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.v:                                             ; preds = %bb.a
  %i.fp = icmp eq i32 %i.a, 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.fr = load i8, ptr %i.fq, align 1, !range !67
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond = select i1 %i.fp, i1 %i.fs, i1 false
  %i.ft = load i32, ptr %2, align 8
  %i.fu = icmp ne i32 %i.ft, 5
  %or.cond56.not = select i1 %or.cond, i1 %i.fu, i1 false
  br i1 %or.cond56.not, label %bb.w, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, i1 noundef zeroext true)
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull @.str.1)
  %i.fy = load i32, ptr %2, align 8, !tbaa !69
  %i.fz = icmp eq i32 %i.fy, 5
  %i.ga = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i1 noundef zeroext %i.fz)
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga), !inline_history !72 ; 0 uses
  %i.gc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !73
  %i.gf = add i64 %i.ge, -1
  %i.gg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i64 noundef %i.gf)
  %i.gh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.gg), !inline_history !72 ; 0 uses
  tail call void @abort() #34
  unreachable

_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit.thread: ; preds = %bb.k, %bb.n, %bb.f, %_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd.exit, %bb.d, %bb.r, %bb.v, %bb.t, %bb.p, %bb.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN8facebook6hermes7tracing12_GLOBAL__N_113isDoubleEqualEdd(double noundef %0, double noundef %1) unnamed_addr #4 {
bb.a:
  %lhsv.cast = bitcast double %0 to i64           ; 2 uses
  %rhsv.cast = bitcast double %1 to i64           ; 2 uses
  %.not = icmp eq i64 %lhsv.cast, %rhsv.cast
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = xor i64 %rhsv.cast, %lhsv.cast
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef double @llvm.fabs.f64(double %0)
  %i.d = tail call noundef double @llvm.fabs.f64(double %1)
  %i.e = fadd double %i.c, %i.d
  %i.f = fmul double %i.e, f0x3CB0000000000000
  %i.g = fsub double %0, %1
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp ole double %i.h, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreterC2ERNS_3jsi7RuntimeERKNS2_14ExecuteOptionsERKNS1_10SynthTraceESt3mapISt5arrayIhLm20EESt10shared_ptrIKNS3_6BufferEESt4lessISE_ESaISt4pairIKSE_SI_EEE(ptr noundef nonnull align 8 dereferenceable(648) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(316) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 21 uses
  %7 = alloca %"class.std::vector.203", align 8   ; 9 uses
  %8 = alloca %"class.std::optional", align 8     ; 6 uses
  %9 = alloca %"class.facebook::jsi::Object", align 8 ; 7 uses
  %10 = alloca %"struct.std::pair.65", align 8    ; 24 uses
  store ptr %1, ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptionsC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(316) %i.a, ptr noundef nonnull align 8 dereferenceable(316) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.d, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !78
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.b, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %i.n, ptr %i.o, align 8, !tbaa !80
  store ptr null, ptr %i.c, align 8, !tbaa !76
  store ptr %i.e, ptr %i.h, align 8, !tbaa !81
  store ptr %i.e, ptr %i.j, align 8, !tbaa !82
  store i64 0, ptr %i.m, align 8, !tbaa !80
  br label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2EOSE_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.b, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.b, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.s, align 8, !tbaa !80
  br label %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2EOSE_.exit

_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2EOSE_.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.f, %bb.b ]
  store i32 %.sink.i.i.i.i, ptr %i.b, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %3, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  store i64 1, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, i8 0, i64 88, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 1, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 1, ptr %i.aj, align 8, !tbaa !90
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.al, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 0, ptr %i.ap, align 8, !tbaa !92
  store i8 0, ptr %i.ao, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 0, ptr %i.aq, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.as = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.as, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2EOSE_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.av = load ptr, ptr %1, align 8, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ay = invoke { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmN8facebook3jsi5ValueEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJmNS3_6ObjectEEEES0_INS7_14_Node_iteratorIS5_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE7emplaceIJmNS1_6ObjectEEEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.h ; 0 uses

_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE7emplaceIJmNS1_6ObjectEEEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.e
  %i.az = load ptr, ptr %9, align 8, !tbaa !96    ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE7emplaceIJmNS1_6ObjectEEEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE7emplaceIJmNS1_6ObjectEEEES7_INSt8__detail14_Node_iteratorIS9_Lb0ELb0EEEbEDpOT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook3jsi7PointerD2Ev.exit22

bb.h:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %9, align 8, !tbaa !96    ; 3 uses
  %.not.i21 = icmp eq ptr %i.be, null
  br i1 %.not.i21, label %_ZN8facebook3jsi7PointerD2Ev.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit22

_ZN8facebook3jsi7PointerD2Ev.exit22:              ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.bd, %bb.h ], [ %i.bd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.bl

bb.j:                                             ; preds = %_ZN8facebook3jsi7PointerD2Ev.exit, %_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2EOSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !100
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !84, !noalias !100
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store i64 1, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 15 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !noalias !100
  store float 1.000000e+00, ptr %i.bl, align 8, !tbaa !86, !noalias !100
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !noalias !100
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !103, !noalias !100
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !106, !noalias !100
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph150.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i

.lr.ph150.i:                                      ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.k

._crit_edge151.i:                                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.by = icmp ne ptr %.sroa.056.1.lcssa.i, %.sroa.11.1.lcssa.i
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.11.1.lcssa.i, i64 -16 ; 2 uses
  %i.bz = icmp ult ptr %.sroa.056.1.lcssa.i, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge151.i, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %._crit_edge151.i ] ; 4 uses
  %.pn10.i.i.i = phi ptr [ %.sroa.0.011.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.11.1.lcssa.i, %._crit_edge151.i ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %.sroa.056.1.lcssa.i, %._crit_edge151.i ] ; 4 uses
  %i.ca = load i64, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !107, !noalias !100
  %i.cb = load i64, ptr %.sroa.0.011.i.i.i, align 8, !tbaa !107, !noalias !100
  store i64 %i.cb, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !107, !noalias !100
  store i64 %i.ca, ptr %.sroa.0.011.i.i.i, align 8, !tbaa !107, !noalias !100
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.pn10.i.i.i, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !107, !noalias !100
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !107, !noalias !100
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !107, !noalias !100
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !107, !noalias !100
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i, i64 -16 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %.sroa.0.0.i.i.i
  br i1 %i.ch, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i, !llvm.loop !108

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph150.i
  %storemerge148.in.i = phi i64 [ %i.bt, %.lr.ph150.i ], [ %storemerge148.i, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 2 uses
  %.sroa.056.0147.i = phi ptr [ null, %.lr.ph150.i ], [ %.sroa.056.1.lcssa.i, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %.sroa.11.0146.i = phi ptr [ null, %.lr.ph150.i ], [ %.sroa.11.1.lcssa.i, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 2 uses
  %.sroa.18.0145.i = phi ptr [ null, %.lr.ph150.i ], [ %.sroa.18.1.lcssa.i, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
  %storemerge148.i = add nsw i64 %storemerge148.in.i, -1 ; 5 uses
  %i.ci = load ptr, ptr %i.bh, align 8, !tbaa !106, !noalias !100
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %storemerge148.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !110, !noalias !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !100
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !94, !noalias !100
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !100
  invoke void %i.cn(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.203") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %bb.l unwind label %bb.n, !noalias !100

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %7, align 8, !tbaa !112, !noalias !100 ; 3 uses
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !112, !noalias !100 ; 2 uses
  %.not137.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not137.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i
  %.pre201.i = load ptr, ptr %7, align 8, !tbaa !114, !noalias !100
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.l
  %i.cq = phi ptr [ %i.co, %bb.l ], [ %.pre201.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.sroa.18.1.lcssa.i = phi ptr [ %.sroa.18.0145.i, %bb.l ], [ %.sroa.18.2.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.sroa.11.1.lcssa.i = phi ptr [ %.sroa.11.0146.i, %bb.l ], [ %.sroa.11.2.i, %._crit_edge.loopexit.i ] ; 6 uses
  %.sroa.056.1.lcssa.i = phi ptr [ %.sroa.056.0147.i, %bb.l ], [ %.sroa.056.2.i, %._crit_edge.loopexit.i ] ; 6 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.cr = load ptr, ptr %i.bx, align 8, !tbaa !116, !noalias !100
  %i.cs = ptrtoint ptr %i.cr to i64
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing16TraceInterpreterC2ERNS_3jsi7RuntimeERKNS2_14ExecuteOptionsERKNS1_10SynthTraceESt3mapISt5arrayIhLm20EESt10shared_ptrIKNS3_6BufferEESt4lessISE_ESaISt4pairIKSE_SI_EEE:bb.a

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.as
  %i.gn = ashr exact i64 %i.gl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 576460752303423487)
  %i.gr = select i1 %i.gp, i64 576460752303423487, i64 %i.gq ; 3 uses
  %.not.i.i.i.i19.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i19.i)
  %i.gs = shl nuw nsw i64 %i.gr, 4
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #37
          to label %.noexc20.i unwind label %.loopexit74.i, !noalias !100 ; 5 uses

.noexc20.i:                                       ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store i64 %storemerge148.i, ptr %i.gu, align 8, !noalias !100
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i64 %i.gh, ptr %.sroa.6.0..sroa_idx45.i, align 8, !noalias !100
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.056.1141.i, %.sroa.11.1140.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc20.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gt, %.noexc20.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.056.1141.i, %.noexc20.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !129, !noalias !100
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %.sroa.11.1140.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !133

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc20.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gt, %.noexc20.i ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.056.1141.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.1141.i, i64 noundef %i.gl) #36, !noalias !100
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.au, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.gr
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i

bb.av:                                            ; preds = %.loopexit70.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit74.i:                                    ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit76.i = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.loopexit.split-lp75.i:                           ; preds = %bb.at
  %lpad.loopexit.split-lp77.i = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.i: ; preds = %bb.r, %bb.o, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.ar, %bb.q
  %.sroa.18.2.i = phi ptr [ %.sroa.18.1139.i, %bb.ar ], [ %.sroa.18.1139.i, %bb.o ], [ %.sroa.18.1139.i, %bb.q ], [ %i.gy, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.18.1139.i, %bb.r ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %i.gi, %bb.ar ], [ %.sroa.11.1140.i, %bb.o ], [ %.sroa.11.1140.i, %bb.q ], [ %i.gx, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.11.1140.i, %bb.r ] ; 2 uses
  %.sroa.056.2.i = phi ptr [ %.sroa.056.1141.i, %bb.ar ], [ %.sroa.056.1141.i, %bb.o ], [ %.sroa.056.1141.i, %bb.q ], [ %i.gt, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.056.1141.i, %bb.r ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.051.0138.i, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ha, %i.cp
  br i1 %.not.i23, label %._crit_edge.loopexit.i, label %.lr.ph.i

.body34.i:                                        ; preds = %.loopexit.split-lp75.i, %.loopexit74.i, %bb.av, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i
  %.sroa.18.1139175.i = phi ptr [ %.sroa.18.1139.i, %bb.av ], [ %.sroa.18.1139.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i ], [ %.sroa.11.1140.i, %.loopexit74.i ], [ %.sroa.11.1140.i, %.loopexit.split-lp75.i ]
  %.pn.i = phi { ptr, i32 } [ %i.gz, %bb.av ], [ %eh.lpad-body38.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit29.i.body.i ], [ %lpad.loopexit76.i, %.loopexit74.i ], [ %lpad.loopexit.split-lp77.i, %.loopexit.split-lp75.i ]
  %i.hb = load ptr, ptr %7, align 8, !tbaa !114, !noalias !100 ; 3 uses
  %.not.i.i.i21.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i21.i, label %_ZNSt6vectorImSaImEED2Ev.exit22.i, label %bb.aw

bb.aw:                                            ; preds = %.body34.i
  %i.hc = load ptr, ptr %i.bx, align 8, !tbaa !116, !noalias !100
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hf) #36, !noalias !100
  br label %_ZNSt6vectorImSaImEED2Ev.exit22.i

_ZNSt6vectorImSaImEED2Ev.exit22.i:                ; preds = %bb.aw, %.body34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !100
  br label %.body.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge151.i, %bb.j
  %.sroa.056.0.lcssa232.i = phi ptr [ null, %bb.j ], [ %.sroa.056.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.056.1.lcssa.i, %.lr.ph.i.i.i ] ; 7 uses
  %.sroa.11.0.lcssa231.i = phi ptr [ null, %bb.j ], [ %.sroa.11.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.11.1.lcssa.i, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.18.0.lcssa230.i = phi ptr [ null, %bb.j ], [ %.sroa.18.1.lcssa.i, %._crit_edge151.i ], [ %.sroa.18.1.lcssa.i, %.lr.ph.i.i.i ] ; 3 uses
  store ptr null, ptr %10, align 8, !tbaa !84, !alias.scope !100
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.hh = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  store i64 %i.hh, ptr %i.hg, align 8, !tbaa !85, !alias.scope !100
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr null, ptr %i.hi, align 8, !tbaa !119, !alias.scope !100
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !118, !noalias !100
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !118, !alias.scope !100
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !134
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 6 uses
  store ptr null, ptr %i.hn, align 8, !tbaa !126, !alias.scope !100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !100
  store ptr %10, ptr %5, align 8, !tbaa !136, !noalias !100
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc26.i unwind label %bb.bb

.noexc26.i:                                       ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !100
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 6 uses
  %i.hp = ptrtoint ptr %.sroa.11.0.lcssa231.i to i64
  %i.hq = ptrtoint ptr %.sroa.056.0.lcssa232.i to i64 ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i8 0, i64 24, i1 false), !alias.scope !100
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0.lcssa231.i, %.sroa.056.0.lcssa232.i
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.thread.i, label %bb.ax

.noexc4.i.thread.i:                               ; preds = %.noexc26.i
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr null, i64 %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false), !alias.scope !100
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !138, !alias.scope !100
  br label %.loopexit.i

bb.ax:                                            ; preds = %.noexc26.i
  %i.hv = icmp ugt i64 %i.hr, 9223372036854775792
  br i1 %i.hv, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !125

.noexc.i.i.i.i:                                   ; preds = %bb.ax
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i.i unwind label %bb.ay

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ax
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #37
          to label %.noexc4.i.i unwind label %bb.ay ; 4 uses

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.hw, ptr %i.ho, align 8, !tbaa !139, !alias.scope !100
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !140, !alias.scope !100
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hr
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !138, !alias.scope !100
  br label %.lr.ph.i.i.i.i.i.i23.i

.lr.ph.i.i.i.i.i.i23.i:                           ; preds = %.lr.ph.i.i.i.i.i.i23.i, %.noexc4.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i.i23.i ], [ %i.hw, %.noexc4.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i23.i ], [ %.sroa.056.0.lcssa232.i, %.noexc4.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i24.i = icmp eq ptr %i.ia, %.sroa.11.0.lcssa231.i
  br i1 %.not.i.i.i.i.i.i24.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i23.i, !llvm.loop !141

bb.ay:                                            ; preds = %_ZNSt15__new_allocatorISt4pairImmEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(80) %10) #35
  br label %.body.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i23.i, %.noexc4.i.thread.i
  %i.id = phi ptr [ %i.hs, %.noexc4.i.thread.i ], [ %i.hx, %.lr.ph.i.i.i.i.i.i23.i ]
  %.0.lcssa.i.i.i.i.i.i25.i = phi ptr [ null, %.noexc4.i.thread.i ], [ %i.ib, %.lr.ph.i.i.i.i.i.i23.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i25.i, ptr %i.id, align 8, !tbaa !140, !alias.scope !100
  %.not.i.i.i27.i = icmp eq ptr %.sroa.056.0.lcssa232.i, null
  br i1 %.not.i.i.i27.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i
  %i.ie = ptrtoint ptr %.sroa.18.0.lcssa230.i to i64
  %i.if = sub i64 %i.ie, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0.lcssa232.i, i64 noundef %i.if) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i:      ; preds = %bb.az, %.loopexit.i
  %i.ig = load ptr, ptr %i.bk, align 8, !tbaa !127, !noalias !100 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i28.i

.lr.ph.i.i.i.i28.i:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i28.i
  %.06.i.i.i.i.i = phi ptr [ %i.ih, %.lr.ph.i.i.i.i28.i ], [ %i.ig, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.ih = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #36
  %.not.i.i.i.i29.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i29.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i28.i, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i28.i, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i
  %i.ii = load ptr, ptr %6, align 8, !tbaa !84, !noalias !100
  %i.ij = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.ik = shl i64 %i.ij, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ii, i8 0, i64 %i.ik, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !noalias !100
  %i.il = load ptr, ptr %6, align 8, !tbaa !84, !noalias !100 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.bi
  br i1 %i.im, label %11, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.in = load i64, ptr %i.bj, align 8, !tbaa !85, !noalias !100
  %i.io = shl i64 %i.in, 3
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #36
  br label %11

bb.bb:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bb, %bb.ay, %_ZNSt6vectorImSaImEED2Ev.exit22.i, %bb.n
  %.sroa.18.4.i = phi ptr [ %.sroa.18.0145.i, %bb.n ], [ %.sroa.18.1139175.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %.sroa.18.0.lcssa230.i, %bb.ay ], [ %.sroa.18.0.lcssa230.i, %bb.bb ]
  %.sroa.056.4.i = phi ptr [ %.sroa.056.0147.i, %bb.n ], [ %.sroa.056.1141.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %.sroa.056.0.lcssa232.i, %bb.ay ], [ %.sroa.056.0.lcssa232.i, %bb.bb ] ; 3 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.cw, %bb.n ], [ %.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit22.i ], [ %i.ic, %bb.ay ], [ %i.ip, %bb.bb ]
  %.not.i.i.i30.i = icmp eq ptr %.sroa.056.4.i, null
  br i1 %.not.i.i.i30.i, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i, label %bb.bc

bb.bc:                                            ; preds = %.body.i
  %i.iq = ptrtoint ptr %.sroa.18.4.i to i64
  %i.ir = ptrtoint ptr %.sroa.056.4.i to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.4.i, i64 noundef %i.is) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i:    ; preds = %bb.bc, %.body.i
  %i.it = load ptr, ptr %i.bk, align 8, !tbaa !127 ; 2 uses
  %.not5.i.i.i.i36 = icmp eq ptr %i.it, null
  br i1 %.not5.i.i.i.i36, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i, %.lr.ph.i.i.i.i37
  %.06.i.i.i.i38 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i37 ], [ %i.it, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i ] ; 2 uses
  %i.iu = load ptr, ptr %.06.i.i.i.i38, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i38, i64 noundef 24) #36
  %.not.i.i.i.i39 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i39, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i37, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i37, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit31.i
  %i.iv = load ptr, ptr %6, align 8, !tbaa !84
  %i.iw = load i64, ptr %i.bj, align 8, !tbaa !85
  %i.ix = shl i64 %i.iw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.iv, i8 0, i64 %i.ix, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.iy = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.bi
  br i1 %i.iz, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ja = load i64, ptr %i.bj, align 8, !tbaa !85
  %i.jb = shl i64 %i.ja, 3
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #36
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %bb.bl

11:                                               ; preds = %bb.ba, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !100
  %12 = icmp eq ptr %10, %i.u
  br i1 %12, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEaSEOS8_.exit, label %bb.be, !prof !125

bb.be:                                            ; preds = %11
  %i.jc = load ptr, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %bb.be, %.lr.ph.i.i.i.i25
  %.06.i.i.i.i = phi ptr [ %i.jd, %.lr.ph.i.i.i.i25 ], [ %i.jc, %bb.be ] ; 2 uses
  %i.jd = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #36
  %.not.i.i.i.i26 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i26, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i, label %.lr.ph.i.i.i.i25, !llvm.loop !142

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i25, %bb.be
  %i.je = load ptr, ptr %i.u, align 8, !tbaa !84  ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.v
  br i1 %i.jf, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i
  %i.jg = load i64, ptr %i.w, align 8, !tbaa !85
  %i.jh = shl i64 %i.jg, 3
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #36
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i: ; preds = %bb.bf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_deallocate_nodesEPS5_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i64 16, i1 false), !tbaa.struct !134
  %i.ji = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.hn
  br i1 %i.jj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.jk = load ptr, ptr %i.hn, align 8, !tbaa !126
  store ptr %i.jk, ptr %i.v, align 8, !tbaa !126
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.jl = phi ptr [ %i.v, %bb.bg ], [ %i.ji, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i ] ; 2 uses
  store ptr %i.jl, ptr %i.u, align 8, !tbaa !84
  %i.jm = load i64, ptr %i.hg, align 8, !tbaa !85 ; 2 uses
  store i64 %i.jm, ptr %i.w, align 8, !tbaa !85
  %i.jn = load ptr, ptr %i.hi, align 8, !tbaa !127 ; 3 uses
  store ptr %i.jn, ptr %i.x, align 8, !tbaa !127
  %i.jo = load i64, ptr %i.hj, align 8, !tbaa !118
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !118
  %.not.i12.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i12.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !107
  %i.js = urem i64 %i.jr, %i.jm
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.js
  store ptr %i.x, ptr %i.jt, align 8, !tbaa !121
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i: ; preds = %bb.bi, %bb.bh
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %13, align 8, !tbaa !124
  store i64 1, ptr %i.hg, align 8, !tbaa !85
  store ptr null, ptr %i.hn, align 8, !tbaa !126
  store ptr %i.hn, ptr %10, align 8, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEaSEOS8_.exit

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEaSEOS8_.exit: ; preds = %11, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_update_bbeginEv.exit.i.i.i
  %i.ju = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !138
  %i.jx = load <2 x ptr>, ptr %i.ho, align 8, !tbaa !143
  store <2 x ptr> %i.jx, ptr %i.aa, align 8, !tbaa !143
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !138
  store ptr %i.jz, ptr %i.jv, align 8, !tbaa !138
  %.not.i.i.i.i.i27 = icmp eq ptr %i.ju, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i27, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29, label %_ZNSt6vectorISt4pairImmESaIS1_EEaSEOS3_.exit

_ZNSt6vectorISt4pairImmESaIS1_EEaSEOS3_.exit:     ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEaSEOS8_.exit
  %i.ka = ptrtoint ptr %i.jw to i64
  %i.kb = ptrtoint ptr %i.ju to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.kc) #36
  %.pr = load ptr, ptr %i.ho, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i28, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EEaSEOS3_.exit
  %i.kd = load ptr, ptr %i.jy, align 8, !tbaa !138
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %.pr to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.kg) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29:    ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEaSEOS8_.exit, %bb.bj, %_ZNSt6vectorISt4pairImmESaIS1_EEaSEOS3_.exit
  %i.kh = load ptr, ptr %i.hi, align 8, !tbaa !127 ; 2 uses
  %.not5.i.i.i.i.i30 = icmp eq ptr %i.kh, null
  br i1 %.not5.i.i.i.i.i30, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i34, label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29, %.lr.ph.i.i.i.i.i31
  %.06.i.i.i.i.i32 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i31 ], [ %i.kh, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29 ] ; 2 uses
  %i.ki = load ptr, ptr %.06.i.i.i.i.i32, align 8, !tbaa !119 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i32, i64 noundef 24) #36
  %.not.i.i.i.i.i33 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i33, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i34, label %.lr.ph.i.i.i.i.i31, !llvm.loop !142

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i34: ; preds = %.lr.ph.i.i.i.i.i31, %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit.i29
  %i.kj = load ptr, ptr %10, align 8, !tbaa !84
  %i.kk = load i64, ptr %i.hg, align 8, !tbaa !85
  %i.kl = shl i64 %i.kk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kj, i8 0, i64 %i.kl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  %i.km = load ptr, ptr %10, align 8, !tbaa !84   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.hn
  br i1 %i.kn, label %_ZNSt4pairISt13unordered_mapImmSt4hashImESt8equal_toImESaIS_IKmmEEESt6vectorIS_ImmESaISA_EEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i34
  %i.ko = load i64, ptr %i.hg, align 8, !tbaa !85
  %i.kp = shl i64 %i.ko, 3
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #36
  br label %_ZNSt4pairISt13unordered_mapImmSt4hashImESt8equal_toImESaIS_IKmmEEESt6vectorIS_ImmESaISA_EEED2Ev.exit

_ZNSt4pairISt13unordered_mapImmSt4hashImESt8equal_toImESaIS_IKmmEEESt6vectorIS_ImmESaISA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i34, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  ret void

bb.bl:                                            ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, %_ZN8facebook3jsi7PointerD2Ev.exit22
  %.pn14 = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit ], [ %.pn, %_ZN8facebook3jsi7PointerD2Ev.exit22 ]
  %i.kq = load ptr, ptr %i.an, align 8, !tbaa !144 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.ao
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.ks = load i64, ptr %i.ao, align 8, !tbaa !74
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt13unordered_mapImN8facebook3jsi10PropNameIDESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ah) #35
  call void @_ZNSt13unordered_mapImN8facebook3jsi5ValueESt4hashImESt8equal_toImESaISt4pairIKmS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ab) #35
  %i.ku = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !138
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #36
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bm
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #35
  call void @_ZNSt3mapISt5arrayIhLm20EESt10shared_ptrIKN8facebook3jsi6BufferEESt4lessIS1_ESaISt4pairIKS1_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.la) #35
  call void @_ZN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.a) #35
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter14ExecuteOptionsC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(316) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.e, ptr noundef nonnull align 8 dereferenceable(14) %i.f, i64 14, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !91
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.l, ptr %i.b, align 8, !tbaa !107
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %i.g, align 8, !tbaa !144
  %i.o = load i64, ptr %i.b, align 8, !tbaa !107
  store i64 %i.o, ptr %i.i, align 8, !tbaa !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !74
  store i8 %i.q, ptr %i.p, align 1, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.r, ptr %i.s, align 8, !tbaa !92
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.x = load i32, ptr %i.w, align 8, !tbaa !145
  store i32 %i.x, ptr %i.v, align 8, !tbaa !145
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !91
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !92 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !107
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.d
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.i   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i11
  store ptr %i.af, ptr %i.y, align 8, !tbaa !144
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !107
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !74
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc12, %bb.d
  %i.ah = phi ptr [ %i.af, %.noexc12 ], [ %i.aa, %bb.d ] ; 2 uses
  switch i64 %i.ad, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i10
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !74
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i10
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm13RuntimeConfig7Builder6updateERKS2_:bb.a
bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bb
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 297
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !391, !range !67, !noundef !68
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !337
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !392
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 297
  store i8 1, ptr %i.ht, align 1, !tbaa !391
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 298
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !393, !range !67, !noundef !68
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.hy = load i8, ptr %i.hx, align 4, !tbaa !338, !range !67, !noundef !68
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 268
  store i8 %i.hy, ptr %i.hz, align 4, !tbaa !394
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 298
  store i8 1, ptr %i.ia, align 2, !tbaa !393
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void @_ZN6hermes2vm8GCConfigC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(299) %0, ptr noundef nonnull align 8 dereferenceable(299) %1)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.ib, ptr noundef nonnull align 8 dereferenceable(45) %i.ic, i64 45, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !184 ; 2 uses
  %i.ih = load <2 x ptr>, ptr %i.ie, align 8, !tbaa !213
  store <2 x ptr> %i.ih, ptr %i.id, align 8, !tbaa !213
  %.not.i.i.i.i.i58 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i58, label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.ij, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ik = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.il = add nsw i32 %i.ik, 1
  store i32 %i.il, ptr %i.ii, align 4, !tbaa !3
  br label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit

bb.bt:                                            ; preds = %bb.br
  %i.im = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit

_ZN6hermes2vm13RuntimeConfig7BuilderC2ERKS2_.exit: ; preds = %bb.bq, %bb.bs, %bb.bt
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.in, ptr noundef nonnull align 8 dereferenceable(5) %i.io, i64 5, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.ip, ptr noundef nonnull align 8 dereferenceable(27) %i.iq, i64 27, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !189
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !395
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !395
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !151  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.h, %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i:       ; preds = %bb.l, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6hermes2vm8GCConfigD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !74
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #36
  br label %_ZN6hermes2vm8GCConfigD2Ev.exit

_ZN6hermes2vm8GCConfigD2Ev.exit:                  ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8GCConfig7Builder6updateERKS2_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::GCConfig::Builder") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(216) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.4", align 16  ; 14 uses
  %4 = alloca %"class.std::function.1", align 16  ; 14 uses
  %5 = alloca %"class.std::function", align 16    ; 14 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.hermes::vm::GCTripwireConfig", align 8 ; 5 uses
  %8 = alloca %"class.std::function.1", align 8   ; 9 uses
  %9 = alloca %"class.std::function.4", align 8   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.c = load i8, ptr %i.b, align 8, !tbaa !317, !range !67, !noundef !68
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8, !tbaa !282
  store i32 %i.e, ptr %1, align 8, !tbaa !396
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 1, ptr %i.f, align 8, !tbaa !317
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 201
  %i.h = load i8, ptr %i.g, align 1, !tbaa !321, !range !67, !noundef !68
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !283
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !397
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 201
  store i8 1, ptr %i.m, align 1, !tbaa !321
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 202
  %i.o = load i8, ptr %i.n, align 2, !tbaa !398, !range !67, !noundef !68
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !284
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !399
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 202
  store i8 1, ptr %i.t, align 2, !tbaa !398
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 203
  %i.v = load i8, ptr %i.u, align 1, !tbaa !400, !range !67, !noundef !68
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !285
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.y, ptr %i.z, align 8, !tbaa !401
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 203
  store i8 1, ptr %i.aa, align 1, !tbaa !400
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 204
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !402, !range !67, !noundef !68
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !286
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !403
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 204
  store i8 1, ptr %i.ah, align 4, !tbaa !402
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 205
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !404, !range !67, !noundef !68
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i = load double, ptr %i.al, align 8, !tbaa !405
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %.sroa.0.0.copyload.i, ptr %i.am, align 8, !tbaa !405
  %.sroa.2.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i33, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 205
  store i8 1, ptr %i.an, align 1, !tbaa !404
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 206
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !406, !range !67, !noundef !68
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !225, !range !67, !noundef !68
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 %i.as, ptr %i.at, align 8, !tbaa !407
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 206
  store i8 1, ptr %i.au, align 2, !tbaa !406
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 207
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !408, !range !67, !noundef !68
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !288
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !409
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 207
  store i8 1, ptr %i.bb, align 1, !tbaa !408
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !410, !range !67, !noundef !68
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !91, !alias.scope !411
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !144, !noalias !411 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !92, !noalias !411 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35, !noalias !411
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !107, !noalias !411
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !144, !alias.scope !411
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !411
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !74, !alias.scope !411
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.bn = phi ptr [ %i.bl, %.noexc.i.i ], [ %i.bg, %bb.r ] ; 2 uses
  switch i64 %i.bj, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !74
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !74
  br label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bh, i64 %i.bj, i1 false)
  br label %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit

_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit:    ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !107, !noalias !411 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !92, !alias.scope !411
  %i.br = load ptr, ptr %6, align 8, !tbaa !144, !alias.scope !411
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !411
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !144 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  %i.bx = load ptr, ptr %6, align 8, !tbaa !144   ; 6 uses
  %i.by = icmp eq ptr %i.bx, %i.bg                ; 2 uses
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  br i1 %i.by, label %bb.u, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK6hermes2vm8GCConfig7getNameB5cxx11Ev.exit
  br i1 %i.by, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !92 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %.not21.i.i = icmp eq ptr %6, %i.bt
  br i1 %.not21.i.i, label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %10, !prof !125

10:                                               ; preds = %bb.u
  switch i64 %i.bz, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %10
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !74
  store i8 %i.cb, ptr %i.bu, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.w:                                             ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.bx, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.w, %bb.v, %10
  %i.cc = load i64, ptr %i.bq, align 8, !tbaa !92 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !92
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !144
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !74
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !144
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !144
  %i.ch = load <2 x i64>, ptr %i.bq, align 8, !tbaa !74
  store <2 x i64> %i.ch, ptr %i.cg, align 8, !tbaa !74
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !74
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !144
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ck = load <2 x i64>, ptr %i.bq, align 8, !tbaa !74
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bu, ptr %6, align 8, !tbaa !144
  store i64 %i.ci, ptr %i.bg, align 8, !tbaa !74
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bg, ptr %6, align 8, !tbaa !144
  br label %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.x, %bb.y
  %11 = phi ptr [ %i.bu, %bb.x ], [ %i.bg, %bb.y ], [ %i.bx, %bb.u ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.bq, align 8, !tbaa !92
  store i8 0, ptr %11, align 1, !tbaa !74
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i8 1, ptr %i.cl, align 8, !tbaa !410
  %i.cm = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bg
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.co = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes2vm8GCConfig7Builder8withNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !414, !range !67, !noundef !68
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.z, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !418, !noalias !415 ; 2 uses
  store i32 %i.cu, ptr %7, align 8, !tbaa !418, !alias.scope !415
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i8 0, i64 32, i1 false), !alias.scope !415
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !151, !noalias !415 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread, label %bb.aa

_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread: ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.cu, ptr %i.da, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dd = invoke noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i32 noundef 2)
          to label %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !151, !alias.scope !415 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i32 noundef 3)
          to label %common.resume unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #34
  unreachable

common.resume:                                    ; preds = %bb.bd, %bb.be, %bb.at, %bb.au, %bb.ab, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.fr, %bb.at ], [ %i.de, %bb.ab ], [ %i.de, %bb.ac ], [ %i.fr, %bb.au ], [ %i.hb, %bb.be ], [ %i.hb, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit: ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !419, !noalias !415 ; 3 uses
  store ptr %i.dk, ptr %i.cx, align 8, !tbaa !419, !alias.scope !415
  %i.dl = load ptr, ptr %i.cy, align 8, !tbaa !151, !noalias !415 ; 3 uses
  store ptr %i.dl, ptr %i.cw, align 8, !tbaa !151, !alias.scope !415
  %.pre = load i32, ptr %7, align 8, !tbaa !418
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %.pre, ptr %i.dm, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i64 16, i1 false), !tbaa.struct !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i

_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i: ; preds = %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread, %bb.ae, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit
  %i.do = phi ptr [ %i.db, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dn, %bb.ae ], [ %i.dn, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dp = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dk, %bb.ae ], [ %i.dk, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dq = phi ptr [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit.thread ], [ %i.dl, %bb.ae ], [ null, %_ZNK6hermes2vm8GCConfig17getTripwireConfigEv.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 16, i1 false), !tbaa.struct !420
  store <2 x i64> %.sroa.0.i.i.i.i.i.sroa.0.0.copyload, ptr %i.dr, align 8, !tbaa !74
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !213 ; 3 uses
  store ptr %i.du, ptr %i.ds, align 16, !tbaa !213
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !213
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !213
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !213
  store ptr %i.dp, ptr %i.dv, align 8, !tbaa !213
  %.not.i.i.i.i36 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i36, label %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread, label %bb.af

_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread: ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 209
  store i8 1, ptr %i.dx, align 1, !tbaa !414
  br label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit

bb.af:                                            ; preds = %_ZNSt8functionIFvRN6hermes2vm17GCTripwireContextEEEC2EOS5_.exit.i.i.i
  %i.dy = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #34
  unreachable

_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit: ; preds = %bb.af
  %.pre48 = load ptr, ptr %i.cw, align 8, !tbaa !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 209
  store i8 1, ptr %i.eb, align 1, !tbaa !414
  %.not.i.i37 = icmp eq ptr %.pre48, null
  br i1 %.not.i.i37, label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit
  %i.ec = invoke noundef zeroext i1 %.pre48(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i32 noundef 3)
          to label %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #34
  unreachable

_ZN6hermes2vm16GCTripwireConfigD2Ev.exit:         ; preds = %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit.thread, %bb.ah, %_ZN6hermes2vm8GCConfig7Builder18withTripwireConfigENS0_16GCTripwireConfigE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 210
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !421, !range !67, !noundef !68
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !326, !range !67, !noundef !68
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 %i.ej, ptr %i.ek, align 8, !tbaa !422
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 210
  store i8 1, ptr %i.el, align 2, !tbaa !421
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN6hermes2vm16GCTripwireConfigD2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 211
  %i.en = load i8, ptr %i.em, align 1, !tbaa !423, !range !67, !noundef !68
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 129
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !424, !range !67, !noundef !68
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !425
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 211
  store i8 1, ptr %i.es, align 1, !tbaa !423
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !426, !range !67, !noundef !68
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 130
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !427, !range !67, !noundef !68
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i8 %i.ex, ptr %i.ey, align 2, !tbaa !428
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 212
  store i8 1, ptr %i.ez, align 4, !tbaa !426
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 213
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !429, !range !67, !noundef !68
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 131
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !430, !range !67, !noundef !68
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 131
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !431
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 213
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes7tracing16TraceInterpreter14executeRecordsEv:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.zb

bb.zb:                                            ; preds = %.loopexit.split-lp, %.loopexit1920
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit1920 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cwd = load ptr, ptr %150, align 8, !tbaa !96 ; 3 uses
  %.not.i1774 = icmp eq ptr %i.cwd, null
  br i1 %.not.i1774, label %_ZN8facebook3jsi7PointerD2Ev.exit1775, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  %i.cwe = load ptr, ptr %i.cwd, align 8, !tbaa !94
  %i.cwf = load ptr, ptr %i.cwe, align 8
  call void %i.cwf(ptr noundef nonnull align 8 dereferenceable(8) %i.cwd) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1775

_ZStneIDsSt11char_traitsIDsESaIDsEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1763: ; preds = %bb.yz, %bb.yy, %"_ZNK8facebook3jsi10PropNameID17getPropNameIdDataIZNS_6hermes7tracing16TraceInterpreter14executeRecordsEvE3$_1EEvRNS0_7RuntimeERT_.exit"
  %i.cwg = load ptr, ptr %150, align 8, !tbaa !96 ; 3 uses
  %.not.i1776 = icmp eq ptr %i.cwg, null
  br i1 %.not.i1776, label %_ZN8facebook3jsi7PointerD2Ev.exit1777, label %bb.zd

bb.zd:                                            ; preds = %_ZStneIDsSt11char_traitsIDsESaIDsEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1763
  %i.cwh = load ptr, ptr %i.cwg, align 8, !tbaa !94
  %i.cwi = load ptr, ptr %i.cwh, align 8
  call void %i.cwi(ptr noundef nonnull align 8 dereferenceable(8) %i.cwg) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1777

_ZN8facebook3jsi7PointerD2Ev.exit1777:            ; preds = %_ZStneIDsSt11char_traitsIDsESaIDsEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1763, %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #35
  br label %bb.ze

_ZN8facebook3jsi7PointerD2Ev.exit1775:            ; preds = %bb.zc, %bb.zb, %bb.za
  %.pn494 = phi { ptr, i32 } [ %i.cwc, %bb.za ], [ %lpad.phi, %bb.zb ], [ %lpad.phi, %bb.zc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #35
  br label %bb.zf

bb.ze:                                            ; preds = %bb.yi, %_ZN8facebook3jsi7PointerD2Ev.exit1777, %_ZN8facebook3jsi7PointerD2Ev.exit1746
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #35
  %i.cwj = load ptr, ptr %146, align 8, !tbaa !573 ; 2 uses
  %i.cwk = icmp eq ptr %i.cwj, %i.am
  br i1 %i.cwk, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1780, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1778

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1778: ; preds = %bb.ze
  %i.cwl = load i64, ptr %i.am, align 8, !tbaa !74
  %i.cwm = shl i64 %i.cwl, 1
  %i.cwn = add i64 %i.cwm, 2
  call void @_ZdlPvm(ptr noundef %i.cwj, i64 noundef %i.cwn) #36
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1780

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1780: ; preds = %bb.ze, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1778
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #35
  br label %.critedge710

bb.zf:                                            ; preds = %bb.yp, %_ZN8facebook3jsi7PointerD2Ev.exit1744, %_ZN8facebook3jsi7PointerD2Ev.exit1775
  %.pn496.pn.pn = phi { ptr, i32 } [ %.pn494, %_ZN8facebook3jsi7PointerD2Ev.exit1775 ], [ %.pn496, %_ZN8facebook3jsi7PointerD2Ev.exit1744 ], [ %i.ctu, %bb.yp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #35
  %i.cwo = load ptr, ptr %146, align 8, !tbaa !573 ; 2 uses
  %i.cwp = icmp eq ptr %i.cwo, %i.am
  br i1 %i.cwp, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1783, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1781

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1781: ; preds = %bb.zf
  %i.cwq = load i64, ptr %i.am, align 8, !tbaa !74
  %i.cwr = shl i64 %i.cwq, 1
  %i.cws = add i64 %i.cwr, 2
  call void @_ZdlPvm(ptr noundef %i.cwo, i64 noundef %i.cws) #36
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1783

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1783: ; preds = %bb.zf, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1781
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #35
  br label %bb.zn

bb.zg:                                            ; preds = %bb.s
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.cwu = load i64, ptr %i.cwt, align 8, !tbaa !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #35
  %i.cwv = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.cww = load ptr, ptr %i.cwv, align 8, !tbaa !94
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cww, i64 64
  %i.cwy = load ptr, ptr %i.cwx, align 8
  invoke void %i.cwy(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::Object") align 8 %152, ptr noundef nonnull align 8 dereferenceable(8) %i.cwv)
          to label %bb.zh unwind label %bb.zk

bb.zh:                                            ; preds = %bb.zg
  store i32 7, ptr %151, align 8, !tbaa !69
  %i.cwz = load ptr, ptr %152, align 8, !tbaa !96
  store ptr %i.cwz, ptr %i.ap, align 8, !tbaa !96
  store ptr null, ptr %152, align 8, !tbaa !96
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter14addToObjectMapEmONS_3jsi5ValueEm(ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.cwu, ptr noundef nonnull align 8 dereferenceable(16) %151, i64 noundef %i.cn)
          to label %bb.zi unwind label %bb.zl

bb.zi:                                            ; preds = %bb.zh
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %151) #35
  %i.cxa = load ptr, ptr %152, align 8, !tbaa !96 ; 3 uses
  %.not.i1784 = icmp eq ptr %i.cxa, null
  br i1 %.not.i1784, label %_ZN8facebook3jsi7PointerD2Ev.exit1785, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.cxb = load ptr, ptr %i.cxa, align 8, !tbaa !94
  %i.cxc = load ptr, ptr %i.cxb, align 8
  call void %i.cxc(ptr noundef nonnull align 8 dereferenceable(8) %i.cxa) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1785

_ZN8facebook3jsi7PointerD2Ev.exit1785:            ; preds = %bb.zi, %bb.zj
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #35
  br label %.critedge710

bb.zk:                                            ; preds = %bb.zg
  %i.cxd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1787

bb.zl:                                            ; preds = %bb.zh
  %i.cxe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %151) #35
  %i.cxf = load ptr, ptr %152, align 8, !tbaa !96 ; 3 uses
  %.not.i1786 = icmp eq ptr %i.cxf, null
  br i1 %.not.i1786, label %_ZN8facebook3jsi7PointerD2Ev.exit1787, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.cxg = load ptr, ptr %i.cxf, align 8, !tbaa !94
  %i.cxh = load ptr, ptr %i.cxg, align 8
  call void %i.cxh(ptr noundef nonnull align 8 dereferenceable(8) %i.cxf) #35, !inline_history !99
  br label %_ZN8facebook3jsi7PointerD2Ev.exit1787

_ZN8facebook3jsi7PointerD2Ev.exit1787:            ; preds = %bb.zm, %bb.zl, %bb.zk
  %.pn500.pn = phi { ptr, i32 } [ %i.cxd, %bb.zk ], [ %i.cxe, %bb.zl ], [ %i.cxe, %bb.zm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #35
  br label %bb.zn

.critedge710:                                     ; preds = %bb.xk, %bb.ve, %_ZN8facebook6hermes7tracing16TraceInterpreter22ifObjectAddToObjectMapENS1_10SynthTrace10TraceValueEONS_3jsi5ValueEmb.exit1476, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1676, %_ZN8facebook3jsi7PointerD2Ev.exit1711, %.critedge702.thread, %.critedge708.thread, %_ZN8facebook3jsi7PointerD2Ev.exit1586, %bb.iz, %bb.bj, %bb.bo, %bb.bn, %_ZN8facebook3jsi7PointerD2Ev.exit1785, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1780, %_ZN8facebook3jsi7PointerD2Ev.exit1489, %_ZN8facebook3jsi7PointerD2Ev.exit1469, %_ZN8facebook3jsi7PointerD2Ev.exit1425, %_ZN8facebook3jsi7PointerD2Ev.exit1371, %_ZN8facebook3jsi7PointerD2Ev.exit1340, %_ZN8facebook3jsi7PointerD2Ev.exit1323, %_ZN8facebook3jsi7PointerD2Ev.exit1316, %_ZN8facebook3jsi7PointerD2Ev.exit1299, %_ZN8facebook3jsi7PointerD2Ev.exit1242, %_ZN8facebook3jsi7PointerD2Ev.exit1185, %_ZN8facebook3jsi7PointerD2Ev.exit1170, %_ZN8facebook3jsi7PointerD2Ev.exit1143, %_ZN8facebook3jsi7PointerD2Ev.exit1050, %_ZN8facebook3jsi7PointerD2Ev.exit991, %_ZN8facebook3jsi7PointerD2Ev.exit973, %_ZN8facebook3jsi7PointerD2Ev.exit956, %_ZN8facebook3jsi7PointerD2Ev.exit948, %_ZN8facebook3jsi7PointerD2Ev.exit924, %bb.gi, %_ZN8facebook3jsi7PointerD2Ev.exit811, %bb.ds, %_ZN8facebook3jsi7PointerD2Ev.exit743, %_ZN8facebook3jsi7PointerD2Ev.exit, %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.s
  %i.cxi = load i64, ptr %i.a, align 8, !tbaa !481
  %i.cxj = icmp eq i64 %i.cxi, 1
  %i.cxk = load i8, ptr %i.cm, align 8, !range !67
  %i.cxl = trunc nuw i8 %i.cxk to i1
  %or.cond = select i1 %i.cxj, i1 %i.cxl, i1 false
  br i1 %or.cond, label %.critedge714, label %bb.b, !llvm.loop !1003

bb.zn:                                            ; preds = %bb.bf, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721, %_ZN8facebook3jsi7PointerD2Ev.exit1713, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1673, %bb.xs, %_ZN8facebook3jsi7PointerD2Ev.exit1588, %bb.xj, %bb.vy, %bb.vp, %bb.vb, %_ZN8facebook3jsi7PointerD2Ev.exit1491, %bb.bl, %bb.bp, %_ZN8facebook3jsi7PointerD2Ev.exit1787, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1783, %bb.uu, %_ZN8facebook3jsi7PointerD2Ev.exit1471, %_ZN8facebook3jsi7PointerD2Ev.exit1427, %bb.se, %bb.rj, %_ZN8facebook3jsi7PointerD2Ev.exit1325, %bb.qs, %_ZN8facebook3jsi7PointerD2Ev.exit1301, %_ZN8facebook3jsi7PointerD2Ev.exit1244, %_ZN8facebook3jsi7PointerD2Ev.exit1187, %_ZN8facebook3jsi7PointerD2Ev.exit1172, %_ZN8facebook3jsi7PointerD2Ev.exit1145, %bb.kl, %bb.ja, %_ZN8facebook3jsi7PointerD2Ev.exit995, %_ZN8facebook3jsi7PointerD2Ev.exit977, %_ZN8facebook3jsi7PointerD2Ev.exit958, %bb.ho, %_ZN8facebook3jsi7PointerD2Ev.exit926, %bb.gj, %_ZN8facebook3jsi7PointerD2Ev.exit815, %bb.dt, %bb.ci, %_ZN8facebook3jsi7PointerD2Ev.exit737, %bb.bk, %bb.u
  %.pn676.pn.pn = phi { ptr, i32 } [ %i.coh, %bb.xs ], [ %i.ga, %bb.u ], [ %i.kw, %bb.bk ], [ %.pn665.pn, %_ZN8facebook3jsi7PointerD2Ev.exit737 ], [ %.pn661.pn.pn, %bb.ci ], [ %.pn659, %bb.dt ], [ %.pn643.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit815 ], [ %.pn639, %bb.gj ], [ %.pn619, %_ZN8facebook3jsi7PointerD2Ev.exit926 ], [ %.pn616.pn, %bb.ho ], [ %.pn608.pn, %_ZN8facebook3jsi7PointerD2Ev.exit958 ], [ %.pn604.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit977 ], [ %.pn602, %_ZN8facebook3jsi7PointerD2Ev.exit995 ], [ %i.ajc, %bb.ja ], [ %.pn595.pn.pn, %bb.kl ], [ %.pn582.pn.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1145 ], [ %.pn569.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1172 ], [ %.pn565, %_ZN8facebook3jsi7PointerD2Ev.exit1187 ], [ %.pn559.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1244 ], [ %.pn547.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1301 ], [ %.pn534.pn, %bb.qs ], [ %.pn531.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1325 ], [ %.pn527.pn.pn, %bb.rj ], [ %.pn522.pn.pn.pn, %bb.se ], [ %.pn518.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1427 ], [ %.pn506.pn.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1471 ], [ %i.bzr, %bb.uu ], [ %.pn500.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1787 ], [ %.pn496.pn.pn, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1783 ], [ %i.cem, %bb.vp ], [ %.pn, %bb.vb ], [ %i.kx, %bb.bl ], [ %i.lc, %bb.bp ], [ %i.cba, %_ZN8facebook3jsi7PointerD2Ev.exit1491 ], [ %.pn468.pn, %bb.xj ], [ %.pn473.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1588 ], [ %.pn481, %bb.vy ], [ %.pn485.pn, %_ZN8facebook3jsi7PointerD2Ev.exit1713 ], [ %.pn490, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit1673 ], [ %.pn676, %bb.bf ], [ %.pn672.pn.pn1834, %bb.ag ], [ %.pn672, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723 ], [ %.pn672, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721 ] ; 3 uses
  %.136418 = extractvalue { ptr, i32 } %.pn676.pn.pn, 1
  %i.cxm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.cxn = icmp eq i32 %.136418, %i.cxm
  br i1 %i.cxn, label %bb.zo, label %bb.zr

bb.zo:                                            ; preds = %bb.zn
  %.136 = extractvalue { ptr, i32 } %.pn676.pn.pn, 0
  %i.cxo = call ptr @__cxa_begin_catch(ptr %.136) #35
  invoke void @_ZN8facebook6hermes7tracing16TraceInterpreter16crashOnExceptionERKSt9exceptionN6hermes8OptValueImEE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cxo, i64 %i.cn, i8 1) #38
          to label %bb.zp unwind label %bb.zq

bb.zp:                                            ; preds = %bb.zo
  unreachable

bb.zq:                                            ; preds = %bb.zo
  %i.cxp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.zr unwind label %bb.zs

bb.zr:                                            ; preds = %bb.zq, %bb.zn, %bb.t
  %.merged = phi { ptr, i32 } [ %i.fz, %bb.t ], [ %.pn676.pn.pn, %bb.zn ], [ %i.cxp, %bb.zq ]
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  store i64 %i.b, ptr %i.a, align 8, !tbaa !107
  resume { ptr, i32 } %.merged

.critedge714:                                     ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %.critedge710, %bb.b
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  store i64 %i.b, ptr %i.a, align 8, !tbaa !107
  ret void

bb.zs:                                            ; preds = %bb.zq
  %i.cxq = landingpad { ptr, i32 }
          catch ptr null
  %i.cxr = extractvalue { ptr, i32 } %i.cxq, 0
  call void @__clang_call_terminate(ptr %i.cxr) #34
  unreachable

bb.zt:                                            ; preds = %bb.ad
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter11checkMarkerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::jsi::Instrumentation::HeapSnapshotOptions", align 1 ; 4 uses
  %3 = alloca %"struct.facebook::jsi::Instrumentation::HeapSnapshotOptions", align 1 ; 4 uses
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !93, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load i64, ptr %i.g, align 8, !tbaa !92
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.l = load ptr, ptr %1, align 8, !tbaa !144
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.l, ptr %i.k, i64 %i.f)
  %.not9 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = load i32, ptr %i.m, align 8, !tbaa !451
  switch i32 %i.n, label %bb.n [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %i.o = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store i8 0, ptr %2, align 1, !tbaa !1004
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.n

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %i.x = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %i.af = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i8 0, ptr %3, align 1, !tbaa !1004
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.n

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 noundef 16)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %i.ax

bb.j:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %i.ay = load ptr, ptr %0, align 8, !tbaa !452, !nonnull !68, !align !453 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !94
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes7IHermes4uuidE), !inline_history !454 ; 3 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !94
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook6hermes14IHermesRootAPI4uuidE), !inline_history !264
  br label %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit

_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.bi, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bk = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  %i.bn = load ptr, ptr %.0.i, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %.0.i)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv()
  %i.br = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.bq, ptr noundef nonnull @.str.12) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook3jsi13castInterfaceINS_6hermes14IHermesRootAPIENS0_5ICastEEEPT_PT0_.exit, %bb.m, %bb.h, %bb.e, %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN8facebook6hermes7tracing16TraceInterpreter10printStatsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(648) %0)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !144 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = load ptr, ptr %5, align 8, !tbaa !144   ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.by = icmp eq ptr %i.bw, %i.bx                ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.n
  br i1 %i.by, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.n
  br i1 %i.by, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !92 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %.not21.i = icmp eq ptr %5, %i.bs
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %6, !prof !125

6:                                                ; preds = %bb.o
  switch i64 %i.ca, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %6
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !74
  store i8 %i.cc, ptr %i.bt, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %6
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !92 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !92
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !144
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !74
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = load <2 x i64>, ptr %i.ci, align 8, !tbaa !74
  store <2 x i64> %i.cj, ptr %i.ch, align 8, !tbaa !74
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ck = load i64, ptr %i.bu, align 8, !tbaa !74
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !144
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !tbaa !74
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !tbaa !74
  %.not.i7 = icmp eq ptr %i.bt, null
  br i1 %.not.i7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bt, ptr %5, align 8, !tbaa !144
  store i64 %i.ck, ptr %i.bx, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bx, ptr %5, align 8, !tbaa !144
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %7 = phi ptr [ %i.bt, %bb.r ], [ %i.bx, %bb.s ], [ %i.bw, %bb.o ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !92
  store i8 0, ptr %7, align 1, !tbaa !74
  %i.cp = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !74
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  store i8 1, ptr %i.a, align 8, !tbaa !93
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !91
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !144
  %i.o = load i64, ptr %i.i, align 8, !tbaa !74
  store i64 %i.o, ptr %i.g, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !92
  store ptr %i.i, ptr %i.f, align 8, !tbaa !144
  store i64 0, ptr %i.q, align 8, !tbaa !92
  store i8 0, ptr %i.i, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !92
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #38
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !144
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !91
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !144
  %i.q = load i64, ptr %i.k, align 8, !tbaa !74
  store i64 %i.q, ptr %i.i, align 8, !tbaa !74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !92
  store ptr %i.k, ptr %i.h, align 8, !tbaa !144
  store i64 0, ptr %i.s, align 8, !tbaa !92
  store i8 0, ptr %i.k, align 8, !tbaa !74
  ret void
}

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing16TraceInterpreter20traceValueToJSIValueENS1_10SynthTrace10TraceValueE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !69, !alias.scope !1006
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !69, !alias.scope !1009
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !74
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.b = trunc i64 %3 to i8
  %i.c = and i8 %i.b, 1
  store i32 2, ptr %0, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !74
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.off.i = add i32 %2, -4
  %switch.i = icmp ult i32 %.off.i, 5
  tail call void @llvm.assume(i1 %switch.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.f = load i64, ptr %i.e, align 8, !tbaa !486, !noalias !1012
  %.not.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 496
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.g, %bb.g ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !119, !noalias !1012, !nonnull !68, !noundef !68 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !107, !noalias !1012
  %i.j = icmp eq i64 %3, %i.i
  br i1 %i.j, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, label %bb.h, !llvm.loop !515

bb.i:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.m = load i64, ptr %i.l, align 8, !tbaa !88, !noalias !1012 ; 2 uses
  %i.n = urem i64 %3, %i.m                        ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !87, !noalias !1012
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !121, !noalias !1012, !nonnull !68, !noundef !68
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119, !noalias !1012 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107, !noalias !1012
  %i.u = icmp eq i64 %3, %i.t
  br i1 %i.u, label %_ZN8facebook6hermes7tracing16TraceInterpreter17getJSIValueForUseEm.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.i ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !119, !noalias !1012, !nonnull !68, !noundef !68 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_3
