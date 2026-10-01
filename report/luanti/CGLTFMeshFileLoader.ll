Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor9loadSkinsEv:bb.a
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> zeroinitializer, <4 x float> %i.eg) ; 2 uses
  %i.ek = fsub float %i.ch, %.sroa.23.0
  %i.el = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.23.0, i64 0
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.en = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float %i.cs, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.ek, i64 2
  %i.eq = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.24.0, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.es = fadd <4 x float> %i.dp, %i.ea
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.es)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 336
  %i.eu = insertelement <4 x float> %i.ea, float %i.db, i64 3 ; 2 uses
  %i.ev = insertelement <4 x float> %i.do, float %i.dd, i64 3
  %i.ew = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.ev)
  %i.ex = insertelement <4 x float> %i.ej, float %i.da, i64 3 ; 3 uses
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> zeroinitializer, <4 x float> %i.ew)
  %.sroa.1255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 352
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.dp) ; 2 uses
  %i.fa = fsub <4 x float> %i.ez, %i.ex
  %.sroa.1658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 368
  %i.fb = extractelement <4 x float> %i.cm, i64 1
  %i.fc = fadd float %.sroa.24.0, %i.fb           ; 2 uses
  %i.fd = insertelement <4 x float> %i.ep, float %i.fc, i64 3
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> zeroinitializer, <4 x float> %i.fd)
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> zeroinitializer, <4 x float> %i.fe) ; 2 uses
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> zeroinitializer, <4 x float> %i.ez)
  %i.fh = insertelement <4 x float> %i.ff, float %i.fc, i64 3 ; 3 uses
  %i.fi = fadd <4 x float> %i.fh, %i.fg
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> zeroinitializer, <4 x float> %i.fa)
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> zeroinitializer, <4 x float> %i.et)
  store <4 x float> %i.fk, ptr %i.cw, align 4
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> zeroinitializer, <4 x float> %i.ey)
  store <4 x float> %i.fl, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.fj, ptr %.sroa.1255.0..sroa_idx, align 4
  store <4 x float> %i.fi, ptr %.sroa.1658.0..sroa_idx, align 4
  br i1 %i.cz, label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.cx, align 4, !tbaa !939
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.o, %bb.n
  %i.fm = add nuw i64 %.066, 1                    ; 2 uses
  %i.fn = load ptr, ptr %i.s, align 8, !tbaa !292
  %i.fo = load ptr, ptr %i.r, align 8, !tbaa !206 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = icmp ult i64 %i.fm, %i.fs
  br i1 %i.ft, label %.lr.ph.split, label %._crit_edge, !llvm.loop !936

bb.p:                                             ; preds = %bb.m, %bb.k
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.c, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.g
  br i1 %.not, label %.loopexit, label %bb.c

bb.r:                                             ; preds = %bb.p, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.fu, %bb.p ]
  %i.fw = load i8, ptr %i.i, align 8, !tbaa !425
  %i.fx = icmp eq i8 %i.fw, 1
  br i1 %i.fx, label %bb.s, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18

bb.s:                                             ; preds = %bb.r
  %i.fy = load ptr, ptr %1, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i17, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = load ptr, ptr %i.l, align 8, !tbaa !429
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gc) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18: ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.q, %bb.b, %bb.a
  ret void

