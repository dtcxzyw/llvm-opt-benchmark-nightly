Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/freetype?download=true
inline.NumInlined: 273
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv8freetype13FreeType2Impl4cuFnEPK10FT_Vector_S4_S4_Pv:bb.a
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %.not66 = icmp slt i32 %i.h, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit, %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !48
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.r = phi i32 [ %i.h, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ]
  %.04467 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.s = uitofp nneg i32 %.04467 to double
  %i.t = sitofp i32 %i.r to double
  %i.u = fdiv double %i.s, %i.t                   ; 6 uses
  %i.v = fsub double 1.000000e+00, %i.u           ; 6 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = fmul double %i.v, %i.w                   ; 2 uses
  %i.y = fmul double %i.u, 3.000000e+00           ; 2 uses
  %i.z = fmul double %i.y, %i.v
  %i.aa = fmul double %i.v, %i.z                  ; 2 uses
  %i.ab = fmul double %i.u, %i.y
  %i.ac = fmul double %i.v, %i.ab                 ; 2 uses
  %i.ad = fmul double %i.u, %i.u
  %i.ae = fmul double %i.u, %i.ad                 ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !147
  %i.ag = sitofp i64 %i.af to double
  %i.ah = load i64, ptr %0, align 8, !tbaa !43
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fmul double %i.aa, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.x, double %i.aj)
  %i.al = load i64, ptr %1, align 8, !tbaa !43
  %i.am = sitofp i64 %i.al to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ac, double %i.ak)
  %i.ao = load i64, ptr %2, align 8, !tbaa !43
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ae, double %i.an)
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !148
  %i.as = sitofp i64 %i.ar to double
  %i.at = load i64, ptr %i.k, align 8, !tbaa !44
  %i.au = sitofp i64 %i.at to double
  %i.av = fmul double %i.aa, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.x, double %i.av)
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !44
  %i.ay = sitofp i64 %i.ax to double
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ac, double %i.aw)
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !44
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.ae, double %i.az)
  %i.bd = fptosi double %i.aq to i64              ; 3 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = add nuw nsw i64 %i.bd, 32
  %i.bg = lshr i64 %i.bf, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i64 32, %i.bd
  %i.bh = lshr i64 %.nonneg.i, 6
  %.neg.i = sub nsw i64 0, %i.bh
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit:        ; preds = %bb.c, %bb.d
  %.0.in.i = phi i64 [ %i.bg, %bb.c ], [ %.neg.i, %bb.d ] ; 2 uses
  %i.bi = fptosi double %i.bc to i64              ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %i.bk = add nuw nsw i64 %i.bi, 32
  %i.bl = lshr i64 %i.bk, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56

bb.f:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %.nonneg.i52 = sub i64 32, %i.bi
  %i.bm = lshr i64 %.nonneg.i52, 6
  %.neg.i53 = sub nsw i64 0, %i.bm
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56:      ; preds = %bb.e, %bb.f
  %.0.in.i54 = phi i64 [ %i.bl, %bb.e ], [ %.neg.i53, %bb.f ] ; 2 uses
  %i.bn = load ptr, ptr %i.o, align 8, !tbaa !25  ; 6 uses
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56
  %.sroa.5.0.insert.ext = shl i64 %.0.in.i54, 32
  %.sroa.0.0.insert.ext = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bn, align 4, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bp, ptr %i.o, align 8, !tbaa !25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !26  ; 5 uses
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #19
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #20 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %.sroa.5.0.insert.ext62 = shl i64 %.0.in.i54, 32
  %.sroa.0.0.insert.ext58 = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert60 = or disjoint i64 %.sroa.5.0.insert.ext62, %.sroa.0.0.insert.ext58
  store i64 %.sroa.0.0.insert.insert60, ptr %i.cc, align 4, !tbaa !40
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !40, !alias.scope !150, !noalias !149
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !40, !alias.scope !149, !noalias !150
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cb, ptr %i.n, align 8, !tbaa !26
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ck, ptr %i.p, align 8, !tbaa !45
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cl = add nuw nsw i32 %.04467, 1
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %.not.not = icmp slt i32 %.04467, %i.cm
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !146

