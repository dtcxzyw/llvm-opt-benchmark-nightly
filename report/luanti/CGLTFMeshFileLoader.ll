Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEm:bb.a
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aa
  %i.dm = ashr exact i64 %i.dk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 576460752303423487)
  %i.dq = select i1 %i.do, i64 576460752303423487, i64 %i.dp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dr = shl nuw nsw i64 %i.dq, 4
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #33
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk ; 3 uses
  store float %.0.i92, ptr %i.dt, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store <2 x float> %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx4.i, align 4, !tbaa !412
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store float %i.dd, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx4.i.sroa_idx, align 4, !tbaa !412
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.de
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc101, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ds, %.noexc101 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dh, %.noexc101 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !485, !alias.scope !988
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.du, %i.de
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !966

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc101
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.noexc101 ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.dx = load ptr, ptr %i.cf, align 8, !tbaa !986
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dz) #32
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.ds, ptr %i.cc, align 8, !tbaa !987
  store ptr %i.dw, ptr %i.ce, align 8, !tbaa !985
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.ea, ptr %i.cf, align 8, !tbaa !986
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit: ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.z
  %i.eb = add nuw i64 %.058323, 1                 ; 2 uses
  %exitcond429.not = icmp eq i64 %i.eb, %i.ap
  br i1 %exitcond429.not, label %._crit_edge326, label %bb.x, !llvm.loop !967

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.invoke560, %bb.ab
  %lpad.loopexit.split-lp651 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ec = load i8, ptr %i.x, align 8, !tbaa !476
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.ad, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103

bb.ad:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ee = load ptr, ptr %5, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i102 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i102, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load ptr, ptr %i.y, align 8, !tbaa !480
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103: ; preds = %bb.ae, %bb.ad, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %lpad.loopexit.split-lp651, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp651, %bb.ad ], [ %lpad.loopexit.split-lp651, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bk

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !474
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.628") align 8 %6, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.ek)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 168 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store i8 %.0.i, ptr %i.em, align 8, !tbaa !995
  %.not332 = icmp eq i64 %i.ap, 0
  br i1 %.not332, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.bf, i64 176 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bf, i64 184 ; 3 uses
  br label %bb.ak

._crit_edge322:                                   ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit, %bb.ag
  %i.ep = load i8, ptr %i.v, align 8, !tbaa !487
  %i.eq = icmp eq i8 %i.ep, 1
  br i1 %i.eq, label %bb.ah, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

bb.ah:                                            ; preds = %._crit_edge322
  %i.er = load ptr, ptr %6, align 8, !tbaa !490   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i104 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i104, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.w, align 8, !tbaa !491
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ev) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit: ; preds = %._crit_edge322, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bh

bb.aj:                                            ; preds = %bb.af
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

bb.ak:                                            ; preds = %.lr.ph321, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit
  %.056319 = phi i64 [ 0, %.lr.ph321 ], [ %i.gm, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit ] ; 5 uses
  %i.ex = load i8, ptr %i.s, align 8, !tbaa !481
  switch i8 %i.ex, label %.invoke562 [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107
    i8 1, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107: ; preds = %bb.ak
  %.sroa.0.0.copyload.i108 = load ptr, ptr %3, align 8, !tbaa !313
  %.sroa.4.0.copyload.i110 = load i64, ptr %.sroa.4.0..sroa_idx.i154, align 8, !tbaa !181
  %i.ey = mul i64 %.sroa.4.0.copyload.i110, %.056319
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i108, i64 %i.ey
  %.0.copyload.i.i111 = load float, ptr %i.ez, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106: ; preds = %bb.ak
  %i.fa = load ptr, ptr %3, align 8, !tbaa !484
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.056319
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !412
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113

_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107, %bb.ak
  %.0.i105 = phi float [ %.0.copyload.i.i111, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107 ], [ %i.fc, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106 ], [ 0.000000e+00, %bb.ak ] ; 2 uses
  %i.fd = load i8, ptr %i.v, align 8, !tbaa !487
  switch i8 %i.fd, label %.invoke562 [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %bb.al
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  %.sroa.0.0.copyload.i120 = load ptr, ptr %6, align 8, !tbaa !313
  %.sroa.4.0.copyload.i122 = load i64, ptr %.sroa.4.0..sroa_idx.i121, align 8, !tbaa !181
  %i.fe = mul i64 %.sroa.4.0.copyload.i122, %.056319
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i120, i64 %i.fe ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = load <2 x float>, ptr %i.fh, align 1
  br label %bb.al

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  %i.fj = load ptr, ptr %6, align 8, !tbaa !490
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %.056319 ; 2 uses
  %.sroa.0.0.copyload5.i = load <2 x float>, ptr %i.fk, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.5.0.copyload.i119 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i118, align 4, !tbaa !412
  br label %bb.al

.invoke562:                                       ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113, %bb.ak
  %i.fl = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fl, align 8, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr @.str.36, ptr %i.fm, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.cont563 unwind label %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont563:                                         ; preds = %.invoke562
  unreachable

bb.al:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.5.0.i114 = phi <2 x float> [ %i.fi, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.5.0.copyload.i119, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113 ] ; 2 uses
  %.sroa.0.0.i115 = phi <2 x float> [ %i.fg, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.0.0.copyload5.i, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ zeroinitializer, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113 ] ; 2 uses
  %i.fn = extractelement <2 x float> %.sroa.5.0.i114, i64 0
  %i.fo = fneg float %i.fn
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.5.0.i114, float %i.fo, i64 0 ; 2 uses
  %i.fp = load ptr, ptr %i.en, align 8, !tbaa !996 ; 7 uses
  %i.fq = load ptr, ptr %i.eo, align 8, !tbaa !997
  %.not.i.i.i132 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i.i132, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %.0.i105, ptr %i.fp, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %8 = shufflevector <2 x float> %.sroa.0.0.i115, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %.sroa.5.0..sroa_idx.i133, align 4, !tbaa !412
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store ptr %i.fr, ptr %i.en, align 8, !tbaa !996
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

bb.an:                                            ; preds = %bb.al
  %i.fs = load ptr, ptr %i.el, align 8, !tbaa !998 ; 5 uses
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.ao, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #35
          to label %.noexc144 unwind label %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.an
  %i.fx = sdiv exact i64 %i.fv, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i.i134 = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i.i134, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 461168601842738790)
  %i.gb = select i1 %i.fz, i64 461168601842738790, i64 %i.ga ; 3 uses
  %.not.i.i.i.i.i135 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i135)
  %i.gc = mul nuw nsw i64 %i.gb, 20
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #33
          to label %.noexc145 unwind label %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store float %.0.i105, ptr %i.ge, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx4.i136 = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %9 = shufflevector <2 x float> %.sroa.0.0.i115, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %.sroa.5.0..sroa_idx4.i136, align 4, !tbaa !412
  %.not10.i.i.i.i.i.i.i137 = icmp eq ptr %i.fs, %i.fp
  br i1 %.not10.i.i.i.i.i.i.i137, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i.i138:                          ; preds = %.noexc145, %.lr.ph.i.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i.i139 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i138 ], [ %i.gd, %.noexc145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i140 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i138 ], [ %i.fs, %.noexc145 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i.i139, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i.i140, i64 20, i1 false), !tbaa.struct !999, !alias.scope !1000
  %i.gf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i140, i64 20 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i139, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.gf, %i.fp
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138, !llvm.loop !971

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i138, %.noexc145
  %.0.lcssa.i.i.i.i.i.i.i142 = phi ptr [ %i.gd, %.noexc145 ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i138 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i142, i64 20
  %.not.i23.i.i.i.i143 = icmp eq ptr %i.fs, null
  br i1 %.not.i23.i.i.i.i143, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  %i.gi = load ptr, ptr %i.eo, align 8, !tbaa !997
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.gj, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.gk) #32
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.gd, ptr %i.el, align 8, !tbaa !998
  store ptr %i.gh, ptr %i.en, align 8, !tbaa !996
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gl, ptr %i.eo, align 8, !tbaa !997
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit: ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, %bb.am
  %i.gm = add nuw i64 %.056319, 1                 ; 2 uses
  %exitcond428.not = icmp eq i64 %i.gm, %i.ap
  br i1 %exitcond428.not, label %._crit_edge322, label %bb.ak, !llvm.loop !972

