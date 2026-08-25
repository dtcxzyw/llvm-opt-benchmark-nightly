Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE:bb.a

bb.h:                                             ; preds = %bb.a
  %i.bu = fcmp ogt double %i.p, 1.000000e+00
  br i1 %i.bu, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = fcmp olt double %i.p, -1.000000e+00
  br i1 %i.bv, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.sink.split, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.sink.split: ; preds = %bb.i, %bb.h
  %.sink = phi double [ 1.000000e+00, %bb.h ], [ -1.000000e+00, %bb.i ] ; 2 uses
  store double %.sink, ptr %i.q, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.sink.split, %bb.b, %bb.i
  %i.bw = phi double [ %i.p, %bb.b ], [ %i.p, %bb.i ], [ %.sink, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.sink.split ]
  %i.bx = fmul double %i.bw, %i.s
  %i.by = fcmp olt double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.j, label %bb.w

bb.j:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.g
  %i.cd = load i32, ptr %2, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ce
  %i.cg = load <2 x i64>, ptr %i.cc, align 8
  %i.ch = sitofp <2 x i64> %i.cg to <2 x double>
  %i.ci = load <2 x double>, ptr %i.cf, align 8
  %i.cj = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ck, <2 x double> %i.ch) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = fcmp olt double %i.cm, 0.000000e+00
  %.0.in.v.i45 = select i1 %i.cn, double -5.000000e-01, double 5.000000e-01
  %.0.in.i46 = fadd double %i.cm, %.0.in.v.i45
  %.0.i47 = fptosi double %.0.in.i46 to i64       ; 2 uses
  %i.co = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.cp = fcmp olt double %i.co, 0.000000e+00
  %.0.in.v.i48 = select i1 %i.cp, double -5.000000e-01, double 5.000000e-01
  %.0.in.i49 = fadd double %i.co, %.0.in.v.i48
  %.0.i50 = fptosi double %.0.in.i49 to i64       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i.i51 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %.0.i47, ptr %i.cr, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.0.i50, ptr %.sroa.590.0..sroa_idx, align 8
  %i.cu = load ptr, ptr %i.cq, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8
  %.pre = load ptr, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit64

