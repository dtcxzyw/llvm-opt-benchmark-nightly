Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/portfileprovider?download=true
inline.NumInlined: 2682
inline.NumDeleted: 1379
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg5Debug7printlnIJA16_cNS_4PathEEEEvDpRKT_:bb.a
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %i.f, i64 %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 10)
          to label %_ZN5vcpkg7Strings6concatIJA9_cA16_cNS_4PathEcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !28, !alias.scope !98 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.c, align 8, !tbaa !31, !alias.scope !98
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN5vcpkg7Strings6concatIJA9_cA16_cNS_4PathEcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.e
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.m, i64 %i.o)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5vcpkg7Strings6concatIJA9_cA16_cNS_4PathEcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.c, align 8, !tbaa !31
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.h:                                             ; preds = %_ZN5vcpkg7Strings6concatIJA9_cA16_cNS_4PathEcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.h
  %i.w = load i64, ptr %i.c, align 8, !tbaa !31
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5vcpkg12is_directoryENS_8FileTypeE(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i32 @_ZNK5vcpkg18ReadOnlyFilesystem6statusERKNS_4PathENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5vcpkg16OverlayPortPaths5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !101, !range !46, !noundef !47
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  %not. = xor i1 %i.b, true
  %i.h = select i1 %not., i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5vcpkg19MapPortFileProviderC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_28SourceControlFileAndLocationESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg19MapPortFileProviderE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg19MapPortFileProvider16get_control_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.245", align 16 ; 8 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %5 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %6 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107, !nonnull !47, !align !110
  %i.c = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg28SourceControlFileAndLocationEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.sroa.01.0.copyload = load i64, ptr @_ZN5vcpkg19msgPortDoesNotExistE, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  %.fca.0.load.i = load ptr, ptr %5, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.fca.0.load.i, ptr %4, align 8, !noalias !111
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.fca.1.load.i, ptr %i.e, align 8, !noalias !111
  %i.f = load ptr, ptr @_ZN5vcpkg3msg14package_name_t4nameE, align 8, !tbaa !114, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !116
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.g, ptr %3, align 16, !tbaa !119, !noalias !116
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.h, align 8, !tbaa !122, !noalias !116
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %4, ptr %i.i, align 16, !tbaa !31, !noalias !116
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.j, align 8, !tbaa !31, !noalias !116
  store ptr %i.f, ptr %i.g, align 16, !tbaa !123, !noalias !116
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !124, !noalias !116
  call void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %6, i64 noundef %.sroa.01.0.copyload, i64 4611686018427387919, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !27
  %i.l = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.l, ptr %0, align 8, !tbaa !28
  %i.s = load i64, ptr %i.m, align 8, !tbaa !31
  store i64 %i.s, ptr %i.k, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.v, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.w, ptr %0, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.x, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5vcpkg15LocalizedStringD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg19MapPortFileProvider22load_all_control_filesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.68") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107, !nonnull !47, !align !110 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !129
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !129 ; 4 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #25, !noalias !129
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not16.i = icmp eq i64 %i.d, 0
  br i1 %.not16.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.d, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29, !noalias !129 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !140, !alias.scope !129
  store ptr %i.h, ptr %i.i, align 8, !tbaa !143, !alias.scope !129
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !144, !alias.scope !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i, %bb.b
  %.promoted12 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i ], [ null, %bb.b ]
  %.promoted8 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i ], [ null, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.02.05.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !129 ; 2 uses
  %.not6.i = icmp eq ptr %.sroa.02.05.i, null
  br i1 %.not6.i, label %"_ZN5vcpkg4Util4fmapIRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_28SourceControlFileAndLocationESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEZNKS_19MapPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISO_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISO_EE5beginEEEE4typeESaISX_EEOSO_OST_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i, %.lr.ph.i
  %i.m = phi ptr [ %.promoted8, %.lr.ph.i ], [ %i.ae, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 7 uses
  %i.n = phi ptr [ %.promoted12, %.lr.ph.i ], [ %i.af, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 3 uses
  %i.o = phi ptr [ %.promoted8, %.lr.ph.i ], [ %.pn, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 3 uses
  %.sroa.02.07.i = phi ptr [ %.sroa.02.05.i, %.lr.ph.i ], [ %.sroa.02.0.i, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.o, align 8, !tbaa !68, !noalias !129
  %2 = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %2, ptr %i.l, align 8, !tbaa !143, !alias.scope !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #25
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !129

.noexc11.i:                                       ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #29
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !129 ; 5 uses

.noexc12.i:                                       ; preds = %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !68, !noalias !129
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc12.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.m, i64 %i.s, i1 false), !noalias !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.g, %.noexc12.i
  %3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #26, !noalias !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !140, !alias.scope !129
  store ptr %3, ptr %i.l, align 8, !tbaa !143, !alias.scope !129
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !144, !alias.scope !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i: ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.d
  %i.ae = phi ptr [ %i.aa, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.m, %bb.d ]
  %i.af = phi ptr [ %i.ad, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.n, %bb.d ]
  %.pn = phi ptr [ %3, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %2, %bb.d ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.07.i, align 8, !tbaa !145, !noalias !129 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.02.0.i, null
  br i1 %.not.i, label %"_ZN5vcpkg4Util4fmapIRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_28SourceControlFileAndLocationESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEZNKS_19MapPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISO_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISO_EE5beginEEEE4typeESaISX_EEOSO_OST_.exit", label %bb.c

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  %.not.i.i.i13.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i13.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #26, !noalias !129
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EED2Ev.exit.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %.pn.i

"_ZN5vcpkg4Util4fmapIRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_28SourceControlFileAndLocationESt4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEZNKS_19MapPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISO_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISO_EE5beginEEEE4typeESaISX_EEOSO_OST_.exit": ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg21PathsPortFileProviderC2ERKNS_11RegistrySetEOSt10unique_ptrINS_20IFullOverlayProviderESt14default_deleteIS5_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg21PathsPortFileProviderE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_120BaselineProviderImplE, i64 16), ptr %i.b, align 8, !tbaa !103, !noalias !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !152, !noalias !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !40, !noalias !149
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !39, !noalias !149
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.d, ptr %i.f, align 8, !tbaa !32, !noalias !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.g, align 8, !tbaa !33, !noalias !149
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.h, align 8, !tbaa !34, !noalias !149
  store ptr %i.b, ptr %i.a, align 8, !tbaa !154, !alias.scope !146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.i = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %bb.b unwind label %bb.c       ; 14 uses

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_129VersionedPortfileProviderImplE, i64 16), ptr %i.i, align 8, !tbaa !103, !noalias !160
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !152, !noalias !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.m, ptr %i.l, align 8, !tbaa !163, !noalias !160
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %i.n, align 8, !tbaa !165, !noalias !160
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !160
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !166, !noalias !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !160
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !40, !noalias !160
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr null, ptr %i.s, align 8, !tbaa !39, !noalias !160
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %i.r, ptr %i.t, align 8, !tbaa !32, !noalias !160
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.r, ptr %i.u, align 8, !tbaa !33, !noalias !160
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %i.v, align 8, !tbaa !34, !noalias !160
  store ptr %i.i, ptr %i.j, align 8, !tbaa !167, !alias.scope !157
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %2, align 8, !tbaa !170
  store i64 %i.x, ptr %i.w, align 8, !tbaa !170
  store ptr null, ptr %2, align 8, !tbaa !170
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg17IBaselineProviderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17IBaselineProviderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg17IBaselineProviderEEclEPS1_.exit.i: ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #24, !inline_history !173
  br label %_ZNSt10unique_ptrIN5vcpkg17IBaselineProviderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17IBaselineProviderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5vcpkg17IBaselineProviderEEclEPS1_.exit.i, %bb.c
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg22make_baseline_providerERKNS_11RegistrySetE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.73") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_120BaselineProviderImplESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !174 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_120BaselineProviderImplE, i64 16), ptr %i.a, align 8, !tbaa !103, !noalias !174
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !152, !noalias !174
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !40, !noalias !174
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !39, !noalias !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.e, align 8, !tbaa !32, !noalias !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.f, align 8, !tbaa !33, !noalias !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.g, align 8, !tbaa !34, !noalias !174
  store ptr %i.a, ptr %0, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg32make_versioned_portfile_providerERKNS_11RegistrySetE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.81") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_129VersionedPortfileProviderImplESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29, !noalias !177 ; 14 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_129VersionedPortfileProviderImplE, i64 16), ptr %i.a, align 8, !tbaa !103, !noalias !177
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !152, !noalias !177
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.c, align 8, !tbaa !163, !noalias !177
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %i.e, align 8, !tbaa !165, !noalias !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !177
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !166, !noalias !177
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !177
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !40, !noalias !177
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !39, !noalias !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.i, ptr %i.k, align 8, !tbaa !32, !noalias !177
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.i, ptr %i.l, align 8, !tbaa !33, !noalias !177
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %i.m, align 8, !tbaa !34, !noalias !177
  store ptr %i.a, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg21PathsPortFileProvider16get_control_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %4 = alloca %"struct.vcpkg::ExpectedT.110", align 8 ; 14 uses
  %5 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %6 = alloca %"struct.vcpkg::VersionSpec", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  %i.c = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %i.c, i64 %i.e) ; 2 uses
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %0, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.j, align 8, !tbaa !125
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172  ; 2 uses
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #24
  %i.m = load ptr, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.110") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr %i.m, i64 %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !180, !range !46, !noundef !47
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNO5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEE5errorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !182  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5vcpkg11VersionSpecC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VersionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind writable sret(%"struct.vcpkg::ExpectedT.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5vcpkg7VersionD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZN5vcpkg7VersionD2Ev.exit.i

_ZN5vcpkg7VersionD2Ev.exit.i:                     ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.af = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !31
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg11VersionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.ak, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn

_ZNO5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEE5errorEv.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !27
  %i.an = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

bb.j:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEE5errorEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %.thread32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNO5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEE5errorEv.exit
  store ptr %i.an, ptr %0, align 8, !tbaa !28
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !31
  store i64 %i.au, ptr %i.am, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %.thread32

.thread32:                                        ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  %i.av = phi i64 [ %i.ar, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !29
  store i64 0, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ay, align 8, !tbaa !125
  br label %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre20 = load i8, ptr %i.r, align 8, !tbaa !180, !range !46
  %.pre21 = load ptr, ptr %4, align 8, !tbaa !28  ; 3 uses
  %i.az = trunc nuw i8 %.pre20 to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bb = icmp eq ptr %.pre21, %i.ba              ; 2 uses
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.bb, label %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18: ; preds = %bb.k
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.bd) #26
  br label %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  br i1 %i.bb, label %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.bf) #26
  br label %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.l, %bb.k, %.thread32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev.exit
  ret void
}

declare void @_ZN5vcpkg11VersionSpecC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7VersionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg11VersionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !31
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg9ExpectedTINS_7VersionENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.sink.split

_ZN5vcpkg15LocalizedStringD2Ev.exit.sink.split:   ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !31
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.a, %_ZN5vcpkg15LocalizedStringD2Ev.exit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5vcpkg21PathsPortFileProvider22load_all_control_filesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.68") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.30", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !183
  %i.p = load i64, ptr %i.e, align 8, !tbaa !34, !noalias !183 ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.q, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #25
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18.i = icmp eq i64 %i.p, 0
  br i1 %.not18.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.p, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #29
          to label %.noexc4 unwind label %bb.o    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %0, align 8, !tbaa !140, !alias.scope !183
  store ptr %i.t, ptr %i.u, align 8, !tbaa !143, !alias.scope !183
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !144, !alias.scope !183
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i: ; preds = %.noexc4, %bb.d
  %.promoted16 = phi ptr [ %i.v, %.noexc4 ], [ null, %bb.d ]
  %.promoted12 = phi ptr [ %i.t, %.noexc4 ], [ null, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !32, !noalias !183 ; 2 uses
  %.not5.i = icmp eq ptr %i.w, %i.a
  br i1 %.not5.i, label %"_ZN5vcpkg4Util4fmapIRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_28SourceControlFileAndLocationESt4lessIS8_ESaISt4pairIKS8_SB_EEEZNKS_21PathsPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISN_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISN_EE5beginEEEE4typeESaISW_EEOSN_OSS_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i, %.lr.ph.i
  %i.y = phi ptr [ %.promoted12, %.lr.ph.i ], [ %i.aq, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 7 uses
  %i.z = phi ptr [ %.promoted16, %.lr.ph.i ], [ %i.ar, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 3 uses
  %i.aa = phi ptr [ %.promoted12, %.lr.ph.i ], [ %.pn20, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 3 uses
  %.sroa.02.06.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.as, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.02.06.i, i64 64
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !186, !noalias !183 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.val.i, ptr %i.aa, align 8, !tbaa !68, !noalias !183
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %3, ptr %i.x, align 8, !tbaa !143, !alias.scope !183
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #25
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !183

.noexc11.i:                                       ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !183 ; 5 uses

.noexc12.i:                                       ; preds = %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store ptr %.val.i, ptr %i.an, align 8, !tbaa !68, !noalias !183
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc12.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.y, i64 %i.ae, i1 false), !noalias !183
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %.noexc12.i
  %4 = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #26, !noalias !183
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !140, !alias.scope !183
  store ptr %4, ptr %i.x, align 8, !tbaa !143, !alias.scope !183
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ap, ptr %i.r, align 8, !tbaa !144, !alias.scope !183
  br label %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i: ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ]
  %i.ar = phi ptr [ %i.ap, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.z, %bb.f ]
  %.pn20 = phi ptr [ %4, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %3, %bb.f ]
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.06.i) #28, !noalias !183 ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.a
  br i1 %.not.i, label %"_ZN5vcpkg4Util4fmapIRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_28SourceControlFileAndLocationESt4lessIS8_ESaISt4pairIKS8_SB_EEEZNKS_21PathsPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISN_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISN_EE5beginEEEE4typeESaISW_EEOSN_OSS_.exit", label %bb.e

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i13.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #26, !noalias !183
  br label %.body

"_ZN5vcpkg4Util4fmapIRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_28SourceControlFileAndLocationESt4lessIS8_ESaISt4pairIKS8_SB_EEEZNKS_21PathsPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISN_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISN_EE5beginEEEE4typeESaISW_EEOSN_OSS_.exit": ; preds = %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i, %_ZNSt6vectorIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE7reserveEm.exit.i
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !39
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN5vcpkg28SourceControlFileAndLocationEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.at)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN5vcpkg28SourceControlFileAndLocationESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %"_ZN5vcpkg4Util4fmapIRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_28SourceControlFileAndLocationESt4lessIS8_ESaISt4pairIKS8_SB_EEEZNKS_21PathsPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISN_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISN_EE5beginEEEE4typeESaISW_EEOSN_OSS_.exit"
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN5vcpkg28SourceControlFileAndLocationESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %"_ZN5vcpkg4Util4fmapIRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_28SourceControlFileAndLocationESt4lessIS8_ESaISt4pairIKS8_SB_EEEZNKS_21PathsPortFileProvider22load_all_control_filesEvE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISN_EEiE4typeELi0EEESt6vectorINSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISN_EE5beginEEEE4typeESaISW_EEOSN_OSS_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.n:                                             ; preds = %bb.b, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg28SourceControlFileAndLocationESaIS3_EE11_M_allocateEm.exit.i.i, %.noexc.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.l, %bb.k, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.n ], [ %i.ax, %bb.o ], [ %.pn.i, %bb.l ], [ %.pn.i, %bb.k ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN5vcpkg28SourceControlFileAndLocationESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN5vcpkg28SourceControlFileAndLocationESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN5vcpkg28SourceControlFileAndLocationEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN5vcpkg28SourceControlFileAndLocationEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN5vcpkg28SourceControlFileAndLocationEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg21make_overlay_providerERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.89") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !188 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_119OverlayProviderImplE, i64 16), ptr %i.a, align 8, !tbaa !103, !noalias !188
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !191, !noalias !188
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5vcpkg16OverlayPortIndexC2ERKNS_16OverlayPortPathsE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %.noexc.i unwind label %bb.c, !noalias !188

