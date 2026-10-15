Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5scene19CGLTFMeshFileLoader13MeshExtractor13loadAnimationEm:bb.a
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dj, %.noexc101 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !485, !alias.scope !988
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, %i.dg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !966

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc101
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.du, %.noexc101 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !986
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.eb) #32
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.du, ptr %i.cc, align 8, !tbaa !987
  store ptr %i.dy, ptr %i.ce, align 8, !tbaa !985
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.ec, ptr %i.cf, align 8, !tbaa !986
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit: ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.ad
  %i.ed = add nuw i64 %.058323, 1                 ; 2 uses
  %exitcond423.not = icmp eq i64 %i.ed, %i.ap
  br i1 %exitcond423.not, label %._crit_edge326, label %bb.z, !llvm.loop !967

bb.ah:                                            ; preds = %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ai, %bb.ah
  %.pn77.pn = phi { ptr, i32 } [ %i.ee, %bb.ah ], [ %i.ef, %bb.ai ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %i.eg = load i8, ptr %i.x, align 8, !tbaa !476
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.ak, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %5, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i102 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i102, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %i.y, align 8, !tbaa !480
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit103: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.y
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %.pn77.pn, %bb.aj ], [ %.pn77.pn, %bb.ak ], [ %.pn77.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cb

bb.am:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.en = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !474
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.628") align 8 %6, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.eo)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bf, i64 168 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store i8 %.0.i, ptr %i.eq, align 8, !tbaa !995
  %.not332 = icmp eq i64 %i.ap, 0
  br i1 %.not332, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %i.bf, i64 176 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bf, i64 184 ; 3 uses
  br label %bb.ar

._crit_edge322:                                   ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit, %bb.an
  %i.et = load i8, ptr %i.v, align 8, !tbaa !487
  %i.eu = icmp eq i8 %i.et, 1
  br i1 %i.eu, label %bb.ao, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

bb.ao:                                            ; preds = %._crit_edge322
  %i.ev = load ptr, ptr %6, align 8, !tbaa !490   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i104 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i104, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load ptr, ptr %i.w, align 8, !tbaa !491
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit: ; preds = %._crit_edge322, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.by

bb.aq:                                            ; preds = %bb.am
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

bb.ar:                                            ; preds = %.lr.ph321, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit
  %.056319 = phi i64 [ 0, %.lr.ph321 ], [ %i.gs, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit ] ; 5 uses
  %i.fb = load i8, ptr %i.s, align 8, !tbaa !481
  switch i8 %i.fb, label %bb.as [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107
    i8 1, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107: ; preds = %bb.ar
  %.sroa.0.0.copyload.i108 = load ptr, ptr %3, align 8, !tbaa !313
  %.sroa.4.0.copyload.i110 = load i64, ptr %.sroa.4.0..sroa_idx.i154, align 8, !tbaa !181
  %i.fc = mul i64 %.sroa.4.0.copyload.i110, %.056319
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i108, i64 %i.fc
  %.0.copyload.i.i111 = load float, ptr %i.fd, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106: ; preds = %bb.ar
  %i.fe = load ptr, ptr %3, align 8, !tbaa !484
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.056319
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !412
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113

bb.as:                                            ; preds = %bb.ar
  %i.fh = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fh, align 8, !tbaa !63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr @.str.36, ptr %i.fi, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc112 unwind label %bb.az

.noexc112:                                        ; preds = %bb.as
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107, %bb.ar
  %.0.i105 = phi float [ %.0.copyload.i.i111, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i107 ], [ %i.fg, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i106 ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.fj = load i8, ptr %i.v, align 8, !tbaa !487
  switch i8 %i.fj, label %bb.at [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
    i8 2, label %bb.au
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  %.sroa.0.0.copyload.i120 = load ptr, ptr %6, align 8, !tbaa !313
  %.sroa.4.0.copyload.i122 = load i64, ptr %.sroa.4.0..sroa_idx.i121, align 8, !tbaa !181
  %i.fk = mul i64 %.sroa.4.0.copyload.i122, %.056319
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i120, i64 %i.fk ; 2 uses
  %i.fm = load <2 x float>, ptr %i.fl, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load <2 x float>, ptr %i.fn, align 1
  br label %bb.au

_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  %i.fp = load ptr, ptr %6, align 8, !tbaa !490
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %.056319 ; 2 uses
  %.sroa.0.0.copyload5.i = load <2 x float>, ptr %i.fq, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.5.0.copyload.i119 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i118, align 4, !tbaa !412
  br label %bb.au

bb.at:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fr, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr @.str.36, ptr %i.fs, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc127 unwind label %bb.ba

.noexc127:                                        ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i
  %.sroa.5.0.i114 = phi <2 x float> [ %i.fo, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.5.0.copyload.i119, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113 ] ; 2 uses
  %.sroa.0.0.i115 = phi <2 x float> [ %i.fm, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ %.sroa.0.0.copyload5.i, %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i ], [ zeroinitializer, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit113 ] ; 2 uses
  %i.ft = extractelement <2 x float> %.sroa.5.0.i114, i64 0
  %i.fu = fneg float %i.ft
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.5.0.i114, float %i.fu, i64 0 ; 2 uses
  %i.fv = load ptr, ptr %i.er, align 8, !tbaa !996 ; 8 uses
  %i.fw = load ptr, ptr %i.es, align 8, !tbaa !997
  %.not.i.i.i132 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i.i.i132, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store float %.0.i105, ptr %i.fv, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store <2 x float> %.sroa.0.0.i115, ptr %.sroa.5.0..sroa_idx.i133, align 4, !tbaa !412
  %.sroa.5.i131.sroa.5.0..sroa.5.0..sroa_idx.i133.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.i131.sroa.5.0..sroa.5.0..sroa_idx.i133.sroa_idx, align 4, !tbaa !412
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  store ptr %i.fx, ptr %i.er, align 8, !tbaa !996
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

bb.aw:                                            ; preds = %bb.au
  %i.fy = load ptr, ptr %i.ep, align 8, !tbaa !998 ; 5 uses
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775800
  br i1 %i.gc, label %bb.ax, label %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #35
          to label %.noexc144 unwind label %.loopexit.split-lp222

.noexc144:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.aw
  %i.gd = sdiv exact i64 %i.gb, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i.i134 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i.i.i134, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.ge, i64 461168601842738790)
  %i.gh = select i1 %i.gf, i64 461168601842738790, i64 %i.gg ; 3 uses
  %.not.i.i.i.i.i135 = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i135)
  %i.gi = mul nuw nsw i64 %i.gh, 20
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #33
          to label %.noexc145 unwind label %.loopexit221 ; 5 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gb ; 3 uses
  store float %.0.i105, ptr %i.gk, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx4.i136 = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store <2 x float> %.sroa.0.0.i115, ptr %.sroa.5.0..sroa_idx4.i136, align 4, !tbaa !412
  %.sroa.5.i131.sroa.5.0..sroa.5.0..sroa_idx4.i136.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.i131.sroa.5.0..sroa.5.0..sroa_idx4.i136.sroa_idx, align 4, !tbaa !412
  %.not10.i.i.i.i.i.i.i137 = icmp eq ptr %i.fy, %i.fv
  br i1 %.not10.i.i.i.i.i.i.i137, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i.i138:                          ; preds = %.noexc145, %.lr.ph.i.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i.i139 = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i.i138 ], [ %i.gj, %.noexc145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i140 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i138 ], [ %i.fy, %.noexc145 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i.i139, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i.i140, i64 20, i1 false), !tbaa.struct !999, !alias.scope !1000
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i140, i64 20 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i139, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.gl, %i.fv
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138, !llvm.loop !971

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i138, %.noexc145
  %.0.lcssa.i.i.i.i.i.i.i142 = phi ptr [ %i.gj, %.noexc145 ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i138 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i142, i64 20
  %.not.i23.i.i.i.i143 = icmp eq ptr %i.fy, null
  br i1 %.not.i23.i.i.i.i143, label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  %i.go = load ptr, ptr %i.es, align 8, !tbaa !997
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gq) #32
  br label %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.ay, %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.gj, ptr %i.ep, align 8, !tbaa !998
  store ptr %i.gn, ptr %i.er, align 8, !tbaa !996
  %i.gr = getelementptr inbounds nuw [20 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.gr, ptr %i.es, align 8, !tbaa !997
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEE8pushBackEfRKS3_.exit: ; preds = %_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, %bb.av
  %i.gs = add nuw i64 %.056319, 1                 ; 2 uses
  %exitcond422.not = icmp eq i64 %i.gs, %i.ap
  br i1 %exitcond422.not, label %._crit_edge322, label %bb.ar, !llvm.loop !972

bb.az:                                            ; preds = %bb.as
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit221:                                     ; preds = %_ZNKSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp222:                            ; preds = %bb.ax
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit221, %.loopexit.split-lp222, %bb.ba, %bb.az
  %.pn73.pn = phi { ptr, i32 } [ %i.gt, %bb.az ], [ %i.gu, %bb.ba ], [ %lpad.loopexit223, %.loopexit221 ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp222 ] ; 3 uses
  %i.gv = load i8, ptr %i.v, align 8, !tbaa !487
  %i.gw = icmp eq i8 %i.gv, 1
  br i1 %i.gw, label %bb.bc, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

bb.bc:                                            ; preds = %bb.bb
  %i.gx = load ptr, ptr %6, align 8, !tbaa !490   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i146 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i146, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gy = load ptr, ptr %i.w, align 8, !tbaa !491
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit147: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.aq
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.aq ], [ %.pn73.pn, %bb.bb ], [ %.pn73.pn, %bb.bc ], [ %.pn73.pn, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.cb

bb.be:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !474
  invoke void @_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE4makeERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.605") align 8 %7, ptr noundef nonnull align 8 dereferenceable(648) %0, i64 noundef %i.hd)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.he = getelementptr inbounds nuw i8, ptr %i.bf, i64 200 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store i8 %.0.i, ptr %i.hf, align 8, !tbaa !984
  %.not331 = icmp eq i64 %i.ap, 0
  br i1 %.not331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bf
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bf, i64 208 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bf, i64 216 ; 3 uses
  br label %bb.bj

._crit_edge:                                      ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196, %bb.bf
  %i.hi = load i8, ptr %i.t, align 8, !tbaa !476
  %i.hj = icmp eq i8 %i.hi, 1
  br i1 %i.hj, label %bb.bg, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149

bb.bg:                                            ; preds = %._crit_edge
  %i.hk = load ptr, ptr %7, align 8, !tbaa !479   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i148, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = load ptr, ptr %i.u, align 8, !tbaa !480
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ho) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit149: ; preds = %._crit_edge, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.by

bb.bi:                                            ; preds = %bb.be
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit198

bb.bj:                                            ; preds = %.lr.ph, %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196
  %.0318 = phi i64 [ 0, %.lr.ph ], [ %i.je, %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE8pushBackEfRKS4_.exit196 ] ; 5 uses
  %i.hq = load i8, ptr %i.s, align 8, !tbaa !481
  switch i8 %i.hq, label %bb.bk [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152
    i8 1, label %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151
    i8 2, label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152: ; preds = %bb.bj
  %.sroa.0.0.copyload.i153 = load ptr, ptr %3, align 8, !tbaa !313
  %.sroa.4.0.copyload.i155 = load i64, ptr %.sroa.4.0..sroa_idx.i154, align 8, !tbaa !181
  %i.hr = mul i64 %.sroa.4.0.copyload.i155, %.0318
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i153, i64 %i.hr
  %.0.copyload.i.i156 = load float, ptr %i.hs, align 1
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158

_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151: ; preds = %bb.bj
  %i.ht = load ptr, ptr %3, align 8, !tbaa !484
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.0318
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !412
  br label %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158

bb.bk:                                            ; preds = %bb.bj
  %i.hw = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.hw, align 8, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr @.str.36, ptr %i.hx, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.hw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc157 unwind label %bb.br

.noexc157:                                        ; preds = %bb.bk
  unreachable

_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158: ; preds = %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152, %bb.bj
  %.0.i150 = phi float [ %.0.copyload.i.i156, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceEJS4_St6vectorIfSaIfEESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i152 ], [ %i.hv, %_ZSt3getISt6vectorIfSaIfEEJN5scene19CGLTFMeshFileLoader8AccessorIfE12BufferSourceES2_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i151 ], [ 0.000000e+00, %bb.bj ] ; 2 uses
  %i.hy = load i8, ptr %i.t, align 8, !tbaa !476
  switch i8 %i.hy, label %bb.bl [
    i8 0, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167
    i8 1, label %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163
    i8 2, label %bb.bm
  ]

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %.sroa.03.0.copyload.i168 = load ptr, ptr %7, align 8, !tbaa !313
  %.sroa.4.0.copyload.i170 = load i64, ptr %.sroa.4.0..sroa_idx.i169, align 8, !tbaa !181
  %i.hz = mul i64 %.sroa.4.0.copyload.i170, %.0318
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i168, i64 %i.hz ; 2 uses
  %i.ib = load <2 x float>, ptr %i.ia, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.0.copyload.i4.i.i173 = load float, ptr %i.ic, align 1
  br label %bb.bm

_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163: ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %i.id = load ptr, ptr %7, align 8, !tbaa !479
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %.0318 ; 2 uses
  %.sroa.0.0.copyload8.i164 = load <2 x float>, ptr %i.ie, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.5.0.copyload.i166 = load float, ptr %.sroa.5.0..sroa_idx.i165, align 4, !tbaa !412
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
  %i.if = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.if, align 8, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr @.str.36, ptr %i.ig, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.if, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc176 unwind label %.loopexit.split-lp227

.noexc176:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %_ZSt3getISt6vectorIN4core8vector3dIfEESaIS3_EEJN5scene19CGLTFMeshFileLoader8AccessorIS3_E12BufferSourceES5_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i163, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE12BufferSourceEJS7_St6vectorIS5_SaIS5_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i167, %_ZNK5scene19CGLTFMeshFileLoader8AccessorIfE3getEm.exit158
end_hunk_0
begin_hunk_1_@_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEE4makeERKN10tiniergltf4GlTFEm:bb.a
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core8vector3dIfEEED2Ev.exit106: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EED2Ev.exit102, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
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
  br label %bb.ax

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
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
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1027

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
  %i.ag = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core10quaternionESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1028

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
  br i1 %niter227.ncmp.1, label %._crit_edge.loopexit217.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1029

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
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit218.unr-lcssa, label %_ZSt3getISt6vectorIN4core10quaternionESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1029

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.split
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.0141.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
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
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !1030

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
          to label %bb.l unwind label %bb.u

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN4core10quaternionESaIS1_EEC2EmRKS2_.exit.i, %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.0141 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.cc, %.lr.ph.split.split ] ; 5 uses
  %niter232 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter232.next.3, %.lr.ph.split.split ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.by, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx, align 4, !tbaa !412
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.1, align 4, !tbaa !412
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store <2 x float> zeroinitializer, ptr %8, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.2, align 4, !tbaa !412
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0141 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store <2 x float> zeroinitializer, ptr %9, align 4, !tbaa !412
  %.sroa.52.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.52.0..sroa_idx.3, align 4, !tbaa !412
  %i.cc = add nuw i64 %.0141, 4                   ; 2 uses
  %niter232.next.3 = add nuw i64 %niter232, 4     ; 2 uses
  %niter232.ncmp.3 = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !1029

bb.k:                                             ; preds = %.lr.ph
  %i.cd = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @.str.36, ptr %i.ce, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc50 unwind label %.thread201

.noexc50:                                         ; preds = %bb.k
  unreachable

.thread201:                                       ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.q

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
  br i1 %.not.i.i51, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cl, i64 noundef %i.cs) #35
          to label %.noexc52 unwind label %bb.v

