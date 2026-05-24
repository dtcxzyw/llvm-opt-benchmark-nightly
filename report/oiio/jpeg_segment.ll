inline.NumInlined: 220
inline.NumDeleted: 113
begin_hunk_0_@_ZNK22photos_editing_formats8image_io11JpegSegment25FindXmpPropertyValueBeginEmPKc:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.lr.ph.i21
  %.01430.i22 = phi i64 [ %i.v, %.lr.ph.i21 ], [ %i.aj, %bb.o ] ; 4 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ab = tail call i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %.01430.i22, ptr noundef %i.z, ptr noundef %i.aa) ; 2 uses
  %i.ac = and i16 %i.ab, 256
  %.not.i23 = icmp eq i16 %i.ac, 0
  br i1 %.not.i23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !16
  br label %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ae = and i16 %i.ab, 255                      ; 2 uses
  %i.af = icmp eq i16 %i.ae, 34
  br i1 %i.af, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i16 %i.ae to i32
  %i.ah = tail call i32 @isspace(i32 noundef %i.ag) #13
  %.not18.i24 = icmp eq i32 %i.ah, 0
  br i1 %.not18.i24, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !16
  br label %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.aj = add nuw i64 %.01430.i22, 1              ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit.thread, !llvm.loop !24

.loopexit:                                        ; preds = %bb.l
  %.pre28.pre = load i64, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %.not19 = icmp eq i64 %.01430.i22, %.pre28.pre
  %i.am = add nuw i64 %.01430.i22, 1
  %spec.select = select i1 %.not19, i64 %.pre28.pre, i64 %i.am
  br label %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit.thread

_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit.thread: ; preds = %bb.h, %bb.o, %.loopexit, %bb.k, %bb.n, %bb.i, %bb.d, %bb.g, %bb.b, %bb.a, %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit
  %.3 = phi i64 [ %i.ak, %bb.o ], [ %.pre.pre, %_ZN22photos_editing_formats8image_ioL22SkipWhiteSpaceFindCharERKNS0_11JpegSegmentEmc.exit ], [ %i.a, %bb.a ], [ %i.ai, %bb.n ], [ %i.c, %bb.b ], [ %spec.select, %.loopexit ], [ %i.m, %bb.d ], [ %i.r, %bb.g ], [ %.pre.pre, %bb.i ], [ %i.ad, %bb.k ], [ %i.t, %bb.h ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK22photos_editing_formats8image_io11JpegSegment23FindXmpPropertyValueEndEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.d, null               ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %.not9.i, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  br label %_ZNK22photos_editing_formats8image_io11JpegSegment4FindEmh.exit

bb.c:                                             ; preds = %bb.a
  %.not10.i = icmp ne ptr %i.b, null
  %or.cond14.i = select i1 %.not10.i, i1 %.not9.i, i1 false
  br i1 %or.cond14.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNK22photos_editing_formats8image_io11DataSegment4FindEmh(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i64 noundef %1, i8 noundef zeroext 34)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef i64 @_ZN22photos_editing_formats8image_io11DataSegment4FindEmhPKS1_S3_(i64 noundef %1, i8 noundef zeroext 34, ptr noundef %i.b, ptr noundef %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !7
  %.not.i.i.not.i = icmp ult i64 %.0.i, %i.i
  %i.j = load i64, ptr %i.e, align 8              ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.j)
  %spec.select.i = select i1 %.not.i.i.not.i, i64 %i.j, i64 %i.k
  br label %_ZNK22photos_editing_formats8image_io11JpegSegment4FindEmh.exit

_ZNK22photos_editing_formats8image_io11JpegSegment4FindEmh.exit: ; preds = %bb.b, %bb.f
  %.07.i = phi i64 [ %i.f, %bb.b ], [ %spec.select.i, %bb.f ]
  ret i64 %.07.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11JpegSegment13ExtractStringB5cxx11ERKNS0_9DataRangeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = load i64, ptr %2, align 8, !tbaa !7      ; 5 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !7
  %.not.i.i = icmp uge i64 %i.c, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i64 %i.c, %i.f
  %i.h = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %.not = icmp ugt i64 %i.j, %i.f
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.c) ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 32)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.c
  %.not24.not = icmp ugt i64 %i.j, %i.c
  br i1 %.not24.not, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.01723 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.g ] ; 3 uses
  %i.o = add i64 %.01723, %i.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.r = invoke i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.o, ptr noundef %i.p, ptr noundef %i.q)
          to label %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit unwind label %.loopexit