bb.l:                                             ; preds = %bb.j
  %i.cw = load ptr, ptr %i.bz, align 8            ; 5 uses
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 3 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775792
  br i1 %i.da, label %bb.m, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52: ; preds = %bb.l
  %i.db = ashr exact i64 %i.cz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i53, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 576460752303423487)
  %i.df = select i1 %i.dd, i64 576460752303423487, i64 %i.de ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.dg = shl nuw nsw i64 %i.df, 4
  %i.dh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #32 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store i64 %.0.i47, ptr %i.di, align 8
  %.sroa.590.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %.0.i50, ptr %.sroa.590.0..sroa_idx91, align 8
  %.not10.i.i.i.i.i.i55 = icmp eq ptr %i.cw, %i.cr
  br i1 %.not10.i.i.i.i.i.i55, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i56:                             ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52, %.lr.ph.i.i.i.i.i.i56
  %.012.i.i.i.i.i.i57 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i56 ], [ %i.dh, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52 ] ; 2 uses
  %.0911.i.i.i.i.i.i58 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i56 ], [ %i.cw, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i58, i64 16, i1 false), !alias.scope !255
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i58, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq ptr %i.dj, %i.cr
  br i1 %.not.i.i.i.i.i.i59, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60, label %.lr.ph.i.i.i.i.i.i56, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i56, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52
  %.0.lcssa.i.i.i.i.i.i61 = phi ptr [ %i.dh, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i52 ], [ %i.dk, %.lr.ph.i.i.i.i.i.i56 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i61, i64 16 ; 2 uses
  %.not.i23.i.i.i62 = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i.i.i62, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60
  %i.dm = load ptr, ptr %i.cs, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.do) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63: ; preds = %bb.n, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i60
  store ptr %i.dh, ptr %i.bz, align 8
  store ptr %i.dl, ptr %i.cq, align 8
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.df ; 2 uses
  store ptr %i.dp, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit64: ; preds = %bb.k, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63
  %i.dq = phi ptr [ %.pre, %bb.k ], [ %i.dp, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ] ; 4 uses
  %i.dr = phi ptr [ %i.cv, %bb.k ], [ %i.dl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i63 ] ; 2 uses
  %i.ds = load ptr, ptr %i.ca, align 8
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.g ; 2 uses
  %.not.i = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false)
  %i.du = load ptr, ptr %i.cq, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  store ptr %i.dv, ptr %i.cq, align 8
  %.pre104 = load ptr, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit64
  %i.dw = load ptr, ptr %i.bz, align 8            ; 5 uses
  %i.dx = ptrtoint ptr %i.dq to i64
  %i.dy = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775792
  br i1 %i.ea, label %bb.q, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.eb = ashr exact i64 %i.dz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i.i, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 576460752303423487)
  %i.ef = select i1 %i.ed, i64 576460752303423487, i64 %i.ee ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ef, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.eg = shl nuw nsw i64 %i.ef, 4
  %i.eh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #32 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.dw, %i.dq
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i ], [ %i.eh, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.dw, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !259
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ej, %i.dq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.eh, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ek, %.lr.ph.i.i.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.em = load ptr, ptr %i.cs, align 8
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.en, %i.dy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eo) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.eh, ptr %i.bz, align 8
  store ptr %i.el, ptr %i.cq, align 8
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ef ; 2 uses
  store ptr %i.ep, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.eq = phi ptr [ %.pre104, %bb.o ], [ %i.ep, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.er = phi ptr [ %i.dv, %bb.o ], [ %i.el, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.es = load ptr, ptr %i.ca, align 8
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.g
  %i.eu = load ptr, ptr %i.a, align 8
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.g
  %4 = load double, ptr %i.r, align 8
  %i.ew = load <2 x i64>, ptr %i.et, align 8
  %i.ex = sitofp <2 x i64> %i.ew to <2 x double>
  %i.ey = load <2 x double>, ptr %i.ev, align 8
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %i.ez = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ez, <2 x double> %i.ex) ; 2 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0 ; 2 uses
  %i.fc = fcmp olt double %i.fb, 0.000000e+00
  %.0.in.v.i65 = select i1 %i.fc, double -5.000000e-01, double 5.000000e-01
  %.0.in.i66 = fadd double %i.fb, %.0.in.v.i65
  %.0.i67 = fptosi double %.0.in.i66 to i64       ; 2 uses
  %i.fd = extractelement <2 x double> %i.fa, i64 1 ; 2 uses
  %i.fe = fcmp olt double %i.fd, 0.000000e+00
  %.0.in.v.i68 = select i1 %i.fe, double -5.000000e-01, double 5.000000e-01
  %.0.in.i69 = fadd double %i.fd, %.0.in.v.i68
  %.0.i70 = fptosi double %.0.in.i69 to i64       ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i71, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  store i64 %.0.i67, ptr %i.er, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.0.i70, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ff = load ptr, ptr %i.cq, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fg, ptr %i.cq, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

bb.t:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %i.fh = load ptr, ptr %i.bz, align 8            ; 5 uses
  %i.fi = ptrtoint ptr %i.eq to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775792
  br i1 %i.fl, label %bb.u, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72: ; preds = %bb.t
  %i.fm = ashr exact i64 %i.fk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i73 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i.i73, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 576460752303423487)
  %i.fq = select i1 %i.fo, i64 576460752303423487, i64 %i.fp ; 3 uses
  %.not.i.i.i.i74 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i74)
  %i.fr = shl nuw nsw i64 %i.fq, 4
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #32 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store i64 %.0.i67, ptr %i.ft, align 8
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.0.i70, ptr %.sroa.5.0..sroa_idx86, align 8
  %.not10.i.i.i.i.i.i75 = icmp eq ptr %i.fh, %i.eq
  br i1 %.not10.i.i.i.i.i.i75, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80, label %.lr.ph.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i76:                             ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72, %.lr.ph.i.i.i.i.i.i76
  %.012.i.i.i.i.i.i77 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i76 ], [ %i.fs, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72 ] ; 2 uses
  %.0911.i.i.i.i.i.i78 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i76 ], [ %i.fh, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i77, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i78, i64 16, i1 false), !alias.scope !263
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i78, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i77, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i79 = icmp eq ptr %i.fu, %i.eq
  br i1 %.not.i.i.i.i.i.i79, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80, label %.lr.ph.i.i.i.i.i.i76, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80: ; preds = %.lr.ph.i.i.i.i.i.i76, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72
  %.0.lcssa.i.i.i.i.i.i81 = phi ptr [ %i.fs, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i72 ], [ %i.fv, %.lr.ph.i.i.i.i.i.i76 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i81, i64 16
  %.not.i23.i.i.i82 = icmp eq ptr %i.fh, null
  br i1 %.not.i23.i.i.i82, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80
  %i.fx = load ptr, ptr %i.cs, align 8
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fz) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83: ; preds = %bb.v, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i80
  store ptr %i.fs, ptr %i.bz, align 8
  store ptr %i.fw, ptr %i.cq, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.ga, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

