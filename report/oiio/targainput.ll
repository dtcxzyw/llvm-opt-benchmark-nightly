inline.NumInlined: 3088
inline.NumDeleted: 897
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_:bb.a
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = ptrtoint ptr %i.q to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aq = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !94
  store <2 x ptr> %i.aq, ptr %i.aj, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !93
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i) #30
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.al to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aw) #29
  br label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit

_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i) #30
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !60 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !89

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit
  %i.v = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput16read_tga2_headerEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %i.g = alloca [41 x i8], align 16               ; 7 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %8 = alloca %union.anon.23, align 8             ; 36 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca [2 x i8], align 1                 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.p = load i32, ptr %i.o, align 4, !tbaa !96
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.q, i32 noundef 0)
  br i1 %i.r, label %bb.b, label %bb.dc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.h, i64 noundef 2, i64 noundef 1)
  br i1 %i.s, label %bb.c, label %bb.db

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.h, align 2, !tbaa !97
  %i.u = icmp ugt i16 %i.t, 494
  br i1 %i.u, label %bb.d, label %bb.db

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %savedstack = call ptr @llvm.stacksave.p0()     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.v = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.g, i64 noundef 41, i64 noundef 1)
  br i1 %i.v, label %bb.e, label %_ZN11OpenImageIO4v3_18TGAInput31read_bytes_for_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr %i.g, align 16, !tbaa !16
  %.not9.i = icmp eq i8 %i.w, 0
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.18, ptr %6, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.y, align 8, !tbaa !63
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.z = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil11safe_strlenEPKcm(ptr noundef nonnull %i.g, i64 noundef 41) #30, !noalias !98
  store ptr %i.g, ptr %7, align 8, !tbaa !61, !alias.scope !98
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !63, !alias.scope !98
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  br label %bb.g

_ZN11OpenImageIO4v3_18TGAInput31read_bytes_for_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 324, i64 noundef 1)
  br i1 %i.ab, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ac = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil11safe_strlenEPKcm(ptr noundef nonnull %8, i64 noundef 81) #30, !noalias !104 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.ad, ptr %9, align 8, !tbaa !9, !alias.scope !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30, !noalias !110
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !111, !noalias !110
  %i.ae = icmp ugt i64 %i.ac, 15
  br i1 %i.ae, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %9, align 8, !tbaa !60, !alias.scope !110
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !111, !noalias !110
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !16, !alias.scope !110
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.h
  %i.ah = phi ptr [ %i.af, %.noexc.i.i.i ], [ %i.ad, %bb.h ] ; 2 uses
  switch i64 %i.ac, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load i8, ptr %8, align 8, !tbaa !16, !noalias !101
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !16
  br label %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 4 %8, i64 %i.ac, i1 false)
  br label %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit

_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit: ; preds = %._crit_edge.i.i.i.i, %bb.i, %bb.j
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !111, !noalias !110 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !13, !alias.scope !110
  %i.al = load ptr, ptr %9, align 8, !tbaa !60, !alias.scope !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30, !noalias !110
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 81 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull %i.an, i64 noundef 81)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.q       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.au = load i64, ptr %i.as, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.r

bb.o:                                             ; preds = %bb.az, %bb.ar, %bb.ap, %bb.ah, %bb.ag, %bb.z, %bb.s, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.p:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.q:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %10, align 8, !tbaa !60   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.q
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.ay, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.da

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 162 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !16
  %.not55 = icmp eq i8 %i.bf, 0
  br i1 %.not55, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull %i.be, i64 noundef 81)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.v unwind label %bb.x       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.v
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.x:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %11, align 8, !tbaa !60   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.x
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.w
  %.pn56 = phi { ptr, i32 } [ %i.bn, %bb.w ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.bo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.da

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 243 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %.not58 = icmp eq i8 %i.bv, 0
  br i1 %.not58, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19)
          to label %bb.aa unwind label %bb.o      ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %i.bu, i64 noundef 81)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.by = load ptr, ptr %12, align 8, !tbaa !60   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ac
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.ae:                                            ; preds = %bb.ab
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %12, align 8, !tbaa !60   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ae
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ad
  %.pn59 = phi { ptr, i32 } [ %i.cd, %bb.ad ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.ce, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.da

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.y
  %i.ck = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.not61 = icmp eq i64 %i.ck, 0
  br i1 %.not61, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.20, ptr %13, align 8, !tbaa !61
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 16, ptr %i.cm, align 8, !tbaa !63
  %i.cn = load ptr, ptr %9, align 8, !tbaa !60
  store ptr %i.cn, ptr %14, align 8, !tbaa !61
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ck, ptr %i.co, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.cl, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
          to label %bb.ah unwind label %bb.o

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 6)
          to label %bb.ai unwind label %bb.o

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cp, label %bb.aj, label %.critedge82

