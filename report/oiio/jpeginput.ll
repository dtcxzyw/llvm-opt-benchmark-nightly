Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpeginput?download=true
inline.NumInlined: 3411
inline.NumDeleted: 1018
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecD2Ev:bb.a

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10check_openERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L17comp_info_to_attrB5cxx11ERK22jpeg_decompress_struct(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !376
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #34 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !45   ; 2 uses
  store i32 %i.e, ptr %i.d, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !376
  %i.h = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34
          to label %.noexc27 unwind label %.thread165 ; 6 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.i, align 4, !tbaa !45
  store i32 %i.k, ptr %i.j, align 4, !tbaa !45
  store i32 %i.e, ptr %i.h, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #33
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !376
  %i.n = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50 unwind label %.thread165 ; 7 uses

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50: ; preds = %.noexc27
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !45
  store i32 %i.q, ptr %i.p, align 4, !tbaa !45
  %i.r = load i64, ptr %i.h, align 4
  store i64 %i.r, ptr %i.n, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 8) #33
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !376  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  store i32 %i.w, ptr %i.s, align 4, !tbaa !45
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit unwind label %.thread165 ; 12 uses

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !45
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 16) #33
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !376
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 204
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !45
  %i.ae = load i128, ptr %i.x, align 1
  %i.af = xor i128 79228162532711081671548469249, %i.ae
  %i.ag = getelementptr i8, ptr %i.x, i64 16
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = zext i64 %i.ah to i128
  %i.aj = xor i128 4294967297, %i.ai
  %i.ak = or i128 %i.af, %i.aj
  %i.al = icmp ne i128 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not9.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not9.i.i.i.i, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit.thread, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit.thread: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.an, ptr noundef nonnull align 1 dereferenceable(5) @.str.47, i64 5, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.ao, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.ap, align 1, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit
  %i.aq = load i128, ptr %i.x, align 1
  %i.ar = xor i128 79228162532711081671548469250, %i.aq
  %i.as = getelementptr i8, ptr %i.x, i64 16
  %i.at = load i64, ptr %i.as, align 1
  %i.au = zext i64 %i.at to i128
  %i.av = xor i128 4294967297, %i.au
  %i.aw = or i128 %i.ar, %i.av
  %i.ax = icmp ne i128 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not9.i.i.i.i72 = icmp eq i32 %i.ay, 0
  br i1 %.not9.i.i.i.i72, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74.thread, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74.thread: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.az, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 5, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.ba, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bb, align 1, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74
  %i.bc = load i128, ptr %i.x, align 1
  %i.bd = xor i128 79228162532711081675843436546, %i.bc
  %i.be = getelementptr i8, ptr %i.x, i64 16
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = zext i64 %i.bf to i128
  %i.bh = xor i128 4294967297, %i.bg
  %i.bi = or i128 %i.bd, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not9.i.i.i.i81 = icmp eq i32 %i.bk, 0
  br i1 %.not9.i.i.i.i81, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83.thread, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83.thread: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bl, ptr noundef nonnull align 1 dereferenceable(5) @.str.49, i64 5, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bm, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bn, align 1, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83
  %i.bo = load i128, ptr %i.x, align 1
  %i.bp = xor i128 79228162532711081671548469252, %i.bo
  %i.bq = getelementptr i8, ptr %i.x, i64 16
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = zext i64 %i.br to i128
  %i.bt = xor i128 4294967297, %i.bs
  %i.bu = or i128 %i.bp, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not9.i.i.i.i90 = icmp eq i32 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !51
  br i1 %.not9.i.i.i.i90, label %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92.thread, label %._crit_edge.i.i97

_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92.thread: ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bx, ptr noundef nonnull align 1 dereferenceable(5) @.str.50, i64 5, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.by, align 8, !tbaa !54
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.bz, align 1, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

._crit_edge.i.i97:                                ; preds = %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !54
  store i8 0, ptr %i.bx, align 8, !tbaa !55
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge.i.i97, %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit92.thread, %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit83.thread, %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit74.thread, %_ZSt5equalIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S9_T0_.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #33
  ret void