bb.w:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  switch i32 %3, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84 [
    i32 2, label %bb.x
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.gb = load double, ptr %i.h, align 8
  %i.gc = load i32, ptr %2, align 4               ; 3 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.gd ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = load double, ptr %i.i, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load double, ptr %i.gh, align 8
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gf, double %i.gj)
  %i.gl = fadd double %i.gk, 1.000000e+00         ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gn = load double, ptr %i.gm, align 8
  %i.go = fcmp ult double %i.gl, %i.gn
  br i1 %i.go, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN10ClipperLib13ClipperOffset7DoMiterEiid(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %i.gc, double noundef %i.gl)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

bb.z:                                             ; preds = %bb.x
  tail call void @_ZN10ClipperLib13ClipperOffset8DoSquareEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %i.gc)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

bb.aa:                                            ; preds = %bb.w
  %i.gp = load i32, ptr %2, align 4
  tail call void @_ZN10ClipperLib13ClipperOffset8DoSquareEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %i.gp)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

bb.ab:                                            ; preds = %bb.w
  %i.gq = load i32, ptr %2, align 4
  tail call void @_ZN10ClipperLib13ClipperOffset7DoRoundEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %i.gq)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i83, %bb.s, %bb.y, %bb.z, %bb.w, %bb.aa, %bb.ab
  store i32 %1, ptr %2, align 4
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.d, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit84
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset8DoSquareEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = sext i32 %1 to i64                       ; 4 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.k, align 8           ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = fmul double %i.l, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.g, double %i.j, double %i.o)
  %i.q = tail call double @atan2(double noundef %i.b, double noundef %i.p) #30
  %i.r = fmul double %i.q, 2.500000e-01
  %i.s = tail call double @tan(double noundef %i.r) #30 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.h ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = sitofp i64 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
  %i.ab = fneg double %i.l
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.s, double %i.g)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %i.y) ; 2 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  %.0.in.v.i = select i1 %i.ae, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.ad, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sitofp i64 %i.ag to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.g, double %i.s, double %i.l)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ai, double %i.ah) ; 2 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  %.0.in.v.i20 = select i1 %i.ak, double -5.000000e-01, double 5.000000e-01
  %.0.in.i21 = fadd double %i.aj, %.0.in.v.i20
  %.0.i22 = fptosi double %.0.in.i21 to i64       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %.0.i, ptr %i.am, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.0.i22, ptr %.sroa.548.0..sroa_idx, align 8
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8
  %.pre = load ptr, ptr %i.an, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775792
  br i1 %i.av, label %bb.d, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.aw = ashr exact i64 %i.au, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 576460752303423487)
  %i.ba = select i1 %i.ay, i64 576460752303423487, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 4
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #32 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au ; 2 uses
  store i64 %.0.i, ptr %i.bd, align 8
  %.sroa.548.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.0.i22, ptr %.sroa.548.0..sroa_idx49, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.am
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !267
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.am
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bh = load ptr, ptr %i.an, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bj) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bc, ptr %i.t, align 8
  store ptr %i.bg, ptr %i.al, align 8
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ba ; 2 uses
  store ptr %i.bk, ptr %i.an, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bl = phi ptr [ %.pre, %bb.b ], [ %i.bk, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.bm = phi ptr [ %i.aq, %bb.b ], [ %i.bg, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bn = load ptr, ptr %i.u, align 8
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.h
  %3 = load double, ptr %i.z, align 8
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.h
  %i.br = load <2 x double>, ptr %i.bq, align 8   ; 3 uses
  %i.bs = load <2 x i64>, ptr %i.bo, align 8
  %i.bt = sitofp <2 x i64> %i.bs to <2 x double>
  %i.bu = fneg <2 x double> %i.br
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> %i.bu, <2 x i32> <i32 1, i32 2>
  %i.bw = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bx, <2 x double> %i.br)
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %i.bz = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.by, <2 x double> %i.bt) ; 3 uses
  %i.cb = fcmp olt <2 x double> %i.ca, zeroinitializer ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %.0.in.v.i23 = select i1 %i.cc, double -5.000000e-01, double 5.000000e-01
  %i.cd = extractelement <2 x double> %i.ca, i64 0
  %.0.in.i24 = fadd double %i.cd, %.0.in.v.i23
  %.0.i25 = fptosi double %.0.in.i24 to i64       ; 2 uses
  %i.ce = extractelement <2 x i1> %i.cb, i64 1
  %.0.in.v.i26 = select i1 %i.ce, double -5.000000e-01, double 5.000000e-01
  %i.cf = extractelement <2 x double> %i.ca, i64 1
  %.0.in.i27 = fadd double %i.cf, %.0.in.v.i26
  %.0.i28 = fptosi double %.0.in.i27 to i64       ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  store i64 %.0.i25, ptr %i.bm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.0.i28, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cg = load ptr, ptr %i.al, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr %i.ch, ptr %i.al, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit42