.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.invoke562, %bb.ao
  %lpad.loopexit.split-lp653 = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gn = load i8, ptr %i.v, align 8, !tbaa !487
  %i.go = icmp eq i8 %i.gn, 1
  br i1 %i.go, label %bb.aq, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

bb.aq:                                            ; preds = %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gp = load ptr, ptr %6, align 8, !tbaa !490   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i146 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i146, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load ptr, ptr %i.w, align 8, !tbaa !491
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gt) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147: ; preds = %bb.ar, %bb.aq, %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.aj ], [ %lpad.loopexit.split-lp653, %.loopexit.split-lp222.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp653, %bb.aq ], [ %lpad.loopexit.split-lp653, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bk

bb.as:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !474
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.605") align 8 %7, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.gv)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bf, i64 200 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store i8 %.0.i, ptr %i.gx, align 8, !tbaa !984
  %.not331 = icmp eq i64 %i.ap, 0
  br i1 %.not331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.at
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bf, i64 208 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bf, i64 216 ; 3 uses
  br label %bb.ax

._crit_edge:                                      ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196, %bb.at
  %i.ha = load i8, ptr %i.t, align 8, !tbaa !476
  %i.hb = icmp eq i8 %i.ha, 1
  br i1 %i.hb, label %bb.au, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149

bb.au:                                            ; preds = %._crit_edge
  %i.hc = load ptr, ptr %7, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i148, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hd = load ptr, ptr %i.u, align 8, !tbaa !480
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hc to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hg) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149: ; preds = %._crit_edge, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.bh

bb.aw:                                            ; preds = %bb.as
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198

