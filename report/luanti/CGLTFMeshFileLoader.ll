Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGLTFMeshFileLoader?download=true
inline.NumInlined: 12819
inline.NumDeleted: 6981
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN10tiniergltf4GlTFD2Ev:bb.a
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83: ; preds = %bb.am
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !15
  %i.jz = add i64 %i.jy, 1
  tail call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #31
  br label %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83, %.lr.ph.i.i.i.i.i.i.i78
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i79, i64 88 ; 2 uses
  %.not.i.i.i.i.i.i.i80 = icmp eq ptr %i.ka, %i.jq
  br i1 %.not.i.i.i.i.i.i.i80, label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i78, !llvm.loop !217

_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN10tiniergltf10BufferViewEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i81 = load ptr, ptr %i.jk, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.al
  %i.kb = phi ptr [ %.pr.i.i.i.i.i81, %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.jo, %bb.al ] ; 3 uses
  %.not.i.i1.i.i.i.i.i82 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i1.i.i.i.i.i82, label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf10BufferViewESaIS2_EELb0ELb0EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !72
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #31
  br label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf10BufferViewESaIS2_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN10tiniergltf10BufferViewESaIS2_EELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf6BufferESaIS2_EELb0ELb0EED2Ev.exit, %_ZSt8_DestroyIPN10tiniergltf10BufferViewES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, %bb.an
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf10BufferViewESaIS2_EELb0ELb0EED2Ev.exit
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !15
  %i.kn = add i64 %i.km, 1
  tail call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf10BufferViewESaIS2_EELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !66, !range !54, !noundef !55
  %i.kq = trunc nuw i8 %i.kp to i1
  store i8 0, ptr %i.ko, align 8, !tbaa !66
  br i1 %i.kq, label %bb.ao, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !15
  %i.kw = add i64 %i.kv, 1
  tail call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 8, !tbaa !66, !range !54, !noundef !55
  %i.kz = trunc nuw i8 %i.ky to i1
  store i8 0, ptr %i.kx, align 8, !tbaa !66
  br i1 %i.kz, label %bb.ap, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

bb.ap:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !16 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %bb.ap
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !15
  %i.lf = add i64 %i.le, 1
  tail call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #31
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !66, !range !54, !noundef !55
  %i.li = trunc nuw i8 %i.lh to i1
  store i8 0, ptr %i.lg, align 8, !tbaa !66
  br i1 %i.li, label %bb.aq, label %_ZN10tiniergltf5AssetD2Ev.exit

bb.aq:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i
  %i.lj = load ptr, ptr %i.kh, align 8, !tbaa !16 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZN10tiniergltf5AssetD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i: ; preds = %bb.aq
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !15
  %i.ln = add i64 %i.lm, 1
  tail call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #31
  br label %_ZN10tiniergltf5AssetD2Ev.exit

_ZN10tiniergltf5AssetD2Ev.exit:                   ; preds = %bb.aq, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i4.i
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !60, !range !54, !noundef !55
  %i.lq = trunc nuw i8 %i.lp to i1
  store i8 0, ptr %i.lo, align 8, !tbaa !60
  br i1 %i.lq, label %bb.ar, label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit

bb.ar:                                            ; preds = %_ZN10tiniergltf5AssetD2Ev.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt6vectorIN10tiniergltf9AnimationESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.lr) #30
  br label %_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIN10tiniergltf9AnimationESaIS2_EELb0ELb0EED2Ev.exit: ; preds = %_ZN10tiniergltf5AssetD2Ev.exit, %bb.ar
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !52, !range !54, !noundef !55
  %i.lu = trunc nuw i8 %i.lt to i1
  store i8 0, ptr %i.ls, align 8, !tbaa !52
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
  %6 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor", align 8 ; 10 uses
  %7 = alloca %"class.scene::CGLTFMeshFileLoader::Accessor.472", align 8 ; 10 uses
  %8 = alloca %"class.std::optional.260", align 8 ; 13 uses
  %9 = alloca %"class.std::optional.305", align 8 ; 13 uses
  %10 = alloca %"class.std::variant.426", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor11getVerticesERKN10tiniergltf13MeshPrimitiveE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.260") align 8 %8, ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !218, !range !54, !noundef !55
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseISt6vectorIN5video9S3DVertexESaIS2_EELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220  ; 4 uses
  %i.g = load ptr, ptr %8, align 8, !tbaa !223    ; 4 uses
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
          to label %bb.dt unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #30
  br label %.thread689

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread689

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNK5scene19CGLTFMeshFileLoader13MeshExtractor10getIndicesERKN10tiniergltf13MeshPrimitiveE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.305") align 8 %9, ptr noundef nonnull align 8 dereferenceable(784) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !224, !range !54, !noundef !55 ; 5 uses
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt6vectorItSaItEEaSEOS1_.exit, label %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorItSaItEEaSEOS1_.exit:                 ; preds = %bb.h
  %i.r = load ptr, ptr %9, align 8, !tbaa !226    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !229  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !230  ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not45.i = icmp eq ptr %i.r, %i.t
  br i1 %.not45.i, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 2 ; 2 uses
  %.not4.i = icmp eq ptr %i.w, %i.t
  br i1 %.not4.i, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorItSaItEEaSEOS1_.exit, %bb.i
  %.sroa.01.06.i = phi ptr [ %i.w, %bb.i ], [ %i.r, %_ZNSt6vectorItSaItEEaSEOS1_.exit ] ; 2 uses
  %i.x = load i16, ptr %.sroa.01.06.i, align 2, !tbaa !231
  %12 = zext i16 %i.x to i64
  %.not.i = icmp ugt i64 %i.k, %12
  br i1 %.not.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.24)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #34
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #30
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.h
  %.not.i.i.i.i.i89 = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i89, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, label %.noexc12.i