bb.g:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  %i.ci = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.cj = ptrtoint ptr %i.bl to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775792
  br i1 %i.cm, label %bb.h, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30: ; preds = %bb.g
  %i.cn = ashr exact i64 %i.cl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i31, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 576460752303423487)
  %i.cr = select i1 %i.cp, i64 576460752303423487, i64 %i.cq ; 3 uses
  %.not.i.i.i.i32 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i32)
  %i.cs = shl nuw nsw i64 %i.cr, 4
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #32 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store i64 %.0.i25, ptr %i.cu, align 8
  %.sroa.5.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.0.i28, ptr %.sroa.5.0..sroa_idx44, align 8
  %.not10.i.i.i.i.i.i33 = icmp eq ptr %i.ci, %i.bl
  br i1 %.not10.i.i.i.i.i.i33, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i38, label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30, %.lr.ph.i.i.i.i.i.i34
  %.012.i.i.i.i.i.i35 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i34 ], [ %i.ct, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30 ] ; 2 uses
  %.0911.i.i.i.i.i.i36 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i34 ], [ %i.ci, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i36, i64 16, i1 false), !alias.scope !271
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i36, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i35, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.cv, %i.bl
  br i1 %.not.i.i.i.i.i.i37, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i38, label %.lr.ph.i.i.i.i.i.i34, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i34, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30
  %.0.lcssa.i.i.i.i.i.i39 = phi ptr [ %i.ct, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i30 ], [ %i.cw, %.lr.ph.i.i.i.i.i.i34 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i39, i64 16
  %.not.i23.i.i.i40 = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i.i.i40, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i38
  %i.cy = load ptr, ptr %i.an, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.da) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41: ; preds = %bb.i, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i38
  store ptr %i.ct, ptr %i.t, align 8
  store ptr %i.cx, ptr %i.al, align 8
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.db, ptr %i.an, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit42

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit42: ; preds = %bb.f, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i41
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7DoRoundEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8
  %i.j = load <2 x double>, ptr %i.f, align 8     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = fmul double %i.m, %i.l
  %i.o = extractelement <2 x double> %i.j, i64 0
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.i, double %i.n)
  %i.q = tail call double @atan2(double noundef %i.b, double noundef %i.p) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load double, ptr %i.r, align 8
  %i.t = tail call double @llvm.fabs.f64(double %i.q)
  %i.u = fmul double %i.s, %i.t                   ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  %.0.in.v.i = select i1 %i.v, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.u, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64
  %i.w = trunc i64 %.0.i to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %smax = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %.pre = load ptr, ptr %i.aa, align 8
  br label %bb.g

