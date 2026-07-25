inline.NumInlined: 3330
inline.NumDeleted: 1008
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_18PNGInput16current_subimageEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #36
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i) #30
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !96

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #31
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !77 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !101

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit
  %i.v = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17PNG_pvt18read_next_scanlineB5cxx11ERP14png_struct_defPv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !87
  %i.c = call ptr @png_set_longjmp_fn(ptr noundef %i.b, ptr noundef nonnull @longjmp, i64 noundef 200)
  %i.d = call i32 @_setjmp(ptr noundef %i.c) #32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge.i.i6, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 17, ptr %i.a, align 8, !tbaa !88
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !77
  %i.g = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) @.str.15, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.b

._crit_edge.i.i6:                                 ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !87
  call void @png_read_row(ptr noundef %i.k, ptr noundef %2, ptr noundef null)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !13
  store i8 0, ptr %i.l, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i6, %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInput14associateAlphaItEEvPT_iiibf(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, float noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !82
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %or.cond = select i1 %5, i1 %i.c, i1 false
  br i1 %or.cond, label %.preheader94, label %bb.h

.preheader94:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph117, label %.loopexit95

.lr.ph117:                                        ; preds = %.preheader94
  %i.e = sext i32 %4 to i64
  %i.f = icmp sgt i32 %3, 0
  %i.g = sext i32 %3 to i64
  br i1 %i.f, label %.lr.ph117.split.us.preheader, label %.loopexit95

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.h = zext i32 %4 to i64
  %wide.trip.count134 = zext nneg i32 %3 to i64
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %..loopexit_crit_edge.us
  %.054115.us = phi ptr [ %8, %..loopexit_crit_edge.us ], [ %1, %.lr.ph117.split.us.preheader ] ; 3 uses
  %.057114.us = phi i32 [ %7, %..loopexit_crit_edge.us ], [ 0, %.lr.ph117.split.us.preheader ]
  %i.i = getelementptr inbounds [2 x i8], ptr %.054115.us, i64 %i.e
  %i.j = load i16, ptr %i.i, align 2, !tbaa !121
  %i.k = uitofp i16 %i.j to float
  %i.l = fmul nnan float %i.k, f0x37800080        ; 2 uses
  %i.m = fcmp une float %i.l, 1.000000e+00
  br i1 %i.m, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph117.split.us, %bb.g
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.g ], [ 0, %.lr.ph117.split.us ] ; 3 uses
  %.not65.us = icmp eq i64 %indvars.iv131, %i.h
  br i1 %.not65.us, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.054115.us, i64 %indvars.iv131 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !121
  %i.p = uitofp i16 %i.o to float
  %i.q = fmul nnan float %i.p, f0x37800080        ; 3 uses
  %i.r = fcmp ugt float %i.q, 4.045000e-02
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fmul nnan float %i.q, f0x3D9E8391
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