bb.aj:                                            ; preds = %bb.ai
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 2 ; 5 uses
  %27 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %28 = load <4 x i16>, ptr %8, align 8
  %.fr = freeze <4 x i16> %28
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %29 = load i16, ptr %i.cq, align 8
  %.fr193 = freeze i16 %29
  %30 = icmp ne i16 %.fr193, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  %31 = load i16, ptr %i.cr, align 2
  %32 = icmp ne i16 %31, 0
  %.fr.scalar = bitcast <4 x i16> %.fr to i64
  %33 = icmp ne i64 %.fr.scalar, 0
  %op.rdx = or i1 %33, %30
  %op.rdx191 = select i1 %op.rdx, i1 true, i1 %32
  br i1 %op.rdx191, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 6
  store ptr @.str.21, ptr %15, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.ct, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA36_cJRtS5_S5_S5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 1 dereferenceable(36) @.str.22, ptr noundef nonnull align 2 dereferenceable(2) %27, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %26, ptr noundef nonnull align 2 dereferenceable(2) %i.cs, ptr noundef nonnull align 2 dereferenceable(2) %i.cq, ptr noundef nonnull align 2 dereferenceable(2) %i.cr)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %17, align 8, !tbaa !60
  store ptr %i.cv, ptr %16, align 8, !tbaa !61
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.cu, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cz = load ptr, ptr %17, align 8, !tbaa !60   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.am
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.ao:                                            ; preds = %bb.al
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %17, align 8, !tbaa !60   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ao
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.an
  %.pn62 = phi { ptr, i32 } [ %i.de, %bb.an ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.df, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.da

bb.ap:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  store ptr @.str.23, ptr %18, align 8, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 12, ptr %i.dl, align 8, !tbaa !63
  %i.dm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput31read_bytes_for_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull dead_on_return %18, i64 noundef 41)
          to label %bb.aq unwind label %bb.o

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.ar, label %.critedge82

bb.ar:                                            ; preds = %bb.aq
  %i.dn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 3)
          to label %bb.as unwind label %bb.o

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dn, label %bb.at, label %.critedge82

bb.at:                                            ; preds = %bb.as
  %i.do = load i16, ptr %8, align 8, !tbaa !16
  %i.dp = icmp ne i16 %i.do, 0
  %i.dq = load i16, ptr %26, align 2
  %i.dr = icmp ne i16 %i.dq, 0
  %or.cond18 = select i1 %i.dp, i1 true, i1 %i.dr
  %i.ds = load i16, ptr %27, align 4
  %i.dt = icmp ne i16 %i.ds, 0
  %or.cond21 = select i1 %or.cond18, i1 true, i1 %i.dt
  br i1 %or.cond21, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  store ptr @.str.24, ptr %19, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 13, ptr %i.du, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA15_cJRtS5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 1 dereferenceable(15) @.str.25, ptr noundef nonnull align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %26, ptr noundef nonnull align 2 dereferenceable(2) %27)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %21, align 8, !tbaa !60
  store ptr %i.dw, ptr %20, align 8, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !13
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.dv, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ea = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.aw
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.ay:                                            ; preds = %bb.av
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %21, align 8, !tbaa !60   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ay
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.ax
  %.pn64 = phi { ptr, i32 } [ %i.ef, %bb.ax ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.eg, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.da

bb.az:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.em = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 41, i64 noundef 1)
          to label %bb.ba unwind label %bb.o

bb.ba:                                            ; preds = %bb.az
  br i1 %i.em, label %bb.bb, label %.critedge82

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.en = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 2 dereferenceable(2) %i.i, i64 noundef 2, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERt.exit unwind label %bb.bd

_ZN11OpenImageIO4v3_18TGAInput4readERt.exit:      ; preds = %bb.bb
  br i1 %i.en, label %bb.bc, label %.critedge84

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERt.exit
  %i.eo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 noundef 1, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERc.exit unwind label %bb.bd

_ZN11OpenImageIO4v3_18TGAInput4readERc.exit:      ; preds = %bb.bc
  br i1 %i.eo, label %bb.be, label %.critedge84

