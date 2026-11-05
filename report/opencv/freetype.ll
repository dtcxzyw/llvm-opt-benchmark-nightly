Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/freetype?download=true
inline.NumInlined: 273
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv8freetype13FreeType2Impl4lnFnEPK10FT_Vector_Pv:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.d, 32
  %i.g = lshr i64 %i.f, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i64 32, %i.d
  %i.h = lshr i64 %.nonneg.i, 6
  %.neg.i = sub nsw i64 0, %i.h
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit:        ; preds = %bb.c, %bb.d
  %.0.in.i = phi i64 [ %i.g, %bb.c ], [ %.neg.i, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %i.l = add nuw nsw i64 %i.j, 32
  %i.m = lshr i64 %i.l, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit14

bb.f:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %.nonneg.i10 = sub i64 32, %i.j
  %i.n = lshr i64 %.nonneg.i10, 6
  %.neg.i11 = sub nsw i64 0, %i.n
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit14

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit14:      ; preds = %bb.e, %bb.f
  %.0.in.i12 = phi i64 [ %i.m, %bb.e ], [ %.neg.i11, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit14
  %.sroa.5.0.insert.ext = shl i64 %.0.in.i12, 32
  %.sroa.0.0.insert.ext = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.p, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !24
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit14
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #19
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #20 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  %.sroa.5.0.insert.ext20 = shl i64 %.0.in.i12, 32
  %.sroa.0.0.insert.ext16 = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert18 = or disjoint i64 %.sroa.5.0.insert.ext20, %.sroa.0.0.insert.ext16
  store i64 %.sroa.0.0.insert.insert18, ptr %i.af, align 4, !tbaa !39
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = add i64 %i.u, -8
  %i.ah = sub i64 %i.ag, %i.v                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.t, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.an ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.t, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ao = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4, !tbaa !39, !alias.scope !147
  %wide.load34 = load <2 x i64>, ptr %i.ao, align 4, !tbaa !39, !alias.scope !147
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !39, !alias.scope !146
  store <2 x i64> %wide.load34, ptr %i.ap, align 4, !tbaa !39, !alias.scope !146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.i.preheader36:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader36, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader36 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.ar = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !147
  store i64 %i.ar, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !146
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !145

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.al, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !25
  store ptr %i.au, ptr %i.o, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ay, ptr %i.q, align 8, !tbaa !44
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !49
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %.0 = phi i32 [ 0, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN2cv8freetype13FreeType2Impl4cuFnEPK10FT_Vector_S4_S4_Pv(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
  %i.f = bitcast <4 x i1> %i.e to i4
  %.not = icmp eq i4 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !49
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.r = phi i32 [ %i.h, %.lr.ph ], [ %i.cy, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ]
  %.04467 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.s = uitofp nneg i32 %.04467 to double
  %4 = uitofp nneg i32 %i.r to double
  %i.t = fdiv double %i.s, %4                     ; 6 uses
  %i.u = fsub double 1.000000e+00, %i.t           ; 6 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = fmul double %i.u, %i.v                   ; 2 uses
  %i.x = fmul double %i.t, 3.000000e+00           ; 2 uses
  %i.y = fmul double %i.x, %i.u
  %i.z = fmul double %i.u, %i.y                   ; 2 uses
  %i.aa = fmul double %i.t, %i.x
  %i.ab = fmul double %i.u, %i.aa                 ; 2 uses
  %i.ac = fmul double %i.t, %i.t
  %i.ad = fmul double %i.t, %i.ac                 ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !154
  %i.af = sitofp i64 %i.ae to double
  %i.ag = load i64, ptr %0, align 8, !tbaa !42
  %i.ah = sitofp i64 %i.ag to double
  %i.ai = fmul double %i.z, %i.ah
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.w, double %i.ai)
  %i.ak = load i64, ptr %1, align 8, !tbaa !42
  %i.al = sitofp i64 %i.ak to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ab, double %i.aj)
  %i.an = load i64, ptr %2, align 8, !tbaa !42
  %i.ao = sitofp i64 %i.an to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ad, double %i.am)
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !155
  %i.ar = sitofp i64 %i.aq to double
  %i.as = load i64, ptr %i.k, align 8, !tbaa !43
  %i.at = sitofp i64 %i.as to double
  %i.au = fmul double %i.z, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.w, double %i.au)
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !43
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ab, double %i.av)
  %i.az = load i64, ptr %i.m, align 8, !tbaa !43
  %i.ba = sitofp i64 %i.az to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ad, double %i.ay)
  %i.bc = fptosi double %i.ap to i64              ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = add nuw nsw i64 %i.bc, 32
  %i.bf = lshr i64 %i.be, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i64 32, %i.bc
  %i.bg = lshr i64 %.nonneg.i, 6
  %.neg.i = sub nsw i64 0, %i.bg
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit:        ; preds = %bb.c, %bb.d
  %.0.in.i = phi i64 [ %i.bf, %bb.c ], [ %.neg.i, %bb.d ] ; 2 uses
  %i.bh = fptosi double %i.bb to i64              ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %i.bj = add nuw nsw i64 %i.bh, 32
  %i.bk = lshr i64 %i.bj, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56