bb.ax:                                            ; preds = %.lr.ph, %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196
  %.0318 = phi i64 [ 0, %.lr.ph ], [ %i.iu, %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196 ] ; 5 uses
  %i.hi = load i8, ptr %i.s, align 8, !tbaa !481
  switch i8 %i.hi, label %.invoke564 [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152
    i8 1, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152: ; preds = %bb.ax
  %.sroa.0.0.copyload.i153 = load ptr, ptr %3, align 8, !tbaa !313
  %.sroa.4.0.copyload.i155 = load i64, ptr %.sroa.4.0..sroa_idx.i154, align 8, !tbaa !181
  %i.hj = mul i64 %.sroa.4.0.copyload.i155, %.0318
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i153, i64 %i.hj
  %.0.copyload.i.i156 = load float, ptr %i.hk, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151: ; preds = %bb.ax
  %i.hl = load ptr, ptr %3, align 8, !tbaa !484
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.0318
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !412
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158

.invoke564:                                       ; preds = %bb.ax, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %i.ho = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ho, align 8, !tbaa !63
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr @.str.36, ptr %i.hp, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.cont565 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont565:                                         ; preds = %.invoke564
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152, %bb.ax
  %.0.i150 = phi float [ %.0.copyload.i.i156, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152 ], [ %i.hn, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151 ], [ 0.000000e+00, %bb.ax ] ; 2 uses
  %i.hq = load i8, ptr %i.t, align 8, !tbaa !476
  switch i8 %i.hq, label %.invoke564 [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167
    i8 1, label %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163
    i8 2, label %bb.ay
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %.sroa.03.0.copyload.i168 = load ptr, ptr %7, align 8, !tbaa !313
  %.sroa.4.0.copyload.i170 = load i64, ptr %.sroa.4.0..sroa_idx.i169, align 8, !tbaa !181
  %i.hr = mul i64 %.sroa.4.0.copyload.i170, %.0318
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i168, i64 %i.hr ; 2 uses
  %i.ht = load <2 x float>, ptr %i.hs, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.0.copyload.i4.i.i173 = load float, ptr %i.hu, align 1
  br label %bb.ay

_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %i.hv = load ptr, ptr %7, align 8, !tbaa !479
  %i.hw = getelementptr inbounds nuw [12 x i8], ptr %i.hv, i64 %.0318 ; 2 uses
  %.sroa.0.0.copyload8.i164 = load <2 x float>, ptr %i.hw, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.sroa.5.0.copyload.i166 = load float, ptr %.sroa.5.0..sroa_idx.i165, align 4, !tbaa !412
  br label %bb.ay

bb.ay:                                            ; preds = %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %.sroa.5.0.i159 = phi float [ %.0.copyload.i4.i.i173, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167 ], [ %.sroa.5.0.copyload.i166, %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163 ], [ 0.000000e+00, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158 ] ; 2 uses
  %.sroa.0.0.i160 = phi <2 x float> [ %i.ht, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167 ], [ %.sroa.0.0.copyload8.i164, %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163 ], [ zeroinitializer, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158 ] ; 2 uses
  %i.hx = load ptr, ptr %i.gy, align 8, !tbaa !985 ; 8 uses
  %i.hy = load ptr, ptr %i.gz, align 8, !tbaa !986
  %.not.i.i.i179 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i.i179, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store float %.0.i150, ptr %i.hx, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store <2 x float> %.sroa.0.0.i160, ptr %.sroa.5.0..sroa_idx.i180, align 4, !tbaa !412
  %.sroa.5.i178.sroa.5.0..sroa.5.0..sroa_idx.i180.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store float %.sroa.5.0.i159, ptr %.sroa.5.i178.sroa.5.0..sroa.5.0..sroa_idx.i180.sroa_idx, align 4, !tbaa !412
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hz, ptr %i.gy, align 8, !tbaa !985
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196

bb.ba:                                            ; preds = %bb.ay
  %i.ia = load ptr, ptr %i.gw, align 8, !tbaa !987 ; 5 uses
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 3 uses
  %i.ie = icmp eq i64 %i.id, 9223372036854775792
  br i1 %i.ie, label %bb.bb, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i181

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #35
          to label %.noexc194 unwind label %.loopexit.split-lp227.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc194:                                        ; preds = %bb.bb
end_hunk_0
begin_hunk_1_@_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE4makeERKN10tiniergltf4GlTFEm:bb.a
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.at

bb.at:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106, %bb.f
  %.pn52 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %.pn48.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106 ]
  resume { ptr, i32 } %.pn52

bb.au:                                            ; preds = %bb.y
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #35
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
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #31
  br label %bb.at

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.628") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 9 uses
  %i.x = icmp ugt i64 %i.w, 576460752303423487
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #35
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.j ; 24 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader221, label %vector.ph

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
  %next.gep216 = getelementptr i8, ptr %i.ae, i64 32
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %next.gep, align 4, !tbaa !412
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %next.gep216, align 4, !tbaa !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.preheader221

.lr.ph.i.i.i.i.i.preheader221:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader221, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader221 ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader221 ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.013.i.i.i.i.i, align 4, !tbaa !412
  %i.ag = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1028

_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.ab, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.w
  %.pre164 = load i64, ptr %i.v, align 8, !tbaa !344 ; 12 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 8 uses
  %.not150 = icmp eq i64 %.pre164, 0
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
  %xtraiter = and i64 %.pre164, 1
  %i.an = icmp eq i64 %.pre164, 1
  br i1 %i.an, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %.pre164, -2
  br label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter225 = and i64 %.pre164, 1
  %i.ao = icmp eq i64 %.pre164, 1
  br i1 %i.ao, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter228 = and i64 %.pre164, -2
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %xtraiter230 = and i64 %.pre164, 3              ; 3 uses
  %i.ap = icmp ult i64 %.pre164, 4
  br i1 %i.ap, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split.preheader.new

.lr.ph.split.split.preheader.new:                 ; preds = %.lr.ph.split.split.preheader
  %unroll_iter233 = and i64 %.pre164, -4
  br label %.lr.ph.split.split

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0141.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bd, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter229 = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter229.next.1, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.aq = mul i64 %.sroa.4.0.copyload.i, %.0141.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load <2 x float>, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load <2 x float>, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us
  %7 = shufflevector <2 x float> %i.as, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.av, align 4, !tbaa !412
  %i.aw = or disjoint i64 %.0141.us, 1            ; 2 uses
  %i.ax = mul i64 %.sroa.4.0.copyload.i, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load <2 x float>, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aw
  %8 = shufflevector <2 x float> %i.az, <2 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.bc, align 4, !tbaa !412
  %i.bd = add nuw i64 %.0141.us, 2                ; 2 uses
  %niter229.next.1 = add nuw i64 %niter229, 2     ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge.loopexit219.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1029

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0141.us143 = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bj, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.1, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0141.us143 ; 2 uses
  %.sroa.0.0.copyload5.i.us = load <2 x float>, ptr %i.be, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5.0.copyload.i.us = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us, align 4, !tbaa !412
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us143
  %9 = shufflevector <2 x float> %.sroa.0.0.copyload5.i.us, <2 x float> %.sroa.5.0.copyload.i.us, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.bf, align 4, !tbaa !412
  %i.bg = or disjoint i64 %.0141.us143, 1         ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload5.i.us.1 = load <2 x float>, ptr %i.bh, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.5.0.copyload.i.us.1 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us.1, align 4, !tbaa !412
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.bg
  %10 = shufflevector <2 x float> %.sroa.0.0.copyload5.i.us.1, <2 x float> %.sroa.5.0.copyload.i.us.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %i.bi, align 4, !tbaa !412
  %i.bj = add nuw i64 %.0141.us143, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit220.unr-lcssa, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1029

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.split
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.0141.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter230, 0
  call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.split.split.epil

.lr.ph.split.split.epil:                          ; preds = %.lr.ph.split.split.epil, %.lr.ph.split.split.epil.preheader
  %.0141.epil = phi i64 [ %i.bl, %.lr.ph.split.split.epil ], [ %.0141.epil.init, %.lr.ph.split.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.epil ], [ 0, %.lr.ph.split.split.epil.preheader ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.epil
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bk, align 4, !tbaa !412
  %i.bl = add nuw i64 %.0141.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter230
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !1030

._crit_edge.loopexit219.unr-lcssa:                ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit219.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0141.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bd, %._crit_edge.loopexit219.unr-lcssa ] ; 2 uses
  %lcmp.mod227 = trunc i64 %.pre164 to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.bm = mul i64 %.sroa.4.0.copyload.i, %.0141.us.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load <2 x float>, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us.epil.init
  %11 = shufflevector <2 x float> %i.bo, <2 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %i.br, align 4, !tbaa !412
  br label %._crit_edge

._crit_edge.loopexit220.unr-lcssa:                ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit220.unr-lcssa, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0141.us143.epil.init = phi i64 [ 0, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bj, %._crit_edge.loopexit220.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i64 %.pre164 to i1
  call void @llvm.assume(i1 %lcmp.mod224)
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.0141.us143.epil.init ; 2 uses
  %.sroa.0.0.copyload5.i.us.epil = load <2 x float>, ptr %i.bs, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.5.0.copyload.i.us.epil = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.us.epil, align 4, !tbaa !412
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141.us143.epil.init
  %12 = shufflevector <2 x float> %.sroa.0.0.copyload5.i.us.epil, <2 x float> %.sroa.5.0.copyload.i.us.epil, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %i.bt, align 4, !tbaa !412
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit220.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit219.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.epil, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit
  %.0.lcssa.i.i.i.i.i201 = phi ptr [ %.lcssa, %._crit_edge.loopexit.unr-lcssa ], [ %.lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.lcssa, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %.lcssa, %.lr.ph.split.split.epil ], [ %.lcssa, %._crit_edge.loopexit219.unr-lcssa ], [ %.lcssa, %._crit_edge.loopexit220.unr-lcssa ], [ %.lcssa, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  %.sroa.0121.0200 = phi ptr [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %.lr.ph.split.split.epil ], [ %i.z, %._crit_edge.loopexit219.unr-lcssa ], [ %i.z, %._crit_edge.loopexit220.unr-lcssa ], [ %i.z, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 8 uses
  %.sroa.15.0194 = phi i64 [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.aj, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ 0, %_ZNSt6vectorIN4core10quaternionESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aj, %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit ], [ %i.aj, %.lr.ph.split.split.epil ], [ %i.aj, %._crit_edge.loopexit219.unr-lcssa ], [ %i.aj, %._crit_edge.loopexit220.unr-lcssa ], [ %i.aj, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bu = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.bv, align 8, !tbaa !439
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.l unwind label %bb.t

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i, %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.0141 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.cc, %.lr.ph.split.split ] ; 5 uses
  %niter234 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter234.next.3, %.lr.ph.split.split ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.by, align 4, !tbaa !412
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141
  %.sroa.52.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.1, align 4, !tbaa !412
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141
  %.sroa.52.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.2, align 4, !tbaa !412
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141
  %.sroa.52.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.3, align 4, !tbaa !412
  %i.cc = add nuw i64 %.0141, 4                   ; 2 uses
  %niter234.next.3 = add nuw i64 %niter234, 4     ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !1029

bb.k:                                             ; preds = %.lr.ph
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @.str.36, ptr %i.ce, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc50 unwind label %.thread202

.noexc50:                                         ; preds = %bb.k
  unreachable

.thread202:                                       ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cl = load i64, ptr %i.k, align 8, !tbaa !181 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !227
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !226 ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 88                ; 2 uses
  %.not.i.i51 = icmp ult i64 %i.cl, %i.cs
  br i1 %.not.i.i51, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.ct = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cy = trunc nuw i8 %i.cx to i1
  %.val.i = load i64, ptr %i.cv, align 8
  %.0.i = select i1 %i.cy, i64 %.val.i, i64 %i.ct
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.cz = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.q unwind label %bb.af

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.da = phi i64 [ %.0.i, %bb.o ], [ %i.cz, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dc = load i64, ptr %i.cg, align 8, !tbaa !440, !noalias !1035 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !227, !noalias !1035
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !226, !noalias !1035 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 88                ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.dc, %i.dj
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, label %.invoke

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.q, %bb.m
  %i.dk = phi i64 [ %i.cl, %bb.m ], [ %i.dc, %bb.q ], [ %i.do, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.dl = phi i64 [ %i.cs, %bb.m ], [ %i.dj, %bb.q ], [ %i.dv, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.dk, i64 noundef %i.dl) #35
          to label %.cont unwind label %bb.af

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i: ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw [88 x i8], ptr %i.df, i64 %i.dc ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !446, !noalias !1035 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !225, !noalias !1035
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !224, !noalias !1035 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 80                ; 2 uses
  %.not.i.i10.i = icmp ult i64 %i.do, %i.dv
  br i1 %.not.i.i10.i, label %bb.r, label %.invoke

bb.r:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !264, !range !80, !noalias !1035, !noundef !81
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val.i.i = load i64, ptr %i.dz, align 8, !noalias !1035
  %.0.i.i = select i1 %i.dy, i64 %.val.i.i, i64 %i.da
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.dr, i64 %i.do
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !61, !noalias !1035
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !447, !noalias !1035
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !448, !noalias !1035
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !181
  %.not151 = icmp eq i64 %i.ej, 0
  br i1 %.not151, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.u

._crit_edge149:                                   ; preds = %bb.aa, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.em = ptrtoint ptr %.0.lcssa.i.i.i.i.i201 to i64 ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0121.0200 to i64    ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %.not.i.i.i.i55 = icmp eq ptr %.0.lcssa.i.i.i.i.i201, %.sroa.0121.0200
  br i1 %.not.i.i.i.i55, label %.thread, label %bb.s

.thread:                                          ; preds = %._crit_edge149
  %i.ep = load i64, ptr %i.v, align 8, !tbaa !344
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.eq, align 8, !tbaa !487
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !512
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

bb.s:                                             ; preds = %._crit_edge149
  %i.es = icmp ugt i64 %i.eo, 9223372036854775792
  br i1 %i.es, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc59 unwind label %bb.af

.noexc59:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.s
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #33
          to label %.lr.ph.i.i.i.i.i56.preheader unwind label %bb.af ; 4 uses

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i
  %i.eu = add i64 %i.em, -16
  %i.ev = sub i64 %i.eu, %i.en
  %i.ew = and i64 %i.ev, -16
  %i.ex = add i64 %i.ew, 16                       ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.et, ptr align 4 %.sroa.0121.0200, i64 %i.ex, i1 false)
  %i.ey = load i64, ptr %i.v, align 8, !tbaa !344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.ez = icmp ugt i64 %i.ex, 9223372036854775792
  br i1 %i.ez, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

bb.t:                                             ; preds = %._crit_edge
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ah

bb.u:                                             ; preds = %.lr.ph148, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.ek, align 8, !tbaa !415
  %i.fb = load i8, ptr %i.el, align 8, !tbaa !450
  %.not.i.i61 = icmp eq i8 %i.fb, -1
  br i1 %.not.i.i61, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fc = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fc, align 8, !tbaa !63
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr @.str.34, ptr %i.fd, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !273
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = load i64, ptr %i.v, align 8, !tbaa !344
  %.not38 = icmp ugt i64 %i.fg, %i.ff
  br i1 %.not38, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fh = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull @.str.24)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.au unwind label %bb.ab

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.v
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fh) #31
  br label %bb.ac

bb.aa:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fk = mul i64 %i.fj, %.0.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fk ; 2 uses
  %i.fm = load <2 x float>, ptr %i.fl, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load <2 x float>, ptr %i.fn, align 1
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0121.0200, i64 %i.ff
  %13 = shufflevector <2 x float> %i.fm, <2 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.fp, align 4, !tbaa !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.fq = add i64 %i.fj, 1                        ; 2 uses
  store i64 %i.fq, ptr %i.b, align 8, !tbaa !181
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !181
  %i.fs = icmp ult i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.u, label %._crit_edge149, !llvm.loop !1033

bb.ab:                                            ; preds = %bb.y
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp218, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fi, %bb.z ], [ %i.ft, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i56.preheader
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc86 unwind label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93

.noexc86:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #33
          to label %.noexc87 unwind label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93 ; 4 uses

.noexc87:                                         ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.fu, ptr %0, align 8, !tbaa !490
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ex
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !491
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr nonnull align 4 %i.et, i64 %i.ex, i1 false)
  %scevgep161 = getelementptr i8, ptr %i.fu, i64 %i.ex
  store ptr %scevgep161, ptr %i.fv, align 8, !tbaa !1036
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.fy, align 8, !tbaa !487
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ey, ptr %i.fz, align 8, !tbaa !512
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.eo) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit: ; preds = %.noexc87, %.thread
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !450
  %.not.i.i89 = icmp eq i8 %i.gb, -1
  br i1 %.not.i.i89, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ad, !prof !318

bb.ad:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !60
  %i.ge = icmp ne i8 %i.gd, 1
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  %or.cond.i.i.i = select i1 %i.ge, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !176
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gk) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit, %bb.ad, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i90 = icmp eq ptr %.sroa.0121.0200, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit91, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.gl = sub i64 %.sroa.15.0194, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0200, i64 noundef %i.gl) #32
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit91

