Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN10tiniergltf4GlTFD2Ev:bb.a

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !61 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !60
  %i.kw = add i64 %i.kv, 1
  tail call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !93, !range !80, !noundef !81
  %i.kz = trunc nuw i8 %i.ky to i1
  store i8 0, ptr %i.kx, align 8, !tbaa !93
  br i1 %i.kz, label %bb.ap, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.ap:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !61 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.ap
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !60
  %i.lf = add i64 %i.le, 1
  tail call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !93, !range !80, !noundef !81
  %i.li = trunc nuw i8 %i.lh to i1
  store i8 0, ptr %i.lg, align 8, !tbaa !93
  br i1 %i.li, label %bb.aq, label %_ZN10tiniergltf5AssetD2Ev.exit

bb.aq:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.lj = load ptr, ptr %i.kh, align 8, !tbaa !61 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZN10tiniergltf5AssetD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.aq
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !60
  %i.ln = add i64 %i.lm, 1
  tail call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #31
  br label %_ZN10tiniergltf5AssetD2Ev.exit

_ZN10tiniergltf5AssetD2Ev.exit:                   ; preds = %bb.aq, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !87, !range !80, !noundef !81
  %i.lq = trunc nuw i8 %i.lp to i1
  store i8 0, ptr %i.lo, align 8, !tbaa !87
  br i1 %i.lq, label %bb.ar, label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit

bb.ar:                                            ; preds = %_ZN10tiniergltf5AssetD2Ev.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt6vectorIN10tiniergltf9AnimationESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.lr) #30
  br label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit: ; preds = %_ZN10tiniergltf5AssetD2Ev.exit, %bb.ar
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !79, !range !80, !noundef !81
  %i.lu = trunc nuw i8 %i.lt to i1
  store i8 0, ptr %i.ls, align 8, !tbaa !79
  br i1 %i.lu, label %bb.as, label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf8AccessorESaIS2_EELb0ELb0EED2Ev.exit

bb.as:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit
  tail call void @_ZNSt6vectorIN10tiniergltf8AccessorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %0) #30
  br label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf8AccessorESaIS2_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN10tiniergltf8AccessorESaIS2_EELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit, %bb.as
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene19CGLTFMeshFileLoader13MeshExtractor12addPrimitiveERKN10tiniergltf13MeshPrimitiveESt8optionalImEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(784) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, i64 %2, i8 %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor", align 8 ; 11 uses
  %7 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.472", align 8 ; 11 uses
  %8 = alloca %"class.std::optional.260", align 8 ; 13 uses
  %9 = alloca %"class.std::optional.305", align 8 ; 13 uses
  %10 = alloca %"class.std::variant.426", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor11getVerticesERKN10tiniergltf13MeshPrimitiveE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.260") align 8 %8, ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !229, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseISt6vectorIN5video9S3DVertexESaIS2_EELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232  ; 4 uses
  %i.g = load ptr, ptr %8, align 8, !tbaa !233    ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 40                  ; 7 uses
  %.not = icmp ult i64 %i.k, 65535
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.dz unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #30
  br label %.thread688

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread688

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.305") align 8 %9, ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !235, !range !80, !noundef !81 ; 5 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt6vectorItSaItEEaSEOS1_.exit, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.h
  %i.r = load ptr, ptr %9, align 8, !tbaa !238    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !239  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240  ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not45.i = icmp eq ptr %i.r, %i.t
  br i1 %.not45.i, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %i.w = trunc nuw i64 %i.k to i16
  br label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 2 ; 2 uses
  %.not4.i = icmp eq ptr %i.x, %i.t
  br i1 %.not4.i, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.01.06.i = phi ptr [ %i.x, %bb.i ], [ %i.r, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = load i16, ptr %.sroa.01.06.i, align 2, !tbaa !242
  %.not.i = icmp ult i16 %i.y, %i.w
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.24)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #30
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.h
  %.not.i.i.i.i.i89 = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i89, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ad = shl nuw nsw i64 %i.k, 1
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #32
          to label %.noexc92 unwind label %bb.p   ; 6 uses

.noexc92:                                         ; preds = %.noexc12.i
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.k
  %i.ag = getelementptr i8, ptr %i.ae, i64 2      ; 3 uses
  %i.ah = add nsw i64 %i.k, -1                    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i90, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc92
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ah, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !242, !noalias !872
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc92
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.aj, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ag, %.noexc92 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i90
  %.013.i = phi i64 [ 0, %.lr.ph.i90 ], [ %i.as, %bb.o ] ; 5 uses
  %i.ak = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %i.al = trunc nuw i64 %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.013.i
  store i16 %i.al, ptr %i.am, align 2, !tbaa !242, !noalias !872
  %i.an = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.ao = trunc nuw i64 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.an
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !242, !noalias !872
  %i.aq = trunc nuw i64 %.013.i to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ak
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !242, !noalias !872
  %i.as = add nuw nsw i64 %.013.i, 3              ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.k
  br i1 %i.at, label %bb.o, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, !llvm.loop !867

bb.p:                                             ; preds = %.noexc12.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit: ; preds = %bb.o, %bb.i, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %.sroa.17223.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.v, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.v, %bb.i ], [ %i.af, %bb.o ] ; 3 uses
  %.sroa.13.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.t, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.t, %bb.i ], [ %.0.i.i.i.i.i.ph.i, %bb.o ]
  %.sroa.0218.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.r, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.r, %bb.i ], [ %i.ae, %bb.o ] ; 3 uses
  %i.av = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #32
          to label %bb.q unwind label %bb.am      ; 7 uses

bb.q:                                             ; preds = %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit
  invoke void @_ZN5scene15SSkinMeshBufferC1EN5video13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(288) %i.av, i32 noundef 0)
          to label %.noexc95 unwind label %bb.an

.noexc95:                                         ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !260 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !233 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !261
  store ptr %i.g, ptr %i.ay, align 8, !tbaa !233
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !232
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !261
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !261
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i, label %bb.r

bb.r:                                             ; preds = %.noexc95
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.az to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bh) #31
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.r, %.noexc95
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !262 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !238 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !240
  store ptr %.sroa.0218.0, ptr %i.bk, align 8, !tbaa !238
  store ptr %.sroa.13.0, ptr %i.bm, align 8, !tbaa !239
  store ptr %.sroa.17223.0, ptr %i.bn, align 8, !tbaa !240
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.br) #31
  br label %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit

_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit: ; preds = %bb.s, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.bt = invoke noundef i32 @_ZN5scene18SkinnedMeshBuilder13addMeshBufferEPNS_15SSkinMeshBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull %i.av)
          to label %bb.t unwind label %bb.ao      ; 4 uses

bb.t:                                             ; preds = %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !264, !range !80, !noundef !81
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.u, label %bb.au

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !181 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !217
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !216 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 272               ; 2 uses
  %.not.i.i = icmp ult i64 %i.bz, %i.cg
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.bz, i64 noundef %i.cg) #34
          to label %.noexc96 unwind label %bb.ap

.noexc96:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw [272 x i8], ptr %i.cc, i64 %i.bz ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 264
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !266, !range !80, !noundef !81
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.x, label %bb.au

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 216
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !268, !range !80, !noundef !81
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.y, label %bb.au

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 200
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !270 ; 4 uses
  %i.cq = load ptr, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = zext i32 %i.bt to i64                   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !271
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !272 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 2 uses
  %.not.i.i.i97 = icmp ugt i64 %i.cz, %i.cs
  br i1 %.not.i.i.i97, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cs, i64 noundef %i.cz) #34
          to label %.noexc98 unwind label %bb.aq

.noexc98:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.da = trunc i64 %i.cp to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cs
  store i32 %i.da, ptr %i.db, align 4, !tbaa !273
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !201
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !200 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 72                ; 2 uses
  %.not.i.i99 = icmp ult i64 %i.cp, %i.dj
  br i1 %.not.i.i99, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cp, i64 noundef %i.dj) #34
          to label %.noexc100 unwind label %bb.ar