bb.d:                                             ; preds = %bb.b
  %i.t = fadd nnan float %i.q, 5.500000e-02
  %i.u = fmul nnan float %i.t, f0x3F72A76F
  %i.v = tail call float @llvm.pow.f32(float %i.u, float 2.400000e+00)
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us:  ; preds = %bb.d, %bb.c
  %i.w = phi float [ %i.s, %bb.c ], [ %i.v, %bb.d ]
  %i.x = fmul float %i.l, %i.w                    ; 3 uses
  %i.y = fcmp ugt float %i.x, 3.130800e-03
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.z = fmul nnan float %i.x, 1.292000e+01
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.aa = tail call float @llvm.pow.f32(float %i.x, float f0x3ED55555)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us:  ; preds = %bb.f, %bb.e
  %i.ac = phi float [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = fmul float %i.ac, 6.553500e+04          ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, float -5.000000e-01, float 5.000000e-01
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %.inv.i.i.i.us = fcmp oge float %i.ag, 0.000000e+00
  %.0.i.i.i.i.us = select i1 %.inv.i.i.i.us, float %i.ag, float 0.000000e+00 ; 2 uses
  %i.ah = fcmp ogt float %.0.i.i.i.i.us, 6.553500e+04
  %.1.i.i.i.i.us = select i1 %i.ah, float 6.553500e+04, float %.0.i.i.i.i.us
  %i.ai = fptoui float %.1.i.i.i.i.us to i16
  store i16 %i.ai, ptr %i.n, align 2, !tbaa !121
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us, %.preheader.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !157

..loopexit_crit_edge.us:                          ; preds = %bb.g, %.lr.ph117.split.us
  %7 = add nuw nsw i32 %.057114.us, 1             ; 2 uses
  %8 = getelementptr inbounds nuw [2 x i8], ptr %.054115.us, i64 %i.g
  %exitcond136.not = icmp eq i32 %7, %2
  br i1 %exitcond136.not, label %.loopexit95, label %.lr.ph117.split.us, !llvm.loop !158

bb.h:                                             ; preds = %bb.a
  %i.aj = fcmp une float %6, 1.000000e+00
  %or.cond70 = select i1 %i.aj, i1 %i.c, i1 false
  br i1 %or.cond70, label %bb.k, label %.preheader101

.preheader101:                                    ; preds = %bb.h
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph107, label %.loopexit95

.lr.ph107:                                        ; preds = %.preheader101
  %i.al = sext i32 %4 to i64
  %i.am = icmp sgt i32 %3, 0
  %i.an = sext i32 %3 to i64
  br i1 %i.am, label %.lr.ph107.split.us.preheader, label %.loopexit95

.lr.ph107.split.us.preheader:                     ; preds = %.lr.ph107
  %i.ao = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph107.split.us

.lr.ph107.split.us:                               ; preds = %.lr.ph107.split.us.preheader, %..loopexit100_crit_edge.us
  %.2105.us = phi ptr [ %10, %..loopexit100_crit_edge.us ], [ %1, %.lr.ph107.split.us.preheader ] ; 3 uses
  %.055104.us = phi i32 [ %9, %..loopexit100_crit_edge.us ], [ 0, %.lr.ph107.split.us.preheader ]
  %i.ap = getelementptr inbounds [2 x i8], ptr %.2105.us, i64 %i.al
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !121
  %i.ar = uitofp i16 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x37800080      ; 2 uses
  %i.at = fcmp une float %i.as, 1.000000e+00
  br i1 %i.at, label %.preheader99.us, label %..loopexit100_crit_edge.us

.preheader99.us:                                  ; preds = %.lr.ph107.split.us, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph107.split.us ] ; 3 uses
  %.not.us = icmp eq i64 %indvars.iv, %i.ao
  br i1 %.not.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader99.us
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.2105.us, i64 %indvars.iv ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !121
  %i.aw = uitofp i16 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x37800080
  %i.ay = fmul float %i.as, %i.ax
  %i.az = fmul float %i.ay, 6.553500e+04
  %i.ba = fadd float %i.az, 5.000000e-01          ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 6.553500e+04
  %.1.i.i.i.i76.us = select i1 %i.bb, float 6.553500e+04, float %i.ba
  %i.bc = fptoui float %.1.i.i.i.i76.us to i16
  store i16 %i.bc, ptr %i.au, align 2, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader99.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit100_crit_edge.us, label %.preheader99.us, !llvm.loop !159

..loopexit100_crit_edge.us:                       ; preds = %bb.j, %.lr.ph107.split.us
  %9 = add nuw nsw i32 %.055104.us, 1             ; 2 uses
  %10 = getelementptr inbounds nuw [2 x i8], ptr %.2105.us, i64 %i.an
  %exitcond124.not = icmp eq i32 %9, %2
  br i1 %exitcond124.not, label %.loopexit95, label %.lr.ph107.split.us, !llvm.loop !160

