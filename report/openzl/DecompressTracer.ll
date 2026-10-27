Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/DecompressTracer?download=true
inline.NumInlined: 976
inline.NumDeleted: 629
begin_hunk_0_@_ZN6openzl10visualizer20DecompressChunkTraceD2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEED2Ev.exit: ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer20DecompressChunkTraceEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6openzl10visualizer20DecompressChunkTraceESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable
}

declare ptr @ALLOC_HeapArena_create() local_unnamed_addr #2

declare { ptr, ptr } @A1C_Arena_wrap(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i32, i64 } @_ZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 15 uses
  %5 = alloca %struct.A1C_MapBuilder, align 8     ; 10 uses
  %6 = alloca %struct.A1C_ArrayBuilder, align 8   ; 5 uses
  %7 = alloca %struct.A1C_Error, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  store ptr %i.c, ptr %4, align 8, !tbaa !137
  %i.d = tail call ptr @A1C_Item_root(ptr noundef %1) ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b, !prof !99

.thread:                                          ; preds = %bb.a
  %i.e = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 142, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.e, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.f, ptr %i.g, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %i.h = ptrtoint ptr %i.g to i64
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @A1C_Item_map_builder(ptr dead_on_unwind nonnull writable sret(%struct.A1C_MapBuilder) align 8 %5, ptr noundef nonnull %i.d, i64 noundef 5, ptr noundef %1)
  %i.i = load ptr, ptr %5, align 8, !tbaa !140
  %.not186 = icmp eq ptr %i.i, null
  br i1 %.not186, label %.thread222, label %bb.c, !prof !99

.thread222:                                       ; preds = %bb.b
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_0, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 147, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.o = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.15, i64 noundef 205, ptr noundef %i.n) ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0        ; 2 uses
  %.not187 = icmp eq i32 %i.p, 0
  br i1 %.not187, label %bb.e, label %bb.d, !prof !100

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { i32, i64 } %i.o, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.p, ptr %i.r, ptr nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 150, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0
  %i.u = extractvalue { i32, ptr } %i.s, 1
  %i.v = ptrtoint ptr %i.u to i64
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr %0, align 8, !tbaa !66
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.z = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.18, i64 noundef %i.x, ptr noundef %i.y) ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0       ; 2 uses
  %.not188 = icmp eq i32 %i.aa, 0
  br i1 %.not188, label %bb.g, label %bb.f, !prof !100

bb.f:                                             ; preds = %bb.e
  %i.ab = extractvalue { i32, i64 } %i.z, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.aa, ptr %i.ac, ptr nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 152, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0
  %i.af = extractvalue { i32, ptr } %i.ad, 1
  %i.ag = ptrtoint ptr %i.af to i64
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ai = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.19, i64 noundef 1, ptr noundef %i.ah) ; 2 uses
  %i.aj = extractvalue { i32, i64 } %i.ai, 0      ; 2 uses
  %.not189 = icmp eq i32 %i.aj, 0
  br i1 %.not189, label %bb.i, label %bb.h, !prof !100

bb.h:                                             ; preds = %bb.g
  %i.ak = extractvalue { i32, i64 } %i.ai, 1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.aj, ptr %i.al, ptr nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 154, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.am, 0
  %i.ao = extractvalue { i32, ptr } %i.am, 1
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %bb.x

bb.i:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ar = call { i32, i64 } @_ZN6openzl10visualizer11addIntValueER14A1C_MapBuilderPKcmP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.20, i64 noundef 1, ptr noundef %i.aq) ; 2 uses
  %i.as = extractvalue { i32, i64 } %i.ar, 0      ; 2 uses
  %.not190 = icmp eq i32 %i.as, 0
  br i1 %.not190, label %bb.k, label %bb.j, !prof !100

