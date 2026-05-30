inline.NumInlined: 118
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.photos_editing_formats::image_io::DataLine" = type { i64, %"class.photos_editing_formats::image_io::DataRange" }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK22photos_editing_formats8image_io11DataLineMap11GetDataLineEm(ptr dead_on_unwind noalias writable writeonly sret(%"struct.photos_editing_formats::image_io::DataLine") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 3 uses
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
  %.val.i.i.i = load i64, ptr %i.l, align 8, !tbaa !10
  %i.m = icmp ult i64 %.val.i.i.i, %2             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.07.i.i, %i.o
  %.sroa.02.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io8DataLineESt6vectorIS4_SaIS4_EEEES4_ZNKS3_11DataLineMap11GetDataLineEmE3$_0ET_SD_SD_RKT0_T1_.exit", !llvm.loop !13

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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = icmp ult i64 %2, %i.u
  %spec.select.idx = select i1 %i.v, i64 -24, i64 0
  %spec.select = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i, i64 %spec.select.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.07.1 = phi ptr [ %i.s, %bb.d ], [ %i.a, %bb.e ], [ %spec.select, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10
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
define void @_ZN22photos_editing_formats8image_io11DataLineMap13FindDataLinesERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = icmp ult i64 %i.c, %i.b
  br i1 %i.e, label %.lr.ph, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %i.l = add nsw i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01840 = phi i64 [ %i.c, %.lr.ph ], [ %i.bb, %.critedge ] ; 3 uses
  %.01939 = phi i64 [ %i.l, %.lr.ph ], [ %.1, %.critedge ] ; 7 uses
  %i.q = tail call noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull align 8 dereferenceable(28) %2, i64 noundef %.01840, i8 noundef zeroext 10) ; 6 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.b) ; 7 uses
  %i.r = load i8, ptr %i.m, align 8, !tbaa !21, !range !27, !noundef !28
  %i.s = trunc nuw i8 %i.r to i1
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !7   ; 10 uses
  %i.t = load ptr, ptr %0, align 8
  %i.u = icmp ne ptr %i.t, %.pre
  %or.cond.not = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ult i64 %i.q, %i.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.pre, i64 -8
  store i64 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %2, align 8, !tbaa !10     ; 2 uses
  %.not.i.i.i = icmp uge i64 %i.q, %i.w
  %i.x = load i64, ptr %i.n, align 8
  %i.y = icmp ult i64 %i.q, %i.x
  %i.z = select i1 %.not.i.i.i, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit, label %.critedge

_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.ab = sub nuw i64 %i.q, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !33
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit
  store i8 0, ptr %i.m, align 8, !tbaa !21
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.af = add i64 %.01939, 1                      ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !34
  %.not.i = icmp eq ptr %.pre, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %.01939, ptr %.pre, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i64 %.01840, ptr %i.ah, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !18
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.i, label %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ao = sdiv exact i64 %i.am, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 384307168202282325)
  %i.as = select i1 %i.aq, i64 384307168202282325, i64 %i.ar ; 2 uses
  %i.at = mul nuw nsw i64 %i.as, 24
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #11 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am ; 3 uses
  store i64 %.01939, ptr %i.av, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.01840, ptr %i.aw, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx27, align 8, !tbaa !17
  %.not10.i.i.i.i.i = icmp eq ptr %i.aj, %.pre
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.au, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.aj, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !16, !alias.scope !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %_ZNKSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i34.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #12
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  store ptr %i.au, ptr %0, align 8, !tbaa !20
  store ptr %i.az, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ba, ptr %i.p, align 8, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g, %bb.c, %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit, %bb.e
  %.1 = phi i64 [ %i.af, %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_M_realloc_insertIJmNS1_9DataRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.01939, %bb.e ], [ %.01939, %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit ], [ %.01939, %bb.c ], [ %i.af, %bb.g ], [ %.01939, %bb.d ]
  %i.bb = add i64 %.sroa.speculated, 1            ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.b
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %.critedge
  %.not = icmp ugt i64 %i.b, %i.q
  br i1 %.not, label %bb.k, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

bb.k:                                             ; preds = %._crit_edge
  %i.bd = load i64, ptr %2, align 8, !tbaa !10    ; 2 uses
  %.not.i.i.i23 = icmp uge i64 %.sroa.speculated, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = icmp ult i64 %.sroa.speculated, %i.bf
  %i.bh = select i1 %.not.i.i.i23, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.l, label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bk = sub nuw i64 %.sroa.speculated, %i.bd
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33
  %i.bn = icmp ne i8 %i.bm, 10
  %i.bo = zext i1 %i.bn to i8
  br label %_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25

_ZNK22photos_editing_formats8image_io11DataSegment16GetValidatedByteEm.exit25: ; preds = %bb.a, %bb.l, %bb.k, %._crit_edge
  %i.bp = phi i8 [ 1, %._crit_edge ], [ %i.bo, %bb.l ], [ 1, %bb.k ], [ 1, %bb.a ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bp, ptr %i.bq, align 8, !tbaa !21
  ret void
}

declare noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull align 8 dereferenceable(28), i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN22photos_editing_formats8image_io11DataLineMap5ClearEv(ptr noundef nonnull align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit

_ZNSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN22photos_editing_formats8image_io8DataLineES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8, !tbaa !21
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
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN22photos_editing_formats8image_io8DataLineE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !12, i64 0, !12, i64 8}
!12 = !{!"long", !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!11, !12, i64 8}
!16 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !8, i64 8}
!19 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!20 = !{!19, !8, i64 0}
!21 = !{!22, !26, i64 24}
!22 = !{!"_ZTSN22photos_editing_formats8image_io11DataLineMapE", !23, i64 0, !26, i64 24}
!23 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io8DataLineESaIS2_EE12_Vector_implE", !19, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!30, !31, i64 16}
!30 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegmentE", !11, i64 0, !31, i64 16, !32, i64 24}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!"_ZTSN22photos_editing_formats8image_io11DataSegment23BufferDispositionPolicyE", !5, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!19, !8, i64 16}
!35 = !{!36, !12, i64 0}
!36 = !{!"_ZTSN22photos_editing_formats8image_io8DataLineE", !12, i64 0, !11, i64 8}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!39 = distinct !{!39, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_"}
!40 = distinct !{!40, !39, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io8DataLineES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
end_hunk_0