bb.k:                                             ; preds = %bb.h
  %i.bd = fdiv float 1.000000e+00, %6
  %i.be = icmp sgt i32 %2, 0
  br i1 %i.be, label %.lr.ph112, label %.loopexit95

.lr.ph112:                                        ; preds = %bb.k
  %i.bf = sext i32 %4 to i64
  %i.bg = icmp sgt i32 %3, 0
  %i.bh = sext i32 %3 to i64
  br i1 %i.bg, label %.lr.ph112.split.us.preheader, label %.loopexit95

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %i.bi = zext i32 %4 to i64
  %wide.trip.count128 = zext nneg i32 %3 to i64
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %..loopexit97_crit_edge.us
  %.1110.us = phi ptr [ %12, %..loopexit97_crit_edge.us ], [ %1, %.lr.ph112.split.us.preheader ] ; 3 uses
  %.058109.us = phi i32 [ %11, %..loopexit97_crit_edge.us ], [ 0, %.lr.ph112.split.us.preheader ]
  %i.bj = getelementptr inbounds [2 x i8], ptr %.1110.us, i64 %i.bf
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !121
  %i.bl = uitofp i16 %i.bk to float
  %i.bm = fmul nnan float %i.bl, f0x37800080      ; 2 uses
  %i.bn = fcmp une float %i.bm, 1.000000e+00
  br i1 %i.bn, label %.preheader96.us, label %..loopexit97_crit_edge.us

.preheader96.us:                                  ; preds = %.lr.ph112.split.us, %bb.m
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.m ], [ 0, %.lr.ph112.split.us ] ; 3 uses
  %.not64.us = icmp eq i64 %indvars.iv125, %i.bi
  br i1 %.not64.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader96.us
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.1110.us, i64 %indvars.iv125 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !121
  %i.bq = uitofp i16 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x37800080
  %i.bs = tail call float @llvm.pow.f32(float %i.br, float %6)
  %i.bt = fmul float %i.bm, %i.bs
  %i.bu = tail call float @llvm.pow.f32(float %i.bt, float %i.bd)
  %i.bv = fmul float %i.bu, 6.553500e+04          ; 2 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = select i1 %i.bw, float -5.000000e-01, float 5.000000e-01
  %i.by = fadd float %i.bv, %i.bx                 ; 2 uses
  %.inv.i.i.i71.us = fcmp oge float %i.by, 0.000000e+00
  %.0.i.i.i.i72.us = select i1 %.inv.i.i.i71.us, float %i.by, float 0.000000e+00 ; 2 uses
  %i.bz = fcmp ogt float %.0.i.i.i.i72.us, 6.553500e+04
  %.1.i.i.i.i73.us = select i1 %i.bz, float 6.553500e+04, float %.0.i.i.i.i72.us
  %i.ca = fptoui float %.1.i.i.i.i73.us to i16
  store i16 %i.ca, ptr %i.bo, align 2, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader96.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit97_crit_edge.us, label %.preheader96.us, !llvm.loop !161

..loopexit97_crit_edge.us:                        ; preds = %bb.m, %.lr.ph112.split.us
  %11 = add nuw nsw i32 %.058109.us, 1            ; 2 uses
  %12 = getelementptr inbounds nuw [2 x i8], ptr %.1110.us, i64 %i.bh
  %exitcond130.not = icmp eq i32 %11, %2
  br i1 %exitcond130.not, label %.loopexit95, label %.lr.ph112.split.us, !llvm.loop !162