.noexc.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !193, !noalias !188, !nonnull !47, !align !110
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !203, !noalias !188 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203, !noalias !188 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not8.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_119OverlayProviderImplESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc.i.i
  %.sroa.05.09.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %i.e, %.noexc.i ] ; 2 uses
  invoke void @_ZNK5vcpkg21OverlayPortIndexEntry15check_directoryERKNS_18ReadOnlyFilesystemE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i.i unwind label %bb.b, !noalias !188

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_119OverlayProviderImplESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5vcpkg16OverlayPortIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #24, !noalias !188
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #26, !noalias !188
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_119OverlayProviderImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc.i.i, %.noexc.i
  store ptr %i.a, ptr %0, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg22make_manifest_providerERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsERKNS_4PathEOSt10unique_ptrINS_17SourceControlFileESt14default_deleteISA_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.140") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !206 ; 21 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_120ManifestProviderImplE, i64 16), ptr %i.b, align 8, !tbaa !103, !noalias !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg12_GLOBAL__N_119OverlayProviderImplE, i64 16), ptr %i.c, align 8, !tbaa !103, !noalias !206
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !191, !noalias !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  invoke void @_ZN5vcpkg16OverlayPortIndexC2ERKNS_16OverlayPortPathsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %.noexc.i unwind label %bb.f, !noalias !206

