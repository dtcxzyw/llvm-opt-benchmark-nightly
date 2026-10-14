Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13glTF2Exporter10ExportNodeEPK6aiNodeRN10glTFCommon3RefIN5glTF24NodeEEE:bb.a
.noexc84:                                         ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ly ; 2 uses
  store ptr %i.ln, ptr %i.mh, align 8
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %i.li, ptr %.sroa.6.0..sroa_idx89, align 8
  %.not10.i.i.i.i.i76 = icmp eq ptr %i.lv, %i.lq
  br i1 %.not10.i.i.i.i.i76, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.noexc84, %.lr.ph.i.i.i.i.i77
  %.012.i.i.i.i.i78 = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i77 ], [ %i.mg, %.noexc84 ] ; 2 uses
  %.0911.i.i.i.i.i79 = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i77 ], [ %i.lv, %.noexc84 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i79, i64 16, i1 false), !alias.scope !224
  %i.mi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i79, i64 16 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i78, i64 16 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.mi, %i.lq
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i77, !llvm.loop !1

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i77, %.noexc84
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.mg, %.noexc84 ], [ %i.mj, %.lr.ph.i.i.i.i.i77 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i81, i64 16
  %.not.i23.i.i82 = icmp eq ptr %i.lv, null
  br i1 %.not.i23.i.i82, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.ml = load ptr, ptr %i.lr, align 8
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = sub i64 %i.mm, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.mn) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.mg, ptr %i.lo, align 8
  store ptr %i.mk, ptr %i.lp, align 8
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.me
  store ptr %i.mo, ptr %i.lr, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ah
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.mp = load i32, ptr %i.bj, align 8
  %i.mq = zext i32 %i.mp to i64
  %i.mr = icmp samesign ult i64 %indvars.iv.next121, %i.mq
  br i1 %i.mr, label %bb.af, label %._crit_edge, !llvm.loop !220

bb.al:                                            ; preds = %bb.af
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit107, %.loopexit.split-lp108, %bb.al, %bb.u, %bb.j
  %.pn47 = phi { ptr, i32 } [ %i.ms, %bb.al ], [ %i.ct, %bb.j ], [ %i.fq, %bb.u ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp108 ], [ %lpad.loopexit109, %.loopexit107 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.mt = load ptr, ptr %3, align 8               ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.am
  %i.mw = load i64, ptr %i.mu, align 8
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn47.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn47, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z16ExportNodeExtrasPK10aiMetadataRN5glTF26ExtrasE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %i.b to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 160                 ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.m)
  br label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %i.g, i64 %i.d ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  tail call void @_ZN5glTF215CustomExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.05.i.i.i.i) #31, !inline_history !14
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8
  br label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit ] ; 6 uses
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw [1028 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.t, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.x, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %2, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = zext nneg i32 %spec.select.i to i64      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 4 %i.y, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  store i8 0, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %i.e, align 8
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 160               ; 2 uses
  %.not.i.i14 = icmp ugt i64 %i.ag, %indvars.iv
  br i1 %.not.i.i14, label %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.249, i64 noundef %indvars.iv, i64 noundef %i.ag) #34
  unreachable

_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [160 x i8], ptr %i.ac, i64 %indvars.iv
  call void @_Z16ExportNodeExtrasRK15aiMetadataEntry8aiStringRN5glTF215CustomExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(160) %i.ai)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %0, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.g, label %.loopexit, !llvm.loop !225