.loopexit95:                                      ; preds = %..loopexit100_crit_edge.us, %..loopexit97_crit_edge.us, %..loopexit_crit_edge.us, %.lr.ph112, %.lr.ph107, %.lr.ph117, %.preheader101, %bb.k, %.preheader94
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInput14associateAlphaIhEEvPT_iiibf(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, float noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.b = load i8, ptr %i.a, align 1, !range !82
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %or.cond = select i1 %5, i1 %i.c, i1 false
  br i1 %or.cond, label %.preheader94, label %bb.h

.preheader94:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph117, label %.loopexit95

.lr.ph117:                                        ; preds = %.preheader94
  %i.e = sext i32 %4 to i64
  %i.f = icmp sgt i32 %3, 0
  %i.g = sext i32 %3 to i64
  br i1 %i.f, label %.lr.ph117.split.us.preheader, label %.loopexit95

.lr.ph117.split.us.preheader:                     ; preds = %.lr.ph117
  %i.h = zext i32 %4 to i64
  %wide.trip.count134 = zext nneg i32 %3 to i64
  br label %.lr.ph117.split.us

.lr.ph117.split.us:                               ; preds = %.lr.ph117.split.us.preheader, %..loopexit_crit_edge.us
  %.054115.us = phi ptr [ %8, %..loopexit_crit_edge.us ], [ %1, %.lr.ph117.split.us.preheader ] ; 3 uses
  %.057114.us = phi i32 [ %7, %..loopexit_crit_edge.us ], [ 0, %.lr.ph117.split.us.preheader ]
  %i.i = getelementptr inbounds i8, ptr %.054115.us, i64 %i.e
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = uitofp i8 %i.j to float
  %i.l = fmul nnan float %i.k, f0x3B808081        ; 2 uses
  %i.m = fcmp une float %i.l, 1.000000e+00
  br i1 %i.m, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph117.split.us, %bb.g
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.g ], [ 0, %.lr.ph117.split.us ] ; 3 uses
  %.not65.us = icmp eq i64 %indvars.iv131, %i.h
  br i1 %.not65.us, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.n = getelementptr inbounds nuw i8, ptr %.054115.us, i64 %indvars.iv131 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = uitofp i8 %i.o to float
  %i.q = fmul nnan float %i.p, f0x3B808081        ; 3 uses
  %i.r = fcmp ugt float %i.q, 4.045000e-02
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fmul nnan float %i.q, f0x3D9E8391
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

bb.d:                                             ; preds = %bb.b
  %i.t = fadd nnan float %i.q, 5.500000e-02
  %i.u = fmul nnan float %i.t, f0x3F72A76F
  %i.v = tail call float @llvm.pow.f32(float %i.u, float 2.400000e+00)
  br label %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us

_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us:  ; preds = %bb.d, %bb.c
  %i.w = phi float [ %i.s, %bb.c ], [ %i.v, %bb.d ]
  %i.x = fmul float %i.l, %i.w                    ; 3 uses
  %i.y = fcmp ugt float %i.x, 3.130800e-03
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.z = fmul nnan float %i.x, 1.292000e+01
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_114sRGB_to_linearEf.exit.us
  %i.aa = tail call float @llvm.pow.f32(float %i.x, float f0x3ED55555)
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us