bb.af:                                            ; preds = %.invoke, %bb.n, %bb.p, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93: ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.eo) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95: ; preds = %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93, %bb.af, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.af ], [ %i.gn, %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93 ], [ %.pn, %bb.ac ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !450
  %.not.i.i96 = icmp eq i8 %i.gp, -1
  br i1 %.not.i.i96, label %bb.ah, label %bb.ag, !prof !318

bb.ag:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !60
  %i.gs = icmp ne i8 %i.gr, 1
  %i.gt = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97 = icmp eq ptr %i.gt, null
  %or.cond.i.i.i98 = select i1 %i.gs, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97
  br i1 %or.cond.i.i.i98, label %bb.ah, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99: ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !176
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.t, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95, %bb.ag, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.t ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95 ], [ %.pn.pn.pn, %bb.ag ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i101 = icmp eq ptr %.sroa.0121.0200, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102, label %bb.ai

bb.ai:                                            ; preds = %.thread202, %bb.ah
  %.pn43209 = phi { ptr, i32 } [ %i.cf, %.thread202 ], [ %.pn.pn.pn.pn, %bb.ah ]
  %.sroa.15.0195208 = phi i64 [ %i.aj, %.thread202 ], [ %.sroa.15.0194, %bb.ah ]
  %.sroa.0121.0199207 = phi ptr [ %i.z, %.thread202 ], [ %.sroa.0121.0200, %bb.ah ] ; 2 uses
  %i.gz = ptrtoint ptr %.sroa.0121.0199207 to i64
  %i.ha = sub i64 %.sroa.15.0195208, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0199207, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102

bb.aj:                                            ; preds = %bb.g
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.hb, align 8, !tbaa !487
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !487 ; 2 uses
  switch i8 %i.hd, label %bb.an [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEEC2ERKS4_.exit
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEEC2ERKS4_.exit

bb.al:                                            ; preds = %bb.aj
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1036 ; 3 uses
  %i.hg = load ptr, ptr %3, align 8, !tbaa !490   ; 3 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hk = icmp ugt i64 %i.hj, 9223372036854775792
  br i1 %i.hk, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ao

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #33
          to label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.ao

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !1037
  %.pre162 = load ptr, ptr %i.he, align 8, !tbaa !1037
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.al
  %i.hm = phi ptr [ %i.hf, %bb.al ], [ %.pre162, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.hn = phi ptr [ %i.hg, %bb.al ], [ %.pre, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.ho = phi ptr [ null, %bb.al ], [ %i.hl, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.ho, ptr %0, align 8, !tbaa !490
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hj
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !491
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.hm
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ho, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hn, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !485
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.hm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1034

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZZN10tiniergltf4GlTFC1ERKN4Json5ValueERKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_EEOSt8optionalISB_EENKUlRKNS_9AnimationEE_clESN_:bb.a

bb.z:                                             ; preds = %_ZN10tiniergltfL10checkIndexINS_4NodeEEEvRKSt8optionalISt6vectorIT_SaIS4_EEERKS2_ImE.exit
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.71)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind noalias writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.982") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.982", align 8 ; 19 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::variant.652", align 8  ; 14 uses
  %5 = alloca %class.anon.1669, align 8           ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %class.anon.1670, align 8           ; 6 uses
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
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef %i.j) #35
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
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.31)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #31
  br label %bb.bi

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.982") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !344  ; 7 uses
  %i.x = icmp ugt i64 %i.w, 576460752303423487
  br i1 %i.x, label %bb.i, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33
          to label %.noexc49 unwind label %bb.l   ; 31 uses

.noexc49:                                         ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.w ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ac = add nsw i64 %i.w, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc49
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i ; 3 uses
  %i.af = add nuw nsw i64 %i.w, 1152921504606846974
  %i.ag = and i64 %i.af, 1152921504606846975
  %i.ah = add nuw nsw i64 %i.w, 3
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.ab, %bb.k ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !401
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1780

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.k
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ab, %bb.k ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aj = icmp samesign ult i64 %i.ag, 3
  br i1 %i.aj, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !401
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !401
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !401
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !401
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq ptr %i.an, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1781

_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc49
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ab, %.noexc49 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.pr = load i64, ptr %i.v, align 8, !tbaa !344  ; 12 uses
  %.not134 = icmp eq i64 %.pr, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !337 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8               ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %switch = icmp ult i8 %i.ap, 3
  br i1 %switch, label %.lr.ph.split, label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i8 %i.ap, label %.lr.ph.split.split.preheader [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
    i8 1, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  ]

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter200 = and i64 %.pr, 1
  %i.ar = icmp eq i64 %.pr, 1
  br i1 %i.ar, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %.pr, -2
  br label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter203 = and i64 %.pr, 1
  %i.as = icmp eq i64 %.pr, 1
  br i1 %i.as, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter206 = and i64 %.pr, -2
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %xtraiter208 = and i64 %.pr, 7                  ; 3 uses
  %i.at = icmp ult i64 %.pr, 8
  br i1 %i.at, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split.preheader.new

.lr.ph.split.split.preheader.new:                 ; preds = %.lr.ph.split.split.preheader
  %unroll_iter211 = and i64 %.pr, -8
  br label %.lr.ph.split.split

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0125.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bb, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter207 = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter207.next.1, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.au = mul i64 %.sroa.4.0.copyload.i, %.0125.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.us = load <2 x float>, ptr %i.av, align 1
  %.sroa.2.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i.i.us = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us, align 1
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us
  %7 = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.us, <2 x float> %.sroa.2.0.copyload.i.i.us, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.aw, align 4
  %i.ax = or disjoint i64 %.0125.us, 1            ; 2 uses
  %i.ay = mul i64 %.sroa.4.0.copyload.i, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i.i.us.1 = load <2 x float>, ptr %i.az, align 1
  %.sroa.2.0..sroa_idx.i.i.us.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.2.0.copyload.i.i.us.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us.1, align 1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ax
  %8 = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.us.1, <2 x float> %.sroa.2.0.copyload.i.i.us.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.ba, align 4
  %i.bb = add nuw i64 %.0125.us, 2                ; 2 uses
  %niter207.next.1 = add nuw i64 %niter207, 2     ; 2 uses
  %niter207.ncmp.1.not = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1.not, label %._crit_edge.loopexit198.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1782

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0125.us127 = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bh, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.1, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0125.us127 ; 2 uses
  %.sroa.02.0.copyload.i.us = load <2 x float>, ptr %i.bc, align 4
  %.sroa.43.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.43.0.copyload.i.us = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us127
  %9 = shufflevector <2 x float> %.sroa.02.0.copyload.i.us, <2 x float> %.sroa.43.0.copyload.i.us, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.bd, align 4
  %i.be = or disjoint i64 %.0125.us127, 1         ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %.sroa.02.0.copyload.i.us.1 = load <2 x float>, ptr %i.bf, align 4
  %.sroa.43.0..sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.43.0.copyload.i.us.1 = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us.1, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.be
  %10 = shufflevector <2 x float> %.sroa.02.0.copyload.i.us.1, <2 x float> %.sroa.43.0.copyload.i.us.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %i.bg, align 4
  %i.bh = add nuw i64 %.0125.us127, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit199.unr-lcssa, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1782

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.split
  %lcmp.mod209.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod209.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.0125.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter208, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph.split.split.epil

.lr.ph.split.split.epil:                          ; preds = %.lr.ph.split.split.epil, %.lr.ph.split.split.epil.preheader
  %.0125.epil = phi i64 [ %i.bj, %.lr.ph.split.split.epil ], [ %.0125.epil.init, %.lr.ph.split.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.epil ], [ 0, %.lr.ph.split.split.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.epil
  %i.bj = add nuw i64 %.0125.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter208
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !1783

._crit_edge.loopexit198.unr-lcssa:                ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit198.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0125.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bb, %._crit_edge.loopexit198.unr-lcssa ] ; 2 uses
  %lcmp.mod205 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod205)
  %i.bk = mul i64 %.sroa.4.0.copyload.i, %.0125.us.epil.init
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk ; 2 uses
  %.sroa.0.0.copyload.i.i.us.epil = load <2 x float>, ptr %i.bl, align 1
  %.sroa.2.0..sroa_idx.i.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.2.0.copyload.i.i.us.epil = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us.epil, align 1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us.epil.init
  %11 = shufflevector <2 x float> %.sroa.0.0.copyload.i.i.us.epil, <2 x float> %.sroa.2.0.copyload.i.i.us.epil, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %i.bm, align 4
  br label %._crit_edge

._crit_edge.loopexit199.unr-lcssa:                ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit199.unr-lcssa, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0125.us127.epil.init = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bh, %._crit_edge.loopexit199.unr-lcssa ] ; 2 uses
  %lcmp.mod202 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod202)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0125.us127.epil.init ; 2 uses
  %.sroa.02.0.copyload.i.us.epil = load <2 x float>, ptr %i.bn, align 4
  %.sroa.43.0..sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.43.0.copyload.i.us.epil = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us.epil, align 4, !tbaa !60
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us127.epil.init
  %12 = shufflevector <2 x float> %.sroa.02.0.copyload.i.us.epil, <2 x float> %.sroa.43.0.copyload.i.us.epil, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %i.bo, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit199.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit198.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.epil, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit
  %.0.i.i.i.i.i184 = phi ptr [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %.0.i.i.i.i.i.ph, %.lr.ph.split.split.epil ], [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit198.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit199.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  %.sroa.0113.0181 = phi ptr [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %.lr.ph.split.split.epil ], [ %i.z, %._crit_edge.loopexit198.unr-lcssa ], [ %i.z, %._crit_edge.loopexit199.unr-lcssa ], [ %i.z, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 9 uses
  %.sroa.15.0177 = phi ptr [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aa, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.aa, %.lr.ph.split.split.epil ], [ %i.aa, %._crit_edge.loopexit198.unr-lcssa ], [ %i.aa, %._crit_edge.loopexit199.unr-lcssa ], [ %i.aa, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !437
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.k, ptr %5, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !439
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.br, align 8, !tbaa !415
  invoke void @_ZZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::variant.652") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.y

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.0125 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.ci, %.lr.ph.split.split ] ; 9 uses
  %niter212 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter212.next.7, %.lr.ph.split.split ]
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.ci = add nuw i64 %.0125, 8                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  %niter212.next.7 = add nuw i64 %niter212, 8     ; 2 uses
  %niter212.ncmp.7.not = icmp eq i64 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !1782

bb.m:                                             ; preds = %.lr.ph
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.36, ptr %i.ck, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc50 unwind label %.thread185

.noexc50:                                         ; preds = %bb.m
  unreachable

.thread185:                                       ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cr = load i64, ptr %i.k, align 8, !tbaa !181 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !227
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !226 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 88                ; 2 uses
  %.not.i.i51 = icmp ult i64 %i.cr, %i.cy
  br i1 %.not.i.i51, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %i.cz = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.q unwind label %bb.ap

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw [88 x i8], ptr %i.cu, i64 %i.cr ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !264, !range !80, !noundef !81
  %i.de = trunc nuw i8 %i.dd to i1
  %.val.i = load i64, ptr %i.db, align 8
  %.0.i = select i1 %i.de, i64 %.val.i, i64 %i.cz
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.df = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.s unwind label %bb.ap

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = phi i64 [ %.0.i, %bb.q ], [ %i.df, %bb.r ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.di = load i64, ptr %i.cm, align 8, !tbaa !440, !noalias !1787 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !227, !noalias !1787
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !226, !noalias !1787 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 88                ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.di, %i.dp
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, label %.invoke

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.s, %bb.o
  %i.dq = phi i64 [ %i.cr, %bb.o ], [ %i.di, %bb.s ], [ %i.du, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.dr = phi i64 [ %i.cy, %bb.o ], [ %i.dp, %bb.s ], [ %i.eb, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.dq, i64 noundef %i.dr) #35
          to label %.cont unwind label %bb.ap

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i: ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw [88 x i8], ptr %i.dl, i64 %i.di ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !446, !noalias !1787 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !225, !noalias !1787
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !224, !noalias !1787 ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 80                ; 2 uses
  %.not.i.i10.i = icmp ult i64 %i.du, %i.eb
  br i1 %.not.i.i10.i, label %bb.t, label %.invoke

bb.t:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !264, !range !80, !noalias !1787, !noundef !81
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.val.i.i = load i64, ptr %i.ef, align 8, !noalias !1787
  %.0.i.i = select i1 %i.ee, i64 %.val.i.i, i64 %i.dg
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %i.du
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61, !noalias !1787
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !447, !noalias !1787
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.en = load i64, ptr %i.em, align 8, !tbaa !448, !noalias !1787
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !181
  %.not135 = icmp eq i64 %i.ep, 0
  br i1 %.not135, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.z

._crit_edge133:                                   ; preds = %bb.af, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.es = ptrtoint ptr %.0.i.i.i.i.i184 to i64
  %i.et = ptrtoint ptr %.sroa.0113.0181 to i64    ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 7 uses
  %.not.i.i.i.i55 = icmp eq ptr %.0.i.i.i.i.i184, %.sroa.0113.0181
  br i1 %.not.i.i.i.i55, label %.thread, label %bb.u

.thread:                                          ; preds = %._crit_edge133
  %i.ev = getelementptr inbounds i8, ptr null, i64 %i.eu
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.u:                                             ; preds = %._crit_edge133
  %i.ew = icmp ugt i64 %i.eu, 9223372036854775792
  br i1 %i.ew, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc56 unwind label %bb.ap

.noexc56:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #33
          to label %.noexc57 unwind label %bb.ap  ; 6 uses

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu ; 3 uses
  %i.ez = icmp samesign ugt i64 %i.eu, 16
  br i1 %i.ez, label %bb.v, label %bb.w, !prof !495

bb.v:                                             ; preds = %.noexc57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ex, ptr align 4 %.sroa.0113.0181, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.w:                                             ; preds = %.noexc57
  %i.fa = icmp eq i64 %i.eu, 16
  br i1 %i.fa, label %bb.x, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ex, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0113.0181, i64 16, i1 false), !tbaa.struct !401
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.at

bb.z:                                             ; preds = %.lr.ph132, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.eq, align 8, !tbaa !415
  %i.fc = load i8, ptr %i.er, align 8, !tbaa !450
  %.not.i.i58 = icmp eq i8 %i.fc, -1
  br i1 %.not.i.i58, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fd, align 8, !tbaa !63
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr @.str.34, ptr %i.fe, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !273
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = load i64, ptr %i.v, align 8, !tbaa !344
  %.not38 = icmp ugt i64 %i.fh, %i.fg
  br i1 %.not38, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fi = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull @.str.24)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.bj unwind label %bb.ag

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fi) #31
  br label %bb.ah

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fl = mul i64 %i.fk, %.0.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fl ; 2 uses
  %.sroa.0.0.copyload.i.i73 = load <2 x float>, ptr %i.fm, align 1
  %.sroa.2.0..sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.2.0.copyload.i.i75 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i74, align 1
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0113.0181, i64 %i.fg
  %13 = shufflevector <2 x float> %.sroa.0.0.copyload.i.i73, <2 x float> %.sroa.2.0.copyload.i.i75, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %i.fn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.fo = add i64 %i.fk, 1                        ; 2 uses
  store i64 %i.fo, ptr %i.b, align 8, !tbaa !181
  %i.fp = load i64, ptr %i.a, align 8, !tbaa !181
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.z, label %._crit_edge133, !llvm.loop !1786

