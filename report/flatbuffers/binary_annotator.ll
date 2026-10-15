Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_":bb.a

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.07.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.019.i.ptr.4.i, %bb.x ], [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.4.i, ptr %.sroa.07.0.lcssa.i.i.4.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i.4.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.4.i, i64 8
  store i16 %.val.i.i.4.i, ptr %.sroa.4.0..sroa_idx5.i.i.4.i, align 8, !tbaa !97
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.4.i, i64 16, i1 false), !tbaa.struct !126
  %i.bk = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.bl = sub i64 %i.bk, %i.g                     ; 3 uses
  %i.bm = ashr exact i64 %i.bl, 4                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 1
  br i1 %i.bn, label %bb.ab, label %bb.z, !prof !127

bb.z:                                             ; preds = %bb.y
  %i.bo = icmp eq i64 %i.bl, 16
  br i1 %i.bo, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.4.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 96
  %i.bq = sub nsw i64 0, %i.bm
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.bl, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.4.i"
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 96 ; 6 uses
  %i.bs = getelementptr i8, ptr %.sroa.031.034.i, i64 104
  %.val.i.i.5.i = load i16, ptr %i.bs, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i.5.i = load i16, ptr %i.h, align 8, !tbaa !130
  %i.bt = icmp ult i16 %.val.i.i.5.i, %.val1.i.i.5.i
  br i1 %i.bt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.03.0.copyload.i.i.5.i = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !125
  %.val2.i10.i.i.5.i = load i16, ptr %i.bf, align 8, !tbaa !130
  %i.bu = icmp ult i16 %.val.i.i.5.i, %.val2.i10.i.i.5.i
  br i1 %i.bu, label %.lr.ph.i.i.5.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.5.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %.sroa.07.011.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.ad ] ; 3 uses
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i.5.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i.5.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i.5.i, i64 10, i1 false), !tbaa.struct !126
  %i.bv = getelementptr i8, ptr %.sroa.07.011.i.i.5.i, i64 -24
  %.val2.i.i.i.5.i = load i16, ptr %i.bv, align 8, !tbaa !130
  %i.bw = icmp ult i16 %.val.i.i.5.i, %.val2.i.i.i.5.i
  br i1 %i.bw, label %.lr.ph.i.i.5.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.5.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.5.i": ; preds = %.lr.ph.i.i.5.i, %bb.ad
  %.sroa.07.0.lcssa.i.i.5.i = phi ptr [ %.sroa.0.019.i.ptr.5.i, %bb.ad ], [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.5.i, ptr %.sroa.07.0.lcssa.i.i.5.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i.5.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.5.i, i64 8
  store i16 %.val.i.i.5.i, ptr %.sroa.4.0..sroa_idx5.i.i.5.i, align 8, !tbaa !97
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i"

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr.5.i, i64 16, i1 false), !tbaa.struct !126
  %i.bx = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.by = sub i64 %i.bx, %i.g                     ; 3 uses
  %i.bz = ashr exact i64 %i.by, 4                 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 1
  br i1 %i.ca, label %bb.ah, label %bb.af, !prof !127

bb.af:                                            ; preds = %bb.ae
  %i.cb = icmp eq i64 %i.by, 16
  br i1 %i.cb, label %bb.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.019.i.ptr.5.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i