_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us:  ; preds = %bb.f, %bb.e
  %i.ac = phi float [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = fmul float %i.ac, 2.550000e+02          ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %i.af = select i1 %i.ae, float -5.000000e-01, float 5.000000e-01
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %.inv.i.i.i.us = fcmp oge float %i.ag, 0.000000e+00
  %.0.i.i.i.i.us = select i1 %.inv.i.i.i.us, float %i.ag, float 0.000000e+00 ; 2 uses
  %i.ah = fcmp ogt float %.0.i.i.i.i.us, 2.550000e+02
  %.1.i.i.i.i.us = select i1 %i.ah, float 2.550000e+02, float %.0.i.i.i.i.us
  %i.ai = fptoui float %.1.i.i.i.i.us to i8
  store i8 %i.ai, ptr %i.n, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_114linear_to_sRGBEf.exit.us, %.preheader.us
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !163

..loopexit_crit_edge.us:                          ; preds = %bb.g, %.lr.ph117.split.us
  %7 = add nuw nsw i32 %.057114.us, 1             ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.054115.us, i64 %i.g
  %exitcond136.not = icmp eq i32 %7, %2
  br i1 %exitcond136.not, label %.loopexit95, label %.lr.ph117.split.us, !llvm.loop !164

bb.h:                                             ; preds = %bb.a
  %i.aj = fcmp une float %6, 1.000000e+00
  %or.cond70 = select i1 %i.aj, i1 %i.c, i1 false
  br i1 %or.cond70, label %bb.k, label %.preheader101

.preheader101:                                    ; preds = %bb.h
  %i.ak = icmp sgt i32 %2, 0
  br i1 %i.ak, label %.lr.ph107, label %.loopexit95

.lr.ph107:                                        ; preds = %.preheader101
  %i.al = sext i32 %4 to i64
  %i.am = icmp sgt i32 %3, 0
  %i.an = sext i32 %3 to i64
  br i1 %i.am, label %.lr.ph107.split.us.preheader, label %.loopexit95

.lr.ph107.split.us.preheader:                     ; preds = %.lr.ph107
  %i.ao = zext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph107.split.us

.lr.ph107.split.us:                               ; preds = %.lr.ph107.split.us.preheader, %..loopexit100_crit_edge.us
  %.2105.us = phi ptr [ %10, %..loopexit100_crit_edge.us ], [ %1, %.lr.ph107.split.us.preheader ] ; 3 uses
  %.055104.us = phi i32 [ %9, %..loopexit100_crit_edge.us ], [ 0, %.lr.ph107.split.us.preheader ]
  %i.ap = getelementptr inbounds i8, ptr %.2105.us, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fmul nnan float %i.ar, f0x3B808081      ; 2 uses
  %i.at = fcmp une float %i.as, 1.000000e+00
  br i1 %i.at, label %.preheader99.us, label %..loopexit100_crit_edge.us

.preheader99.us:                                  ; preds = %.lr.ph107.split.us, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph107.split.us ] ; 3 uses
  %.not.us = icmp eq i64 %indvars.iv, %i.ao
  br i1 %.not.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader99.us
  %i.au = getelementptr inbounds nuw i8, ptr %.2105.us, i64 %indvars.iv ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = uitofp i8 %i.av to float
  %i.ax = fmul nnan float %i.aw, f0x3B808081
  %i.ay = fmul float %i.as, %i.ax
  %i.az = fmul float %i.ay, 2.550000e+02
  %i.ba = fadd float %i.az, 5.000000e-01          ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 2.550000e+02
  %.1.i.i.i.i76.us = select i1 %i.bb, float 2.550000e+02, float %i.ba
  %i.bc = fptoui float %.1.i.i.i.i76.us to i8
  store i8 %i.bc, ptr %i.au, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader99.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit100_crit_edge.us, label %.preheader99.us, !llvm.loop !165

..loopexit100_crit_edge.us:                       ; preds = %bb.j, %.lr.ph107.split.us
  %9 = add nuw nsw i32 %.055104.us, 1             ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.2105.us, i64 %i.an
  %exitcond124.not = icmp eq i32 %9, %2
  br i1 %exitcond124.not, label %.loopexit95, label %.lr.ph107.split.us, !llvm.loop !166

bb.k:                                             ; preds = %bb.h
  %i.bd = fdiv float 1.000000e+00, %6
  %i.be = icmp sgt i32 %2, 0
  br i1 %i.be, label %.lr.ph112, label %.loopexit95

.lr.ph112:                                        ; preds = %bb.k
  %i.bf = sext i32 %4 to i64
  %i.bg = icmp sgt i32 %3, 0
  %i.bh = sext i32 %3 to i64
  br i1 %i.bg, label %.lr.ph112.split.us.preheader, label %.loopexit95

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112
  %i.bi = zext i32 %4 to i64
  %wide.trip.count128 = zext nneg i32 %3 to i64
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %..loopexit97_crit_edge.us
  %.1110.us = phi ptr [ %12, %..loopexit97_crit_edge.us ], [ %1, %.lr.ph112.split.us.preheader ] ; 3 uses
  %.058109.us = phi i32 [ %11, %..loopexit97_crit_edge.us ], [ 0, %.lr.ph112.split.us.preheader ]
  %i.bj = getelementptr inbounds i8, ptr %.1110.us, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = fmul nnan float %i.bl, f0x3B808081      ; 2 uses
  %i.bn = fcmp une float %i.bm, 1.000000e+00
  br i1 %i.bn, label %.preheader96.us, label %..loopexit97_crit_edge.us