bb.u:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.547") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.547", align 8 ; 19 uses
  %.sroa.7133 = alloca [4 x float], align 4       ; 7 uses
  %.sroa.9141 = alloca [4 x float], align 4       ; 7 uses
  %.sroa.10149 = alloca [4 x float], align 4      ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1678, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1679, align 8           ; 6 uses
  %.sroa.7 = alloca [4 x float], align 4          ; 4 uses
  %.sroa.9 = alloca [4 x float], align 4          ; 4 uses
  %.sroa.10113 = alloca [4 x float], align 4      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 5
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not35 = icmp eq i32 %i.o, 2
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.ay

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.547") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 8 uses
  %i.x = icmp ugt i64 %i.w, 144115188075855871
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 6
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.j ; 7 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit.i
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 60
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !412
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 40
  store float 1.000000e+00, ptr %i.ac, align 4, !tbaa !412
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 20
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !412
  store float 1.000000e+00, ptr %.013.i.i.i.i.i.prol, align 4, !tbaa !412
  %i.ae = add i64 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 64 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !940

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.w, 4
  br i1 %i.ag, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ah, i8 0, i64 56, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 60
  store float 1.000000e+00, ptr %i.ai, align 4, !tbaa !412
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !412
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 20
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !412
  store float 1.000000e+00, ptr %.013.i.i.i.i.i, align 4, !tbaa !412
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 124
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !412
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !412
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 84
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !412
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !412
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ar, i8 0, i64 56, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 188
  store float 1.000000e+00, ptr %i.as, align 4, !tbaa !412
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 168
  store float 1.000000e+00, ptr %i.at, align 4, !tbaa !412
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 148
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !412
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !412
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.aw, i8 0, i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 252
  store float 1.000000e+00, ptr %i.ax, align 4, !tbaa !412
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 232
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !412
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 212
  store float 1.000000e+00, ptr %i.az, align 4, !tbaa !412
  store float 1.000000e+00, ptr %i.av, align 4, !tbaa !412
  %i.ba = add i64 %.01012.i.i.i.i.i, -4           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !941

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.w
  %.pre191 = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %.not182 = icmp eq i64 %.pre191, 0
  br i1 %.not182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !425, !noalias !949
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit
  %.0.lcssa.i.i.i.i.i228 = phi ptr [ null, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %.lcssa, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit ], [ %.lcssa, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit ] ; 2 uses
  %.sroa.0158.0227 = phi ptr [ null, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.z, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit ], [ %i.z, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit ] ; 8 uses
  %.sroa.15.0221 = phi i64 [ 0, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bd, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit ], [ %i.bd, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.bi, align 8, !tbaa !439
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.bj, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.m unwind label %bb.v

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EEC2EmRKS3_.exit.i, %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit87

bb.k:                                             ; preds = %.lr.ph, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit
  %.0178 = phi i64 [ 0, %.lr.ph ], [ %i.br, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7133)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9141)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10149)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  switch i8 %i.bf, label %bb.l [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.k
  %i.bl = mul i64 %.sroa.4.0.copyload.i, %.0178
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl ; 7 uses
  %.sroa.0130.0.copyload132 = load float, ptr %i.bm, align 1
  %.sroa.7133.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.7133.0..sroa_idx135, i64 16, i1 false)
  %.sroa.8136.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %.sroa.8136.0.copyload140 = load float, ptr %.sroa.8136.0..sroa_idx139, align 1
  %.sroa.9141.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9141.0..sroa_idx143, i64 16, i1 false)
  %.sroa.9144.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %.sroa.9144.0.copyload148 = load float, ptr %.sroa.9144.0..sroa_idx147, align 1
  %.sroa.10149.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10149.0..sroa_idx151, i64 16, i1 false)
  %.sroa.10152.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.bm, i64 60
  %.sroa.10152.0.copyload156 = load float, ptr %.sroa.10152.0..sroa_idx155, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit

_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.bg, i64 %.0178 ; 7 uses
  %.sroa.0130.0.copyload131 = load float, ptr %i.bn, align 4
  %.sroa.7133.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133.0..sroa_idx134, i64 16, i1 false), !tbaa.struct !950
  %.sroa.8136.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %.sroa.8136.0.copyload138 = load float, ptr %.sroa.8136.0..sroa_idx137, align 4
  %.sroa.9141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141.0..sroa_idx142, i64 16, i1 false), !tbaa.struct !951
  %.sroa.9144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %.sroa.9144.0.copyload146 = load float, ptr %.sroa.9144.0..sroa_idx145, align 4
  %.sroa.10149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149.0..sroa_idx150, i64 16, i1 false), !tbaa.struct !952
  %.sroa.10152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  %.sroa.10152.0.copyload154 = load float, ptr %.sroa.10152.0..sroa_idx153, align 4, !tbaa !60
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !949 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bo, align 8, !tbaa !63, !noalias !949
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @.str.36, ptr %i.bp, align 8, !tbaa !332, !noalias !949
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc48 unwind label %.thread229

.noexc48:                                         ; preds = %bb.l
  unreachable