.noexc100:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %i.cp ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %.sroa.0209.0.copyload = load i64, ptr %i.dl, align 8 ; 3 uses
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.5210.0.copyload = load i8, ptr %.sroa.5210.0..sroa_idx, align 8
  %i.dm = trunc nuw i8 %.sroa.5210.0.copyload to i1
  br i1 %i.dm, label %bb.ad, label %bb.au

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !213
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !212 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
end_hunk_0
begin_hunk_1_@_ZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.s
  %i.fq = phi i64 [ %i.ey, %bb.s ], [ %i.fi, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.fr = phi i64 [ %i.ff, %bb.s ], [ %i.fp, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.fq, i64 noundef %i.fr) #34
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !264, !range !80, !noalias !1015, !noundef !81
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.val.i.i = load i64, ptr %i.fv, align 8, !noalias !1015
  %.0.i.i = select i1 %i.fu, i64 %.val.i.i, i64 %i.ew
  %i.fw = getelementptr inbounds nuw [80 x i8], ptr %i.fl, i64 %i.fi
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !61, !noalias !1015
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !447, !noalias !1015
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !448, !noalias !1015
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !181
  %.not125 = icmp eq i64 %i.gf, 0
  br i1 %.not125, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.t
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ab

._crit_edge123:                                   ; preds = %bb.aj, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.gi = ptrtoint ptr %.0.i.i.i.i.i173 to i64
  %i.gj = ptrtoint ptr %.sroa.0104.0170 to i64    ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i173, %.sroa.0104.0170
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.u

.thread:                                          ; preds = %._crit_edge123
  %i.gl = getelementptr inbounds i8, ptr null, i64 %i.gk
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.u:                                             ; preds = %._crit_edge123
  %i.gm = icmp ugt i64 %i.gk, 9223372036854775804
  br i1 %i.gm, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.as

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #32
          to label %.noexc56 unwind label %bb.as  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk ; 3 uses
  %i.gp = icmp samesign ugt i64 %i.gk, 4
  br i1 %i.gp, label %bb.v, label %bb.w, !prof !495

bb.v:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gn, ptr align 4 %.sroa.0104.0170, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.w:                                             ; preds = %.noexc56
  %i.gq = icmp eq i64 %i.gk, 4
  br i1 %i.gq, label %bb.x, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.x:                                             ; preds = %bb.w
  %i.gr = load float, ptr %.sroa.0104.0170, align 4, !tbaa !412
  store float %i.gr, ptr %i.gn, align 4, !tbaa !412
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aw

bb.z:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78

bb.aa:                                            ; preds = %.invoke, %bb.r, %bb.p
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78

bb.ab:                                            ; preds = %.lr.ph122, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.gg, align 8, !tbaa !415
  %i.gv = load i8, ptr %i.gh, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.gv, -1
  br i1 %.not.i.i57, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gw, align 8, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @.str.34, ptr %i.gx, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeES9_DpOSK_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeES9_DpOSK_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gy = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = load i64, ptr %i.v, align 8, !tbaa !344
  %.not36 = icmp ugt i64 %i.ha, %i.gz
  br i1 %.not36, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeES9_DpOSK_.exit
  %i.hb = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull @.str.24)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.hb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.bm unwind label %bb.ai

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hb) #30
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIfE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISK_EEEEE4typeEE4typeEOST_EEEE4typeES9_DpOSK_.exit
  %i.he = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.hf = mul i64 %i.he, %.0.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.hf
  %.0.copyload.i.i66 = load float, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0170, i64 %i.gz
  store float %.0.copyload.i.i66, ptr %i.hh, align 4, !tbaa !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hi = add i64 %i.he, 1                        ; 2 uses
  store i64 %i.hi, ptr %i.b, align 8, !tbaa !181
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !181
  %i.hk = icmp ult i64 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ab, label %._crit_edge123, !llvm.loop !1012

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.ai ], [ %i.hc, %bb.ah ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.x, %bb.w, %bb.v, %.thread
  %i.hl = phi ptr [ %i.go, %bb.v ], [ %i.go, %bb.w ], [ %i.go, %bb.x ], [ %i.gl, %.thread ] ; 2 uses
  %i.hm = phi ptr [ %i.gn, %bb.v ], [ %i.gn, %bb.w ], [ %i.gn, %bb.x ], [ null, %.thread ] ; 8 uses
  %i.hn = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread113, label %bb.al

.thread113:                                       ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hs = getelementptr inbounds i8, ptr null, i64 %i.hq ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !492
  br label %bb.ao

bb.al:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.hu = icmp ugt i64 %i.hq, 9223372036854775804
  br i1 %i.hu, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc69 unwind label %bb.at

.noexc69:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #32
          to label %.noexc70 unwind label %bb.at  ; 4 uses

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hv, ptr %0, align 8, !tbaa !484
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hq ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !492
  %i.hz = icmp samesign ugt i64 %i.hq, 4
  br i1 %i.hz, label %bb.am, label %bb.an, !prof !495

bb.am:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %i.hm, i64 %i.hq, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %.noexc70
  %i.ia = icmp eq i64 %i.hq, 4
  br i1 %i.ia, label %.thread114, label %bb.ao

.thread114:                                       ; preds = %bb.an
  %i.ib = load float, ptr %i.hm, align 4, !tbaa !412
  store float %i.ib, ptr %i.hv, align 4, !tbaa !412
  store ptr %i.hx, ptr %i.hw, align 8, !tbaa !1016
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ic, align 8, !tbaa !481
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hn, ptr %i.id, align 8, !tbaa !473
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread113
  %i.ie = phi ptr [ %i.hx, %bb.am ], [ %i.hx, %bb.an ], [ %i.hs, %.thread113 ]
  %i.if = phi ptr [ %i.hw, %bb.am ], [ %i.hw, %bb.an ], [ %i.hr, %.thread113 ]
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !1016
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ig, align 8, !tbaa !481
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hn, ptr %i.ih, align 8, !tbaa !473
  %.not.i.i.i71 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i71, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread114, %bb.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit: ; preds = %bb.ap, %bb.ao
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !450
  %.not.i.i72 = icmp eq i8 %i.ij, -1
  br i1 %.not.i.i72, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.aq, !prof !318

bb.aq:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !60
  %i.im = icmp ne i8 %i.il, 1
  %i.in = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  %or.cond.i.i.i = select i1 %i.im, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.aq
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !176
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit, %bb.aq, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i73 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIfSaIfEED2Ev.exit74, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.it = ptrtoint ptr %.sroa.15.0166 to i64
  %i.iu = sub i64 %i.it, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0170, i64 noundef %i.iu) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit74

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78

bb.at:                                            ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i75, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78

