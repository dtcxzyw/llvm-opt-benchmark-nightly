Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gifinput?download=true
inline.NumInlined: 3034
inline.NumDeleted: 916
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN11OpenImageIO4v3_18GIFInput22read_subimage_metadataERNS0_9ImageSpecE:bb.a

bb.o:                                             ; preds = %.lr.ph
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !181 ; 2 uses
  %.not13 = icmp eq ptr %i.cf, null
  br i1 %.not13, label %thread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.g, align 4, !tbaa !44
  call void @_ZN11OpenImageIO4v3_18GIFInput18read_gif_extensionEiPhRNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %i.cg, ptr noundef nonnull %i.cf, ptr noundef nonnull align 8 dereferenceable(160) %1)
  %.pre23 = load ptr, ptr %i.h, align 8, !tbaa !181
  %i.ch = icmp eq ptr %.pre23, null
  br i1 %i.ch, label %thread-pre-split, label %.lr.ph, !llvm.loop !378

thread-pre-split:                                 ; preds = %bb.o, %bb.p, %bb.l, %bb.m, %bb.h
  %.pr = load i32, ptr %i.f, align 4, !tbaa !385
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.g
  %i.ci = phi i32 [ %.pr, %thread-pre-split ], [ %i.bg, %bb.g ]
  %.not14 = icmp eq i32 %i.ci, 2
  br i1 %.not14, label %bb.r, label %bb.e, !llvm.loop !379

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.ay, align 8, !tbaa !167
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !386, !range !198, !noundef !199
  %i.cm = zext nneg i8 %i.cl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !44
  store ptr @.str.8, ptr %2, align 8, !tbaa !174
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 15, ptr %i.cn, align 8, !tbaa !175
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %2, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.r, %bb.n, %bb.k, %bb.i, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.r ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  ret i1 %.0
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !guid !387 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !195  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !388
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !388
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !196
  store ptr %i.k, ptr %i.g, align 8, !tbaa !196
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
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !192  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.v = load <2 x ptr>, ptr %i.p, align 8, !tbaa !200
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !200
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !194
  store ptr %i.x, ptr %i.t, align 8, !tbaa !194
  %.not4.i.i.i.i.i = icmp eq ptr %i.q, %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.q, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !170 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !131
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
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !189 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !190 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.aq = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !201
  store <2 x ptr> %i.aq, ptr %i.aj, align 8, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !191
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !191
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i) #28
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
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #1

declare i32 @DGifGetRecordType(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 !guid !389 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !197
  %i.f = tail call ptr @GifErrorString(i32 noundef %i.e)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !181
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i32 @DGifGetImageDesc(ptr noundef) local_unnamed_addr #1

declare i32 @DGifGetExtension(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @DGifGetExtensionNext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18GIFInput18read_subimage_dataEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !392 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !394  ; 2 uses
  %.not44 = icmp eq ptr %i.j, null
  br i1 %.not44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.9)
  br label %bb.aa

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge.in = phi ptr [ %i.h, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.034.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.034 = load ptr, ptr %.034.in, align 8, !tbaa !397 ; 3 uses
  %storemerge = load i32, ptr %storemerge.in, align 8, !tbaa !398 ; 2 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 2
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.e, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.w, i1 false), !tbaa !131
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.8, ptr %1, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.y, align 8, !tbaa !175
  %i.z = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull dead_on_return %1, i32 noundef 0)
  %.not45 = icmp eq i32 %i.z, 0                   ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !167 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !399
  %.fr122 = freeze i32 %i.ad                      ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !400
  %.fr121 = freeze i32 %i.af                      ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !401
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !402
  %i.aj = sext i32 %.fr121 to i64
  %i.ak = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #30 ; 7 uses
  %.not5179 = icmp slt i32 %.fr122, 1
  br i1 %.not5179, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, label %.lr.ph82

.lr.ph82:                                         ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit
  %.not123 = icmp eq i32 %.fr122, 1               ; 2 uses
  %i.al = add nuw nsw i32 %.fr122, 1
  %i.am = lshr i32 %i.al, 1                       ; 3 uses
  %.not27.i = icmp eq i32 %.fr122, 2              ; 2 uses
  %i.an = add nuw nsw i32 %.fr122, 3
  %i.ao = lshr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp samesign ult i32 %.fr122, 5
  %i.aq = add nuw nsw i32 %.fr122, 7
  %i.ar = lshr i32 %i.aq, 3                       ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not4977 = icmp sgt i32 %.fr121, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  br i1 %.not4977, label %.lr.ph82.split.us, label %.lr.ph82.split

.lr.ph82.split.us:                                ; preds = %.lr.ph82, %.critedge56.us
  %.03280.us = phi i32 [ %i.cz, %.critedge56.us ], [ 0, %.lr.ph82 ] ; 9 uses
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.ay = invoke i32 @DGifGetLine(ptr noundef %i.ax, ptr noundef nonnull %i.ak, i32 noundef %.fr121)
          to label %bb.f unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph82.split.us
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  br i1 %.not45, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not123, label %.thread26.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.us = icmp samesign ugt i32 %i.am, %.03280.us
  br i1 %.not.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = sub nuw nsw i32 %.03280.us, %i.am
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = or disjoint i32 %i.bb, 1
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