_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133, i8 0, i64 16, i1 false), !alias.scope !949
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141, i8 0, i64 16, i1 false), !alias.scope !949
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149, i8 0, i64 16, i1 false), !alias.scope !949
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit

_ZNK5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE3getEm.exit: ; preds = %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.8136.0 = phi float [ %.sroa.8136.0.copyload140, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.8136.0.copyload138, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %.sroa.9144.0 = phi float [ %.sroa.9144.0.copyload148, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.9144.0.copyload146, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %.sroa.10152.0 = phi float [ %.sroa.10152.0.copyload156, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.10152.0.copyload154, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %.sroa.0130.0 = phi float [ %.sroa.0130.0.copyload132, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.0130.0.copyload131, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %_ZSt3getISt5tupleIJEEJN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceESt6vectorIS7_SaIS7_EES1_EERKT_RKSt7variantIJDpT0_EE.exit.i ]
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %.0178 ; 7 uses
  store float %.sroa.0130.0, ptr %i.bq, align 4
  %.sroa.7133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7133, i64 16, i1 false), !tbaa.struct !950
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  store float %.sroa.8136.0, ptr %.sroa.8136.0..sroa_idx, align 4
  %.sroa.9141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9141, i64 16, i1 false), !tbaa.struct !951
  %.sroa.9144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store float %.sroa.9144.0, ptr %.sroa.9144.0..sroa_idx, align 4
  %.sroa.10149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10149, i64 16, i1 false), !tbaa.struct !952
  %.sroa.10152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  store float %.sroa.10152.0, ptr %.sroa.10152.0..sroa_idx, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7133)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9141)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10149)
  %i.br = add nuw i64 %.0178, 1                   ; 2 uses
  %i.bs = icmp ult i64 %i.br, %.pre191
  br i1 %i.bs, label %bb.k, label %._crit_edge, !llvm.loop !944

.thread229:                                       ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7133)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9141)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10149)
  br label %bb.an

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !264, !range !80, !noundef !81
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !181 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !227
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !226 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 88                ; 2 uses
  %.not.i.i49 = icmp ult i64 %i.bz, %i.cg
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.bz, i64 noundef %i.cg) #34
          to label %.noexc50 unwind label %bb.w

.noexc50:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ch = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %i.cc, i64 %i.bz ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cm = trunc nuw i8 %i.cl to i1
  %.val.i = load i64, ptr %i.cj, align 8
  %.0.i = select i1 %i.cm, i64 %.val.i, i64 %i.ch
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.cn = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.co = phi i64 [ %.0.i, %bb.q ], [ %i.cn, %bb.r ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !440, !noalias !953 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !227, !noalias !953
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !226, !noalias !953 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 88                ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cq, %i.cx
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, label %.invoke

end_hunk_0
begin_hunk_1_@_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE4makeERKN10tiniergltf4GlTFEm:bb.a
_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %.noexc4.i.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hc, align 8, !tbaa !1024
  %.pre159 = load i8, ptr %i.go, align 8, !tbaa !476
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEEC2ERKS5_.exit

bb.ar:                                            ; preds = %bb.an
  unreachable

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIN4core8vector3dIfEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceESt6vectorIS7_SaIS7_EESt5tupleIJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(40) %0) #30
  br label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEEC2ERKS5_.exit: ; preds = %bb.an, %bb.ao, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i
  %i.hi = phi i8 [ %i.gp, %bb.an ], [ 0, %bb.ao ], [ %.pre159, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceESt6vectorISA_SaISA_EESt5tupleIJEEEEC1ERKSI_EUlOT_T0_E_RKSt7variantIJSC_SF_SH_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESP_ST_.exit.i.i.i.i.i.i.i.i.i ]
  store i8 %i.hi, ptr %i.gn, align 8, !tbaa !476
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !503
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !503
  br label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit91

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit91: ; preds = %bb.ai, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEEC2ERKS5_.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !476
  %i.ho = icmp eq i8 %i.hn, 1
  br i1 %i.ho, label %bb.at, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit104

