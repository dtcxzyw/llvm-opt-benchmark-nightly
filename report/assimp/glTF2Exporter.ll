inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13glTF2Exporter10ExportNodeEPK6aiNodeRN10glTFCommon3RefIN5glTF24NodeEEE:bb.a
  %i.lp = select i1 %i.ln, i64 576460752303423487, i64 %i.lo ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.lp, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.lq = shl nuw nsw i64 %i.lp, 4
  %i.lr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lq) #33
          to label %.noexc84 unwind label %.loopexit ; 5 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lj ; 2 uses
  store ptr %i.ky, ptr %i.ls, align 8
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i32 %i.kt, ptr %.sroa.6.0..sroa_idx89, align 8
  %.not10.i.i.i.i.i76 = icmp eq ptr %i.lg, %i.lb
  br i1 %.not10.i.i.i.i.i76, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.noexc84, %.lr.ph.i.i.i.i.i77
  %.012.i.i.i.i.i78 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i77 ], [ %i.lr, %.noexc84 ] ; 2 uses
  %.0911.i.i.i.i.i79 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i77 ], [ %i.lg, %.noexc84 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i78, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i79, i64 16, i1 false), !alias.scope !205
  %i.lt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i79, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i78, i64 16 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.lt, %i.lb
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i77, !llvm.loop !19

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i77, %.noexc84
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.lr, %.noexc84 ], [ %i.lu, %.lr.ph.i.i.i.i.i77 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i81, i64 16
  %.not.i23.i.i82 = icmp eq ptr %i.lg, null
  br i1 %.not.i23.i.i82, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lj) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.lr, ptr %i.kz, align 8
  store ptr %i.lv, ptr %i.la, align 8
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.lp
  store ptr %i.lw, ptr %i.lc, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ah
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.lx = load i32, ptr %i.bj, align 8
  %i.ly = zext i32 %i.lx to i64
  %i.lz = icmp samesign ult i64 %indvars.iv.next121, %i.ly
  br i1 %i.lz, label %bb.af, label %._crit_edge, !llvm.loop !209

