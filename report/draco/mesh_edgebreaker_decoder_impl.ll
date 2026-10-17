Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_decoder_impl?download=true
inline.NumInlined: 5416
inline.NumDeleted: 1437
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5draco36MeshAttributeIndicesEncodingObserverINS_11CornerTableEE18OnNewVertexVisitedENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEENS3_IjNS_21CornerIndex_tag_type_EEE:bb.a
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #19 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i32, ptr %2, align 4, !tbaa !225
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !225
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bu = add i64 %i.bh, -4
  %i.bv = sub i64 %i.bu, %i.bi                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check20 = icmp ult i64 %i.bv, 28
  br i1 %min.iters.check20, label %.lr.ph.i.i.i.i.i.i.i.preheader34, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec22 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.by = shl i64 %n.vec22, 2                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bg, i64 %i.by
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph21
  %index24 = phi i64 [ 0, %vector.ph21 ], [ %index.next29, %vector.body23 ] ; 2 uses
  %i.cb = shl i64 %index24, 2                     ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.br, i64 %i.cb ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bg, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load27 = load <4 x i32>, ptr %next.gep26, align 4, !tbaa !225
  %wide.load28 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !225
  %i.cd = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load27, ptr %next.gep25, align 4, !tbaa !225
  store <4 x i32> %wide.load28, ptr %i.cd, align 4, !tbaa !225
  %index.next29 = add nuw i64 %index24, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next29, %n.vec22
  br i1 %i.ce, label %middle.block30, label %vector.body23, !llvm.loop !1447

middle.block30:                                   ; preds = %vector.body23
  %cmp.n31 = icmp eq i64 %i.bx, %n.vec22
  br i1 %cmp.n31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader34

.lr.ph.i.i.i.i.i.i.i.preheader34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block30
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block30 ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block30 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader34, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader34 ] ; 2 uses
  %i.cf = load i32, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.cf, ptr %.015.i.i.i.i.i.i.i, align 4, !tbaa !225
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1448

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block30, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bz, %middle.block30 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 4
  %.not.i35.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #18
  %.pre.pre = load ptr, ptr %i.ay, align 8, !tbaa !1451
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %i.az, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i ]
  store ptr %i.br, ptr %i.az, align 8, !tbaa !111
  store ptr %i.ci, ptr %i.ba, align 8, !tbaa !220
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cj, ptr %i.bc, align 8, !tbaa !112
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ck = phi ptr [ %i.az, %bb.f ], [ %.pre, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !379 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = load i32, ptr %1, align 4, !tbaa !242
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !109
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  store i32 %i.cm, ptr %i.cr, align 4, !tbaa !216
  %i.cs = add nsw i32 %i.cm, 1
  store i32 %i.cs, ptr %i.cl, align 8, !tbaa !379
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco28MaxPredictionDegreeTraverserINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5draco28MaxPredictionDegreeTraverserINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #18
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18, !inline_history !349
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #18, !inline_history !349
  br label %_ZN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED2Ev.exit

_ZN5draco13TraverserBaseINS_11CornerTableENS_36MeshAttributeIndicesEncodingObserverIS1_EEED2Ev.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !111    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = load ptr, ptr %0, align 8, !tbaa !111    ; 15 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !380

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19 ; 4 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !225
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #18
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.t, ptr %i.h, align 8, !tbaa !112
  br label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !220  ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.g, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.z = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.aa = and i64 %i.g, 7
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.c, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep44, align 4, !tbaa !225
  %wide.load45 = load <4 x i32>, ptr %i.af, align 4, !tbaa !225
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !225
  store <4 x i32> %wide.load45, ptr %i.ag, align 4, !tbaa !225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader91

.lr.ph.i.i.i.i.i.preheader91:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader91 ] ; 2 uses
  %i.ai = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.ai, ptr %.0811.i.i.i.i.i, align 4, !tbaa !225
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !1453

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 4 uses
  %i.ao = ashr exact i64 %i.x, 2                  ; 6 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check51 = icmp ult i64 %i.ao, 8
  %i.aq = sub i64 %i.e, %i.l
  %diff.check53 = icmp ugt i64 %i.aq, -32
  %or.cond87 = or i1 %min.iters.check51, %diff.check53
  br i1 %or.cond87, label %.lr.ph.i.i.i.i.i26.preheader90, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec55 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.ar = and i64 %i.ao, 7
  %i.as = shl i64 %n.vec55, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %i.as
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body56 ] ; 2 uses
  %i.av = shl i64 %index57, 2                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.j, i64 %i.av ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.c, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <4 x i32>, ptr %next.gep59, align 4, !tbaa !225
  %wide.load61 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !225
  %i.ax = getelementptr i8, ptr %next.gep58, i64 16
  store <4 x i32> %wide.load60, ptr %next.gep58, align 4, !tbaa !225
  store <4 x i32> %wide.load61, ptr %i.ax, align 4, !tbaa !225
  %index.next62 = add nuw i64 %index57, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.ay, label %middle.block63, label %vector.body56, !llvm.loop !1454

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %i.ao, %n.vec55
  br i1 %cmp.n64, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i26.preheader90

.lr.ph.i.i.i.i.i26.preheader90:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block63
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ar, %middle.block63 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.at, %middle.block63 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.au, %middle.block63 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader90, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader90 ] ; 2 uses
  %i.az = load i32, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !225
  store i32 %i.az, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !225
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 4
  %i.bc = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, !llvm.loop !1455

_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block63, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
  %i.be = add i64 %i.d, %i.l
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.w, %i.e
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check71 = icmp ult i64 %i.bh, 44
  %i.bk = sub i64 %i.e, %i.l
  %diff.check73 = icmp ugt i64 %i.bk, -32
  %or.cond88 = or i1 %min.iters.check71, %diff.check73
  br i1 %or.cond88, label %.lr.ph.i.i.i.i.preheader89, label %vector.ph74

vector.ph74:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec75 = and i64 %i.bj, 9223372036854775800   ; 3 uses
  %i.bl = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.v, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.an, i64 %i.bl
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bo = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.v, i64 %i.bo ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.an, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !225
  %wide.load81 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !225
  %i.bq = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 4, !tbaa !225
  store <4 x i32> %wide.load81, ptr %i.bq, align 4, !tbaa !225
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.br, label %middle.block83, label %vector.body76, !llvm.loop !1456

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.bj, %n.vec75
  br i1 %cmp.n84, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader89

.lr.ph.i.i.i.i.preheader89:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block83
  %.015.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block83 ]
  %.01214.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block83 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader89, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader89 ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader89 ] ; 2 uses
  %i.bs = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !225
  store i32 %i.bs, ptr %.015.i.i.i.i, align 4, !tbaa !225
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1457

_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block83, %bb.g, %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.bv = phi ptr [ %i.j, %middle.block83 ], [ %2, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !220
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
end_hunk_0