.preheader96.us:                                  ; preds = %.lr.ph112.split.us, %bb.m
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.m ], [ 0, %.lr.ph112.split.us ] ; 3 uses
  %.not64.us = icmp eq i64 %indvars.iv125, %i.bi
  br i1 %.not64.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader96.us
  %i.bo = getelementptr inbounds nuw i8, ptr %.1110.us, i64 %indvars.iv125 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x3B808081
  %i.bs = tail call float @llvm.pow.f32(float %i.br, float %6)
  %i.bt = fmul float %i.bm, %i.bs
  %i.bu = tail call float @llvm.pow.f32(float %i.bt, float %i.bd)
  %i.bv = fmul float %i.bu, 2.550000e+02          ; 2 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = select i1 %i.bw, float -5.000000e-01, float 5.000000e-01
  %i.by = fadd float %i.bv, %i.bx                 ; 2 uses
  %.inv.i.i.i71.us = fcmp oge float %i.by, 0.000000e+00
  %.0.i.i.i.i72.us = select i1 %.inv.i.i.i71.us, float %i.by, float 0.000000e+00 ; 2 uses
  %i.bz = fcmp ogt float %.0.i.i.i.i72.us, 2.550000e+02
  %.1.i.i.i.i73.us = select i1 %i.bz, float 2.550000e+02, float %.0.i.i.i.i72.us
  %i.ca = fptoui float %.1.i.i.i.i73.us to i8
  store i8 %i.ca, ptr %i.bo, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader96.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %..loopexit97_crit_edge.us, label %.preheader96.us, !llvm.loop !167

..loopexit97_crit_edge.us:                        ; preds = %bb.m, %.lr.ph112.split.us
  %11 = add nuw nsw i32 %.058109.us, 1            ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.1110.us, i64 %i.bh
  %exitcond130.not = icmp eq i32 %11, %2
  br i1 %exitcond130.not, label %.loopexit95, label %.lr.ph112.split.us, !llvm.loop !168

.loopexit95:                                      ; preds = %..loopexit100_crit_edge.us, %..loopexit97_crit_edge.us, %..loopexit_crit_edge.us, %.lr.ph112, %.lr.ph107, %.lr.ph117, %.preheader101, %bb.k, %.preheader94
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInputD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18PNGInput5closeEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18PNGInputD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18PNGInputD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) #30
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_18PNGInput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #7 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_18PNGInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef dead_on_return %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit [
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = xor i32 %i.d, 1919971177
  %i.f = getelementptr i8, ptr %i.a, i64 3
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 2037935986
  %i.i = or i32 %i.e, %i.h
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not.i.i = icmp eq i32 %i.k, 0
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 1
  %i.m = icmp ne i32 %i.l, 1718188133
  %i.n = zext i1 %i.m to i32
  %.not.i.i3 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  %i.o = load i32, ptr %i.a, align 1
  %i.p = icmp ne i32 %i.o, 1885563235
  %i.q = zext i1 %i.p to i32
  %.not.i.i8 = icmp eq i32 %i.q, 0
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
  %.shrunk = phi i1 [ %.not.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ %.not.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6 ], [ false, %bb.a ]
  %i.r = zext i1 %.shrunk to i32
  ret i32 %i.r
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput4specEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput28read_native_volumetric_tilesEiiiiiiiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput16read_native_tileEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput17read_native_tilesEiiiiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_110ImageInput13send_to_inputEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput11set_ioproxyEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput8heapsizeEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput9footprintEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #11 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