bb.al:                                            ; preds = %bb.af
  %i.ma = landingpad { ptr, i32 }
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
  %.pn47 = phi { ptr, i32 } [ %i.ma, %bb.al ], [ %i.cn, %bb.j ], [ %i.fe, %bb.u ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp108 ], [ %lpad.loopexit109, %.loopexit107 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.mb = load ptr, ptr %3, align 8               ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.am
  %i.me = load i64, ptr %i.mc, align 8
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #32
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
  tail call void @_ZN5glTF215CustomExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.05.i.i.i.i) #31, !inline_history !210
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5glTF215CustomExtensionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !211

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
  br i1 %i.al, label %bb.g, label %.loopexit, !llvm.loop !212

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
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load float, ptr %i.n, align 4              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 4 uses
  %5 = load <2 x float>, ptr %0, align 4          ; 4 uses
  %6 = load <2 x float>, ptr %i.c, align 4        ; 4 uses
  %7 = load <2 x float>, ptr %i.g, align 4        ; 4 uses
  %8 = fmul <2 x float> %6, %6
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %5, <2 x float> %8)
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %7, <2 x float> %9)
  %11 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %10) ; 4 uses
  store <2 x float> %11, ptr %1, align 4
  %12 = fmul float %i.p, %i.p
  %i.s = tail call float @llvm.fmuladd.f32(float %4, float %4, float %12)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.s)
  %sqrt.i32 = tail call noundef float @llvm.sqrt.f32(float %i.t) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %sqrt.i32, ptr %i.u, align 4
  %i.v = load float, ptr %0, align 4              ; 3 uses
  %i.w = load float, ptr %i.l, align 4            ; 3 uses
  %i.x = fmul float %i.v, %i.w                    ; 2 uses
  %i.y = load float, ptr %i.q, align 4            ; 4 uses
  %i.z = fmul float %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = load float, ptr %i.aa, align 4          ; 6 uses
  %i.ac = load float, ptr %i.h, align 4           ; 5 uses
  %i.ad = fmul float %i.x, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load float, ptr %i.ae, align 4          ; 6 uses
  %i.ag = fneg float %i.af
  %i.ah = fmul float %i.ad, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.ah)
  %i.aj = load float, ptr %i.o, align 4           ; 3 uses
  %i.ak = fmul float %i.v, %i.aj                  ; 2 uses
  %i.al = fmul float %i.ac, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.an = load float, ptr %i.am, align 4          ; 6 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.al, float %i.an, float %i.ai)
  %i.ap = load float, ptr %i.m, align 4           ; 4 uses
  %i.aq = fneg float %i.ap                        ; 3 uses
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ab, float %i.ao)
  %i.at = load float, ptr %i.d, align 4           ; 3 uses
  %i.au = fmul float %i.v, %i.at                  ; 2 uses
  %i.av = fmul float %i.ap, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.af, float %i.as)
  %i.ax = fneg float %i.y                         ; 3 uses
  %i.ay = fmul float %i.au, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.an, float %i.aw)
  %i.ba = load float, ptr %i.k, align 4           ; 3 uses
  %i.bb = fmul float %i.aj, %i.ba                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load float, ptr %i.bc, align 4          ; 6 uses
  %i.be = fneg float %i.ac                        ; 2 uses
  %i.bf = fmul float %i.bb, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bd, float %i.az)
  %i.bh = load float, ptr %i.g, align 4           ; 4 uses
  %i.bi = fmul float %i.bb, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ab, float %i.bg)
  %i.bk = fmul float %i.at, %i.ba                 ; 2 uses
  %i.bl = fneg float %i.bh                        ; 3 uses
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.af, float %i.bj)
  %i.bo = fmul float %i.y, %i.bk
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bd, float %i.bn)
  %i.bq = load float, ptr %i.c, align 4           ; 3 uses
  %i.br = fmul float %i.ba, %i.bq                 ; 2 uses
  %i.bs = fmul float %i.br, %i.ax
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ab, float %i.bp)
  %i.bu = fmul float %i.ac, %i.br
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.af, float %i.bt)
  %i.bw = load float, ptr %i.n, align 4           ; 3 uses
  %i.bx = fmul float %i.at, %i.bw                 ; 2 uses
  %i.by = fmul float %i.bh, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.an, float %i.bv)
  %i.ca = fmul float %i.bx, %i.aq
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bd, float %i.bz)
  %i.cc = fmul float %i.bq, %i.bw                 ; 2 uses
  %i.cd = fmul float %i.ap, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ab, float %i.cb)
  %i.cf = fmul float %i.cc, %i.be
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.an, float %i.ce)
  %i.ch = fmul float %i.w, %i.bw                  ; 2 uses
  %i.ci = fmul float %i.ac, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bd, float %i.cg)
  %i.ck = fmul float %i.ch, %i.bl
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ab, float %i.cj)
  %i.cm = load float, ptr %i.a, align 4           ; 3 uses
  %i.cn = fmul float %i.bq, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cn, %i.aq
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.af, float %i.cl)
  %i.cq = fmul float %i.y, %i.cn
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.an, float %i.cp)
  %i.cs = fmul float %i.w, %i.cm                  ; 2 uses
  %i.ct = fmul float %i.cs, %i.ax
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bd, float %i.cr)
  %i.cv = fmul float %i.bh, %i.cs
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.af, float %i.cu)
  %i.cx = fmul float %i.aj, %i.cm                 ; 2 uses
  %i.cy = fmul float %i.cx, %i.bl
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.an, float %i.cw)
  %i.da = fmul float %i.ap, %i.cx
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.da, float %i.bd, float %i.cz)
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %13 = extractelement <2 x float> %11, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %14 = extractelement <2 x float> %11, i64 0
  %15 = fneg float %14                            ; 2 uses
  %16 = extractelement <2 x float> %11, i64 1
  %i.dd = fneg float %16                          ; 2 uses
  %17 = fneg float %sqrt.i32                      ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %15, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.dd, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  store float %17, ptr %i.u, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %18 = phi float [ %sqrt.i32, %._crit_edge ], [ %17, %bb.b ] ; 2 uses
  %19 = phi float [ %13, %._crit_edge ], [ %i.dd, %bb.b ] ; 2 uses
  %i.de = phi float [ %.pre, %._crit_edge ], [ %15, %bb.b ] ; 2 uses
  %20 = fcmp une float %i.de, 0.000000e+00        ; 3 uses
  %21 = fdiv float 1.000000e+00, %i.de            ; 3 uses
  %22 = extractelement <2 x float> %5, i64 0      ; 2 uses
  %23 = fmul float %22, %21
  %24 = extractelement <2 x float> %6, i64 0      ; 2 uses
  %25 = fmul float %24, %21
  %i.df = extractelement <2 x float> %7, i64 0    ; 2 uses
  %i.dg = fmul float %i.df, %21
  %.sroa.055.0 = select i1 %20, float %23, float %22 ; 6 uses
  %.sroa.7.0 = select i1 %20, float %25, float %24 ; 4 uses
  %.sroa.1260.0.a = select i1 %20, float %i.dg, float %i.df ; 4 uses
  %i.dh = fcmp une float %19, 0.000000e+00        ; 3 uses
  %i.di = fdiv float 1.000000e+00, %19            ; 3 uses
  %26 = extractelement <2 x float> %5, i64 1      ; 2 uses
  %i.dj = fmul float %26, %i.di
  %27 = extractelement <2 x float> %6, i64 1      ; 2 uses
  %28 = fmul float %27, %i.di
  %29 = extractelement <2 x float> %7, i64 1      ; 2 uses
  %30 = fmul float %29, %i.di
  %.sroa.17.0 = select i1 %i.dh, float %i.dj, float %26 ; 4 uses
  %.sroa.22.0 = select i1 %i.dh, float %28, float %27 ; 6 uses
  %.sroa.27.0.a = select i1 %i.dh, float %30, float %29 ; 4 uses
  %31 = fcmp une float %18, 0.000000e+00          ; 3 uses
  %32 = fdiv float 1.000000e+00, %18              ; 3 uses
  %i.dk = fmul float %4, %32
  %i.dl = fmul float %i.p, %32
  %33 = fmul float %i.r, %32
  %.sroa.32.0 = select i1 %31, float %i.dk, float %4 ; 4 uses
  %.sroa.37.0 = select i1 %31, float %i.dl, float %i.p ; 4 uses
  %.sroa.42.0 = select i1 %31, float %33, float %i.r ; 6 uses
  %i.dm = fadd float %.sroa.055.0, %.sroa.22.0
  %i.dn = fadd float %i.dm, %.sroa.42.0           ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dp = fadd float %i.dn, 1.000000e+00
  %i.dq = tail call noundef float @sqrtf(float noundef %i.dp) #31
  %34 = fsub float %.sroa.7.0, %.sroa.17.0
  %.scalar = fmul float %i.dq, 2.000000e+00
  %i.dr = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %35 = fsub float %.sroa.32.0, %.sroa.1260.0.a
  %i.dt = fsub float %.sroa.27.0.a, %.sroa.37.0
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float %i.dt, i64 1
  %36 = insertelement <4 x float> %i.dv, float %35, i64 2
  %37 = insertelement <4 x float> %36, float %34, i64 3 ; 2 uses
  %i.dw = fmul <4 x float> %37, %i.ds
  %i.dx = fdiv <4 x float> %37, %i.ds
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.dz = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.ea = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.dz, %i.ea
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eb = fadd float %.sroa.055.0, 1.000000e+00
  %i.ec = fsub float %i.eb, %.sroa.22.0
  %i.ed = fsub float %i.ec, %.sroa.42.0
  %i.ee = tail call noundef float @sqrtf(float noundef %i.ed) #31
  %.scalar76 = fmul float %i.ee, 2.000000e+00
  %i.ef = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar76, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.eh = fadd float %.sroa.7.0, %.sroa.17.0
  %i.ei = fadd float %.sroa.1260.0.a, %.sroa.32.0
  %i.ej = fsub float %.sroa.27.0.a, %.sroa.37.0
  %i.ek = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float %i.eh, i64 2
  %i.en = insertelement <4 x float> %i.em, float %i.ei, i64 3 ; 2 uses
  %i.eo = fdiv <4 x float> %i.en, %i.eg
  %i.ep = fmul <4 x float> %i.en, %i.eg
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> %i.ep, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.er = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.er, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.es = fadd float %.sroa.22.0, 1.000000e+00
  %i.et = fsub float %i.es, %.sroa.055.0
  %i.eu = fsub float %i.et, %.sroa.42.0
  %i.ev = tail call noundef float @sqrtf(float noundef %i.eu) #31
  %i.ew = fmul float %i.ev, 2.000000e+00
  %i.ex = fadd float %.sroa.7.0, %.sroa.17.0
  %i.ey = fadd float %.sroa.27.0.a, %.sroa.37.0
  %i.ez = fsub float %.sroa.32.0, %.sroa.1260.0.a
  %i.fa = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.ez, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.ey, i64 3 ; 2 uses
  %i.fd = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = fdiv <4 x float> %i.fc, %i.fe
  %i.fg = fmul <4 x float> %i.fc, %i.fe
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.fi = fadd float %.sroa.42.0, 1.000000e+00
  %i.fj = fsub float %i.fi, %.sroa.055.0
  %i.fk = fsub float %i.fj, %.sroa.22.0
  %i.fl = tail call noundef float @sqrtf(float noundef %i.fk) #31
  %i.fm = fmul float %i.fl, 2.000000e+00
  %i.fn = fadd float %.sroa.1260.0.a, %.sroa.32.0
  %i.fo = fadd float %.sroa.27.0.a, %.sroa.37.0
  %i.fp = fsub float %.sroa.7.0, %.sroa.17.0
  %i.fq = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.fp, i64 0
  %i.fr = insertelement <4 x float> %i.fq, float %i.fn, i64 1
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 2 ; 2 uses
  %i.ft = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = fdiv <4 x float> %i.fs, %i.fu
  %i.fw = fmul <4 x float> %i.fs, %i.fu
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.fy = phi <4 x float> [ %i.dy, %bb.d ], [ %i.eq, %bb.f ], [ %i.fh, %bb.h ], [ %i.fx, %bb.i ]
  store <4 x float> %i.fy, ptr %2, align 4
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
  store ptr %i.v, ptr %i.s, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.v, align 8
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8
  %i.ar = load i64, ptr %i.al, align 8
  store i64 %i.ar, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8
  store ptr %i.al, ptr %i.ai, align 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z25ExtractTranslationSamplerRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEPK10aiNodeAnimfRNS_9Animation7SamplerE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1028
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 12 uses
  %.not.i.i.i.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33 ; 13 uses
  store float 0.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %i.e, i64 4        ; 3 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.a, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.a

bb.a:                                             ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i.ph = phi ptr [ %i.f, %.noexc ], [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.j = mul i32 %i.b, 3
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
          to label %.noexc48 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit54._ZNSt6vectorIfSaIfEED2Ev.exit54.thread_crit_edge ; 12 uses

.noexc48:                                         ; preds = %bb.a
  store float 0.000000e+00, ptr %i.m, align 4
  %i.n = add nsw i64 %i.k, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44: ; preds = %.noexc48
  %i.p = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i.i.i45 = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i45, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i44, %.noexc48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = fpext float %4 to double                 ; 2 uses
end_hunk_0
