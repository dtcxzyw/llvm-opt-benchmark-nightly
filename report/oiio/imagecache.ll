Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfo4initERS1_PNS0_9ImageSpecEb:bb.a
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store <4 x float> %i.jh, ptr %i.jk, align 4, !tbaa !132, !alias.scope !1196
  %i.jl = load ptr, ptr %i.hp, align 8, !tbaa !396 ; 2 uses
  store ptr %i.ij, ptr %i.hp, align 8, !tbaa !396
  %.not.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i.i: ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef 64) #46
  br label %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i.i, %bb.ah, %bb.ag
  store ptr @.str.54, ptr %22, align 8, !tbaa !111
  %i.jm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 14, ptr %i.jm, align 8, !tbaa !112
  %i.jn = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %22, i32 noundef 0) ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.jp = zext nneg i32 %i.jn to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.jp)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE5resetEPS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  ret void
}

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11parse_floatERNS0_17basic_string_viewIcSt11char_traitsIcEEERfb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10parse_charERNS0_17basic_string_viewIcSt11char_traitsIcEEEcbb(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #16

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !397
  %i.d = load ptr, ptr %0, align 8, !tbaa !398    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !399  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !398    ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !399  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !204  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #46
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exitthread-pre-split, %bb.d
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !397
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit, %bb.g
  store ptr %i.n, ptr %0, align 8, !tbaa !398
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !399
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %1
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !397
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %.not.i, ptr %i.f, ptr %i.d    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i32, ptr %i.h, align 4, !tbaa !202  ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !201  ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load i32, ptr %i.n, align 4, !tbaa !203  ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.i to i64
  %i.r = zext nneg i32 %i.l to i64
  %mul.i22 = mul nuw nsw i64 %i.r, %i.q           ; 2 uses
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.o to i64
  %mul.i16 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %mul.i22) ; 2 uses
  %mul.val.i17 = extractvalue { i64, i1 } %mul.i16, 0
  %mul.ov.i19 = extractvalue { i64, i1 } %mul.i16, 1
  %spec.select.i20 = select i1 %mul.ov.i19, i64 -1, i64 %mul.val.i17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.011 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i20, %bb.e ], [ %mul.i22, %bb.d ]
  ret i64 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, 4294967296) i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !357  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !387  ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !386
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.j = load i8, ptr %i.i, align 1, !tbaa !400
  %i.k = zext i8 %i.j to i64
  %i.l = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.f) #5
  %i.m = mul i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = mul i32 %narrow.i, %i.n
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.d, i32 %i.o) ; 2 uses
  %umul.value.i = extractvalue { i32, i1 } %umul.i, 0
  %umul.overflow.i = extractvalue { i32, i1 } %umul.i, 1
  %1 = zext i32 %umul.value.i to i64
  %2 = select i1 %umul.overflow.i, i64 4294967295, i64 %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %2, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = select i1 %.not.i.i, ptr %i.f, ptr %i.d  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i32, ptr %i.h, align 4, !tbaa !202  ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !201  ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load i32, ptr %i.n, align 4, !tbaa !203  ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.i to i64
  %i.r = zext nneg i32 %i.l to i64
  %mul.i22.i = mul nuw nsw i64 %i.r, %i.q         ; 2 uses
  %.not.i = icmp eq i32 %i.o, 1
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.o to i64
  %mul.i16.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.s, i64 %mul.i22.i) ; 2 uses
  %mul.val.i17.i = extractvalue { i64, i1 } %mul.i16.i, 0
  %mul.ov.i19.i = extractvalue { i64, i1 } %mul.i16.i, 1
  %spec.select.i20.i = select i1 %mul.ov.i19.i, i64 -1, i64 %mul.val.i17.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.011.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i20.i, %bb.e ], [ %mul.i22.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !387  ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !386
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !400
  %i.ab = zext i8 %i.aa to i64
  %i.ac = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.w) #5
  %i.ad = mul i64 %i.ac, %i.ab
  %i.ae = trunc i64 %i.ad to i32
  %i.af = mul i32 %narrow.i.i, %i.ae
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.u, i32 %i.af)
  %umul.i.i.fr = freeze { i32, i1 } %umul.i.i     ; 2 uses
  %mul.ov.i.a = extractvalue { i32, i1 } %umul.i.i.fr, 1
  br i1 %mul.ov.i.a, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %mul.i12 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.011.i, i64 4294967295) ; 2 uses
  %mul.val.i13 = extractvalue { i64, i1 } %mul.i12, 0
  %mul.ov.i15 = extractvalue { i64, i1 } %mul.i12, 1
  %spec.select.i16 = select i1 %mul.ov.i15, i64 -1, i64 %mul.val.i13
  br label %bb.f

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i.fr, 0 ; 2 uses
  %2 = zext i32 %umul.value.i.i to i64
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %.011.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i1 = icmp eq i32 %umul.value.i.i, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  br i1 %.not.i1, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %bb.f

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread
  %3 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread ], [ %spec.select.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit ], [ %spec.select.i16, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10 ]
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i64 0, 9223372030412324866) i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = select i1 %.not.i, ptr %i.f, ptr %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !195  ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !387  ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !386
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.r = load i8, ptr %i.q, align 1, !tbaa !400
  %i.s = zext i8 %i.r to i64
  %i.t = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.n) #5
  %i.u = mul i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = mul i32 %narrow.i.i, %i.v
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.l, i32 %i.w)
  %umul.i.i.fr = freeze { i32, i1 } %umul.i.i     ; 2 uses
  %umul.overflow.i.i = extractvalue { i32, i1 } %umul.i.i.fr, 1
  br i1 %umul.overflow.i.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %mul.i1622 = mul nuw nsw i64 %2, 4294967295
  br label %bb.c

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i.fr, 0 ; 2 uses
  %3 = zext i32 %umul.value.i.i to i64
  %mul.i23 = mul nuw nsw i64 %3, %2
  %.not.i5 = icmp eq i32 %umul.value.i.i, 0
  br i1 %.not.i5, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %bb.c

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread: ; preds = %bb.b, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread ], [ %mul.i23, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit ], [ %mul.i1622, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %.not.i, ptr %i.f, ptr %i.d    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !195  ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !197  ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !199  ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.i to i64
  %i.r = zext nneg i32 %i.l to i64
  %mul.i22 = mul nuw nsw i64 %i.r, %i.q
  %.not.i15 = icmp eq i32 %i.l, 0
  %.0.i = select i1 %.not.i15, i64 0, i64 %mul.i22 ; 2 uses
  %i.s = icmp samesign ugt i32 %i.o, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %i.o to i64
  %mul.i16 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.t, i64 %.0.i) ; 2 uses
  %mul.val.i17 = extractvalue { i64, i1 } %mul.i16, 0
  %mul.ov.i19 = extractvalue { i64, i1 } %mul.i16, 1
  %spec.select.i20 = select i1 %mul.ov.i19, i64 -1, i64 %mul.val.i17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.011 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i20, %bb.e ], [ %.0.i, %bb.d ]
  ret i64 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = select i1 %.not.i.i, ptr %i.f, ptr %i.d  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !195  ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !197  ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !199  ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.i to i64
  %i.r = zext nneg i32 %i.l to i64
  %mul.i22.i = mul nuw nsw i64 %i.r, %i.q
  %.not.i15.i = icmp eq i32 %i.l, 0
  %.0.i.i = select i1 %.not.i15.i, i64 0, i64 %mul.i22.i ; 2 uses
  %i.s = icmp samesign ugt i32 %i.o, 1
  br i1 %i.s, label %bb.e, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %i.o to i64
  %mul.i16.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.t, i64 %.0.i.i) ; 2 uses
  %mul.val.i17.i = extractvalue { i64, i1 } %mul.i16.i, 0
  %mul.ov.i19.i = extractvalue { i64, i1 } %mul.i16.i, 1
  %spec.select.i20.i = select i1 %mul.ov.i19.i, i64 -1, i64 %mul.val.i17.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.011.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i20.i, %bb.e ], [ %.0.i.i, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.v = load i32, ptr %i.u, align 4, !tbaa !387  ; 2 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !386
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !400
  %i.ac = zext i8 %i.ab to i64
  %i.ad = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.x) #5
  %i.ae = mul i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = mul i32 %narrow.i.i, %i.af
  %umul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.v, i32 %i.ag)
  %umul.i.i.fr = freeze { i32, i1 } %umul.i.i     ; 2 uses
  %mul.ov.i.a = extractvalue { i32, i1 } %umul.i.i.fr, 1
  br i1 %mul.ov.i.a, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %mul.i11 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.011.i, i64 4294967295) ; 2 uses
  %mul.val.i12 = extractvalue { i64, i1 } %mul.i11, 0
  %mul.ov.i14 = extractvalue { i64, i1 } %mul.i11, 1
  %spec.select.i15 = select i1 %mul.ov.i14, i64 -1, i64 %mul.val.i12
  br label %bb.f

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.a
  %umul.value.i.i = extractvalue { i32, i1 } %umul.i.i.fr, 0 ; 2 uses
  %2 = zext i32 %umul.value.i.i to i64
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %.011.i) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  %.not.i = icmp eq i32 %umul.value.i.i, 0
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %spec.select.i = select i1 %mul.ov.i, i64 -1, i64 %mul.val.i
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread, label %bb.f

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit
  br label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread
  %3 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread ], [ %spec.select.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit ], [ %spec.select.i15, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9 ]
  ret i64 %3
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = zext nneg i32 %i.b to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.b, i32 9)
  %i.e = add nuw nsw i32 %umin, 2
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv24 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next25, %bb.d ]
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !320
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !357  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_17is_sameERKNS0_9ImageSpecES3_(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %2)
  br i1 %i.j, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !357
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.a, %.thread
  %.2 = phi ptr [ %i.l, %.thread ], [ null, %bb.a ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17is_sameERKNS0_9ImageSpecES3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !374
  %i.b = load i32, ptr %1, align 8, !tbaa !374
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !377
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !377
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !378
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !378
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !380
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !380
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !382
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !382
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !371
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !371
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !375
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !375
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !376
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !376
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !379
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !379
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !381
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !381
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.k, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !383
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !383
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !372
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !372
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !401
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !401
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !402
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !402
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !403
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !403
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit: ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !387
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !387
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.p, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !404
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !404
  %.not = icmp eq i32 %i.cb, %i.cd
  br i1 %.not, label %bb.q, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1200
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !1200
  %.not59 = icmp eq i32 %i.cf, %i.ch
  br i1 %.not59, label %bb.r, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !1201, !range !395, !noundef !326
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1201, !range !395, !noundef !326
  %.not60 = icmp eq i8 %i.cj, %i.cl
  br i1 %.not60, label %bb.s, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114ImageCacheFile9read_tileEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv:bb.a
  %i.ci = load ptr, ptr %i.az, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 25212
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !512
  %.not129 = icmp slt i32 %i.cg, %i.ck
  br i1 %.not129, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !262 ; 5 uses
  %.not90 = icmp eq i64 %i.cm, 0                  ; 4 uses
  br i1 %.not90, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cn, ptr %7, align 8, !tbaa !261
  %i.co = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !288
  %i.cp = icmp ugt i64 %i.cm, 15
  br i1 %i.cp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.ac ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.cq, ptr %7, align 8, !tbaa !138
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !288
  store i64 %i.cr, ptr %i.cn, align 8, !tbaa !139
  br label %bb.w

._crit_edge.i.i:                                  ; preds = %bb.u
  %cond = icmp eq i64 %i.cm, 1
  br i1 %cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !139
  store i8 %i.cs, ptr %i.cn, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.w:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ct = phi ptr [ %i.cq, %._crit_edge.i.i.thread ], [ %i.cn, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.co, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.v, %bb.w
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !288 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !262
  %i.cw = load ptr, ptr %7, align 8, !tbaa !138
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store i8 0, ptr %i.cx, align 1, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.x
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %i.ci, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %7, align 8, !tbaa !138   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.z
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !139
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  br i1 %.not90, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.af

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.ac:                                            ; preds = %.noexc.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.critedge103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread: ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !138   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ad
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !139
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #46
  br i1 %.not90, label %bb.ae, label %.critedge103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.ad
  br i1 %.not90, label %bb.ae, label %.critedge103

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.pn127 = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %.critedge103

.critedge103:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.ae, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn127, %bb.ae ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.de, %bb.ac ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.dm = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

bb.af:                                            ; preds = %.critedge, %bb.s
  %i.dp = load ptr, ptr %6, align 8, !tbaa !138   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.af
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !139
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %.critedge103
  %i.du = load i64, ptr %i.dn, align 8, !tbaa !139
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dv) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %.critedge103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.ab ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn.pn, %.critedge103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.bg

.critedge105:                                     ; preds = %bb.o, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !398
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.g
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, null
  %i.dz = load ptr, ptr %i.u, align 8             ; 5 uses
  %i.ea = select i1 %.not.i.i.i, ptr %i.dz, ptr %i.dy ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !202 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 1
  br i1 %i.ed, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge105
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 52
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !201 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !203 ; 3 uses
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = zext nneg i32 %i.ec to i64
  %i.el = zext nneg i32 %i.ef to i64
  %mul.i22.i.i = mul nuw nsw i64 %i.el, %i.ek     ; 2 uses
  %.not.i.i = icmp eq i32 %i.ei, 1
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = zext nneg i32 %i.ei to i64
  %mul.i16.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.em, i64 %mul.i22.i.i) ; 2 uses
  %mul.val.i17.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 0
  %mul.ov.i19.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 1
  %spec.select.i20.i.i = select i1 %mul.ov.i19.i.i, i64 -1, i64 %mul.val.i17.i.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %.critedge105
  %.011.i.i = phi i64 [ 0, %.critedge105 ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ %spec.select.i20.i.i, %bb.aj ], [ %mul.i22.i.i, %bb.ai ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !387 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 1
  br i1 %i.ep, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.dz, i64 68
  %i.es = load i32, ptr %i.er, align 4, !tbaa !386
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.es, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 65
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !400
  %i.ev = zext i8 %i.eu to i64
  %i.ew = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.eq) #5
  %i.ex = mul i64 %i.ew, %i.ev
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = mul i32 %narrow.i.i.i, %i.ey
  %umul.i.i.i = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.eo, i32 %i.ez)
  %umul.i.i.fr.i = freeze { i32, i1 } %umul.i.i.i ; 2 uses
  %mul.ov.i.i.a = extractvalue { i32, i1 } %umul.i.i.fr.i, 1
  br i1 %mul.ov.i.i.a, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %mul.i12.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.011.i.i, i64 4294967295) ; 2 uses
  %mul.val.i13.i = extractvalue { i64, i1 } %mul.i12.i, 0
  %mul.ov.i15.i = extractvalue { i64, i1 } %mul.i12.i, 1
  %spec.select.i16.i = select i1 %mul.ov.i15.i, i64 -1, i64 %mul.val.i13.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %umul.value.i.i.i = extractvalue { i32, i1 } %umul.i.i.fr.i, 0 ; 2 uses
  %16 = zext i32 %umul.value.i.i.i to i64
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %16, i64 %.011.i.i) ; 2 uses
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %.not.i1.i = icmp eq i32 %umul.value.i.i.i, 0
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %spec.select.i.i = select i1 %mul.ov.i.i, i64 -1, i64 %mul.val.i.i
  br i1 %.not.i1.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i
  %17 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i ], [ %spec.select.i.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i ], [ %spec.select.i16.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !513
  %i.fc = add i64 %i.fb, %17
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !513
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 8, !tbaa !288
  %i.ff = insertelement <2 x i64> <i64 1, i64 poison>, i64 %17, i64 1
  %i.fg = add <2 x i64> %i.fe, %i.ff
  store <2 x i64> %i.fg, ptr %i.fd, align 8, !tbaa !288
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !514
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !202
  %i.fm = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !201
  %i.fo = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !187
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %9, i32 noundef %i.fl, i32 noundef %i.fn, i32 noundef %i.fp, i64 %.sroa.0.0.copyload.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.fq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %9, i1 noundef zeroext false) #5
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_4spanIKSt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(160) %9, ptr %3, i64 %i.fq, ptr noundef null, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv()
          to label %bb.am unwind label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.fs = load i32, ptr %i.fh, align 8, !tbaa !514
  %i.ft = ashr i32 %i.fs, 16
  %i.fu = add nsw i32 %i.ft, -1
  %i.fv = invoke noundef ptr @_ZNK11OpenImageIO4v3_111ColorConfig24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef %i.fu)
          to label %bb.an unwind label %bb.av     ; 3 uses