bb.at:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit91
  %i.hp = load ptr, ptr %3, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i103 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i103, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit104, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !480
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit104

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit104: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit91, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102: ; preds = %bb.as, %bb.j, %bb.al, %bb.am
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48199, %bb.am ], [ %i.bk, %bb.j ], [ %.pn.pn.pn.pn, %bb.al ], [ %i.hh, %bb.as ]
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !476
  %i.hx = icmp eq i8 %i.hw, 1
  br i1 %i.hx, label %bb.av, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106

bb.av:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102
  %i.hy = load ptr, ptr %3, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i105 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i105, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !480
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106, %bb.f
  %.pn52 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn48.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106 ]
  resume { ptr, i32 } %.pn52

bb.ay:                                            ; preds = %bb.ab
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.628") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.628", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1703, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1704, align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  %i.f = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.j
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %2 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !310
  %.not = icmp eq i32 %i.m, 5
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.o = load i32, ptr %i.n, align 8, !tbaa !430
  %.not37 = icmp eq i32 %i.o, 6
  br i1 %.not37, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  br label %bb.ax

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.628") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 9 uses
  %i.x = icmp ugt i64 %i.w, 576460752303423487
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.j ; 24 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 576460752303423484       ; 3 uses
  %i.aa = shl nuw nsw i64 %n.vec, 4
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa   ; 2 uses
  %i.ac = and i64 %i.w, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ad
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ad
  %next.gep215 = getelementptr i8, ptr %i.ae, i64 32
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %next.gep, align 4, !tbaa !412
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %next.gep215, align 4, !tbaa !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.preheader219

.lr.ph.i.i.i.i.i.preheader219:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader219, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader219 ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader219 ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.013.i.i.i.i.i, align 4, !tbaa !412
  %i.ag = add i64 %.01012.i.i.i.i.i, -1           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1027

_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.ab, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.w
  %.pre163 = load i64, ptr %i.v, align 8, !tbaa !344 ; 12 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 8 uses
  %.not150 = icmp eq i64 %.pre163, 0
  br i1 %.not150, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !487 ; 2 uses
  %i.am = load ptr, ptr %3, align 8               ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %switch = icmp ult i8 %i.al, 3
  br i1 %switch, label %.lr.ph.split, label %bb.k

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.al, label %.lr.ph.split.split.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter = and i64 %.pre163, 1
  %i.an = icmp eq i64 %.pre163, 1
  br i1 %i.an, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %.pre163, -2
  br label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter223 = and i64 %.pre163, 1
  %i.ao = icmp eq i64 %.pre163, 1
  br i1 %i.ao, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter226 = and i64 %.pre163, -2
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %xtraiter228 = and i64 %.pre163, 3              ; 3 uses
  %i.ap = icmp ult i64 %.pre163, 4
  br i1 %i.ap, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split.preheader.new

.lr.ph.split.split.preheader.new:                 ; preds = %.lr.ph.split.split.preheader
  %unroll_iter231 = and i64 %.pre163, -4
  br label %.lr.ph.split.split

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0141.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bd, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter227 = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter227.next.1, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.aq = mul i64 %.sroa.4.0.copyload.i, %.0141.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load <2 x float>, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load <2 x float>, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us ; 2 uses
  store <2 x float> %i.as, ptr %i.av, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x float> %i.au, ptr %.sroa.52.0..sroa_idx.us, align 4, !tbaa !412
  %i.aw = or disjoint i64 %.0141.us, 1            ; 2 uses
  %i.ax = mul i64 %.sroa.4.0.copyload.i, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load <2 x float>, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aw ; 2 uses
  store <2 x float> %i.az, ptr %i.bc, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store <2 x float> %i.bb, ptr %.sroa.52.0..sroa_idx.us.1, align 4, !tbaa !412
  %i.bd = add nuw i64 %.0141.us, 2                ; 2 uses
  %niter227.next.1 = add nuw i64 %niter227, 2     ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %._crit_edge.loopexit217.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1028

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0141.us143 = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bj, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.1, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0141.us143 ; 2 uses
  %.sroa.0.0.copyload5.i.us = load <2 x float>, ptr %i.be, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5.0.copyload.i.us = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us, align 4, !tbaa !412
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us143 ; 2 uses
  store <2 x float> %.sroa.0.0.copyload5.i.us, ptr %i.bf, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us146 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store <2 x float> %.sroa.5.0.copyload.i.us, ptr %.sroa.52.0..sroa_idx.us146, align 4, !tbaa !412
  %i.bg = or disjoint i64 %.0141.us143, 1         ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload5.i.us.1 = load <2 x float>, ptr %i.bh, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.5.0.copyload.i.us.1 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us.1, align 4, !tbaa !412
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.bg ; 2 uses
  store <2 x float> %.sroa.0.0.copyload5.i.us.1, ptr %i.bi, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us146.1 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <2 x float> %.sroa.5.0.copyload.i.us.1, ptr %.sroa.52.0..sroa_idx.us146.1, align 4, !tbaa !412
  %i.bj = add nuw i64 %.0141.us143, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit218.unr-lcssa, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1028

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.split
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.0141.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i64 %xtraiter228, 0
  call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.split.split.epil