_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit: ; preds = %bb.e
  %.sroa.0.0.extract.trunc = trunc i16 %i.r to i8 ; 2 uses
  %.not20.not = icmp eq i8 %.sroa.0.0.extract.trunc, 0
  br i1 %.not20.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.01723
  store i8 %.sroa.0.0.extract.trunc, ptr %i.t, align 1, !tbaa !15
  %i.u = add nuw i64 %.01723, 1                   ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.k
  br i1 %i.v, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread, !llvm.loop !26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.thread: ; preds = %bb.g, %.preheader, %bb.f, %bb.a, %bb.b
  ret void

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.a, align 8, !tbaa !15
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef captures(address) %2, ptr noundef captures(address) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.photos_editing_formats::image_io::JpegMarker", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr i8, ptr %i.c, i64 -24      ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = and i32 %i.h, -75
  %i.j = or disjoint i32 %i.i, 8
  store i32 %i.j, ptr %i.g, align 8, !tbaa !38
  %i.k = load i64, ptr %i.d, align 8
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29
  %i.o = or i32 %i.n, 16384
  store i32 %i.o, ptr %i.m, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.p = load i64, ptr %0, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = invoke i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.v to i8
  store i8 %.sroa.0.0.extract.trunc.i, ptr %6, align 1
  %i.w = invoke noundef zeroext i1 @_ZNK22photos_editing_formats8image_io10JpegMarker25IsEntropySegmentDelimiterEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %0, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = call noundef i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.x)
  %i.ab = add i64 %i.aa, -2
  %i.ac = call i64 @llvm.umin.i64(i64 %i.ab, i64 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ad = phi i64 [ %i.ac, %bb.e ], [ %1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.h:                                             ; preds = %bb.b, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aq

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %.02484 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.s ] ; 2 uses
  %i.ah = load i64, ptr %0, align 8, !tbaa !7
  %i.ai = add i64 %.02484, 2
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.am = invoke i16 @_ZN22photos_editing_formats8image_io11DataSegment16GetValidatedByteEmPKS1_S3_(i64 noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al)
          to label %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit unwind label %bb.j ; 3 uses

_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit: ; preds = %bb.i
  %.sroa.07.0.extract.trunc = trunc i16 %i.am to i8
  %i.an = and i16 %i.am, 256
  %.not.not = icmp eq i16 %i.an, 0
  br i1 %.not.not, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.k:                                             ; preds = %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 225 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !39, !range !47, !noundef !48
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !50
  %.not.i1.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i1.i.i.i.i, label %bb.n, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ax)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %bb.n
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.ax, i8 noundef signext 32)
          to label %.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc36
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.ap, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.at, align 1, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.be = phi ptr [ %i.ap, %bb.k ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  store i8 48, ptr %i.bf, align 8, !tbaa !57
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.b, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 2, ptr %i.bj, align 8, !tbaa !58
  %.sroa.07.0.extract.trunc.mask = and i16 %i.am, 255
  %i.bk = zext nneg i16 %.sroa.07.0.extract.trunc.mask to i32 ; 2 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bk)
          to label %bb.p unwind label %.loopexit  ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bm = call i32 @isprint(i32 noundef %i.bk) #13
  %.not27 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not27, i8 46, i8 %.sroa.07.0.extract.trunc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bn, ptr %i.a, align 1, !tbaa !15
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.ae, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !58
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.s unwind label %.loopexit  ; 0 uses

bb.r:                                             ; preds = %bb.p
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %i.bn)
          to label %bb.s unwind label %.loopexit  ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = add nuw i64 %.02484, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.ad
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !59

.loopexit:                                        ; preds = %bb.o, %bb.n, %.noexc36, %bb.q, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.critedge:                                        ; preds = %bb.s, %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !19, !alias.scope !66
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !22, !alias.scope !66
  store i8 0, ptr %i.bx, align 8, !tbaa !15, !alias.scope !66
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %11 = load ptr, ptr %10, align 8, !tbaa !67, !noalias !66 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %11, null
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !66 ; 2 uses
  %12 = icmp ugt ptr %11, %i.ca
  %.08.i.i.i = select i1 %12, ptr %11, ptr %i.ca  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69, !noalias !66 ; 2 uses
  %i.cd = ptrtoint ptr %.08.i.i.i to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.cc, i64 noundef %i.cf)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %7, align 8, !tbaa !25, !alias.scope !66 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bx
  br i1 %i.cj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !15, !alias.scope !66
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #14
  br label %.body

