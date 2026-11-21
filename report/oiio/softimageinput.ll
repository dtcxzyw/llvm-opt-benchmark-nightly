Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/softimageinput?download=true
inline.NumInlined: 3200
inline.NumDeleted: 979
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv:bb.a
  br i1 %i.k, label %.critedge, label %.critedge24

.critedge24:                                      ; preds = %.split28, %.split, %.lr.ph, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.m = load i8, ptr %i.l, align 1, !tbaa !199
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.a, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge24
  %i.r = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge24
  store ptr null, ptr %i.p, align 8, !tbaa !177
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.s, align 8, !tbaa !178
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !179
  store i8 0, ptr %i.t, align 1, !tbaa !180
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !181  ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !182
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.u, ptr %i.d, align 8, !tbaa !182
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !184
  %.not.i.i1.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i1.i.i, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  store ptr %i.x, ptr %i.y, align 8, !tbaa !184
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

.critedge:                                        ; preds = %.split28, %.split, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.025.034, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.e
  br i1 %.not, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %.lr.ph

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %.critedge, %bb.a, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  %.not31 = phi i1 [ false, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i ], [ false, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i ], [ true, %bb.a ], [ true, %.critedge ]
  ret i1 %.not31
}

; Function Attrs: nofree nounwind
declare noundef i32 @fsetpos(ptr noundef captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !436 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.113", align 16 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.b = load i32, ptr %2, align 4, !tbaa !44, !noalias !439
  store i32 %i.b, ptr %4, align 16, !tbaa !180, !alias.scope !438, !noalias !437
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %3, align 8, !tbaa !179, !noalias !437
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !178, !noalias !437
  store ptr %i.d, ptr %i.c, align 16, !tbaa !180, !noalias !437
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !180, !noalias !437
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 209, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !437
  %i.h = load ptr, ptr %6, align 8, !tbaa !179
  store ptr %i.h, ptr %5, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178
  store i64 %i.k, ptr %i.i, align 8, !tbaa !187
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !179    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !180
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !179    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !180
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !444 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.114", align 16 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !445
  %i.b = load i64, ptr %2, align 8, !tbaa !200, !noalias !446
  store i64 %i.b, ptr %4, align 16, !tbaa !180, !noalias !445
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %3, align 8, !tbaa !179, !noalias !445
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !178, !noalias !445
  store ptr %i.d, ptr %i.c, align 16, !tbaa !180, !noalias !445
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !180, !noalias !445
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 212, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !445
  %i.h = load ptr, ptr %6, align 8, !tbaa !179
  store ptr %i.h, ptr %5, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178
  store i64 %i.k, ptr %i.i, align 8, !tbaa !187
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !179    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !180
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !179    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !180
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput24read_pixels_uncompressedERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !449 {
bb.a:
  %3 = alloca %"class.std::vector.25", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !203
  %.fr77 = freeze i8 %i.b
  %i.c = lshr i8 %.fr77, 3                        ; 2 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !204  ; 2 uses
  %.not65 = icmp eq i16 %i.f, 0
  br i1 %.not65, label %.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %3, align 8, !tbaa !218
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !218
  %4 = icmp eq ptr %i.j, %i.k
  %i.l = icmp eq i8 %i.c, 0
  %or.cond = or i1 %4, %i.l
  br i1 %or.cond, label %.thread53, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge63
  %i.m = phi i16 [ %5, %._crit_edge63 ], [ %i.f, %.lr.ph ]
  %.03564 = phi i64 [ %i.ad, %._crit_edge63 ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !218    ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %.not5659 = icmp eq ptr %i.n, %i.o
  br i1 %.not5659, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph.split
  %i.p = mul nuw nsw i64 %.03564, %i.d
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph62, %._crit_edge.us
  %.sroa.046.060.us = phi ptr [ %i.ac, %._crit_edge.us ], [ %i.n, %.lr.ph62 ] ; 2 uses
  %i.q = load i32, ptr %.sroa.046.060.us, align 4, !tbaa !44
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.d
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.s
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.t = add nuw nsw i64 %.058.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.d
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !447

bb.c:                                             ; preds = %.lr.ph.us, %bb.b
  %.058.us = phi i64 [ 0, %.lr.ph.us ], [ %i.t, %bb.b ] ; 2 uses
  %i.u = xor i64 %.058.us, -1
  %i.v = load i32, ptr %i.h, align 4, !tbaa !219
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.p, %i.w
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.x
  %i.y = getelementptr i8, ptr %gep.us, i64 %i.u
  %i.z = getelementptr i8, ptr %i.y, i64 %i.d
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.ab = call i64 @fread(ptr noundef %i.z, i64 noundef 1, i64 noundef 1, ptr noundef %i.aa)
  %.not43.us = icmp eq i64 %i.ab, 1
  br i1 %.not43.us, label %bb.b, label %.loopexit

._crit_edge.us:                                   ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046.060.us, i64 4 ; 2 uses
  %.not56.us = icmp eq ptr %i.ac, %i.o
  br i1 %.not56.us, label %._crit_edge63.loopexit66, label %.lr.ph.us

._crit_edge63.loopexit66:                         ; preds = %._crit_edge.us
  %.pre = load i16, ptr %i.e, align 4, !tbaa !204
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit66, %.lr.ph.split
  %5 = phi i16 [ %.pre, %._crit_edge63.loopexit66 ], [ %i.m, %.lr.ph.split ] ; 2 uses
  %i.ad = add nuw nsw i64 %.03564, 1              ; 2 uses
  %i.ae = zext i16 %5 to i64
  %i.af = icmp samesign ult i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.split, label %.thread53, !llvm.loop !448

bb.d:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !177
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !204
  %i.ak = zext i16 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, %i.d
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !194
  %i.ao = load ptr, ptr %3, align 8, !tbaa !195
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = mul i64 %i.al, %i.as
  %i.au = call i32 @fseek(ptr noundef %i.ah, i64 noundef %i.at, i32 noundef 1)
  %.not42 = icmp eq i32 %i.au, 0
  br i1 %.not42, label %.thread53, label %.loopexit

.thread53:                                        ; preds = %._crit_edge63, %.lr.ph, %.preheader, %bb.d
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %.thread53
  %.7 = phi i1 [ true, %.thread53 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.av = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !196
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput27read_pixels_pure_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !454 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !203
  %.fr = freeze i8 %i.c
  %i.d = lshr i8 %.fr, 3                          ; 4 uses
  %i.e = zext nneg i8 %i.d to i64                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !204
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not46 = icmp eq ptr %2, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  br i1 %.not46, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.04360.us = phi i64 [ %i.y, %bb.c ], [ 0, %.lr.ph ]
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.m = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.l)
  %.not.us = icmp eq i64 %i.m, 1
  br i1 %.not.us, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.p = load ptr, ptr %3, align 8, !tbaa !195
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = mul i64 %i.t, %i.e
  %i.v = call i32 @fseek(ptr noundef %i.n, i64 noundef %i.u, i32 noundef 1)
  %.not47.us = icmp eq i32 %i.v, 0
  br i1 %.not47.us, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.a, align 1, !tbaa !180
  %i.x = zext i8 %i.w to i64
  %i.y = add nuw nsw i64 %.04360.us, %i.x         ; 2 uses
  %i.z = load i16, ptr %i.f, align 4, !tbaa !204
  %i.aa = zext i16 %i.z to i64
  %.not88 = icmp samesign ult i64 %i.y, %i.aa
  br i1 %.not88, label %.lr.ph.split.us, label %.critedge, !llvm.loop !450

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not82 = icmp eq i8 %i.d, 0
  br i1 %.not82, label %.lr.ph.split.split, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %xtraiter = and i64 %i.e, 1
  %i.ab = icmp eq i8 %i.d, 1
  %unroll_iter = and i64 %i.e, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod115 = trunc i8 %i.d to i1
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %._crit_edge58.split.us
  %.04360.us73 = phi i64 [ %i.aq, %._crit_edge58.split.us ], [ 0, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.ad = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.ac)
  %.not.us74 = icmp eq i64 %i.ad, 1
  br i1 %.not.us74, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.af = load ptr, ptr %3, align 8, !tbaa !195
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = mul i64 %i.aj, %i.e                     ; 3 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.e unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.an = call i64 @fread(ptr noundef nonnull %i.al, i64 noundef %i.ak, i64 noundef 1, ptr noundef %i.am)
  %.not48.us = icmp eq i64 %i.an, %i.ak
  br i1 %.not48.us, label %.preheader52.us, label %.critedge

.preheader52.us:                                  ; preds = %bb.e
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !180  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add nuw nsw i64 %.04360.us73, %i.ap     ; 3 uses
  %.not85 = icmp eq i8 %i.ao, 0
  br i1 %.not85, label %._crit_edge58.split.us, label %.preheader51.lr.ph.us

.preheader51.lr.ph.us:                            ; preds = %.preheader52.us
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !194 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not86 = icmp eq ptr %i.ar, %i.as
  br i1 %.not86, label %._crit_edge58.split.us, label %.preheader51.us.preheader

.preheader51.us.preheader:                        ; preds = %.preheader51.lr.ph.us
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %.preheader51.us.preheader, %._crit_edge56.us
  %.04157.us = phi i64 [ %i.cq, %._crit_edge56.us ], [ %.04360.us73, %.preheader51.us.preheader ] ; 2 uses
  %i.ax = mul nuw nsw i64 %.04157.us, %i.e        ; 3 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader51.us
  %.04055.us = phi i64 [ 0, %.preheader51.us ], [ %i.cp, %._crit_edge.us ] ; 3 uses
  %i.ay = mul i64 %.04055.us, %i.e
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay  ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.04055.us ; 3 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.03954.us = phi i64 [ %i.cb, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.bb = xor i64 %.03954.us, -1
  %i.bc = add nsw i64 %i.bb, %i.e                 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !219
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.ax, %i.bg
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.e
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bc
  store i8 %i.be, ptr %i.bn, align 1, !tbaa !180
  %i.bo = xor i64 %.03954.us, -2
  %i.bp = add nsw i64 %i.bo, %i.e                 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.az, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !180
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !219
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.ax, %i.bt
  %i.bv = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.e
  %i.by = getelementptr i8, ptr %2, i64 %i.bu
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bp
  store i8 %i.br, ptr %i.ca, align 1, !tbaa !180
  %i.cb = add nuw nsw i64 %.03954.us, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !451

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.03954.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.cb, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod115)
  %i.cc = xor i64 %.03954.us.epil.init, -1
  %i.cd = add nsw i64 %i.cc, %i.e                 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !180
  %i.cg = load i32, ptr %i.k, align 4, !tbaa !219
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ax, %i.ch
  %i.cj = load i32, ptr %i.ba, align 4, !tbaa !44
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, %i.e
  %i.cm = getelementptr i8, ptr %2, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.cd
  store i8 %i.cf, ptr %i.co, align 1, !tbaa !180
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.cp = add nuw i64 %.04055.us, 1               ; 2 uses
  %exitcond93.not = icmp eq i64 %i.cp, %i.aw
  br i1 %exitcond93.not, label %._crit_edge56.us, label %.preheader.us, !llvm.loop !452

._crit_edge56.us:                                 ; preds = %._crit_edge.us
  %i.cq = add nuw nsw i64 %.04157.us, 1           ; 2 uses
  %i.cr = icmp samesign ult i64 %i.cq, %i.aq
  br i1 %i.cr, label %.preheader51.us, label %._crit_edge58.split.us, !llvm.loop !453

._crit_edge58.split.us:                           ; preds = %._crit_edge56.us, %.preheader51.lr.ph.us, %.preheader52.us
  call void @_ZdaPv(ptr noundef nonnull %i.al) #33
  %i.cs = load i16, ptr %i.f, align 4, !tbaa !204
  %i.ct = zext i16 %i.cs to i64
  %.not87 = icmp samesign ult i64 %i.aq, %i.ct
  br i1 %.not87, label %.lr.ph.split.split.us, label %.critedge, !llvm.loop !450

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.preheader52
  %.04360 = phi i64 [ %i.di, %.preheader52 ], [ 0, %.lr.ph.split ]
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.cv = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.cu)
  %.not = icmp eq i64 %i.cv, 1
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.cx = load ptr, ptr %3, align 8, !tbaa !195
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = mul nuw nsw i64 %i.db, %i.e             ; 3 uses
  %i.dd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #32
          to label %bb.g unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.df = call i64 @fread(ptr noundef nonnull %i.dd, i64 noundef %i.dc, i64 noundef 1, ptr noundef %i.de)
  %.not48 = icmp eq i64 %i.df, %i.dc
  br i1 %.not48, label %.preheader52, label %.critedge

.preheader52:                                     ; preds = %bb.g
  %i.dg = load i8, ptr %i.a, align 1, !tbaa !180
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #33
  %i.dh = zext i8 %i.dg to i64
  %i.di = add nuw nsw i64 %.04360, %i.dh          ; 2 uses
  %i.dj = load i16, ptr %i.f, align 4, !tbaa !204
  %i.dk = zext i16 %i.dj to i64
  %.not84 = icmp samesign ult i64 %i.di, %i.dk
  br i1 %.not84, label %.lr.ph.split.split, label %.critedge, !llvm.loop !450

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !196
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp

.critedge:                                        ; preds = %.lr.ph.split.split.us, %._crit_edge58.split.us, %bb.e, %.lr.ph.split.split, %.preheader52, %bb.g, %.lr.ph.split.us, %bb.b, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.b ], [ true, %bb.c ], [ false, %.lr.ph.split.us ], [ true, %.preheader52 ], [ false, %.lr.ph.split.split ], [ false, %.lr.ph.split.split.us ], [ true, %._crit_edge58.split.us ], [ false, %bb.e ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIiSaIiEED2Ev.exit50, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !196
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

_ZNSt6vectorIiSaIiEED2Ev.exit50:                  ; preds = %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput28read_pixels_mixed_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !461 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 15 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !203
  %.fr189 = freeze i8 %i.d
  %i.e = lshr i8 %.fr189, 3                       ; 4 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !204
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not101 = icmp eq ptr %2, null                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not163 = icmp eq i8 %i.e, 0                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %xtraiter = and i64 %i.f, 1
  %i.m = icmp eq i8 %i.e, 1
  %unroll_iter = and i64 %i.f, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod190 = trunc i8 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph156, %.thread120
  %.091148 = phi i64 [ 0, %.lr.ph156 ], [ %.293, %.thread120 ] ; 7 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.n)
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.a, align 1, !tbaa !180   ; 4 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw i8 %i.p, 1                       ; 3 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !180
  %i.s = zext i8 %i.r to i64
  %i.t = add nuw nsw i64 %.091148, %i.s
  %i.u = load i16, ptr %i.g, align 4, !tbaa !204
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 %i.v, %.091148
  %i.y = trunc i64 %i.x to i8                     ; 2 uses
  store i8 %i.y, ptr %i.a, align 1, !tbaa !180
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i8 [ %i.y, %bb.e ], [ %i.r, %bb.d ]  ; 3 uses
  br i1 %.not101, label %bb.i, label %.preheader125

.preheader125:                                    ; preds = %bb.f
  %i.aa = zext i8 %i.z to i64                     ; 3 uses
  %i.ab = add nuw nsw i64 %.091148, %i.aa
  %.not166 = icmp eq i8 %i.z, 0
  br i1 %.not166, label %.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader125
  %i.ac = load ptr, ptr %3, align 8, !tbaa !218
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %brmerge191 = or i1 %i.ae, %.not163
  br i1 %brmerge191, label %.thread120, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge146
  %.082147 = phi i64 [ %i.av, %._crit_edge146 ], [ %.091148, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !218   ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !218 ; 2 uses
  %.not123142 = icmp eq ptr %i.af, %i.ag
  br i1 %.not123142, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph.split
  %i.ah = mul nuw nsw i64 %.082147, %i.f
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph145, %._crit_edge141.us
  %.sroa.0113.0143.us = phi ptr [ %i.au, %._crit_edge141.us ], [ %i.af, %.lr.ph145 ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.0113.0143.us, align 4, !tbaa !44
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.f
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.ak
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.al = add nuw nsw i64 %.081139.us, 1          ; 2 uses
  %exitcond172.not = icmp eq i64 %i.al, %i.f
  br i1 %exitcond172.not, label %._crit_edge141.us, label %bb.h, !llvm.loop !455

bb.h:                                             ; preds = %.lr.ph.us, %bb.g
  %.081139.us = phi i64 [ 0, %.lr.ph.us ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = xor i64 %.081139.us, -1
  %i.an = load i32, ptr %i.l, align 4, !tbaa !219
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ah, %i.ao
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ap
  %i.aq = getelementptr i8, ptr %gep.us, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.f
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.at = call i64 @fread(ptr noundef %i.ar, i64 noundef 1, i64 noundef 1, ptr noundef %i.as)
  %.not107.us = icmp eq i64 %i.at, 1
  br i1 %.not107.us, label %bb.g, label %.loopexit

._crit_edge141.us:                                ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0113.0143.us, i64 4 ; 2 uses
  %.not123.us = icmp eq ptr %i.au, %i.ag
  br i1 %.not123.us, label %._crit_edge146, label %.lr.ph.us

._crit_edge146:                                   ; preds = %._crit_edge141.us, %.lr.ph.split
  %i.av = add nuw nsw i64 %.082147, 1             ; 2 uses
  %i.aw = icmp samesign ult i64 %i.av, %i.ab
  br i1 %i.aw, label %.lr.ph.split, label %.thread120, !llvm.loop !456

bb.i:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.ay = zext i8 %i.z to i64                     ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, %i.f
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.bb = load ptr, ptr %3, align 8, !tbaa !195
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = mul i64 %i.az, %i.bf
  %i.bh = call i32 @fseek(ptr noundef %i.ax, i64 noundef %i.bg, i32 noundef 1)
  %.not106 = icmp eq i32 %i.bh, 0
  br i1 %.not106, label %.thread120, label %.loopexit

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i16 0, ptr %i.b, align 2, !tbaa !462
  %i.bi = icmp eq i8 %i.p, -128
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.bk = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 2, ptr noundef %i.bj)
  %.not100 = icmp eq i64 %i.bk, 2
  br i1 %.not100, label %.lr.ph.i.preheader, label %.critedge110

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.promoted = load i16, ptr %i.b, align 2, !tbaa !462
  %i.bl = call noundef i16 @llvm.bswap.i16(i16 %.promoted)
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i8 %i.p to i16
  %i.bn = add nsw i16 %i.bm, -127
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.i.preheader, %bb.l
  %i.bo = phi i16 [ %i.bn, %bb.l ], [ %i.bl, %.lr.ph.i.preheader ] ; 3 uses
  br i1 %.not101, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.bq = load ptr, ptr %3, align 8, !tbaa !195
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = mul i64 %i.bu, %i.f                     ; 3 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #32
          to label %bb.n unwind label %bb.o       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.by = call i64 @fread(ptr noundef nonnull %i.bw, i64 noundef 1, i64 noundef %i.bv, ptr noundef %i.bx)
  %.not104 = icmp eq i64 %i.by, %i.bv
  br i1 %.not104, label %.preheader126, label %.critedge110

.preheader126:                                    ; preds = %bb.n
  %i.bz = zext i16 %i.bo to i64                   ; 2 uses
  %i.ca = add nuw nsw i64 %.091148, %i.bz
  %.not164 = icmp eq i16 %i.bo, 0
  br i1 %.not164, label %._crit_edge136.split, label %.preheader124.lr.ph

.preheader124.lr.ph:                              ; preds = %.preheader126
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !194 ; 2 uses
  %i.cc = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not165 = icmp eq ptr %i.cb, %i.cc
  %brmerge = or i1 %.not165, %.not163
  br i1 %brmerge, label %._crit_edge136.split, label %.preheader124.preheader

.preheader124.preheader:                          ; preds = %.preheader124.lr.ph
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  br label %.preheader124

bb.o:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ci = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !196
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.ch

.preheader124:                                    ; preds = %.preheader124.preheader, %._crit_edge134
  %.080135 = phi i64 [ %i.cs, %._crit_edge134 ], [ %.091148, %.preheader124.preheader ] ; 2 uses
  %i.co = mul nuw nsw i64 %.080135, %i.f          ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %._crit_edge
  %.079133 = phi i64 [ 0, %.preheader124 ], [ %i.dh, %._crit_edge ] ; 3 uses
  %i.cp = mul i64 %.079133, %i.f
  %i.cq = getelementptr i8, ptr %i.bw, i64 %i.cp  ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.079133 ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.new

._crit_edge134:                                   ; preds = %._crit_edge
  %i.cs = add nuw nsw i64 %.080135, 1             ; 2 uses
  %i.ct = icmp samesign ult i64 %i.cs, %i.ca
  br i1 %i.ct, label %.preheader124, label %._crit_edge136.split, !llvm.loop !457

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.078132.epil.init = phi i64 [ 0, %.preheader ], [ %i.ei, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.cu = xor i64 %.078132.epil.init, -1
  %i.cv = add nsw i64 %i.cu, %i.f                 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !180
  %i.cy = load i32, ptr %i.l, align 4, !tbaa !219
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %i.co, %i.cz
  %i.db = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.dc, %i.f
  %i.de = getelementptr i8, ptr %2, i64 %i.da
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.cv
  store i8 %i.cx, ptr %i.dg, align 1, !tbaa !180
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.dh = add nuw i64 %.079133, 1                 ; 2 uses
  %exitcond171.not = icmp eq i64 %i.dh, %i.cg
  br i1 %exitcond171.not, label %._crit_edge134, label %.preheader, !llvm.loop !458

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.078132 = phi i64 [ %i.ei, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.di = xor i64 %.078132, -1
  %i.dj = add nsw i64 %i.di, %i.f                 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cq, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !180
  %i.dm = load i32, ptr %i.l, align 4, !tbaa !219
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.co, %i.dn
  %i.dp = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul nsw i64 %i.dq, %i.f
  %i.ds = getelementptr i8, ptr %2, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.dr
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dj
  store i8 %i.dl, ptr %i.du, align 1, !tbaa !180
  %i.dv = xor i64 %.078132, -2
  %i.dw = add nsw i64 %i.dv, %i.f                 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.cq, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !180
  %i.dz = load i32, ptr %i.l, align 4, !tbaa !219
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.co, %i.ea
  %i.ec = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul nsw i64 %i.ed, %i.f
  %i.ef = getelementptr i8, ptr %2, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.dw
  store i8 %i.dy, ptr %i.eh, align 1, !tbaa !180
  %i.ei = add nuw nsw i64 %.078132, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !459

._crit_edge136.split:                             ; preds = %._crit_edge134, %.preheader124.lr.ph, %.preheader126
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #33
  br label %.critedge

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.ej = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.el = load ptr, ptr %3, align 8, !tbaa !195
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 2
  %i.eq = mul i64 %i.ep, %i.f
  %i.er = call i32 @fseek(ptr noundef %i.ej, i64 noundef %i.eq, i32 noundef 1)
  %.not102 = icmp eq i32 %i.er, 0
  br i1 %.not102, label %..critedge_crit_edge, label %.critedge110

..critedge_crit_edge:                             ; preds = %bb.q
  %.pre = zext i16 %i.bo to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %._crit_edge136.split
  %.pre-phi173 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.bz, %._crit_edge136.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.thread120

.thread120:                                       ; preds = %._crit_edge146, %.lr.ph, %bb.i, %.preheader125, %.critedge
  %.pn = phi i64 [ %.pre-phi173, %.critedge ], [ %i.aa, %.lr.ph ], [ %i.ay, %bb.i ], [ 0, %.preheader125 ], [ %i.aa, %._crit_edge146 ]
  %.293 = add nuw nsw i64 %.pn, %.091148          ; 2 uses
  %i.es = load i16, ptr %i.g, align 4, !tbaa !204
  %i.et = zext i16 %i.es to i64
  %.not167 = icmp samesign ult i64 %.293, %i.et
  br i1 %.not167, label %bb.b, label %.loopexit, !llvm.loop !460

.critedge110:                                     ; preds = %bb.n, %bb.k, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %.thread120, %bb.h, %bb.a, %.critedge110
  %i.eu = phi i1 [ false, %bb.h ], [ false, %.critedge110 ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.i ], [ true, %.thread120 ]
  %i.ev = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIiSaIiEED2Ev.exit112, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !196
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit112

_ZNSt6vectorIiSaIiEED2Ev.exit112:                 ; preds = %.loopexit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %i.eu
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_114SoftimageInputD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !463 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.e, align 8, !tbaa !178
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !179
  store i8 0, ptr %i.f, align 1, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !181  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !182
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !182
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %.not.i.i1.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i1.i.i, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !184
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #33
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit

_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit:         ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, %bb.d
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !180
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !181  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !188
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #33
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_114SoftimageInputD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 !guid !464 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_114SoftimageInputD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #30
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_114SoftimageInput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 !guid !465 {
bb.a:
  ret ptr @.str.17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef dead_on_return %1) unnamed_addr #9 align 2 !guid !466 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %3) unnamed_addr #0 align 2 !guid !467 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 !guid !468 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

declare void @_ZN11OpenImageIO4v3_110ImageInput4specEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #9 align 2 !guid !469 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_subimageEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 !guid !470 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 !guid !471 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

end_hunk_0