.noexc12.i:                                       ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ac = shl nuw nsw i64 %i.k, 1
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #32
          to label %.noexc92 unwind label %bb.p   ; 7 uses

.noexc92:                                         ; preds = %.noexc12.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.k
  store i16 0, ptr %i.ad, align 2, !tbaa !231, !noalias !233
  %i.af = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %i.ag = add nsw i64 %i.k, -1                    ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i90, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc92
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ag, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !231, !noalias !233
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc92
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ai, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.af, %.noexc92 ]
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i90
  %.013.i = phi i64 [ 0, %.lr.ph.i90 ], [ %i.ar, %bb.o ] ; 5 uses
  %i.aj = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %i.ak = trunc nuw i64 %i.aj to i16
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.013.i
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !231, !noalias !233
  %i.am = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.an = trunc nuw i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.am
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !231, !noalias !233
  %i.ap = trunc nuw i64 %.013.i to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.aj
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !231, !noalias !233
  %i.ar = add nuw nsw i64 %.013.i, 3              ; 2 uses
  %i.as = icmp samesign ult i64 %i.ar, %i.k
  br i1 %i.as, label %bb.o, label %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit, !llvm.loop !236

bb.p:                                             ; preds = %.noexc12.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit175

_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit: ; preds = %bb.o, %bb.i, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt6vectorItSaItEEaSEOS1_.exit
  %.sroa.17.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.v, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.v, %bb.i ], [ %i.ae, %bb.o ] ; 3 uses
  %.sroa.13.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.t, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.t, %bb.i ], [ %.0.i.i.i.i.i.ph.i, %bb.o ]
  %.sroa.0218.0 = phi ptr [ null, %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.r, %_ZNSt6vectorItSaItEEaSEOS1_.exit ], [ %i.r, %bb.i ], [ %i.ad, %bb.o ] ; 3 uses
  %i.au = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #32
          to label %bb.q unwind label %bb.am      ; 7 uses

bb.q:                                             ; preds = %_ZN5sceneL12checkIndicesERKSt6vectorItSaItEEm.exit
  invoke void @_ZN5scene15SSkinMeshBufferC1EN5video13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(288) %i.au, i32 noundef 0)
          to label %.noexc95 unwind label %bb.an

.noexc95:                                         ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !237 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !223 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !255
  store ptr %i.g, ptr %i.ax, align 8, !tbaa !223
  store ptr %i.f, ptr %i.az, align 8, !tbaa !220
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !255
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !255
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i, label %bb.r

bb.r:                                             ; preds = %.noexc95
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ay to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bg) #31
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.r, %.noexc95
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !256 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !226 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !230
  store ptr %.sroa.0218.0, ptr %i.bj, align 8, !tbaa !226
  store ptr %.sroa.13.0, ptr %i.bl, align 8, !tbaa !229
  store ptr %.sroa.17.0, ptr %i.bm, align 8, !tbaa !230
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bq) #31
  br label %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit

_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit: ; preds = %bb.s, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EEaSEOS3_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.bs = invoke noundef i32 @_ZN5scene18SkinnedMeshBuilder13addMeshBufferEPNS_15SSkinMeshBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull %i.au)
          to label %bb.t unwind label %bb.ao      ; 4 uses

bb.t:                                             ; preds = %_ZN5scene15SSkinMeshBufferC1EOSt6vectorIN5video9S3DVertexESaIS3_EEOS1_ItSaItEE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !257, !range !54, !noundef !55
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.u, label %bb.au

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !156 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !201
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !200 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 272               ; 2 uses
  %.not.i.i = icmp ult i64 %i.by, %i.cf
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.by, i64 noundef %i.cf) #34
          to label %.noexc96 unwind label %bb.ap

.noexc96:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [272 x i8], ptr %i.cb, i64 %i.by ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 264
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !259, !range !54, !noundef !55
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.x, label %bb.au

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !261, !range !54, !noundef !55
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.y, label %bb.au

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 200
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !263 ; 4 uses
  %i.cp = load ptr, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = zext i32 %i.bs to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !265
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !266 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 2                 ; 2 uses
  %.not.i.i.i97 = icmp ugt i64 %i.cy, %i.cr
  br i1 %.not.i.i.i97, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.28, i64 noundef %i.cr, i64 noundef %i.cy) #34
          to label %.noexc98 unwind label %bb.aq

end_hunk_0