bb.an:                                            ; preds = %bb.am
  store ptr %i.fv, ptr %11, align 8, !tbaa !111
  %.not.i118 = icmp eq ptr %i.fv, null
  br i1 %.not.i118, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #5
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.an, %bb.ao
  %i.fx = phi i64 [ %i.fw, %bb.ao ], [ 0, %bb.an ]
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !112
  %i.fz = load ptr, ptr %i.az, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 296
  %.sroa.0.0.copyload.i119 = load ptr, ptr %i.ga, align 8, !tbaa !207 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  %.not.i.i120 = icmp eq ptr %.sroa.0.0.copyload.i119, null
  br i1 %.not.i.i120, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i119, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !292, !noalias !1294
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %bb.ap
  %.0.i.i = phi i64 [ %i.gc, %bb.ap ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ]
  store ptr %.sroa.0.0.copyload.i119, ptr %12, align 8, !tbaa !111, !alias.scope !1294
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.0.i.i, ptr %i.gd, align 8, !tbaa !112, !alias.scope !1294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store i32 -2147483648, ptr %15, align 8, !tbaa !516
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ge, i8 0, i64 28, i1 false)
  %i.gf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12, i1 noundef zeroext true, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14, ptr noundef null, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %15, i32 noundef 1)
          to label %bb.aq unwind label %bb.aw     ; 0 uses