bb.ag:                                            ; preds = %bb.ad
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp197, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fj, %bb.ae ], [ %i.fr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.thread
  %i.fs = phi ptr [ %i.ey, %bb.v ], [ %i.ey, %bb.w ], [ %i.ey, %bb.x ], [ %i.ev, %.thread ] ; 2 uses
  %i.ft = phi ptr [ %i.ex, %bb.v ], [ %i.ex, %bb.w ], [ %i.ex, %bb.x ], [ null, %.thread ] ; 8 uses
  %i.fu = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122, label %bb.ai

.thread122:                                       ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = getelementptr inbounds i8, ptr null, i64 %i.fx ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !400
  br label %bb.al

bb.ai:                                            ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit
  %i.gb = icmp ugt i64 %i.fx, 9223372036854775792
  br i1 %i.gb, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc78 unwind label %bb.aq

.noexc78:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #33
          to label %.noexc79 unwind label %bb.aq  ; 4 uses

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gc, ptr %0, align 8, !tbaa !340
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fx ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !400
  %i.gg = icmp samesign ugt i64 %i.fx, 16
  br i1 %i.gg, label %bb.aj, label %bb.ak, !prof !495

bb.aj:                                            ; preds = %.noexc79
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gc, ptr align 4 %i.ft, i64 %i.fx, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %.noexc79
  %i.gh = icmp eq i64 %i.fx, 16
  br i1 %i.gh, label %.thread123, label %bb.al

.thread123:                                       ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gc, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !401
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !398
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gi, align 8, !tbaa !337
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fu, ptr %i.gj, align 8, !tbaa !409
  br label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.thread122
  %i.gk = phi ptr [ %i.ge, %bb.aj ], [ %i.ge, %bb.ak ], [ %i.fz, %.thread122 ]
  %i.gl = phi ptr [ %i.gd, %bb.aj ], [ %i.gd, %bb.ak ], [ %i.fy, %.thread122 ]
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !398
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gm, align 8, !tbaa !337
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fu, ptr %i.gn, align 8, !tbaa !409
  %.not.i.i.i80 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i80, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %.thread123, %bb.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fx) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit: ; preds = %bb.am, %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !450
  %.not.i.i81 = icmp eq i8 %i.gp, -1
  br i1 %.not.i.i81, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.an, !prof !318

