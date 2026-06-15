inline.NumInlined: 10729
inline.NumDeleted: 3679
begin_hunk_0_@_ZN6duckdb18TupleDataAllocator5BuildERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmm:bb.a
  %i.it = phi ptr [ %.pre138, %.lr.ph133 ], [ %i.kg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 5 uses
  %i.iu = phi ptr [ %i.ij, %.lr.ph133 ], [ %i.kh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 3 uses
  %.sroa.0103.0132 = phi ptr [ %i.ik, %.lr.ph133 ], [ %i.ki, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !597
  %i.ix = load ptr, ptr %i.il, align 8, !tbaa !532
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iw
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !533 ; 2 uses
  %.not.i88 = icmp eq ptr %i.iu, %i.it
  br i1 %.not.i88, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.iz, ptr %i.iu, align 8, !tbaa !608
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  store ptr %i.ja, ptr %i.ih, align 8, !tbaa !605
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.jb = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.jc = ptrtoint ptr %i.is to i64               ; 3 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.ac, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i89, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.umin.i64(i64 %i.jg, i64 1152921504606846975)
  %i.jj = select i1 %i.jh, i64 1152921504606846975, i64 %i.ji ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.jj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i90)
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #29 ; 9 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jd
  store ptr %i.iz, ptr %i.jm, align 8, !tbaa !608
  %.not10.i.i.i.i.i.i91 = icmp eq ptr %i.is, %i.it
  br i1 %.not10.i.i.i.i.i.i91, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92.preheader

.lr.ph.i.i.i.i.i.i92.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jn = ptrtoaddr ptr %i.jl to i64
  %i.jo = add i64 %i.jb, -8
  %i.jp = sub i64 %i.jo, %i.jc                    ; 2 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.jp, 24
  %i.js = sub i64 %i.jn, %i.jc
  %diff.check = icmp ult i64 %i.js, 32
  %or.cond = or i1 %min.iters.check185, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i92.preheader200, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i.i.i.i.i.i92.preheader
  %n.vec188 = and i64 %i.jr, 4611686018427387900  ; 3 uses
  %i.jt = shl i64 %n.vec188, 3                    ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jl, i64 %i.jt  ; 2 uses
  %i.jv = getelementptr i8, ptr %i.is, i64 %i.jt
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph186
  %index190 = phi i64 [ 0, %vector.ph186 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %i.jw = shl i64 %index190, 3                    ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.jl, i64 %i.jw ; 2 uses
  %next.gep192 = getelementptr i8, ptr %i.is, i64 %i.jw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.jx = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load193 = load <2 x i64>, ptr %next.gep192, align 8, !alias.scope !613, !noalias !610
  %wide.load194 = load <2 x i64>, ptr %i.jx, align 8, !alias.scope !613, !noalias !610
  %i.jy = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x i64> %wide.load193, ptr %next.gep191, align 8, !alias.scope !610, !noalias !613
  store <2 x i64> %wide.load194, ptr %i.jy, align 8, !alias.scope !610, !noalias !613
  %index.next195 = add nuw i64 %index190, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next195, %n.vec188
  br i1 %i.jz, label %middle.block196, label %vector.body189, !llvm.loop !615

middle.block196:                                  ; preds = %vector.body189
  %cmp.n197 = icmp eq i64 %i.jr, %n.vec188
  br i1 %cmp.n197, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92.preheader200

.lr.ph.i.i.i.i.i.i92.preheader200:                ; preds = %.lr.ph.i.i.i.i.i.i92.preheader, %middle.block196
  %.012.i.i.i.i.i.i93.ph = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i92.preheader ], [ %i.ju, %middle.block196 ]
  %.0911.i.i.i.i.i.i94.ph = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i92.preheader ], [ %i.jv, %middle.block196 ]
  br label %.lr.ph.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i92:                             ; preds = %.lr.ph.i.i.i.i.i.i92.preheader200, %.lr.ph.i.i.i.i.i.i92
  %.012.i.i.i.i.i.i93 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i.i92 ], [ %.012.i.i.i.i.i.i93.ph, %.lr.ph.i.i.i.i.i.i92.preheader200 ] ; 2 uses
  %.0911.i.i.i.i.i.i94 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i92 ], [ %.0911.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i92.preheader200 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.ka = load i64, ptr %.0911.i.i.i.i.i.i94, align 8, !alias.scope !613, !noalias !610
  store i64 %i.ka, ptr %.012.i.i.i.i.i.i93, align 8, !alias.scope !610, !noalias !613
  %i.kb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i94, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i93, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i95 = icmp eq ptr %i.kb, %i.it
  br i1 %.not.i.i.i.i.i.i95, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i92, !llvm.loop !616

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i92, %middle.block196, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i96 = phi ptr [ %i.jl, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ju, %middle.block196 ], [ %i.kc, %.lr.ph.i.i.i.i.i.i92 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i96, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.is) #30
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.jl, ptr %i.if, align 8, !tbaa !604
  store ptr %i.kd, ptr %i.ih, align 8, !tbaa !605
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj ; 2 uses
  store ptr %i.ke, ptr %i.im, align 8, !tbaa !607
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE12emplace_backIJRS2_EEEvDpOT_.exit: ; preds = %bb.aa, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.kf = phi ptr [ %i.is, %bb.aa ], [ %i.jl, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.kg = phi ptr [ %i.it, %bb.aa ], [ %i.ke, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.kh = phi ptr [ %i.ja, %bb.aa ], [ %i.kd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18TupleDataChunkPartEESaIS3_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132, i64 16 ; 2 uses
  %.not119 = icmp eq ptr %i.ki, %i.ie
  br i1 %.not119, label %._crit_edge134, label %bb.z

bb.ae:                                            ; preds = %._crit_edge134, %_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentERNS_14TupleDataChunkEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !549
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 noundef zeroext %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !527, !nonnull !60, !align !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load i8, ptr %i.h, align 8, !tbaa !145, !range !175, !noundef !60
  %i.j = trunc nuw i8 %i.i to i1
  %.not = xor i1 %i.j, true
  %or.cond = and i1 %4, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i8, ptr %i.d, align 8, !tbaa !549
  tail call void @_ZN6duckdb18TupleDataAllocator29ReleaseOrStoreHandlesInternalERNS_16TupleDataSegmentERNS_6vectorINS_12BufferHandleELb0ENS_19arena_stl_allocatorIS4_EEEERNS_19buffer_handle_map_tERKNS_15ContinuousIdSetERNS3_INS_14TupleDataBlockELb0ENS5_ISE_EEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 noundef zeroext %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb14TupleDataChunk7AddPartERNS_16TupleDataSegmentENS_10unique_ptrINS_18TupleDataChunkPartENS_13arena_deleterIS4_EELb0EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !533    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !545
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !415
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !415
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !617  ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !3    ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.h, align 8, !tbaa !617
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @llvm.umin.i32(i32 %i.i, i32 %i.k)
  store i32 %i.m, ptr %i.h, align 8, !tbaa !617
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !531
  %i.p = load i32, ptr %i.a, align 8, !tbaa !3
  %i.q = tail call noundef i32 @llvm.umax.i32(i32 %i.o, i32 %i.p)
  store i32 %i.q, ptr %i.n, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit:      ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !618, !nonnull !60, !align !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load i8, ptr %i.t, align 8, !tbaa !145, !range !175, !noundef !60
  %i.v = trunc nuw i8 %i.u to i1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %4 = load i64, ptr %3, align 8
  %.not = icmp eq i64 %4, 0
  %or.cond = select i1 %i.v, i1 true, i1 %.not
  br i1 %or.cond, label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !617  ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !3   ; 3 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aa, ptr %i.w, align 8, !tbaa !617
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef i32 @llvm.umin.i32(i32 %i.y, i32 %i.aa)
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !617
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !531
  %i.af = load i32, ptr %i.x, align 8, !tbaa !3
  %i.ag = tail call noundef i32 @llvm.umax.i32(i32 %i.ae, i32 %i.af)
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10:    ; preds = %bb.f, %bb.e, %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aj = load i64, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !619 ; 6 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !532 ; 10 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 3                 ; 4 uses
  %i.as = trunc i64 %i.ar to i32                  ; 4 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !617   ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10
  store i32 %i.as, ptr %0, align 8, !tbaa !617
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.as, ptr %i.av, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11

bb.h:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit10
  %i.aw = tail call noundef i32 @llvm.umin.i32(i32 %i.at, i32 %i.as)
  store i32 %i.aw, ptr %0, align 8, !tbaa !617
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !531
  %i.az = tail call noundef i32 @llvm.umax.i32(i32 %i.ay, i32 %i.as)
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !531
  br label %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11

_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11:    ; preds = %bb.g, %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !620
  %.not.i = icmp eq ptr %i.am, %i.bb
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.bc = load i64, ptr %2, align 8, !tbaa !533
  store i64 %i.bc, ptr %i.am, align 8, !tbaa !533
  store ptr null, ptr %2, align 8, !tbaa !533
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !619
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.j:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.be = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.ar
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #29 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.aq
  %i.bm = load i64, ptr %2, align 8, !tbaa !533
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !533
  store ptr null, ptr %2, align 8, !tbaa !533
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bn = add i64 %i.ao, -8
  %i.bo = sub i64 %i.bn, %i.ap                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.br = add i64 %i.ao, -8
  %i.bs = sub i64 %i.br, %i.ap
  %i.bt = and i64 %i.bs, -8
  %i.bu = add i64 %i.bt, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bu
  %scevgep18 = getelementptr i8, ptr %i.an, i64 %i.bu
  %bound0 = icmp ult ptr %i.bk, %scevgep18
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bk, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.an, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.by ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.an, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bz = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !533, !alias.scope !626, !noalias !621
  %wide.load20 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !533, !alias.scope !626, !noalias !621
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !533, !alias.scope !629, !noalias !626
  store <2 x i64> %wide.load20, ptr %i.ca, align 8, !tbaa !533, !alias.scope !629, !noalias !626
  %i.cb = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !533, !alias.scope !626, !noalias !621
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !533, !alias.scope !626, !noalias !621
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.preheader22:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !533, !alias.scope !624, !noalias !621
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !533, !alias.scope !621, !noalias !624
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !533, !alias.scope !624, !noalias !621
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.am
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !632

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bw, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !532
  store ptr %i.cg, ptr %i.al, align 8, !tbaa !619
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.ch, ptr %i.ba, align 8, !tbaa !620
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator14BuildChunkPartERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmmRNS_14TupleDataChunkE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.325") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.d = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 48), !noalias !634 ; 17 uses
  tail call void @_ZN6duckdb18TupleDataChunkPartC1ERSt5mutex(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !634
  store ptr %i.d, ptr %0, align 8, !tbaa !533, !alias.scope !634
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !471, !nonnull !60, !align !61 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !637  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !637  ; 3 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr i8, ptr %i.l, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !497
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !503
  %i.x = sub i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !527, !nonnull !60, !align !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !289
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83
end_hunk_0