bb.aq:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !406 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !405 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gh, %i.gj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i ], [ %i.gh, %bb.aq ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #5
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gk, %i.gj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.gg, align 8, !tbaa !406
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.aq
  %i.gl = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.gh, %bb.aq ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !452
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.ar, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !285 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !284 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.gs, %i.gu
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.ha, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.gs, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.gv = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !138 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !139
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ha, %i.gu
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.gr, align 8, !tbaa !285
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.hb = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.gs, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !286
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hg) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.as, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !278 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !280
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #46
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.az

bb.au:                                            ; preds = %bb.ak
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.av:                                            ; preds = %bb.am, %bb.al
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn95 = phi { ptr, i32 } [ %i.hq, %bb.aw ], [ %i.hp, %bb.av ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #5
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.ax ], [ %i.ho, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.bg

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit, %bb.g, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ %i.ag, %bb.g ], [ true, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit ], [ true, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !307 ; 8 uses
  %.not.i.i121 = icmp eq ptr %i.hs, null
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_114ImageCacheFile12read_untiledEPNS0_23ImageCachePerThreadInfoEPNS0_10ImageInputERKNS0_6TileIDEPv:_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit:
  %5 = alloca %"class.std::shared_ptr.30", align 8 ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher, std::equal_to<OpenImageIO::v3_1::TileID>, 128, tsl::robin_map<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher>>::iterator", align 8 ; 7 uses
  %7 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 15 uses
  %11 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !504  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !502  ; 4 uses
  %i.e = load i32, ptr %3, align 8, !tbaa !505
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !506
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !507  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = load <2 x i16>, ptr %i.j, align 4, !tbaa !302 ; 3 uses
  %i.l = extractelement <2 x i16> %i.k, i64 0     ; 2 uses
  %i.m = sext i16 %i.l to i32                     ; 3 uses
  %i.n = extractelement <2 x i16> %i.k, i64 1     ; 2 uses
  %i.o = sext i16 %i.n to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !510
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = sext i32 %i.b to i64                     ; 4 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !320
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8 ; 5 uses
  store i64 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !514
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !320
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %i.s ; 4 uses
  %i.ab = sext i32 %i.d to i64                    ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !398
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !181 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %.not.i, ptr %i.ag, ptr %i.ae ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !202 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !201 ; 4 uses
  %i.am = sub nsw i32 %i.o, %i.m                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.an = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %7) #5
  %i.ao = lshr i64 %.sroa.0.0.copyload.i, 8       ; 2 uses
  %i.ap = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = and i64 %i.ao, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 2 uses
  %i.as = sext i32 %i.am to i64                   ; 2 uses
  %i.at = mul nsw i64 %i.ar, %i.as
  %i.au = mul nsw i64 %i.at, %spec.select.i.i
  %i.av = mul i64 %i.au, %i.an                    ; 3 uses
  %i.aw = sext i32 %i.aj to i64                   ; 2 uses
  %i.ax = mul nsw i64 %i.av, %i.aw                ; 3 uses
  %i.ay = sext i32 %i.al to i64                   ; 2 uses
  %i.az = mul nsw i64 %i.ax, %i.ay                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !320
  %i.bb = getelementptr inbounds nuw [128 x i8], ptr %i.ba, i64 %i.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 43
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !457, !range !395, !noundef !326
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.a, label %bb.al

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.bf = and i64 %i.ao, 255
  %i.bg = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %8) #5
  %i.bh = mul nsw i64 %i.bf, %i.as
  %i.bi = mul i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, %spec.select.i.i         ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !195
  %.fr = freeze i32 %i.bl
  %i.bm = add i32 %i.aj, -1
  %i.bn = add i32 %i.bm, %.fr                     ; 2 uses
  %i.bo = srem i32 %i.bn, %i.aj
  %i.bp = sub nsw i32 %i.bn, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.bj, %i.bq                    ; 4 uses
  %i.bs = mul nsw i64 %i.br, %i.ay                ; 3 uses
  %i.bt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #47 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !191 ; 3 uses
  %i.bw = sub nsw i32 %i.g, %i.bv                 ; 2 uses
  %i.bx = srem i32 %i.bw, %i.al
  %i.by = sub nsw i32 %i.bw, %i.bx                ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.al
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !197
  %i.cc = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bz) ; 2 uses
  %i.cd = add nsw i32 %i.by, %i.bv                ; 2 uses
  %i.ce = add i32 %i.cc, %i.bv
  %.sroa.016.0.copyload = load i64, ptr %8, align 8
  %i.cf = load ptr, ptr %2, align 8, !tbaa !312
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 184
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef %i.i, i32 noundef %i.m, i32 noundef %i.o, i64 %.sroa.016.0.copyload, ptr noundef nonnull %i.bt, i64 noundef %i.bj, i64 noundef %i.br)
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.ci, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(184) %2, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !262
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !511 ; 2 uses
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !511
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 25212
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !512
  %.not201 = icmp slt i32 %i.cn, %i.cs
  br i1 %.not201, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %i.cq, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163

