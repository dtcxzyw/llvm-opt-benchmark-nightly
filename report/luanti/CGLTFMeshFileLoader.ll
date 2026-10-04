Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor9loadNodesEv:bb.a
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 288
  %i.ci = icmp ult i64 %i.cd, %i.ch
  br i1 %i.ci, label %.lr.ph68, label %._crit_edge.thread, !llvm.loop !933
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor9loadSkinsEv(ptr noundef nonnull align 8 dereferenceable(784) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.547", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i8, ptr %i.a, align 8, !tbaa !155, !range !80, !noundef !81
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157  ; 2 uses
  %.not67 = icmp eq ptr %i.e, %i.g
  br i1 %.not67, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %bb.q
  %.sroa.062.068 = phi ptr [ %i.e, %.lr.ph70 ], [ %i.eh, %bb.q ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !264, !range !80, !noundef !81
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.p = load i64, ptr %.sroa.062.068, align 8, !tbaa !181
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.547") align 8 %1, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.p)
  %i.q = load i64, ptr %i.h, align 8, !tbaa !424
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !206  ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.q, %i.y
  br i1 %i.z, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not71 = icmp eq ptr %i.t, %i.u
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = load i8, ptr %i.i, align 8, !tbaa !425, !noalias !937 ; 2 uses
  %i.ab = load ptr, ptr %1, align 8               ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %switch = icmp ult i8 %i.aa, 3
  br i1 %switch, label %.lr.ph.split, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ac = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.u unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ac) #30
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, %.preheader
  %i.af = load i8, ptr %i.i, align 8, !tbaa !425
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %1, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !429
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit: ; preds = %._crit_edge, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.q

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit
  %i.am = phi ptr [ %i.ea, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit ], [ %i.u, %.lr.ph ]
  %.066 = phi i64 [ %i.dy, %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit ], [ 0, %.lr.ph ] ; 4 uses
  switch i8 %i.aa, label %bb.l [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %.lr.ph.split
  %i.an = mul i64 %.sroa.4.0.copyload.i, %.066
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an ; 12 uses
  %.sroa.9.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.9.0.copyload23 = load float, ptr %.sroa.9.0..sroa_idx22, align 1
  %.sroa.10.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.10.0.copyload25 = load float, ptr %.sroa.10.0..sroa_idx24, align 1
  %.sroa.11.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.14.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.14.0.copyload31 = load float, ptr %.sroa.14.0..sroa_idx30, align 1
  %.sroa.15.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %.sroa.15.0.copyload33 = load float, ptr %.sroa.15.0..sroa_idx32, align 1
  %.sroa.16.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.18.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.sroa.18.0.copyload39 = load float, ptr %.sroa.18.0..sroa_idx38, align 1
  %.sroa.20.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  %.sroa.20.0.copyload41 = load float, ptr %.sroa.20.0..sroa_idx40, align 1
  %.sroa.21.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ap = load <2 x float>, ptr %i.ao, align 1    ; 2 uses
  %i.aq = load <2 x float>, ptr %.sroa.11.0..sroa_idx26, align 1
  %i.ar = load <2 x float>, ptr %.sroa.16.0..sroa_idx34, align 1 ; 2 uses
  %i.as = load <2 x float>, ptr %.sroa.21.0..sroa_idx42, align 1
  %.sroa.23.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %.sroa.23.0.copyload47 = load float, ptr %.sroa.23.0..sroa_idx46, align 1
  %.sroa.24.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.ao, i64 60
  %.sroa.24.0.copyload49 = load float, ptr %.sroa.24.0..sroa_idx48, align 1
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.ap, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.au = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.av = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ay = shufflevector <2 x float> %i.ar, <2 x float> %i.ap, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %bb.l

_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %.lr.ph.split
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %.066 ; 12 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bd = load <2 x float>, ptr %.sroa.11.0..sroa_idx, align 4
  %i.be = load <2 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 2 uses
  %i.bf = load <2 x float>, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 60
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !60
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bi, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = shufflevector <2 x float> %i.be, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.bo = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !937 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bo, align 8, !tbaa !63, !noalias !937
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @.str.36, ptr %i.bp, align 8, !tbaa !332, !noalias !937
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.lr.ph.split, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload23, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.9.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.10.0 = phi float [ %.sroa.10.0.copyload25, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.10.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.14.0 = phi float [ %.sroa.14.0.copyload31, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.14.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.15.0 = phi float [ %.sroa.15.0.copyload33, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.15.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.18.0 = phi float [ %.sroa.18.0.copyload39, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.18.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.20.0 = phi float [ %.sroa.20.0.copyload41, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.20.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.23.0 = phi float [ %.sroa.23.0.copyload47, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.23.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.sroa.24.0 = phi float [ %.sroa.24.0.copyload49, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.24.0.copyload, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ 1.000000e+00, %.lr.ph.split ] ; 2 uses
  %i.bq = phi <4 x float> [ %i.ax, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %i.bk, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph.split ] ; 3 uses
  %i.br = phi <4 x float> [ %i.ba, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %i.bn, %_ZSt3getISt6vectorIN4core8CMatrix4IfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph.split ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.066
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !181 ; 3 uses
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !341
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !190 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.bt, %i.bz
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.bt, i64 noundef %i.bz) #34
          to label %.noexc16 unwind label %bb.p

.noexc16:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ca = fmul <4 x float> %i.br, zeroinitializer ; 2 uses
  %i.cb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> zeroinitializer, <4 x float> %i.ca) ; 2 uses
  %2 = insertelement <4 x float> poison, float %.sroa.18.0, i64 0
  %i.cc = insertelement <4 x float> %2, float %.sroa.9.0, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %.sroa.14.0, i64 2
  %3 = insertelement <4 x float> %i.cd, float %.sroa.23.0, i64 3 ; 2 uses
  %i.ce = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %3, <4 x float> zeroinitializer, <4 x float> %i.cb) ; 4 uses
  %4 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> zeroinitializer, <4 x float> %i.br) ; 4 uses
  %i.cf = fadd <4 x float> %i.bq, %i.ca           ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !343 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 320
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 384 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !939, !range !80, !noundef !81
  %i.cl = trunc nuw i8 %i.ck to i1
  %5 = extractelement <4 x float> %i.ce, i64 0
  %i.cm = fadd float %.sroa.20.0, %5              ; 2 uses
  %i.cn = extractelement <4 x float> %i.ce, i64 1
  %i.co = fadd float %.sroa.10.0, %i.cn           ; 2 uses
  %6 = extractelement <4 x float> %i.ce, i64 2
  %7 = fadd float %.sroa.15.0, %6                 ; 2 uses
  %i.cp = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.14.0, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %8 = shufflevector <4 x float> %i.cf, <4 x float> %4, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.15.0, i64 0
  %9 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cs = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.9.0, i64 0
  %10 = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %11 = shufflevector <4 x float> %i.cf, <4 x float> %4, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %12 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.10.0, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ct = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.18.0, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %14 = shufflevector <4 x float> %i.cf, <4 x float> %4, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cv = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.20.0, i64 0
  %15 = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %16 = fsub <4 x float> %i.cb, %3                ; 4 uses
  %17 = shufflevector <4 x float> %8, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %18 = insertelement <4 x float> %17, float %7, i64 3
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer, <4 x float> %18)
  %19 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> zeroinitializer, <4 x float> %i.cw) ; 2 uses
  %20 = fmul <4 x float> %19, zeroinitializer     ; 2 uses
  %21 = shufflevector <4 x float> %11, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cx = insertelement <4 x float> %21, float %i.co, i64 3
  %22 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> zeroinitializer, <4 x float> %i.cx)
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> zeroinitializer, <4 x float> %22) ; 2 uses
  %23 = shufflevector <4 x float> %14, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %24 = insertelement <4 x float> %23, float %i.cm, i64 3
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %24)
  %25 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> zeroinitializer, <4 x float> %i.cz) ; 2 uses
  %i.da = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %.sroa.23.0, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %26 = shufflevector <4 x float> %i.cf, <4 x float> %4, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.dc = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.24.0, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.de = fadd <4 x float> %20, %i.cy
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> zeroinitializer, <4 x float> %i.de)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 336
  %i.dg = insertelement <4 x float> %i.cy, float %i.co, i64 3 ; 2 uses
  %i.dh = insertelement <4 x float> %19, float %7, i64 3
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> zeroinitializer, <4 x float> %i.dh)
  %i.dj = insertelement <4 x float> %25, float %i.cm, i64 3 ; 3 uses
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> zeroinitializer, <4 x float> %i.di)
  %.sroa.1255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 352
  %i.dl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> zeroinitializer, <4 x float> %20) ; 2 uses
  %i.dm = fsub <4 x float> %i.dl, %i.dj
  %.sroa.1658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.dn = extractelement <4 x float> %i.ce, i64 3
  %i.do = fadd float %.sroa.24.0, %i.dn           ; 2 uses
  %i.dp = insertelement <4 x float> %27, float %i.do, i64 3
  %i.dq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer, <4 x float> %i.dp)
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dq) ; 2 uses
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> zeroinitializer, <4 x float> %i.dl)
  %i.dt = insertelement <4 x float> %i.dr, float %i.do, i64 3 ; 3 uses
  %i.du = fadd <4 x float> %i.dt, %i.ds
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> zeroinitializer, <4 x float> %i.dm)
  %i.dw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> zeroinitializer, <4 x float> %i.df)
  store <4 x float> %i.dw, ptr %i.ci, align 4
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> zeroinitializer, <4 x float> %i.dk)
  store <4 x float> %i.dx, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.dv, ptr %.sroa.1255.0..sroa_idx, align 4
  store <4 x float> %i.du, ptr %.sroa.1658.0..sroa_idx, align 4
  br i1 %i.cl, label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.cj, align 4, !tbaa !939
  br label %_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit

_ZNSt8optionalIN4core8CMatrix4IfEEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.o, %bb.n
  %i.dy = add nuw i64 %.066, 1                    ; 2 uses
  %i.dz = load ptr, ptr %i.s, align 8, !tbaa !292
  %i.ea = load ptr, ptr %i.r, align 8, !tbaa !206 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %.lr.ph.split, label %._crit_edge, !llvm.loop !936

bb.p:                                             ; preds = %bb.m, %bb.k
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.c, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.g
  br i1 %.not, label %.loopexit, label %bb.c

bb.r:                                             ; preds = %bb.p, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ae, %bb.h ], [ %i.eg, %bb.p ]
  %i.ei = load i8, ptr %i.i, align 8, !tbaa !425
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.s, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18

bb.s:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %1, align 8, !tbaa !428   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i17, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8CMatrix4IfEEED2Ev.exit18, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = load ptr, ptr %i.l, align 8, !tbaa !429
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #31
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
  %i.ae = add nsw i64 %.01012.i.i.i.i.i.prol, -1  ; 2 uses
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
end_hunk_0