bb.bd:                                            ; preds = %bb.cm, %bb.ce, %bb.cd, %bb.cc, %bb.bw, %bb.bc, %bb.bb, %bb.co, %bb.cf, %bb.bx, %bb.bt, %bb.br
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.be:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERc.exit
  %i.eq = load i8, ptr %8, align 8, !tbaa !16
  %.not66 = icmp eq i8 %i.eq, 0
  br i1 %.not66, label %bb.br, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull %8, i64 noundef 41)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.er = load i16, ptr %i.i, align 2, !tbaa !97  ; 2 uses
  %i.es = udiv i16 %i.er, 100
  %i.et = zext nneg i16 %i.es to i32
  store i32 %i.et, ptr %i.k, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  %i.eu = urem i16 %i.er, 100
  %i.ev = zext nneg i16 %i.eu to i32
  store i32 %i.ev, ptr %i.l, align 4, !tbaa !3
  invoke void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bi unwind label %bb.bm     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ex = load ptr, ptr %23, align 8, !tbaa !60   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bi
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.fc = load i8, ptr %i.j, align 1, !tbaa !16   ; 2 uses
  %.not69 = icmp eq i8 %i.fc, 32
  br i1 %.not69, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.fd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 noundef signext %i.fc)
          to label %bb.bo unwind label %bb.bn     ; 0 uses

bb.bk:                                            ; preds = %bb.bf
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.bl:                                            ; preds = %bb.bg
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.bm:                                            ; preds = %bb.bh
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %23, align 8, !tbaa !60   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bm
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !16
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.bl
  %.pn67 = phi { ptr, i32 } [ %i.ff, %bb.bl ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.fg, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bo, %bb.bj
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.27, ptr %24, align 8, !tbaa !61
  %i.fo = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 8, ptr %i.fo, align 8, !tbaa !63
  %i.fp = load ptr, ptr %22, align 8, !tbaa !60
  store ptr %i.fp, ptr %25, align 8, !tbaa !61
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !13
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.fn, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.bp unwind label %bb.bn

bb.bp:                                            ; preds = %bb.bo
  %i.ft = load ptr, ptr %22, align 8, !tbaa !60   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bp
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !16
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn70 = phi { ptr, i32 } [ %i.fm, %bb.bn ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ] ; 2 uses
  %i.fy = load ptr, ptr %22, align 8, !tbaa !60   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.bq
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !16
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.bk
  %.pn70.pn = phi { ptr, i32 } [ %i.fe, %bb.bk ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn70, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.cz

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %bb.be
  %i.gd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 4, i64 noundef 1)
          to label %bb.bs unwind label %bb.bd

bb.bs:                                            ; preds = %bb.br
  br i1 %i.gd, label %bb.bt, label %.critedge84

bb.bt:                                            ; preds = %bb.bs
  %i.ge = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 2)
          to label %bb.bu unwind label %bb.bd

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ge, label %bb.bv, label %.critedge84

bb.bv:                                            ; preds = %bb.bu
  %i.gf = load i16, ptr %26, align 2, !tbaa !16   ; 2 uses
  %.not73 = icmp eq i16 %i.gf, 0
  br i1 %.not73, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load i16, ptr %8, align 8, !tbaa !16
  %i.gi = uitofp i16 %i.gh to float
  %i.gj = uitofp i16 %i.gf to float
  %i.gk = fdiv float %i.gi, %i.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store float %i.gk, ptr %i.e, align 4, !tbaa !112
  store ptr @.str.28, ptr %5, align 8, !tbaa !61
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 16, ptr %i.gl, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.gg, ptr noundef nonnull dead_on_return %5, i64 267, ptr noundef nonnull %i.e)
          to label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf.exit unwind label %bb.bd

_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf.exit: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf.exit, %bb.bv
  %i.gm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 2, i64 noundef 2)
          to label %bb.by unwind label %bb.bd

bb.by:                                            ; preds = %bb.bx
  br i1 %i.gm, label %bb.bz, label %.critedge84

bb.bz:                                            ; preds = %bb.by
  %i.gn = load i16, ptr %26, align 2, !tbaa !16   ; 2 uses
  %.not74 = icmp eq i16 %i.gn, 0
  br i1 %.not74, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.go = load i16, ptr %8, align 8, !tbaa !16
  %i.gp = uitofp i16 %i.go to float
  %i.gq = uitofp i16 %i.gn to float
  %i.gr = fdiv float %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160) %i.gs, float noundef %i.gr)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.gu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 4 dereferenceable(4) %8, i64 noundef 4, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit unwind label %bb.bd

_ZN11OpenImageIO4v3_18TGAInput4readERj.exit:      ; preds = %bb.cc
  br i1 %i.gu, label %bb.cd, label %.critedge84

bb.cd:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit
  %i.gv = load i32, ptr %8, align 8, !tbaa !16
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !114
  %i.gy = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 4 dereferenceable(4) %8, i64 noundef 4, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit124 unwind label %bb.bd

_ZN11OpenImageIO4v3_18TGAInput4readERj.exit124:   ; preds = %bb.cd
  br i1 %i.gy, label %bb.ce, label %.critedge84

