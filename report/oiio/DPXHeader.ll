Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/DPXHeader?download=true
inline.NumInlined: 2672
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE
define hidden noundef range(i32 1, 9) i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK3dpx14IndustryHeader12FilmEdgeCodeEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr nofree noundef writeonly captures(none) initializes((0, 17)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 17
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !82

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %0, align 4, !tbaa !51
  store <16 x i8> %i.e, ptr %1, align 1, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.f, align 1, !tbaa !51
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.g = load i8, ptr %0, align 4, !tbaa !51
  store i8 %i.g, ptr %1, align 1, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.x, ptr %i.y, align 1, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.am, ptr %i.an, align 1, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.as, ptr %i.at, align 1, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.av = load i8, ptr %i.au, align 2, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.ba, align 1, !tbaa !51
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3dpx14IndustryHeader15SetFileEdgeCodeEPKc(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(384) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !82

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %1, align 1, !tbaa !51
  store <16 x i8> %i.e, ptr %0, align 4, !tbaa !51
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !51
  store i8 %i.f, ptr %0, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.k, ptr %i.l, align 2, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %i.r, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.t, ptr %i.u, align 1, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.w, ptr %i.x, align 2, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ai, ptr %i.aj, align 2, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.al, ptr %i.am, align 1, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.au = load i8, ptr %i.at, align 1, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.au, ptr %i.av, align 2, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !51
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3dpx14IndustryHeader8TimeCodeEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 9 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i32, ptr %i.a, align 4, !tbaa !83   ; 9 uses
  %i.c = lshr i32 %i.b, 28
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = icmp ugt i32 %i.b, -1610612737
  %.0.v.i = select i1 %i.e, i8 55, i8 48
  %.0.i = add nuw nsw i8 %.0.v.i, %i.d
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = and i8 %i.g, 15                          ; 2 uses
  %i.i = icmp samesign ugt i8 %i.h, 9
  %.0.v.i9 = select i1 %i.i, i8 55, i8 48
  %.0.i10 = add nuw nsw i8 %.0.v.i9, %i.h
  %i.j = lshr i32 %i.b, 20
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 15                          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 9
  %.0.v.i11 = select i1 %i.m, i8 55, i8 48
  %.0.i12 = add nuw nsw i8 %.0.v.i11, %i.l
  %i.n = lshr i32 %i.b, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 15                          ; 2 uses
  %i.q = icmp samesign ugt i8 %i.p, 9
  %.0.v.i13 = select i1 %i.q, i8 55, i8 48
  %.0.i14 = add nuw nsw i8 %.0.v.i13, %i.p
  %i.r = lshr i32 %i.b, 12
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 15                          ; 2 uses
  %i.u = icmp samesign ugt i8 %i.t, 9
  %.0.v.i15 = select i1 %i.u, i8 55, i8 48
  %.0.i16 = add nuw nsw i8 %.0.v.i15, %i.t
  %i.v = lshr i32 %i.b, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 15                          ; 2 uses
  %i.y = icmp samesign ugt i8 %i.x, 9
  %.0.v.i17 = select i1 %i.y, i8 55, i8 48
  %.0.i18 = add nuw nsw i8 %.0.v.i17, %i.x
  %5 = lshr i32 %i.b, 4
  %i.z = trunc i32 %5 to i8
  %6 = and i8 %i.z, 15                            ; 2 uses
  %i.aa = icmp samesign ugt i8 %6, 9
  %.0.v.i19 = select i1 %i.aa, i8 55, i8 48
  %.0.i20 = add nuw nsw i8 %.0.v.i19, %6
  %7 = trunc i32 %i.b to i8
  %i.ab = and i8 %7, 15                           ; 2 uses
  %i.ac = icmp samesign ugt i8 %i.ab, 9
  %.0.v.i21 = select i1 %i.ac, i8 55, i8 48
  %.0.i22 = add nuw nsw i8 %.0.v.i21, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i8 %.0.i, ptr %4, align 16, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.0.i10, ptr %i.ad, align 16, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %.0.i12, ptr %i.ae, align 16, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 %.0.i14, ptr %i.af, align 16, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 %.0.i16, ptr %i.ag, align 16, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 %.0.i18, ptr %i.ah, align 16, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 %.0.i20, ptr %i.ai, align 16, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i8 %.0.i22, ptr %i.aj, align 16, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.ak, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 12, ptr %i.an, align 8, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.ao, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.ap, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr @.str.1, ptr %2, align 8, !tbaa !94
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 35, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.aq, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2290649224, ptr %i.as, align 8, !tbaa !102
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.at, align 8, !tbaa !103
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.1, i64 35, ptr noundef nonnull align 8 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3dpx14IndustryHeader8UserBitsEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN3fmt3v1212vformat_to_nIPcJETnNSt9enable_ifIXsr6detail18is_output_iteratorIT_cEE5valueEiE4typeELi0EEENS0_18format_to_n_resultIS4_EES4_mNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 9 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104  ; 9 uses
  %i.c = lshr i32 %i.b, 28
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = icmp ugt i32 %i.b, -1610612737
  %.0.v.i = select i1 %i.e, i8 55, i8 48
  %.0.i = add nuw nsw i8 %.0.v.i, %i.d
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = and i8 %i.g, 15                          ; 2 uses
  %i.i = icmp samesign ugt i8 %i.h, 9
  %.0.v.i9 = select i1 %i.i, i8 55, i8 48
  %.0.i10 = add nuw nsw i8 %.0.v.i9, %i.h
  %i.j = lshr i32 %i.b, 20
  %i.k = trunc i32 %i.j to i8
  %i.l = and i8 %i.k, 15                          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 9
  %.0.v.i11 = select i1 %i.m, i8 55, i8 48
  %.0.i12 = add nuw nsw i8 %.0.v.i11, %i.l
  %i.n = lshr i32 %i.b, 16
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 15                          ; 2 uses
  %i.q = icmp samesign ugt i8 %i.p, 9
  %.0.v.i13 = select i1 %i.q, i8 55, i8 48
  %.0.i14 = add nuw nsw i8 %.0.v.i13, %i.p
  %i.r = lshr i32 %i.b, 12
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 15                          ; 2 uses
  %i.u = icmp samesign ugt i8 %i.t, 9
  %.0.v.i15 = select i1 %i.u, i8 55, i8 48
  %.0.i16 = add nuw nsw i8 %.0.v.i15, %i.t
  %i.v = lshr i32 %i.b, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 15                          ; 2 uses
  %i.y = icmp samesign ugt i8 %i.x, 9
  %.0.v.i17 = select i1 %i.y, i8 55, i8 48
  %.0.i18 = add nuw nsw i8 %.0.v.i17, %i.x
  %5 = lshr i32 %i.b, 4
  %i.z = trunc i32 %5 to i8
  %6 = and i8 %i.z, 15                            ; 2 uses
  %i.aa = icmp samesign ugt i8 %6, 9
  %.0.v.i19 = select i1 %i.aa, i8 55, i8 48
  %.0.i20 = add nuw nsw i8 %.0.v.i19, %6
  %7 = trunc i32 %i.b to i8
  %i.ab = and i8 %7, 15                           ; 2 uses
  %i.ac = icmp samesign ugt i8 %i.ab, 9
  %.0.v.i21 = select i1 %i.ac, i8 55, i8 48
  %.0.i22 = add nuw nsw i8 %.0.v.i21, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i8 %.0.i, ptr %4, align 16, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 %.0.i10, ptr %i.ad, align 16, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %.0.i12, ptr %i.ae, align 16, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 %.0.i14, ptr %i.af, align 16, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 %.0.i16, ptr %i.ag, align 16, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 %.0.i18, ptr %i.ah, align 16, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 %.0.i20, ptr %i.ai, align 16, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i8 %.0.i22, ptr %i.aj, align 16, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.ak, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 12, ptr %i.an, align 8, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZN3fmt3v126detail15iterator_bufferIPccNS1_19fixed_buffer_traitsEE4growERNS1_6bufferIcEEm, ptr %i.ao, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.ap, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr @.str.1, ptr %2, align 8, !tbaa !94
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 35, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.aq, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2290649224, ptr %i.as, align 8, !tbaa !102
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.at, align 8, !tbaa !103
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.1, i64 35, ptr noundef nonnull align 8 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -1, -1610612736) i32 @_ZNK3dpx14IndustryHeader12TCFromStringEPKc(ptr nofree nonnull readnone align 4 captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11OpenImageIO4v3_17Strutil11safe_strlenEPKcm(ptr noundef %1, i64 noundef 12) #29
  %.not = icmp eq i64 %i.a, 11
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !51      ; 2 uses
  %i.c = add i8 %i.b, -58
  %or.cond = icmp ult i8 %i.c, -10
  br i1 %or.cond, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51    ; 2 uses
  %i.f = add i8 %i.e, -58
  %or.cond.1 = icmp ult i8 %i.f, -10
  br i1 %or.cond.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51    ; 2 uses
  %i.i = add i8 %i.h, -58
  %or.cond.2 = icmp ult i8 %i.i, -10
  br i1 %or.cond.2, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51    ; 2 uses
  %i.l = add i8 %i.k, -58
  %or.cond.3 = icmp ult i8 %i.l, -10
  br i1 %or.cond.3, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51    ; 2 uses
  %i.o = add i8 %i.n, -58
  %or.cond.4 = icmp ult i8 %i.o, -10
  br i1 %or.cond.4, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51    ; 2 uses
  %i.r = add i8 %i.q, -58
  %or.cond.5 = icmp ult i8 %i.r, -10
  br i1 %or.cond.5, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51    ; 2 uses
  %i.u = add i8 %i.t, -58
  %or.cond.6 = icmp ult i8 %i.u, -10
  br i1 %or.cond.6, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 1, !tbaa !51    ; 2 uses
  %i.x = add i8 %i.w, -58
  %or.cond.7 = icmp ult i8 %i.x, -10
  br i1 %or.cond.7, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.7
  %i.y = zext nneg i8 %i.t to i32
  %i.z = shl nuw nsw i32 %i.y, 4
  %i.aa = and i32 %i.z, 240
  %i.ab = zext nneg i8 %i.q to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = and i32 %i.ac, 3840
  %i.ae = zext nneg i8 %i.n to i32
  %i.af = shl nuw nsw i32 %i.ae, 12
  %i.ag = and i32 %i.af, 61440
  %i.ah = zext nneg i8 %i.k to i32
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = and i32 %i.ai, 983040
  %i.ak = zext nneg i8 %i.h to i32
  %i.al = shl nuw nsw i32 %i.ak, 20
  %i.am = and i32 %i.al, 15728640
  %i.an = zext nneg i8 %i.e to i32
  %i.ao = shl nuw nsw i32 %i.an, 24
  %i.ap = and i32 %i.ao, 251658240
  %i.aq = zext nneg i8 %i.b to i32
  %i.ar = shl i32 %i.aq, 28
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = or disjoint i32 %i.am, %i.as
  %i.au = or disjoint i32 %i.aj, %i.at
  %i.av = or disjoint i32 %i.ag, %i.au
  %.masked = or disjoint i32 %i.ad, %i.av
  %i.aw = or i32 %i.aa, %.masked
  %i.ax = and i8 %i.w, 15
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or i32 %i.aw, %i.ay
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %.preheader.preheader ], [ %i.az, %bb.b ], [ -1, %.preheader.1 ], [ -1, %.preheader.7 ], [ -1, %.preheader.2 ], [ -1, %.preheader.5 ], [ -1, %.preheader.3 ], [ -1, %.preheader.6 ], [ -1, %.preheader.4 ]
  ret i32 %.1
}

; Function Attrs: nounwind
declare noundef i64 @_ZN11OpenImageIO4v3_17Strutil11safe_strlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3dpx14IndustryHeader11SetTimeCodeEPKc(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3dpx14IndustryHeader12TCFromStringEPKc(ptr nonnull align 4 poison, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.a, ptr %i.b, align 4, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3dpx14IndustryHeader11SetUserBitsEPKc(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK3dpx14IndustryHeader12TCFromStringEPKc(ptr nonnull align 4 poison, ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.a, ptr %i.b, align 4, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3dpx13GenericHeader19SetCreationTimeDateEl(ptr noundef nonnull align 4 dereferenceable(1664) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %1, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN11OpenImageIO4v3_17Sysutil14get_local_timeEPKlP2tm(ptr noundef nonnull %i.b, ptr noundef nonnull %2)
end_hunk_0
