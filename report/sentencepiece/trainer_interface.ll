Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/trainer_interface?download=true
inline.NumInlined: 5380
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISB_EERKN4absl12lts_2026052613flat_hash_mapIS9_SA_NSF_18container_internal17FlatHashMapPolicyIS9_SA_E11DefaultHashENSJ_9DefaultEqENSJ_12DefaultAllocEEE:bb.a
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #34
  br label %.body

.body:                                            ; preds = %bb.g, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece16TrainerInterface9SerializeEPNS_10ModelProtoE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(672) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_202605266StatusD2Ev.exit:
  %3 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %5 = alloca [2 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %8 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %9 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %11 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %14 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %15 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashSetPolicy<std::__cxx11::basic_string<char>>>::EmplaceDecomposable", align 8 ; 4 uses
  %16 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %18 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %19 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %21 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %22 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %24 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %25 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashSetPolicy<std::__cxx11::basic_string<char>>>::EmplaceDecomposable", align 8 ; 4 uses
  %26 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %27 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %28 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %29 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %31 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %32 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %34 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %35 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %36 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %37 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %38 = alloca %"class.std::unique_ptr.5", align 8 ; 6 uses
  %39 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %40 = alloca %"class.absl::lts_20260526::Status", align 8 ; 4 uses
  %41 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %42 = alloca %"class.absl::lts_20260526::flat_hash_set", align 8 ; 10 uses
  %43 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %44 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %45 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %46 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %47 = alloca %"struct.std::pair.147", align 8   ; 5 uses
  %48 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %49 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %50 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %51 = alloca %"struct.std::pair.147", align 8   ; 5 uses
  %52 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %53 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %54 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 8 uses
  %55 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %56 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %59 = alloca %"class.sentencepiece::SentencePieceProcessor", align 8 ; 12 uses
  %60 = alloca %"class.absl::lts_20260526::status_macro_internal::ReturnIfErrorAdaptor", align 8 ; 8 uses
  %61 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %62 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %63 = alloca %"class.std::vector", align 8      ; 13 uses
  %64 = alloca %"class.absl::lts_20260526::Status", align 8 ; 5 uses
  %65 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 7 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #34
  %i.d = load ptr, ptr %1, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %40, ptr noundef nonnull align 8 dereferenceable(672) %1)
  %i.g = load i64, ptr %40, align 8, !tbaa !59, !noalias !585 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #34
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.i, label %bb.a

bb.a:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  store i64 630, ptr %41, align 8, !tbaa !54, !alias.scope !586
  %.sroa.2.0..sroa_idx.i.i244 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr @.str, ptr %.sroa.2.0..sroa_idx.i.i244, align 8, !tbaa !55, !alias.scope !586
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !586
  store i64 %i.g, ptr %39, align 8, !tbaa !59, !noalias !586
  %i.i = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.b unwind label %bb.e, !noalias !586 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %39, align 8, !tbaa !59, !noalias !586 ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %i.j to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.f unwind label %bb.d, !noalias !586

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #35, !noalias !586
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #34, !noalias !586
  br label %.body

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  %i.q = ptrtoint ptr %i.i to i64
  store i64 %i.q, ptr %38, align 8, !tbaa !57, !noalias !587
  store ptr null, ptr %i.p, align 8, !tbaa !57, !noalias !587
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 630, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.g unwind label %.body248

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %38, align 8, !tbaa !57, !noalias !587 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.r, null
  br i1 %.not.i3.i, label %bb.h, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i: ; preds = %bb.g
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.r) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 448) #33
  br label %bb.h

.body248:                                         ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #34
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #34
  br label %.body

bb.h:                                             ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #34
  br label %bb.kv