_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78: ; preds = %bb.au, %bb.at, %bb.as, %bb.ak, %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gt, %bb.z ], [ %i.gu, %bb.aa ], [ %.pn, %bb.ak ], [ %i.iv, %bb.as ], [ %i.iw, %bb.at ], [ %i.iw, %bb.au ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !450
  %.not.i.i79 = icmp eq i8 %i.iy, -1
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !318

bb.av:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !60
  %i.jb = icmp ne i8 %i.ja, 1
  %i.jc = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %i.jc, null
  %or.cond.i.i.i81 = select i1 %i.jb, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80
  br i1 %or.cond.i.i.i81, label %bb.aw, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82: ; preds = %bb.av
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !176
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.y, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78, %bb.av, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.y ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIfED2Ev.exit78 ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i84 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIfSaIfEED2Ev.exit85, label %bb.ax

bb.ax:                                            ; preds = %.thread174, %bb.aw
  %.pn41181 = phi { ptr, i32 } [ %i.eb, %.thread174 ], [ %.pn.pn.pn.pn, %bb.aw ]
  %.sroa.15.0165180 = phi ptr [ %i.ab, %.thread174 ], [ %.sroa.15.0166, %bb.aw ]
  %.sroa.0104.0169179 = phi ptr [ %i.z, %.thread174 ], [ %.sroa.0104.0170, %bb.aw ] ; 2 uses
  %i.ji = ptrtoint ptr %.sroa.15.0165180 to i64
  %i.jj = ptrtoint ptr %.sroa.0104.0169179 to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0169179, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit85

bb.ay:                                            ; preds = %bb.g
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.jl, align 8, !tbaa !481
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !481 ; 2 uses
  switch i8 %i.jn, label %bb.bf [
    i8 0, label %bb.az
    i8 1, label %bb.ba
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfEC2ERKS2_.exit
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIfEC2ERKS2_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1016 ; 2 uses
  %i.jq = load ptr, ptr %3, align 8, !tbaa !484   ; 3 uses
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jt = sub i64 %i.jr, %i.js                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jp, %i.jq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = icmp ugt i64 %i.jt, 9223372036854775804
  br i1 %i.ju, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #32
          to label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bg

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !1017  ; 2 uses
  %.pre129 = load ptr, ptr %i.jo, align 8, !tbaa !1017
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.t
  %i.es = phi i64 [ %i.ea, %bb.t ], [ %i.ek, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.et = phi i64 [ %i.eh, %bb.t ], [ %i.er, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.es, i64 noundef %i.et) #34
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !264, !range !80, !noalias !1056, !noundef !81
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val.i.i = load i64, ptr %i.ex, align 8, !noalias !1056
  %.0.i.i = select i1 %i.ew, i64 %.val.i.i, i64 %i.dy
  %i.ey = getelementptr inbounds nuw [80 x i8], ptr %i.en, i64 %i.ek
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !61, !noalias !1056
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !447, !noalias !1056
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !448, !noalias !1056
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !181
  %.not126 = icmp eq i64 %i.fh, 0
  br i1 %.not126, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge124:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.fk = ptrtoint ptr %.0.i.i.i.i.i174 to i64
  %i.fl = ptrtoint ptr %.sroa.0105.0171 to i64    ; 2 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i174, %.sroa.0105.0171
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.v

.thread:                                          ; preds = %._crit_edge124
  %i.fn = getelementptr inbounds i8, ptr null, i64 %i.fm
  br label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit

bb.v:                                             ; preds = %._crit_edge124
  %i.fo = icmp ugt i64 %i.fm, 9223372036854775800
  br i1 %i.fo, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.at

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #32
          to label %.noexc56 unwind label %bb.at  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fm ; 3 uses
  %i.fr = icmp samesign ugt i64 %i.fm, 8
  br i1 %i.fr, label %bb.w, label %bb.x, !prof !495

bb.w:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %.sroa.0105.0171, i64 %i.fm, i1 false)
  br label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %.noexc56
  %i.fs = icmp eq i64 %i.fm, 8
  br i1 %i.fs, label %bb.y, label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %bb.x
  %i.ft = load i64, ptr %.sroa.0105.0171, align 4, !tbaa !60
  store i64 %i.ft, ptr %i.fp, align 4, !tbaa !60
  br label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79

bb.ac:                                            ; preds = %.lr.ph123, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.fi, align 8, !tbaa !415
  %i.fx = load i8, ptr %i.fj, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.fx, -1
  br i1 %.not.i.i57, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fy, align 8, !tbaa !63
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @.str.34, ptr %i.fz, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ga = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = load i64, ptr %i.v, align 8, !tbaa !344
  %.not37 = icmp ugt i64 %i.gc, %i.gb
  br i1 %.not37, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gd = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gd) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gg = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.gh = mul i64 %i.gg, %.0.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.gh
  %.sroa.0.0.copyload.i.i67 = load <2 x float>, ptr %i.gi, align 1
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0105.0171, i64 %i.gb
  store <2 x float> %.sroa.0.0.copyload.i.i67, ptr %i.gj, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gk = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.gk, ptr %i.b, align 8, !tbaa !181
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !181
  %i.gm = icmp ult i64 %i.gk, %i.gl
  br i1 %i.gm, label %bb.ac, label %._crit_edge124, !llvm.loop !1055

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.aj ], [ %i.ge, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79

_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.gn = phi ptr [ %i.fq, %bb.w ], [ %i.fq, %bb.x ], [ %i.fq, %bb.y ], [ %i.fn, %.thread ] ; 2 uses
  %i.go = phi ptr [ %i.fp, %bb.w ], [ %i.fp, %bb.x ], [ %i.fp, %bb.y ], [ null, %.thread ] ; 8 uses
  %i.gp = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread114, label %bb.am

.thread114:                                       ; preds = %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gu = getelementptr inbounds i8, ptr null, i64 %i.gs ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !526
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EEC2ERKS3_.exit
  %i.gw = icmp ugt i64 %i.gs, 9223372036854775800
  br i1 %i.gw, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc70 unwind label %bb.au

.noexc70:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #32
          to label %.noexc71 unwind label %bb.au  ; 4 uses

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gx, ptr %0, align 8, !tbaa !525
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gs ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !526
  %i.hb = icmp samesign ugt i64 %i.gs, 8
  br i1 %i.hb, label %bb.an, label %bb.ao, !prof !495

bb.an:                                            ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gx, ptr align 4 %i.go, i64 %i.gs, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc71
  %i.hc = icmp eq i64 %i.gs, 8
  br i1 %i.hc, label %.thread115, label %bb.ap

.thread115:                                       ; preds = %bb.ao
  %i.hd = load i64, ptr %i.go, align 4, !tbaa !60
  store i64 %i.hd, ptr %i.gx, align 4, !tbaa !60
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !533
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.he, align 8, !tbaa !522
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gp, ptr %i.hf, align 8, !tbaa !521
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread114
  %i.hg = phi ptr [ %i.gz, %bb.an ], [ %i.gz, %bb.ao ], [ %i.gu, %.thread114 ]
  %i.hh = phi ptr [ %i.gy, %bb.an ], [ %i.gy, %bb.ao ], [ %i.gt, %.thread114 ]
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !533
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hi, align 8, !tbaa !522
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gp, ptr %i.hj, align 8, !tbaa !521
  %.not.i.i.i72 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i72, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread115, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !450
  %.not.i.i73 = icmp eq i8 %i.hl, -1
  br i1 %.not.i.i73, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !60
  %i.ho = icmp ne i8 %i.hn, 1
  %i.hp = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  %or.cond.i.i.i = select i1 %i.ho, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !176
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i74 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EED2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.hv = ptrtoint ptr %.sroa.15.0167 to i64
  %i.hw = sub i64 %i.hv, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0171, i64 noundef %i.hw) #31
  br label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EED2Ev.exit75

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i76, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.aa ], [ %i.fw, %bb.ab ], [ %.pn, %bb.al ], [ %i.hx, %bb.at ], [ %i.hy, %bb.au ], [ %i.hy, %bb.av ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !450
  %.not.i.i80 = icmp eq i8 %i.ia, -1
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !60
  %i.id = icmp ne i8 %i.ic, 1
  %i.ie = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.ie, null
  %or.cond.i.i.i82 = select i1 %i.id, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  br i1 %or.cond.i.i.i82, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83: ; preds = %bb.aw
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !176
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEED2Ev.exit79 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i85 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %.thread175, %bb.ax
  %.pn42182 = phi { ptr, i32 } [ %i.dd, %.thread175 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0166181 = phi ptr [ %i.aa, %.thread175 ], [ %.sroa.15.0167, %bb.ax ]
  %.sroa.0105.0170180 = phi ptr [ %i.z, %.thread175 ], [ %.sroa.0105.0171, %bb.ax ] ; 2 uses
  %i.ik = ptrtoint ptr %.sroa.15.0166181 to i64
  %i.il = ptrtoint ptr %.sroa.0105.0170180 to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0170180, i64 noundef %i.im) #31
  br label %_ZNSt6vectorISt5arrayIfLm2EESaIS1_EED2Ev.exit86

bb.az:                                            ; preds = %bb.g
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.in, align 8, !tbaa !522
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !522 ; 2 uses
  switch i8 %i.ip, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEC2ERKS4_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm2EEEC2ERKS4_.exit

bb.bb:                                            ; preds = %bb.az
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !533 ; 2 uses
  %i.is = load ptr, ptr %3, align 8, !tbaa !525   ; 3 uses
  %i.it = ptrtoint ptr %i.ir to i64               ; 2 uses
  %i.iu = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iw = icmp ugt i64 %i.iv, 9223372036854775800
  br i1 %i.iw, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #32
          to label %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !534   ; 2 uses
  %.pre129 = load ptr, ptr %i.iq, align 8, !tbaa !534
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.t
  %i.ex = phi i64 [ %i.ef, %bb.t ], [ %i.ep, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.ey = phi i64 [ %i.em, %bb.t ], [ %i.ew, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ex, i64 noundef %i.ey) #34
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !264, !range !80, !noalias !1121, !noundef !81
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.val.i.i = load i64, ptr %i.fc, align 8, !noalias !1121
  %.0.i.i = select i1 %i.fb, i64 %.val.i.i, i64 %i.ed
  %i.fd = getelementptr inbounds nuw [80 x i8], ptr %i.es, i64 %i.ep
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !61, !noalias !1121
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !447, !noalias !1121
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !448, !noalias !1121
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !181
  %.not126 = icmp eq i64 %i.fm, 0
  br i1 %.not126, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge124:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.fp = ptrtoint ptr %.0.i.i.i.i.i174 to i64
  %i.fq = ptrtoint ptr %.sroa.0105.0171 to i64    ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i174, %.sroa.0105.0171
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.v

.thread:                                          ; preds = %._crit_edge124
  %i.fs = getelementptr inbounds i8, ptr null, i64 %i.fr
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit

bb.v:                                             ; preds = %._crit_edge124
  %i.ft = icmp ugt i64 %i.fr, 9223372036854775804
  br i1 %i.ft, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.at

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #32
          to label %.noexc56 unwind label %bb.at  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr ; 3 uses
  %i.fw = icmp samesign ugt i64 %i.fr, 4
  br i1 %i.fw, label %bb.w, label %bb.x, !prof !495

bb.w:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fu, ptr align 1 %.sroa.0105.0171, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %.noexc56
  %i.fx = icmp eq i64 %i.fr, 4
  br i1 %i.fx, label %bb.y, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %bb.x
  %i.fy = load i32, ptr %.sroa.0105.0171, align 1, !tbaa !60
  store i32 %i.fy, ptr %i.fu, align 1, !tbaa !60
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79

bb.ac:                                            ; preds = %.lr.ph123, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.fn, align 8, !tbaa !415
  %i.gc = load i8, ptr %i.fo, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.gc, -1
  br i1 %.not.i.i57, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gd = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gd, align 8, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr @.str.34, ptr %i.ge, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gf = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = load i64, ptr %i.v, align 8, !tbaa !344
  %.not37 = icmp ugt i64 %i.gh, %i.gg
  br i1 %.not37, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gi = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.gi, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gi) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gl = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.gm = mul i64 %i.gl, %.0.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gm
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0171, i64 %i.gg
  store i32 %.sroa.0.0.copyload.i.i67, ptr %i.go, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gp = add i64 %i.gl, 1                        ; 2 uses
  store i64 %i.gp, ptr %i.b, align 8, !tbaa !181
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !181
  %i.gr = icmp ult i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ac, label %._crit_edge124, !llvm.loop !1118

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.aj ], [ %i.gj, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79

_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.gs = phi ptr [ %i.fv, %bb.w ], [ %i.fv, %bb.x ], [ %i.fv, %bb.y ], [ %i.fs, %.thread ] ; 2 uses
  %i.gt = phi ptr [ %i.fu, %bb.w ], [ %i.fu, %bb.x ], [ %i.fu, %bb.y ], [ null, %.thread ] ; 8 uses
  %i.gu = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread114, label %bb.am

.thread114:                                       ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gz = getelementptr inbounds i8, ptr null, i64 %i.gx ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !321
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EEC2ERKS3_.exit
  %i.hb = icmp ugt i64 %i.gx, 9223372036854775804
  br i1 %i.hb, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc70 unwind label %bb.au

.noexc70:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #32
          to label %.noexc71 unwind label %bb.au  ; 4 uses

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hc, ptr %0, align 8, !tbaa !317
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gx ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !321
  %i.hg = icmp samesign ugt i64 %i.gx, 4
  br i1 %i.hg, label %bb.an, label %bb.ao, !prof !495

bb.an:                                            ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr align 1 %i.gt, i64 %i.gx, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc71
  %i.hh = icmp eq i64 %i.gx, 4
  br i1 %i.hh, label %.thread115, label %bb.ap

.thread115:                                       ; preds = %bb.ao
  %i.hi = load i32, ptr %i.gt, align 1, !tbaa !60
  store i32 %i.hi, ptr %i.hc, align 1, !tbaa !60
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !316
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hj, align 8, !tbaa !312
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gu, ptr %i.hk, align 8, !tbaa !389
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread114
  %i.hl = phi ptr [ %i.he, %bb.an ], [ %i.he, %bb.ao ], [ %i.gz, %.thread114 ]
  %i.hm = phi ptr [ %i.hd, %bb.an ], [ %i.hd, %bb.ao ], [ %i.gy, %.thread114 ]
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !316
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hn, align 8, !tbaa !312
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gu, ptr %i.ho, align 8, !tbaa !389
  %.not.i.i.i72 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i72, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread115, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !450
  %.not.i.i73 = icmp eq i8 %i.hq, -1
  br i1 %.not.i.i73, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !60
  %i.ht = icmp ne i8 %i.hs, 1
  %i.hu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hu, null
  %or.cond.i.i.i = select i1 %i.ht, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !176
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i74 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.ia = ptrtoint ptr %.sroa.15.0167 to i64
  %i.ib = sub i64 %i.ia, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0171, i64 noundef %i.ib) #31
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit75

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i76, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.aa ], [ %i.gb, %bb.ab ], [ %.pn, %bb.al ], [ %i.ic, %bb.at ], [ %i.id, %bb.au ], [ %i.id, %bb.av ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !450
  %.not.i.i80 = icmp eq i8 %i.if, -1
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !60
  %i.ii = icmp ne i8 %i.ih, 1
  %i.ij = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.ij, null
  %or.cond.i.i.i82 = select i1 %i.ii, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  br i1 %or.cond.i.i.i82, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83: ; preds = %bb.aw
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !176
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEED2Ev.exit79 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i85 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %.thread175, %bb.ax
  %.pn42182 = phi { ptr, i32 } [ %i.di, %.thread175 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0166181 = phi ptr [ %i.ab, %.thread175 ], [ %.sroa.15.0167, %bb.ax ]
  %.sroa.0105.0170180 = phi ptr [ %i.z, %.thread175 ], [ %.sroa.0105.0171, %bb.ax ] ; 2 uses
  %i.ip = ptrtoint ptr %.sroa.15.0166181 to i64
  %i.iq = ptrtoint ptr %.sroa.0105.0170180 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0170180, i64 noundef %i.ir) #31
  br label %_ZNSt6vectorISt5arrayIhLm4EESaIS1_EED2Ev.exit86

bb.az:                                            ; preds = %bb.g
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.is, align 8, !tbaa !312
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !312 ; 2 uses
  switch i8 %i.iu, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEC2ERKS4_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm4EEEC2ERKS4_.exit

bb.bb:                                            ; preds = %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !316 ; 2 uses
  %i.ix = load ptr, ptr %3, align 8, !tbaa !317   ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jb = icmp ugt i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #32
          to label %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !319   ; 2 uses
  %.pre129 = load ptr, ptr %i.iv, align 8, !tbaa !319
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.t
  %i.eb = phi i64 [ %i.dj, %bb.t ], [ %i.dt, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.ec = phi i64 [ %i.dq, %bb.t ], [ %i.ea, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.eb, i64 noundef %i.ec) #34
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !264, !range !80, !noalias !1133, !noundef !81
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.val.i.i = load i64, ptr %i.eg, align 8, !noalias !1133
  %.0.i.i = select i1 %i.ef, i64 %.val.i.i, i64 %i.dh
  %i.eh = getelementptr inbounds nuw [80 x i8], ptr %i.dw, i64 %i.dt
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !61, !noalias !1133
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !447, !noalias !1133
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !448, !noalias !1133
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !181
  %.not126 = icmp eq i64 %i.eq, 0
  br i1 %.not126, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge124:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.et = ptrtoint ptr %.0.i.i.i.i.i174 to i64
  %i.eu = ptrtoint ptr %.sroa.0105.0171 to i64    ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i174, %.sroa.0105.0171
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.v

.thread:                                          ; preds = %._crit_edge124
  %i.ew = getelementptr inbounds i8, ptr null, i64 %i.ev
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit

bb.v:                                             ; preds = %._crit_edge124
  %i.ex = icmp ugt i64 %i.ev, 9223372036854775800
  br i1 %i.ex, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.at

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.ey = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #32
          to label %.noexc56 unwind label %bb.at  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ev ; 3 uses
  %i.fa = icmp samesign ugt i64 %i.ev, 8
  br i1 %i.fa, label %bb.w, label %bb.x, !prof !495

bb.w:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ey, ptr align 2 %.sroa.0105.0171, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %.noexc56
  %i.fb = icmp eq i64 %i.ev, 8
  br i1 %i.fb, label %bb.y, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %bb.x
  %i.fc = load i64, ptr %.sroa.0105.0171, align 2, !tbaa !60
  store i64 %i.fc, ptr %i.ey, align 2, !tbaa !60
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79

bb.ac:                                            ; preds = %.lr.ph123, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.er, align 8, !tbaa !415
  %i.fg = load i8, ptr %i.es, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.fg, -1
  br i1 %.not.i.i57, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.fh, align 8, !tbaa !63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr @.str.34, ptr %i.fi, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !273
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = load i64, ptr %i.v, align 8, !tbaa !344
  %.not37 = icmp ugt i64 %i.fl, %i.fk
  br i1 %.not37, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fm = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fm) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fp = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fq = mul i64 %i.fp, %.0.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fq
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %i.fr, align 1
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0105.0171, i64 %i.fk
  store i64 %.sroa.0.0.copyload.i.i67, ptr %i.fs, align 2, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.ft = add i64 %i.fp, 1                        ; 2 uses
  store i64 %i.ft, ptr %i.b, align 8, !tbaa !181
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !181
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.ac, label %._crit_edge124, !llvm.loop !1132

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.aj ], [ %i.fn, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79

_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.fw = phi ptr [ %i.ez, %bb.w ], [ %i.ez, %bb.x ], [ %i.ez, %bb.y ], [ %i.ew, %.thread ] ; 2 uses
  %i.fx = phi ptr [ %i.ey, %bb.w ], [ %i.ey, %bb.x ], [ %i.ey, %bb.y ], [ null, %.thread ] ; 8 uses
  %i.fy = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread114, label %bb.am

.thread114:                                       ; preds = %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = getelementptr inbounds i8, ptr null, i64 %i.gb ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !329
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayItLm4EESaIS1_EEC2ERKS3_.exit
  %i.gf = icmp ugt i64 %i.gb, 9223372036854775800
  br i1 %i.gf, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc70 unwind label %bb.au

.noexc70:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #32
          to label %.noexc71 unwind label %bb.au  ; 4 uses

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.gg, ptr %0, align 8, !tbaa !327
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gb ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !329
  %i.gk = icmp samesign ugt i64 %i.gb, 8
  br i1 %i.gk, label %bb.an, label %bb.ao, !prof !495

bb.an:                                            ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.gg, ptr align 2 %i.fx, i64 %i.gb, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc71
  %i.gl = icmp eq i64 %i.gb, 8
  br i1 %i.gl, label %.thread115, label %bb.ap

.thread115:                                       ; preds = %bb.ao
  %i.gm = load i64, ptr %i.fx, align 2, !tbaa !60
  store i64 %i.gm, ptr %i.gg, align 2, !tbaa !60
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !326
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gn, align 8, !tbaa !323
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fy, ptr %i.go, align 8, !tbaa !397
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread114
  %i.gp = phi ptr [ %i.gi, %bb.an ], [ %i.gi, %bb.ao ], [ %i.gd, %.thread114 ]
  %i.gq = phi ptr [ %i.gh, %bb.an ], [ %i.gh, %bb.ao ], [ %i.gc, %.thread114 ]
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !326
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gr, align 8, !tbaa !323
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fy, ptr %i.gs, align 8, !tbaa !397
  %.not.i.i.i72 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i72, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread115, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !450
  %.not.i.i73 = icmp eq i8 %i.gu, -1
  br i1 %.not.i.i73, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !60
  %i.gx = icmp ne i8 %i.gw, 1
  %i.gy = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  %or.cond.i.i.i = select i1 %i.gx, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !176
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hd) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i74 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EED2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.he = ptrtoint ptr %.sroa.15.0167 to i64
  %i.hf = sub i64 %i.he, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0171, i64 noundef %i.hf) #31
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EED2Ev.exit75

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i76, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.aa ], [ %i.ff, %bb.ab ], [ %.pn, %bb.al ], [ %i.hg, %bb.at ], [ %i.hh, %bb.au ], [ %i.hh, %bb.av ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !450
  %.not.i.i80 = icmp eq i8 %i.hj, -1
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !60
  %i.hm = icmp ne i8 %i.hl, 1
  %i.hn = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.hn, null
  %or.cond.i.i.i82 = select i1 %i.hm, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  br i1 %or.cond.i.i.i82, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83: ; preds = %bb.aw
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !176
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fd, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEED2Ev.exit79 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i85 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %.thread175, %bb.ax
  %.pn42182 = phi { ptr, i32 } [ %i.cm, %.thread175 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0166181 = phi ptr [ %i.ab, %.thread175 ], [ %.sroa.15.0167, %bb.ax ]
  %.sroa.0105.0170180 = phi ptr [ %i.z, %.thread175 ], [ %.sroa.0105.0171, %bb.ax ] ; 2 uses
  %i.ht = ptrtoint ptr %.sroa.15.0166181 to i64
  %i.hu = ptrtoint ptr %.sroa.0105.0170180 to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0170180, i64 noundef %i.hv) #31
  br label %_ZNSt6vectorISt5arrayItLm4EESaIS1_EED2Ev.exit86

bb.az:                                            ; preds = %bb.g
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.hw, align 8, !tbaa !323
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 8, !tbaa !323 ; 2 uses
  switch i8 %i.hy, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEC2ERKS4_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm4EEEC2ERKS4_.exit

bb.bb:                                            ; preds = %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !326 ; 2 uses
  %i.ib = load ptr, ptr %3, align 8, !tbaa !327   ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ia, %i.ib
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.if = icmp ugt i64 %i.ie, 9223372036854775800
  br i1 %i.if, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #32
          to label %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayItLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !328   ; 2 uses
  %.pre129 = load ptr, ptr %i.hz, align 8, !tbaa !328
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEm:bb.a
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !448, !noalias !1168
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !181
  %.not125 = icmp eq i64 %i.ef, 0
  br i1 %.not125, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge123:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ei = ptrtoint ptr %.0.i.i.i.i.i172 to i64
  %i.ej = ptrtoint ptr %.sroa.0104.0169 to i64    ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i172, %.sroa.0104.0169
  br i1 %.not.i.i.i.i54, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge123
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc55 unwind label %bb.at

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #32
          to label %.noexc56 unwind label %bb.at  ; 5 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek ; 2 uses
  %i.eo = icmp samesign ugt i64 %i.ek, 1
  br i1 %i.eo, label %bb.w, label %bb.y, !prof !495

bb.w:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %.sroa.0104.0169, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.x:                                             ; preds = %._crit_edge123
  %i.ep = getelementptr inbounds i8, ptr null, i64 %i.ek
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.y:                                             ; preds = %.noexc56
  %i.eq = load i8, ptr %.sroa.0104.0169, align 1, !tbaa !60
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !60
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78

bb.ac:                                            ; preds = %.lr.ph122, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.eg, align 8, !tbaa !415
  %i.eu = load i8, ptr %i.eh, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.eu, -1
  br i1 %.not.i.i57, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ev, align 8, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr @.str.34, ptr %i.ew, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJS7_NS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJS3_NS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJS3_NS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ex = load i32, ptr %i.c, align 4, !tbaa !273
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = load i64, ptr %i.v, align 8, !tbaa !344
  %.not36 = icmp ugt i64 %i.ez, %i.ey
  br i1 %.not36, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJS3_NS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.fa = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fa) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIhE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJS3_NS2_ItEENS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.fe = mul i64 %i.fd, %.0.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fe
  %.0.copyload.i.i66 = load i8, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0104.0169, i64 %i.ey
  store i8 %.0.copyload.i.i66, ptr %i.fg, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.fh = add i64 %i.fd, 1                        ; 2 uses
  store i64 %i.fh, ptr %i.b, align 8, !tbaa !181
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !181
  %i.fj = icmp ult i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ac, label %._crit_edge123, !llvm.loop !1165

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.aj ], [ %i.fb, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.y, %bb.w, %bb.x
  %i.fk = phi ptr [ %i.en, %bb.w ], [ %i.ep, %bb.x ], [ %i.en, %bb.y ] ; 2 uses
  %i.fl = phi ptr [ %i.em, %bb.w ], [ null, %bb.x ], [ %i.em, %bb.y ] ; 8 uses
  %i.fm = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc69 unwind label %bb.au

.noexc69:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.fr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #32
          to label %.noexc70 unwind label %bb.au  ; 4 uses

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.fr, ptr %0, align 8, !tbaa !349
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fp ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !358
  %i.fv = icmp samesign ugt i64 %i.fp, 1
  br i1 %i.fv, label %bb.an, label %.thread114, !prof !495

bb.an:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr align 1 %i.fl, i64 %i.fp, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = getelementptr inbounds i8, ptr null, i64 %i.fp ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !358
  br label %bb.ap

.thread114:                                       ; preds = %.noexc70
  %i.fz = load i8, ptr %i.fl, align 1, !tbaa !60
  store i8 %i.fz, ptr %i.fr, align 1, !tbaa !60
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !348
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ga, align 8, !tbaa !346
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fm, ptr %i.gb, align 8, !tbaa !357
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.gc = phi ptr [ %i.ft, %bb.an ], [ %i.fx, %bb.ao ]
  %i.gd = phi ptr [ %i.fs, %bb.an ], [ %i.fw, %bb.ao ]
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !348
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ge, align 8, !tbaa !346
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.fm, ptr %i.gf, align 8, !tbaa !357
  %.not.i.i.i71 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i71, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread114, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !450
  %.not.i.i72 = icmp eq i8 %i.gh, -1
  br i1 %.not.i.i72, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !60
  %i.gk = icmp ne i8 %i.gj, 1
  %i.gl = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gl, null
  %or.cond.i.i.i = select i1 %i.gk, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !176
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i73 = icmp eq ptr %.sroa.0104.0169, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIhSaIhEED2Ev.exit74, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.gr = ptrtoint ptr %.sroa.15.0165 to i64
  %i.gs = sub i64 %i.gr, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0169, i64 noundef %i.gs) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit74