bb.ah:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 112
  %i.cd = sub nsw i64 0, %i.bz
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.034.i, i64 %i.by, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i: ; preds = %bb.ah, %bb.ag, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.034.i, ptr noundef nonnull align 8 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i.5.i"
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.031.034.i, i64 112 ; 3 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ch = sub i64 %i.a, %i.cg
  %i.ci = icmp sgt i64 %i.ch, 96
  br i1 %i.ci, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !632

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i", %bb.a
  %.sroa.031.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.cf, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cg, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_.exit.i" ]
  %i.cj = icmp eq ptr %.sroa.031.0.lcssa.i, %1
  br i1 %i.cj, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_.exit", label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i, i64 16 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  br i1 %.not17.i12.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %i.ck = getelementptr i8, ptr %.sroa.031.0.lcssa.i, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %.sroa.0.019.i14.i = phi ptr [ %.sroa.0.016.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i23.i, %bb.ao ] ; 7 uses
  %.pn18.i15.i = phi ptr [ %.sroa.031.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.019.i14.i, %bb.ao ] ; 4 uses
  %i.cl = getelementptr i8, ptr %.pn18.i15.i, i64 24
  %.val.i.i16.i = load i16, ptr %i.cl, align 8, !tbaa !130 ; 4 uses
  %.val1.i.i17.i = load i16, ptr %i.ck, align 8, !tbaa !130
  %i.cm = icmp ult i16 %.val.i.i16.i, %.val1.i.i17.i
  br i1 %i.cm, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i14.i, i64 16, i1 false), !tbaa.struct !126
  %i.cn = ptrtoint ptr %.sroa.0.019.i14.i to i64
  %i.co = sub i64 %i.cn, %.lcssa.i                ; 3 uses
  %i.cp = ashr exact i64 %i.co, 4                 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 1
  br i1 %i.cq, label %bb.ak, label %bb.al, !prof !127

bb.ak:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 32
  %i.cs = sub nsw i64 0, %i.cp
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.cs
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.031.0.lcssa.i, i64 %i.co, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i

bb.al:                                            ; preds = %bb.aj
  %i.cu = icmp eq i64 %i.co, 16
  br i1 %i.cu, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cv, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.0.lcssa.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.031.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(10) %3, i64 10, i1 false), !tbaa.struct !126
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %.sroa.03.0.copyload.i.i18.i = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !125
  %i.cw = getelementptr i8, ptr %.pn18.i15.i, i64 8
  %.val2.i10.i.i19.i = load i16, ptr %i.cw, align 8, !tbaa !130
  %i.cx = icmp ult i16 %.val.i.i16.i, %.val2.i10.i.i19.i
  br i1 %i.cx, label %.lr.ph.i.i25.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i20.i"