bb.j:                                             ; preds = %bb.i
  %i.at = extractvalue { i32, i64 } %i.ar, 1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.as, ptr %i.au, ptr nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 155, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) ; 2 uses
  %i.aw = extractvalue { i32, ptr } %i.av, 0
  %i.ax = extractvalue { i32, ptr } %i.av, 1
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.az = call ptr @A1C_MapBuilder_add(ptr noundef nonnull byval(%struct.A1C_MapBuilder) align 8 %5) ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %11

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZL21A1C_MapBuilder_tryAdd14A1C_MapBuilderE22__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 99, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) ; 3 uses
  %8 = extractvalue { i32, ptr } %i.bc, 0
  %9 = extractvalue { i32, ptr } %i.bc, 1         ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %8, ptr %9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  br label %_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit

bb.n:                                             ; preds = %bb.l
  %10 = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZL21A1C_MapBuilder_tryAdd14A1C_MapBuilderE22__zl_static_error_info_0, ptr noundef nonnull %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 101, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) ; 3 uses
  %i.bd = extractvalue { i32, ptr } %10, 0
  %i.be = extractvalue { i32, ptr } %10, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bd, ptr %i.be, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  br label %_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit

11:                                               ; preds = %bb.k
  %.fca.1.insert.i.i = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.az, 1
  br label %_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit

_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit:  ; preds = %bb.m, %bb.n, %11
  %.pre-phi = phi ptr [ %9, %bb.m ], [ %i.be, %bb.n ], [ %i.az, %11 ] ; 3 uses
  %.pn.i = phi { i32, ptr } [ %i.bc, %bb.m ], [ %10, %bb.n ], [ %.fca.1.insert.i.i, %11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bf = extractvalue { i32, ptr } %.pn.i, 0     ; 2 uses
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit
  %i.bg = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.bf, ptr %.pre-phi, ptr null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 158, ptr noundef nonnull @.str.21) ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bg, 0
  %i.bi = extractvalue { i32, ptr } %i.bg, 1
  %i.bj = ptrtoint ptr %i.bi to i64
  br label %bb.x

bb.p:                                             ; preds = %_ZL21A1C_MapBuilder_tryAdd14A1C_MapBuilder.exit
  call void @A1C_Item_string_refCStr(ptr noundef %.pre-phi, ptr noundef nonnull @.str.22)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 152
  call void @A1C_Item_array_builder(ptr dead_on_unwind nonnull writable sret(%struct.A1C_ArrayBuilder) align 8 %6, ptr noundef nonnull %i.bk, i64 noundef %i.bs, ptr noundef %1)
  %i.bt = load ptr, ptr %6, align 8, !tbaa !143
  %.not192 = icmp eq ptr %i.bt, null
  br i1 %.not192, label %.thread225, label %bb.q, !prof !99

.thread225:                                       ; preds = %bb.p
  %i.bu = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_5, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 162, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.bv = extractvalue { i32, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { i32, ptr } %i.bu, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bv, ptr %i.bw, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %i.bx = ptrtoint ptr %i.bw to i64
  br label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !31 ; 2 uses
  %.not239241 = icmp eq ptr %i.by, %i.bz
  br i1 %.not239241, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0215.0242, i64 152 ; 2 uses
  %.not239 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.sroa.0215.0242 = phi ptr [ %i.ca, %bb.r ], [ %i.by, %bb.q ] ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.cc = call { i32, i64 } @_ZN6openzl10visualizer20DecompressChunkTrace15serializeToCBOREP9A1C_ArenaP16A1C_ArrayBuilderP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.0215.0242, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %i.cb) ; 2 uses
  %i.cd = extractvalue { i32, i64 } %i.cc, 0      ; 2 uses
  %.not193 = icmp eq i32 %i.cd, 0
  br i1 %.not193, label %bb.r, label %.thread233, !prof !100