.noexc52:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ct = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw [88 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cy = trunc nuw i8 %i.cx to i1
  %.val.i = load i64, ptr %i.cv, align 8
  %.0.i = select i1 %i.cy, i64 %.val.i, i64 %i.ct
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.cz = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.da = phi i64 [ %.0.i, %bb.p ], [ %i.cz, %bb.q ]
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

_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i: ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw [88 x i8], ptr %i.df, i64 %i.dc ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !446, !noalias !1035 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !225, !noalias !1035
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !224, !noalias !1035 ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 80                ; 2 uses
  %.not.i.i10.i = icmp ult i64 %i.dm, %i.dt
  br i1 %.not.i.i10.i, label %bb.s, label %.invoke

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.r
  %i.du = phi i64 [ %i.dc, %bb.r ], [ %i.dm, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.dv = phi i64 [ %i.dj, %bb.r ], [ %i.dt, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.du, i64 noundef %i.dv) #35
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

bb.s:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !264, !range !80, !noalias !1035, !noundef !81
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.val.i.i = load i64, ptr %i.dz, align 8, !noalias !1035
  %.0.i.i = select i1 %i.dy, i64 %.val.i.i, i64 %i.da
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.dp, i64 %i.dm
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !61, !noalias !1035
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
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

.lr.ph148:                                        ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.x

._crit_edge149:                                   ; preds = %bb.af, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.em = ptrtoint ptr %.0.lcssa.i.i.i.i.i200 to i64 ; 2 uses
  %i.en = ptrtoint ptr %.sroa.0121.0199 to i64    ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %.not.i.i.i.i55 = icmp eq ptr %.0.lcssa.i.i.i.i.i200, %.sroa.0121.0199
  br i1 %.not.i.i.i.i55, label %.thread, label %bb.t

.thread:                                          ; preds = %._crit_edge149
  %i.ep = load i64, ptr %i.v, align 8, !tbaa !344
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.eq, align 8, !tbaa !487
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !512
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

bb.t:                                             ; preds = %._crit_edge149
  %i.es = icmp ugt i64 %i.eo, 9223372036854775792
  br i1 %i.es, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc59 unwind label %bb.aj

.noexc59:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.t
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #33
          to label %.lr.ph.i.i.i.i.i56.preheader unwind label %bb.aj ; 4 uses

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i
  %i.eu = add i64 %i.em, -16
  %i.ev = sub i64 %i.eu, %i.en
  %i.ew = and i64 %i.ev, -16
  %i.ex = add i64 %i.ew, 16                       ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.et, ptr align 4 %.sroa.0121.0199, i64 %i.ex, i1 false)
  %i.ey = load i64, ptr %i.v, align 8, !tbaa !344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.ez = icmp ugt i64 %i.ex, 9223372036854775792
  br i1 %i.ez, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

bb.u:                                             ; preds = %._crit_edge
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.al

bb.v:                                             ; preds = %bb.n
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

bb.w:                                             ; preds = %.invoke, %bb.q, %bb.o
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

bb.x:                                             ; preds = %.lr.ph148, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.ek, align 8, !tbaa !415
  %i.fd = load i8, ptr %i.el, align 8, !tbaa !450
  %.not.i.i61 = icmp eq i8 %i.fd, -1
  br i1 %.not.i.i61, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fe, align 8, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr @.str.34, ptr %i.ff, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fg = load i32, ptr %i.c, align 4, !tbaa !273
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = load i64, ptr %i.v, align 8, !tbaa !344
  %.not38 = icmp ugt i64 %i.fi, %i.fh
  br i1 %.not38, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fj = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull @.str.24)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.ay unwind label %bb.ae