bb.k:                                             ; preds = %bb.i
  br i1 %.not27.i, label %.thread26.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not24.i.us = icmp samesign ugt i32 %i.ao, %.03280.us
  br i1 %.not24.i.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = sub nuw nsw i32 %.03280.us, %i.ao
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = or disjoint i32 %i.be, 2
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

bb.n:                                             ; preds = %bb.l
  %.not25.i.us = icmp samesign ugt i32 %i.ar, %.03280.us
  %or.cond118 = select i1 %i.ap, i1 true, i1 %.not25.i.us
  br i1 %or.cond118, label %.thread26.i.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = sub nuw nsw i32 %.03280.us, %i.ar
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %i.bi = or disjoint i32 %i.bh, 4
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

.thread26.i.us:                                   ; preds = %bb.n, %bb.k, %bb.h
  %i.bj = shl nuw nsw i32 %.03280.us, 3
  br label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us: ; preds = %.thread26.i.us, %bb.o, %bb.m, %bb.j, %bb.g
  %i.bk = phi i32 [ %.03280.us, %bb.g ], [ %i.bc, %bb.j ], [ %i.bf, %bb.m ], [ %i.bi, %bb.o ], [ %i.bj, %.thread26.i.us ]
  %i.bl = add nsw i32 %i.bk, %i.ah                ; 4 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !44
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.p, label %.critedge56.us

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !184
  %i.bo = icmp slt i32 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.us, label %.critedge56.us

.lr.ph.us:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 0, ptr %i.d, align 4, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.us, %bb.u
  %2 = phi i32 [ 0, %.lr.ph.us ], [ %5, %bb.u ]   ; 3 uses
  %3 = zext nneg i32 %2 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %3 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !131 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %.not47.us = icmp sgt i32 %storemerge, %i.br
  br i1 %.not47.us, label %bb.r, label %.split85.us

bb.r:                                             ; preds = %bb.q
  %4 = add nsw i32 %2, %i.ai                      ; 3 uses
  %i.bs = load i32, ptr %i.at, align 4, !tbaa !185
  %i.bt = load i32, ptr %i.au, align 4, !tbaa !183 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.bl
  %i.bv = add nsw i32 %i.bu, %4
  %i.bw = mul nsw i32 %i.bv, %i.bs
  %i.bx = icmp sgt i32 %4, -1
  %i.by = icmp slt i32 %4, %i.bt
  %or.cond54.us = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond54.us, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bz = load i32, ptr %i.av, align 8, !tbaa !186
  %.not48.us = icmp eq i32 %i.bz, %i.br
  br i1 %.not48.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = zext i8 %i.bq to i64
  %i.cb = getelementptr inbounds nuw [3 x i8], ptr %.034, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !404
  %i.cd = sext i32 %i.bw to i64                   ; 4 uses
  %i.ce = load ptr, ptr %i.aw, align 8, !tbaa !168
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !131
  %i.cg = load i8, ptr %i.bp, align 1, !tbaa !131
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [3 x i8], ptr %.034, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !405
  %i.cl = load ptr, ptr %i.aw, align 8, !tbaa !168
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.cd
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !131
  %i.co = load i8, ptr %i.bp, align 1, !tbaa !131
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [3 x i8], ptr %.034, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !406
  %i.ct = load ptr, ptr %i.aw, align 8, !tbaa !168
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cd
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !131
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !168
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cd
  %i.cy = getelementptr i8, ptr %i.cx, i64 3
  store i8 -1, ptr %i.cy, align 1, !tbaa !131
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %5 = add nuw nsw i32 %2, 1                      ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !44
  %.not49.us = icmp slt i32 %5, %.fr121
  br i1 %.not49.us, label %bb.q, label %..critedge_crit_edge.us, !llvm.loop !390

.critedge56.us:                                   ; preds = %..critedge_crit_edge.us, %bb.p, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cz = add nuw nsw i32 %.03280.us, 1           ; 2 uses
  %exitcond141.not = icmp eq i32 %i.cz, %.fr122
  br i1 %exitcond141.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, label %.lr.ph82.split.us, !llvm.loop !391

..critedge_crit_edge.us:                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.critedge56.us

.lr.ph82.split:                                   ; preds = %.lr.ph82
  br i1 %.not45, label %.lr.ph82.split.split.us, label %.lr.ph82.split.split

.lr.ph82.split.split.us:                          ; preds = %.lr.ph82.split, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91
  %.03280.us90 = phi i32 [ %i.dd, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91 ], [ 0, %.lr.ph82.split ]
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.db = invoke i32 @DGifGetLine(ptr noundef %i.da, ptr noundef nonnull %i.ak, i32 noundef %.fr121)
          to label %bb.v unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph82.split.split.us
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.split.us, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91: ; preds = %bb.v
  %i.dd = add nuw nsw i32 %.03280.us90, 1         ; 2 uses
  %exitcond140.not = icmp eq i32 %i.dd, %.fr122
  br i1 %exitcond140.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, label %.lr.ph82.split.split.us, !llvm.loop !391