bb.h:                                             ; preds = %bb.c
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %9, align 8, !tbaa !138   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !139
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.db = load ptr, ptr %9, align 8, !tbaa !138   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.j
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !139
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.h ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cv, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %bb.b
  %i.dg = load ptr, ptr %i.aa, align 8, !tbaa !398
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.ab
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !181 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, null
  %i.dj = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.dk = select i1 %.not.i.i, ptr %i.dj, ptr %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !195 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %13 = zext nneg i32 %i.dm to i64                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 60
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !387 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 1
  br i1 %i.dq, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a: ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !386
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.dt, i32 1)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 65
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !400
  %i.dw = zext i8 %i.dv to i64
  %i.dx = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.dr) #5
  %i.dy = mul i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = mul i32 %narrow.i.i.i, %i.dz
  %umul.i.i.i = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dp, i32 %i.ea)
  %umul.i.i.fr.i = freeze { i32, i1 } %umul.i.i.i ; 2 uses
  %umul.overflow.i.i.i = extractvalue { i32, i1 } %umul.i.i.fr.i, 1
  br i1 %umul.overflow.i.i.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %mul.i1622.i = mul nuw nsw i64 %13, 4294967295
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %umul.value.i.i.i = extractvalue { i32, i1 } %umul.i.i.fr.i, 0 ; 2 uses
  %14 = zext i32 %umul.value.i.i.i to i64
  %mul.i23.i = mul nuw nsw i64 %14, %13
  %.not.i5.i = icmp eq i32 %umul.value.i.i.i, 0
  br i1 %.not.i5.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %bb.l
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14.i, %bb.k
  %.0.i = phi i64 [ 0, %bb.k ], [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i ], [ %mul.i23.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i ], [ %mul.i1622.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread14.i ]
  %i.eb = sub i32 %i.cc, %i.by
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul i64 %.0.i, %i.ec                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !513
  %i.eg = add i64 %i.ef, %i.ed
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !513
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ei = load <2 x i64>, ptr %i.eh, align 8, !tbaa !288
  %i.ej = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.ed, i64 1
  %i.ek = add <2 x i64> %i.ei, %i.ej
  store <2 x i64> %i.ek, ptr %i.eh, align 8, !tbaa !288
  %i.el = load i32, ptr %i.bk, align 4, !tbaa !195
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit
  %i.en = load i32, ptr %i.ah, align 4, !tbaa !189
  %i.eo = sub nsw i32 %i.e, %i.en                 ; 3 uses
  %i.ep = srem i32 %i.eo, %i.aj
  %i.eq = sub nsw i32 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 22
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fa = icmp slt i16 %i.n, %i.l
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fe = sext i32 %i.eq to i64
  %i.ff = mul i64 %i.bj, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ff
  %sext = sext i32 %i.eo to i64
  br label %bb.m

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.ak, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit
  %.0131.lcssa = phi i1 [ %i.ci, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo18get_scanline_bytesEi.exit ], [ %.2133, %bb.ak ]
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #46
  br label %bb.ax