.lr.ph.i.i25.i:                                   ; preds = %bb.an, %.lr.ph.i.i25.i
  %.sroa.07.011.i.i26.i = phi ptr [ %.sroa.0.0.i.i27.i, %.lr.ph.i.i25.i ], [ %.sroa.0.019.i14.i, %bb.an ] ; 3 uses
  %.sroa.0.0.i.i27.i = getelementptr inbounds i8, ptr %.sroa.07.011.i.i26.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.07.011.i.i26.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.0.i.i27.i, i64 10, i1 false), !tbaa.struct !126
  %i.cy = getelementptr i8, ptr %.sroa.07.011.i.i26.i, i64 -24
  %.val2.i.i.i28.i = load i16, ptr %i.cy, align 8, !tbaa !130
  %i.cz = icmp ult i16 %.val.i.i16.i, %.val2.i.i.i28.i
  br i1 %i.cz, label %.lr.ph.i.i25.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i20.i", !llvm.loop !12

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i20.i": ; preds = %.lr.ph.i.i25.i, %bb.an
  %.sroa.07.0.lcssa.i.i21.i = phi ptr [ %.sroa.0.019.i14.i, %bb.an ], [ %.sroa.0.0.i.i27.i, %.lr.ph.i.i25.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i18.i, ptr %.sroa.07.0.lcssa.i.i21.i, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx5.i.i22.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i21.i, i64 8
  store i16 %.val.i.i16.i, ptr %.sroa.4.0..sroa_idx5.i.i22.i, align 8, !tbaa !97
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_T0_.exit.i20.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i
  %.sroa.0.0.i23.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i14.i, i64 16 ; 2 uses
  %.not.i24.i = icmp eq ptr %.sroa.0.0.i23.i, %1
  br i1 %.not.i24.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_.exit", label %bb.ai, !llvm.loop !13

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.da = icmp sgt i64 %i.d, 7
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_.exit"
  %i.db = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit"
  %.067 = phi i64 [ 7, %.lr.ph ], [ %i.fn, %"_ZSt17__merge_sort_loopIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit" ] ; 8 uses
  %i.dc = shl nsw i64 %.067, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.dc
  br i1 %.not53.i, label %._crit_edge.i24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.067, 4                      ; 12 uses
  %.idx47.i = shl i64 %.067, 5                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dd = icmp sgt i64 %.idx.i, 16
  br i1 %i.dd, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !127

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %5, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.039.054.us.i.us = phi ptr [ %i.de, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.039.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.039.054.us.i.us, i64 %.idx.i, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.de, i64 %.idx.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx.i ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.a, %i.dg
  %i.di = ashr exact i64 %i.dh, 4                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.di, %i.dc
  br i1 %.not.us.i.us, label %._crit_edge.i24, label %.critedge.i.us.i.us, !llvm.loop !633

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dj = icmp eq i64 %.idx.i, 16
  br i1 %i.dj, label %.critedge.i.us.i.us56, label %.critedge.i.us.i

.critedge.i.us.i.us56:                            ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i.us56
  %.055.us.i.us57 = phi ptr [ %6, %.critedge.i.us.i.us56 ], [ %2, %.critedge.i.us.preheader.i.split ] ; 3 uses
  %.sroa.039.054.us.i.us58 = phi ptr [ %i.dk, %.critedge.i.us.i.us56 ], [ %0, %.critedge.i.us.preheader.i.split ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.039.054.us.i.us58, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.055.us.i.us57, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.039.054.us.i.us58, i64 10, i1 false), !tbaa.struct !126
  %i.dl = getelementptr inbounds nuw i8, ptr %.055.us.i.us57, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.dl, ptr noundef nonnull align 8 dereferenceable(10) %i.dk, i64 10, i1 false), !tbaa.struct !126
  %6 = getelementptr inbounds nuw i8, ptr %.055.us.i.us57, i64 32 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.a, %i.dm
  %i.do = ashr exact i64 %i.dn, 4                 ; 2 uses
  %.not.us.i.us60 = icmp slt i64 %i.do, %i.dc
  br i1 %.not.us.i.us60, label %._crit_edge.i24, label %.critedge.i.us.i.us56, !llvm.loop !633

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.dq, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.039.054.us.i = phi ptr [ %7, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %7 = getelementptr inbounds i8, ptr %.sroa.039.054.us.i, i64 %.idx.i ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.idx.i ; 2 uses
  %i.dr = ptrtoint ptr %7 to i64
  %i.ds = sub i64 %i.a, %i.dr
  %i.dt = ashr exact i64 %i.ds, 4                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.dt, %i.dc
  br i1 %.not.us.i, label %._crit_edge.i24, label %.critedge.i.us.i, !llvm.loop !633

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"
  %.055.i = phi ptr [ %i.ep, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.039.054.i = phi ptr [ %i.dv, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.039.054.i, i64 %.idx.i ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.039.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %bb.as, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.eb, %bb.as ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %bb.as ], [ %.sroa.039.054.i, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.as ], [ %i.du, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.dw = getelementptr i8, ptr %.sroa.010.018.i.i, i64 8
  %.val.i.i.i22 = load i16, ptr %i.dw, align 8, !tbaa !130
  %i.dx = getelementptr i8, ptr %.sroa.014.019.i.i, i64 8
  %.val1.i.i.i23 = load i16, ptr %i.dx, align 8, !tbaa !130
  %i.dy = icmp ult i16 %.val.i.i.i22, %.val1.i.i.i23
  br i1 %i.dy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.020.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.018.i.i, i64 10, i1 false), !tbaa.struct !126
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 16
  br label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.020.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.014.019.i.i, i64 10, i1 false), !tbaa.struct !126
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.010.1.i.i = phi ptr [ %i.dz, %bb.aq ], [ %.sroa.010.018.i.i, %bb.ar ] ; 5 uses
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.019.i.i, %bb.aq ], [ %i.ea, %bb.ar ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 16 ; 4 uses
  %i.ec = icmp ne ptr %.sroa.014.1.i.i, %i.du
  %i.ed = icmp ne ptr %.sroa.010.1.i.i, %i.dv
  %or.cond.i.i = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !634

.critedge.i.loopexit.i:                           ; preds = %bb.as
  %i.ee = ptrtoint ptr %i.du to i64
  %i.ef = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 4 uses
  %i.eh = icmp sgt i64 %i.eg, 16
  br i1 %i.eh, label %bb.at, label %bb.au, !prof !127

bb.at:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.eg, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.au:                                            ; preds = %.critedge.i.loopexit.i
  %i.ei = icmp eq i64 %i.eg, 16
  br i1 %i.ei, label %bb.av, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.eb, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.014.1.i.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.ej = getelementptr inbounds i8, ptr %i.eb, i64 %i.eg ; 3 uses
  %i.ek = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.el = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 4 uses
  %i.en = icmp sgt i64 %i.em, 16
  br i1 %i.en, label %bb.aw, label %bb.ax, !prof !127

bb.aw:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.em, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

bb.ax:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  %i.eo = icmp eq i64 %i.em, 16
  br i1 %i.eo, label %bb.ay, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ej, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.1.i.i, i64 10, i1 false), !tbaa.struct !126
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i": ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 %i.em ; 2 uses
  %i.eq = sub i64 %i.a, %i.ek
  %i.er = ashr exact i64 %i.eq, 4                 ; 2 uses
  %.not.i = icmp slt i64 %i.er, %i.dc
  br i1 %.not.i, label %._crit_edge.i24, label %.lr.ph.i.preheader.i, !llvm.loop !633

._crit_edge.i24:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us56, %.critedge.i.us.i.us, %bb.ap
  %.sroa.039.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.de, %.critedge.i.us.i.us ], [ %i.dk, %.critedge.i.us.i.us56 ], [ %7, %.critedge.i.us.i ], [ %i.dv, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %5, %.critedge.i.us.i.us ], [ %6, %.critedge.i.us.i.us56 ], [ %i.dq, %.critedge.i.us.i ], [ %i.ep, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.ap ], [ %i.di, %.critedge.i.us.i.us ], [ %i.do, %.critedge.i.us.i.us56 ], [ %i.dt, %.critedge.i.us.i ], [ %i.er, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.067, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 4
  %i.es = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.et = icmp ne i64 %.sroa.speculated.i, 0
  %i.eu = icmp ne ptr %i.es, %1
  %or.cond17.i16.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i24, %bb.bb
  %.020.i23.i = phi ptr [ %i.fa, %bb.bb ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 3 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i29.i, %bb.bb ], [ %.sroa.039.0.lcssa.i, %._crit_edge.i24 ] ; 4 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i28.i, %bb.bb ], [ %i.es, %._crit_edge.i24 ] ; 4 uses
  %i.ev = getelementptr i8, ptr %.sroa.010.018.i25.i, i64 8
  %.val.i.i26.i = load i16, ptr %i.ev, align 8, !tbaa !130
  %i.ew = getelementptr i8, ptr %.sroa.014.019.i24.i, i64 8
  %.val1.i.i27.i = load i16, ptr %i.ew, align 8, !tbaa !130
  %i.ex = icmp ult i16 %.val.i.i26.i, %.val1.i.i27.i
  br i1 %i.ex, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.020.i23.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.018.i25.i, i64 10, i1 false), !tbaa.struct !126
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 16
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.020.i23.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.014.019.i24.i, i64 10, i1 false), !tbaa.struct !126
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.010.1.i28.i = phi ptr [ %i.ey, %bb.az ], [ %.sroa.010.018.i25.i, %bb.ba ] ; 3 uses
  %.sroa.014.1.i29.i = phi ptr [ %.sroa.014.019.i24.i, %bb.az ], [ %i.ez, %bb.ba ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 16 ; 2 uses
  %i.fb = icmp ne ptr %.sroa.014.1.i29.i, %i.es
  %i.fc = icmp ne ptr %.sroa.010.1.i28.i, %1
  %or.cond.i30.i = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond.i30.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !634

.critedge.i17.i:                                  ; preds = %bb.bb, %._crit_edge.i24
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.es, %._crit_edge.i24 ], [ %.sroa.010.1.i28.i, %bb.bb ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.039.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.014.1.i29.i, %bb.bb ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.fa, %bb.bb ] ; 3 uses
  %i.fd = ptrtoint ptr %i.es to i64
  %i.fe = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp sgt i64 %i.ff, 16
  br i1 %i.fg, label %bb.bc, label %bb.bd, !prof !127