.lr.ph82.split.split:                             ; preds = %.lr.ph82.split
  br i1 %.not123, label %.lr.ph82.split.split.split, label %.lr.ph82.split.split.split.us

.lr.ph82.split.split.split.us:                    ; preds = %.lr.ph82.split.split, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107
  %.03280.us102 = phi i32 [ %i.dh, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107 ], [ 0, %.lr.ph82.split.split ] ; 3 uses
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.df = invoke i32 @DGifGetLine(ptr noundef %i.de, ptr noundef nonnull %i.ak, i32 noundef %.fr121)
          to label %bb.w unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph82.split.split.split.us
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.split.us, label %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107

_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.not.i.us103 = icmp samesign ugt i32 %i.am, %.03280.us102
  %.not.i.us103.not = xor i1 %.not.i.us103, true
  %brmerge = or i1 %.not.i.us103.not, %.not27.i
  %brmerge.not = xor i1 %brmerge, true
  %.not24.i.us104 = icmp samesign ugt i32 %i.ao, %.03280.us102
  %or.cond187 = select i1 %brmerge.not, i1 %.not24.i.us104, i1 false ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.dh = add nuw nsw i32 %.03280.us102, 1        ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %.fr122
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, label %.lr.ph82.split.split.split.us, !llvm.loop !391

.lr.ph82.split.split.split:                       ; preds = %.lr.ph82.split.split
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.dj = invoke i32 @DGifGetLine(ptr noundef %i.di, ptr noundef nonnull %i.ak, i32 noundef %.fr121)
          to label %bb.x unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.lr.ph82.split.split.split
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.split.us, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63

.split.us:                                        ; preds = %bb.w, %bb.v, %bb.f, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !167
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !197
  %i.do = invoke ptr @GifErrorString(i32 noundef %i.dn)
          to label %.noexc unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.split.us
  store ptr %i.do, ptr %i.a, align 8, !tbaa !181
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit unwind label %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63

.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph82.split.split.us, %.lr.ph82.split.us, %.lr.ph82.split.split.split.us, %.lr.ph82.split.split.split, %.split.us, %.noexc
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

.split85.us:                                      ; preds = %bb.q
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJhiiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.split85.us
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.z:                                             ; preds = %.split85.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.y ], [ %lpad.loopexit.split-lp182, %.loopexit.split.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  resume { ptr, i32 } %.pn

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63: ; preds = %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91, %.critedge56.us, %bb.x, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit, %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit, %bb.z
  %.not5175 = phi i1 [ false, %bb.z ], [ false, %_ZN11OpenImageIO4v3_18GIFInput17report_last_errorEv.exit ], [ true, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEiEvT_S7_RKT0_.exit ], [ true, %.critedge56.us ], [ true, %bb.x ], [ true, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us91 ], [ true, %_ZN11OpenImageIO4v3_18GIFInput18decode_line_numberEii.exit.us107 ]
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #27
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63, %bb.c
  %.6 = phi i1 [ %.not5175, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit63 ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !409 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.106", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !410
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !410
  %i.b = load ptr, ptr %4, align 8, !tbaa !170
  store ptr %i.b, ptr %3, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !130
  store i64 %i.e, ptr %i.c, align 8, !tbaa !175
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !170    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !131
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !170    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !131
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare i32 @DGifGetLine(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJhiiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !415 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.107", align 16 ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !416
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.b = load i8, ptr %2, align 1, !tbaa !131, !noalias !418
  %i.c = zext i8 %i.b to i32
  store i32 %i.c, ptr %6, align 16, !tbaa !131, !alias.scope !417, !noalias !416
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load i32, ptr %3, align 4, !tbaa !44, !noalias !418
  store i32 %i.e, ptr %i.d, align 16, !tbaa !131, !alias.scope !417, !noalias !416
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.g = load i32, ptr %4, align 4, !tbaa !44, !noalias !418
  store i32 %i.g, ptr %i.f, align 16, !tbaa !131, !alias.scope !417, !noalias !416
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.i = load i32, ptr %5, align 4, !tbaa !44, !noalias !418
  store i32 %i.i, ptr %i.h, align 16, !tbaa !131, !alias.scope !417, !noalias !416
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %1, i64 %i.a, i64 4370, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !416
  %i.j = load ptr, ptr %8, align 8, !tbaa !170
  store ptr %i.j, ptr %7, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !130
  store i64 %i.m, ptr %i.k, align 8, !tbaa !175
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !170    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !131
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %8, align 8, !tbaa !170    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !131
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %i.s
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #1

declare ptr @DGifOpen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_18GIFInput8readFuncEP11GifFileTypePhi(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 align 2 !guid !419 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = sext i32 %2 to i64                       ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !420  ; 2 uses
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %i.g) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef %1, i64 noundef %i.e) ; 4 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !188
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(88) %i.h)
  %i.r = sub i64 %i.q, %i.l
  store i64 %i.r, ptr %i.c, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_0