bb.f:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %.nonneg.i52 = sub i64 32, %i.bh
  %i.bl = lshr i64 %.nonneg.i52, 6
  %.neg.i53 = sub nsw i64 0, %i.bl
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56:      ; preds = %bb.e, %bb.f
  %.0.in.i54 = phi i64 [ %i.bk, %bb.e ], [ %.neg.i53, %bb.f ] ; 2 uses
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !24  ; 6 uses
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56
  %.sroa.5.0.insert.ext = shl i64 %.0.in.i54, 32
  %.sroa.0.0.insert.ext = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.bm, align 4, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bo, ptr %i.o, align 8, !tbaa !24
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit56
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !25  ; 7 uses
  %i.bq = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 4 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #19
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #20 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  %.sroa.5.0.insert.ext62 = shl i64 %.0.in.i54, 32
  %.sroa.0.0.insert.ext58 = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert60 = or disjoint i64 %.sroa.5.0.insert.ext62, %.sroa.0.0.insert.ext58
  store i64 %.sroa.0.0.insert.insert60, ptr %i.cb, align 4, !tbaa !39
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = ptrtoaddr ptr %i.ca to i64
  %i.cd = add i64 %i.bq, -8
  %i.ce = sub i64 %i.cd, %i.br                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 24
  %i.ch = sub i64 %i.br, %i.cc
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond84 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond84, label %.lr.ph.i.i.i.i.i.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bp, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.cl ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.bp, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.cm = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep81, align 4, !tbaa !39, !alias.scope !157
  %wide.load82 = load <2 x i64>, ptr %i.cm, align 4, !tbaa !39, !alias.scope !157
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !39, !alias.scope !156
  store <2 x i64> %wide.load82, ptr %i.cn, align 4, !tbaa !39, !alias.scope !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader85

.lr.ph.i.i.i.i.i.i.preheader85:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader85, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader85 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader85 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !157
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !156
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.bm
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ca, ptr %i.n, align 8, !tbaa !25
  store ptr %i.cs, ptr %i.o, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cw, ptr %i.p, align 8, !tbaa !44
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cx = add nuw nsw i32 %.04467, 1
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !50  ; 2 uses
  %.not.not = icmp slt i32 %.04467, %i.cy
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !153

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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !49
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.k = phi i32 [ %i.e, %.lr.ph ], [ %i.cf, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ]
  %.03354 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.l = uitofp nneg i32 %.03354 to double
  %3 = uitofp nneg i32 %i.k to double
  %i.m = fdiv double %i.l, %3                     ; 4 uses
  %i.n = fmul double %i.m, %i.m
  %i.o = fsub double 1.000000e+00, %i.m           ; 3 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = fmul double %i.m, 2.000000e+00
  %i.r = fmul double %i.q, %i.o
  %i.s = load <2 x i64>, ptr %i.f, align 8, !tbaa !48
  %i.t = sitofp <2 x i64> %i.s to <2 x double>
  %i.u = load <2 x i64>, ptr %0, align 8, !tbaa !48
  %i.v = sitofp <2 x i64> %i.u to <2 x double>
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.x, %i.v
  %i.z = insertelement <2 x double> poison, double %i.p, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.aa, <2 x double> %i.y)
  %i.ac = load <2 x i64>, ptr %1, align 8, !tbaa !48
  %i.ad = sitofp <2 x i64> %i.ac to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.n, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.af, <2 x double> %i.ab) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fptosi double %i.ah to i64              ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i64 %i.ai, 32
  %i.al = lshr i64 %i.ak, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i64 32, %i.ai
  %i.am = lshr i64 %.nonneg.i, 6
  %.neg.i = sub nsw i64 0, %i.am
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit:        ; preds = %bb.c, %bb.d
  %.0.in.i = phi i64 [ %i.al, %bb.c ], [ %.neg.i, %bb.d ] ; 2 uses
  %i.an = extractelement <2 x double> %i.ag, i64 1
  %i.ao = fptosi double %i.an to i64              ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %i.aq = add nuw nsw i64 %i.ao, 32
  %i.ar = lshr i64 %i.aq, 6
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43

bb.f:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit
  %.nonneg.i39 = sub i64 32, %i.ao
  %i.as = lshr i64 %.nonneg.i39, 6
  %.neg.i40 = sub nsw i64 0, %i.as
  br label %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43

_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43:      ; preds = %bb.e, %bb.f
  %.0.in.i41 = phi i64 [ %i.ar, %bb.e ], [ %.neg.i40, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !24  ; 6 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43
  %.sroa.5.0.insert.ext = shl i64 %.0.in.i41, 32
  %.sroa.0.0.insert.ext = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.at, align 4, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.h, align 8, !tbaa !24
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2cv8freetype13FreeType2Impl3ftdEl.exit43
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !25  ; 7 uses
  %i.ax = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #19
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #20 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %.sroa.5.0.insert.ext49 = shl i64 %.0.in.i41, 32
  %.sroa.0.0.insert.ext45 = and i64 %.0.in.i, 4294967295
  %.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.5.0.insert.ext49, %.sroa.0.0.insert.ext45
  store i64 %.sroa.0.0.insert.insert47, ptr %i.bi, align 4, !tbaa !39
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.at
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = add i64 %i.ax, -8
  %i.bl = sub i64 %i.bk, %i.ay                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 24
  %i.bo = sub i64 %i.ay, %i.bj
  %diff.check = icmp ugt i64 %i.bo, -32
  %or.cond70 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond70, label %.lr.ph.i.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.aw, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.aw, i64 %i.bs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bt = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep67, align 4, !tbaa !39, !alias.scope !165
  %wide.load68 = load <2 x i64>, ptr %i.bt, align 4, !tbaa !39, !alias.scope !165
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !39, !alias.scope !164
  store <2 x i64> %wide.load68, ptr %i.bu, align 4, !tbaa !39, !alias.scope !164
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.i.preheader71:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !165
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !39, !alias.scope !164
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.at
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !162

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bh, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bq, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cc) #21
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !25
  store ptr %i.bz, ptr %i.h, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !44
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ce = add nuw nsw i32 %.03354, 1
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %.not.not = icmp slt i32 %.03354, %i.cf
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !163

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
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21, !range !51, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
end_hunk_0