bb.an:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !60
  %i.gs = icmp ne i8 %i.gr, 1
  %i.gt = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  %or.cond.i.i.i = select i1 %i.gs, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !176
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit, %bb.an, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i82 = icmp eq ptr %.sroa.0113.0181, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit83, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.gz = ptrtoint ptr %.sroa.15.0177 to i64
  %i.ha = sub i64 %i.gz, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0181, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit83

bb.ap:                                            ; preds = %.invoke, %bb.p, %bb.r, %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

bb.aq:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i84, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fx) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ah
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ar ], [ %i.hc, %bb.aq ], [ %.pn, %bb.ah ], [ %i.hb, %bb.ap ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !450
  %.not.i.i88 = icmp eq i8 %i.he, -1
  br i1 %.not.i.i88, label %bb.at, label %bb.as, !prof !318

bb.as:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !60
  %i.hh = icmp ne i8 %i.hg, 1
  %i.hi = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.hi, null
  %or.cond.i.i.i90 = select i1 %i.hh, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i89
  br i1 %or.cond.i.i.i90, label %bb.at, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91: ; preds = %bb.as
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !176
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #32
  br label %bb.at

bb.at:                                            ; preds = %bb.y, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87, %bb.as, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.y ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87 ], [ %.pn.pn.pn, %bb.as ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i93 = icmp eq ptr %.sroa.0113.0181, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94, label %bb.au

bb.au:                                            ; preds = %.thread185, %bb.at
  %.pn43192 = phi { ptr, i32 } [ %i.cl, %.thread185 ], [ %.pn.pn.pn.pn, %bb.at ]
  %.sroa.15.0176191 = phi ptr [ %i.aa, %.thread185 ], [ %.sroa.15.0177, %bb.at ]
  %.sroa.0113.0180190 = phi ptr [ %i.z, %.thread185 ], [ %.sroa.0113.0181, %bb.at ] ; 2 uses
  %i.ho = ptrtoint ptr %.sroa.15.0176191 to i64
  %i.hp = ptrtoint ptr %.sroa.0113.0180190 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0180190, i64 noundef %i.hq) #32
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94

bb.av:                                            ; preds = %bb.g
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.hr, align 8, !tbaa !337
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !337 ; 2 uses
  switch i8 %i.ht, label %bb.bc [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEEC2ERKS4_.exit
  ]

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEEC2ERKS4_.exit
end_hunk_2