bb.v:                                             ; preds = %.critedge
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cm)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.v, %bb.t
  %i.cn = load i64, ptr %i.by, align 8, !tbaa !22 ; 3 uses
  %i.co = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bx
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cr = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ct = icmp ult i64 %i.cn, %1
  br i1 %i.ct, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.z

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.cv, ptr %8, align 8, !tbaa !19, !alias.scope !76
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.cw, align 8, !tbaa !22, !alias.scope !76
  store i8 0, ptr %i.cv, align 8, !tbaa !15, !alias.scope !76
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %14 = load ptr, ptr %13, align 8, !tbaa !67, !noalias !76 ; 3 uses
  %.not.i.not.i.i40 = icmp eq ptr %14, null
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !76 ; 2 uses
  %15 = icmp ugt ptr %14, %i.cy
  %.08.i.i.i41 = select i1 %15, ptr %14, ptr %i.cy ; 2 uses
  %.not5.i.i42 = icmp eq ptr %.08.i.i.i41, null
  %.not.i.i43 = select i1 %.not.i.not.i.i40, i1 true, i1 %.not5.i.i42
  br i1 %.not.i.i43, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69, !noalias !76 ; 2 uses
  %i.db = ptrtoint ptr %.08.i.i.i41 to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.da, i64 noundef %i.dd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !76 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cv
  br i1 %i.dh, label %.body47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %bb.x
  %i.di = load i64, ptr %i.cv, align 8, !tbaa !15, !alias.scope !76
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #14
  br label %.body47

bb.y:                                             ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49 unwind label %bb.x

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aq