.body:                                            ; preds = %bb.e, %.body248
  %.pn = phi { ptr, i32 } [ %i.s, %.body248 ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #34
  br label %bb.kw

bb.i:                                             ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #34
  store i64 0, ptr %42, align 8
  invoke void @_ZN13sentencepiece10ModelProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !96
  %.not1921374 = icmp sgt i32 %i.u, 0
  br i1 %.not1921374, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %51, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %.critedge
  %.01581377 = phi i64 [ 0, %.lr.ph ], [ %.2160, %.critedge ] ; 5 uses
  %storemerge1375 = phi i32 [ 0, %.lr.ph ], [ %i.ug, %.critedge ] ; 3 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !78  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %bb.j ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.w, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54
  %i.ai = icmp slt i32 %i.ah, %storemerge1375     ; 2 uses
  %.19.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !248 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIiSt4pairIKiS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEEESt10_Select1stISB_ESt4lessIiESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !539

_ZNKSt8_Rb_treeIiSt4pairIKiS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEEESt10_Select1stISB_ESt4lessIiESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i, %i.w
  br i1 %i.aj, label %_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit.thread, label %_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit

_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit: ; preds = %_ZNKSt8_Rb_treeIiSt4pairIKiS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEEESt10_Select1stISB_ESt4lessIiESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !54
  %i.am = icmp slt i32 %storemerge1375, %i.al
  br i1 %i.am, label %_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt3mapIiSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13sentencepiece29ModelProto_SentencePiece_TypeEESt4lessIiESaIS0_IKiS9_EEE4findERSC_.exit
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !116 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %..thread_crit_edge.i.i.i.i, label %bb.l

..thread_crit_edge.i.i.i.i:                       ; preds = %bb.k
  %.pre.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !588
  br label %.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.z, align 8, !tbaa !117 ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !590 ; 4 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = add nsw i32 %i.ao, 1
  store i32 %i.as, ptr %i.z, align 8, !tbaa !117
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !118
  br label %_ZN13sentencepiece10ModelProto10add_piecesEv.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.aa, align 4, !tbaa !588
  %i.ax = icmp eq i32 %i.ap, %i.aw
  br i1 %i.ax, label %.thread.i.i.i.i, label %bb.o

.thread.i.i.i.i:                                  ; preds = %bb.n, %..thread_crit_edge.i.i.i.i
  %i.ay = phi i32 [ %.pre.i.i.i.i, %..thread_crit_edge.i.i.i.i ], [ %i.ap, %bb.n ]
  %i.az = add nsw i32 %i.ay, 1
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef %i.az)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.thread.i.i.i.i
  %.pre9.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !116 ; 2 uses
  %.pre10.i.i.i.i = load i32, ptr %.pre9.i.i.i.i, align 8, !tbaa !590
  br label %bb.o

bb.o:                                             ; preds = %.noexc, %bb.n
  %i.ba = phi i32 [ %.pre10.i.i.i.i, %.noexc ], [ %i.ap, %bb.n ]
  %i.bb = phi ptr [ %.pre9.i.i.i.i, %.noexc ], [ %i.an, %bb.n ]
  %i.bc = add nsw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !590
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !591
  %i.be = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece24ModelProto_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef %i.bd)
          to label %.noexc253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc253:                                        ; preds = %bb.o
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !117 ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.z, align 8, !tbaa !117
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bj
  store ptr %i.be, ptr %i.bk, align 8, !tbaa !118
  br label %_ZN13sentencepiece10ModelProto10add_piecesEv.exit

_ZN13sentencepiece10ModelProto10add_piecesEv.exit: ; preds = %.noexc253, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.av, %bb.m ], [ %i.be, %.noexc253 ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !54
  %i.bo = or i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !68 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = and i64 %i.br, 1
  %.not.i.i.i254 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i254, label %_ZN13sentencepiece24ModelProto_SentencePiece19_internal_set_pieceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.p, !prof !69

bb.p:                                             ; preds = %_ZN13sentencepiece10ModelProto10add_piecesEv.exit
  %i.bt = and i64 %i.br, -2
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !72
  br label %_ZN13sentencepiece24ModelProto_SentencePiece19_internal_set_pieceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN13sentencepiece24ModelProto_SentencePiece19_internal_set_pieceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.p, %_ZN13sentencepiece10ModelProto10add_piecesEv.exit
  %.0.i.i.i.i255 = phi ptr [ %i.bv, %bb.p ], [ %i.bq, %_ZN13sentencepiece10ModelProto10add_piecesEv.exit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 48 ; 4 uses
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef %.0.i.i.i.i255)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZN13sentencepiece24ModelProto_SentencePiece19_internal_set_pieceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !592 ; 2 uses
  %i.bz = load i32, ptr %i.bm, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 60
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !593
  %i.cb = or i32 %i.bz, 6
  store i32 %i.cb, ptr %i.bm, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 56
  store float 0.000000e+00, ptr %i.cc, align 8, !tbaa !253
  %i.cd = load i32, ptr %i.z, align 8, !tbaa !117
  %i.ce = add nsw i32 %i.cd, -1
  %i.cf = load i32, ptr %i.ak, align 8, !tbaa !254
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #34
  store i64 650, ptr %43, align 8, !tbaa !54
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #34
  %i.ch = invoke noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 0, ptr nonnull @.str.99, i64 765, ptr nonnull @.str.100)
          to label %.noexc257 unwind label %bb.af ; 2 uses