.thread165:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50, %.noexc27, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.42.0.ph = phi ptr [ %i.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %.noexc27 ], [ %i.t, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50 ]
  %.sroa.0108.0.ph = phi ptr [ %i.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %i.h, %.noexc27 ], [ %i.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i50 ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.cb = ptrtoint ptr %.sroa.42.0.ph to i64
  %i.cc = ptrtoint ptr %.sroa.0108.0.ph to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0.ph, i64 noundef %i.cd) #33
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110decode_xmpENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18JpgInput16jpeg_decode_iptcEPKh(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.22) #37
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(5) @.str.46, i64 noundef 4) #37
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 18
  %2 = load i16, ptr %i.d, align 1
  %.not14 = icmp eq i16 %2, 1028
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i16, ptr %i.e, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.f = zext i16 %4 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_115decode_iptc_iimEPKviRNS0_9ImageSpecE(ptr noundef nonnull %i.g, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(160) %i.h) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !133
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !51
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !133  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !133
  %i.q = load i64, ptr %i.k, align 8, !tbaa !55
  store i64 %i.q, ptr %i.i, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !54
  store ptr %i.k, ptr %i.h, align 8, !tbaa !133
  store i64 0, ptr %i.s, align 8, !tbaa !54
  store i8 0, ptr %i.k, align 8, !tbaa !55
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !51, !alias.scope !379
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !54, !alias.scope !379
  store i8 0, ptr %i.e, align 8, !tbaa !55, !alias.scope !379
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !54, !alias.scope !379
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !54, !alias.scope !379
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #35
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !133, !alias.scope !379 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !55, !alias.scope !379
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ParamValueList8containsENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput16read_icc_profileEP22jpeg_decompress_structRNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca [256 x i32], align 16             ; 7 uses
  %i.d = alloca [256 x i32], align 16             ; 6 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %.072134 = load ptr, ptr %i.e, align 8, !tbaa !166 ; 2 uses
  %.not135 = icmp eq ptr %.072134, null
  br i1 %.not135, label %.thread124, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.072137 = phi ptr [ %.072, %bb.g ], [ %.072134, %bb.a ] ; 4 uses
  %.058136 = phi i32 [ %.260, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.072137, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !168
  %i.h = icmp eq i8 %i.g, -30
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.072137, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169  ; 3 uses
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(12) @.str.34) #37
  %.not74 = icmp eq i32 %i.k, 0
  br i1 %.not74, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %.058136, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !55
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i32 %.058136, %i.o
  br i1 %.not75, label %bb.e, label %.thread124

bb.e:                                             ; preds = %bb.c, %bb.d
  %.159 = phi i32 [ %.058136, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.q = load i8, ptr %i.p, align 1, !tbaa !55    ; 3 uses
  %i.r = icmp eq i8 %i.q, 0
  %i.s = zext i8 %i.q to i32
  %i.t = icmp samesign ult i32 %.159, %i.s
  %or.cond = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread124, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext i8 %i.q to i64                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !55
  %.not76 = icmp eq i8 %i.w, 0
  br i1 %.not76, label %.critedge, label %.thread124

.critedge:                                        ; preds = %bb.f
  store i8 1, ptr %i.v, align 1, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %.072137, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !170
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !197
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !195
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !38
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !198 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !196
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !198
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !55
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret { ptr, i64 } %.fca.1.insert.i
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !131    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !184
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #35
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !55
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #33
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !184
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { nounwind returns_twice }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { cold nounwind }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!39, !40}
!llvm.ident = !{!41}
!llvm.errno.tbaa = !{!45}

