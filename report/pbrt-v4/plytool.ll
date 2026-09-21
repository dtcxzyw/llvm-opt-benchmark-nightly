Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/plytool?download=true
inline.NumInlined: 2506
inline.NumDeleted: 867
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4pbrt11TriQuadMeshC2ERKS0_:bb.a
  %.not.i.i.i.i45 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i.i.i45, label %.noexc49, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = icmp ugt i64 %i.ed, 9223372036854775804
  br i1 %i.ee, label %.noexc.i.i47, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i46, !prof !69

.noexc.i.i47:                                     ; preds = %bb.p
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc48 unwind label %bb.y

.noexc48:                                         ; preds = %.noexc.i.i47
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i46: ; preds = %bb.p
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #37
          to label %.noexc49 unwind label %bb.y

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i46, %bb.o
  %i.eg = phi ptr [ null, %bb.o ], [ %i.ef, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i46 ] ; 6 uses
  store ptr %i.eg, ptr %i.dw, align 8, !tbaa !39
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !38
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !52
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !56 ; 3 uses
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !56
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %i.ep = icmp sgt i64 %i.eo, 4
  br i1 %i.ep, label %bb.q, label %bb.r, !prof !70

bb.q:                                             ; preds = %.noexc49
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eg, ptr align 4 %i.ek, i64 %i.eo, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %.noexc49
  %i.eq = icmp eq i64 %i.eo, 4
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = load i32, ptr %i.ek, align 4, !tbaa !57
  store i32 %i.er, ptr %i.eg, align 4, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.es = getelementptr inbounds i8, ptr %i.eg, i64 %i.eo
  store ptr %i.es, ptr %i.eh, align 8, !tbaa !38
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i32
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i36
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i40, %.noexc.i.i41
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i46, %.noexc.i.i47
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ez = load ptr, ptr %i.dm, align 8, !tbaa !52
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fc) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.x ], [ %i.ex, %bb.y ], [ %i.ex, %bb.z ] ; 2 uses
  %i.fd = load ptr, ptr %i.cc, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIiSaIiEED2Ev.exit52, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.fe = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit52

_ZNSt6vectorIiSaIiEED2Ev.exit52:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.pn, %bb.aa ] ; 2 uses
  %i.fi = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit52
  %i.fj = load ptr, ptr %i.ax, align 8, !tbaa !53
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #33
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEED2Ev.exit52, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.v ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit52 ], [ %.pn.pn, %bb.ab ] ; 2 uses
  %i.fn = load ptr, ptr %i.r, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.fo = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fr) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %bb.ac, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.u ], [ %.pn.pn.pn, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit ], [ %.pn.pn.pn, %bb.ac ]
  %i.fs = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #33
  br label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, %bb.ad
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN4pbrt11TriQuadMesh22ConvertToOnlyTrianglesEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

