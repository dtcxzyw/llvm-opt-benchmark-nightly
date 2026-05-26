inline.NumInlined: 80
inline.NumDeleted: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.photos_editing_formats::image_io::JpegMarker" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io18JpegXmpInfoBuilder14ProcessSegmentERKNS0_11JpegSegmentE(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = load i64, ptr %1, align 8, !tbaa !7
  %i.b = add i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %i.g to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %2, align 1
  %i.h = call noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.i = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.j = select i1 %i.h, i64 79, i64 77
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.q = load i32, ptr %0, align 8, !tbaa !17
  call void @_ZN22photos_editing_formats8image_io11JpegXmpInfo19GetDataPropertyNameB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.q)
  %i.r = load ptr, ptr %3, align 8, !tbaa !24
  %i.s = invoke noundef i64 @_ZNK22photos_editing_formats8image_io11JpegSegment25FindXmpPropertyValueBeginEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, ptr noundef %i.r)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  %.not = icmp eq i64 %i.s, %i.u
  br i1 %.not, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !29   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.n, align 8, !tbaa !29
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !33  ; 5 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775792
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 4                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = call i64 @llvm.umin.i64(i64 %i.ag, i64 576460752303423487) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #10
          to label %.noexc16 unwind label %bb.i   ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %.not10.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc16, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.aj, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31, !alias.scope !34
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %.noexc16 ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #11
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !33
  store ptr %i.an, ptr %i.n, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !30
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit

bb.i:                                             ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.g, %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  resume { ptr, i32 } %i.ap

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.av = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !40
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !15
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33

bb.j:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = icmp ult i64 %i.bb, %i.bd
  br i1 %i.be, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %.not.i20 = icmp eq ptr %i.o, %i.bg
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bi, ptr %i.n, align 8, !tbaa !29
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33

bb.m:                                             ; preds = %bb.k
  %i.bj = ptrtoint ptr %i.o to i64
  %i.bk = ptrtoint ptr %i.m to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775792
  br i1 %i.bm, label %bb.n, label %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i21

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i21: ; preds = %bb.m
  %i.bn = ashr exact i64 %i.bl, 3
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bn, i64 576460752303423487) ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #10 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i21, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i26 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i25 ], [ %i.bq, %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ] ; 3 uses
  %.0911.i.i.i.i.i27 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i25 ], [ %i.m, %_ZNKSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i21 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i27, i64 16, i1 false), !tbaa.struct !31, !alias.scope !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i27, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 16
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bs, %i.o
  br i1 %.not.i.i.i.i.i28, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29, label %.lr.ph.i.i.i.i.i25, !llvm.loop !38

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29: ; preds = %.lr.ph.i.i.i.i.i25
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i26, i64 32 ; 2 uses
  %.not.i23.i.i31 = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i31, label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bl) #11
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32: ; preds = %bb.o, %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i29
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !33
  store ptr %i.bu, ptr %i.n, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bv, ptr %i.bf, align 8, !tbaa !30
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33

_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32, %bb.l, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bw = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.o, %bb.j ], [ %i.bi, %bb.l ], [ %i.bu, %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32 ]
  %.0 = phi i64 [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.k, %bb.j ], [ %i.k, %bb.l ], [ %i.k, %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i32 ]
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.by = icmp eq ptr %i.bx, %i.bw
  br i1 %i.by, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !28
  %i.cd = icmp ult i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = call noundef i64 @_ZNK22photos_editing_formats8image_io11JpegSegment23FindXmpPropertyValueEndEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.0)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %.not15 = icmp eq i64 %i.ce, %i.cg
  br i1 %.not15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %_ZNSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE9push_backERKS2_.exit33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN22photos_editing_formats8image_io11JpegXmpInfo19GetDataPropertyNameB5cxx11ENS1_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK22photos_editing_formats8image_io11JpegSegment25FindXmpPropertyValueBeginEmPKc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i64 @_ZNK22photos_editing_formats8image_io11JpegSegment23FindXmpPropertyValueEndEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker22HasVariablePayloadSizeEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !9, i64 0, !9, i64 8}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSN22photos_editing_formats8image_io11JpegSegmentE", !8, i64 0, !12, i64 16, !12, i64 24}
!12 = !{!"p1 _ZTSN22photos_editing_formats8image_io11DataSegmentE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!11, !12, i64 24}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN22photos_editing_formats8image_io9DataRangeE", !13, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN22photos_editing_formats8image_io18JpegXmpInfoBuilderE", !19, i64 0, !20, i64 8, !8, i64 32}
!19 = !{!"_ZTSN22photos_editing_formats8image_io11JpegXmpInfo4TypeE", !5, i64 0}
!20 = !{!"_ZTSSt6vectorIN22photos_editing_formats8image_io9DataRangeESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN22photos_editing_formats8image_io9DataRangeESaIS2_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!24 = !{!25, !27, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !9, i64 8, !5, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!8, !9, i64 8}
!29 = !{!23, !16, i64 8}
!30 = !{!23, !16, i64 16}
!31 = !{i64 0, i64 8, !32, i64 8, i64 8, !32}
!32 = !{!9, !9, i64 0}
!33 = !{!23, !16, i64 0}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!5, !5, i64 0}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN22photos_editing_formats8image_io9DataRangeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