!0 = distinct !{!0, !155}
!1 = distinct !{!1, !155}
!2 = distinct !{!2, !155}
!3 = distinct !{null, null}
!4 = distinct !{!4, !155}
!5 = distinct !{!5, !155}
!6 = distinct !{!6, !155}
!7 = distinct !{null, null}
!8 = distinct !{null, null, null}
!9 = distinct !{null, null}
!10 = distinct !{!10, !155}
!11 = distinct !{!11, !155}
!12 = distinct !{!12, !155}
!13 = distinct !{!13, !155}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !155}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{!19, !155}
!20 = distinct !{!20, !155}
!21 = distinct !{!21, !155}
!22 = distinct !{!22, !155}
!23 = distinct !{null, null, null, null}
!24 = distinct !{!24, !155}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{null, null}
!28 = distinct !{!28, !155}
!29 = distinct !{!29, !155}
!30 = distinct !{!30, !155}
!31 = distinct !{null}
!32 = distinct !{null, null, null, null}
!33 = distinct !{null, null, null}
!34 = distinct !{null}
!35 = distinct !{!35, !155}
!36 = distinct !{!36, !155}
!37 = distinct !{null, null, null, null}
!38 = distinct !{null, null, null, null, null}
!39 = !{i32 8, !"PIC Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"omnipotent char", !42, i64 0}
!44 = !{!"int", !43, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"vtable pointer", !42, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"any pointer", !43, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!"long", !43, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !52, i64 8, !43, i64 16}
!54 = !{!53, !52, i64 8}
!55 = !{!43, !43, i64 0}
!56 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !43, i64 0, !43, i64 1, !43, i64 2, !43, i64 3, !44, i64 4}
!57 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !48, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !60, i64 0}
!62 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !65, i64 0}
!67 = !{!"bool", !43, i64 0}
!68 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !48, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !71, i64 0}
!73 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !72, i64 0}
!74 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !56, i64 64, !61, i64 72, !66, i64 96, !44, i64 120, !44, i64 124, !67, i64 128, !73, i64 136}
!75 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !48, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !75, i64 0}
!77 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !48, i64 0}
!78 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !77, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !76, i64 0, !78, i64 8}
!80 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !80, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !81, i64 0}
!83 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !82, i64 0}
!84 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !74, i64 8, !83, i64 168}
!85 = !{!"p1 _ZTS14jpeg_error_mgr", !48, i64 0}
!86 = !{!"p1 _ZTS15jpeg_memory_mgr", !48, i64 0}
!87 = !{!"p1 _ZTS17jpeg_progress_mgr", !48, i64 0}
!88 = !{!"p1 _ZTS15jpeg_source_mgr", !48, i64 0}
!89 = !{!"_ZTS13J_COLOR_SPACE", !43, i64 0}
!90 = !{!"double", !43, i64 0}
!91 = !{!"_ZTS12J_DCT_METHOD", !43, i64 0}
!92 = !{!"_ZTS13J_DITHER_MODE", !43, i64 0}
!93 = !{!"any p2 pointer", !48, i64 0}
!94 = !{!"p2 omnipotent char", !93, i64 0}
!95 = !{!"p1 int", !48, i64 0}
!96 = !{!"short", !43, i64 0}
!97 = !{!"p1 _ZTS18jpeg_marker_struct", !48, i64 0}
!98 = !{!"p1 _ZTS18jpeg_decomp_master", !48, i64 0}
!99 = !{!"p1 _ZTS22jpeg_d_main_controller", !48, i64 0}
!100 = !{!"p1 _ZTS22jpeg_d_coef_controller", !48, i64 0}
!101 = !{!"p1 _ZTS22jpeg_d_post_controller", !48, i64 0}
!102 = !{!"p1 _ZTS21jpeg_input_controller", !48, i64 0}
!103 = !{!"p1 _ZTS18jpeg_marker_reader", !48, i64 0}
!104 = !{!"p1 _ZTS20jpeg_entropy_decoder", !48, i64 0}
!105 = !{!"p1 _ZTS16jpeg_inverse_dct", !48, i64 0}
!106 = !{!"p1 _ZTS14jpeg_upsampler", !48, i64 0}
!107 = !{!"p1 _ZTS22jpeg_color_deconverter", !48, i64 0}
!108 = !{!"p1 _ZTS20jpeg_color_quantizer", !48, i64 0}
!109 = !{!"_ZTS22jpeg_decompress_struct", !85, i64 0, !86, i64 8, !87, i64 16, !48, i64 24, !44, i64 32, !44, i64 36, !88, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !89, i64 60, !89, i64 64, !44, i64 68, !44, i64 72, !90, i64 80, !44, i64 88, !44, i64 92, !91, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !92, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !94, i64 160, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !95, i64 192, !43, i64 200, !43, i64 232, !43, i64 264, !44, i64 296, !48, i64 304, !44, i64 312, !44, i64 316, !44, i64 320, !43, i64 324, !43, i64 340, !43, i64 356, !44, i64 372, !44, i64 376, !43, i64 380, !43, i64 381, !43, i64 382, !96, i64 384, !96, i64 386, !44, i64 388, !43, i64 392, !44, i64 396, !97, i64 400, !44, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !49, i64 432, !44, i64 440, !43, i64 448, !44, i64 480, !44, i64 484, !44, i64 488, !43, i64 492, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !95, i64 552, !44, i64 560, !44, i64 564, !98, i64 568, !99, i64 576, !100, i64 584, !101, i64 592, !102, i64 600, !103, i64 608, !104, i64 616, !105, i64 624, !106, i64 632, !107, i64 640, !108, i64 648}
!110 = !{!"_ZTS14jpeg_error_mgr", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !44, i64 40, !43, i64 44, !44, i64 124, !52, i64 128, !94, i64 136, !44, i64 144, !94, i64 152, !44, i64 160, !44, i64 164}
!111 = !{!"p1 _ZTSN11OpenImageIO4v3_18JpgInputE", !48, i64 0}
!112 = !{!"_ZTSN11OpenImageIO4v3_18JpgInput12my_error_mgrE", !110, i64 0, !43, i64 168, !111, i64 368}
!113 = !{!"p2 _ZTS20jvirt_barray_control", !93, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIhSaIhEE", !116, i64 0}
!118 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !48, i64 0}
!119 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_19ImageSpecELb0EE", !118, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !120, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_ELb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !123, i64 0}
!125 = !{!"p1 _ZTS18uhdr_codec_private", !48, i64 0}
!126 = !{!"_ZTSN11OpenImageIO4v3_18JpgInputE", !84, i64 0, !53, i64 184, !44, i64 216, !67, i64 220, !67, i64 221, !67, i64 222, !67, i64 223, !109, i64 224, !112, i64 880, !113, i64 1256, !117, i64 1264, !124, i64 1288, !67, i64 1296, !125, i64 1304}
!127 = !{!126, !111, i64 1248}
!128 = !{!118, !118, i64 0}
!129 = !{!126, !67, i64 1296}
!130 = !{!126, !125, i64 1304}
!131 = !{!114, !49, i64 0}
!132 = !{!114, !49, i64 16}
!133 = !{!53, !49, i64 0}
!134 = !{!126, !85, i64 224}
!135 = !{!110, !48, i64 24}
!136 = !{!126, !67, i64 222}
!137 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !49, i64 0, !52, i64 8}
!138 = !{!137, !49, i64 0}
!139 = !{!137, !52, i64 8}
!140 = !{!126, !67, i64 223}
!141 = !{i8 0, i8 2}
!142 = !{}
!143 = !{!126, !113, i64 1256}
!144 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !43, i64 0}
!145 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !53, i64 8, !52, i64 40, !144, i64 48, !53, i64 56}
!146 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !49, i64 0}
!147 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !146, i64 0, !56, i64 8, !43, i64 16, !44, i64 32, !43, i64 36, !67, i64 37, !67, i64 38}
!148 = !{!147, !67, i64 38}
!149 = !{!126, !67, i64 220}
!150 = !{!58, !57, i64 8}
!151 = !{!58, !57, i64 0}
!152 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!153 = !{!58, !57, i64 16}
end_hunk_1