declare void @_ZN4pbrt11TriQuadMesh14ComputeNormalsEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4pbrt11TriQuadMesh6RefineIRZ8displaceSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE3$_2EEvOT_fiiiRNS_7HashMapISt4pairIiiEiNS_11HashIntPairEN4pstd3pmr21polymorphic_allocatorINSJ_8optionalISG_ISH_iEEEEEEE"(ptr noundef nonnull align 8 dereferenceable(144) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(40) %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.107", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.d, align 4 ; 3 uses
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.582.0.copyload = load float, ptr %.sroa.582.0..sroa_idx, align 4 ; 2 uses
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %.sroa.077.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.579.0.copyload = load float, ptr %.sroa.579.0..sroa_idx, align 4 ; 2 uses
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %.sroa.074.0.copyload = load <2 x float>, ptr %i.h, align 4 ; 3 uses
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.576.0.copyload = load float, ptr %.sroa.576.0..sroa_idx, align 4 ; 2 uses
  %i.i = fsub float %.sroa.576.0.copyload, %.sroa.582.0.copyload ; 2 uses
  %i.j = fsub <2 x float> %.sroa.074.0.copyload, %.sroa.080.0.copyload ; 2 uses
  %i.k = fmul <2 x float> %i.j, %i.j              ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul float %i.i, %i.i
  %i.n = fadd float %i.m, %i.l
  %sqrt.i.i.i111 = tail call noundef float @llvm.sqrt.f32(float %i.n) ; 3 uses
  %i.o = shufflevector <2 x float> %.sroa.080.0.copyload, <2 x float> %.sroa.077.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.p = shufflevector <2 x float> %.sroa.077.0.copyload, <2 x float> %.sroa.074.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.q = fsub <2 x float> %i.o, %i.p              ; 2 uses
  %i.r = shufflevector <2 x float> %.sroa.080.0.copyload, <2 x float> %.sroa.077.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.s = shufflevector <2 x float> %.sroa.077.0.copyload, <2 x float> %.sroa.074.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.t = fsub <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = insertelement <2 x float> poison, float %.sroa.582.0.copyload, i64 0
  %i.v = insertelement <2 x float> %i.u, float %.sroa.579.0.copyload, i64 1
  %i.w = insertelement <2 x float> poison, float %.sroa.579.0.copyload, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.sroa.576.0.copyload, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 2 uses
  %i.z = fmul <2 x float> %i.q, %i.q
  %i.aa = fmul <2 x float> %i.t, %i.t
  %i.ab = fadd <2 x float> %i.z, %i.aa
  %i.ac = fmul <2 x float> %i.y, %i.y
  %i.ad = fadd <2 x float> %i.ac, %i.ab
  %i.ae = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ad) ; 3 uses
  %i.af = insertelement <2 x float> poison, float %1, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fcmp uge <2 x float> %i.ae, %i.ag
  %8 = bitcast <2 x i1> %7 to i2
  %9 = icmp eq i2 %8, 0
  %i.ah = fcmp olt float %sqrt.i.i.i111, %1
  %or.cond101 = and i1 %i.ah, %9
  br i1 %or.cond101, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.ak, align 4, !tbaa !57
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775804
  br i1 %i.as, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.at = ashr exact i64 %i.ar, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 2305843009213693951)
  %i.ax = select i1 %i.av, i64 2305843009213693951, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #37 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 %2, ptr %i.ba, align 4, !tbaa !57
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !39
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ax ; 2 uses
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !52
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bh = phi ptr [ %i.am, %bb.c ], [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %i.bi = phi ptr [ %i.an, %bb.c ], [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i112 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %3, ptr %i.bi, align 4, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit119

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 4 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775804
  br i1 %i.bo, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i113

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i113: ; preds = %bb.i
  %i.bp = ashr exact i64 %i.bn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i114 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i114, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 2305843009213693951)
  %i.bt = select i1 %i.br, i64 2305843009213693951, i64 %i.bs ; 3 uses
  %.not.i.i.i115 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i115)
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #37 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store i32 %3, ptr %i.bw, align 4, !tbaa !57
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i116

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i113
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i116

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i116: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %.not.i17.i.i117 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i117, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i116
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cb) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i116
  store ptr %i.bv, ptr %i.ai, align 8, !tbaa !39
  store ptr %i.by, ptr %i.aj, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bt ; 2 uses
  store ptr %i.cc, ptr %i.al, align 8, !tbaa !52
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit119

_ZNSt6vectorIiSaIiEE9push_backERKi.exit119:       ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118
  %i.cd = phi ptr [ %i.bh, %bb.h ], [ %i.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118 ] ; 2 uses
  %i.ce = phi ptr [ %i.bj, %bb.h ], [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i118 ] ; 3 uses
  %.not.i120 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not.i120, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit119
  store i32 %4, ptr %i.ce, align 4, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.aj, align 8, !tbaa !38
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit127

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit119
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 4 uses
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775804
  br i1 %i.ck, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i121

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #38
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i121: ; preds = %bb.n
  %i.cl = ashr exact i64 %i.cj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i122 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i122, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 2305843009213693951)
  %i.cp = select i1 %i.cn, i64 2305843009213693951, i64 %i.co ; 3 uses
  %.not.i.i.i123 = icmp ne i64 %i.cp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i123)
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #37 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i32 %4, ptr %i.cs, align 4, !tbaa !57
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i124

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i121
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr align 4 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i124

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i124: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i121
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.not.i17.i.i125 = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i125, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i126, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i124
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ci
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cx) #33
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i126

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i126: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i124
  store ptr %i.cr, ptr %i.ai, align 8, !tbaa !39
  store ptr %i.cu, ptr %i.aj, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cy, ptr %i.al, align 8, !tbaa !52
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit127

bb.r:                                             ; preds = %bb.a
  %i.cz = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.da = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.db = fcmp ogt float %i.cz, %i.da
  br i1 %i.db, label %bb.s, label %bb.t

end_hunk_0
