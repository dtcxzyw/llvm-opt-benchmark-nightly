Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/data_line_map?download=true
inline.NumInlined: 118
inline.NumDeleted: 65
begin_hunk_0_@_ZNK22photos_editing_formats8image_io11DataLineMap11GetDataLineEm:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !9      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %bb.c
  %i.i = udiv exact i64 %i.g, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.j = lshr i64 %.07.i.i, 1                     ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.02.06.i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val.i.i.i = load i64, ptr %i.l, align 8, !tbaa !12
  %i.m = icmp ult i64 %.val.i.i.i, %2             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.07.i.i, %i.o
  %.sroa.02.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit", !llvm.loop !26

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.c
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.a, %bb.c ], [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 5 uses
  %i.r = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.c
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit"
  %i.s = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i, i64 -24
  br label %bb.g

bb.e:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit"
  %.not = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.a
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = icmp ult i64 %2, %i.u
  %spec.select.idx = select i1 %i.v, i64 -24, i64 0
  %spec.select = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i, i64 %spec.select.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.07.1 = phi ptr [ %i.s, %bb.d ], [ %i.a, %bb.e ], [ %spec.select, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12
  %.not.i = icmp uge i64 %2, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.1, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ult i64 %2, %i.z
  %i.ab = select i1 %.not.i, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.1, i64 24, i1 false), !tbaa.struct !16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io11DataLineMap13FindDataLinesERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = icmp ult i64 %i.c, %i.b
  br i1 %i.e, label %.lr.ph, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = add nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.040 = phi i64 [ %i.l, %.lr.ph ], [ %.1, %.critedge ] ; 7 uses
  %.01839 = phi i64 [ %i.c, %.lr.ph ], [ %i.be, %.critedge ] ; 3 uses
  %i.q = tail call noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull align 8 dereferenceable(28) %2, i64 noundef %.01839, i8 noundef zeroext 10) ; 6 uses
  %i.r = icmp ult i64 %i.q, %i.b
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.b) ; 7 uses
  %i.s = load i8, ptr %i.m, align 8, !tbaa !25, !range !32, !noundef !33
  %i.t = trunc nuw i8 %i.s to i1
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !9   ; 10 uses
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = icmp eq ptr %i.u, %.pre
  br i1 %i.v, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.pre, i64 -8
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not.i.i.i = icmp uge i64 %i.q, %i.w
  %i.x = load i64, ptr %i.n, align 8
  %i.y = icmp ult i64 %i.q, %i.x
  %i.z = select i1 %.not.i.i.i, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit, label %.critedge

_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit: ; preds = %bb.e
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.ab = sub nuw i64 %i.q, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit
  store i8 0, ptr %i.m, align 8, !tbaa !25
  br label %.critedge

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.af = add i64 %.040, 1                        ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !39
  %.not.i = icmp eq ptr %.pre, %i.ag
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.040, ptr %.pre, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i64 %.01839, ptr %i.ah, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !18
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.j, label %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ao = sdiv exact i64 %i.am, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 384307168202282325)
  %i.as = select i1 %i.aq, i64 384307168202282325, i64 %i.ar ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.at = mul nuw nsw i64 %i.as, 24
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #12 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am ; 3 uses
  store i64 %.040, ptr %i.av, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.01839, ptr %i.aw, align 8, !tbaa !15
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx27, align 8, !tbaa !15
  %.not10.i.i.i.i.i = icmp eq ptr %i.aj, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.au, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !16, !alias.scope !46
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i34.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.bc) #13
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  store ptr %i.au, ptr %0, align 8, !tbaa !19
  store ptr %i.az, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bd, ptr %i.p, align 8, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.h, %bb.d, %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit, %bb.f
  %.1 = phi i64 [ %i.af, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.040, %bb.f ], [ %.040, %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit ], [ %.040, %bb.d ], [ %i.af, %bb.h ], [ %.040, %bb.e ]
  %i.be = add i64 %.sroa.speculated, 1            ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.b
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.critedge
  %.not = icmp ugt i64 %i.b, %i.q
  br i1 %.not, label %bb.l, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

bb.l:                                             ; preds = %._crit_edge
  %i.bg = load i64, ptr %2, align 8, !tbaa !12    ; 2 uses
  %.not.i.i.i23 = icmp uge i64 %.sroa.speculated, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i64 %.sroa.speculated, %i.bi
  %i.bk = select i1 %.not.i.i.i23, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.m, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !37
  %i.bn = sub nuw i64 %.sroa.speculated, %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !38
  %i.bq = icmp ne i8 %i.bp, 10
  %i.br = zext i1 %i.bq to i8
  br label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25: ; preds = %bb.a, %bb.m, %bb.l, %._crit_edge
  %i.bs = phi i8 [ 1, %._crit_edge ], [ %i.br, %bb.m ], [ 1, %bb.l ], [ 1, %bb.a ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !25
  ret void
}

declare noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull align 8 dereferenceable(28), i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN22photos_editing_formats8image_io11DataLineMap5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !25
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN22photos_editing_formats8image_io8DataLineE", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!11, !10, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!17 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!18 = !{!17, !8, i64 8}
!19 = !{!17, !8, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_Vector_implE", !17, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !21, i64 0}
!23 = !{!"bool", !4, i64 0}
!24 = !{!"_ZTSN22photos_editing_formats8image_io11DataLineMapE", !22, i64 0, !23, i64 24}
!25 = !{!24, !23, i64 24}
!26 = distinct !{!26, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"p1 omnipotent char", !7, i64 0}
!35 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegment23BufferDispositionPolicyE", !4, i64 0}
!36 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegmentE", !11, i64 0, !34, i64 16, !35, i64 24}
!37 = !{!36, !34, i64 16}
!38 = !{!4, !4, i64 0}
!39 = !{!17, !8, i64 16}
!40 = !{!"_ZTSN22photos_editing_formats8image_io8DataLineE", !10, i64 0, !11, i64 8}
!41 = !{!40, !10, i64 0}
!43 = distinct !{!43, i1 false, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!44, !45}
end_hunk_0
