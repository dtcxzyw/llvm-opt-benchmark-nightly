Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/webpinput?download=true
inline.NumInlined: 3121
inline.NumDeleted: 957
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !303
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !303
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  store ptr %i.k, ptr %i.g, align 8, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !63   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.v = load <2 x ptr>, ptr %i.p, align 8, !tbaa !122
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  store ptr %i.x, ptr %i.t, align 8, !tbaa !67
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.q, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !66
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ae = ptrtoint ptr %i.u to i64
  %i.af = ptrtoint ptr %i.q to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !123
  store <2 x ptr> %i.aq, ptr %i.aj, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !60
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i) #26
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.al to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aw) #27
  br label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit

_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #3

declare i32 @WebPDemuxGetChunk(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @WebPDemuxReleaseChunkIterator(ptr noundef) local_unnamed_addr #3

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_118decode_icc_profileENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = add nuw nsw i32 %1, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = invoke i32 @WebPDemuxGetFrame(ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %.not.i.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.not.i, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  store i32 %1, ptr %i.c, align 8, !tbaa !116
  br label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.k

_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit: ; preds = %bb.d, %.noexc, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %.noexc ], [ true, %bb.d ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit9 unwind label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit9: ; preds = %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib.exit
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18webp_pvt9WebpInput13read_subimageEib(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ne i32 %i.e, %1
  %or.cond.not = select i1 %2, i1 %i.f, i1 false
  br i1 %or.cond.not, label %bb.c, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !114
  %i.i = add nsw i32 %1, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = tail call i32 @WebPDemuxGetFrame(ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull %i.j)
  %.not.i.not = icmp eq i32 %i.k, 0
  br i1 %.not.i.not, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %1, ptr %i.a, align 8, !tbaa !116
  br label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit

bb.f:                                             ; preds = %bb.c
  %3 = add nsw i32 %1, -1                         ; 2 uses
  %4 = icmp eq i32 %i.b, %3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, %3
  %or.cond18 = select i1 %4, i1 %i.n, i1 false
  br i1 %or.cond18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = add nsw i32 %1, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = tail call i32 @WebPDemuxGetFrame(ptr noundef %i.p, i32 noundef %i.q, ptr noundef nonnull %i.r)
  %.not.i16.not = icmp eq i32 %i.s, 0
  br i1 %.not.i16.not, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit, label %.thread

.thread:                                          ; preds = %bb.g
  store i32 %1, ptr %i.a, align 8, !tbaa !116
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.b, %1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  %i.u = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18webp_pvt9WebpInput21read_current_subimageEv(ptr noundef nonnull align 8 dereferenceable(360) %0)
  br i1 %i.u, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 -1, ptr %i.a, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 -1, ptr %i.l, align 4, !tbaa !124
  %i.w = icmp sgt i32 %1, -1
  br i1 %i.w, label %.lr.ph, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit

.lr.ph:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %i.y = phi i32 [ -1, %.lr.ph ], [ %i.ae, %bb.m ] ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.aa = add nsw i32 %i.y, 2
  %i.ab = tail call i32 @WebPDemuxGetFrame(ptr noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.x)
  %.not.i18.not = icmp eq i32 %i.ab, 0
  br i1 %.not.i18.not, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.y, 1
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !116
  %i.ad = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18webp_pvt9WebpInput21read_current_subimageEv(ptr noundef nonnull align 8 dereferenceable(360) %0)
  br i1 %i.ad, label %bb.m, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !116 ; 3 uses
  store i32 %i.ae, ptr %i.l, align 4, !tbaa !124
  %i.af = icmp slt i32 %i.ae, %1
  br i1 %i.af, label %bb.k, label %_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit, !llvm.loop !304

_ZN11OpenImageIO4v3_18webp_pvt9WebpInput16iter_to_subimageEi.exit: ; preds = %bb.l, %bb.m, %bb.k, %bb.j, %bb.g, %bb.e, %bb.d, %bb.i, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ true, %bb.i ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.j ], [ true, %bb.m ], [ false, %bb.l ], [ false, %bb.k ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18webp_pvt9WebpInput21read_current_subimageEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 15 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %5 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 17 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 10 uses
  %7 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116  ; 3 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  %.not = icmp eq i32 %i.b, %i.f
  br i1 %.not, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.d, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load i32, ptr %i.h, align 8
  %.not18 = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 true, i1 %.not18
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.k = load i32, ptr %i.j, align 4, !tbaa !305
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !306
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8, !tbaa !307
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #26
  %i.u = mul i64 %i.t, %i.s                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !308
  %i.x = icmp eq i32 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !309  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !310 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 2 uses
  %i.af = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #26
  %i.ag = sub i64 %i.af, %i.u                     ; 2 uses
  %i.ah = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #26
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call ptr @WebPDecodeRGBInto(ptr noundef %i.z, i64 noundef %i.ab, ptr noundef %i.ae, i64 noundef %i.ag, i32 noundef %i.ai)
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call ptr @WebPDecodeRGBAInto(ptr noundef %i.z, i64 noundef %i.ab, ptr noundef %i.ae, i64 noundef %i.ag, i32 noundef %i.ai) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.am = load i8, ptr %i.al, align 8, !tbaa !117, !range !125, !noundef !126
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !115
  %i.ap = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #26
  call void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr %i.ao, i64 %i.ap, ptr noundef null, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
  store i32 -2147483648, ptr %2, align 8, !tbaa !312
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aq, i8 0, i64 28, i1 false)
  %i.ar = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7premultERNS0_8ImageBufERKS2_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i32 noundef 0)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.af

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !306
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !127
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !308
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load i64, ptr %i.az, align 8
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay, i64 %.sroa.01.0.copyload) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115
  %i.bc = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %3, i1 noundef zeroext false) #26
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(160) %3, ptr %i.bb, i64 %i.bc, ptr noundef null, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !313
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !314
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef 4, i64 258) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bi = load <2 x i32>, ptr %i.bh, align 8, !tbaa !44
  store <2 x i32> %i.bi, ptr %5, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef 1)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !309
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !310
  %i.bn = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bo = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %5, i1 noundef zeroext false) #26
  %i.bp = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %5, i1 noundef zeroext false) #26
  %i.bq = trunc i64 %i.bp to i32
  %i.br = invoke ptr @WebPDecodeRGBAInto(ptr noundef %i.bk, i64 noundef %i.bm, ptr noundef %i.bn, i64 noundef %i.bo, i32 noundef %i.bq)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !117, !range !125, !noundef !126
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 -2147483648, ptr %7, align 8, !tbaa !312
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bv, i8 0, i64 28, i1 false)
  %i.bw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7premultERNS0_8ImageBufERKS2_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef 0)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  store i32 -2147483648, ptr %8, align 8, !tbaa !312
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bx, i8 0, i64 28, i1 false)
  %i.by = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4overERNS0_8ImageBufERKS2_S5_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef 0)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  br label %bb.aa

bb.t:                                             ; preds = %bb.p, %bb.n
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %i.cd, %bb.t ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #26
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, %i.cf
end_hunk_0
