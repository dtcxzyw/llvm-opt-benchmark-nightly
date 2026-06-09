inline.NumInlined: 727
inline.NumDeleted: 414
begin_hunk_0_@_ZNSt3_V28__rotateIPPcEET_S3_S3_S3_St26random_access_iterator_tag:bb.a
._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block170, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %middle.block170 ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIPPcS1_ET0_T_S3_S2_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !122

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0105 = phi i64 [ %i.dy, %.lr.ph ], [ %.0105.unr, %.lr.ph.prol.loopexit ]
  %.052104 = phi ptr [ %i.dv, %.lr.ph ], [ %.052104.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.260103 = phi ptr [ %i.du, %.lr.ph ], [ %.260103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.260103, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !37
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !37
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !37
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !37
  %i.dm = getelementptr inbounds i8, ptr %.260103, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !37
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !37
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !37
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !37
  %i.dq = getelementptr inbounds i8, ptr %.260103, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.052104, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !37
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !37
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !37
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !37
  %i.du = getelementptr inbounds i8, ptr %.260103, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.052104, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !37
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !37
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !37
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !37
  %i.dy = add nuw nsw i64 %.0105, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !123

_ZSt11swap_rangesIPPcS1_ET0_T_S3_S2_.exit:        ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block195, %_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_.exit, %_ZSt4moveIPPcS1_ET0_T_S3_S2_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPPcS1_ET0_T_S3_S2_.exit ], [ %i.af, %_ZSt4moveIPPcS1_ET0_T_S3_S2_.exit ], [ %1, %middle.block195 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl14endOfArgsStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::settings::(anonymous namespace)::RecursiveStateHelper") align 16 captures(none) initializes((0, 8), (48, 64)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #6 personality ptr @__gxx_personality_v0 {
_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit:
  %.val = load ptr, ptr %1, align 16, !tbaa !124
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl9doneStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE, ptr %i.a, align 16, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.b, align 8, !tbaa !46
  store ptr %.val, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl19parseFlagValueStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::settings::(anonymous namespace)::RecursiveStateHelper") align 16 captures(none) initializes((0, 8), (48, 64)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 16, !tbaa !126  ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !128 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !128
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !73, !noalias !131
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !37, !noalias !131
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134, !noalias !131, !nonnull !69, !align !70
  %i.i = tail call noundef zeroext i1 @_ZNK5folly8settings21SettingsAccessorProxy13isBooleanFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.h, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !noalias !131, !inline_history !135
  br i1 %i.i, label %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split, label %_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !14, !noalias !128
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68, !noalias !128, !nonnull !69, !align !70
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32, !noalias !128
  %i.n = add nsw i64 %i.b, 1
  store i64 %i.n, ptr %i.a, align 8, !tbaa !27, !noalias !128
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37, !noalias !128 ; 4 uses
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #29, !noalias !128, !inline_history !136 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split, label %_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.c
  %i.s = load i8, ptr %i.p, align 1, !tbaa !54, !noalias !128
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %bb.d, label %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split

bb.d:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  store i64 %i.b, ptr %i.a, align 8, !tbaa !27, !noalias !128
  store i8 1, ptr %i.j, align 4, !tbaa !14, !noalias !128
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i3.i = load i64, ptr %i.u, align 8, !tbaa !73, !noalias !137
  %.sroa.2.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.sroa.2.0.copyload.i5.i = load ptr, ptr %.sroa.2.0..sroa_idx.i4.i, align 8, !tbaa !37, !noalias !137
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !134, !noalias !137, !nonnull !69, !align !70
  %i.x = tail call noundef zeroext i1 @_ZNK5folly8settings21SettingsAccessorProxy13isBooleanFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.w, i64 %.sroa.0.0.copyload.i3.i, ptr %.sroa.2.0.copyload.i5.i), !noalias !137, !inline_history !135
  br i1 %i.x, label %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split, label %_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit

_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split: ; preds = %bb.c, %_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.d, %bb.b
  %.sink = phi i64 [ 4, %bb.b ], [ 4, %bb.d ], [ %i.q, %_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ 0, %bb.c ]
  %.str.6.sink = phi ptr [ @.str.6, %bb.b ], [ @.str.6, %bb.d ], [ %i.p, %_ZN5folly8settings12_GLOBAL__N_110startsWithESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %i.p, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 64
  store i64 %.sink, ptr %i.y, align 8, !tbaa !73, !noalias !128
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  store ptr %.str.6.sink, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !tbaa !37, !noalias !128
  br label %_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit

_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split
  %i.z = phi ptr [ @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl19errorFlagValueStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE, %bb.d ], [ @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl19errorFlagValueStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE, %bb.b ], [ @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl15setSettingStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE, %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.aa, align 16, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ab, align 8, !tbaa !46
  store ptr %.val, ptr %0, align 16
  ret void
}

declare noundef zeroext i1 @_ZNK5folly8settings21SettingsAccessorProxy13isBooleanFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160), i64, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl19errorFlagValueStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::settings::(anonymous namespace)::RecursiveStateHelper") align 16 captures(none) initializes((0, 8), (48, 64)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 16, !tbaa !140  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !142
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37, !noalias !142
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134, !noalias !142, !nonnull !69, !align !70
  %i.d = tail call noundef zeroext i1 @_ZNK5folly8settings21SettingsAccessorProxy7hasFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.c, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i), !noalias !142, !inline_history !145
  br i1 %i.d, label %bb.b, label %_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !146, !noalias !142
  %i.f = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !148, !noalias !142
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.7, ptr noundef %i.f) #33, !noalias !142, !inline_history !145 ; 0 uses
  store i32 2, ptr %.val, align 8, !tbaa !40, !noalias !142
  br label %_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit

_ZN5folly8FunctionIFNS_8settings12_GLOBAL__N_120RecursiveStateHelperEvEED2Ev.exit: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl13moveBackStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE, ptr %i.h, align 16, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.i, align 8, !tbaa !46
  store ptr %.val, ptr %0, align 16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare noundef zeroext i1 @_ZNK5folly8settings21SettingsAccessorProxy7hasFlagESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160), i64, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl15setSettingStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE(ptr dead_on_unwind noalias writable sret(%"struct.folly::settings::(anonymous namespace)::RecursiveStateHelper") align 16 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional.37", align 8  ; 12 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.folly::basic_fbstring", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.folly::Function", align 16  ; 10 uses
  %.val = load ptr, ptr %1, align 16, !tbaa !149  ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134, !noalias !151, !nonnull !69, !align !70
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !151
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %.sroa.25.0.copyload.i = load ptr, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !37, !noalias !151
  %i.d = tail call { ptr, i8 } @_ZNK5folly8settings21SettingsAccessorProxy18getSettingMetadataESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 %.sroa.04.0.copyload.i, ptr %.sroa.25.0.copyload.i), !noalias !151, !inline_history !154 ; 2 uses
  %i.e = extractvalue { ptr, i8 } %i.d, 1
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i8 } %i.d, 0         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !155, !noalias !151
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %.val, ptr %9, align 16, !tbaa !35, !alias.scope !160
  br label %_ZN5folly8settings12_GLOBAL__N_120RecursiveStateHelperC2ENS_8FunctionIFS2_vEEE.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !151
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i8 0, ptr %i.k, align 8, !tbaa !163, !noalias !151
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !134, !noalias !151, !nonnull !69, !align !70 ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !73, !noalias !151
  %.sroa.23.0.copyload.i = load ptr, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !37, !noalias !151
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !73, !noalias !151
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37, !noalias !151
  store i64 3, ptr %3, align 8, !tbaa !165, !noalias !151
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.8, ptr %i.n, align 8, !tbaa !148, !noalias !151
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !80, !noalias !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !151
  %i.r = invoke i64 %i.q(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i64 %.sroa.02.0.copyload.i, ptr %.sroa.23.0.copyload.i, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %3)
          to label %bb.e unwind label %bb.i, !noalias !151, !call_target !166, !inline_history !154 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = and i64 %i.r, 255
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !151
  %.sroa.0.4.extract.shift.i = lshr i64 %i.r, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.u = invoke { i64, ptr } @_ZN5folly8settings8toStringENS0_12SetErrorCodeE(i32 noundef %.sroa.0.4.extract.trunc.i)
          to label %bb.g unwind label %bb.j, !noalias !151, !inline_history !154 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.v = extractvalue { i64, ptr } %i.u, 0
  store i64 %i.v, ptr %4, align 8, !noalias !151
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = extractvalue { i64, ptr } %i.u, 1
  store ptr %i.x, ptr %i.w, align 8, !noalias !151
  %i.y = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.j, !noalias !151, !inline_history !154 ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !151
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !151
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ]
  %.07.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.ab = call ptr @__cxa_begin_catch(ptr %.07.i) #29, !noalias !151, !inline_history !154 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !151
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #29, !noalias !151, !inline_history !154
  invoke void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.q, !noalias !151, !inline_history !154

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !151
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN5folly14basic_fbstringIcS2_S3_NS6_13fbstring_coreIcEEEEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.r, !noalias !151, !inline_history !154

bb.m:                                             ; preds = %bb.l
  %i.ac = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %5) #29, !noalias !151, !inline_history !154 ; 0 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !588, !noalias !151 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !54, !noalias !151
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28, !noalias !151, !inline_history !154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !151
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !54, !noalias !151
  %i.ak = icmp ult i8 %i.aj, 64
  br i1 %i.ak, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #29, !noalias !151, !inline_history !154
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.al = load ptr, ptr %7, align 8, !tbaa !591, !noalias !151
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !151, !inline_history !154
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.o, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !151
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.u, !noalias !151, !inline_history !154

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %bb.h, %bb.e
  %i.am = load i8, ptr %i.k, align 8, !tbaa !163, !range !91, !noalias !151, !noundef !69
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i, label %bb.v

_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !588, !noalias !596 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i: ; preds = %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !597, !noalias !596 ; 3 uses
  %i.au = add nuw nsw i64 %i.at, 1
  %i.av = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNOSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !54, !noalias !596
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !597, !noalias !596
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !54, !alias.scope !596
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i

bb.r:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !151
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !54, !noalias !151
  %i.bb = icmp ult i8 %i.ba, 64
  br i1 %i.bb, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #29, !noalias !151, !inline_history !154
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i: ; preds = %bb.s, %bb.r, %bb.q
  %.pn9.i = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.ay, %bb.r ], [ %i.ay, %bb.s ]
  %i.bc = load ptr, ptr %7, align 8, !tbaa !591, !noalias !151
  %.not.i16.i = icmp eq ptr %i.bc, null
  br i1 %.not.i16.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i, label %bb.t

bb.t:                                             ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !151, !inline_history !154
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17.i: ; preds = %bb.t, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29, !noalias !151
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.y, !noalias !151, !inline_history !154

bb.u:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  store ptr %.val, ptr %9, align 16, !tbaa !35, !alias.scope !598
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i
  %.sink.i = phi ptr [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.be = phi i64 [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.thread.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store ptr %.val, ptr %9, align 16, !tbaa !601, !alias.scope !596
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sink.i, ptr %i.bf, align 8, !tbaa !603, !alias.scope !596
end_hunk_0