bb.z:                                             ; preds = %.lr.ph86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %.085 = phi i64 [ %i.cn, %.lr.ph86 ], [ %i.dn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 ]
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dn = add i64 %.085, 1                        ; 2 uses
  %exitcond87.not = icmp eq i64 %i.dn, %1
  br i1 %exitcond87.not, label %._crit_edge, label %bb.z, !llvm.loop !77

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49: ; preds = %bb.y, %bb.w
  %i.dp = load ptr, ptr %2, align 8, !tbaa !25    ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  %i.ds = load ptr, ptr %8, align 8, !tbaa !25    ; 6 uses
  %i.dt = icmp eq ptr %i.ds, %i.cv                ; 2 uses
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49
  br i1 %i.dt, label %bb.ab, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit49
  br i1 %i.dt, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.du = load i64, ptr %i.cw, align 8, !tbaa !22 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %.not21.i = icmp eq ptr %8, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.du, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !15
  store i8 %i.dw, ptr %i.dp, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dx = load i64, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !22
  %i.dz = load ptr, ptr %2, align 8, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store i8 0, ptr %i.ea, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ds, ptr %2, align 8, !tbaa !25
  %i.ec = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  store <2 x i64> %i.ec, ptr %i.eb, align 8, !tbaa !15
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ed = load i64, ptr %i.dq, align 8, !tbaa !15
  store ptr %i.ds, ptr %2, align 8, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ef = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  store <2 x i64> %i.ef, ptr %i.ee, align 8, !tbaa !15
  %.not.i53 = icmp eq ptr %i.dp, null
  br i1 %.not.i53, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dp, ptr %8, align 8, !tbaa !25
  store i64 %i.ed, ptr %i.cv, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cv, ptr %8, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.af, %bb.ag
  %i.eg = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dp, %bb.af ], [ %i.cv, %bb.ag ], [ %i.ds, %bb.ab ]
  store i64 0, ptr %i.cw, align 8, !tbaa !22
  store i8 0, ptr %i.eg, align 1, !tbaa !15
  %i.eh = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cv
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ej = load i64, ptr %i.cv, align 8, !tbaa !15
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  store ptr %i.el, ptr %9, align 8, !tbaa !19, !alias.scope !85
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 0, ptr %i.em, align 8, !tbaa !22, !alias.scope !85
  store i8 0, ptr %i.el, align 8, !tbaa !15, !alias.scope !85
  %16 = load ptr, ptr %10, align 8, !tbaa !67, !noalias !85 ; 3 uses
  %.not.i.not.i.i57 = icmp eq ptr %16, null
  %i.en = load ptr, ptr %i.bz, align 8, !noalias !85 ; 2 uses
  %17 = icmp ugt ptr %16, %i.en
  %.08.i.i.i58 = select i1 %17, ptr %16, ptr %i.en ; 2 uses
  %.not5.i.i59 = icmp eq ptr %.08.i.i.i58, null
  %.not.i.i60 = select i1 %.not.i.not.i.i57, i1 true, i1 %.not5.i.i59
  br i1 %.not.i.i60, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !69, !noalias !85 ; 2 uses
  %i.eq = ptrtoint ptr %.08.i.i.i58 to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ep, i64 noundef %i.es)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit66 unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %9, align 8, !tbaa !25, !alias.scope !85 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.el
  br i1 %i.ew, label %.body64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.ai
  %i.ex = load i64, ptr %i.el, align 8, !tbaa !15, !alias.scope !85
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #14
  br label %.body64

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ez)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit66 unwind label %bb.ai

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit66: ; preds = %bb.aj, %bb.ah
  %i.fa = load ptr, ptr %3, align 8, !tbaa !25    ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  %i.fd = load ptr, ptr %9, align 8, !tbaa !25    ; 6 uses
  %i.fe = icmp eq ptr %i.fd, %i.el                ; 2 uses
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit66
  br i1 %i.fe, label %bb.ak, label %.thread.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i67: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit66
  br i1 %i.fe, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i68

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73
  %i.ff = load i64, ptr %i.em, align 8, !tbaa !22 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 16
  call void @llvm.assume(i1 %i.fg)
  %.not21.i70 = icmp eq ptr %9, %3
  br i1 %.not21.i70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75, label %bb.al, !prof !78

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.ff, label %bb.an [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.fh = load i8, ptr %i.fd, align 1, !tbaa !15
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71

bb.an:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.fd, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71: ; preds = %bb.an, %bb.am, %bb.al
  %i.fi = load i64, ptr %i.em, align 8, !tbaa !22 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !22
  %i.fk = load ptr, ptr %3, align 8, !tbaa !25
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i8 0, ptr %i.fl, align 1, !tbaa !15
  %.pre.i72 = load ptr, ptr %9, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75

.thread.i74:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.fd, ptr %3, align 8, !tbaa !25
  %i.fn = load <2 x i64>, ptr %i.em, align 8, !tbaa !15
  store <2 x i64> %i.fn, ptr %i.fm, align 8, !tbaa !15
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i67
  %i.fo = load i64, ptr %i.fb, align 8, !tbaa !15
  store ptr %i.fd, ptr %3, align 8, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fq = load <2 x i64>, ptr %i.em, align 8, !tbaa !15
  store <2 x i64> %i.fq, ptr %i.fp, align 8, !tbaa !15
  %.not.i69 = icmp eq ptr %i.fa, null
  br i1 %.not.i69, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i68
  store ptr %i.fa, ptr %9, align 8, !tbaa !25
  store i64 %i.fo, ptr %i.el, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i68, %.thread.i74
  store ptr %i.el, ptr %9, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71, %bb.ao, %bb.ap
  %i.fr = phi ptr [ %.pre.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71 ], [ %i.fa, %bb.ao ], [ %i.el, %bb.ap ], [ %i.fd, %bb.ak ]
  store i64 0, ptr %i.em, align 8, !tbaa !22
  store i8 0, ptr %i.fr, align 1, !tbaa !15
  %i.fs = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.el
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75
  %i.fu = load i64, ptr %i.el, align 8, !tbaa !15
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.fw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !27
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fw, i64 -24    ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr %5, i64 %i.fz
  store ptr %i.fx, ptr %i.ga, align 8, !tbaa !27
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.gb, ptr %i.b, align 8, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gc, align 8, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !25 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !15
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gc, align 8, !tbaa !27
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gj) #12
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.gk, ptr %5, align 8, !tbaa !27
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 -24    ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds i8, ptr %5, i64 %i.gn
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gp, align 8, !tbaa !86
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gq) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  store ptr %i.fw, ptr %4, align 8, !tbaa !27
  %i.gr = load i64, ptr %i.fy, align 8
  %i.gs = getelementptr inbounds i8, ptr %4, i64 %i.gr
  store ptr %i.fx, ptr %i.gs, align 8, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gb, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gu, align 8, !tbaa !27
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !25 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !15
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit81

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit81: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gu, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hb) #12
  store ptr %i.gk, ptr %4, align 8, !tbaa !27
  %i.hc = load i64, ptr %i.gm, align 8
  %i.hd = getelementptr inbounds i8, ptr %4, i64 %i.hc
  store ptr %i.gl, ptr %i.hd, align 8, !tbaa !27
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.he, align 8, !tbaa !86
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hf) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

.body47:                                          ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.aq

.body64:                                          ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.j, %.body64, %.body47, %bb.aa, %.body
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.ch, %.body ], [ %i.ao, %bb.j ], [ %i.ag, %bb.h ], [ %i.df, %.body47 ], [ %i.do, %bb.aa ], [ %i.eu, %.body64 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.g
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.aq ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
end_hunk_0
