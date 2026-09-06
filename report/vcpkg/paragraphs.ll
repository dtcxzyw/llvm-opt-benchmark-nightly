Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/paragraphs?download=true
inline.NumInlined: 2374
inline.NumDeleted: 1196
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg23parse_dependencies_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewENS_10TextRowColE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fh = load ptr, ptr %13, align 8, !tbaa !100  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !101 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.fh, %i.fj
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i ], [ %i.fh, %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !53 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !56
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #23
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !85, !range !62, !noundef !45
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.bb, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

bb.bb:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !53 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !56
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #23
  br label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fz, %i.fj
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %13, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit
  %i.ga = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.fh, %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg10ParserBaseD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !102
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #23
  br label %_ZN5vcpkg10ParserBaseD2Ev.exit

_ZN5vcpkg10ParserBaseD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  ret void

.body:                                            ; preds = %bb.as, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ax ], [ %.pn.pn.pn.pn.i, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN5vcpkg10ParserBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_10DependencyESaIS3_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !114, !range !62, !noundef !45
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.05.i.i.i) #22
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #23
  br label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT.65") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::map", align 8          ; 11 uses
  %6 = alloca %"struct.vcpkg::Optional.20", align 8 ; 6 uses
  %7 = alloca %"struct.vcpkg::ExpectedT.69", align 8 ; 18 uses
  %8 = alloca %"struct.vcpkg::Paragraphs::PghParser", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 1, ptr %6, align 8, !tbaa !77
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !70
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  call void @_ZN5vcpkg10ParserBaseC2ENS_10StringViewENS_8OptionalIS1_EENS_10TextRowColE(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr %1, i64 %2, ptr noundef nonnull align 8 dead_on_return %6, i64 4294967297)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @_ZN5vcpkg10Paragraphs9PghParser14get_paragraphsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.69") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %8)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !138, !range !62, !noalias !345, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !60, !alias.scope !345
  %i.f = load ptr, ptr %7, align 8, !tbaa !53, !noalias !345 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52, !noalias !345 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.f, ptr %0, align 8, !tbaa !53, !alias.scope !345
  %i.m = load i64, ptr %i.g, align 8, !tbaa !56, !noalias !345
  store i64 %i.m, ptr %i.e, align 8, !tbaa !56, !alias.scope !345
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre6.i = load i64, ptr %.phi.trans.insert5.i, align 8, !tbaa !52, !noalias !345
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.n = phi i64 [ %i.j, %bb.d ], [ %.pre6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !52, !alias.scope !345
  store ptr %i.g, ptr %7, align 8, !tbaa !53, !noalias !345
  store i64 0, ptr %i.o, align 8, !tbaa !52, !noalias !345
  store i8 0, ptr %i.g, align 8, !tbaa !56, !noalias !345
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.q, align 8, !tbaa !140, !alias.scope !345
  br label %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !345
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.r = load ptr, ptr %7, align 8, !tbaa !141, !noalias !347 ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !347 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 48
  br i1 %i.y, label %.lr.ph8.i.i, label %._crit_edge9.i.i

.lr.ph8.i.i:                                      ; preds = %.preheader.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br label %bb.f

"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i": ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !346, !noalias !345
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

._crit_edge9.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader.i.i
  %.pre1619 = phi ptr [ %i.r, %.preheader.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %i.ac = phi ptr [ %i.t, %.preheader.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51, !noalias !347 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i", label %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i"

"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i": ; preds = %._crit_edge9.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !51, !alias.scope !346, !noalias !345
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !75, !alias.scope !346, !noalias !345
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !142, !alias.scope !346, !noalias !345
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph8.i.i
  %i.ak = phi ptr [ %i.r, %.lr.ph8.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %i.al = phi ptr [ %i.t, %.lr.ph8.i.i ], [ %i.ar, %._crit_edge.i.i ]
  %.07.i.i = phi i64 [ 1, %.lr.ph8.i.i ], [ %i.as, %._crit_edge.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %.07.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75, !noalias !347 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not4.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i
  %.pre.i.i = load ptr, ptr %i.s, align 8, !noalias !347
  %.pre10.i.i = load ptr, ptr %7, align 8, !tbaa !144, !noalias !347
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %i.aq = phi ptr [ %.pre10.i.i, %._crit_edge.loopexit.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.al, %bb.f ] ; 3 uses
  %.pre-phi = ptrtoint ptr %i.ar to i64
  %i.as = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %.pre-phi, %i.at
  %i.av = sdiv exact i64 %i.au, 48
  %i.aw = icmp ult i64 %i.as, %i.av
  br i1 %i.aw, label %bb.f, label %._crit_edge9.i.i, !llvm.loop !344

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.bu, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i ], [ %i.ao, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !51, !noalias !347 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52, !noalias !347 ; 4 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !noalias !347 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.19.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52, !noalias !347 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bd) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53, !noalias !347
  %i.bh = call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #22, !noalias !347 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.g
  %i.bi = sub i64 %i.bd, %i.ba
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.bj, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.bj, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !54, !noalias !347 ; 2 uses
  %.not.i.i.i.i11.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i11.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE11lower_boundERSC_.exit.i.i.i, label %bb.g, !llvm.loop !0

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE11lower_boundERSC_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i.i.i
  %i.bk = icmp eq ptr %.19.i.i.i.i.i.i, %i.aa
  br i1 %i.bk, label %.critedge.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE11lower_boundERSC_.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !52, !noalias !347 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.ba) ; 2 uses
  %i.bn = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53, !noalias !347
  %i.bq = call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22, !noalias !347 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.h
  %i.br = sub i64 %i.ba, %i.bm
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %.critedge.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i

.critedge.i.i.i:                                  ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE11lower_boundERSC_.exit.i.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ], [ %.19.i.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE11lower_boundERSC_.exit.i.i.i ], [ %i.aa, %.lr.ph.i.i ]
  %i.bt = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IS5_N5vcpkg10TextRowColEEESt10_Select1stISB_ESt4lessIvESaISB_EE22_M_emplace_hint_uniqueIJRSB_EEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr %.08.lcssa.i.i.i14.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ax)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i unwind label %bb.r ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS5_N5vcpkg10TextRowColEESt4lessIvESaIS6_IKS5_S9_EEE6insertIRSD_EENSt9enable_ifIXsr16is_constructibleISD_T_EE5valueES6_ISt17_Rb_tree_iteratorISD_EbEE4typeEOSJ_.exit.i.i: ; preds = %.critedge.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i
  %i.bu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01.05.i.i) #24, !noalias !347 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.ap
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i": ; preds = %._crit_edge9.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !145, !noalias !347
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.bx, align 8, !tbaa !51, !alias.scope !346, !noalias !345
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.cb = load <2 x ptr>, ptr %i.by, align 8, !tbaa !54, !noalias !347
  store <2 x ptr> %i.cb, ptr %i.bz, align 8, !tbaa !54, !alias.scope !346, !noalias !345
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ad, ptr %i.cc, align 8, !tbaa !146, !noalias !347
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !61, !noalias !345
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !61, !alias.scope !346, !noalias !345
  store ptr null, ptr %i.ae, align 8, !tbaa !51, !noalias !345
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !75, !noalias !345
  store ptr %i.bv, ptr %i.ca, align 8, !tbaa !142, !noalias !345
  store i64 0, ptr %i.cd, align 8, !tbaa !61, !noalias !345
  %.pre.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !51, !noalias !345 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i1.i = icmp eq ptr %.pre.pre.i, null
  br i1 %.not.i.i.i.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i"
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pre.pre.i, ptr %i.ci, align 8, !tbaa !51, !alias.scope !345
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !75, !noalias !345
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !142, !noalias !345
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 8
  store ptr %i.cg, ptr %i.cl, align 8, !tbaa !146, !noalias !345
  %i.cm = load i64, ptr %i.cf, align 8, !tbaa !61, !noalias !345
  store ptr null, ptr %i.bx, align 8, !tbaa !51, !noalias !345
  br label %"_ZNO5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE3mapIZNS_10Paragraphs29parse_single_merged_paragraphENS_10StringViewESO_E3$_0EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISJ_EDTcl9__declvalISQ_ELi0EEEvEEEESK_EESQ_.exit"