bb.k:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN2cv8freetype13FreeType2Impl4coFnEPK10FT_Vector_S4_Pv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond38 = or i1 %or.cond, %i.c
  br i1 %or.cond38, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %.not53 = icmp slt i32 %i.e, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !48
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.k = phi i32 [ %i.e, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ]
  %.03354 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.l = uitofp nneg i32 %.03354 to double
  %i.m = sitofp i32 %i.k to double
  %i.n = fdiv double %i.l, %i.m                   ; 4 uses
  %i.o = fmul double %i.n, %i.n
  %i.p = fsub double 1.000000e+00, %i.n           ; 3 uses
  %i.q = fmul double %i.p, %i.p
  %i.r = fmul double %i.n, 2.000000e+00
  %i.s = fmul double %i.r, %i.p
  %i.t = load <2 x i64>, ptr %i.f, align 8, !tbaa !47
  %i.u = sitofp <2 x i64> %i.t to <2 x double>
  %i.v = load <2 x i64>, ptr %0, align 8, !tbaa !47
  %i.w = sitofp <2 x i64> %i.v to <2 x double>
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.y, %i.w
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.ab, <2 x double> %i.z)
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !47
  %4 = sitofp <2 x i64> %3 to <2 x double>
  %5 = insertelement <2 x double> poison, double %i.o, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %6, <2 x double> %i.ac) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %i.ad = fptosi double %8 to i64                 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = add nuw nsw i64 %i.ad, 32
  %i.ag = lshr i64 %i.af, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i64 32, %i.ad
  %i.ah = lshr i64 %.nonneg.i, 6
  %.neg.i = sub nsw i64 0, %i.ah
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit:        ; preds = %bb.c, %bb.d
  %.0.in.i = phi i64 [ %i.ag, %bb.c ], [ %.neg.i, %bb.d ] ; 2 uses
  %9 = extractelement <2 x double> %7, i64 1
  %i.ai = fptosi double %9 to i64                 ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %i.ak = add nuw nsw i64 %i.ai, 32
  %i.al = lshr i64 %i.ak, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43

bb.f:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %.nonneg.i39 = sub i64 32, %i.ai
  %i.am = lshr i64 %.nonneg.i39, 6
  %.neg.i40 = sub nsw i64 0, %i.am
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43:      ; preds = %bb.e, %bb.f
  %.0.in.i41 = phi i64 [ %i.al, %bb.e ], [ %.neg.i40, %bb.f ] ; 2 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !25  ; 6 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43
  %.sroa.5.0.insert.ext = shl i64 %.0.in.i41, 32
  %.sroa.0.0.insert.ext = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.an, align 4, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !26  ; 5 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #19
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #20 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %.sroa.5.0.insert.ext49 = shl i64 %.0.in.i41, 32
  %.sroa.0.0.insert.ext45 = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.5.0.insert.ext49, %.sroa.0.0.insert.ext45
  store i64 %.sroa.0.0.insert.insert47, ptr %i.bc, align 4, !tbaa !40
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.an
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !40, !alias.scope !156, !noalias !155
  store i64 %i.bd, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !40, !alias.scope !155, !noalias !156
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bj) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bb, ptr %i.g, align 8, !tbaa !26
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !45
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bl = add nuw nsw i32 %.03354, 1
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %.not.not = icmp slt i32 %.03354, %i.bm
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !154

bb.k:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv8freetype13FreeType2ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::allocator", align 1    ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22, !range !50, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  invoke void @hb_font_destroy(ptr noundef %i.e)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = invoke i32 @FT_Done_Face(ptr noundef %i.g)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.invoke unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = invoke i32 @FT_Done_FreeType(ptr noundef %i.j)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not1 = icmp eq i32 %i.k, 0
  br i1 %.not1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.invoke unwind label %bb.k

.invoke:                                          ; preds = %bb.i, %bb.e
  %i.l = phi ptr [ %1, %bb.e ], [ %3, %bb.i ]
  %i.m = phi i32 [ 178, %bb.e ], [ 181, %bb.i ]
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2ImplD2Ev, ptr noundef nonnull @.str.1, i32 noundef %i.m) #19
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void

bb.k:                                             ; preds = %.invoke, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #22
  unreachable
}

declare void @hb_font_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare i32 @FT_Done_Face(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
