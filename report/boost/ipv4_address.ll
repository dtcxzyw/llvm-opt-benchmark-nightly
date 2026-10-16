Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ipv4_address?download=true
inline.NumInlined: 609
inline.NumDeleted: 418
begin_hunk_0_@_ZN5boost4urls12ipv4_addressC2ENS_4core17basic_string_viewIcEE:bb.a
_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !18, !noalias !81
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 2, ptr %i.f, align 8, !tbaa !20, !alias.scope !82, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !83
  br label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !83
  %i.g = load <4 x i8>, ptr %3, align 8, !tbaa !10, !noalias !83
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.h, ptr %6, align 4, !tbaa !10, !noalias !83
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(4) %6) #23, !noalias !81
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.i, align 8, !tbaa !20, !alias.scope !82, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !83
  %i.j = load ptr, ptr %i.a, align 8, !noalias !81
  %.not.i.i = icmp eq ptr %i.j, %i.b
  br i1 %.not.i.i, label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !85
  %i.l = and i64 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i: ; preds = %bb.e
  %i.m = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !85
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 4) #23, !noalias !85, !inline_history !78
  %spec.select.i.i = select i1 %i.p, i64 3, i64 2
  br label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread

_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread: ; preds = %bb.e, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i
  %i.q = phi i64 [ %spec.select.i.i, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i ], [ 3, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 4, ptr %8, align 8, !alias.scope !81
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10, !alias.scope !81
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17, !alias.scope !81
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 2, ptr %i.s, align 8, !tbaa !20, !alias.scope !81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr @.str, ptr %9, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 44, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 21, ptr %i.v, align 4, !tbaa !32
  br label %bb.f

_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit: ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i, %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20
  %i.w = icmp eq i8 %.pre, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr @.str, ptr %9, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 44, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 21, ptr %i.z, align 4, !tbaa !32
  br i1 %i.w, label %_ZNO5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueIS3_EENSt9enable_ifIXsr3std21is_move_constructibleIT_EE5valueES3_E4typeERKNS_15source_locationE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread, %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  unreachable

_ZNO5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueIS3_EENSt9enable_ifIXsr3std21is_move_constructibleIT_EE5valueES3_E4typeERKNS_15source_locationE.exit: ; preds = %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit
  %.sroa.0.0.copyload.i = load i32, ptr %8, align 8, !tbaa !33
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::system::result") align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::result.8", align 8 ; 7 uses
  %4 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t", align 4 ; 4 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"struct.std::array", align 4       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.boost::system::result", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !95
  store ptr %1, ptr %i.a, align 8, !tbaa !13, !noalias !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !97
  store i32 3026478, ptr %4, align 4, !noalias !97
  call void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.8") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !97
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !15, !noalias !97 ; 2 uses
  %.not7.i = icmp eq i8 %i.d, 1
  br i1 %.not7.i, label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 24, i1 false), !tbaa.struct !18, !noalias !97
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !98, !noalias !97
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !18, !noalias !95
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 2, ptr %i.f, align 8, !tbaa !20, !alias.scope !96, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !97
  br label %bb.f

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !97
  %i.g = load <4 x i8>, ptr %3, align 8, !tbaa !10, !noalias !97
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.h, ptr %6, align 4, !tbaa !10, !noalias !97
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(4) %6) #23, !noalias !95
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.i, align 8, !tbaa !20, !alias.scope !96, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !97
  %i.j = load ptr, ptr %i.a, align 8, !noalias !95
  %.not.i = icmp eq ptr %i.j, %i.b
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !99
  %i.l = and i64 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i: ; preds = %bb.e
  %i.m = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !99
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 4) #23, !noalias !99, !inline_history !94
  %spec.select.i = select i1 %i.p, i64 3, i64 2
  br label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i: ; preds = %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i, %bb.e
  %i.q = phi i64 [ %spec.select.i, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i ], [ 3, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %0, align 8, !alias.scope !95
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10, !alias.scope !95
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17, !alias.scope !95
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.s, align 8, !tbaa !20, !alias.scope !95
  br label %_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit

bb.f:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i, %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  br label %_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit

_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit: ; preds = %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZNK5boost4urls12ipv4_address8to_bytesEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %.sroa.0.0.insert.insert = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5boost4urls12ipv4_address7to_uintEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZNK5boost4urls12ipv4_address9to_bufferEPcm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 6 uses
  %i.a = icmp ult i64 %2, 15
  br i1 %i.a, label %bb.b, label %4

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr @.str, ptr %3, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 76, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 9, ptr %i.d, align 4, !tbaa !32
  call void @_ZN5boost4urls6detail18throw_length_errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  unreachable

4:                                                ; preds = %bb.a
  %5 = load i32, ptr %0, align 4, !tbaa !9        ; 6 uses
  %6 = lshr i32 %5, 24
  %7 = trunc nuw i32 %6 to i8                     ; 4 uses
  %8 = icmp ugt i32 %5, 1677721599
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = udiv i8 %7, 100
  %11 = or disjoint i8 %10, 48
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %11, ptr %1, align 1, !tbaa !10
  %13 = urem i8 %7, 100
  br label %.sink.split.i.i

14:                                               ; preds = %4
  %15 = icmp samesign ugt i32 %5, 167772159
  br i1 %15, label %.sink.split.i.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"

.sink.split.i.i:                                  ; preds = %14, %9
  %.0.i = phi ptr [ %12, %9 ], [ %1, %14 ]        ; 2 uses
  %.sink7.i.i = phi i8 [ %13, %9 ], [ %7, %14 ]   ; 2 uses
  %16 = udiv i8 %.sink7.i.i, 10
  %17 = or disjoint i8 %16, 48
  %18 = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %17, ptr %.0.i, align 1, !tbaa !10
  %19 = urem i8 %.sink7.i.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i": ; preds = %.sink.split.i.i, %14
  %.1.i = phi ptr [ %18, %.sink.split.i.i ], [ %1, %14 ] ; 4 uses
  %.0.i.i = phi i8 [ %19, %.sink.split.i.i ], [ %7, %14 ]
  %20 = or disjoint i8 %.0.i.i, 48
  %21 = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %20, ptr %.1.i, align 1, !tbaa !10
  %22 = getelementptr inbounds nuw i8, ptr %.1.i, i64 2 ; 3 uses
  store i8 46, ptr %21, align 1, !tbaa !10
  %23 = lshr i32 %5, 16
  %24 = trunc i32 %23 to i8                       ; 6 uses
  %25 = icmp ugt i8 %24, 99
  br i1 %25, label %26, label %31

26:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"
  %27 = udiv i8 %24, 100
  %28 = or disjoint i8 %27, 48
  %29 = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  store i8 %28, ptr %22, align 1, !tbaa !10
  %30 = urem i8 %24, 100
  br label %.sink.split.i6.i

31:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"
  %32 = icmp samesign ugt i8 %24, 9
  br i1 %32, label %.sink.split.i6.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"

.sink.split.i6.i:                                 ; preds = %31, %26
  %.2.i = phi ptr [ %29, %26 ], [ %22, %31 ]      ; 2 uses
  %.sink7.i7.i = phi i8 [ %30, %26 ], [ %24, %31 ] ; 2 uses
  %33 = udiv i8 %.sink7.i7.i, 10
  %34 = or disjoint i8 %33, 48
  %35 = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %34, ptr %.2.i, align 1, !tbaa !10
  %36 = urem i8 %.sink7.i7.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i": ; preds = %.sink.split.i6.i, %31
  %.3.i = phi ptr [ %35, %.sink.split.i6.i ], [ %22, %31 ] ; 4 uses
  %.0.i5.i = phi i8 [ %36, %.sink.split.i6.i ], [ %24, %31 ]
  %37 = or disjoint i8 %.0.i5.i, 48
  %38 = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %37, ptr %.3.i, align 1, !tbaa !10
  %39 = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 3 uses
  store i8 46, ptr %38, align 1, !tbaa !10
  %40 = lshr i32 %5, 8
  %41 = trunc i32 %40 to i8                       ; 6 uses
  %42 = icmp ugt i8 %41, 99
  br i1 %42, label %43, label %48

43:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"
  %44 = udiv i8 %41, 100
  %45 = or disjoint i8 %44, 48
  %46 = getelementptr inbounds nuw i8, ptr %.3.i, i64 3
  store i8 %45, ptr %39, align 1, !tbaa !10
  %47 = urem i8 %41, 100
  br label %.sink.split.i10.i

48:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"
  %49 = icmp samesign ugt i8 %41, 9
  br i1 %49, label %.sink.split.i10.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"

.sink.split.i10.i:                                ; preds = %48, %43
  %.4.i = phi ptr [ %46, %43 ], [ %39, %48 ]      ; 2 uses
  %.sink7.i11.i = phi i8 [ %47, %43 ], [ %41, %48 ] ; 2 uses
  %50 = udiv i8 %.sink7.i11.i, 10
  %51 = or disjoint i8 %50, 48
  %52 = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 %51, ptr %.4.i, align 1, !tbaa !10
  %53 = urem i8 %.sink7.i11.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i": ; preds = %.sink.split.i10.i, %48
  %.5.i = phi ptr [ %52, %.sink.split.i10.i ], [ %39, %48 ] ; 4 uses
  %.0.i9.i = phi i8 [ %53, %.sink.split.i10.i ], [ %41, %48 ]
  %54 = or disjoint i8 %.0.i9.i, 48
  %55 = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  store i8 %54, ptr %.5.i, align 1, !tbaa !10
  %56 = getelementptr inbounds nuw i8, ptr %.5.i, i64 2 ; 3 uses
  store i8 46, ptr %55, align 1, !tbaa !10
  %57 = trunc i32 %5 to i8                        ; 6 uses
  %58 = icmp ugt i8 %57, 99
  br i1 %58, label %59, label %64

59:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"
  %60 = udiv i8 %57, 100
  %61 = or disjoint i8 %60, 48
  %62 = getelementptr inbounds nuw i8, ptr %.5.i, i64 3
  store i8 %61, ptr %56, align 1, !tbaa !10
  %63 = urem i8 %57, 100
  br label %.sink.split.i14.i

64:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"
  %65 = icmp samesign ugt i8 %57, 9
  br i1 %65, label %.sink.split.i14.i, label %_ZNK5boost4urls12ipv4_address10print_implEPc.exit

.sink.split.i14.i:                                ; preds = %64, %59
  %.6.i = phi ptr [ %62, %59 ], [ %56, %64 ]      ; 2 uses
  %.sink7.i15.i = phi i8 [ %63, %59 ], [ %57, %64 ] ; 2 uses
  %66 = udiv i8 %.sink7.i15.i, 10
  %67 = or disjoint i8 %66, 48
  %68 = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %67, ptr %.6.i, align 1, !tbaa !10
  %69 = urem i8 %.sink7.i15.i, 10
  br label %_ZNK5boost4urls12ipv4_address10print_implEPc.exit

_ZNK5boost4urls12ipv4_address10print_implEPc.exit: ; preds = %64, %.sink.split.i14.i
  %.7.i = phi ptr [ %68, %.sink.split.i14.i ], [ %56, %64 ] ; 2 uses
  %.0.i13.i = phi i8 [ %69, %.sink.split.i14.i ], [ %57, %64 ]
  %70 = or disjoint i8 %.0.i13.i, 48
  %71 = getelementptr inbounds nuw i8, ptr %.7.i, i64 1
  store i8 %70, ptr %.7.i, align 1, !tbaa !10
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %1 to i64
  %74 = sub i64 %72, %73
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %74, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZN5boost4urls6detail18throw_length_errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 6 uses
  %i.b = lshr i32 %i.a, 24
  %i.c = trunc nuw i32 %i.b to i8                 ; 4 uses
  %i.d = icmp ugt i32 %i.a, 1677721599
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i8 %i.c, 100
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !10
  %i.h = urem i8 %i.c, 100
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.a, 167772159
  br i1 %i.i, label %.sink.split.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %1, %bb.c ]    ; 2 uses
  %.sink7.i = phi i8 [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = udiv i8 %.sink7.i, 10
  %i.k = or disjoint i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.k, ptr %.0, align 1, !tbaa !10
  %i.m = urem i8 %.sink7.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit": ; preds = %bb.c, %.sink.split.i
  %.1 = phi ptr [ %i.l, %.sink.split.i ], [ %1, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.m, %.sink.split.i ], [ %i.c, %bb.c ]
  %i.n = or disjoint i8 %.0.i, 48
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.n, ptr %.1, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  store i8 46, ptr %i.o, align 1, !tbaa !10
  %i.q = lshr i32 %i.a, 16
  %i.r = trunc i32 %i.q to i8                     ; 6 uses
  %i.s = icmp ugt i8 %i.r, 99
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"
  %i.t = udiv i8 %i.r, 100
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !10
  %i.w = urem i8 %i.r, 100
  br label %.sink.split.i6

bb.e:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"
  %i.x = icmp samesign ugt i8 %i.r, 9
  br i1 %i.x, label %.sink.split.i6, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"

.sink.split.i6:                                   ; preds = %bb.e, %bb.d
  %.2 = phi ptr [ %i.v, %bb.d ], [ %i.p, %bb.e ]  ; 2 uses
  %.sink7.i7 = phi i8 [ %i.w, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = udiv i8 %.sink7.i7, 10
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.z, ptr %.2, align 1, !tbaa !10
  %i.ab = urem i8 %.sink7.i7, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8": ; preds = %bb.e, %.sink.split.i6
  %.3 = phi ptr [ %i.aa, %.sink.split.i6 ], [ %i.p, %bb.e ] ; 4 uses
  %.0.i5 = phi i8 [ %i.ab, %.sink.split.i6 ], [ %i.r, %bb.e ]
  %i.ac = or disjoint i8 %.0.i5, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.ac, ptr %.3, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  store i8 46, ptr %i.ad, align 1, !tbaa !10
  %i.af = lshr i32 %i.a, 8
  %i.ag = trunc i32 %i.af to i8                   ; 6 uses
  %i.ah = icmp ugt i8 %i.ag, 99
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"
  %i.ai = udiv i8 %i.ag, 100
  %i.aj = or disjoint i8 %i.ai, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 3
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !10
  %i.al = urem i8 %i.ag, 100
  br label %.sink.split.i10

bb.g:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"
  %i.am = icmp samesign ugt i8 %i.ag, 9
  br i1 %i.am, label %.sink.split.i10, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"

.sink.split.i10:                                  ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %.sink7.i11 = phi i8 [ %i.al, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %i.an = udiv i8 %.sink7.i11, 10
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.ao, ptr %.4, align 1, !tbaa !10
  %i.aq = urem i8 %.sink7.i11, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12": ; preds = %bb.g, %.sink.split.i10
  %.5 = phi ptr [ %i.ap, %.sink.split.i10 ], [ %i.ae, %bb.g ] ; 4 uses
  %.0.i9 = phi i8 [ %i.aq, %.sink.split.i10 ], [ %i.ag, %bb.g ]
  %i.ar = or disjoint i8 %.0.i9, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.ar, ptr %.5, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 3 uses
  store i8 46, ptr %i.as, align 1, !tbaa !10
  %i.au = trunc i32 %i.a to i8                    ; 6 uses
  %i.av = icmp ugt i8 %i.au, 99
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"
  %i.aw = udiv i8 %i.au, 100
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !10
  %i.az = urem i8 %i.au, 100
  br label %.sink.split.i14

bb.i:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"
  %i.ba = icmp samesign ugt i8 %i.au, 9
  br i1 %i.ba, label %.sink.split.i14, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16"

.sink.split.i14:                                  ; preds = %bb.i, %bb.h
  %.6 = phi ptr [ %i.ay, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.sink7.i15 = phi i8 [ %i.az, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %i.bb = udiv i8 %.sink7.i15, 10
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.bc, ptr %.6, align 1, !tbaa !10
  %i.be = urem i8 %.sink7.i15, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16": ; preds = %bb.i, %.sink.split.i14
  %.7 = phi ptr [ %i.bd, %.sink.split.i14 ], [ %i.at, %bb.i ] ; 2 uses
  %.0.i13 = phi i8 [ %i.be, %.sink.split.i14 ], [ %i.au, %bb.i ]
  %i.bf = or disjoint i8 %.0.i13, 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.bf, ptr %.7, align 1, !tbaa !10
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  ret i64 %i.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address11is_loopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = and i32 %i.a, -16777216
  %i.c = icmp eq i32 %i.b, 2130706432
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address14is_unspecifiedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address12is_multicastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = and i32 %i.a, -268435456
  %i.c = icmp eq i32 %i.b, -536870912
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv4_address13write_ostreamERSo(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %2 = call { ptr, i64 } @_ZNK5boost4urls12ipv4_address9to_bufferEPcm(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull %i.a, i64 noundef 15) ; 2 uses
  %3 = extractvalue { ptr, i64 } %2, 0
  %4 = extractvalue { ptr, i64 } %2, 1
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %3, i64 %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not = icmp slt i64 %2, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109
  %i.j = and i32 %i.i, 176
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !27
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = sub nsw i64 %i.f, %2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !108
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nsw i64 %i.f, %2
  store i64 %i.t, ptr %i.e, align 8, !tbaa !108
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv4_address14to_string_implERNS0_12string_token3argE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca [15 x i8], align 1                  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %4 = load i32, ptr %0, align 4, !tbaa !9        ; 6 uses
  %5 = lshr i32 %4, 24
  %6 = trunc nuw i32 %5 to i8                     ; 4 uses
  %7 = icmp ugt i32 %4, 1677721599
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = udiv i8 %6, 100
  %10 = or disjoint i8 %9, 48
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %10, ptr %3, align 1, !tbaa !10
  %12 = urem i8 %6, 100
  br label %.sink.split.i.i

13:                                               ; preds = %2
  %14 = icmp samesign ugt i32 %4, 167772159
  br i1 %14, label %.sink.split.i.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"

.sink.split.i.i:                                  ; preds = %13, %8
  %.0.i = phi ptr [ %11, %8 ], [ %3, %13 ]        ; 2 uses
  %.sink7.i.i = phi i8 [ %12, %8 ], [ %6, %13 ]   ; 2 uses
  %15 = udiv i8 %.sink7.i.i, 10
  %16 = or disjoint i8 %15, 48
  %17 = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %16, ptr %.0.i, align 1, !tbaa !10
  %18 = urem i8 %.sink7.i.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i": ; preds = %.sink.split.i.i, %13
  %.1.i = phi ptr [ %17, %.sink.split.i.i ], [ %3, %13 ] ; 4 uses
  %.0.i.i = phi i8 [ %18, %.sink.split.i.i ], [ %6, %13 ]
  %19 = or disjoint i8 %.0.i.i, 48
  %20 = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %19, ptr %.1.i, align 1, !tbaa !10
  %21 = getelementptr inbounds nuw i8, ptr %.1.i, i64 2 ; 3 uses
  store i8 46, ptr %20, align 1, !tbaa !10
  %22 = lshr i32 %4, 16
  %23 = trunc i32 %22 to i8                       ; 6 uses
  %24 = icmp ugt i8 %23, 99
  br i1 %24, label %25, label %30

25:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"
  %26 = udiv i8 %23, 100
  %27 = or disjoint i8 %26, 48
  %28 = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  store i8 %27, ptr %21, align 1, !tbaa !10
  %29 = urem i8 %23, 100
  br label %.sink.split.i6.i

30:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit.i"
  %31 = icmp samesign ugt i8 %23, 9
  br i1 %31, label %.sink.split.i6.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"

.sink.split.i6.i:                                 ; preds = %30, %25
  %.2.i = phi ptr [ %28, %25 ], [ %21, %30 ]      ; 2 uses
  %.sink7.i7.i = phi i8 [ %29, %25 ], [ %23, %30 ] ; 2 uses
  %32 = udiv i8 %.sink7.i7.i, 10
  %33 = or disjoint i8 %32, 48
  %34 = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %33, ptr %.2.i, align 1, !tbaa !10
  %35 = urem i8 %.sink7.i7.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i": ; preds = %.sink.split.i6.i, %30
  %.3.i = phi ptr [ %34, %.sink.split.i6.i ], [ %21, %30 ] ; 4 uses
  %.0.i5.i = phi i8 [ %35, %.sink.split.i6.i ], [ %23, %30 ]
  %36 = or disjoint i8 %.0.i5.i, 48
  %37 = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %36, ptr %.3.i, align 1, !tbaa !10
  %38 = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 3 uses
  store i8 46, ptr %37, align 1, !tbaa !10
  %39 = lshr i32 %4, 8
  %40 = trunc i32 %39 to i8                       ; 6 uses
  %41 = icmp ugt i8 %40, 99
  br i1 %41, label %42, label %47

42:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"
  %43 = udiv i8 %40, 100
  %44 = or disjoint i8 %43, 48
  %45 = getelementptr inbounds nuw i8, ptr %.3.i, i64 3
  store i8 %44, ptr %38, align 1, !tbaa !10
  %46 = urem i8 %40, 100
  br label %.sink.split.i10.i

47:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8.i"
  %48 = icmp samesign ugt i8 %40, 9
  br i1 %48, label %.sink.split.i10.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"

.sink.split.i10.i:                                ; preds = %47, %42
  %.4.i = phi ptr [ %45, %42 ], [ %38, %47 ]      ; 2 uses
  %.sink7.i11.i = phi i8 [ %46, %42 ], [ %40, %47 ] ; 2 uses
  %49 = udiv i8 %.sink7.i11.i, 10
  %50 = or disjoint i8 %49, 48
  %51 = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 %50, ptr %.4.i, align 1, !tbaa !10
  %52 = urem i8 %.sink7.i11.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i": ; preds = %.sink.split.i10.i, %47
  %.5.i = phi ptr [ %51, %.sink.split.i10.i ], [ %38, %47 ] ; 4 uses
  %.0.i9.i = phi i8 [ %52, %.sink.split.i10.i ], [ %40, %47 ]
  %53 = or disjoint i8 %.0.i9.i, 48
  %54 = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  store i8 %53, ptr %.5.i, align 1, !tbaa !10
  %55 = getelementptr inbounds nuw i8, ptr %.5.i, i64 2 ; 3 uses
  store i8 46, ptr %54, align 1, !tbaa !10
  %56 = trunc i32 %4 to i8                        ; 6 uses
  %57 = icmp ugt i8 %56, 99
  br i1 %57, label %58, label %63

58:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"
  %59 = udiv i8 %56, 100
  %60 = or disjoint i8 %59, 48
  %61 = getelementptr inbounds nuw i8, ptr %.5.i, i64 3
  store i8 %60, ptr %55, align 1, !tbaa !10
  %62 = urem i8 %56, 100
  br label %.sink.split.i14.i

63:                                               ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12.i"
  %64 = icmp samesign ugt i8 %56, 9
  br i1 %64, label %.sink.split.i14.i, label %_ZNK5boost4urls12ipv4_address10print_implEPc.exit

.sink.split.i14.i:                                ; preds = %63, %58
  %.6.i = phi ptr [ %61, %58 ], [ %55, %63 ]      ; 2 uses
  %.sink7.i15.i = phi i8 [ %62, %58 ], [ %56, %63 ] ; 2 uses
  %65 = udiv i8 %.sink7.i15.i, 10
  %66 = or disjoint i8 %65, 48
  %67 = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %66, ptr %.6.i, align 1, !tbaa !10
  %68 = urem i8 %.sink7.i15.i, 10
  br label %_ZNK5boost4urls12ipv4_address10print_implEPc.exit

_ZNK5boost4urls12ipv4_address10print_implEPc.exit: ; preds = %63, %.sink.split.i14.i
  %.7.i = phi ptr [ %67, %.sink.split.i14.i ], [ %55, %63 ] ; 2 uses
  %.0.i13.i = phi i8 [ %68, %.sink.split.i14.i ], [ %56, %63 ]
  %69 = or disjoint i8 %.0.i13.i, 48
  %70 = getelementptr inbounds nuw i8, ptr %.7.i, i64 1
  store i8 %69, ptr %.7.i, align 1, !tbaa !10
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %3 to i64
  %73 = sub i64 %71, %72                          ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call noundef ptr %i.b(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %3, i64 %73, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.boost::system::system_error", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !10
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !18
  invoke void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  unreachable

bb.e:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #23 ; 3 uses
  invoke void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6detail19with_throw_locationINS_6system12system_errorEEE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6system12system_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, -2
  %i.d = icmp eq i64 %i.c, 4611686018427387902
  br i1 %i.d, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNK5boost6system10error_code9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !36
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, i64 noundef %i.g)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.l

end_hunk_0