bb.at:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78

bb.au:                                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i75, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78

_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.aa ], [ %i.et, %bb.ab ], [ %.pn, %bb.al ], [ %i.gt, %bb.at ], [ %i.gu, %bb.au ], [ %i.gu, %bb.av ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !450
  %.not.i.i79 = icmp eq i8 %i.gw, -1
  br i1 %.not.i.i79, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !60
  %i.gz = icmp ne i8 %i.gy, 1
  %i.ha = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %i.ha, null
  %or.cond.i.i.i81 = select i1 %i.gz, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80
  br i1 %or.cond.i.i.i81, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82: ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !176
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIhED2Ev.exit78 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i84 = icmp eq ptr %.sroa.0104.0169, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIhSaIhEED2Ev.exit85, label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.pn41179 = phi { ptr, i32 } [ %i.cb, %.thread ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0164178 = phi ptr [ %i.aa, %.thread ], [ %.sroa.15.0165, %bb.ax ]
  %.sroa.0104.0168177 = phi ptr [ %i.y, %.thread ], [ %.sroa.0104.0169, %bb.ax ] ; 2 uses
  %i.hg = ptrtoint ptr %.sroa.15.0164178 to i64
  %i.hh = ptrtoint ptr %.sroa.0104.0168177 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0168177, i64 noundef %i.hi) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit85

bb.az:                                            ; preds = %bb.g
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.hj, align 8, !tbaa !346
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !346 ; 2 uses
  switch i8 %i.hl, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhEC2ERKS2_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIhEC2ERKS2_.exit

bb.bb:                                            ; preds = %bb.az
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !348 ; 2 uses
  %i.ho = load ptr, ptr %3, align 8, !tbaa !349   ; 3 uses
  %i.hp = ptrtoint ptr %i.hn to i64               ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hs = icmp slt i64 %i.hr, 0
  br i1 %i.hs, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #32
          to label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !313   ; 2 uses
  %.pre128 = load ptr, ptr %i.hm, align 8, !tbaa !313
  %.pre130 = ptrtoint ptr %.pre128 to i64
  %.pre131 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

.noexc4.i.i.i.i.i.i.i:                            ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge, %bb.bb
  %.pre-phi132 = phi i64 [ %.pre131, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.hq, %bb.bb ]
  %.pre-phi = phi i64 [ %.pre130, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.hp, %bb.bb ]
  %i.hu = phi ptr [ %.pre, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ %i.ho, %bb.bb ] ; 2 uses
  %i.hv = phi ptr [ %i.ht, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge ], [ null, %bb.bb ] ; 5 uses
  store ptr %i.hv, ptr %0, align 8, !tbaa !349
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hr
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !358
  %i.hz = sub i64 %.pre-phi, %.pre-phi132         ; 4 uses
  %i.ia = icmp sgt i64 %i.hz, 1
  br i1 %i.ia, label %bb.bd, label %bb.be, !prof !320

bb.bd:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hv, ptr align 1 %i.hu, i64 %i.hz, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %.noexc4.i.i.i.i.i.i.i
  %i.ib = icmp eq i64 %i.hz, 1
  br i1 %i.ib, label %bb.bf, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.ic = load i8, ptr %i.hu, align 1, !tbaa !60
  store i8 %i.ic, ptr %i.hv, align 1, !tbaa !60
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhE12BufferSourceESt6vectorIhSaIhEESt5tupleIJEEEEC1ERKSF_EUlOT_T0_E_RKSt7variantIJS9_SC_SE_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SQ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.id = getelementptr inbounds i8, ptr %i.hv, i64 %i.hz
  store ptr %i.id, ptr %i.hw, align 8, !tbaa !348
  %.pre129 = load i8, ptr %i.hk, align 8, !tbaa !346
end_hunk_5
begin_hunk_6_@_ZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.s
  %i.ft = phi i64 [ %i.fb, %bb.s ], [ %i.fl, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.fu = phi i64 [ %i.fi, %bb.s ], [ %i.fs, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ft, i64 noundef %i.fu) #34
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !264, !range !80, !noalias !1184, !noundef !81
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %.val.i.i = load i64, ptr %i.fy, align 8, !noalias !1184
  %.0.i.i = select i1 %i.fx, i64 %.val.i.i, i64 %i.ez
  %i.fz = getelementptr inbounds nuw [80 x i8], ptr %i.fo, i64 %i.fl
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !61, !noalias !1184
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !447, !noalias !1184
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !448, !noalias !1184
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !181
  %.not125 = icmp eq i64 %i.gi, 0
  br i1 %.not125, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.t
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ab

._crit_edge123:                                   ; preds = %bb.aj, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.gl = ptrtoint ptr %.0.i.i.i.i.i173 to i64
  %i.gm = ptrtoint ptr %.sroa.0104.0170 to i64    ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i173, %.sroa.0104.0170
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.u

.thread:                                          ; preds = %._crit_edge123
  %i.go = getelementptr inbounds i8, ptr null, i64 %i.gn
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit

bb.u:                                             ; preds = %._crit_edge123
  %i.gp = icmp ugt i64 %i.gn, 9223372036854775806
  br i1 %i.gp, label %.noexc.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.as

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #32
          to label %.noexc56 unwind label %bb.as  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gn ; 3 uses
  %i.gs = icmp samesign ugt i64 %i.gn, 2
  br i1 %i.gs, label %bb.v, label %bb.w, !prof !495

bb.v:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.gq, ptr align 2 %.sroa.0104.0170, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit

bb.w:                                             ; preds = %.noexc56
  %i.gt = icmp eq i64 %i.gn, 2
  br i1 %i.gt, label %bb.x, label %_ZNSt6vectorItSaItEEC2ERKS1_.exit

bb.x:                                             ; preds = %bb.w
  %i.gu = load i16, ptr %.sroa.0104.0170, align 2, !tbaa !242
  store i16 %i.gu, ptr %i.gq, align 2, !tbaa !242
  br label %_ZNSt6vectorItSaItEEC2ERKS1_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aw

bb.z:                                             ; preds = %bb.o
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78

bb.aa:                                            ; preds = %.invoke, %bb.r, %bb.p
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78

bb.ab:                                            ; preds = %.lr.ph122, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.gj, align 8, !tbaa !415
  %i.gy = load i8, ptr %i.gk, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.gy, -1
  br i1 %.not.i.i57, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gz = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gz, align 8, !tbaa !63
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @.str.34, ptr %i.ha, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEES7_NS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEES3_NS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEES3_NS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hb = load i32, ptr %i.c, align 4, !tbaa !273
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = load i64, ptr %i.v, align 8, !tbaa !344
  %.not36 = icmp ugt i64 %i.hd, %i.hc
  br i1 %.not36, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEES3_NS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.he = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull @.str.24)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.bm unwind label %bb.ai

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.he) #30
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorItE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEES3_NS2_IjEEEEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.hi = mul i64 %i.hh, %.0.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.hi
  %.0.copyload.i.i66 = load i16, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0104.0170, i64 %i.hc
  store i16 %.0.copyload.i.i66, ptr %i.hk, align 2, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hl = add i64 %i.hh, 1                        ; 2 uses
  store i64 %i.hl, ptr %i.b, align 8, !tbaa !181
  %i.hm = load i64, ptr %i.a, align 8, !tbaa !181
  %i.hn = icmp ult i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.ab, label %._crit_edge123, !llvm.loop !1181

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.hg, %bb.ai ], [ %i.hf, %bb.ah ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78

_ZNSt6vectorItSaItEEC2ERKS1_.exit:                ; preds = %bb.x, %bb.w, %bb.v, %.thread
  %i.ho = phi ptr [ %i.gr, %bb.v ], [ %i.gr, %bb.w ], [ %i.gr, %bb.x ], [ %i.go, %.thread ] ; 2 uses
  %i.hp = phi ptr [ %i.gq, %bb.v ], [ %i.gq, %bb.w ], [ %i.gq, %bb.x ], [ null, %.thread ] ; 8 uses
  %i.hq = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread113, label %bb.al

.thread113:                                       ; preds = %_ZNSt6vectorItSaItEEC2ERKS1_.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hv = getelementptr inbounds i8, ptr null, i64 %i.ht ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !240
  br label %bb.ao

bb.al:                                            ; preds = %_ZNSt6vectorItSaItEEC2ERKS1_.exit
  %i.hx = icmp ugt i64 %i.ht, 9223372036854775806
  br i1 %i.hx, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc69 unwind label %bb.at

.noexc69:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #32
          to label %.noexc70 unwind label %bb.at  ; 4 uses

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hy, ptr %0, align 8, !tbaa !238
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ht ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !240
  %i.ic = icmp samesign ugt i64 %i.ht, 2
  br i1 %i.ic, label %bb.am, label %bb.an, !prof !495

bb.am:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.hy, ptr align 2 %i.hp, i64 %i.ht, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %.noexc70
  %i.id = icmp eq i64 %i.ht, 2
  br i1 %i.id, label %.thread114, label %bb.ao

.thread114:                                       ; preds = %bb.an
  %i.ie = load i16, ptr %i.hp, align 2, !tbaa !242
  store i16 %i.ie, ptr %i.hy, align 2, !tbaa !242
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !239
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.if, align 8, !tbaa !360
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hq, ptr %i.ig, align 8, !tbaa !369
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread113
  %i.ih = phi ptr [ %i.ia, %bb.am ], [ %i.ia, %bb.an ], [ %i.hv, %.thread113 ]
  %i.ii = phi ptr [ %i.hz, %bb.am ], [ %i.hz, %bb.an ], [ %i.hu, %.thread113 ]
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !239
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ij, align 8, !tbaa !360
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hq, ptr %i.ik, align 8, !tbaa !369
  %.not.i.i.i71 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i71, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread114, %bb.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit: ; preds = %bb.ap, %bb.ao
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.im = load i8, ptr %i.il, align 8, !tbaa !450
  %.not.i.i72 = icmp eq i8 %i.im, -1
  br i1 %.not.i.i72, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.aq, !prof !318

bb.aq:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.io = load i8, ptr %i.in, align 8, !tbaa !60
  %i.ip = icmp ne i8 %i.io, 1
  %i.iq = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  %or.cond.i.i.i = select i1 %i.ip, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.aq
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !176
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit, %bb.aq, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i73 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorItSaItEED2Ev.exit74, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.iw = ptrtoint ptr %.sroa.15.0166 to i64
  %i.ix = sub i64 %i.iw, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0170, i64 noundef %i.ix) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit74