bb.j:                                             ; preds = %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i", %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i", %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i"
  %.pre1618 = phi ptr [ %i.r, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i" ], [ %.pre1619, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i" ], [ %.pre1619, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i" ]
  %i.cn = phi ptr [ %i.r, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i" ], [ %i.ac, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i" ], [ %i.ac, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i" ]
  %i.co = phi ptr [ %i.ab, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread.i" ], [ %i.cg, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.i" ], [ %i.aj, %"_ZZN5vcpkg10Paragraphs29parse_single_merged_paragraphB5cxx11ENS_10StringViewES1_ENK3$_0clEOSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairISA_NS_10TextRowColEESt4lessIvESaISB_IKSA_SD_EEESaISJ_EE.exit.thread21.i" ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cp, align 8, !tbaa !51, !alias.scope !345
  br label %"_ZNO5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE3mapIZNS_10Paragraphs29parse_single_merged_paragraphENS_10StringViewESO_E3$_0EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISJ_EDTcl9__declvalISQ_ELi0EEEvEEEESK_EESQ_.exit"

"_ZNO5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE3mapIZNS_10Paragraphs29parse_single_merged_paragraphENS_10StringViewESO_E3$_0EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISJ_EDTcl9__declvalISQ_ELi0EEEvEEEESK_EESQ_.exit": ; preds = %bb.j, %bb.i
  %.pre16 = phi ptr [ %.pre1618, %bb.j ], [ %.pre1619, %bb.i ] ; 5 uses
  %i.cq = phi ptr [ %i.cn, %bb.j ], [ %i.ac, %bb.i ] ; 2 uses
  %i.cr = phi ptr [ %i.co, %bb.j ], [ %i.cg, %bb.i ]
  %.sink3.i = phi ptr [ %i.co, %bb.j ], [ %i.cj, %bb.i ]
  %.sink2.i = phi ptr [ %i.co, %bb.j ], [ %i.ck, %bb.i ]
  %.sink.i = phi i64 [ 0, %bb.j ], [ %i.cm, %bb.i ]
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.j ], [ %i.bw, %bb.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink3.i, ptr %i.cs, align 8, !tbaa !75, !alias.scope !345
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_ZN5vcpkg12PortLocationD2Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !56
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.v = load i64, ptr %i.t, align 8, !tbaa !56
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg10Paragraphs23try_load_cached_packageERKNS_18ReadOnlyFilesystemERKNS_4PathERKNS_11PackageSpecE(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::ExpectedT.110") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg.125", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::detail::named_arg", align 8 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::named_arg.306", align 8 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::named_arg.306", align 8 ; 5 uses
  %8 = alloca %"struct.vcpkg::StatsTimer", align 8 ; 7 uses
  %9 = alloca %"struct.vcpkg::Path", align 8      ; 11 uses
  %10 = alloca %"struct.vcpkg::ExpectedT.69", align 8 ; 19 uses
  %11 = alloca %"struct.vcpkg::BinaryControlFile", align 8 ; 40 uses
  %12 = alloca %"struct.vcpkg::BinaryParagraph", align 8 ; 6 uses
  %13 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 8 uses
  %14 = alloca %"struct.vcpkg::BinaryParagraph", align 8 ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr @_ZL18g_load_ports_stats, ptr %8, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @_ZN5vcpkg12ElapsedTimerC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.5, i64 7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg10Paragraphs14get_paragraphsB5cxx11ERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.69") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !138, !range !62, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNR5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE5errorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.f, ptr %11, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr @_ZN5vcpkg7Triplet16DEFAULT_INSTANCEE, ptr %i.h, align 8, !tbaa !408
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 224 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 240 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.s = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #22 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = load ptr, ptr %10, align 8, !tbaa !144
  invoke void @_ZN5vcpkg15BinaryParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(240) %12, ptr %i.t, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef nonnull align 8 dereferenceable(240) ptr @_ZN5vcpkg15BinaryParagraphaSEOS0_(ptr noundef nonnull align 8 dereferenceable(240) %11, ptr noundef nonnull align 8 dereferenceable(240) %12) #22 ; 0 uses
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.x = invoke noundef zeroext i1 @_ZN5vcpkgeqERKNS_11PackageSpecES2_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg17msgMismatchedSpecE, align 8, !tbaa !63
  %i.y = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.z, ptr %4, align 8, !noalias !409
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !409
  %i.ac = load ptr, ptr @_ZN5vcpkg3msg6path_t4nameE, align 8, !tbaa !65, !noalias !409
  store ptr %i.ac, ptr %5, align 8, !noalias !409
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.ad, align 8, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !409
  %i.ae = load ptr, ptr @_ZN5vcpkg3msg10expected_t4nameE, align 8, !tbaa !65, !noalias !409
  store ptr %i.ae, ptr %6, align 8, !noalias !409
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.af, align 8, !noalias !409
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !409
  %i.ag = load ptr, ptr @_ZN5vcpkg3msg8actual_t4nameE, align 8, !tbaa !65, !noalias !409
  store ptr %i.ag, ptr %7, align 8, !noalias !409
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %11, ptr %i.ah, align 8, !noalias !409
  invoke void @_ZN5vcpkg3msg6detail11format_implIJN3fmt3v126detail9named_argIcNS_10StringViewEEENS6_IcNS_11PackageSpecEEESA_EEENS_15LocalizedStringEmDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %13, i64 noundef %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !60
  %i.aj = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !52 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.aj, ptr %0, align 8, !tbaa !53
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !56
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.ah

bb.j:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit49

bb.k:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.l:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.aj

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i, %bb.p, %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.n:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.aj

bb.o:                                             ; preds = %bb.f
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %.sroa.gep, align 8, !tbaa !148
  %i.ax = load ptr, ptr %10, align 8, !tbaa !144
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = sdiv exact i64 %i.ba, 48
  %i.bc = add nsw i64 %i.bb, -1                   ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 38430716820228232
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 256 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !187
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !188
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 240
  %i.bl = icmp ult i64 %i.bk, %i.bc
  br i1 %i.bl, label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 248 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !189
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bi
  %i.bq = mul nuw nsw i64 %i.bc, 240
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
          to label %.noexc40 unwind label %bb.m   ; 4 uses

.noexc40:                                         ; preds = %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE11_M_allocateEm.exit.i
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !188 ; 3 uses
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !189 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc40, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.br, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.bs, %.noexc40 ] ; 3 uses
  call void @_ZN5vcpkg15BinaryParagraphC2EOS0_(ptr noundef nonnull align 8 dereferenceable(240) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %.0911.i.i.i.i) #22
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %.0911.i.i.i.i) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 240 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 240
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !188
  br label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, %.noexc40
  %i.bw = phi ptr [ %.pr.i, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i ], [ %i.bs, %.noexc40 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bx = load ptr, ptr %i.be, align 8, !tbaa !187
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #23
  br label %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.br, ptr %i.r, align 8, !tbaa !188
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !189
  %i.cc = getelementptr inbounds nuw [240 x i8], ptr %i.br, i64 %i.bc
  store ptr %i.cc, ptr %i.be, align 8, !tbaa !187
  %.pre62 = load ptr, ptr %.sroa.gep, align 8, !tbaa !148
  %.pre63 = load ptr, ptr %10, align 8, !tbaa !144
  %.pre76 = ptrtoint ptr %.pre62 to i64
  %.pre77 = ptrtoint ptr %.pre63 to i64
  %.pre79 = sub i64 %.pre76, %.pre77
  br label %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit: ; preds = %bb.q, %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi82 = phi i64 [ %i.ba, %bb.q ], [ %.pre79, %_ZNSt12_Vector_baseIN5vcpkg15BinaryParagraphESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cd = icmp ugt i64 %.pre-phi82, 48
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 248 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 200
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 208 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 224 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 216 ; 3 uses
  br label %bb.w

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE7reserveEm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !60
  %i.db = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.f
  br i1 %i.dc, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

bb.s:                                             ; preds = %._crit_edge
  %i.dd = load i64, ptr %i.g, align 8, !tbaa !52  ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.df, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %._crit_edge
  store ptr %i.db, ptr %0, align 8, !tbaa !53
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !56
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !56
  %.pre68 = load i64, ptr %i.g, align 8, !tbaa !52
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i

_ZN5vcpkg11PackageSpecC2EOS0_.exit.i:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %bb.s
  %i.dh = phi i64 [ %.pre68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ %i.dd, %bb.s ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !52
  store ptr %i.f, ptr %11, align 8, !tbaa !53
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !190
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !60
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 5 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

bb.t:                                             ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !52 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 16
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add nuw nsw i64 %i.dr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 8 dereferenceable(1) %i.do, i64 %i.dt, i1 false)
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit.i
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !53
  %i.du = load i64, ptr %i.do, align 8, !tbaa !56
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !56
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.pre70 = load i64, ptr %.phi.trans.insert69, align 8, !tbaa !52
  br label %_ZN5vcpkg7VersionC2EOS0_.exit.i

_ZN5vcpkg7VersionC2EOS0_.exit.i:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, %bb.t
  %i.dv = phi i64 [ %.pre70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ %i.dr, %bb.t ]
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !52
  store ptr %i.do, ptr %i.i, align 8, !tbaa !53
  store i64 0, ptr %i.dw, align 8, !tbaa !52
  store i8 0, ptr %i.do, align 8, !tbaa !56
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !191
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !191
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ec = load <2 x ptr>, ptr %i.j, align 8, !tbaa !92
  store <2 x ptr> %i.ec, ptr %i.eb, align 8, !tbaa !92
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !91
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  %i.ei = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !92
  store <2 x ptr> %i.ei, ptr %i.eg, align 8, !tbaa !92
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !91
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !60
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.l
  br i1 %i.ep, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.u:                                             ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i
  %i.eq = load i64, ptr %i.m, align 8, !tbaa !52  ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %i.es = add nuw nsw i64 %i.eq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.en, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.es, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionC2EOS0_.exit.i
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !53
  %i.et = load i64, ptr %i.l, align 8, !tbaa !56
  store i64 %i.et, ptr %i.en, align 8, !tbaa !56
  %.pre71 = load i64, ptr %i.m, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %i.eu = phi i64 [ %.pre71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.eq, %bb.u ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !52
  store ptr %i.l, ptr %i.k, align 8, !tbaa !53
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ex = load <2 x ptr>, ptr %i.n, align 8, !tbaa !92
  store <2 x ptr> %i.ex, ptr %i.ew, align 8, !tbaa !92
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 176
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !91
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 184 ; 2 uses
  %i.fd = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !193
  store <2 x ptr> %i.fd, ptr %i.fb, align 8, !tbaa !193
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !195
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !60
  %i.fj = load ptr, ptr %i.o, align 8, !tbaa !53  ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.p
  br i1 %i.fk, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fl = load i64, ptr %i.q, align 8, !tbaa !52  ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nuw nsw i64 %i.fl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fi, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.fn, i1 false)
  br label %_ZSt8_DestroyIPN5vcpkg15BinaryParagraphES1_EvT_S3_RSaIT0_E.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !53
  %i.fo = load i64, ptr %i.p, align 8, !tbaa !56
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !56
  %.pre72 = load i64, ptr %i.q, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPN5vcpkg15BinaryParagraphES1_EvT_S3_RSaIT0_E.exit.i.i.thread

_ZSt8_DestroyIPN5vcpkg15BinaryParagraphES1_EvT_S3_RSaIT0_E.exit.i.i.thread: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i
  %i.fp = phi i64 [ %i.fl, %bb.v ], [ %.pre72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !52
  store ptr %i.p, ptr %i.o, align 8, !tbaa !53
  store i64 0, ptr %i.q, align 8, !tbaa !52
  store i8 0, ptr %i.p, align 8, !tbaa !56
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fs = load <2 x ptr>, ptr %i.r, align 8, !tbaa !410
  store <2 x ptr> %i.fs, ptr %i.fr, align 8, !tbaa !410
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fu = load ptr, ptr %i.be, align 8, !tbaa !187
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 0, ptr %i.fv, align 8, !tbaa !412
  br label %_ZN5vcpkg17BinaryControlFileD2Ev.exit

bb.w:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5vcpkg15BinaryParagraphESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
end_hunk_1