.lr.ph.split.split.epil:                          ; preds = %.lr.ph.split.split.epil, %.lr.ph.split.split.epil.preheader
  %.0141.epil = phi i64 [ %i.bl, %.lr.ph.split.split.epil ], [ %.0141.epil.init, %.lr.ph.split.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.epil ], [ 0, %.lr.ph.split.split.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.epil ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bk, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.epil, align 4, !tbaa !412
  %i.bl = add nuw i64 %.0141.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter228
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !1029

._crit_edge.loopexit217.unr-lcssa:                ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit217.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0141.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bd, %._crit_edge.loopexit217.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i64 %.pre163 to i1
  call void @llvm.assume(i1 %lcmp.mod225)
  %i.bm = mul i64 %.sroa.4.0.copyload.i, %.0141.us.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load <2 x float>, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us.epil.init ; 2 uses
  store <2 x float> %i.bo, ptr %i.br, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us.epil = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store <2 x float> %i.bq, ptr %.sroa.52.0..sroa_idx.us.epil, align 4, !tbaa !412
  br label %._crit_edge

._crit_edge.loopexit218.unr-lcssa:                ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit218.unr-lcssa, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0141.us143.epil.init = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bj, %._crit_edge.loopexit218.unr-lcssa ] ; 2 uses
  %lcmp.mod222 = trunc i64 %.pre163 to i1
  call void @llvm.assume(i1 %lcmp.mod222)
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0141.us143.epil.init ; 2 uses
  %.sroa.0.0.copyload5.i.us.epil = load <2 x float>, ptr %i.bs, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.5.0.copyload.i.us.epil = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us.epil, align 4, !tbaa !412
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us143.epil.init ; 2 uses
  store <2 x float> %.sroa.0.0.copyload5.i.us.epil, ptr %i.bt, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.us146.epil = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store <2 x float> %.sroa.5.0.copyload.i.us.epil, ptr %.sroa.52.0..sroa_idx.us146.epil, align 4, !tbaa !412
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit218.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit217.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.epil, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit
  %.0.lcssa.i.i.i.i.i200 = phi ptr [ %.lcssa, %._crit_edge.loopexit.unr-lcssa ], [ %.lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.lcssa, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %.lcssa, %.lr.ph.split.split.epil ], [ %.lcssa, %._crit_edge.loopexit217.unr-lcssa ], [ %.lcssa, %._crit_edge.loopexit218.unr-lcssa ], [ %.lcssa, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  %.sroa.0121.0199 = phi ptr [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %.lr.ph.split.split.epil ], [ %i.z, %._crit_edge.loopexit217.unr-lcssa ], [ %i.z, %._crit_edge.loopexit218.unr-lcssa ], [ %i.z, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 8 uses
  %.sroa.15.0193 = phi i64 [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ 0, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aj, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %i.aj, %.lr.ph.split.split.epil ], [ %i.aj, %._crit_edge.loopexit217.unr-lcssa ], [ %i.aj, %._crit_edge.loopexit218.unr-lcssa ], [ %i.aj, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bu = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.bv, align 8, !tbaa !439
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.l unwind label %bb.u

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i, %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.0141 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.cf, %.lr.ph.split.split ] ; 5 uses
  %niter232 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter232.next.3, %.lr.ph.split.split ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.by, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx, align 4, !tbaa !412
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x float> zeroinitializer, ptr %i.ca, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.1, align 4, !tbaa !412
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv:bb.a
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit15

_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit15: ; preds = %.body11, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ap

bb.al:                                            ; preds = %bb.a
  %i.eu = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull @.str.32)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #34
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ev = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.eu) #30
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit
  ret void