.noexc257:                                        ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit.thread, label %bb.s

_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit.thread: ; preds = %.noexc257
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.cj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #34
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit

bb.s:                                             ; preds = %.noexc257
  store i64 %i.ch, ptr %36, align 8, !tbaa !59
  store i64 55, ptr %37, align 8, !tbaa !59
  %i.ck = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.t unwind label %.body.i    ; 10 uses

bb.t:                                             ; preds = %bb.s
  %i.cl = load i64, ptr %36, align 8, !tbaa !59   ; 2 uses
  %i.cm = trunc i64 %i.cl to i1
  br i1 %i.cm, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = inttoptr i64 %i.cl to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cn)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #35
  unreachable

.body.i:                                          ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #34
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #34
  br label %.body258

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.cr = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.cr, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 424 ; 6 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.noexc261, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc261 unwind label %bb.ag

.noexc261:                                        ; preds = %bb.x, %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 416 ; 6 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 1 dereferenceable(25) @.str, i64 noundef 24)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit: ; preds = %.noexc261
  %i.cy = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.noexc265, label %bb.y

bb.y:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc265 unwind label %bb.ag

.noexc265:                                        ; preds = %bb.y, %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull align 1 dereferenceable(2) @.str.1, i64 noundef 1)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit: ; preds = %.noexc265
  %i.dc = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.noexc269, label %bb.z

bb.z:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc269 unwind label %bb.ag

.noexc269:                                        ; preds = %bb.z, %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef 650)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit: ; preds = %.noexc269
  %i.dg = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.noexc273, label %bb.aa

bb.aa:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc273 unwind label %bb.ag

.noexc273:                                        ; preds = %bb.aa, %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit
  %i.di = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 1 dereferenceable(4) @.str.2, i64 noundef 3)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit: ; preds = %.noexc273
  %i.dk = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %.noexc277, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc277 unwind label %bb.ag

.noexc277:                                        ; preds = %bb.ab, %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  %i.dm = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull align 1 dereferenceable(48) @.str.70, i64 noundef 47)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA48_cEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA48_cEEOS1_RKT_.exit: ; preds = %.noexc277
  %i.do = load i8, ptr %i.cs, align 8, !tbaa !61, !range !52, !noundef !53
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %.noexc281, label %bb.ac

bb.ac:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA48_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ck)
          to label %.noexc281 unwind label %bb.ag

.noexc281:                                        ; preds = %bb.ac, %_ZNO4absl12lts_2026052613StatusBuilderlsIA48_cEEOS1_RKT_.exit
  %i.dq = load ptr, ptr %i.cv, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 noundef 2)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit unwind label %bb.ag ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit: ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit.thread, %.noexc281
  %i.ds = phi ptr [ %i.cj, %_ZNO4absl12lts_2026052613StatusBuilderlsIA25_cEEOS1_RKT_.exit.thread ], [ %i.cr, %.noexc281 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !594
  %i.du = ptrtoint ptr %i.dt to i64
  store i64 %i.du, ptr %35, align 8, !tbaa !57, !noalias !594
  store ptr null, ptr %i.ds, align 8, !tbaa !57, !noalias !594
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 650, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.dv = load ptr, ptr %35, align 8, !tbaa !57, !noalias !594 ; 3 uses
  %.not.i3.i287 = icmp eq ptr %i.dv, null
  br i1 %.not.i3.i287, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit299, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i288

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i288: ; preds = %bb.ad
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.dv) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef 448) #33
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit299

bb.ae:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #34
  br label %.body291

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit299: ; preds = %bb.ad, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #34
  br label %bb.ks

bb.af:                                            ; preds = %bb.r
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.ag:                                            ; preds = %bb.x, %.noexc261, %bb.y, %.noexc265, %.noexc281, %bb.ac, %.noexc277, %bb.ab, %.noexc273, %bb.aa, %.noexc269, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body291

.body291:                                         ; preds = %bb.ag, %bb.ae
  %.pn174 = phi { ptr, i32 } [ %i.dw, %bb.ae ], [ %i.dy, %bb.ag ]
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #34
  br label %.body258

.body258:                                         ; preds = %bb.af, %.body.i, %.body291
  %.pn174.pn = phi { ptr, i32 } [ %.pn174, %.body291 ], [ %i.dx, %bb.af ], [ %i.cq, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #34
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.q
  %.not = icmp eq i32 %i.by, 1
  br i1 %.not, label %bb.ai, label %bb.ay
end_hunk_0
