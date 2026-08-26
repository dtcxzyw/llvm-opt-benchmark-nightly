Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/timeman?download=true
inline.NumInlined: 129
inline.NumDeleted: 93
begin_hunk_0_@_ZN9Stockfish14TimeManagement5clearEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish14TimeManagement18advance_nodes_timeEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = sub nsw i64 %i.b, %1
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish14TimeManagement4initERNS_6Search10LimitsTypeENS_5ColorEiRKNS_10OptionsMapERd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(33) initializes((0, 8), (32, 33)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #4 align 2 {
._crit_edge.i.i:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.c, align 1, !tbaa !37
  %i.d = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  %i.e = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.d) #17 ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 5 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !37
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  store i64 %i.l, ptr %0, align 8, !tbaa !46
  %i.m = icmp ne i32 %i.e, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = zext i8 %2 to i64                        ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %._crit_edge.i.i66

._crit_edge.i.i66:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.u, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 13, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.w, align 1, !tbaa !37
  %i.x = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  %i.y = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.x) #17
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %._crit_edge.i.i66
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !37
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %._crit_edge.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ae = load i8, ptr %i.n, align 8, !tbaa !47, !range !48, !noundef !49
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !11
  %i.ak = mul nsw i64 %i.aj, %i.f                 ; 2 uses
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = phi i64 [ %i.ak, %bb.b ], [ %i.ah, %bb.a ]
  store i64 %i.al, ptr %i.r, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.q ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = mul nsw i64 %i.ao, %i.f
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.f, ptr %i.aq, align 8, !tbaa !50
  %i.ar = mul nsw i64 %i.z, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.as = phi i64 [ %i.f, %bb.c ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  %.0 = phi i64 [ %i.ar, %bb.c ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ] ; 2 uses
  %i.at = load i64, ptr %i.r, align 8, !tbaa !11  ; 4 uses
  %i.au = sdiv i64 %i.at, %i.as                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !51 ; 2 uses
  %.not = icmp eq i32 %i.aw, 0                    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, 100
  %.sroa.speculated114 = call i32 @llvm.smin.i32(i32 %i.ax, i32 5000)
  %i.ay = select i1 %.not, i32 5051, i32 %.sroa.speculated114
  %i.az = icmp slt i64 %i.au, 1000
  %i.ba = sitofp i64 %i.au to double              ; 2 uses
  %i.bb = fmul nnan double %i.ba, 5.051000e+00
  %i.bc = fptosi double %i.bb to i32
  %.061.a = select i1 %i.az, i32 %i.bc, i32 %i.ay ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.q
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = add nsw i32 %.061.a, -100
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bf, %i.bh
  %i.bj = add nsw i32 %.061.a, 200
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %.0, %i.bk
  %i.bm = sub nsw i64 %i.bi, %i.bl
  %i.bn = sdiv i64 %i.bm, 100
  %i.bo = add nsw i64 %i.bn, %i.at
  %.sroa.speculated109 = call i64 @llvm.smax.i64(i64 %i.bo, i64 1) ; 2 uses
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bp = load double, ptr %5, align 8, !tbaa !52 ; 2 uses
  %i.bq = fcmp olt double %i.bp, 0.000000e+00
  %i.br = uitofp nneg i64 %.sroa.speculated109 to double ; 3 uses
  br i1 %i.bq, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.bs = call noundef double @log10(double noundef %i.br) #17
  %i.bt = call double @llvm.fmuladd.f64(double %i.bs, double 3.128000e-01, double -4.354000e-01) ; 2 uses
  store double %i.bt, ptr %5, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.bu = phi double [ %i.bt, %bb.f ], [ %i.bp, %bb.e ]
  %i.bv = fdiv double %i.ba, 1.000000e+03
  %i.bw = call double @log10(double noundef %i.bv) #17 ; 2 uses
  %i.bx = call double @llvm.fmuladd.f64(double %i.bw, double 3.211230e-04, double 3.211600e-03) ; 2 uses
  %i.by = fcmp ogt double %i.bx, 5.080170e-03
  %.sroa.speculated104 = select i1 %i.by, double 5.080170e-03, double %i.bx
  %i.bz = call double @llvm.fmuladd.f64(double %i.bw, double 3.039500e+00, double 3.397700e+00) ; 2 uses
  %i.ca = fcmp olt double %i.bz, 2.947610e+00
  %.sroa.speculated99 = select i1 %i.ca, double 2.947610e+00, double %i.bz
  %i.cb = sitofp i32 %3 to double                 ; 2 uses
  %i.cc = fadd double %i.cb, 2.946930e+00
  %i.cd = call double @pow(double noundef %i.cc, double noundef 4.610730e-01) #17
  %i.ce = call double @llvm.fmuladd.f64(double %i.cd, double %.sroa.speculated104, double 1.214310e-02) ; 2 uses
  %i.cf = sitofp i64 %i.at to double
  %i.cg = fmul nnan double %i.cf, 2.130350e-01
  %i.ch = fdiv double %i.cg, %i.br                ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.ce
  %.sroa.speculated94 = select i1 %i.ci, double %i.ch, double %i.ce
  %i.cj = fmul double %i.bu, %.sroa.speculated94
  %i.ck = fdiv double %i.cb, 1.198470e+01
  %i.cl = fadd double %i.ck, %.sroa.speculated99  ; 2 uses
  %i.cm = fcmp olt double %i.cl, 6.677040e+00
  %.sroa.speculated89 = select i1 %i.cm, double %i.cl, double 6.677040e+00
  br label %._crit_edge.i.i78

bb.g:                                             ; preds = %bb.d
  %i.cn = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.co = insertelement <2 x i32> %i.cn, i32 %.061.a, i64 1
  %i.cp = sitofp <2 x i32> %i.co to <2 x double>
  %i.cq = fdiv <2 x double> %i.cp, <double 1.164000e+02, double 1.000000e+02> ; 3 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = extractelement <2 x double> %i.cq, i64 1
  %i.ct = sitofp i64 %i.at to double
  %i.cu = fadd double %i.cr, 8.800000e-01
  %i.cv = fmul nnan double %i.ct, 8.800000e-01
  %i.cw = uitofp nneg i64 %.sroa.speculated109 to double ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cu, i64 1
  %i.cz = insertelement <2 x double> %i.cq, double %i.cw, i64 0
  %i.da = fdiv <2 x double> %i.cy, %i.cz          ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0 ; 2 uses
  %i.dc = extractelement <2 x double> %i.da, i64 1 ; 2 uses
  %i.dd = fcmp olt double %i.db, %i.dc
  %.sroa.speculated84 = select i1 %i.dd, double %i.db, double %i.dc
  %i.de = call nnan double @llvm.fmuladd.f64(double %i.cs, double 1.100000e-01, double 1.300000e+00)
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %bb.g, %._crit_edge
  %.pre-phi = phi double [ %i.cw, %bb.g ], [ %i.br, %._crit_edge ]
  %.063 = phi double [ %i.de, %bb.g ], [ %.sroa.speculated89, %._crit_edge ]
  %.062 = phi double [ %.sroa.speculated84, %bb.g ], [ %i.cj, %._crit_edge ]
  %i.df = fmul double %.062, %.pre-phi
  %i.dg = fptosi double %i.df to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !27
  %i.di = load i64, ptr %i.r, align 8, !tbaa !11
  %i.dj = sitofp i64 %i.di to double
  %i.dk = sitofp i64 %.0 to double
  %i.dl = fneg double %i.dk
  %i.dm = call double @llvm.fmuladd.f64(double %i.dj, double 8.251790e-01, double %i.dl) ; 2 uses
  %i.dn = sitofp i64 %i.dg to double
  %i.do = fmul double %.063, %i.dn                ; 2 uses
  %i.dp = fcmp olt double %i.do, %i.dm
  %.sroa.speculated = select i1 %i.dp, double %i.do, double %i.dm
  %i.dq = fptosi double %.sroa.speculated to i64
  %i.dr = add nsw i64 %i.dq, -10
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dt, ptr %8, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dt, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.du, align 8, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.dv, align 2, !tbaa !37
  %i.dw = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  %i.dx = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.dw) #17
  %.not65 = icmp eq i32 %i.dx, 0
  %i.dy = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dt
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %._crit_edge.i.i78
  %i.ea = load i64, ptr %i.dt, align 8, !tbaa !37
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %._crit_edge.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.ed = sdiv i64 %i.ec, 4
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dh, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev, ptr nonnull @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #21
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_timeman.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
end_hunk_0