.thread233:                                       ; preds = %.lr.ph
  %i.ce = extractvalue { i32, i64 } %i.cc, 1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cd, ptr %i.cf, ptr nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 165, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12) ; 2 uses
  %i.ch = extractvalue { i32, ptr } %i.cg, 0
  %i.ci = extractvalue { i32, ptr } %i.cg, 1
  %i.cj = ptrtoint ptr %i.ci to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.r, %bb.q
  %i.ck = call i64 @A1C_Item_encodedSize(ptr noundef nonnull %i.d) ; 4 uses
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cl = load ptr, ptr %2, align 8, !tbaa !97
  %i.cm = call i64 @A1C_Item_encode(ptr noundef nonnull %i.d, ptr noundef %i.cl, i64 noundef %i.ck, ptr noundef nonnull %7) ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.co = call { i32, ptr } @A1C_Error_convert(ptr noundef null, ptr noundef nonnull byval(%struct.A1C_Error) align 8 %7) ; 2 uses
  %i.cp = extractvalue { i32, ptr } %i.co, 0
  %i.cq = extractvalue { i32, ptr } %i.co, 1
  %i.cr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cp, ptr %i.cq, ptr null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 175, ptr noundef nonnull @.str.21) ; 2 uses
  %i.cs = extractvalue { i32, ptr } %i.cr, 0
  %i.ct = extractvalue { i32, ptr } %i.cr, 1
  %i.cu = ptrtoint ptr %i.ct to i64
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %.not194 = icmp eq i64 %i.cm, %i.ck
  br i1 %.not194, label %bb.v, label %bb.u, !prof !100

bb.u:                                             ; preds = %bb.t
  %i.cv = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_7, ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 177, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %i.cm, i64 noundef %i.ck) ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { i32, ptr } %i.cv, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cw, ptr %i.cx, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
  %i.cy = ptrtoint ptr %i.cx to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.sroa.0157.7 = phi i32 [ %i.cs, %bb.s ], [ %i.cw, %bb.u ], [ 0, %bb.t ]
  %.sroa.38.7 = phi i64 [ %i.cu, %bb.s ], [ %i.cy, %bb.u ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.w

bb.w:                                             ; preds = %.thread233, %.thread225, %bb.v
  %.sroa.0157.8 = phi i32 [ %.sroa.0157.7, %bb.v ], [ %i.ch, %.thread233 ], [ %i.bv, %.thread225 ]
  %.sroa.38.8 = phi i64 [ %.sroa.38.7, %bb.v ], [ %i.cj, %.thread233 ], [ %i.bx, %.thread225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.w, %.thread222, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.0157.10 = phi i32 [ %i.t, %bb.d ], [ %i.ae, %bb.f ], [ %i.an, %bb.h ], [ %i.aw, %bb.j ], [ %i.k, %.thread222 ], [ %i.bh, %bb.o ], [ %.sroa.0157.8, %bb.w ]
  %.sroa.38.10 = phi i64 [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.ap, %bb.h ], [ %i.ay, %bb.j ], [ %i.m, %.thread222 ], [ %i.bj, %bb.o ], [ %.sroa.38.8, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %.sroa.0157.11 = phi i32 [ %.sroa.0157.10, %bb.x ], [ %i.f, %.thread ]
  %.sroa.38.11 = phi i64 [ %.sroa.38.10, %bb.x ], [ %i.h, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0157.11, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.38.11, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ALLOC_Arena_freeArena(ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare { i32, i64 } @_ZN6openzl10visualizer14ChunkTraceCore25writeSerializedStreamdumpERSt6vectorIhSaIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer16DecompressTracer24on_decompressChunk_startEP9ZL_DCtx_sm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !51
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.b, align 8, !tbaa !68, !range !69, !noundef !70
  store i64 %2, ptr %i.d, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr null, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.j, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 0, ptr %i.n, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr null, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.o, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.o, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRmRbEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRmRbEEERS2_DpOT_.exit

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRmRbEEERS2_DpOT_.exit: ; preds = %bb.c, %bb.d
end_hunk_0