.noexc.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !193, !noalias !206, !nonnull !47, !align !110
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !203, !noalias !206 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203, !noalias !206 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not8.i.i.i.i, label %_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc.i, %.noexc.i.i.i
  %.sroa.05.09.i.i.i.i = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.g, %.noexc.i ] ; 2 uses
  invoke void @_ZNK5vcpkg21OverlayPortIndexEntry15check_directoryERKNS_18ReadOnlyFilesystemE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc.i.i.i unwind label %bb.b, !noalias !206

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i, label %_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5vcpkg16OverlayPortIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #24, !noalias !206
  br label %.body.i

_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i: ; preds = %.noexc.i.i.i, %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = load i64, ptr %4, align 8, !tbaa !48, !noalias !206
  store i64 %i.m, ptr %i.l, align 8, !tbaa !48, !noalias !206
  store ptr null, ptr %4, align 8, !tbaa !48, !noalias !206
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !27, !noalias !206
  %i.p = load ptr, ptr %3, align 8, !tbaa !28, !noalias !206 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !206 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !206
  store i64 %i.r, ptr %i.a, align 8, !tbaa !30, !noalias !206
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8.i.i unwind label %bb.e, !noalias !206 ; 2 uses

.noexc8.i.i:                                      ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %i.n, align 8, !tbaa !28, !noalias !206
  %i.u = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !206
  store i64 %i.u, ptr %i.o, align 8, !tbaa !31, !noalias !206
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc8.i.i, %_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i
  %i.v = phi ptr [ %i.t, %.noexc8.i.i ], [ %i.o, %_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplC2ERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE.exit.i.i ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_120ManifestProviderImplESt14default_deleteIS2_EED2Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !31, !noalias !206
  store i8 %i.w, ptr %i.v, align 1, !tbaa !31, !noalias !206
  br label %_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_120ManifestProviderImplESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false), !noalias !206
  br label %_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_120ManifestProviderImplESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #24, !noalias !206
  call void @_ZN5vcpkg12_GLOBAL__N_119OverlayProviderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #24, !noalias !206
  br label %.body.i

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.x, %bb.e ], [ %i.k, %bb.b ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #26, !noalias !206
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt10unique_ptrIN5vcpkg12_GLOBAL__N_120ManifestProviderImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !206 ; 2 uses
end_hunk_0