.loopexit:                                        ; preds = %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE2atEm.exit, %_ZNSt6vectorIN5glTF215CustomExtensionESaIS1_EE6resizeEm.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load <4 x float>, ptr %i.n, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %0, align 4              ; 3 uses
  %i.u = load float, ptr %i.c, align 4            ; 2 uses
  %i.v = load float, ptr %i.g, align 4            ; 3 uses
  %i.w = load float, ptr %i.k, align 4            ; 4 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.m, align 4            ; 4 uses
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.u, i64 1 ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = insertelement <2 x float> %5, float %i.t, i64 1 ; 2 uses
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = insertelement <2 x float> poison, float %i.r, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.v, i64 1 ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ag) ; 4 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  store float %i.ai, ptr %1, align 4
  %i.aj = fmul float %i.x, %i.x
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ak)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 3 uses
  store float %sqrt.i31, ptr %i.s, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = extractelement <2 x float> %i.ah, i64 0
  store float %i.an, ptr %i.am, align 4
  %i.ao = load float, ptr %0, align 4             ; 3 uses
  %i.ap = load float, ptr %i.l, align 4           ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap                 ; 2 uses
  %i.ar = load float, ptr %i.q, align 4           ; 4 uses
  %i.as = fmul float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.au = load float, ptr %i.at, align 4          ; 6 uses
  %i.av = load float, ptr %i.h, align 4           ; 5 uses
  %i.aw = fmul float %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4          ; 6 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.aw, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %i.ba)
  %i.bc = load float, ptr %i.o, align 4           ; 3 uses
  %i.bd = fmul float %i.ao, %i.bc                 ; 2 uses
  %i.be = fmul float %i.av, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load float, ptr %i.bf, align 4          ; 6 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bb)
  %i.bi = load float, ptr %i.m, align 4           ; 4 uses
  %i.bj = fneg float %i.bi                        ; 3 uses
  %i.bk = fmul float %i.bd, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.au, float %i.bh)
  %i.bm = load float, ptr %i.d, align 4           ; 3 uses
  %i.bn = fmul float %i.ao, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bi, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ay, float %i.bl)
  %i.bq = fneg float %i.ar                        ; 3 uses
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bg, float %i.bp)
  %i.bt = load float, ptr %i.k, align 4           ; 3 uses
  %i.bu = fmul float %i.bc, %i.bt                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load float, ptr %i.bv, align 4          ; 6 uses
  %i.bx = fneg float %i.av                        ; 2 uses
  %i.by = fmul float %i.bu, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bw, float %i.bs)
  %i.ca = load float, ptr %i.g, align 4           ; 4 uses
  %i.cb = fmul float %i.bu, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.au, float %i.bz)
  %i.cd = fmul float %i.bm, %i.bt                 ; 2 uses
  %i.ce = fneg float %i.ca                        ; 3 uses
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ay, float %i.cc)
  %i.ch = fmul float %i.ar, %i.cd
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bw, float %i.cg)
  %i.cj = load float, ptr %i.c, align 4           ; 3 uses
  %i.ck = fmul float %i.bt, %i.cj                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.bq
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.au, float %i.ci)
  %i.cn = fmul float %i.av, %i.ck
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ay, float %i.cm)
  %i.cp = load float, ptr %i.n, align 4           ; 3 uses
  %i.cq = fmul float %i.bm, %i.cp                 ; 2 uses
  %i.cr = fmul float %i.ca, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.bg, float %i.co)
  %i.ct = fmul float %i.cq, %i.bj
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bw, float %i.cs)
  %i.cv = fmul float %i.cj, %i.cp                 ; 2 uses
  %i.cw = fmul float %i.bi, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.au, float %i.cu)
  %i.cy = fmul float %i.cv, %i.bx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bg, float %i.cx)
  %i.da = fmul float %i.ap, %i.cp                 ; 2 uses
  %i.db = fmul float %i.av, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.bw, float %i.cz)
  %i.dd = fmul float %i.da, %i.ce
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.au, float %i.dc)
  %i.df = load float, ptr %i.a, align 4           ; 3 uses
  %i.dg = fmul float %i.cj, %i.df                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.bj
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ay, float %i.de)
  %i.dj = fmul float %i.ar, %i.dg
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.bg, float %i.di)
  %i.dl = fmul float %i.ap, %i.df                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.bq
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.bw, float %i.dk)
  %i.do = fmul float %i.ca, %i.dl
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ay, float %i.dn)
  %i.dq = fmul float %i.bc, %i.df                 ; 2 uses
  %i.dr = fmul float %i.dq, %i.ce
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.bg, float %i.dp)
  %i.dt = fmul float %i.bi, %i.dq
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.bw, float %i.ds)
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dw = insertelement <2 x float> %i.ah, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dx = fneg <2 x float> %i.ah                  ; 3 uses
  %i.dy = fneg float %sqrt.i31                    ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.dz, float %i.dy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ea = extractelement <2 x float> %i.dx, i64 0
  store float %i.ea, ptr %i.am, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.eb = phi float [ %sqrt.i31, %._crit_edge ], [ %i.dy, %bb.b ] ; 2 uses
  %i.ec = phi <2 x float> [ %i.dw, %._crit_edge ], [ %i.dx, %bb.b ] ; 2 uses
  %i.ed = fcmp une <2 x float> %i.ec, zeroinitializer ; 3 uses
  %i.ee = fdiv <2 x float> splat (float 1.000000e+00), %i.ec ; 3 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eg = fmul float %i.t, %i.ef
  %i.eh = extractelement <2 x i1> %i.ed, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.eh, float %i.eg, float %i.t ; 6 uses
  %i.ei = fcmp une float %i.eb, 0.000000e+00      ; 3 uses
  %i.ej = fdiv float 1.000000e+00, %i.eb          ; 3 uses
  %i.ek = fmul float %i.x, %i.ej
  %i.el = fmul float %i.y, %i.ej
  %.sroa.27.0 = select i1 %i.ei, float %i.el, float %i.y ; 4 uses
  %.sroa.22.0 = select i1 %i.ei, float %i.ek, float %i.x ; 6 uses
  %i.em = insertelement <2 x float> %5, float %i.u, i64 1 ; 2 uses
  %i.en = fmul <2 x float> %i.em, %i.ee
  %i.eo = fmul float %i.v, %i.ef
  %.sroa.1260.0 = select i1 %i.eh, float %i.eo, float %i.v ; 4 uses
  %i.ep = fmul float %i.w, %i.ej
  %.sroa.17.0 = select i1 %i.ei, float %i.ep, float %i.w ; 4 uses
  %i.eq = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.er = fmul float %i.p, %i.eq
  %i.es = fmul float %i.r, %i.eq
  %i.et = extractelement <2 x i1> %i.ed, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.et, float %i.es, float %i.r ; 6 uses
  %.sroa.37.0 = select i1 %i.et, float %i.er, float %i.p ; 4 uses
  %i.eu = select <2 x i1> %i.ed, <2 x float> %i.en, <2 x float> %i.em ; 6 uses
  %i.ev = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ew = fadd float %i.ev, %.sroa.42.0           ; 2 uses
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ey = fadd float %i.ew, 1.000000e+00
  %i.ez = tail call noundef float @sqrtf(float noundef %i.ey) #31
  %i.fa = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ez, i64 1
  %i.fb = fmul <4 x float> %i.fa, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fd = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fe = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.17.0, i64 1
  %i.fg = fsub <2 x float> %i.eu, %i.ff
  %i.fh = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.fd, i64 1
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.fc
  %i.fm = fdiv <4 x float> %i.fk, %i.fc
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fo = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fq = fadd float %.sroa.055.0, 1.000000e+00
  %i.fr = fsub float %i.fq, %.sroa.22.0
  %i.fs = fsub float %i.fr, %.sroa.42.0
  %i.ft = tail call noundef float @sqrtf(float noundef %i.fs) #31
  %i.fu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ft, i64 0
  %i.fv = fmul <4 x float> %i.fu, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %.sroa.17.0, i64 1
  %i.fz = fadd <2 x float> %i.eu, %i.fy
  %i.ga = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gf = fdiv <4 x float> %i.ge, %i.fw
  %i.gg = fmul <4 x float> %i.ge, %i.fw
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gi = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gj = fadd float %.sroa.22.0, 1.000000e+00
  %i.gk = fsub float %i.gj, %.sroa.055.0
  %i.gl = fsub float %i.gk, %.sroa.42.0
  %i.gm = tail call noundef float @sqrtf(float noundef %i.gl) #31
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = extractelement <2 x float> %i.eu, i64 1
  %i.gp = fadd float %i.go, %.sroa.17.0
  %i.gq = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gr = extractelement <2 x float> %i.eu, i64 0
  %i.gs = fsub float %i.gr, %.sroa.1260.0
  %i.gt = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gs, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gp, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 3 ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fdiv <4 x float> %i.gv, %i.gx
  %i.gz = fmul <4 x float> %i.gv, %i.gx
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hb = fadd float %.sroa.42.0, 1.000000e+00
  %i.hc = fsub float %i.hb, %.sroa.055.0
  %i.hd = fsub float %i.hc, %.sroa.22.0
  %i.he = tail call noundef float @sqrtf(float noundef %i.hd) #31
  %i.hf = fmul float %i.he, 2.000000e+00
  %i.hg = extractelement <2 x float> %i.eu, i64 0
  %i.hh = fadd float %.sroa.1260.0, %i.hg
  %i.hi = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hj = extractelement <2 x float> %i.eu, i64 1
  %i.hk = fsub float %i.hj, %.sroa.17.0
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hk, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.hh, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 2 ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hq = fdiv <4 x float> %i.hn, %i.hp
  %i.hr = fmul <4 x float> %i.hn, %i.hp
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.ht = phi <4 x float> [ %i.fn, %bb.d ], [ %i.gh, %bb.f ], [ %i.ha, %bb.h ], [ %i.hs, %bb.i ]
  store <4 x float> %i.ht, ptr %2, align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare i32 @aiGetVersionMajor() local_unnamed_addr #5

declare i32 @aiGetVersionMinor() local_unnamed_addr #5

declare i32 @aiGetVersionRevision() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8
  %i.ab = load i64, ptr %i.v, align 8
  store i64 %i.ab, ptr %i.t, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
end_hunk_0