.loopexit:                                        ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fj) #31
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ab
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fn = mul i64 %i.fm, %.0.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fn ; 2 uses
  %i.fp = load <2 x float>, ptr %i.fo, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load <2 x float>, ptr %i.fq, align 1
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0121.0199, i64 %i.fh ; 2 uses
  store <2 x float> %i.fp, ptr %i.fs, align 4, !tbaa !412
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store <2 x float> %i.fr, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.ft = add i64 %i.fm, 1                        ; 2 uses
  store i64 %i.ft, ptr %i.b, align 8, !tbaa !181
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !181
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.x, label %._crit_edge149, !llvm.loop !1033

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.ae ], [ %i.fk, %bb.ad ], [ %lpad.phi, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i56.preheader
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc86 unwind label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93

.noexc86:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #33
          to label %.noexc87 unwind label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93 ; 4 uses

.noexc87:                                         ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.fw, ptr %0, align 8, !tbaa !490
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ex
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !491
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr nonnull align 4 %i.et, i64 %i.ex, i1 false)
  %scevgep160 = getelementptr i8, ptr %i.fw, i64 %i.ex
  store ptr %scevgep160, ptr %i.fx, align 8, !tbaa !1036
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ga, align 8, !tbaa !487
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ey, ptr %i.gb, align 8, !tbaa !512
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.eo) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit: ; preds = %.noexc87, %.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !450
  %.not.i.i89 = icmp eq i8 %i.gd, -1
  br i1 %.not.i.i89, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ah, !prof !318