bb.bc:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.ff, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i

bb.bd:                                            ; preds = %.critedge.i17.i
  %i.fh = icmp eq i64 %i.ff, 16
  br i1 %i.fh, label %bb.be, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.0.lcssa.i20.i, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.014.0.lcssa.i19.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i: ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fi = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.ff ; 2 uses
  %i.fj = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fk = sub i64 %i.a, %i.fj                     ; 3 uses
  %i.fl = icmp sgt i64 %i.fk, 16
  br i1 %i.fl, label %bb.bf, label %bb.bg, !prof !127

bb.bf:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fi, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fk, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit"

bb.bg:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21.i
  %i.fm = icmp eq i64 %i.fk, 16
  br i1 %i.fm, label %bb.bh, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit"

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.fi, ptr noundef nonnull align 8 dereferenceable(10) %.sroa.010.0.lcssa.i18.i, i64 10, i1 false), !tbaa.struct !126
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit": ; preds = %bb.bf, %bb.bg, %bb.bh
  %i.fn = shl nsw i64 %.067, 2                    ; 5 uses
  %.not49.i = icmp slt i64 %i.d, %i.fn
  br i1 %.not49.i, label %._crit_edge.i30, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEEvT_SK_T0_T1_T2_.exit"
  %.idx.i26 = shl i64 %.067, 5                    ; 8 uses
  %.idx43.i = shl nsw i64 %.067, 6                ; 2 uses
  %.not44.i = icmp eq i64 %.idx.i26, %.idx43.i
  br i1 %.not44.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i27

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i25
  %i.fo = icmp sgt i64 %.067, 0
  %i.fp = icmp sgt i64 %.idx.i26, 16
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.051.us.i = phi ptr [ %i.fs, %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.050.us.i = phi ptr [ %i.fq, %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.050.us.i, i64 %.idx.i26 ; 4 uses
  br i1 %i.fo, label %bb.bi, label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, !prof !127

bb.bi:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.051.us.i, ptr align 8 %.050.us.i, i64 %.idx.i26, i1 false)
  br label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i

_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bi
  %i.fr = getelementptr inbounds i8, ptr %.sroa.022.051.us.i, i64 %.idx.i26 ; 2 uses
  br i1 %i.fp, label %bb.bj, label %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i", !prof !638

bb.bj:                                            ; preds = %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fq, i64 %.idx.i26, i1 false)
  br label %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i"