bb.b:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.g
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.g
  %3 = load double, ptr %i.z, align 8
  %i.ah = load <2 x i64>, ptr %i.ae, align 8
  %i.ai = sitofp <2 x i64> %i.ah to <2 x double>
  %i.aj = load <2 x double>, ptr %i.ag, align 8
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %i.ak = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0 ; 2 uses
  %i.an = fcmp olt double %i.am, 0.000000e+00
  %.0.in.v.i25 = select i1 %i.an, double -5.000000e-01, double 5.000000e-01
  %.0.in.i26 = fadd double %i.am, %.0.in.v.i25
  %.0.i27 = fptosi double %.0.in.i26 to i64       ; 2 uses
  %i.ao = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.ap = fcmp olt double %i.ao, 0.000000e+00
  %.0.in.v.i28 = select i1 %i.ap, double -5.000000e-01, double 5.000000e-01
  %.0.in.i29 = fadd double %i.ao, %.0.in.v.i28
  %.0.i30 = fptosi double %.0.in.i29 to i64       ; 2 uses
  %i.aq = load ptr, ptr %i.ab, align 8
  %.not.i.i = icmp eq ptr %i.cw, %i.aq
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %.0.i27, ptr %i.cw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.0.i30, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ar = load ptr, ptr %i.aa, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.as, ptr %i.aa, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.au = ptrtoint ptr %i.cw to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.e, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #32 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %.0.i27, ptr %i.bf, align 8
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.0.i30, ptr %.sroa.5.0..sroa_idx52, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.at, %i.cw
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !275
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.cw
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.bj = load ptr, ptr %i.ab, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bl) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.be, ptr %i.x, align 8
  store ptr %i.bi, ptr %i.aa, align 8
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bm, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.a, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50
  %i.bn = phi ptr [ %.pre, %bb.a ], [ %i.cw, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50 ] ; 6 uses
  %.065 = phi i32 [ 0, %bb.a ], [ %i.de, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50 ]
  %i.bo = phi <2 x double> [ %i.j, %bb.a ], [ %i.dd, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50 ] ; 4 uses
  %i.bp = load ptr, ptr %i.y, align 8
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.g
  %5 = load double, ptr %i.z, align 8
  %i.br = load <2 x i64>, ptr %i.bq, align 8
  %i.bs = sitofp <2 x i64> %i.br to <2 x double>
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %i.bt = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bt, <2 x double> %i.bs) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  %.0.in.v.i31 = select i1 %i.bw, double -5.000000e-01, double 5.000000e-01
  %.0.in.i32 = fadd double %i.bv, %.0.in.v.i31
  %.0.i33 = fptosi double %.0.in.i32 to i64       ; 2 uses
  %i.bx = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  %i.by = fcmp olt double %i.bx, 0.000000e+00
  %.0.in.v.i34 = select i1 %i.by, double -5.000000e-01, double 5.000000e-01
  %.0.in.i35 = fadd double %i.bx, %.0.in.v.i34
  %.0.i36 = fptosi double %.0.in.i35 to i64       ; 2 uses
  %i.bz = load ptr, ptr %i.ab, align 8
  %.not.i.i37 = icmp eq ptr %i.bn, %i.bz
  br i1 %.not.i.i37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.0.i33, ptr %i.bn, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.0.i36, ptr %.sroa.556.0..sroa_idx, align 8
  %i.ca = load ptr, ptr %i.aa, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  store ptr %i.cb, ptr %i.aa, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50