bb.m:                                             ; preds = %.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 4 uses
  %.0131208 = phi i1 [ %i.ci, %.lr.ph ], [ %.2133, %bb.ak ] ; 4 uses
  %i.fh = icmp eq i64 %indvars.iv, %sext
  br i1 %i.fh, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.sroa.04.0.copyload = load i64, ptr %8, align 8 ; 2 uses
  %i.fi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_113convert_imageEiiiiPKvNS0_8TypeDescElllPvS3_lll(i32 noundef %i.am, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef 1, ptr noundef nonnull %i.fg, i64 %.sroa.04.0.copyload, i64 noundef %i.bj, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef %4, i64 %.sroa.04.0.copyload, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.az)
          to label %bb.ak unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.fk = load i32, ptr %i.ah, align 4, !tbaa !189
  %i.fl = trunc nsw i64 %indvars.iv to i32
  %i.fm = add nsw i32 %i.fk, %i.fl
  store i32 %i.fm, ptr %10, align 8, !tbaa !505
  store i32 %i.cd, ptr %i.er, align 4, !tbaa !506
  store i32 %i.i, ptr %i.es, align 8, !tbaa !507
  store i32 %i.b, ptr %i.et, align 4, !tbaa !504
  store i32 %i.d, ptr %i.eu, align 8, !tbaa !502
  store <2 x i16> %i.k, ptr %i.ev, align 4, !tbaa !302
  store i32 %i.x, ptr %i.ex, align 8, !tbaa !514
  store i32 0, ptr %i.ey, align 4, !tbaa !534
  store ptr %0, ptr %i.ez, align 8, !tbaa !510
  br i1 %i.fa, label %bb.q, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.q:                                             ; preds = %bb.p
  %i.fn = load ptr, ptr %i.y, align 8, !tbaa !320
  %i.fo = getelementptr inbounds nuw [128 x i8], ptr %i.fn, i64 %i.s
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !357
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 60
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !387
  %i.ft = trunc i32 %i.fs to i16
  store i16 %i.ft, ptr %i.ew, align 2, !tbaa !509
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.q, %bb.p
  %i.fu = load ptr, ptr %i.fb, align 8, !tbaa !325, !nonnull !326, !align !327
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8704 ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_6TileIDENS0_13intrusive_ptrINS0_14ImageCacheTileEEENS2_6HasherESt8equal_toIS2_ELm128EN3tsl9robin_mapIS2_S5_S6_S8_SaISt4pairIS2_S5_EELb0ENS9_2rh26power_of_two_growth_policyILm2EEEEEE4findERKS2_b(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher, std::equal_to<OpenImageIO::v3_1::TileID>, 128, tsl::robin_map<OpenImageIO::v3_1::TileID, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheTile>, OpenImageIO::v3_1::TileID::Hasher>>::iterator") align 8 %6, ptr noundef nonnull align 64 dereferenceable(16448) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %10, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.fw = load ptr, ptr %6, align 8, !tbaa !539   ; 3 uses
  %i.fx = load i32, ptr %i.fc, align 8            ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.fy = icmp sgt i32 %i.fx, -1
  %i.fz = load i8, ptr %i.fd, align 8, !range !395
  %i.ga = trunc nuw i8 %i.fz to i1
  %or.cond.i7.i = select i1 %i.fy, i1 %i.ga, i1 false
  br i1 %or.cond.i7.i, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.gc = zext nneg i32 %i.fx to i64
  %i.gd = getelementptr inbounds nuw [128 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = atomicrmw sub ptr %i.gd, i32 1073741824 release, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.ai

bb.s:                                             ; preds = %bb.r, %.noexc
  %.not.i.i.i = icmp ne ptr %i.fw, %i.fv
  %i.gf = icmp ne i32 %i.fx, -1
  %.0.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br i1 %.0.i.i.i, label %bb.ai, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  store ptr null, ptr %11, align 8, !tbaa !517
  %i.gg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #47
          to label %bb.u unwind label %bb.ae      ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.gh = mul i64 %i.bj, %indvars.iv
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.gh
  %.sroa.02.0.copyload = load i64, ptr %8, align 8
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheTileC2ERKNS0_6TileIDEPKvNS0_8TypeDescElllb(ptr noundef nonnull align 8 dereferenceable(88) %i.gg, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.gi, i64 %.sroa.02.0.copyload, i64 noundef %i.bj, i64 noundef %i.br, i64 noundef %i.bs, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.gj = atomicrmw add ptr %i.gg, i32 1 seq_cst, align 4 ; 0 uses
  %i.gk = load ptr, ptr %11, align 8, !tbaa !517  ; 7 uses
  store ptr %i.gg, ptr %11, align 8, !tbaa !517
  %.not.i.i153 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i153, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gl = atomicrmw sub ptr %i.gk, i32 1 seq_cst, align 4
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.x, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !510
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 272
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !532
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 25220
  %i.gu = atomicrmw sub ptr %i.gt, i32 1 seq_cst, align 4 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 25200
  %i.gw = atomicrmw sub ptr %i.gv, i64 %i.gs seq_cst, align 8 ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gk, i64 77
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !533, !range !395, !noundef !326
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %.pre.i.i.i.i = load ptr, ptr %i.ha, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.y, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, %bb.w, %bb.v
  %i.hb = load ptr, ptr %11, align 8, !tbaa !517
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 76
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !540, !range !395, !noundef !326
  %i.he = load ptr, ptr %i.fb, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.hf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl17add_tile_to_cacheERNS0_13intrusive_ptrINS0_14ImageCacheTileEEEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.he, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit
  %i.hg = trunc nuw i8 %i.hd to i1
  %i.hh = and i1 %i.hf, %i.hg
  %i.hi = select i1 %i.hh, i1 %.0131208, i1 false
  %i.hj = load ptr, ptr %11, align 8, !tbaa !517  ; 7 uses
  %.not.i155 = icmp eq ptr %i.hj, null
  br i1 %.not.i155, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hk = atomicrmw sub ptr %i.hj, i32 1 seq_cst, align 4
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.ab, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160

bb.ab:                                            ; preds = %bb.aa
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !510
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 272
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !532
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 25220
  %i.ht = atomicrmw sub ptr %i.hs, i32 1 seq_cst, align 4 ; 0 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 25200
  %i.hv = atomicrmw sub ptr %i.hu, i64 %i.hr seq_cst, align 8 ; 0 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 77
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !533, !range !395, !noundef !326
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i159, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %.pre.i.i.i156 = load ptr, ptr %i.hz, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i157 = icmp eq ptr %.pre.i.i.i156, null
  br i1 %.not.i.i.i.i157, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i159, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i158

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i158: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i156) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i159

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i159: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i158, %bb.ac, %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160: ; preds = %bb.z, %bb.aa, %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.ai

bb.ad:                                            ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %bb.t
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.u
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 88) #46
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.pn140 = phi { ptr, i32 } [ %i.id, %bb.ag ], [ %i.ic, %bb.af ], [ %i.ib, %bb.ae ]
  call void @_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.aj

bb.ai:                                            ; preds = %.thread, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160, %bb.s
  %.1132 = phi i1 [ %.0131208, %bb.s ], [ %i.hi, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit160 ], [ %.0131208, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ad
  %.pn140.pn = phi { ptr, i32 } [ %.pn140, %bb.ah ], [ %i.ia, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163

bb.ak:                                            ; preds = %bb.ai, %bb.n
  %.2133 = phi i1 [ %.0131208, %bb.n ], [ %.1132, %bb.ai ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aw ; 2 uses
  %i.ie = load i32, ptr %i.bk, align 4, !tbaa !195
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next, %i.if
  br i1 %i.ig, label %bb.m, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !1299

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163: ; preds = %bb.aj, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn143.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn140.pn, %bb.aj ], [ %i.fj, %bb.o ]
  call void @_ZdaPv(ptr noundef nonnull %i.bt) #46
  br label %bb.ay

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.ih = load ptr, ptr %2, align 8, !tbaa !312
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 208
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef zeroext i1 %i.ij(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.m, i32 noundef %i.o, i64 %.sroa.0.0.copyload.i, ptr noundef %4, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.az, ptr noundef null, ptr noundef null) ; 3 uses
  br i1 %i.ik, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @_ZNK11OpenImageIO4v3_110ImageInput8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(184) %2, i1 noundef zeroext true)
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !262
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !511 ; 2 uses
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !511
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 25212
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !512
  %.not = icmp slt i32 %i.ip, %i.iu
  br i1 %.not, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %i.is, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iv = landingpad { ptr, i32 }
          cleanup
  %i.iw = load ptr, ptr %12, align 8, !tbaa !138  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.ap
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !139
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.jb = load ptr, ptr %12, align 8, !tbaa !138  ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.aq
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !139
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %bb.al
  %i.jg = load ptr, ptr %i.aa, align 8, !tbaa !398
  %i.jh = getelementptr inbounds nuw [40 x i8], ptr %i.jg, i64 %i.ab
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.ji, null
  %i.jj = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.jk = select i1 %.not.i.i.i170, ptr %i.jj, ptr %i.ji ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !195 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !197 ; 3 uses
  %i.jq = icmp slt i32 %i.jp, 0
  br i1 %i.jq, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !199 ; 3 uses
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ju = zext nneg i32 %i.jm to i64
  %i.jv = zext nneg i32 %i.jp to i64
  %mul.i22.i.i = mul nuw nsw i64 %i.jv, %i.ju
  %.not.i15.i.i = icmp eq i32 %i.jp, 0
  %.0.i.i.i171 = select i1 %.not.i15.i.i, i64 0, i64 %mul.i22.i.i ; 2 uses
  %i.jw = icmp samesign ugt i32 %i.js, 1
  br i1 %i.jw, label %bb.av, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i

bb.av:                                            ; preds = %bb.au
  %i.jx = zext nneg i32 %i.js to i64
  %mul.i16.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jx, i64 %.0.i.i.i171) ; 2 uses
  %mul.val.i17.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 0
  %mul.ov.i19.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 1
  %spec.select.i20.i.i = select i1 %mul.ov.i19.i.i, i64 -1, i64 %mul.val.i17.i.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.011.i.i = phi i64 [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.as ], [ %spec.select.i20.i.i, %bb.av ], [ %.0.i.i.i171, %bb.au ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 60
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !387 ; 2 uses
  %i.ka = icmp slt i32 %i.jz, 1
  br i1 %i.ka, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i177, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i172

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i172: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 68
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !386
  %narrow.i.i.i173 = call i32 @llvm.smax.i32(i32 %i.kd, i32 1)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 65
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !400
  %i.kg = zext i8 %i.kf to i64
  %i.kh = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.kb) #5
  %i.ki = mul i64 %i.kh, %i.kg
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = mul i32 %narrow.i.i.i173, %i.kj
  %umul.i.i.i173 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.jz, i32 %i.kk)
  %umul.i.i.fr.i174 = freeze { i32, i1 } %umul.i.i.i173 ; 2 uses
  %mul.ov.i.i.a = extractvalue { i32, i1 } %umul.i.i.fr.i174, 1
  br i1 %mul.ov.i.i.a, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i176

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i172
  %mul.i11.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.011.i.i, i64 4294967295) ; 2 uses
  %mul.val.i12.i = extractvalue { i64, i1 } %mul.i11.i, 0
  %mul.ov.i14.i = extractvalue { i64, i1 } %mul.i11.i, 1
  %spec.select.i15.i = select i1 %mul.ov.i14.i, i64 -1, i64 %mul.val.i12.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i176: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i172
  %umul.value.i.i.i177 = extractvalue { i32, i1 } %umul.i.i.fr.i174, 0 ; 2 uses
  %15 = zext i32 %umul.value.i.i.i177 to i64
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 %.011.i.i) ; 2 uses
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %.not.i.i178 = icmp eq i32 %umul.value.i.i.i177, 0
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %spec.select.i.i179 = select i1 %mul.ov.i.i, i64 -1, i64 %mul.val.i.i
  br i1 %.not.i.i178, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i177, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i177: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i176, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo16get_image_pixelsEi.exit.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i176, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i177
  %16 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i177 ], [ %spec.select.i.i179, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i176 ], [ %spec.select.i15.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread9.i ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !513
  %i.kn = add i64 %i.km, %16
  store i64 %i.kn, ptr %i.kl, align 8, !tbaa !513
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.kp = load <2 x i64>, ptr %i.ko, align 8, !tbaa !288
  %i.kq = insertelement <2 x i64> <i64 1, i64 poison>, i64 %16, i64 1
  %i.kr = add <2 x i64> %i.kp, %i.kq
  store <2 x i64> %i.kr, ptr %i.ko, align 8, !tbaa !288
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !321
  %i.ku = load ptr, ptr %i.y, align 8, !tbaa !320
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = and i64 %i.kx, 549755813760
  %i.kz = icmp eq i64 %i.ky, 128
  br i1 %i.kz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile14set_imageinputESt10shared_ptrINS0_10ImageInputEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit, %bb.aw, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.3134 = phi i1 [ %.0131.lcssa, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.ik, %bb.aw ], [ %i.ik, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_image_bytesEi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  ret i1 %.3134

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163
  %.pn143.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit163 ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  resume { ptr, i32 } %.pn143.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @_ZNK11OpenImageIO4v3_114ImageCacheFile19errors_should_issueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(400) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !511  ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 25212
  %i.g = load i32, ptr %i.f, align 4, !tbaa !512
  %i.h = icmp slt i32 %i.b, %i.g
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.423", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5, !noalias !1302
  %i.b = load ptr, ptr %2, align 8, !tbaa !138, !noalias !1302
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !262, !noalias !1302
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !1302
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !1302
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !1302
  %i.f = load ptr, ptr %5, align 8, !tbaa !138
  store ptr %i.f, ptr %4, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !262
  store i64 %i.i, ptr %i.g, align 8, !tbaa !112
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !138    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !139
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !138    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !139
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i64) unnamed_addr #16

declare void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_4spanIKSt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), ptr, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #12

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, ptr noundef dead_on_return, i1 noundef zeroext, ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #12