"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.us.i": ; preds = %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, %bb.bj
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i26 ; 2 uses
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.db, %i.ft
  %i.fv = ashr exact i64 %i.fu, 4                 ; 2 uses
  %.not.us.i33 = icmp slt i64 %i.fv, %i.fn
  br i1 %.not.us.i33, label %._crit_edge.i30, label %._crit_edge.i.us.i, !llvm.loop !635

.lr.ph.i.preheader.i27:                           ; preds = %.lr.ph.i25, %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"
  %.sroa.022.051.i = phi ptr [ %i.gs, %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ], [ %0, %.lr.ph.i25 ]
  %.050.i = phi ptr [ %i.fx, %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i" ], [ %2, %.lr.ph.i25 ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.050.i, i64 %.idx.i26 ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %.050.i, i64 %.idx43.i ; 4 uses
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.bm, %.lr.ph.i.preheader.i27
  %.023.i.i = phi ptr [ %.1.i.i, %bb.bm ], [ %.050.i, %.lr.ph.i.preheader.i27 ] ; 4 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %bb.bm ], [ %i.fw, %.lr.ph.i.preheader.i27 ] ; 4 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gd, %bb.bm ], [ %.sroa.022.051.i, %.lr.ph.i.preheader.i27 ] ; 3 uses
  %i.fy = getelementptr i8, ptr %.01622.i.i, i64 8
  %.016.val.i.i = load i16, ptr %i.fy, align 8, !tbaa !130
  %i.fz = getelementptr i8, ptr %.023.i.i, i64 8
  %.0.val.i.i = load i16, ptr %i.fz, align 8, !tbaa !130
  %i.ga = icmp ult i16 %.016.val.i.i, %.0.val.i.i
  br i1 %i.ga, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.021.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.01622.i.i, i64 10, i1 false), !tbaa.struct !126
  %i.gb = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 16
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %.sroa.0.021.i.i, ptr noundef nonnull align 8 dereferenceable(10) %.023.i.i, i64 10, i1 false), !tbaa.struct !126
  %i.gc = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.117.i.i = phi ptr [ %i.gb, %bb.bk ], [ %.01622.i.i, %bb.bl ] ; 5 uses
  %.1.i.i = phi ptr [ %.023.i.i, %bb.bk ], [ %i.gc, %bb.bl ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 16 ; 4 uses
  %i.ge = icmp ne ptr %.1.i.i, %i.fw
  %i.gf = icmp ne ptr %.117.i.i, %i.fx
  %i.gg = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %i.gg, label %.lr.ph.i.i28, label %._crit_edge.i.loopexit.i, !llvm.loop !636

._crit_edge.i.loopexit.i:                         ; preds = %bb.bm
  %i.gh = ptrtoint ptr %i.fw to i64
  %i.gi = ptrtoint ptr %.1.i.i to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 4 uses
  %i.gk = icmp sgt i64 %i.gj, 16
  br i1 %i.gk, label %bb.bn, label %bb.bo, !prof !127

bb.bn:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr nonnull align 8 %.1.i.i, i64 %i.gj, i1 false)
  br label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.bo:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gl = icmp eq i64 %i.gj, 16
  br i1 %i.gl, label %bb.bp, label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gd, ptr noundef nonnull align 8 dereferenceable(10) %.1.i.i, i64 10, i1 false), !tbaa.struct !126
  br label %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.gm = getelementptr inbounds i8, ptr %i.gd, i64 %i.gj ; 3 uses
  %i.gn = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.go = ptrtoint ptr %.117.i.i to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 4 uses
  %i.gq = icmp sgt i64 %i.gp, 16
  br i1 %i.gq, label %bb.bq, label %bb.br, !prof !127

bb.bq:                                            ; preds = %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %.117.i.i, i64 %i.gp, i1 false)
  br label %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

bb.br:                                            ; preds = %_ZSt4moveIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %i.gr = icmp eq i64 %i.gp, 16
  br i1 %i.gr, label %bb.bs, label %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

bb.bs:                                            ; preds = %bb.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gm, ptr noundef nonnull align 8 dereferenceable(10) %.117.i.i, i64 10, i1 false), !tbaa.struct !126
  br label %"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i"

"_ZSt12__move_mergeIPN11flatbuffers15BinaryAnnotator6VTable5EntryEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_10BuildTableEmNS0_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EEET0_T_SL_SL_SL_SK_T1_.exit.i": ; preds = %bb.bs, %bb.br, %bb.bq
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 %i.gp ; 2 uses
end_hunk_0