bb.ap:                                            ; preds = %bb.an, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit15, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit10, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit5
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.an ], [ %i.ad, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit5 ], [ %i.ca, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit10 ], [ %i.dx, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit15 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !450
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1828, !nonnull !81, !align !640
  %i.e = load i64, ptr %i.d, align 8, !tbaa !181  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !60    ; 3 uses
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.c [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !181
  %i.h = mul i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.i, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !349
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.l = load i8, ptr %i.k, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str.36, ptr %i.n, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit: ; preds = %bb.b, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i8 [ %.0.copyload.i.i.i.i.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceEJS4_St6vectorIhSaIhEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.l, %_ZSt3getISt6vectorIhSaIhEEJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.b ]
  %i.o = zext i8 %.0.i.i.i.i.i to i32
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.e [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i9 = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i11 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i10, align 8, !tbaa !181
  %i.p = mul i64 %.sroa.4.0.copyload.i.i.i.i.i11, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i9, i64 %i.p
  %.0.copyload.i.i.i.i.i.i12 = load i16, ptr %i.q, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !238
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.e
  %i.t = load i16, ptr %i.s, align 2, !tbaa !242
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @.str.36, ptr %i.v, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit: ; preds = %bb.d, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
  %.0.i.i.i.i.i8 = phi i16 [ %.0.copyload.i.i.i.i.i.i12, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceEJS4_St6vectorItSaItEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.t, %_ZSt3getISt6vectorItSaItEEJN5scene19CGLTFMeshFileLoader8AccessorItE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.d ]
  %i.w = zext i16 %.0.i.i.i.i.i8 to i32
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.f:                                             ; preds = %bb.a
  switch i8 %i.g, label %bb.g [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 1, label %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i.i14 = load ptr, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i16 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !181
  %i.x = mul i64 %.sroa.4.0.copyload.i.i.i.i.i16, %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i14, i64 %i.x
  %.0.copyload.i.i.i.i.i.i17 = load i32, ptr %i.y, align 1
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i: ; preds = %bb.f
  %i.z = load ptr, ptr %1, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.e
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !273
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @.str.36, ptr %i.ad, align 8, !tbaa !332
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

bb.h:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESI_SP_.exit: ; preds = %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit
  %.0.i.i.i.i.i13.sink = phi i32 [ %i.o, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SP_.exit ], [ %i.w, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_RKSt7variantIJNS7_IhEENS7_ItEENS7_IjEEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESI_SP_.exit ], [ %.0.copyload.i.i.i.i.i.i17, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceEJS4_St6vectorIjSaIjEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ %i.ab, %_ZSt3getISt6vectorIjSaIjEEJN5scene19CGLTFMeshFileLoader8AccessorIjE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.i.i.i.i ], [ 0, %bb.f ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1829, !nonnull !81, !align !645
  store i32 %.0.i.i.i.i.i13.sink, ptr %i.ae, align 4, !tbaa !273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.p, align 4, !tbaa !1837
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !412
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 36
  store i16 0, ptr %i.r, align 4, !tbaa !1840
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1830

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.v, align 4, !tbaa !1837
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <2 x float> zeroinitializer, ptr %i.w, align 4, !tbaa !412
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  store i16 0, ptr %i.x, align 4, !tbaa !1840
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 4, !tbaa !1837
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 68
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !412
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i16 0, ptr %i.ab, align 4, !tbaa !1840
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.ac, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 4, !tbaa !1837
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !412
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 116
  store i16 0, ptr %i.af, align 4, !tbaa !1840
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.ag, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ah, align 4, !tbaa !1837
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 148
  store <2 x float> zeroinitializer, ptr %i.ai, align 4, !tbaa !412
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 156
  store i16 0, ptr %i.aj, align 4, !tbaa !1840
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !1831

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !232
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 230584300921369395) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 40
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #32 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.as, align 4, !tbaa !1837
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28
  store <2 x float> zeroinitializer, ptr %i.at, align 4, !tbaa !412
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 36
  store i16 0, ptr %i.au, align 4, !tbaa !1840
  %i.av = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1832

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 4, !tbaa !1837
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <2 x float> zeroinitializer, ptr %i.az, align 4, !tbaa !412
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 36
  store i16 0, ptr %i.ba, align 4, !tbaa !1840
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 4, !tbaa !1837
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 68
  store <2 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !412
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i16 0, ptr %i.be, align 4, !tbaa !1840
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 4, !tbaa !1837
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !412
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 116
  store i16 0, ptr %i.bi, align 4, !tbaa !1840
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bk, align 4, !tbaa !1837
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 148
  store <2 x float> zeroinitializer, ptr %i.bl, align 4, !tbaa !412
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  store i16 0, ptr %i.bm, align 4, !tbaa !1840
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1831

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !1841, !alias.scope !1842
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !1836

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !261
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #31
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !233
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !232
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !261
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.762") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 216                 ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.g
  br i1 %.not.i.i, label %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.g) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %i.c, i64 %2 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !264, !range !80, !noundef !81
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNKRSt8optionalImE5valueEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !344
  br label %bb.f

_ZNKRSt8optionalImE5valueEv.exit:                 ; preds = %_ZNKSt6vectorIN10tiniergltf8AccessorESaIS1_EE2atEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.o = load i64, ptr %i.h, align 8, !tbaa !181  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !226  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 88                  ; 2 uses
  %.not.i.i15 = icmp ult i64 %i.o, %i.v
  br i1 %.not.i.i15, label %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKRSt8optionalImE5valueEv.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.o, i64 noundef %i.v) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit: ; preds = %_ZNKRSt8optionalImE5valueEv.exit
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.r, i64 %i.o ; 4 uses
  %i.x = tail call noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.z = load i64, ptr %i.w, align 8, !tbaa !446  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !225
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !224 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 80                ; 2 uses
  %.not.i.i16 = icmp ult i64 %i.z, %i.ag
  br i1 %.not.i.i16, label %_ZNKSt6vectorIN10tiniergltf6BufferESaIS1_EE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.z, i64 noundef %i.ag) #34
  unreachable

_ZNKSt6vectorIN10tiniergltf6BufferESaIS1_EE2atEm.exit: ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !264, !range !80, !noundef !81
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val.i = load i64, ptr %i.ak, align 8
  %.0.i = select i1 %i.aj, i64 %.val.i, i64 %i.x
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !447
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !639
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !344
  store ptr %i.at, ptr %0, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !181
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf6BufferESaIS1_EE2atEm.exit, %bb.c
  %.sink25 = phi i8 [ 0, %_ZNKSt6vectorIN10tiniergltf6BufferESaIS1_EE2atEm.exit ], [ 2, %bb.c ]
  %.sink = phi i64 [ %i.av, %_ZNKSt6vectorIN10tiniergltf6BufferESaIS1_EE2atEm.exit ], [ %i.m, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink25, ptr %i.aw, align 8, !tbaa !522
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.ax, align 8, !tbaa !521
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind noalias writable sret(%"class.std::variant.652") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.680", align 8 ; 14 uses
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.703", align 8 ; 14 uses
  %4 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.726", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1844, !nonnull !81, !align !640 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load i32, ptr %i.b, align 8, !tbaa !641
  switch i32 %i.c, label %bb.al [
    i32 0, label %bb.b
    i32 1, label %bb.n
    i32 2, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1845, !nonnull !81, !align !640
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1846, !nonnull !81, !align !640
  %i.i = load i64, ptr %i.h, align 8, !tbaa !181
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIhE13sparseIndicesERKN10tiniergltf4GlTFERKNS3_21AccessorSparseIndicesEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.680") align 8 %2, ptr noundef nonnull align 8 dereferenceable(648) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %i.f, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 -1, ptr %i.j, align 8, !tbaa !346
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !346   ; 2 uses
  switch i8 %i.l, label %bb.i [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false), !tbaa.struct !381
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !348  ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !349    ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32
end_hunk_2