bb.ah:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !60
  %i.gg = icmp ne i8 %i.gf, 1
  %i.gh = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  %or.cond.i.i.i = select i1 %i.gg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !176
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit, %bb.ah, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i90 = icmp eq ptr %.sroa.0121.0199, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit91, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.gn = sub i64 %.sroa.15.0193, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0199, i64 noundef %i.gn) #32
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit91

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93: ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.eo) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95

_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95: ; preds = %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93, %bb.aj, %bb.ag, %bb.w, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.v ], [ %i.fc, %bb.w ], [ %.pn, %bb.ag ], [ %i.gp, %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit93 ], [ %i.go, %bb.aj ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !450
  %.not.i.i96 = icmp eq i8 %i.gr, -1
  br i1 %.not.i.i96, label %bb.al, label %bb.ak, !prof !318

bb.ak:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !60
  %i.gu = icmp ne i8 %i.gt, 1
  %i.gv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97 = icmp eq ptr %i.gv, null
  %or.cond.i.i.i98 = select i1 %i.gu, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i97
  br i1 %or.cond.i.i.i98, label %bb.al, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99: ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !176
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.u, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95, %bb.ak, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.u ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEED2Ev.exit95 ], [ %.pn.pn.pn, %bb.ak ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i99 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i101 = icmp eq ptr %.sroa.0121.0199, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102, label %bb.am

bb.am:                                            ; preds = %.thread201, %bb.al
  %.pn43208 = phi { ptr, i32 } [ %i.cf, %.thread201 ], [ %.pn.pn.pn.pn, %bb.al ]
  %.sroa.15.0194207 = phi i64 [ %i.aj, %.thread201 ], [ %.sroa.15.0193, %bb.al ]
  %.sroa.0121.0198206 = phi ptr [ %i.z, %.thread201 ], [ %.sroa.0121.0199, %bb.al ] ; 2 uses
  %i.hb = ptrtoint ptr %.sroa.0121.0198206 to i64
  %i.hc = sub i64 %.sroa.15.0194207, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0198206, i64 noundef %i.hc) #32
  br label %_ZNSt6vectorIN4core10quaternionESaIS1_EED2Ev.exit102

