Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/LogUtils?download=true
inline.NumInlined: 258
inline.NumDeleted: 108
begin_hunk_0_@_ZN16OpenColorIO_v2_57LogUtil20ConvertLogParametersERKNS0_9CTFParamsERdRSt6vectorIdSaIdEES8_S8_:bb.a
  ]

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  store double 1.000000e+01, ptr %1, align 8, !tbaa !19
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  store double 2.000000e+00, ptr %1, align 8, !tbaa !19
  br label %bb.p

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  store double 1.000000e+01, ptr %1, align 8, !tbaa !19
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  store double 2.000000e+00, ptr %1, align 8, !tbaa !19
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit35, %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  store double 1.000000e+01, ptr %1, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_57LogUtil20ValidateLegacyParamsERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_57LogUtil20ValidateLegacyParamsERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN16OpenColorIO_v2_57LogUtil20ValidateLegacyParamsERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 5 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19
  %i.ba = fdiv double %i.az, 1.023000e+03
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.bf = fdiv double f0x40005E353F7CED92, %i.av  ; 2 uses
  %i.bg = fsub double %i.bc, %i.be                ; 2 uses
  %i.bh = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ax, i64 1
  %i.bi = insertelement <2 x double> <double poison, double 1.023000e+03>, double %i.bf, i64 0
  %i.bj = fdiv <2 x double> %i.bh, %i.bi          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %i.bl = fsub double %i.ba, %i.bk
  %i.bm = fmul double %i.bf, %i.bl                ; 2 uses
  %i.bn = fcmp ogt double %i.bm, -1.000000e-04
  %.sroa.speculated.i = select i1 %i.bn, double -1.000000e-04, double %i.bm
  %i.bo = tail call double @pow(double noundef 1.000000e+01, double noundef %.sroa.speculated.i) #18
  %i.bp = fsub double 1.000000e+00, %i.bo
  %i.bq = fdiv double %i.bg, %i.bp                ; 2 uses
  %i.br = fsub double %i.bq, %i.bg
  %i.bs = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = fsub double %i.br, %i.be
  %i.bv = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bu, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x double> %i.bv, %i.bx
  store <2 x double> %i.by, ptr %i.bt, align 8, !tbaa !19
  store <2 x double> %i.bj, ptr %i.bs, align 8, !tbaa !19
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !17 ; 5 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !19
  %i.cf = fdiv double %i.ce, 1.023000e+03
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = fdiv double f0x40005E353F7CED92, %i.ca  ; 2 uses
  %i.cl = fsub double %i.ch, %i.cj                ; 2 uses
  %i.cm = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cc, i64 1
  %i.cn = insertelement <2 x double> <double poison, double 1.023000e+03>, double %i.ck, i64 0
  %i.co = fdiv <2 x double> %i.cm, %i.cn          ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 1
  %i.cq = fsub double %i.cf, %i.cp
  %i.cr = fmul double %i.ck, %i.cq                ; 2 uses
  %i.cs = fcmp ogt double %i.cr, -1.000000e-04
  %.sroa.speculated.i36 = select i1 %i.cs, double -1.000000e-04, double %i.cr
  %i.ct = tail call double @pow(double noundef 1.000000e+01, double noundef %.sroa.speculated.i36) #18
  %i.cu = fsub double 1.000000e+00, %i.ct
  %i.cv = fdiv double %i.cl, %i.cu                ; 2 uses
  %i.cw = fsub double %i.cv, %i.cl
  %i.cx = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = fsub double %i.cw, %i.cj
  %i.da = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cz, i64 1
  %i.db = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x double> %i.da, %i.dc
  store <2 x double> %i.dd, ptr %i.cy, align 8, !tbaa !19
  store <2 x double> %i.co, ptr %i.cx, align 8, !tbaa !19
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !17 ; 5 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load double, ptr %i.di, align 8, !tbaa !19
  %i.dk = fdiv double %i.dj, 1.023000e+03
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.do = load double, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.dp = fdiv double f0x40005E353F7CED92, %i.df  ; 2 uses
  %i.dq = fsub double %i.dm, %i.do                ; 2 uses
  %i.dr = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.dh, i64 1
  %i.ds = insertelement <2 x double> <double poison, double 1.023000e+03>, double %i.dp, i64 0
  %i.dt = fdiv <2 x double> %i.dr, %i.ds          ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1
  %i.dv = fsub double %i.dk, %i.du
  %i.dw = fmul double %i.dp, %i.dv                ; 2 uses
  %i.dx = fcmp ogt double %i.dw, -1.000000e-04
  %.sroa.speculated.i37 = select i1 %i.dx, double -1.000000e-04, double %i.dw
  %i.dy = tail call double @pow(double noundef 1.000000e+01, double noundef %.sroa.speculated.i37) #18
  %i.dz = fsub double 1.000000e+00, %i.dy
  %i.ea = fdiv double %i.dq, %i.dz                ; 2 uses
  %i.eb = fsub double %i.ea, %i.dq
  %i.ec = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = fsub double %i.eb, %i.do
  %i.ef = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ee, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fdiv <2 x double> %i.ef, %i.eh
  store <2 x double> %i.ei, ptr %i.ed, align 8, !tbaa !19
  store <2 x double> %i.dt, ptr %i.ec, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNSt6vectorIdSaIdEE6resizeEm.exit35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN16OpenColorIO_v2_57LogUtil15GetLogDirectionENS0_8LogStyleE(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_57LogUtil15GetLogDirectionENS0_8LogStyleE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_57LogUtil14GetLinearSlopeERKSt6vectorIdSaIdEEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 40
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load double, ptr %i.c, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %i.m = fmul double %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !19
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.o, double %i.q)
  %i.s = tail call double @log(double noundef %1) #18
  %i.t = fmul double %i.r, %i.s
  %i.u = fdiv double %i.m, %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi double [ %i.i, %bb.b ], [ %i.u, %bb.c ]
  %.0 = fptrunc double %.0.in to float
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_57LogUtil15GetLogSideBreakERKSt6vectorIdSaIdEEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = tail call double @llvm.fmuladd.f64(double %i.c, double %i.e, double %i.g)
  %i.i = fptrunc double %i.h to float
  %i.j = fpext float %i.i to double
  %i.k = tail call double @log2(double noundef %i.j) #18
  %i.l = fptrunc double %i.k to float
  %2 = load double, ptr %i.a, align 8, !tbaa !19
  %i.m = fptrunc double %2 to float
  %i.n = fpext float %i.m to double
  %3 = fptrunc double %1 to float
  %i.o = fpext float %3 to double
  %4 = tail call double @log2(double noundef %i.o) #18
  %5 = fdiv double %i.n, %4
  %6 = fpext float %i.l to double
  %7 = fmul double %5, %6
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %10 = load double, ptr %9, align 8, !tbaa !19
  %11 = fptrunc double %10 to float
  %i.p = fadd float %11, %8
  ret float %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_57LogUtil15GetLinearOffsetERKSt6vectorIdSaIdEEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !19
  %i.d = fptrunc double %i.c to float
  %i.e = fneg float %1
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.d, float %2)
  ret float %i.f
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !19
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !20
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #20
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !19
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !19
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #19
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
end_hunk_0