bb.i:                                             ; preds = %bb.g
  %i.cc = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.cd = ptrtoint ptr %i.bn to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775792
  br i1 %i.cg, label %bb.j, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38: ; preds = %bb.i
  %i.ch = ashr exact i64 %i.cf, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i39 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i39, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 576460752303423487)
  %i.cl = select i1 %i.cj, i64 576460752303423487, i64 %i.ck ; 3 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.cm = shl nuw nsw i64 %i.cl, 4
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #32 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i64 %.0.i33, ptr %i.co, align 8
  %.sroa.556.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %.0.i36, ptr %.sroa.556.0..sroa_idx57, align 8
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.cc, %i.bn
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i42 ], [ %i.cn, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i42 ], [ %i.cc, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i44, i64 16, i1 false), !alias.scope !279
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.cp, %i.bn
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.cn, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i38 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i42 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 16 ; 2 uses
  %.not.i23.i.i.i48 = icmp eq ptr %i.cc, null
  br i1 %.not.i23.i.i.i48, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  %i.cs = load ptr, ptr %i.ab, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cu) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49: ; preds = %bb.k, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i46
  store ptr %i.cn, ptr %i.x, align 8
  store ptr %i.cr, ptr %i.aa, align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cv, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit50: ; preds = %bb.h, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49
  %i.cw = phi ptr [ %i.cb, %bb.h ], [ %i.cr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i49 ] ; 7 uses
  %i.cx = load <2 x double>, ptr %i.ac, align 8   ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = fneg <2 x double> %i.bo
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.db = fmul <2 x double> %i.cx, %i.da
  %i.dc = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cy, <2 x double> %i.db)
  %i.de = add nuw nsw i32 %.065, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %smax
  br i1 %exitcond.not, label %bb.b, label %bb.g, !llvm.loop !283
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib13ClipperOffset7DoMiterEiid(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load double, ptr %i.a, align 8
  %i.c = fdiv double %i.b, %3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = sext i32 %2 to i64
  %i.k = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f
  %i.n = load <2 x i64>, ptr %i.h, align 8
  %i.o = sitofp <2 x i64> %i.n to <2 x double>
  %i.p = load <2 x double>, ptr %i.l, align 8
  %i.q = load <2 x double>, ptr %i.m, align 8
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = insertelement <2 x double> poison, double %i.c, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.o) ; 2 uses
  %i.v = fcmp olt <2 x double> %i.u, zeroinitializer
  %i.w = select <2 x i1> %i.v, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.x = fadd <2 x double> %i.u, %i.w
  %i.y = fptosi <2 x double> %i.x to <2 x i64>    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i64> %i.y, ptr %i.aa, align 8
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.z, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775792
  br i1 %i.aj, label %bb.d, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.ak = ashr exact i64 %i.ai, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487)
  %i.ao = select i1 %i.am, i64 576460752303423487, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store <2 x i64> %i.y, ptr %i.ar, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.af, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !284
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.at, %.lr.ph.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.av = load ptr, ptr %i.ab, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ax) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aq, ptr %i.d, align 8
  store ptr %i.au, ptr %i.z, align 8
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.ay, ptr %i.ab, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

end_hunk_0