bb.an:                                            ; preds = %bb.g
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.hd, align 8, !tbaa !487
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !487 ; 2 uses
  switch i8 %i.hf, label %bb.ar [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEEC2ERKS4_.exit
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEEC2ERKS4_.exit

bb.ap:                                            ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !1036 ; 3 uses
  %i.hi = load ptr, ptr %3, align 8, !tbaa !490   ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hh, %i.hi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = icmp ugt i64 %i.hl, 9223372036854775792
  br i1 %i.hm, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.as

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #33
          to label %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.as

_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !1037
  %.pre161 = load ptr, ptr %i.hg, align 8, !tbaa !1037
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.ap
  %i.ho = phi ptr [ %i.hh, %bb.ap ], [ %.pre161, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.hp = phi ptr [ %i.hi, %bb.ap ], [ %.pre, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 2 uses
  %i.hq = phi ptr [ null, %bb.ap ], [ %i.hn, %_ZNSt15__new_allocatorIN4core10quaternionEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ] ; 4 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !490
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hl
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !491
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hp, %i.ho
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hq, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hp, %.noexc4.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !485
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hu, %i.ho
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1034

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEE12BufferSourceESt6vectorIS9_SaIS9_EESt5tupleIJEEEEC1ERKSH_EUlOT_T0_E_RKSt7variantIJSB_SE_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESO_SS_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hq, %.noexc4.i.i.i.i.i.i.i ], [ %i.hv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hr, align 8, !tbaa !1036
  %.pre162 = load i8, ptr %i.he, align 8, !tbaa !487
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIN4core10quaternionEEC2ERKS4_.exit

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
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4baseERKN10tiniergltf4GlTFEm(ptr dead_on_unwind nonnull writable sret(%"class.scene::CGLTFMeshFileLoader::Accessor.982") align 8 %3, ptr noundef nonnull align 8 dereferenceable(648) %1, i64 noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !431, !range !80, !noundef !81
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.az

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
  %xtraiter198 = and i64 %.pr, 1
  %i.ar = icmp eq i64 %.pr, 1
  br i1 %i.ar, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter = and i64 %.pr, -2
  br label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader: ; preds = %.lr.ph.split
  %xtraiter201 = and i64 %.pr, 1
  %i.as = icmp eq i64 %.pr, 1
  br i1 %i.as, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %unroll_iter204 = and i64 %.pr, -2
  br label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %xtraiter206 = and i64 %.pr, 7                  ; 3 uses
  %i.at = icmp ult i64 %.pr, 8
  br i1 %i.at, label %.lr.ph.split.split.epil.preheader, label %.lr.ph.split.split.preheader.new

.lr.ph.split.split.preheader.new:                 ; preds = %.lr.ph.split.split.preheader
  %unroll_iter209 = and i64 %.pr, -8
  br label %.lr.ph.split.split

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0125.us = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bb, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter205 = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter205.next.1, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.au = mul i64 %.sroa.4.0.copyload.i, %.0125.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.us = load <2 x float>, ptr %i.av, align 1
  %.sroa.2.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i.i.us = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us, align 1
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.us, ptr %i.aw, align 4
  %.sroa.52.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i.us, ptr %.sroa.52.0..sroa_idx.us, align 4, !tbaa !60
  %i.ax = or disjoint i64 %.0125.us, 1            ; 2 uses
  %i.ay = mul i64 %.sroa.4.0.copyload.i, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i.i.us.1 = load <2 x float>, ptr %i.az, align 1
  %.sroa.2.0..sroa_idx.i.i.us.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.2.0.copyload.i.i.us.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us.1, align 1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ax ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.us.1, ptr %i.ba, align 4
  %.sroa.52.0..sroa_idx.us.1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i.us.1, ptr %.sroa.52.0..sroa_idx.us.1, align 4, !tbaa !60
  %i.bb = add nuw i64 %.0125.us, 2                ; 2 uses
  %niter205.next.1 = add nuw i64 %niter205, 2     ; 2 uses
  %niter205.ncmp.1.not = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1.not, label %._crit_edge.loopexit196.unr-lcssa, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1782

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us: ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new
  %.0125.us127 = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %i.bh, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ] ; 4 uses
  %niter = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader.new ], [ %niter.next.1, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0125.us127 ; 2 uses
  %.sroa.02.0.copyload.i.us = load <2 x float>, ptr %i.bc, align 4
  %.sroa.43.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.43.0.copyload.i.us = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us127 ; 2 uses
  store <2 x float> %.sroa.02.0.copyload.i.us, ptr %i.bd, align 4
  %.sroa.52.0..sroa_idx.us130 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store <2 x float> %.sroa.43.0.copyload.i.us, ptr %.sroa.52.0..sroa_idx.us130, align 4, !tbaa !60
  %i.be = or disjoint i64 %.0125.us127, 1         ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %.sroa.02.0.copyload.i.us.1 = load <2 x float>, ptr %i.bf, align 4
  %.sroa.43.0..sroa_idx.i.us.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.43.0.copyload.i.us.1 = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us.1, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.be ; 2 uses
  store <2 x float> %.sroa.02.0.copyload.i.us.1, ptr %i.bg, align 4
  %.sroa.52.0..sroa_idx.us130.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store <2 x float> %.sroa.43.0.copyload.i.us.1, ptr %.sroa.52.0..sroa_idx.us130.1, align 4, !tbaa !60
  %i.bh = add nuw i64 %.0125.us127, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit197.unr-lcssa, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us, !llvm.loop !1782

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.split
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod207.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.0125.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter206, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.split.epil

.lr.ph.split.split.epil:                          ; preds = %.lr.ph.split.split.epil, %.lr.ph.split.split.epil.preheader
  %.0125.epil = phi i64 [ %i.bj, %.lr.ph.split.split.epil ], [ %.0125.epil.init, %.lr.ph.split.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.split.epil ], [ 0, %.lr.ph.split.split.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.epil
  %i.bj = add nuw i64 %.0125.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter206
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.split.epil, !llvm.loop !1783

._crit_edge.loopexit196.unr-lcssa:                ; preds = %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %._crit_edge, label %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit196.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0125.us.epil.init = phi i64 [ 0, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bb, %._crit_edge.loopexit196.unr-lcssa ] ; 2 uses
  %lcmp.mod203 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod203)
  %i.bk = mul i64 %.sroa.4.0.copyload.i, %.0125.us.epil.init
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk ; 2 uses
  %.sroa.0.0.copyload.i.i.us.epil = load <2 x float>, ptr %i.bl, align 1
  %.sroa.2.0..sroa_idx.i.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.2.0.copyload.i.i.us.epil = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i.us.epil, align 1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us.epil.init ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i.us.epil, ptr %i.bm, align 4
  %.sroa.52.0..sroa_idx.us.epil = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i.us.epil, ptr %.sroa.52.0..sroa_idx.us.epil, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge.loopexit197.unr-lcssa:                ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %._crit_edge, label %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader

_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader: ; preds = %._crit_edge.loopexit197.unr-lcssa, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader
  %.0125.us127.epil.init = phi i64 [ 0, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.preheader ], [ %i.bh, %._crit_edge.loopexit197.unr-lcssa ] ; 2 uses
  %lcmp.mod200 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.0125.us127.epil.init ; 2 uses
  %.sroa.02.0.copyload.i.us.epil = load <2 x float>, ptr %i.bn, align 4
  %.sroa.43.0..sroa_idx.i.us.epil = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.43.0.copyload.i.us.epil = load <2 x float>, ptr %.sroa.43.0..sroa_idx.i.us.epil, align 4, !tbaa !60
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0125.us127.epil.init ; 2 uses
  store <2 x float> %.sroa.02.0.copyload.i.us.epil, ptr %i.bo, align 4
  %.sroa.52.0..sroa_idx.us130.epil = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store <2 x float> %.sroa.43.0.copyload.i.us.epil, ptr %.sroa.52.0..sroa_idx.us130.epil, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit197.unr-lcssa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader, %._crit_edge.loopexit196.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.split.epil, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit
  %.0.i.i.i.i.i183 = phi ptr [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %.0.i.i.i.i.i.ph, %.lr.ph.split.split.epil ], [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit196.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %._crit_edge.loopexit197.unr-lcssa ], [ %.0.i.i.i.i.i.ph, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
  %.sroa.0113.0180 = phi ptr [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.z, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.z, %.lr.ph.split.split.epil ], [ %i.z, %._crit_edge.loopexit196.unr-lcssa ], [ %i.z, %._crit_edge.loopexit197.unr-lcssa ], [ %i.z, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 9 uses
  %.sroa.15.0176 = phi ptr [ %i.aa, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %_ZSt3getIN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE12BufferSourceEJS6_St6vectorIS4_SaIS4_EESt5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ], [ null, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.aa, %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2EmRKS2_.exit ], [ %i.aa, %.lr.ph.split.split.epil ], [ %i.aa, %._crit_edge.loopexit196.unr-lcssa ], [ %i.aa, %._crit_edge.loopexit197.unr-lcssa ], [ %i.aa, %_ZSt3getISt6vectorISt5arrayIfLm4EESaIS2_EEJN5scene19CGLTFMeshFileLoader8AccessorIS2_E12BufferSourceES4_St5tupleIJEEEERKT_RKSt7variantIJDpT0_EE.exit.i.us.epil.preheader ] ; 2 uses
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
          to label %bb.n unwind label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %.0125 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %i.ci, %.lr.ph.split.split ] ; 9 uses
  %niter210 = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter210.next.7, %.lr.ph.split.split ]
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
  %niter210.next.7 = add nuw i64 %niter210, 8     ; 2 uses
  %niter210.ncmp.7.not = icmp eq i64 %niter210.next.7, %unroll_iter209
  br i1 %niter210.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !1782

bb.m:                                             ; preds = %.lr.ph
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.36, ptr %i.ck, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc50 unwind label %.thread184

.noexc50:                                         ; preds = %bb.m
  unreachable

.thread184:                                       ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !264, !range !80, !noundef !81
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.s

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
  br i1 %.not.i.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cr, i64 noundef %i.cy) #35
          to label %.noexc52 unwind label %bb.aa

.noexc52:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cz = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw [88 x i8], ptr %i.cu, i64 %i.cr ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !264, !range !80, !noundef !81
  %i.de = trunc nuw i8 %i.dd to i1
  %.val.i = load i64, ptr %i.db, align 8
  %.0.i = select i1 %i.de, i64 %.val.i, i64 %i.cz
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.df = invoke noundef i64 @_ZNK10tiniergltf8Accessor11elementSizeEv(ptr noundef nonnull align 8 dereferenceable(212) %i.k)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = phi i64 [ %.0.i, %bb.r ], [ %i.df, %bb.s ]
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

_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i: ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw [88 x i8], ptr %i.dl, i64 %i.di ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !446, !noalias !1787 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !225, !noalias !1787
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !224, !noalias !1787 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 80                ; 2 uses
  %.not.i.i10.i = icmp ult i64 %i.ds, %i.dz
  br i1 %.not.i.i10.i, label %bb.u, label %.invoke

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.t
  %i.ea = phi i64 [ %i.di, %bb.t ], [ %i.ds, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.eb = phi i64 [ %i.dp, %bb.t ], [ %i.dz, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ea, i64 noundef %i.eb) #35
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !264, !range !80, !noalias !1787, !noundef !81
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.val.i.i = load i64, ptr %i.ef, align 8, !noalias !1787
  %.0.i.i = select i1 %i.ee, i64 %.val.i.i, i64 %i.dg
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.dv, i64 %i.ds
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61, !noalias !1787
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
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

.lr.ph132:                                        ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge133:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.es = ptrtoint ptr %.0.i.i.i.i.i183 to i64
  %i.et = ptrtoint ptr %.sroa.0113.0180 to i64    ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 7 uses
  %.not.i.i.i.i55 = icmp eq ptr %.0.i.i.i.i.i183, %.sroa.0113.0180
  br i1 %.not.i.i.i.i55, label %.thread, label %bb.v

.thread:                                          ; preds = %._crit_edge133
  %i.ev = getelementptr inbounds i8, ptr null, i64 %i.eu
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.v:                                             ; preds = %._crit_edge133
  %i.ew = icmp ugt i64 %i.eu, 9223372036854775792
  br i1 %i.ew, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc56 unwind label %bb.at

.noexc56:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #33
          to label %.noexc57 unwind label %bb.at  ; 6 uses

.noexc57:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.eu ; 3 uses
  %i.ez = icmp samesign ugt i64 %i.eu, 16
  br i1 %i.ez, label %bb.w, label %bb.x, !prof !495

bb.w:                                             ; preds = %.noexc57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ex, ptr align 4 %.sroa.0113.0180, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %.noexc57
  %i.fa = icmp eq i64 %i.eu, 16
  br i1 %i.fa, label %bb.y, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ex, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0113.0180, i64 16, i1 false), !tbaa.struct !401
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

bb.ac:                                            ; preds = %.lr.ph132, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.eq, align 8, !tbaa !415
  %i.fe = load i8, ptr %i.er, align 8, !tbaa !450
  %.not.i.i58 = icmp eq i8 %i.fe, -1
  br i1 %.not.i.i58, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ff, align 8, !tbaa !63
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @.str.34, ptr %i.fg, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #35
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.fh = load i32, ptr %i.c, align 4, !tbaa !273
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load i64, ptr %i.v, align 8, !tbaa !344
  %.not38 = icmp ugt i64 %i.fj, %i.fi
  br i1 %.not38, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fk = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.bn unwind label %bb.aj

.loopexit:                                        ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fk) #31
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fo = mul i64 %i.fn, %.0.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fo ; 2 uses
  %.sroa.0.0.copyload.i.i73 = load <2 x float>, ptr %i.fp, align 1
  %.sroa.2.0..sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.2.0.copyload.i.i75 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.i74, align 1
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0113.0180, i64 %i.fi ; 2 uses
  store <2 x float> %.sroa.0.0.copyload.i.i73, ptr %i.fq, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store <2 x float> %.sroa.2.0.copyload.i.i75, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.fr = add i64 %i.fn, 1                        ; 2 uses
  store i64 %i.fr, ptr %i.b, align 8, !tbaa !181
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !181
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.ac, label %._crit_edge133, !llvm.loop !1786

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.aj ], [ %i.fl, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.fu = phi ptr [ %i.ey, %bb.w ], [ %i.ey, %bb.x ], [ %i.ey, %bb.y ], [ %i.ev, %.thread ] ; 2 uses
  %i.fv = phi ptr [ %i.ex, %bb.w ], [ %i.ex, %bb.x ], [ %i.ex, %bb.y ], [ null, %.thread ] ; 8 uses
  %i.fw = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread122, label %bb.am

.thread122:                                       ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = getelementptr inbounds i8, ptr null, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !400
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit
  %i.gd = icmp ugt i64 %i.fz, 9223372036854775792
  br i1 %i.gd, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc78 unwind label %bb.au

.noexc78:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #33
          to label %.noexc79 unwind label %bb.au  ; 4 uses

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ge, ptr %0, align 8, !tbaa !340
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fz ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !400
  %i.gi = icmp samesign ugt i64 %i.fz, 16
  br i1 %i.gi, label %bb.an, label %bb.ao, !prof !495

bb.an:                                            ; preds = %.noexc79
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ge, ptr align 4 %i.fv, i64 %i.fz, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc79
  %i.gj = icmp eq i64 %i.fz, 16
  br i1 %i.gj, label %.thread123, label %bb.ap

.thread123:                                       ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !401
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !398
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gk, align 8, !tbaa !337
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fw, ptr %i.gl, align 8, !tbaa !409
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread122
  %i.gm = phi ptr [ %i.gg, %bb.an ], [ %i.gg, %bb.ao ], [ %i.gb, %.thread122 ]
  %i.gn = phi ptr [ %i.gf, %bb.an ], [ %i.gf, %bb.ao ], [ %i.ga, %.thread122 ]
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !398
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.go, align 8, !tbaa !337
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fw, ptr %i.gp, align 8, !tbaa !409
  %.not.i.i.i80 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i80, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread123, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fz) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !450
  %.not.i.i81 = icmp eq i8 %i.gr, -1
  br i1 %.not.i.i81, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !60
  %i.gu = icmp ne i8 %i.gt, 1
  %i.gv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  %or.cond.i.i.i = select i1 %i.gu, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !176
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i82 = icmp eq ptr %.sroa.0113.0180, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit83, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.hb = ptrtoint ptr %.sroa.15.0176 to i64
  %i.hc = sub i64 %i.hb, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0180, i64 noundef %i.hc) #32
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit83

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i84, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fz) #32
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.aa ], [ %i.fd, %bb.ab ], [ %.pn, %bb.al ], [ %i.hd, %bb.at ], [ %i.he, %bb.au ], [ %i.he, %bb.av ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !450
  %.not.i.i88 = icmp eq i8 %i.hg, -1
  br i1 %.not.i.i88, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !60
  %i.hj = icmp ne i8 %i.hi, 1
  %i.hk = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq ptr %i.hk, null
  %or.cond.i.i.i90 = select i1 %i.hj, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i89
  br i1 %or.cond.i.i.i90, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91: ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !176
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not.i.i.i93 = icmp eq ptr %.sroa.0113.0180, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94, label %bb.ay

bb.ay:                                            ; preds = %.thread184, %bb.ax
  %.pn43191 = phi { ptr, i32 } [ %i.cl, %.thread184 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0175190 = phi ptr [ %i.aa, %.thread184 ], [ %.sroa.15.0176, %bb.ax ]
  %.sroa.0113.0179189 = phi ptr [ %i.z, %.thread184 ], [ %.sroa.0113.0180, %bb.ax ] ; 2 uses
  %i.hq = ptrtoint ptr %.sroa.15.0175190 to i64
  %i.hr = ptrtoint ptr %.sroa.0113.0179189 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0179189, i64 noundef %i.hs) #32
  br label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94

bb.az:                                            ; preds = %bb.g
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.ht, align 8, !tbaa !337
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !337 ; 2 uses
  switch i8 %i.hv, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEEC2ERKS4_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEEC2ERKS4_.exit

bb.bb:                                            ; preds = %bb.az
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !398 ; 2 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !340   ; 3 uses
end_hunk_2