bb.as:                                            ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78

bb.at:                                            ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i75, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.ht) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78

_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78: ; preds = %bb.au, %bb.at, %bb.as, %bb.ak, %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.z ], [ %i.gx, %bb.aa ], [ %.pn, %bb.ak ], [ %i.iy, %bb.as ], [ %i.iz, %bb.at ], [ %i.iz, %bb.au ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !450
  %.not.i.i79 = icmp eq i8 %i.jb, -1
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !318

bb.av:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !60
  %i.je = icmp ne i8 %i.jd, 1
  %i.jf = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %i.jf, null
  %or.cond.i.i.i81 = select i1 %i.je, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80
  br i1 %or.cond.i.i.i81, label %bb.aw, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82: ; preds = %bb.av
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !176
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.y, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78, %bb.av, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gv, %bb.y ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorItED2Ev.exit78 ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i84 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorItSaItEED2Ev.exit85, label %bb.ax

bb.ax:                                            ; preds = %.thread174, %bb.aw
  %.pn41181 = phi { ptr, i32 } [ %i.ee, %.thread174 ], [ %.pn.pn.pn.pn, %bb.aw ]
  %.sroa.15.0165180 = phi ptr [ %i.ab, %.thread174 ], [ %.sroa.15.0166, %bb.aw ]
  %.sroa.0104.0169179 = phi ptr [ %i.z, %.thread174 ], [ %.sroa.0104.0170, %bb.aw ] ; 2 uses
  %i.jl = ptrtoint ptr %.sroa.15.0165180 to i64
  %i.jm = ptrtoint ptr %.sroa.0104.0169179 to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0169179, i64 noundef %i.jn) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit85