declare noundef ptr @_ZNK11OpenImageIO4v3_111ColorConfig24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

declare void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) unnamed_addr #12

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_114ImageCacheImpl18set_min_cache_sizeEx(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(25240) %0, i64 noundef %1) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit: ; preds = %bb.b, %bb.a
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %.not.i = icmp slt i64 %i.b, %1
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit
  %i.c = cmpxchg weak ptr %i.a, i64 %i.b, i64 %1 seq_cst seq_cst, align 8
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit, label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit

_ZN11OpenImageIO4v3_110atomic_maxIxEEvRSt6atomicIT_ERKS3_.exit: ; preds = %bb.b, %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl10get_pixelsEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiiiiiiiiiNS0_8TypeDescEPvlllii(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i64 %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef %18, i32 noundef %19) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %20 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %26 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %27 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 6 uses
  %28 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 13 uses
  store i64 %13, ptr %22, align 8
  store i32 %3, ptr %i.a, align 4, !tbaa !106
  store i32 %4, ptr %i.b, align 4, !tbaa !106
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0196 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl11verify_fileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull %.0196, i1 noundef zeroext false) ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !259, !range !395, !noundef !326
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 244 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !511  ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !511
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 25212
  %i.n = load i32, ptr %i.m, align 4, !tbaa !512
  %.not360 = icmp slt i32 %i.i, %i.n
  br i1 %.not360, label %bb.e, label %bb.at

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !138, !noalias !1313
  store ptr %i.q, ptr %24, align 8, !tbaa !111, !alias.scope !1313
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_114ImageCacheTile4readEPNS0_23ImageCachePerThreadInfoE:bb.a
  %i.af = mul nsw i32 %i.ae, %i.w                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !541
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !510
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !504
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ak = sext i32 %i.ai to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !320
  %i.am = getelementptr inbounds nuw [128 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !502
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !398
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %.not.i.i.i, ptr %i.au, ptr %i.as ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !202 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !201 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !203 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = zext nneg i32 %i.ba to i64
  %mul.i22.i.i = mul nuw nsw i64 %i.bg, %i.bf     ; 2 uses
  %.not.i.i = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = zext nneg i32 %i.bd to i64
  %mul.i16.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bh, i64 %mul.i22.i.i) ; 2 uses
  %mul.val.i17.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 0
  %mul.ov.i19.i.i = extractvalue { i64, i1 } %mul.i16.i.i, 1
  %spec.select.i20.i.i = select i1 %mul.ov.i19.i.i, i64 -1, i64 %mul.val.i17.i.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit

_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.011.i.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select.i20.i.i, %bb.e ], [ %mul.i22.i.i, %bb.d ]
  %i.bi = sext i32 %i.af to i64
  %i.bj = mul i64 %.011.i.i, %i.bi                ; 2 uses
  %i.bk = add i64 %i.bj, 16                       ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !532
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = icmp ugt i64 %i.bk, 16
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.f, !prof !486

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !469
  %i.br = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 1870, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_114ImageCacheTile4readEPNS0_23ImageCachePerThreadInfoE, ptr noundef nonnull @.str.75) #51 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheTile14memsize_neededEv.exit, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !532
  %i.bt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #47 ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !207 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !207
  %.not.i.i37 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i37, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #46
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !207
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.bv = phi ptr [ %i.bt, %bb.g ], [ %.pre, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !207
  %i.by = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile9read_tileEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %i.h, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ca = zext i1 %i.by to i8
  store i8 %i.ca, ptr %i.bz, align 4, !tbaa !540
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 25200
  %i.ce = atomicrmw add ptr %i.cd, i64 %i.bk seq_cst, align 8 ; 0 uses
  %i.cf = load i8, ptr %i.bz, align 4, !tbaa !540, !range !395, !noundef !326
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.ch = load i32, ptr %i.i, align 4, !tbaa !504
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !320
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %i.ci ; 3 uses
  %i.cl = load i32, ptr %i.an, align 8, !tbaa !502
  %i.cm = sext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !398
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cm ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !181 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 120 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = select i1 %.not.i, ptr %i.cr, ptr %i.cp ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !202 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !571
  %i.cw = load i32, ptr %i.f, align 8, !tbaa !505
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !189
  %i.cy = sub nsw i32 %i.cw, %i.cx
  %i.cz = sdiv i32 %i.cy, %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !506
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !191
  %i.de = sub nsw i32 %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !201
  %i.dh = sdiv i32 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !183
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !507
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !193
  %i.do = sub nsw i32 %i.dl, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !203
  %i.dr = sdiv i32 %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !184
  %i.du = mul i32 %i.dt, %i.dr
  %reass.add = add i32 %i.du, %i.dh
  %reass.mul = mul i32 %reass.add, %i.dj
  %i.dv = add i32 %reass.mul, %i.cz               ; 2 uses
  %i.dw = sdiv i32 %i.dv, 64
  %i.dx = and i32 %i.dv, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !204
  %i.ec = sext i32 %i.dw to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = atomicrmw or ptr %i.ed, i64 %i.dz seq_cst, align 8
  %i.ef = and i64 %i.dz, %i.ee
  %.not36 = icmp eq i64 %i.ef, 0
  br i1 %.not36, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = load i32, ptr %i.an, align 8, !tbaa !502
  %i.eh = sext i32 %i.eg to i64
  %i.ei = load ptr, ptr %i.ck, align 8, !tbaa !398
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %i.cq, align 8            ; 5 uses
  %i.em = select i1 %.not.i.i.i38, ptr %i.el, ptr %i.ek ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !202 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 1
  br i1 %i.ep, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 52
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !201 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !203 ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 1
  br i1 %i.ev, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ew = zext nneg i32 %i.eo to i64
  %i.ex = zext nneg i32 %i.er to i64
  %mul.i22.i.i39 = mul nuw nsw i64 %i.ex, %i.ew   ; 2 uses
  %.not.i.i40 = icmp eq i32 %i.eu, 1
  br i1 %.not.i.i40, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ey = zext nneg i32 %i.eu to i64
  %mul.i16.i.i41 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ey, i64 %mul.i22.i.i39) ; 2 uses
  %mul.val.i17.i.i42 = extractvalue { i64, i1 } %mul.i16.i.i41, 0
  %mul.ov.i19.i.i43 = extractvalue { i64, i1 } %mul.i16.i.i41, 1
  %spec.select.i20.i.i44 = select i1 %mul.ov.i19.i.i43, i64 -1, i64 %mul.val.i17.i.i42
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.011.i.i45 = phi i64 [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ %spec.select.i20.i.i44, %bb.m ], [ %mul.i22.i.i39, %bb.l ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 60
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !387 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 1
  br i1 %i.fb, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 68
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !386
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 65
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !400
  %i.fh = zext i8 %i.fg to i64
  %i.fi = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.fc) #5
  %i.fj = mul i64 %i.fi, %i.fh
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = mul i32 %narrow.i.i.i, %i.fk
  %umul.i.i.i = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.fa, i32 %i.fl)
  %umul.i.i.fr.i = freeze { i32, i1 } %umul.i.i.i ; 2 uses
  %mul.ov.i.i.a = extractvalue { i32, i1 } %umul.i.i.fr.i, 1
  br i1 %mul.ov.i.i.a, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %mul.i12.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.011.i.i45, i64 4294967295) ; 2 uses
  %mul.val.i13.i = extractvalue { i64, i1 } %mul.i12.i, 0
  %mul.ov.i15.i = extractvalue { i64, i1 } %mul.i12.i, 1
  %spec.select.i16.i = select i1 %mul.ov.i15.i, i64 -1, i64 %mul.val.i13.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i.a
  %umul.value.i.i.i = extractvalue { i32, i1 } %umul.i.i.fr.i, 0 ; 2 uses
  %6 = zext i32 %umul.value.i.i.i to i64
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %6, i64 %.011.i.i45) ; 2 uses
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %.not.i1.i = icmp eq i32 %umul.value.i.i.i, 0
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %spec.select.i.i = select i1 %mul.ov.i.i, i64 -1, i64 %mul.val.i.i
  br i1 %.not.i1.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i, label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_tile_pixelsEi.exit.i
  br label %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit

_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit: ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i
  %7 = phi i64 [ 0, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread.i ], [ %spec.select.i.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.i ], [ %spec.select.i16.i, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo15get_pixel_bytesEv.exit.thread10.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.fn = atomicrmw add ptr %i.fm, i64 1 seq_cst, align 8 ; 0 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.fp = atomicrmw add ptr %i.fo, i64 %7 seq_cst, align 8 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic i32 0, ptr %i.fq seq_cst, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !500
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i46 = load ptr, ptr %i.ft, align 8, !tbaa !207 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %.not.i.i47 = icmp eq ptr %.sroa.0.0.copyload.i46, null
  br i1 %.not.i.i47, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i46, i64 -24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !292, !noalias !1351
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.fv, %bb.o ], [ 0, %bb.n ]
  store ptr %.sroa.0.0.copyload.i46, ptr %3, align 8, !tbaa !111, !alias.scope !1351
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i.i, ptr %i.fw, align 8, !tbaa !112, !alias.scope !1351
  %i.fx = call noundef i64 @_ZN11OpenImageIO4v3_110Filesystem15last_write_timeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3) #5
  %.not = icmp eq i64 %i.fs, %i.fx
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.fy = load ptr, ptr %i.cb, align 8, !tbaa !325, !nonnull !326, !align !327
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %.sroa.0.0.copyload.i48 = load ptr, ptr %i.ft, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i48, ptr %4, align 8
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %i.fy, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.fz = load ptr, ptr %i.cb, align 8, !tbaa !325, !nonnull !326, !align !327
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.ft, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i49, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ga = load i32, ptr %i.i, align 4, !tbaa !504
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.gb = load i32, ptr %i.an, align 8, !tbaa !502
  store i32 %i.gb, ptr %i.b, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.gc = load i32, ptr %i.f, align 8, !tbaa !505
  store i32 %i.gc, ptr %i.c, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !506
  store i32 %i.ge, ptr %i.d, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !507
  store i32 %i.gg, ptr %i.e, align 4, !tbaa !106
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEiiiiiEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %i.fz, ptr noundef nonnull @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZNK11OpenImageIO4v3_114ImageCacheFile12SubimageInfo14get_tile_bytesEi.exit, %bb.q
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 78
  store volatile i8 1, ptr %i.gh, align 2, !tbaa !543
  %i.gi = load i8, ptr %i.bz, align 4, !tbaa !540, !range !395, !noundef !326
  %i.gj = trunc nuw i8 %i.gi to i1
  ret i1 %i.gj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.423", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !1354
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5, !noalias !1354
  %i.b = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1354 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !292, !noalias !1354
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !1354
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %.sroa_idx3.i, align 8, !noalias !1354
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5, !noalias !1354
  %i.f = load ptr, ptr %5, align 8, !tbaa !138
  store ptr %i.f, ptr %4, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !262
  store i64 %i.i, ptr %i.g, align 8, !tbaa !112
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.j = load ptr, ptr %5, align 8, !tbaa !138    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !139
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !138    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !139
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_114ImageCacheImpl5errorIJNS0_7ustringEiiiiiEEEvPKcDpRKT_(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.462", align 16 ; 10 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5, !noalias !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5, !noalias !1359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.b = load ptr, ptr %2, align 8, !tbaa !114, !noalias !1359 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !292, !noalias !1359
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %8, align 16, !tbaa !139, !noalias !1359
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !139, !noalias !1359
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = load i32, ptr %3, align 4, !tbaa !106, !noalias !1361
  store i32 %i.g, ptr %i.f, align 16, !tbaa !139, !alias.scope !1360, !noalias !1359
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load i32, ptr %4, align 4, !tbaa !106, !noalias !1361
  store i32 %i.i, ptr %i.h, align 16, !tbaa !139, !alias.scope !1360, !noalias !1359
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = load i32, ptr %5, align 4, !tbaa !106, !noalias !1361
  store i32 %i.k, ptr %i.j, align 16, !tbaa !139, !alias.scope !1360, !noalias !1359
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.m = load i32, ptr %6, align 4, !tbaa !106, !noalias !1361
  store i32 %i.m, ptr %i.l, align 16, !tbaa !139, !alias.scope !1360, !noalias !1359
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.o = load i32, ptr %7, align 4, !tbaa !106, !noalias !1361
  store i32 %i.o, ptr %i.n, align 16, !tbaa !139, !alias.scope !1360, !noalias !1359
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull %1, i64 %i.a, i64 1118493, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5, !noalias !1359
  %i.p = load ptr, ptr %10, align 8, !tbaa !138
  store ptr %i.p, ptr %9, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !262
  store i64 %i.s, ptr %i.q, align 8, !tbaa !112
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef nonnull dead_on_return %9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringERKiSA_SA_SA_SA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.t = load ptr, ptr %10, align 8, !tbaa !138   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi:bb.a
_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !604
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !611
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.a
  ret i32 %1
}

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_imagecache.cpp() #43 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr @.str, ptr %20, align 8, !tbaa !111
  %i.a = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 5, ptr %i.a, align 8, !tbaa !112
  %i.b = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %20)
  store ptr %i.b, ptr @_ZN11OpenImageIO4v3_119ImageCacheFootprint6utotalE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.c = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_119ImageCacheFootprint6utotalE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr @.str.2, ptr %19, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !112
  %i.e = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %19)
  store ptr %i.e, ptr @_ZN11OpenImageIO4v3_119ImageCacheFootprint9uconstantE, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.f = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_119ImageCacheFootprint9uconstantE) ; 0 uses
  store i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !495
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_118shared_image_cacheE, ptr nonnull @__dso_handle) #5 ; 0 uses
  store i8 0, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE, align 1, !tbaa !495
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr @.str.8, ptr %18, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.h, align 8, !tbaa !112
  %i.i = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %18)
  store ptr %i.i, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112s_resolutionE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr @.str.10, ptr %17, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.j, align 8, !tbaa !112
  %i.k = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %17)
  store ptr %i.k, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113s_texturetypeE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr @.str.12, ptr %16, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 13, ptr %i.l, align 8, !tbaa !112
  %i.m = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %16)
  store ptr %i.m, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_textureformatE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr @.str.14, ptr %15, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 10, ptr %i.n, align 8, !tbaa !112
  %i.o = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %15)
  store ptr %i.o, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112s_fileformatE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr @.str.16, ptr %14, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.p, align 8, !tbaa !112
  %i.q = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %14)
  store ptr %i.q, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18s_formatE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.18, ptr %13, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 12, ptr %i.r, align 8, !tbaa !112
  %i.s = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
  store ptr %i.s, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114s_cachedformatE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr @.str.20, ptr %12, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 8, ptr %i.t, align 8, !tbaa !112
  %i.u = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
  store ptr %i.u, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_110s_channelsE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.22, ptr %11, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 15, ptr %i.v, align 8, !tbaa !112
  %i.w = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
  store ptr %i.w, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_117s_cachedpixeltypeE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.24, ptr %10, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.x, align 8, !tbaa !112
  %i.y = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10)
  store ptr %i.y, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18s_existsE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @.str.26, ptr %9, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.z, align 8, !tbaa !112
  %i.aa = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %9)
  store ptr %i.aa, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18s_brokenE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.28, ptr %8, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.ab, align 8, !tbaa !112
  %i.ac = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
  store ptr %i.ac, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_16s_UDIME.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.30, ptr %7, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 9, ptr %i.ad, align 8, !tbaa !112
  %i.ae = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %7)
  store ptr %i.ae, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_111s_subimagesE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.32, ptr %6, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.af, align 8, !tbaa !112
  %i.ag = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %6)
  store ptr %i.ag, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_111s_miplevelsE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.34, ptr %5, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.ah, align 8, !tbaa !112
  %i.ai = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
  store ptr %i.ai, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112s_datawindowE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.36, ptr %4, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.aj, align 8, !tbaa !112
  %i.ak = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
  store ptr %i.ak, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_displaywindowE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.38, ptr %3, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.al, align 8, !tbaa !112
  %i.am = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
  store ptr %i.am, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114s_averagecolorE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.40, ptr %2, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 12, ptr %i.an, align 8, !tbaa !112
  %i.ao = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %2)
  store ptr %i.ao, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_114s_averagealphaE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.42, ptr %1, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.ap, align 8, !tbaa !112
  %i.aq = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %1)
  store ptr %i.aq, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_constantcolorE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str.44, ptr %0, align 8, !tbaa !111
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.ar, align 8, !tbaa !112
  %i.as = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %0)
  store ptr %i.as, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_115s_constantalphaE.0, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold noreturn }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #41 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #46 = { builtin nounwind }
attributes #47 = { builtin allocsize(0) }
attributes #48 = { noreturn }
attributes #49 = { noreturn nounwind }
attributes #50 = { nounwind willreturn memory(read) }
attributes #51 = { cold nounwind }
attributes #52 = { nounwind allocsize(0) }
attributes #53 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!100, !101}
!llvm.ident = !{!102}
!llvm.errno.tbaa = !{!106}

!0 = distinct !{!0, !140}
!1 = distinct !{!1, !140}
!2 = distinct !{!2, !140}
!3 = distinct !{!3, !140}
!4 = distinct !{!4, !140}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!6 = distinct !{!6, !140}
!7 = distinct !{!7, !140}
!8 = distinct !{!8, !140}
!9 = distinct !{!9, !140}
!10 = distinct !{!10, !140}
!11 = distinct !{!11, !140}
!12 = distinct !{!12, !140}
!13 = distinct !{!13, !140}
!14 = distinct !{!14, !140}
!15 = distinct !{!15, !140}
!16 = distinct !{!16, !140}
!17 = distinct !{!17, !140}
!18 = distinct !{!18, !140}
!19 = distinct !{!19, !140}
!20 = distinct !{!20, !140}
!21 = distinct !{!21, !140}
!22 = distinct !{!22, !140}
!23 = distinct !{!23, !140}
!24 = distinct !{!24, !140}
!25 = distinct !{!25, !140}
!26 = distinct !{!26, !140}
!27 = distinct !{!27, !140}
!28 = distinct !{!28, !140}
!29 = distinct !{!29, !140}
!30 = distinct !{!30, !140}
!31 = distinct !{!31, !140}
!32 = distinct !{ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl13get_thumbnailEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_8ImageBufEi, ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!33 = distinct !{!33, !140}
!34 = distinct !{!34, !140}
!35 = distinct !{!35, !140}
!36 = distinct !{!36, !140}
!37 = distinct !{!37, !140}
!38 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!39 = distinct !{null, null}
!40 = distinct !{!40, !140}
!41 = distinct !{!41, !140}
!42 = distinct !{null, null}
!43 = distinct !{null, null, null}
!44 = distinct !{null, null}
!45 = distinct !{!45, !140}
!46 = distinct !{!46, !140}
!47 = distinct !{!47, !140}
!48 = distinct !{!48, !140}
!49 = distinct !{null, null}
!50 = distinct !{null, null}
!51 = distinct !{!51, !140}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{!54, !140}
!55 = distinct !{!55, !140}
!56 = distinct !{!56, !140}
!57 = distinct !{!57, !140}
!58 = distinct !{null, null, null, null}
!59 = distinct !{!59, !140}
!60 = distinct !{null, null}
!61 = distinct !{null}
!62 = distinct !{null, null}
end_hunk_4
