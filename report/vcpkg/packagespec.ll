Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/packagespec?download=true
inline.NumInlined: 1283
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5vcpkg24format_full_version_specB5cxx11ERKNS_11PackageSpecERKNS_18InternalFeatureSetERKNS_7VersionE:bb.a
.noexc.i.i:                                       ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc15.loopexit:                                ; preds = %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i
  %.pre38 = load ptr, ptr %11, align 8, !tbaa !31
  %.pre39 = load i64, ptr %i.au, align 8, !tbaa !29
  br label %.noexc15

.noexc15:                                         ; preds = %.noexc15.loopexit, %bb.g
  %i.bf = phi i64 [ %.pre39, %.noexc15.loopexit ], [ 0, %bb.g ]
  %i.bg = phi ptr [ %.pre38, %.noexc15.loopexit ], [ %i.at, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bh, align 8, !tbaa !33
  store ptr %.sroa.0.0.copyload.i, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !186
  %i.bi = load ptr, ptr %1, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !29
  store ptr %i.bi, ptr %8, align 16, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bg, ptr %i.bm, align 16, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %12, ptr %i.bo, align 16, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg7TripletEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.bp, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %3, ptr %i.bq, align 16, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg7VersionEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.br, align 8, !tbaa !30
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.4, i64 12, i64 65501, ptr nonnull %8)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.bs = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.at
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.j
  %i.bu = load i64, ptr %i.at, align 8, !tbaa !30
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.l

bb.k:                                             ; preds = %.noexc15
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.bx = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.k
  %i.bz = load i64, ptr %i.at, align 8, !tbaa !30
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg11PackageSpec9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v12::detail::iterator_buffer", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.81", align 16 ; 7 uses
  %4 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !26, !alias.scope !191
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !29, !alias.scope !191
  store i8 0, ptr %i.a, align 8, !tbaa !30, !alias.scope !191
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !191
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !191
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !191
  %i.d = load ptr, ptr %1, align 8, !tbaa !31, !noalias !191
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29, !noalias !191
  store ptr %i.d, ptr %3, align 16, !tbaa !30, !noalias !191
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !30, !noalias !191
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.h, align 16, !tbaa !30, !noalias !191
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg7TripletEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.i, align 8, !tbaa !30, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !191
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !191
  store ptr @_ZN3fmt3v126detail16container_bufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4growERNS1_6bufferIcEEm, ptr %i.k, align 8, !tbaa !37, !alias.scope !192, !noalias !191
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.l, align 8, !tbaa !39, !alias.scope !192, !noalias !191
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.6, i64 5, i64 253, ptr nonnull %3, ptr null)
          to label %_Z15adapt_to_stringIN5vcpkg11PackageSpecEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !31, !alias.scope !191 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.a, align 8, !tbaa !30, !alias.scope !191
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.m

_Z15adapt_to_stringIN5vcpkg11PackageSpecEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !191
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg11PackageSpec3dirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.81", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !195
  %i.b = load ptr, ptr %1, align 8, !tbaa !31, !noalias !195
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29, !noalias !195
  store ptr %i.b, ptr %2, align 16, !tbaa !30, !noalias !195
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !30, !noalias !195
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.f, align 16, !tbaa !30, !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg7TripletEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.g, align 8, !tbaa !30, !noalias !195
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.5, i64 5, i64 253, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !195
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5vcpkgeqERKNS_11PackageSpecES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !31
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i4 = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread5: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.m = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg24ParsedQualifiedSpecifier23platform_or_always_trueEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(336) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %2 = select i1 %i.c, ptr %1, ptr null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  %spec.select = select i1 %i.c, ptr %i.d, ptr @_ZN5vcpkg18PlatformExpression4Expr11always_trueE
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg24ParsedQualifiedSpecifier12to_full_specENS_7TripletENS_15ImplicitDefaultE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::FullPackageSpec") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::LineInfo", align 8  ; 5 uses
  %5 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 12 uses
  %6 = alloca %"struct.vcpkg::InternalFeatureSet", align 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 203, ptr %4, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.7, ptr %i.e, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @__func__._ZNK5vcpkg24ParsedQualifiedSpecifier12to_full_specENS_7TripletENS_15ImplicitDefaultE, ptr %i.f, align 8, !tbaa !65
  call void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull @.str.8, i64 90) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !67, !range !60, !noundef !61
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.sroa.013.0 = phi ptr [ null, %bb.c ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = tail call fastcc ptr @_ZN12_GLOBAL__N_115resolve_tripletERKN5vcpkg8OptionalINS0_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS0_7TripletE(ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr %2)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !26
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.x, ptr %i.a, align 8, !tbaa !52
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !31
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.e
  %i.ab = phi ptr [ %i.z, %.noexc.i.i ], [ %i.u, %bb.e ] ; 2 uses
  switch i64 %i.x, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !30
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !30
  br label %_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !29
  %i.af = load ptr, ptr %5, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5vcpkg24internalize_feature_listENS_4SpanIKNS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS_15ImplicitDefaultE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::InternalFeatureSet") align 8 %6, ptr %.sroa.013.0, i64 %.sroa.6.0, i1 noundef zeroext %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !26
  %i.aj = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  br i1 %i.ak, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.an, i1 false)
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.aj, ptr %0, align 8, !tbaa !31
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !30
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !30
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !29
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZN5vcpkg11PackageSpecD2Ev.exit:                  ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = phi i64 [ %i.al, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !33
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load <2 x ptr>, ptr %6, align 16, !tbaa !39
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !48
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.j:                                             ; preds = %_ZN5vcpkg11PackageSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.az = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %_ZN5vcpkg11PackageSpecD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.j
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit11

_ZN5vcpkg11PackageSpecD2Ev.exit11:                ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.ay
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @_ZN12_GLOBAL__N_115resolve_tripletERKN5vcpkg8OptionalINS0_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS0_7TripletE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree readnone captures(ret: address, provenance) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !72, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !26
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.h, ptr %i.a, align 8, !tbaa !52
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !31
  %i.k = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.k, ptr %i.e, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !30
  store i8 %i.m, ptr %i.l, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
end_hunk_0