bb.ay:                                            ; preds = %bb.g
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.jo, align 8, !tbaa !360
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !360 ; 2 uses
  switch i8 %i.jq, label %bb.bf [
    i8 0, label %bb.az
    i8 1, label %bb.ba
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorItEC2ERKS2_.exit
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorItEC2ERKS2_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !239 ; 2 uses
  %i.jt = load ptr, ptr %3, align 8, !tbaa !238   ; 3 uses
  %i.ju = ptrtoint ptr %i.js to i64               ; 2 uses
  %i.jv = ptrtoint ptr %i.jt to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jx = icmp ugt i64 %i.jw, 9223372036854775806
  br i1 %i.jx, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #32
          to label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bg

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !361   ; 2 uses
  %.pre129 = load ptr, ptr %i.jr, align 8, !tbaa !361
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.s
  %i.fq = phi i64 [ %i.ey, %bb.s ], [ %i.fi, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.fr = phi i64 [ %i.ff, %bb.s ], [ %i.fp, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.fq, i64 noundef %i.fr) #34
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !264, !range !80, !noalias !1199, !noundef !81
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.val.i.i = load i64, ptr %i.fv, align 8, !noalias !1199
  %.0.i.i = select i1 %i.fu, i64 %.val.i.i, i64 %i.ew
  %i.fw = getelementptr inbounds nuw [80 x i8], ptr %i.fl, i64 %i.fi
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !61, !noalias !1199
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !447, !noalias !1199
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !448, !noalias !1199
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !181
  %.not125 = icmp eq i64 %i.gf, 0
  br i1 %.not125, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.t
  %i.gg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ab

._crit_edge123:                                   ; preds = %bb.aj, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.gi = ptrtoint ptr %.0.i.i.i.i.i173 to i64
  %i.gj = ptrtoint ptr %.sroa.0104.0170 to i64    ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i173, %.sroa.0104.0170
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.u

.thread:                                          ; preds = %._crit_edge123
  %i.gl = getelementptr inbounds i8, ptr null, i64 %i.gk
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.u:                                             ; preds = %._crit_edge123
  %i.gm = icmp ugt i64 %i.gk, 9223372036854775804
  br i1 %i.gm, label %.noexc.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.as

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #32
          to label %.noexc56 unwind label %bb.as  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk ; 3 uses
  %i.gp = icmp samesign ugt i64 %i.gk, 4
  br i1 %i.gp, label %bb.v, label %bb.w, !prof !495

bb.v:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gn, ptr align 4 %.sroa.0104.0170, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.w:                                             ; preds = %.noexc56
  %i.gq = icmp eq i64 %i.gk, 4
  br i1 %i.gq, label %bb.x, label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.x:                                             ; preds = %bb.w
  %i.gr = load i32, ptr %.sroa.0104.0170, align 4, !tbaa !273
  store i32 %i.gr, ptr %i.gn, align 4, !tbaa !273
  br label %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aw

bb.z:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78

bb.aa:                                            ; preds = %.invoke, %bb.r, %bb.p
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78

bb.ab:                                            ; preds = %.lr.ph122, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.gg, align 8, !tbaa !415
  %i.gv = load i8, ptr %i.gh, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.gv, -1
  br i1 %.not.i.i57, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gw, align 8, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr @.str.34, ptr %i.gx, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEES7_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEES3_EEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEES3_EEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gy = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gz = zext i32 %i.gy to i64                   ; 2 uses
  %i.ha = load i64, ptr %i.v, align 8, !tbaa !344
  %.not36 = icmp ugt i64 %i.ha, %i.gz
  br i1 %.not36, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEES3_EEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.hb = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull @.str.24)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.hb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.bm unwind label %bb.ai

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hb) #30
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorIjE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEES3_EEEENSt13invoke_resultIS8_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeES9_DpOSJ_.exit
  %i.he = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.hf = mul i64 %i.he, %.0.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.hf
  %.0.copyload.i.i66 = load i32, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0104.0170, i64 %i.gz
  store i32 %.0.copyload.i.i66, ptr %i.hh, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hi = add i64 %i.he, 1                        ; 2 uses
  store i64 %i.hi, ptr %i.b, align 8, !tbaa !181
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !181
  %i.hk = icmp ult i64 %i.hi, %i.hj
  br i1 %i.hk, label %bb.ab, label %._crit_edge123, !llvm.loop !1196

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.ai ], [ %i.hc, %bb.ah ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78

_ZNSt6vectorIjSaIjEEC2ERKS1_.exit:                ; preds = %bb.x, %bb.w, %bb.v, %.thread
  %i.hl = phi ptr [ %i.go, %bb.v ], [ %i.go, %bb.w ], [ %i.go, %bb.x ], [ %i.gl, %.thread ] ; 2 uses
  %i.hm = phi ptr [ %i.gn, %bb.v ], [ %i.gn, %bb.w ], [ %i.gn, %bb.x ], [ null, %.thread ] ; 8 uses
  %i.hn = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread113, label %bb.al

.thread113:                                       ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hs = getelementptr inbounds i8, ptr null, i64 %i.hq ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !291
  br label %bb.ao

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2ERKS1_.exit
  %i.hu = icmp ugt i64 %i.hq, 9223372036854775804
  br i1 %i.hu, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc69 unwind label %bb.at

.noexc69:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.hv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #32
          to label %.noexc70 unwind label %bb.at  ; 4 uses

.noexc70:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hv, ptr %0, align 8, !tbaa !272
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hq ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !291
  %i.hz = icmp samesign ugt i64 %i.hq, 4
  br i1 %i.hz, label %bb.am, label %bb.an, !prof !495

bb.am:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %i.hm, i64 %i.hq, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %.noexc70
  %i.ia = icmp eq i64 %i.hq, 4
  br i1 %i.ia, label %.thread114, label %bb.ao

.thread114:                                       ; preds = %bb.an
  %i.ib = load i32, ptr %i.hm, align 4, !tbaa !273
  store i32 %i.ib, ptr %i.hv, align 4, !tbaa !273
  store ptr %i.hx, ptr %i.hw, align 8, !tbaa !271
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ic, align 8, !tbaa !371
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hn, ptr %i.id, align 8, !tbaa !380
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread113
  %i.ie = phi ptr [ %i.hx, %bb.am ], [ %i.hx, %bb.an ], [ %i.hs, %.thread113 ]
  %i.if = phi ptr [ %i.hw, %bb.am ], [ %i.hw, %bb.an ], [ %i.hr, %.thread113 ]
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !271
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ig, align 8, !tbaa !371
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hn, ptr %i.ih, align 8, !tbaa !380
  %.not.i.i.i71 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i71, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread114, %bb.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit: ; preds = %bb.ap, %bb.ao
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !450
  %.not.i.i72 = icmp eq i8 %i.ij, -1
  br i1 %.not.i.i72, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.aq, !prof !318

bb.aq:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !60
  %i.im = icmp ne i8 %i.il, 1
  %i.in = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  %or.cond.i.i.i = select i1 %i.im, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.aq
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !176
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit, %bb.aq, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i73 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.it = ptrtoint ptr %.sroa.15.0166 to i64
  %i.iu = sub i64 %i.it, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0170, i64 noundef %i.iu) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78

bb.at:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i75, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78

_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78: ; preds = %bb.au, %bb.at, %bb.as, %bb.ak, %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gt, %bb.z ], [ %i.gu, %bb.aa ], [ %.pn, %bb.ak ], [ %i.iv, %bb.as ], [ %i.iw, %bb.at ], [ %i.iw, %bb.au ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !450
  %.not.i.i79 = icmp eq i8 %i.iy, -1
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !318

bb.av:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !60
  %i.jb = icmp ne i8 %i.ja, 1
  %i.jc = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80 = icmp eq ptr %i.jc, null
  %or.cond.i.i.i81 = select i1 %i.jb, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i80
  br i1 %or.cond.i.i.i81, label %bb.aw, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82: ; preds = %bb.av
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !176
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.y, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78, %bb.av, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gs, %bb.y ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorIjED2Ev.exit78 ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i82 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i84 = icmp eq ptr %.sroa.0104.0170, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIjSaIjEED2Ev.exit85, label %bb.ax

bb.ax:                                            ; preds = %.thread174, %bb.aw
  %.pn41181 = phi { ptr, i32 } [ %i.eb, %.thread174 ], [ %.pn.pn.pn.pn, %bb.aw ]
  %.sroa.15.0165180 = phi ptr [ %i.ab, %.thread174 ], [ %.sroa.15.0166, %bb.aw ]
  %.sroa.0104.0169179 = phi ptr [ %i.z, %.thread174 ], [ %.sroa.0104.0170, %bb.aw ] ; 2 uses
  %i.ji = ptrtoint ptr %.sroa.15.0165180 to i64
  %i.jj = ptrtoint ptr %.sroa.0104.0169179 to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.0169179, i64 noundef %i.jk) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.ay:                                            ; preds = %bb.g
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.jl, align 8, !tbaa !371
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !371 ; 2 uses
  switch i8 %i.jn, label %bb.bf [
    i8 0, label %bb.az
    i8 1, label %bb.ba
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjEC2ERKS2_.exit
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorIjEC2ERKS2_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !271 ; 2 uses
  %i.jq = load ptr, ptr %3, align 8, !tbaa !272   ; 3 uses
  %i.jr = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jt = sub i64 %i.jr, %i.js                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jp, %i.jq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = icmp ugt i64 %i.jt, 9223372036854775804
  br i1 %i.ju, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.jv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #32
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bg

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !372   ; 2 uses
  %.pre129 = load ptr, ptr %i.jo, align 8, !tbaa !372
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEm:bb.a
  %i.eb = phi i64 [ %i.dp, %bb.t ], [ %i.dz, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ea, i64 noundef %i.eb) #34
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !264, !range !80, !noalias !1786, !noundef !81
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %.val.i.i = load i64, ptr %i.ef, align 8, !noalias !1786
  %.0.i.i = select i1 %i.ee, i64 %.val.i.i, i64 %i.dg
  %i.eg = getelementptr inbounds nuw [80 x i8], ptr %i.dv, i64 %i.ds
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !61, !noalias !1786
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !447, !noalias !1786
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.en = load i64, ptr %i.em, align 8, !tbaa !448, !noalias !1786
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !181
  %.not135 = icmp eq i64 %i.ep, 0
  br i1 %.not135, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge133:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
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
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc56 unwind label %bb.at

.noexc56:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #32
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.eq, align 8, !tbaa !415
  %i.fe = load i8, ptr %i.er, align 8, !tbaa !450
  %.not.i.i58 = icmp eq i8 %i.fe, -1
  br i1 %.not.i.i58, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ff, align 8, !tbaa !63
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @.str.34, ptr %i.fg, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fh = load i32, ptr %i.c, align 4, !tbaa !273
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load i64, ptr %i.v, align 8, !tbaa !344
  %.not38 = icmp ugt i64 %i.fj, %i.fi
  br i1 %.not38, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.fk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fk) #30
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.fr = add i64 %i.fn, 1                        ; 2 uses
  store i64 %i.fr, ptr %i.b, align 8, !tbaa !181
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !181
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.ac, label %._crit_edge133, !llvm.loop !1785

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.aj ], [ %i.fl, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
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
  store i64 0, ptr %0, align 8
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !400
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EEC2ERKS3_.exit
  %i.gd = icmp ugt i64 %i.fz, 9223372036854775792
  br i1 %i.gd, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc78 unwind label %bb.au

.noexc78:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
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
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fz) #31
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
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i82 = icmp eq ptr %.sroa.0113.0180, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit83, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.hb = ptrtoint ptr %.sroa.15.0176 to i64
  %i.hc = sub i64 %i.hb, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0180, i64 noundef %i.hc) #31
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
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fz) #31
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
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIfLm4EEED2Ev.exit87 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i93 = icmp eq ptr %.sroa.0113.0180, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorISt5arrayIfLm4EESaIS1_EED2Ev.exit94, label %bb.ay