bb.ce:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit124
  %i.gz = load i32, ptr %8, align 8, !tbaa !16
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !115
  %i.hc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 4 dereferenceable(4) %8, i64 noundef 4, i64 noundef 1)
          to label %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit125 unwind label %bb.bd

_ZN11OpenImageIO4v3_18TGAInput4readERj.exit125:   ; preds = %bb.ce
  br i1 %i.hc, label %bb.cf, label %.critedge84

bb.cf:                                            ; preds = %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit125
  %i.hd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef 1, i64 noundef 1)
          to label %bb.cg unwind label %bb.bd

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.hd, label %bb.ch, label %.critedge84

bb.ch:                                            ; preds = %bb.cg
  %i.he = load i8, ptr %8, align 8, !tbaa !16     ; 4 uses
  %i.hf = icmp ugt i8 %i.he, 4
  br i1 %i.hf, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.hg = zext i8 %i.he to i32
  store i32 %i.hg, ptr %i.m, align 4, !tbaa !3
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br label %.critedge84

bb.ck:                                            ; preds = %bb.ci
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  br label %bb.cz

bb.cl:                                            ; preds = %bb.ch
  %i.hi = zext nneg i8 %i.he to i32               ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !18
  %.not75 = icmp eq i8 %i.he, 0
  br i1 %.not75, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.hi, ptr %i.d, align 4, !tbaa !3
  store ptr @.str.30, ptr %4, align 8, !tbaa !61
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.hl, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.hk, ptr noundef nonnull dead_on_return %4, i64 263, ptr noundef nonnull %i.d)
          to label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.bd

_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit, %bb.cl
  %i.hm = load i64, ptr %i.hb, align 8, !tbaa !115 ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.co, label %bb.cy

bb.co:                                            ; preds = %bb.cn
  %i.ho = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.hm, i32 noundef 0)
          to label %bb.cp unwind label %bb.bd

bb.cp:                                            ; preds = %bb.co
  br i1 %i.ho, label %bb.cq, label %.critedge84

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  %i.hp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.n, i64 noundef 2, i64 noundef 1)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.hp, label %bb.ct, label %.critedge

bb.cs:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cr
  %i.hr = load i8, ptr %i.n, align 1, !tbaa !16   ; 2 uses
  %i.hs = icmp ne i8 %i.hr, 0
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = icmp ne i8 %i.hu, 0
  %or.cond25 = select i1 %i.hs, i1 %i.hv, i1 false
  br i1 %or.cond25, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hx = zext i8 %i.hr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %i.hx, ptr %i.c, align 4, !tbaa !3
  store ptr @.str.31, ptr %3, align 8, !tbaa !61
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.hy, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.hw, ptr noundef nonnull dead_on_return %3, i64 263, ptr noundef nonnull %i.c)
          to label %bb.cv unwind label %bb.cs

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hz = load i8, ptr %i.ht, align 1, !tbaa !16
  %i.ia = zext i8 %i.hz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.ia, ptr %i.b, align 4, !tbaa !3
  store ptr @.str.32, ptr %2, align 8, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 16, ptr %i.ib, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.hw, ptr noundef nonnull dead_on_return %2, i64 263, ptr noundef nonnull %i.b)
          to label %bb.cw unwind label %bb.cs

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 %i.id, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.33, ptr %1, align 8, !tbaa !61
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 19, ptr %i.ie, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.hw, ptr noundef nonnull dead_on_return %1, i64 263, ptr noundef nonnull %i.a)
          to label %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit128 unwind label %bb.cs

_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit128: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit128, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.if = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.ad
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.cy
  %i.ih = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.sink.split

.critedge:                                        ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  br label %.critedge84

bb.cz:                                            ; preds = %bb.cs, %bb.ck, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.bd
  %.pn76 = phi { ptr, i32 } [ %i.hh, %bb.ck ], [ %i.hq, %bb.cs ], [ %i.ep, %bb.bd ], [ %i.gt, %bb.cb ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.o
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.cz ], [ %i.aw, %bb.o ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  %i.ij = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ad
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.da
  %i.il = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  resume { ptr, i32 } %.pn76.pn

.critedge82:                                      ; preds = %bb.ba, %bb.ai, %bb.aq, %bb.as
  %i.in = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ad
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %.critedge82
  %i.ip = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %.critedge82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.sink.split

.critedge84:                                      ; preds = %.critedge, %bb.cp, %_ZN11OpenImageIO4v3_18TGAInput4readERc.exit, %_ZN11OpenImageIO4v3_18TGAInput4readERt.exit, %bb.bs, %bb.bu, %bb.by, %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit, %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit124, %_ZN11OpenImageIO4v3_18TGAInput4readERj.exit125, %bb.cg, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.ir = load ptr, ptr %9, align 8, !tbaa !60    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.ad
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %.critedge84
  %i.it = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

end_hunk_0