bb.ay:                                            ; preds = %.thread184, %bb.ax
  %.pn43191 = phi { ptr, i32 } [ %i.cl, %.thread184 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0175190 = phi ptr [ %i.aa, %.thread184 ], [ %.sroa.15.0176, %bb.ax ]
  %.sroa.0113.0179189 = phi ptr [ %i.z, %.thread184 ], [ %.sroa.0113.0180, %bb.ax ] ; 2 uses
  %i.hq = ptrtoint ptr %.sroa.15.0175190 to i64
  %i.hr = ptrtoint ptr %.sroa.0113.0179189 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0179189, i64 noundef %i.hs) #31
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
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ic = icmp ugt i64 %i.ib, 9223372036854775792
  br i1 %i.ic, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #32
          to label %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIfLm4EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !399   ; 2 uses
  %.pre138 = load ptr, ptr %i.hw, align 8, !tbaa !399
  %.pre140 = ptrtoint ptr %.pre138 to i64
  %.pre141 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.s
  %i.fj = phi i64 [ %i.er, %bb.s ], [ %i.fb, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.fk = phi i64 [ %i.ey, %bb.s ], [ %i.fi, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.fj, i64 noundef %i.fk) #34
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !264, !range !80, !noalias !1869, !noundef !81
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.val.i.i = load i64, ptr %i.fo, align 8, !noalias !1869
  %.0.i.i = select i1 %i.fn, i64 %.val.i.i, i64 %i.ep
  %i.fp = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %i.fb
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !61, !noalias !1869
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !447, !noalias !1869
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !448, !noalias !1869
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.fy = load i64, ptr %i.a, align 8, !tbaa !181
  %.not126 = icmp eq i64 %i.fy, 0
  br i1 %.not126, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.t
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ab

._crit_edge124:                                   ; preds = %bb.aj, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.gb = ptrtoint ptr %.0.i.i.i.i.i174 to i64
  %i.gc = ptrtoint ptr %.sroa.0105.0171 to i64    ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i174, %.sroa.0105.0171
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.u

.thread:                                          ; preds = %._crit_edge124
  %i.ge = getelementptr inbounds i8, ptr null, i64 %i.gd
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit

bb.u:                                             ; preds = %._crit_edge124
  %i.gf = icmp ugt i64 %i.gd, 9223372036854775806
  br i1 %i.gf, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.as

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #32
          to label %.noexc56 unwind label %bb.as  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gd ; 3 uses
  %i.gi = icmp samesign ugt i64 %i.gd, 2
  br i1 %i.gi, label %bb.v, label %bb.w, !prof !495

bb.v:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gg, ptr align 1 %.sroa.0105.0171, i64 %i.gd, i1 false)
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit

bb.w:                                             ; preds = %.noexc56
  %i.gj = icmp eq i64 %i.gd, 2
  br i1 %i.gj, label %bb.x, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %bb.w
  %i.gk = load i16, ptr %.sroa.0105.0171, align 1, !tbaa !60
  store i16 %i.gk, ptr %i.gg, align 1, !tbaa !60
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aw

bb.z:                                             ; preds = %bb.o
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79

bb.aa:                                            ; preds = %.invoke, %bb.r, %bb.p
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79

bb.ab:                                            ; preds = %.lr.ph123, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.fz, align 8, !tbaa !415
  %i.go = load i8, ptr %i.ga, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.go, -1
  br i1 %.not.i.i57, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gp = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gp, align 8, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr @.str.34, ptr %i.gq, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gp, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gr = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = load i64, ptr %i.v, align 8, !tbaa !344
  %.not37 = icmp ugt i64 %i.gt, %i.gs
  br i1 %.not37, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gu = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull @.str.24)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.gu, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %bb.bm unwind label %bb.ai

.loopexit:                                        ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gu) #30
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.gy = mul i64 %i.gx, %.0.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gy
  %.sroa.0.0.copyload.i.i67 = load i16, ptr %i.gz, align 1
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0105.0171, i64 %i.gs
  store i16 %.sroa.0.0.copyload.i.i67, ptr %i.ha, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hb = add i64 %i.gx, 1                        ; 2 uses
  store i64 %i.hb, ptr %i.b, align 8, !tbaa !181
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !181
  %i.hd = icmp ult i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.ab, label %._crit_edge124, !llvm.loop !1866

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.gw, %bb.ai ], [ %i.gv, %bb.ah ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79

_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.thread
  %i.he = phi ptr [ %i.gh, %bb.v ], [ %i.gh, %bb.w ], [ %i.gh, %bb.x ], [ %i.ge, %.thread ] ; 2 uses
  %i.hf = phi ptr [ %i.gg, %bb.v ], [ %i.gg, %bb.w ], [ %i.gg, %bb.x ], [ null, %.thread ] ; 8 uses
  %i.hg = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread114, label %bb.al

.thread114:                                       ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = getelementptr inbounds i8, ptr null, i64 %i.hj ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !542
  br label %bb.ao

bb.al:                                            ; preds = %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EEC2ERKS3_.exit
  %i.hn = icmp ugt i64 %i.hj, 9223372036854775806
  br i1 %i.hn, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc70 unwind label %bb.at

.noexc70:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #32
          to label %.noexc71 unwind label %bb.at  ; 4 uses

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ho, ptr %0, align 8, !tbaa !540
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hj ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !542
  %i.hs = icmp samesign ugt i64 %i.hj, 2
  br i1 %i.hs, label %bb.am, label %bb.an, !prof !495

bb.am:                                            ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr align 1 %i.hf, i64 %i.hj, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %.noexc71
  %i.ht = icmp eq i64 %i.hj, 2
  br i1 %i.ht, label %.thread115, label %bb.ao

.thread115:                                       ; preds = %bb.an
  %i.hu = load i16, ptr %i.hf, align 1, !tbaa !60
  store i16 %i.hu, ptr %i.ho, align 1, !tbaa !60
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !539
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hv, align 8, !tbaa !536
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hg, ptr %i.hw, align 8, !tbaa !550
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread114
  %i.hx = phi ptr [ %i.hq, %bb.am ], [ %i.hq, %bb.an ], [ %i.hl, %.thread114 ]
  %i.hy = phi ptr [ %i.hp, %bb.am ], [ %i.hp, %bb.an ], [ %i.hk, %.thread114 ]
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !539
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hz, align 8, !tbaa !536
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.hg, ptr %i.ia, align 8, !tbaa !550
  %.not.i.i.i72 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i72, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %.thread115, %bb.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit: ; preds = %bb.ap, %bb.ao
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !450
  %.not.i.i73 = icmp eq i8 %i.ic, -1
  br i1 %.not.i.i73, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.aq, !prof !318

bb.aq:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !60
  %i.if = icmp ne i8 %i.ie, 1
  %i.ig = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ig, null
  %or.cond.i.i.i = select i1 %i.if, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.aq
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !176
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit, %bb.aq, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i74 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.im = ptrtoint ptr %.sroa.15.0167 to i64
  %i.in = sub i64 %i.im, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0171, i64 noundef %i.in) #31
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit75

bb.as:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i76, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79: ; preds = %bb.au, %bb.at, %bb.as, %bb.ak, %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.z ], [ %i.gn, %bb.aa ], [ %.pn, %bb.ak ], [ %i.io, %bb.as ], [ %i.ip, %bb.at ], [ %i.ip, %bb.au ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !450
  %.not.i.i80 = icmp eq i8 %i.ir, -1
  br i1 %.not.i.i80, label %bb.aw, label %bb.av, !prof !318

bb.av:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.it = load i8, ptr %i.is, align 8, !tbaa !60
  %i.iu = icmp ne i8 %i.it, 1
  %i.iv = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.iv, null
  %or.cond.i.i.i82 = select i1 %i.iu, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  br i1 %or.cond.i.i.i82, label %bb.aw, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83: ; preds = %bb.av
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !176
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.y, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79, %bb.av, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.y ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEED2Ev.exit79 ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i85 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86, label %bb.ax

bb.ax:                                            ; preds = %.thread175, %bb.aw
  %.pn42182 = phi { ptr, i32 } [ %i.du, %.thread175 ], [ %.pn.pn.pn.pn, %bb.aw ]
  %.sroa.15.0166181 = phi ptr [ %i.ab, %.thread175 ], [ %.sroa.15.0167, %bb.aw ]
  %.sroa.0105.0170180 = phi ptr [ %i.z, %.thread175 ], [ %.sroa.0105.0171, %bb.aw ] ; 2 uses
  %i.jb = ptrtoint ptr %.sroa.15.0166181 to i64
  %i.jc = ptrtoint ptr %.sroa.0105.0170180 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0170180, i64 noundef %i.jd) #31
  br label %_ZNSt6vectorISt5arrayIhLm2EESaIS1_EED2Ev.exit86

bb.ay:                                            ; preds = %bb.g
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.je, align 8, !tbaa !536
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !536 ; 2 uses
  switch i8 %i.jg, label %bb.bf [
    i8 0, label %bb.az
    i8 1, label %bb.ba
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEC2ERKS4_.exit
  ]

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayIhLm2EEEC2ERKS4_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !539 ; 2 uses
  %i.jj = load ptr, ptr %3, align 8, !tbaa !540   ; 3 uses
  %i.jk = ptrtoint ptr %i.ji to i64               ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ji, %i.jj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jn = icmp ugt i64 %i.jm, 9223372036854775806
  br i1 %i.jn, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #32
          to label %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bg

_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayIhLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !541   ; 2 uses
  %.pre129 = load ptr, ptr %i.jh, align 8, !tbaa !541
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_9
begin_hunk_10_@_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEm:bb.a

.invoke:                                          ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i, %bb.t
  %i.ex = phi i64 [ %i.ef, %bb.t ], [ %i.ep, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  %i.ey = phi i64 [ %i.em, %bb.t ], [ %i.ew, %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.ex, i64 noundef %i.ey) #34
          to label %.cont unwind label %bb.ab

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNKSt6vectorIN10tiniergltf10BufferViewESaIS1_EE2atEm.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.fa = load i8, ptr %i.ez, align 8, !tbaa !264, !range !80, !noalias !1886, !noundef !81
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.val.i.i = load i64, ptr %i.fc, align 8, !noalias !1886
  %.0.i.i = select i1 %i.fb, i64 %.val.i.i, i64 %i.ed
  %i.fd = getelementptr inbounds nuw [80 x i8], ptr %i.es, i64 %i.ep
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !61, !noalias !1886
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !447, !noalias !1886
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !448, !noalias !1886
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 0, ptr %i.b, align 8, !tbaa !181
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !181
  %.not126 = icmp eq i64 %i.fm, 0
  br i1 %.not126, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.ac

._crit_edge124:                                   ; preds = %bb.ak, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.fp = ptrtoint ptr %.0.i.i.i.i.i174 to i64
  %i.fq = ptrtoint ptr %.sroa.0105.0171 to i64    ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 7 uses
  %.not.i.i.i.i54 = icmp eq ptr %.0.i.i.i.i.i174, %.sroa.0105.0171
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.v

.thread:                                          ; preds = %._crit_edge124
  %i.fs = getelementptr inbounds i8, ptr null, i64 %i.fr
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit

bb.v:                                             ; preds = %._crit_edge124
  %i.ft = icmp ugt i64 %i.fr, 9223372036854775804
  br i1 %i.ft, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i, !prof !318

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc55 unwind label %bb.at

.noexc55:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #32
          to label %.noexc56 unwind label %bb.at  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr ; 3 uses
  %i.fw = icmp samesign ugt i64 %i.fr, 4
  br i1 %i.fw, label %bb.w, label %bb.x, !prof !495

bb.w:                                             ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fu, ptr align 2 %.sroa.0105.0171, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit

bb.x:                                             ; preds = %.noexc56
  %i.fx = icmp eq i64 %i.fr, 4
  br i1 %i.fx, label %bb.y, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit

bb.y:                                             ; preds = %bb.x
  %i.fy = load i32, ptr %.sroa.0105.0171, align 2, !tbaa !60
  store i32 %i.fy, ptr %i.fu, align 2, !tbaa !60
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit

bb.z:                                             ; preds = %._crit_edge
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ax

bb.aa:                                            ; preds = %bb.p
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79

bb.ab:                                            ; preds = %.invoke, %bb.s, %bb.q
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79

bb.ac:                                            ; preds = %.lr.ph123, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.c, ptr %6, align 8, !tbaa !372
  store ptr %i.b, ptr %i.fn, align 8, !tbaa !415
  %i.gc = load i8, ptr %i.fo, align 8, !tbaa !450
  %.not.i.i57 = icmp eq i8 %i.gc, -1
  br i1 %.not.i.i57, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gd = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.gd, align 8, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr @.str.34, ptr %i.ge, align 8, !tbaa !332
  invoke void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS6_IhEENS6_ItEENS6_IjEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(41) %4)
          to label %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit unwind label %.loopexit

_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gf = load i32, ptr %i.c, align 4, !tbaa !273
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = load i64, ptr %i.v, align 8, !tbaa !344
  %.not37 = icmp ugt i64 %i.gh, %i.gg
  br i1 %.not37, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gi = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull @.str.24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr nonnull %i.gi, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.al

bb.ai:                                            ; preds = %bb.af
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gi) #30
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZSt5visitIZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEE4makeERKN10tiniergltf4GlTFEmEUlOT_E_JRKSt7variantIJNS2_IhEENS2_ItEENS2_IjEEEEEENSt13invoke_resultISA_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeESB_DpOSM_.exit
  %i.gl = load i64, ptr %i.b, align 8, !tbaa !181 ; 2 uses
  %i.gm = mul i64 %i.gl, %.0.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gm
  %.sroa.0.0.copyload.i.i67 = load i32, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0171, i64 %i.gg
  store i32 %.sroa.0.0.copyload.i.i67, ptr %i.go, align 2, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gp = add i64 %i.gl, 1                        ; 2 uses
  store i64 %i.gp, ptr %i.b, align 8, !tbaa !181
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !181
  %i.gr = icmp ult i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ac, label %._crit_edge124, !llvm.loop !1883

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.aj ], [ %i.gj, %bb.ai ], [ %lpad.phi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79

_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit: ; preds = %bb.y, %bb.x, %bb.w, %.thread
  %i.gs = phi ptr [ %i.fv, %bb.w ], [ %i.fv, %bb.x ], [ %i.fv, %bb.y ], [ %i.fs, %.thread ] ; 2 uses
  %i.gt = phi ptr [ %i.fu, %bb.w ], [ %i.fu, %bb.x ], [ %i.fu, %bb.y ], [ null, %.thread ] ; 8 uses
  %i.gu = load i64, ptr %i.v, align 8, !tbaa !344 ; 2 uses
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread114, label %bb.am

.thread114:                                       ; preds = %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gz = getelementptr inbounds i8, ptr null, i64 %i.gx ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %0, align 8
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !558
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt6vectorISt5arrayItLm2EESaIS1_EEC2ERKS3_.exit
  %i.hb = icmp ugt i64 %i.gx, 9223372036854775804
  br i1 %i.hb, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.am
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc70 unwind label %bb.au

.noexc70:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #32
          to label %.noexc71 unwind label %bb.au  ; 4 uses

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.hc, ptr %0, align 8, !tbaa !556
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gx ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !558
  %i.hg = icmp samesign ugt i64 %i.gx, 4
  br i1 %i.hg, label %bb.an, label %bb.ao, !prof !495

bb.an:                                            ; preds = %.noexc71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.hc, ptr align 2 %i.gt, i64 %i.gx, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc71
  %i.hh = icmp eq i64 %i.gx, 4
  br i1 %i.hh, label %.thread115, label %bb.ap

.thread115:                                       ; preds = %bb.ao
  %i.hi = load i32, ptr %i.gt, align 2, !tbaa !60
  store i32 %i.hi, ptr %i.hc, align 2, !tbaa !60
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !555
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hj, align 8, !tbaa !552
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gu, ptr %i.hk, align 8, !tbaa !566
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread114
  %i.hl = phi ptr [ %i.he, %bb.an ], [ %i.he, %bb.ao ], [ %i.gz, %.thread114 ]
  %i.hm = phi ptr [ %i.hd, %bb.an ], [ %i.hd, %bb.ao ], [ %i.gy, %.thread114 ]
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !555
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.hn, align 8, !tbaa !552
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.gu, ptr %i.ho, align 8, !tbaa !566
  %.not.i.i.i72 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i72, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread115, %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit: ; preds = %bb.aq, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !450
  %.not.i.i73 = icmp eq i8 %i.hq, -1
  br i1 %.not.i.i73, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %bb.ar, !prof !318

bb.ar:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !60
  %i.ht = icmp ne i8 %i.hs, 1
  %i.hu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hu, null
  %or.cond.i.i.i = select i1 %i.ht, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i: ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !176
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #31
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit: ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit, %bb.ar, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i74 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EED2Ev.exit75, label %bb.as

bb.as:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS4_ItEENS4_IjEEEED2Ev.exit
  %i.ia = ptrtoint ptr %.sroa.15.0167 to i64
  %i.ib = sub i64 %i.ia, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0171, i64 noundef %i.ib) #31
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EED2Ev.exit75

bb.at:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i76, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #31
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79

_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79: ; preds = %bb.av, %bb.au, %bb.at, %bb.al, %bb.ab, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.aa ], [ %i.gb, %bb.ab ], [ %.pn, %bb.al ], [ %i.ic, %bb.at ], [ %i.id, %bb.au ], [ %i.id, %bb.av ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !450
  %.not.i.i80 = icmp eq i8 %i.if, -1
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw, !prof !318

bb.aw:                                            ; preds = %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !60
  %i.ii = icmp ne i8 %i.ih, 1
  %i.ij = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 = icmp eq ptr %i.ij, null
  %or.cond.i.i.i82 = select i1 %i.ii, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  br i1 %or.cond.i.i.i82, label %bb.ax, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83: ; preds = %bb.aw
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !176
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.z, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79, %bb.aw, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fz, %bb.z ], [ %.pn.pn.pn, %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEED2Ev.exit79 ], [ %.pn.pn.pn, %bb.aw ], [ %.pn.pn.pn, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN5scene19CGLTFMeshFileLoader8AccessorIhEENS6_ItEENS6_IjEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S8_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit.sink.split.i.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i.i.i85 = icmp eq ptr %.sroa.0105.0171, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EED2Ev.exit86, label %bb.ay

bb.ay:                                            ; preds = %.thread175, %bb.ax
  %.pn42182 = phi { ptr, i32 } [ %i.di, %.thread175 ], [ %.pn.pn.pn.pn, %bb.ax ]
  %.sroa.15.0166181 = phi ptr [ %i.ab, %.thread175 ], [ %.sroa.15.0167, %bb.ax ]
  %.sroa.0105.0170180 = phi ptr [ %i.z, %.thread175 ], [ %.sroa.0105.0171, %bb.ax ] ; 2 uses
  %i.ip = ptrtoint ptr %.sroa.15.0166181 to i64
  %i.iq = ptrtoint ptr %.sroa.0105.0170180 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0105.0170180, i64 noundef %i.ir) #31
  br label %_ZNSt6vectorISt5arrayItLm2EESaIS1_EED2Ev.exit86

bb.az:                                            ; preds = %bb.g
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.is, align 8, !tbaa !552
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !552 ; 2 uses
  switch i8 %i.iu, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEC2ERKS4_.exit
  ]

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false), !tbaa.struct !381
  br label %_ZN5scene19CGLTFMeshFileLoader8AccessorISt5arrayItLm2EEEC2ERKS4_.exit

bb.bb:                                            ; preds = %bb.az
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !555 ; 2 uses
  %i.ix = load ptr, ptr %3, align 8, !tbaa !556   ; 3 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jb = icmp ugt i64 %i.ja, 9223372036854775804
  br i1 %i.jb, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !318

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bh

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #32
          to label %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge unwind label %bb.bh

_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc4.i.i.i.i.i.i.i_crit_edge: ; preds = %_ZNSt15__new_allocatorISt5arrayItLm2EEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !557   ; 2 uses
  %.pre129 = load ptr, ptr %i.iv, align 8, !tbaa !557
  %.pre131 = ptrtoint ptr %.pre129 to i64
  %.pre132 = ptrtoint ptr %.pre to i64
  br label %.noexc4.i.i.i.i.i.i.i
end_hunk_10
