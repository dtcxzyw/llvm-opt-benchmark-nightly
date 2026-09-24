Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z10showRenderR4DataRK7Options:bb.a
  %.pr = load i32, ptr %i.aa, align 4, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %.pr, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load i32, ptr %i.al, align 8, !tbaa !127
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !128
  tail call void @_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.am, i32 noundef %i.ao, i1 noundef zeroext false)
  %.pre19 = load i32, ptr %i.aa, align 4, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %.pre19, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.au = load i32, ptr %i.at, align 4, !tbaa !128
  tail call void @_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.as, i32 noundef %i.au, i1 noundef zeroext true)
  %.pr18 = load i32, ptr %i.aa, align 4, !tbaa !137
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi i32 [ %.pr18, %bb.i ], [ %i.ap, %bb.h ]
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %bb.k, label %_ZN4Data10loadPixelsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_Z20displayPalettePixelsRKSt6vectorIhSaIhEERK7Options(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %_ZN4Data10loadPixelsEv.exit.thread

_ZN4Data10loadPixelsEv.exit.thread:               ; preds = %_ZN4Data8loadFileEv.exit.i.i, %_ZN4Data10loadPixelsEv.exit, %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9showInfosR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !337, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21showSingleLineSummaryR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !338, !range !72, !noundef !73
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z10showErrorsRK4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.h = load i8, ptr %i.g, align 1, !tbaa !135, !range !72, !noundef !73
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z8showExifR4Data(ptr noundef nonnull align 8 dereferenceable(736) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !130, !range !72, !noundef !73
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !133, !range !72, !noundef !73
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.q = load i8, ptr %i.p, align 2, !tbaa !134, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 4, !tbaa !136, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @_Z14showHeaderInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !120, !range !72, !noundef !73
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Z14showColorStatsR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.z = load i8, ptr %i.y, align 2, !tbaa !132, !range !72, !noundef !73
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_Z11showPNGInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !339, !range !72, !noundef !73
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_Z14displayPaletteR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !139, !range !72, !noundef !73
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_Z17displayChunkNamesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !340, !range !72, !noundef !73
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_Z18displayFilterTypesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !341, !range !72, !noundef !73
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_Z13printZlibInfoR4Data(ptr noundef nonnull align 8 dereferenceable(736) %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !140, !range !72, !noundef !73
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_Z10showRenderR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.au = load i32, ptr %i.at, align 8, !tbaa !74
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Z9showErrorR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.Options, align 4            ; 31 uses
  %3 = alloca %"class.std::vector.3", align 8     ; 19 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %struct.Data, align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %2, i8 0, i64 13, i1 false)
  store i32 1, ptr %i.e, align 4, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i8 0, ptr %i.f, align 4, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 80, ptr %i.h, align 4, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not114421 = icmp sgt i32 %0, 1
  br i1 %.not114421, label %.lr.ph430, label %.thread243

.lr.ph430:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 35 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 33 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %.promoted = load i8, ptr %i.l, align 4
  %.promoted754 = load i8, ptr %i.m, align 1
  %.promoted764 = load i8, ptr %i.n, align 2
  %.promoted774 = load i8, ptr %i.o, align 1
  %.promoted784 = load i8, ptr %i.p, align 4
  %.promoted794 = load i8, ptr %i.q, align 1
  %.promoted804 = load i8, ptr %i.r, align 2
  %.promoted814 = load i8, ptr %i.s, align 1
  %.promoted824 = load i8, ptr %i.t, align 4
  %.promoted1340 = load i8, ptr %i.u, align 1
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond578.not, label %.thread243.loopexit, label %bb.c, !llvm.loop !342

bb.c:                                             ; preds = %.lr.ph430, %bb.b
  %.lcssa12231342 = phi i8 [ %.promoted1340, %.lr.ph430 ], [ %.lcssa12231341, %bb.b ] ; 10 uses
  %.lcssa726826 = phi i8 [ %.promoted824, %.lr.ph430 ], [ %.lcssa726825, %bb.b ] ; 9 uses
  %.lcssa725816 = phi i8 [ %.promoted814, %.lr.ph430 ], [ %.lcssa725815, %bb.b ] ; 9 uses
  %.lcssa724806 = phi i8 [ %.promoted804, %.lr.ph430 ], [ %.lcssa724805, %bb.b ] ; 9 uses
  %.lcssa723796 = phi i8 [ %.promoted794, %.lr.ph430 ], [ %.lcssa723795, %bb.b ] ; 9 uses
  %.lcssa722786 = phi i8 [ %.promoted784, %.lr.ph430 ], [ %.lcssa722785, %bb.b ] ; 9 uses
  %.lcssa721776 = phi i8 [ %.promoted774, %.lr.ph430 ], [ %.lcssa721775, %bb.b ] ; 9 uses
  %.lcssa720766 = phi i8 [ %.promoted764, %.lr.ph430 ], [ %.lcssa720765, %bb.b ] ; 9 uses
  %.lcssa719756 = phi i8 [ %.promoted754, %.lr.ph430 ], [ %.lcssa719755, %bb.b ] ; 9 uses
  %.lcssa718746 = phi i8 [ %.promoted, %.lr.ph430 ], [ %.lcssa718745, %bb.b ] ; 9 uses
  %.promoted351 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted351624, %bb.b ] ; 4 uses
  %.promoted348 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted348622, %bb.b ] ; 4 uses
  %.promoted345 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted345620, %bb.b ] ; 4 uses
  %.promoted342 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted342618, %bb.b ] ; 4 uses
  %.promoted339 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted339616, %bb.b ] ; 4 uses
  %.promoted336 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted336614, %bb.b ] ; 4 uses
  %.promoted333 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted333612, %bb.b ] ; 4 uses
  %.promoted330 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted330610, %bb.b ] ; 4 uses
  %.promoted327 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted327608, %bb.b ] ; 4 uses
  %.promoted324 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted324606, %bb.b ] ; 4 uses
  %.promoted321 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted321604, %bb.b ] ; 4 uses
  %.promoted318 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted318602, %bb.b ] ; 4 uses
  %.promoted315 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted315600, %bb.b ] ; 4 uses
  %.promoted312 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted312598, %bb.b ] ; 4 uses
  %.promoted309 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted309596, %bb.b ] ; 4 uses
  %.promoted306 = phi i8 [ 0, %.lr.ph430 ], [ %.promoted306594, %bb.b ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph430 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.089428 = phi i1 [ false, %.lr.ph430 ], [ %.392, %bb.b ] ; 6 uses
  %.lcssa295361426 = phi i8 [ 0, %.lr.ph430 ], [ %.lcssa295360, %bb.b ] ; 4 uses
  %.lcssa298370424 = phi i8 [ 0, %.lr.ph430 ], [ %.lcssa298369, %bb.b ] ; 4 uses
  %.lcssa301380422 = phi i8 [ 0, %.lr.ph430 ], [ %.lcssa301379, %bb.b ] ; 4 uses
  %i.ah = phi i32 [ 0, %.lr.ph430 ], [ %i.jr, %bb.b ] ; 11 uses
  %i.ai = phi i32 [ 80, %.lr.ph430 ], [ %i.jq, %bb.b ] ; 8 uses
  %i.aj = phi i32 [ 1, %.lr.ph430 ], [ %i.jp, %bb.b ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !47
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 %.lcssa12231342, ptr %i.u, align 1
  store i8 %.lcssa718746, ptr %i.l, align 4
  store i8 %.lcssa719756, ptr %i.m, align 1
  store i8 %.lcssa720766, ptr %i.n, align 2
  store i8 %.lcssa721776, ptr %i.o, align 1
  store i8 %.lcssa722786, ptr %i.p, align 4
  store i8 %.lcssa723796, ptr %i.q, align 1
  store i8 %.lcssa724806, ptr %i.r, align 2
  store i8 %.lcssa725816, ptr %i.s, align 1
  store i8 %.lcssa726826, ptr %i.t, align 4
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.244) #25
          to label %.noexc unwind label %.loopexit.split-lp257

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.an, ptr %i.d, align 8, !tbaa !81
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc125 unwind label %.loopexit256 ; 2 uses

.noexc125:                                        ; preds = %.noexc.i
  store ptr %i.ap, ptr %4, align 8, !tbaa !50
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !81
  store i64 %i.aq, ptr %i.j, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc125, %bb.e
  %i.ar = phi ptr [ %i.ap, %.noexc125 ], [ %i.j, %bb.e ] ; 2 uses
  switch i64 %i.an, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.al, align 1, !tbaa !42
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.at = load i64, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  store i64 %i.at, ptr %i.k, align 8, !tbaa !49
  %i.au = load ptr, ptr %4, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !49  ; 11 uses
  %i.ax = icmp ugt i64 %i.aw, 1
  br i1 %i.ax, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %4, align 8, !tbaa !50    ; 11 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !42
  %i.ba = icmp eq i8 %i.az, 45
  br i1 %i.ba, label %bb.j, label %bb.aw

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %.not = icmp eq i8 %i.bc, 45
  br i1 %.not, label %bb.aj, label %bb.k

bb.k:                                             ; preds = %bb.j
  %cond = icmp eq i64 %i.aw, 2
  br i1 %cond, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.k
  %i.bd = load i16, ptr %i.ay, align 1
  %i.be = icmp ne i16 %i.bd, 30765
  %i.bf = zext i1 %i.be to i32
  %.not246 = icmp eq i32 %i.bf, 0
  br i1 %.not246, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bg = load i16, ptr %i.ay, align 1
  %i.bh = icmp ne i16 %i.bg, 30253
  %i.bi = zext i1 %i.bh to i32
  %.not247 = icmp eq i32 %i.bi, 0
  br i1 %.not247, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bj = load i16, ptr %i.ay, align 1
  %i.bk = icmp ne i16 %i.bj, 29741
  %i.bl = zext i1 %i.bk to i32
  %bcmp.i.i128.fr = freeze i32 %i.bl
  %.not248 = icmp eq i32 %bcmp.i.i128.fr, 0
  br i1 %.not248, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread: ; preds = %bb.k, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread
  br label %.lr.ph

.loopexit256:                                     ; preds = %.noexc.i
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  store i8 %.lcssa718746, ptr %i.l, align 4
  store i8 %.lcssa719756, ptr %i.m, align 1
  store i8 %.lcssa720766, ptr %i.n, align 2
  store i8 %.lcssa721776, ptr %i.o, align 1
  store i8 %.lcssa722786, ptr %i.p, align 4
  store i8 %.lcssa723796, ptr %i.q, align 1
  store i8 %.lcssa724806, ptr %i.r, align 2
  store i8 %.lcssa725816, ptr %i.s, align 1
  store i8 %.lcssa726826, ptr %i.t, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

.loopexit.split-lp257:                            ; preds = %bb.d
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.l:                                             ; preds = %bb.ba, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  store i8 %.lcssa718746, ptr %i.l, align 4
  store i8 %.lcssa719756, ptr %i.m, align 1
  store i8 %.lcssa720766, ptr %i.n, align 2
  store i8 %.lcssa721776, ptr %i.o, align 1
  store i8 %.lcssa722786, ptr %i.p, align 4
  store i8 %.lcssa723796, ptr %i.q, align 1
  store i8 %.lcssa724806, ptr %i.r, align 2
  store i8 %.lcssa725816, ptr %i.s, align 1
  store i8 %.lcssa726826, ptr %i.t, align 4
  br label %bb.bb

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread
  %.190 = phi i1 [ %.089428, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.089428, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread ], [ %.089428, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread ] ; 2 uses
  %i.bn = load ptr, ptr @_ZSt4cout, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ai
  %i.bp = phi i8 [ %.promoted351, %.lr.ph ], [ %i.df, %bb.ai ] ; 20 uses
  %i.bq = phi i8 [ %.promoted348, %.lr.ph ], [ %i.dg, %bb.ai ] ; 20 uses
  %i.br = phi i8 [ %.promoted345, %.lr.ph ], [ %i.dh, %bb.ai ] ; 20 uses
  %i.bs = phi i8 [ %.promoted342, %.lr.ph ], [ %i.di, %bb.ai ] ; 20 uses
  %i.bt = phi i8 [ %.promoted339, %.lr.ph ], [ %i.dj, %bb.ai ] ; 20 uses
  %i.bu = phi i8 [ %.promoted336, %.lr.ph ], [ %i.dk, %bb.ai ] ; 20 uses
  %i.bv = phi i8 [ %.promoted333, %.lr.ph ], [ %i.dl, %bb.ai ] ; 21 uses
  %i.bw = phi i8 [ %.promoted330, %.lr.ph ], [ %i.dm, %bb.ai ] ; 21 uses
  %i.bx = phi i8 [ %.promoted327, %.lr.ph ], [ %i.dn, %bb.ai ] ; 20 uses
  %i.by = phi i8 [ %.promoted324, %.lr.ph ], [ %i.do, %bb.ai ] ; 21 uses
  %i.bz = phi i8 [ %.promoted321, %.lr.ph ], [ %i.dp, %bb.ai ] ; 21 uses
  %i.ca = phi i8 [ %.promoted318, %.lr.ph ], [ %i.dq, %bb.ai ] ; 21 uses
  %i.cb = phi i8 [ %.promoted315, %.lr.ph ], [ %i.dr, %bb.ai ] ; 21 uses
  %i.cc = phi i8 [ %.promoted312, %.lr.ph ], [ %i.ds, %bb.ai ] ; 21 uses
  %i.cd = phi i8 [ %.promoted309, %.lr.ph ], [ %i.dt, %bb.ai ] ; 21 uses
  %i.ce = phi i8 [ %.promoted306, %.lr.ph ], [ %i.du, %bb.ai ] ; 21 uses
  %.073303 = phi i64 [ 1, %.lr.ph ], [ %i.dy, %bb.ai ] ; 2 uses
  %i.cf = phi i8 [ %.lcssa295361426, %.lr.ph ], [ %i.dx, %bb.ai ] ; 19 uses
  %i.cg = phi i8 [ %.lcssa298370424, %.lr.ph ], [ %i.dw, %bb.ai ] ; 19 uses
  %i.ch = phi i8 [ %.lcssa301380422, %.lr.ph ], [ %i.dv, %bb.ai ] ; 19 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.073303
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !42  ; 3 uses
  switch i8 %i.cj, label %bb.af [
    i8 111, label %bb.ai
    i8 72, label %bb.o
    i8 105, label %bb.p
    i8 73, label %bb.q
    i8 101, label %bb.r
    i8 69, label %bb.s
    i8 118, label %bb.t
    i8 116, label %bb.u
    i8 115, label %bb.v
    i8 97, label %bb.w
    i8 112, label %bb.x
    i8 114, label %bb.y
    i8 108, label %bb.z
    i8 76, label %bb.aa
    i8 99, label %bb.ab
    i8 67, label %bb.ac
    i8 102, label %bb.ad
    i8 122, label %bb.ae
    i8 120, label %_ZNSolsEPFRSt8ios_baseS0_E.exit
  ]

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135, %bb.ah, %bb.ag, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store i8 %i.bv, ptr %i.u, align 1
  store i8 %i.ce, ptr %i.l, align 4
  store i8 %i.cd, ptr %i.m, align 1
  store i8 %i.cc, ptr %i.n, align 2
  store i8 %i.cb, ptr %i.o, align 1
  store i8 %i.ca, ptr %i.p, align 4
  store i8 %i.bz, ptr %i.q, align 1
  store i8 %i.by, ptr %i.r, align 2
  store i8 %i.bx, ptr %i.s, align 1
  store i8 %i.bw, ptr %i.t, align 4
  br label %bb.bb

bb.o:                                             ; preds = %bb.m
  br label %bb.ai

bb.p:                                             ; preds = %bb.m
  br label %bb.ai

bb.q:                                             ; preds = %bb.m
  br label %bb.ai

bb.r:                                             ; preds = %bb.m
  br label %bb.ai

bb.s:                                             ; preds = %bb.m
  br label %bb.ai

bb.t:                                             ; preds = %bb.m
  br label %bb.ai

bb.u:                                             ; preds = %bb.m
  br label %bb.ai

bb.v:                                             ; preds = %bb.m
  br label %bb.ai

bb.w:                                             ; preds = %bb.m
  br label %bb.ai

bb.x:                                             ; preds = %bb.m
  br label %bb.ai

bb.y:                                             ; preds = %bb.m
  br label %bb.ai

bb.z:                                             ; preds = %bb.m
  br label %bb.ai

bb.aa:                                            ; preds = %bb.m
  br label %bb.ai

bb.ab:                                            ; preds = %bb.m
  br label %bb.ai

bb.ac:                                            ; preds = %bb.m
  br label %bb.ai

bb.ad:                                            ; preds = %bb.m
  br label %bb.ai

bb.ae:                                            ; preds = %bb.m
  br label %bb.ai

_ZNSolsEPFRSt8ios_baseS0_E.exit:                  ; preds = %bb.m
  %i.cl = load i64, ptr %i.bo, align 8
  %i.cm = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !103
  %i.cp = and i32 %i.co, -75
  %i.cq = or disjoint i32 %i.cp, 8
  store i32 %i.cq, ptr %i.cn, align 8, !tbaa !104
  br label %bb.ai

bb.af:                                            ; preds = %bb.m
  store i8 %i.bu, ptr %i.v, align 1
  store i8 %i.bt, ptr %i.w, align 4
  store i8 %i.bs, ptr %i.x, align 1
  store i8 %i.br, ptr %i.y, align 2
  store i8 %i.bq, ptr %i.z, align 1
  store i8 %i.bp, ptr %i.aa, align 2
  %i.cr = icmp eq i64 %i.aw, 6
  br i1 %i.cr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132, label %switch.early.test

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132: ; preds = %bb.af
  %i.cs = load i32, ptr %i.ay, align 1
  %i.ct = xor i32 %i.cs, 1701326125
  %i.cu = getelementptr i8, ptr %i.ay, i64 4
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = zext i16 %i.cv to i32
  %i.cx = xor i32 %i.cw, 28780
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %.not249 = icmp eq i32 %i.da, 0
  br i1 %.not249, label %_ZNSolsEPFRSoS_E.exit, label %switch.early.test

switch.early.test:                                ; preds = %bb.af, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132
  switch i8 %i.cj, label %bb.ag [
    i8 104, label %_ZNSolsEPFRSoS_E.exit
    i8 63, label %_ZNSolsEPFRSoS_E.exit
  ]

bb.ag:                                            ; preds = %switch.early.test
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.218, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ag
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.cj)
          to label %bb.ah unwind label %bb.n      ; 2 uses

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.219, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135: ; preds = %bb.ah
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.n, !inline_history !2 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135, %switch.early.test, %switch.early.test, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132
  invoke void @_Z8showHelpv()
          to label %.critedge121 unwind label %bb.n

bb.ai:                                            ; preds = %bb.m, %_ZNSolsEPFRSt8ios_baseS0_E.exit, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p
  %i.df = phi i8 [ %i.bp, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bp, %bb.o ], [ %i.bp, %bb.q ], [ %i.bp, %bb.s ], [ %i.bp, %bb.u ], [ %i.bp, %bb.w ], [ %i.bp, %bb.y ], [ %i.bp, %bb.aa ], [ %i.bp, %bb.ac ], [ %i.bp, %bb.ae ], [ %i.bp, %bb.ad ], [ %i.bp, %bb.ab ], [ %i.bp, %bb.z ], [ %i.bp, %bb.x ], [ %i.bp, %bb.v ], [ %i.bp, %bb.t ], [ %i.bp, %bb.r ], [ %i.bp, %bb.p ], [ 1, %bb.m ] ; 3 uses
  %i.dg = phi i8 [ %i.bq, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bq, %bb.o ], [ %i.bq, %bb.q ], [ %i.bq, %bb.s ], [ %i.bq, %bb.u ], [ %i.bq, %bb.w ], [ %i.bq, %bb.y ], [ %i.bq, %bb.aa ], [ %i.bq, %bb.ac ], [ %i.bq, %bb.ae ], [ %i.bq, %bb.ad ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.z ], [ %i.bq, %bb.x ], [ %i.bq, %bb.v ], [ %i.bq, %bb.t ], [ %i.bq, %bb.r ], [ 1, %bb.p ], [ %i.bq, %bb.m ] ; 3 uses
  %i.dh = phi i8 [ %i.br, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.br, %bb.o ], [ 1, %bb.q ], [ %i.br, %bb.s ], [ %i.br, %bb.u ], [ %i.br, %bb.w ], [ %i.br, %bb.y ], [ %i.br, %bb.aa ], [ %i.br, %bb.ac ], [ %i.br, %bb.ae ], [ %i.br, %bb.ad ], [ %i.br, %bb.ab ], [ %i.br, %bb.z ], [ %i.br, %bb.x ], [ %i.br, %bb.v ], [ %i.br, %bb.t ], [ %i.br, %bb.r ], [ %i.br, %bb.p ], [ %i.br, %bb.m ] ; 3 uses
  %i.di = phi i8 [ %i.bs, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bs, %bb.o ], [ %i.bs, %bb.q ], [ %i.bs, %bb.s ], [ %i.bs, %bb.u ], [ %i.bs, %bb.w ], [ %i.bs, %bb.y ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.ac ], [ %i.bs, %bb.ae ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.ab ], [ %i.bs, %bb.z ], [ %i.bs, %bb.x ], [ %i.bs, %bb.v ], [ %i.bs, %bb.t ], [ 1, %bb.r ], [ %i.bs, %bb.p ], [ %i.bs, %bb.m ] ; 3 uses
  %i.dj = phi i8 [ %i.bt, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bt, %bb.o ], [ %i.bt, %bb.q ], [ 1, %bb.s ], [ %i.bt, %bb.u ], [ %i.bt, %bb.w ], [ %i.bt, %bb.y ], [ %i.bt, %bb.aa ], [ %i.bt, %bb.ac ], [ %i.bt, %bb.ae ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.z ], [ %i.bt, %bb.x ], [ %i.bt, %bb.v ], [ %i.bt, %bb.t ], [ %i.bt, %bb.r ], [ %i.bt, %bb.p ], [ %i.bt, %bb.m ] ; 3 uses
  %i.dk = phi i8 [ %i.bu, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bu, %bb.o ], [ %i.bu, %bb.q ], [ %i.bu, %bb.s ], [ 1, %bb.u ], [ %i.bu, %bb.w ], [ %i.bu, %bb.y ], [ %i.bu, %bb.aa ], [ %i.bu, %bb.ac ], [ %i.bu, %bb.ae ], [ %i.bu, %bb.ad ], [ %i.bu, %bb.ab ], [ %i.bu, %bb.z ], [ %i.bu, %bb.x ], [ %i.bu, %bb.v ], [ %i.bu, %bb.t ], [ %i.bu, %bb.r ], [ %i.bu, %bb.p ], [ %i.bu, %bb.m ] ; 3 uses
  %i.dl = phi i8 [ %i.bv, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bv, %bb.o ], [ %i.bv, %bb.q ], [ %i.bv, %bb.s ], [ %i.bv, %bb.u ], [ %i.bv, %bb.w ], [ %i.bv, %bb.y ], [ %i.bv, %bb.aa ], [ %i.bv, %bb.ac ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.ad ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.z ], [ %i.bv, %bb.x ], [ 1, %bb.v ], [ %i.bv, %bb.t ], [ %i.bv, %bb.r ], [ %i.bv, %bb.p ], [ %i.bv, %bb.m ] ; 3 uses
  %i.dm = phi i8 [ %i.bw, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bw, %bb.o ], [ %i.bw, %bb.q ], [ %i.bw, %bb.s ], [ %i.bw, %bb.u ], [ 1, %bb.w ], [ %i.bw, %bb.y ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.ae ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.z ], [ %i.bw, %bb.x ], [ %i.bw, %bb.v ], [ %i.bw, %bb.t ], [ %i.bw, %bb.r ], [ %i.bw, %bb.p ], [ %i.bw, %bb.m ] ; 3 uses
  %i.dn = phi i8 [ %i.bx, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ 1, %bb.o ], [ %i.bx, %bb.q ], [ %i.bx, %bb.s ], [ %i.bx, %bb.u ], [ %i.bx, %bb.w ], [ %i.bx, %bb.y ], [ %i.bx, %bb.aa ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ae ], [ %i.bx, %bb.ad ], [ %i.bx, %bb.ab ], [ %i.bx, %bb.z ], [ 1, %bb.x ], [ %i.bx, %bb.v ], [ %i.bx, %bb.t ], [ %i.bx, %bb.r ], [ %i.bx, %bb.p ], [ %i.bx, %bb.m ] ; 3 uses
  %i.do = phi i8 [ %i.by, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.by, %bb.o ], [ %i.by, %bb.q ], [ %i.by, %bb.s ], [ %i.by, %bb.u ], [ %i.by, %bb.w ], [ %i.by, %bb.y ], [ %i.by, %bb.aa ], [ %i.by, %bb.ac ], [ %i.by, %bb.ae ], [ %i.by, %bb.ad ], [ %i.by, %bb.ab ], [ %i.by, %bb.z ], [ 1, %bb.x ], [ %i.by, %bb.v ], [ %i.by, %bb.t ], [ %i.by, %bb.r ], [ %i.by, %bb.p ], [ %i.by, %bb.m ] ; 3 uses
  %i.dp = phi i8 [ %i.bz, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.bz, %bb.o ], [ %i.bz, %bb.q ], [ %i.bz, %bb.s ], [ %i.bz, %bb.u ], [ %i.bz, %bb.w ], [ %i.bz, %bb.y ], [ %i.bz, %bb.aa ], [ %i.bz, %bb.ac ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.ab ], [ 1, %bb.z ], [ %i.bz, %bb.x ], [ %i.bz, %bb.v ], [ %i.bz, %bb.t ], [ %i.bz, %bb.r ], [ %i.bz, %bb.p ], [ %i.bz, %bb.m ] ; 3 uses
  %i.dq = phi i8 [ %i.ca, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.ca, %bb.o ], [ %i.ca, %bb.q ], [ %i.ca, %bb.s ], [ %i.ca, %bb.u ], [ %i.ca, %bb.w ], [ %i.ca, %bb.y ], [ 1, %bb.aa ], [ %i.ca, %bb.ac ], [ %i.ca, %bb.ae ], [ %i.ca, %bb.ad ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.z ], [ %i.ca, %bb.x ], [ %i.ca, %bb.v ], [ %i.ca, %bb.t ], [ %i.ca, %bb.r ], [ %i.ca, %bb.p ], [ %i.ca, %bb.m ] ; 3 uses
  %i.dr = phi i8 [ %i.cb, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cb, %bb.o ], [ %i.cb, %bb.q ], [ %i.cb, %bb.s ], [ %i.cb, %bb.u ], [ %i.cb, %bb.w ], [ %i.cb, %bb.y ], [ %i.cb, %bb.aa ], [ 1, %bb.ac ], [ %i.cb, %bb.ae ], [ %i.cb, %bb.ad ], [ %i.cb, %bb.ab ], [ %i.cb, %bb.z ], [ %i.cb, %bb.x ], [ %i.cb, %bb.v ], [ %i.cb, %bb.t ], [ %i.cb, %bb.r ], [ %i.cb, %bb.p ], [ %i.cb, %bb.m ] ; 3 uses
  %i.ds = phi i8 [ %i.cc, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cc, %bb.o ], [ %i.cc, %bb.q ], [ %i.cc, %bb.s ], [ %i.cc, %bb.u ], [ %i.cc, %bb.w ], [ %i.cc, %bb.y ], [ %i.cc, %bb.aa ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ae ], [ 1, %bb.ad ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.z ], [ %i.cc, %bb.x ], [ %i.cc, %bb.v ], [ %i.cc, %bb.t ], [ %i.cc, %bb.r ], [ %i.cc, %bb.p ], [ %i.cc, %bb.m ] ; 3 uses
  %i.dt = phi i8 [ %i.cd, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cd, %bb.o ], [ %i.cd, %bb.q ], [ %i.cd, %bb.s ], [ %i.cd, %bb.u ], [ %i.cd, %bb.w ], [ %i.cd, %bb.y ], [ %i.cd, %bb.aa ], [ %i.cd, %bb.ac ], [ 1, %bb.ae ], [ %i.cd, %bb.ad ], [ %i.cd, %bb.ab ], [ %i.cd, %bb.z ], [ %i.cd, %bb.x ], [ %i.cd, %bb.v ], [ %i.cd, %bb.t ], [ %i.cd, %bb.r ], [ %i.cd, %bb.p ], [ %i.cd, %bb.m ] ; 3 uses
  %i.du = phi i8 [ 1, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.ce, %bb.o ], [ %i.ce, %bb.q ], [ %i.ce, %bb.s ], [ %i.ce, %bb.u ], [ %i.ce, %bb.w ], [ %i.ce, %bb.y ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.ac ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.ad ], [ %i.ce, %bb.ab ], [ %i.ce, %bb.z ], [ %i.ce, %bb.x ], [ %i.ce, %bb.v ], [ %i.ce, %bb.t ], [ %i.ce, %bb.r ], [ %i.ce, %bb.p ], [ %i.ce, %bb.m ] ; 3 uses
  %i.dv = phi i8 [ %i.ch, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.ch, %bb.o ], [ %i.ch, %bb.q ], [ %i.ch, %bb.s ], [ %i.ch, %bb.u ], [ %i.ch, %bb.w ], [ %i.ch, %bb.y ], [ %i.ch, %bb.aa ], [ %i.ch, %bb.ac ], [ %i.ch, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.ab ], [ %i.ch, %bb.z ], [ %i.ch, %bb.x ], [ %i.ch, %bb.v ], [ 1, %bb.t ], [ %i.ch, %bb.r ], [ %i.ch, %bb.p ], [ %i.ch, %bb.m ] ; 2 uses
  %i.dw = phi i8 [ %i.cg, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cg, %bb.o ], [ %i.cg, %bb.q ], [ %i.cg, %bb.s ], [ %i.cg, %bb.u ], [ %i.cg, %bb.w ], [ 1, %bb.y ], [ %i.cg, %bb.aa ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.ae ], [ %i.cg, %bb.ad ], [ %i.cg, %bb.ab ], [ %i.cg, %bb.z ], [ %i.cg, %bb.x ], [ %i.cg, %bb.v ], [ %i.cg, %bb.t ], [ %i.cg, %bb.r ], [ %i.cg, %bb.p ], [ %i.cg, %bb.m ] ; 2 uses
  %i.dx = phi i8 [ %i.cf, %_ZNSolsEPFRSt8ios_baseS0_E.exit ], [ %i.cf, %bb.o ], [ %i.cf, %bb.q ], [ %i.cf, %bb.s ], [ %i.cf, %bb.u ], [ %i.cf, %bb.w ], [ %i.cf, %bb.y ], [ %i.cf, %bb.aa ], [ %i.cf, %bb.ac ], [ %i.cf, %bb.ae ], [ %i.cf, %bb.ad ], [ 1, %bb.ab ], [ %i.cf, %bb.z ], [ %i.cf, %bb.x ], [ %i.cf, %bb.v ], [ %i.cf, %bb.t ], [ %i.cf, %bb.r ], [ %i.cf, %bb.p ], [ %i.cf, %bb.m ] ; 2 uses
  %i.dy = add nuw i64 %.073303, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.aw
  br i1 %exitcond.not, label %..critedge121.loopexit_crit_edge, label %bb.m, !llvm.loop !343

bb.aj:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !42
  %i.eb = icmp eq i8 %i.ea, 45
  br i1 %i.eb, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.aj
  %.not442 = icmp eq i64 %i.aw, 2
  br i1 %.not442, label %._crit_edge.i.i.i.thread, label %.lr.ph355

._crit_edge.i.i.i.thread:                         ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  store ptr %i.ad, ptr %5, align 8, !tbaa !47, !alias.scope !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !351
  store i64 0, ptr %i.c, align 8, !tbaa !81, !noalias !351
  br label %bb.an

.lr.ph355:                                        ; preds = %.preheader, %bb.ak
  %.072354 = phi i64 [ %i.ee, %bb.ak ], [ 2, %.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.072354
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !42
  %.not105 = icmp eq i8 %i.ed, 61
  br i1 %.not105, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph355
  %i.ee = add nuw i64 %.072354, 1                 ; 2 uses
  %exitcond577.not = icmp eq i64 %i.ee, %i.aw
  br i1 %exitcond577.not, label %.critedge, label %.lr.ph355, !llvm.loop !346

.critedge:                                        ; preds = %.lr.ph355, %bb.ak
  %.072.lcssa = phi i64 [ %i.aw, %bb.ak ], [ %.072354, %.lr.ph355 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ef = add i64 %.072.lcssa, -2                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  store ptr %i.ad, ptr %5, align 8, !tbaa !47, !alias.scope !352
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !352
  store i64 %i.ef, ptr %i.c, align 8, !tbaa !81, !noalias !352
  %i.eh = icmp ugt i64 %i.ef, 15
  br i1 %i.eh, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %.critedge
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc138 unwind label %bb.aq ; 2 uses

.noexc138:                                        ; preds = %.noexc10.i.i
  store ptr %i.ei, ptr %5, align 8, !tbaa !50, !alias.scope !352
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !81, !noalias !352
  store i64 %i.ej, ptr %i.ad, align 8, !tbaa !42, !alias.scope !352
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc138, %.critedge
  %i.ek = phi ptr [ %i.ei, %.noexc138 ], [ %i.ad, %.critedge ] ; 2 uses
  switch i64 %i.ef, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !42
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !42
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr nonnull align 1 %i.eg, i64 %i.ef, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i.thread, %bb.am, %bb.al, %._crit_edge.i.i.i
  %.072.lcssa677679 = phi i64 [ 2, %._crit_edge.i.i.i.thread ], [ %.072.lcssa, %bb.am ], [ %.072.lcssa, %bb.al ], [ %.072.lcssa, %._crit_edge.i.i.i ]
  %i.em = load i64, ptr %i.c, align 8, !tbaa !81, !noalias !352 ; 2 uses
  store i64 %i.em, ptr %i.ae, align 8, !tbaa !49, !alias.scope !352
  %i.en = load ptr, ptr %5, align 8, !tbaa !50, !alias.scope !352
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ep = add i64 %.072.lcssa677679, 1            ; 3 uses
  %i.eq = load i64, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %.not106 = icmp ult i64 %i.ep, %i.eq
  br i1 %.not106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139, label %._crit_edge.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139: ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  store ptr %i.af, ptr %6, align 8, !tbaa !47, !alias.scope !353
  %i.er = load ptr, ptr %4, align 8, !tbaa !50, !noalias !353
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep ; 2 uses
  %i.et = sub nuw i64 %i.eq, %i.ep                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !353
  store i64 %i.et, ptr %i.b, align 8, !tbaa !81, !noalias !353
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc10.i.i142, label %._crit_edge.i.i.i141

.noexc10.i.i142:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc144 unwind label %bb.ar ; 2 uses

.noexc144:                                        ; preds = %.noexc10.i.i142
  store ptr %i.ev, ptr %6, align 8, !tbaa !50, !alias.scope !353
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !353
  store i64 %i.ew, ptr %i.af, align 8, !tbaa !42, !alias.scope !353
  br label %._crit_edge.i.i.i141

._crit_edge.i.i.i141:                             ; preds = %.noexc144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139
  %i.ex = phi ptr [ %i.ev, %.noexc144 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i139 ] ; 2 uses
  switch i64 %i.et, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %.thread231
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i141
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !42
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !42
  br label %.thread231

bb.ap:                                            ; preds = %._crit_edge.i.i.i141
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %.thread231

.thread231:                                       ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i141
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !353 ; 2 uses
  store i64 %i.ez, ptr %i.ag, align 8, !tbaa !49, !alias.scope !353
  %i.fa = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !353
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store i8 0, ptr %i.fb, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !353
  br label %.critedge124

._crit_edge.i.i146:                               ; preds = %bb.an
  store ptr %i.af, ptr %6, align 8, !tbaa !47
  store i64 0, ptr %i.ag, align 8, !tbaa !49
  store i8 0, ptr %i.af, align 8, !tbaa !42
  br label %.critedge124

.critedge124:                                     ; preds = %.thread231, %._crit_edge.i.i146
  %i.fc = load i64, ptr %i.ae, align 8, !tbaa !49 ; 2 uses
  %cond251 = icmp eq i64 %i.fc, 4
  br i1 %cond251, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge124
  %i.fd = load ptr, ptr %5, align 8, !tbaa !50    ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = icmp ne i32 %i.fe, 1886152040
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_Z8showHelpv()
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239 unwind label %bb.as

bb.aq:                                            ; preds = %.noexc10.i.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  store i8 %.lcssa718746, ptr %i.l, align 4
  store i8 %.lcssa719756, ptr %i.m, align 1
  store i8 %.lcssa720766, ptr %i.n, align 2
  store i8 %.lcssa721776, ptr %i.o, align 1
  store i8 %.lcssa722786, ptr %i.p, align 4
  store i8 %.lcssa723796, ptr %i.q, align 1
  store i8 %.lcssa724806, ptr %i.r, align 2
  store i8 %.lcssa725816, ptr %i.s, align 1
  store i8 %.lcssa726826, ptr %i.t, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

bb.ar:                                            ; preds = %.noexc10.i.i142
  %i.fj = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  store i8 %.lcssa718746, ptr %i.l, align 4
  store i8 %.lcssa719756, ptr %i.m, align 1
  store i8 %.lcssa720766, ptr %i.n, align 2
  store i8 %.lcssa721776, ptr %i.o, align 1
  store i8 %.lcssa722786, ptr %i.p, align 4
  store i8 %.lcssa723796, ptr %i.q, align 1
  store i8 %.lcssa724806, ptr %i.r, align 2
  store i8 %.lcssa725816, ptr %i.s, align 1
  store i8 %.lcssa726826, ptr %i.t, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fk = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  br label %bb.av

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fl = load i32, ptr %i.fd, align 1
  %i.fm = icmp ne i32 %i.fl, 1701080941
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232
  %i.fp = load i64, ptr %i.ag, align 8, !tbaa !49 ; 4 uses
  switch i64 %i.fp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %i.fq = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 1
  %i.fs = xor i32 %i.fr, 1768125281
  %i.ft = getelementptr i8, ptr %i.fq, i64 4
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i32
  %i.fw = xor i32 %i.fv, 105
  %i.fx = or i32 %i.fs, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %.pre = load ptr, ptr %6, align 8, !tbaa !50
  %bcmp.i154 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.223, i64 %i.fp)
  %i.gb = icmp eq i32 %bcmp.i154, 0
  %spec.select834 = select i1 %i.gb, i32 1, i32 %i.ah
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153
  %bcmp.i156 = call i32 @bcmp(ptr nonnull %i.fq, ptr nonnull @.str.224, i64 %i.fp)
  %i.gc = icmp eq i32 %bcmp.i156, 0
  %spec.select835 = select i1 %i.gc, i32 2, i32 %i.ah
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread
  %.pre625 = load ptr, ptr %6, align 8, !tbaa !50
  %bcmp.i158 = call i32 @bcmp(ptr %.pre625, ptr nonnull @.str.5, i64 %i.fp)
  %i.gd = icmp eq i32 %bcmp.i158, 0
  %spec.select = select i1 %i.gd, i32 3, i32 %i.ah
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232
  %i.ge = phi i32 [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit153 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159 ], [ %spec.select835, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit157 ], [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread232 ], [ %spec.select834, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit155 ] ; 2 uses
  %i.gf = load i32, ptr %i.fd, align 1
  %i.gg = icmp ne i32 %i.gf, 1702521203
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit151.thread233
  %i.gj = invoke noundef i32 @_Z8strtovalIiET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.at unwind label %bb.au     ; 2 uses

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %i.gk = add i32 %i.gj, -1
  %or.cond11 = icmp ult i32 %i.gk, 4096
  %spec.select440 = select i1 %or.cond11, i32 %i.gj, i32 %i.ai
  %.pre626 = load i64, ptr %i.ae, align 8, !tbaa !49
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %i.gl = landingpad { ptr, i32 }
          cleanup
  store i8 %.lcssa12231342, ptr %i.u, align 1
  br label %bb.av

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238: ; preds = %bb.at, %.critedge124
  %i.gm = phi i64 [ %i.fc, %.critedge124 ], [ %.pre626, %bb.at ]
  %i.gn = phi i32 [ %i.ai, %.critedge124 ], [ %spec.select440, %bb.at ] ; 5 uses
  %i.go = phi i32 [ %i.ah, %.critedge124 ], [ %i.ge, %bb.at ] ; 5 uses
  %i.gp = icmp eq i64 %i.gm, 6
  br i1 %i.gp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread238
  %i.gq = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = xor i32 %i.gr, 1836216166
  %i.gt = getelementptr i8, ptr %i.gq, i64 4
  %i.gu = load i16, ptr %i.gt, align 1
  %i.gv = zext i16 %i.gu to i32
  %i.gw = xor i32 %i.gv, 29793
  %i.gx = or i32 %i.gs, %i.gw
  %i.gy = icmp ne i32 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  %i.hb = load i64, ptr %i.ag, align 8
  %cond253 = icmp eq i64 %i.hb, 3
  %or.cond = select i1 %i.ha, i1 %cond253, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %i.hc = load ptr, ptr %6, align 8, !tbaa !50    ; 6 uses
  %i.hd = load i16, ptr %i.hc, align 1
  %i.he = xor i16 %i.hd, 26989
  %i.hf = getelementptr i8, ptr %i.hc, i64 2
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i16
  %i.hi = xor i16 %i.hh, 120
  %i.hj = or i16 %i.he, %i.hi
  %i.hk = icmp ne i16 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.hn = load i16, ptr %i.hc, align 1
  %i.ho = xor i16 %i.hn, 25960
  %i.hp = getelementptr i8, ptr %i.hc, i64 2
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i16
  %i.hs = xor i16 %i.hr, 120
  %i.ht = or i16 %i.ho, %i.hs
  %i.hu = icmp ne i16 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit167.thread241: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread240
  %i.hx = load i16, ptr %i.hc, align 1
  %i.hy = xor i16 %i.hx, 26978
  %i.hz = getelementptr i8, ptr %i.hc, i64 2
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i16
  %i.ic = xor i16 %i.ib, 110
  %i.id = or i16 %i.hy, %i.ic
  %i.ie = icmp ne i16 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  %spec.select441 = select i1 %i.ig, i32 2, i32 %i.aj
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread239

end_hunk_0
begin_hunk_1_@main:bb.a
  %i.mv = load ptr, ptr %i.kf, align 8, !tbaa !84
  %i.mw = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = icmp ugt i64 %i.mz, 32
  br i1 %i.na, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZN4DataD2Ev.exit.peel, %_ZN4DataD2Ev.exit
  %i.nb = phi ptr [ %i.pi, %_ZN4DataD2Ev.exit ], [ %i.mw, %_ZN4DataD2Ev.exit.peel ]
  %.0438 = phi i64 [ %i.pg, %_ZN4DataD2Ev.exit ], [ 1, %_ZN4DataD2Ev.exit.peel ] ; 3 uses
  br i1 %i.kb, label %_ZNSolsEPFRSoS_E.exit193, label %bb.bs

bb.bs:                                            ; preds = %.peel.next
  %i.nc = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.nd = getelementptr i8, ptr %i.nc, i64 -24
  %i.ne = load i64, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 240
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i207 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i207, label %.loopexit580.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208

.loopexit580.invoke:                              ; preds = %bb.bs, %bb.bv, %bb.bk
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.loopexit580.cont unwind label %.loopexit.split-lp

.loopexit580.cont:                                ; preds = %.loopexit580.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208: ; preds = %bb.bs
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56
  %i.nj = load i8, ptr %i.ni, align 8, !tbaa !41
  %.not.i1.i.i209 = icmp eq i8 %i.nj, 0
  br i1 %.not.i1.i.i209, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 67
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nh)
          to label %.noexc213 unwind label %.loopexit255.loopexit

.noexc213:                                        ; preds = %bb.bu
  %i.nm = load ptr, ptr %i.nh, align 8, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = invoke noundef signext i8 %i.no(ptr noundef nonnull align 8 dereferenceable(570) %i.nh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210 unwind label %.loopexit255.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210: ; preds = %.noexc213, %bb.bt
  %.0.i.i.i211 = phi i8 [ %i.nl, %bb.bt ], [ %i.np, %.noexc213 ]
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i211)
          to label %.noexc215 unwind label %.loopexit255.loopexit

.noexc215:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210
  %i.nr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nq)
          to label %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge unwind label %.loopexit255.loopexit ; 0 uses

.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge:     ; preds = %.noexc215
  %.pre632 = load ptr, ptr %3, align 8, !tbaa !85
  br label %_ZNSolsEPFRSoS_E.exit193

.loopexit255.loopexit:                            ; preds = %.noexc226, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221, %.noexc224, %bb.bx, %.noexc215, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210, %.noexc213, %bb.bu, %bb.by, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSolsEPFRSoS_E.exit193
  %lpad.loopexit581 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit255

.loopexit255.loopexit.split-lp:                   ; preds = %_ZNSolsEPFRSoS_E.exit193.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %bb.bm, %.noexc224.peel, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel, %.noexc226.peel, %bb.bn
  %lpad.loopexit.split-lp582 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit255

.loopexit.split-lp:                               ; preds = %.loopexit580.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit255

_ZNSolsEPFRSoS_E.exit193:                         ; preds = %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge, %.peel.next
  %i.ns = phi ptr [ %.pre632, %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge ], [ %i.nb, %.peel.next ]
  %i.nt = getelementptr inbounds nuw [32 x i8], ptr %i.ns, i64 %.0438 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !50
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !49
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.nu, i64 noundef %i.nw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit255.loopexit

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSolsEPFRSoS_E.exit193
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196 unwind label %.loopexit255.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %i.kb, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.nz = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.oa = getelementptr i8, ptr %i.nz, i64 -24
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 240
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i218 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i218, label %.loopexit580.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219: ; preds = %bb.bv
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %i.og = load i8, ptr %i.of, align 8, !tbaa !41
  %.not.i1.i.i220 = icmp eq i8 %i.og, 0
  br i1 %.not.i1.i.i220, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 67
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221

bb.bx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oe)
          to label %.noexc224 unwind label %.loopexit255.loopexit

.noexc224:                                        ; preds = %bb.bx
  %i.oj = load ptr, ptr %i.oe, align 8, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef signext i8 %i.ol(ptr noundef nonnull align 8 dereferenceable(570) %i.oe, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221 unwind label %.loopexit255.loopexit, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221: ; preds = %.noexc224, %bb.bw
  %.0.i.i.i222 = phi i8 [ %i.oi, %bb.bw ], [ %i.om, %.noexc224 ]
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i222)
          to label %.noexc226 unwind label %.loopexit255.loopexit

.noexc226:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221
  %i.oo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.on)
          to label %_ZNSolsEPFRSoS_E.exit198 unwind label %.loopexit255.loopexit ; 0 uses

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZNSolsEPFRSoS_E.exit198 unwind label %.loopexit255.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit198:                         ; preds = %bb.by, %.noexc226
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.oq = load ptr, ptr %3, align 8, !tbaa !85
  %i.or = getelementptr inbounds nuw [32 x i8], ptr %i.oq, i64 %.0438
  invoke void @_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.or)
          to label %bb.bz unwind label %.loopexit584

bb.bz:                                            ; preds = %_ZNSolsEPFRSoS_E.exit198
  invoke void @_Z9showInfosR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 4 dereferenceable(37) %2)
          to label %bb.ca unwind label %.loopexit588

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.lg) #26
  %i.os = load ptr, ptr %i.lh, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ot = load ptr, ptr %i.li, align 8, !tbaa !107
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.os to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ow) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.cb, %bb.ca
  %i.ox = load ptr, ptr %i.lj, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.oy = load ptr, ptr %i.lk, align 8, !tbaa !107
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pb) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.cc, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.pc = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.ll
  br i1 %i.pd, label %_ZN4DataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  %i.pe = load i64, ptr %i.ll, align 8, !tbaa !42
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #27
  br label %_ZN4DataD2Ev.exit

_ZN4DataD2Ev.exit:                                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.pg = add nuw i64 %.0438, 1                   ; 2 uses
  %i.ph = load ptr, ptr %i.kf, align 8, !tbaa !84
  %i.pi = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 5
  %i.pn = icmp ult i64 %i.pg, %i.pm
  br i1 %i.pn, label %.peel.next, label %.loopexit, !llvm.loop !350

.loopexit584:                                     ; preds = %_ZNSolsEPFRSoS_E.exit198
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp585:                            ; preds = %_ZNSolsEPFRSoS_E.exit198.peel
  %lpad.loopexit.split-lp586 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit588:                                     ; preds = %bb.bz
  %lpad.loopexit590 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp589:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp591 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.split-lp589, %.loopexit588
  %lpad.phi592 = phi { ptr, i32 } [ %lpad.loopexit590, %.loopexit588 ], [ %lpad.loopexit.split-lp591, %.loopexit.split-lp589 ]
  call void @_ZN4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %7) #26
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit584, %.loopexit.split-lp585, %bb.cd
  %.pn115 = phi { ptr, i32 } [ %lpad.phi592, %bb.cd ], [ %lpad.loopexit, %.loopexit584 ], [ %lpad.loopexit.split-lp586, %.loopexit.split-lp585 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit255

.loopexit261:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  store i8 %.lcssa12231341, ptr %i.u, align 1
  store i8 %.lcssa718745, ptr %i.l, align 4
  store i8 %.lcssa719755, ptr %i.m, align 1
  store i8 %.lcssa720765, ptr %i.n, align 2
  store i8 %.lcssa721775, ptr %i.o, align 1
  store i8 %.lcssa722785, ptr %i.p, align 4
  store i8 %.lcssa723795, ptr %i.q, align 1
  store i8 %.lcssa724805, ptr %i.r, align 2
  store i8 %.lcssa725815, ptr %i.s, align 1
  store i8 %.lcssa726825, ptr %i.t, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4DataD2Ev.exit, %_ZN4DataD2Ev.exit.peel, %.loopexit261, %_ZNSolsEPFRSoS_E.exit191
  %i.po = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !84 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.po, %i.pq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.po, %.loopexit ] ; 3 uses
  %i.pr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  br i1 %i.pt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !42
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.pw, %i.pq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.px = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.po, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.px, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !97
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qc) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 0

.loopexit255:                                     ; preds = %.loopexit255.loopexit, %.loopexit255.loopexit.split-lp, %.loopexit.split-lp, %bb.ce, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %.pn118 = phi { ptr, i32 } [ %i.ky, %bb.bg ], [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn115, %bb.ce ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit581, %.loopexit255.loopexit ], [ %lpad.loopexit.split-lp582, %.loopexit255.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn118
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_Z8strtovalIiET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !17
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !42
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #26
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !17
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i32 %i.c

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.x
}

declare noundef i32 @_Z15lodepng_set_iccP11LodePNGInfoPKcPKhj(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z16lodepng_set_exifP11LodePNGInfoPKhj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !42
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  tail call void @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !355

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !356

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #18

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, bool>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, bool>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !144
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !95
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !95
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !42
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !95
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8, !tbaa !50
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49   ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #26 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_:bb.a
  br i1 %.not.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i44 = trunc nsw i64 %.08.i.i.i.i43 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41
  %.0.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38 ], [ %.0.i6.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !141
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !80
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.h, ptr %i.a, align 8, !tbaa !81
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !50
  %i.k = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.k, ptr %i.e, align 8, !tbaa !42
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !42
  store i8 %i.m, ptr %i.l, align 1, !tbaa !42
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !49
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.v, align 8, !tbaa !149
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !105 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !357

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !50
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, bool>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, bool>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %0, ptr %5, align 8, !tbaa !144
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !80
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8, !tbaa !50
  %i.m = load i64, ptr %i.g, align 8, !tbaa !42
  store i64 %i.m, ptr %i.e, align 8, !tbaa !42
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8, !tbaa !49
  store ptr %i.g, ptr %i.d, align 8, !tbaa !50
  store i64 0, ptr %i.p, align 8, !tbaa !49
  store i8 0, ptr %i.g, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.r, align 8, !tbaa !149
  store ptr %i.a, ptr %i.o, align 8, !tbaa !147
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !95
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !95
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !42
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %.sroa.0.011
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !358

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !42
  store i8 %i.s, ptr %i.g, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !99
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !358

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !42
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !358

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.ad, ptr %1, align 1, !tbaa !42
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !358

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !42
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !99
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !358

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !42
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !99
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !358

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.au, ptr %1, align 1, !tbaa !42
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !100   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !358

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !42
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !42
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !358

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !42
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !42
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !358

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !42
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !42
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #27
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !100
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !107
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !95
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !124  ; 2 uses
  %i.i = load i16, ptr %2, align 2, !tbaa !124    ; 2 uses
  %i.j = icmp ult i16 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.i, %i.h
  br i1 %i.k, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !125  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !125  ; 2 uses
  %i.p = icmp ult i16 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i:         ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.q = icmp ult i16 %i.o, %i.m
  br i1 %i.q, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %bb.e

bb.e:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i16, ptr %i.r, align 2, !tbaa !124  ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !124  ; 2 uses
  %i.v = icmp ult i16 %i.t, %i.u
  br i1 %i.v, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i16 %i.u, %i.t
  br i1 %i.w, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  %i.y = load i16, ptr %i.x, align 2, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !125
  %i.ab = icmp ult i16 %i.y, %i.aa
  br i1 %i.ab, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44: ; preds = %bb.f, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i, %bb.d, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit, %bb.b
  %i.ac = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %2) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i16, ptr %2, align 2, !tbaa !124   ; 6 uses
  %i.ah = load i16, ptr %i.af, align 2, !tbaa !124 ; 2 uses
  %i.ai = icmp ult i16 %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ult i16 %i.ah, %i.ag
  br i1 %i.aj, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10:        ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !125 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.an = load i16, ptr %i.am, align 2, !tbaa !125 ; 2 uses
  %i.ao = icmp ult i16 %i.al, %i.an
  br i1 %i.ao, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10
  %i.ap = icmp ult i16 %i.an, %i.al
  br i1 %i.ap, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16, label %bb.i

bb.i:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.as = load i16, ptr %i.aq, align 2, !tbaa !124 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !124 ; 2 uses
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp ult i16 %i.at, %i.as
  br i1 %i.av, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12: ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !125
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !125
  %i.ba = icmp ult i16 %i.ax, %i.az
  br i1 %i.ba, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread: ; preds = %bb.i, %bb.g, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i10, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !105 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !124 ; 2 uses
  %i.bh = icmp ult i16 %i.bg, %i.ag
  br i1 %i.bh, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ult i16 %i.ag, %i.bg
  br i1 %i.bi, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13:        ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 34
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !125 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !125 ; 2 uses
  %i.bn = icmp ult i16 %i.bk, %i.bm
  br i1 %i.bn, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13
  %i.bo = icmp ult i16 %i.bm, %i.bk
  br i1 %i.bo, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %bb.m

bb.m:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.br = load i16, ptr %i.bp, align 2, !tbaa !124 ; 2 uses
  %i.bs = load i16, ptr %i.bq, align 2, !tbaa !124 ; 2 uses
  %i.bt = icmp ult i16 %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp ult i16 %i.bs, %i.br
  br i1 %i.bu, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 38
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !125
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !125
  %i.bz = icmp ult i16 %i.bw, %i.by
  br i1 %i.bz, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread: ; preds = %bb.m, %bb.k, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i13, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !141
  %i.cc = icmp eq ptr %i.cb, null                 ; 2 uses
  %spec.select = select i1 %i.cc, ptr null, ptr %1
  %spec.select53 = select i1 %i.cc, ptr %i.be, ptr %1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48: ; preds = %bb.n, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i14, %bb.l, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15
  %i.cd = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %2) ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0
  %i.cf = extractvalue { ptr, ptr } %i.cd, 1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16:        ; preds = %bb.j, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i11, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !125 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !125 ; 2 uses
  %i.ck = icmp ult i16 %i.ch, %i.cj
  br i1 %i.ck, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16
  %i.cl = icmp ult i16 %i.cj, %i.ch
  br i1 %i.cl, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = load i16, ptr %i.cm, align 2, !tbaa !124 ; 2 uses
  %i.cp = load i16, ptr %i.cn, align 2, !tbaa !124 ; 2 uses
  %i.cq = icmp ult i16 %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp ult i16 %i.cp, %i.co
  br i1 %i.cr, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18: ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !125
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !125
  %i.cw = icmp ult i16 %i.ct, %i.cv
  br i1 %i.cw, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread: ; preds = %bb.h, %bb.o, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i16, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !105 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %1
  br i1 %i.cz, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread
  %i.da = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !124 ; 2 uses
  %i.dd = icmp ult i16 %i.ag, %i.dc
  br i1 %i.dd, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = icmp ult i16 %i.dc, %i.ag
  br i1 %i.de, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i19

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i19:        ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !125 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 34
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !125 ; 2 uses
  %i.dj = icmp ult i16 %i.dg, %i.di
  br i1 %i.dj, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i20

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i20:       ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i19
  %i.dk = icmp ult i16 %i.di, %i.dg
  br i1 %i.dk, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52, label %bb.s

bb.s:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i20
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %i.dn = load i16, ptr %i.dl, align 2, !tbaa !124 ; 2 uses
  %i.do = load i16, ptr %i.dm, align 2, !tbaa !124 ; 2 uses
  %i.dp = icmp ult i16 %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = icmp ult i16 %i.do, %i.dn
  br i1 %i.dq, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21: ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !125
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 38
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !125
  %i.dv = icmp ult i16 %i.ds, %i.du
  br i1 %i.dv, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread: ; preds = %bb.s, %bb.q, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i19, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !141
  %i.dy = icmp eq ptr %i.dx, null                 ; 2 uses
  %spec.select54 = select i1 %i.dy, ptr null, ptr %i.da
  %spec.select55 = select i1 %i.dy, ptr %1, ptr %i.da
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52: ; preds = %bb.t, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i20, %bb.r, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21
  %i.dz = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %2) ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread, %bb.p, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17, %bb.e, %bb.c, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44
  %.sroa.042.2 = phi ptr [ %i.ad, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44 ], [ %1, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17 ], [ null, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit ], [ %spec.select54, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread ], [ %1, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18 ], [ %i.ce, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48 ], [ %i.bc, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread ], [ %1, %bb.p ], [ %i.ea, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52 ], [ null, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread ], [ %spec.select, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread ], [ null, %bb.e ], [ null, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ null, %bb.c ]
  %.sroa.12.2 = phi ptr [ %i.ae, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread44 ], [ null, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i17 ], [ %i.f, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit ], [ %spec.select55, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread ], [ null, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18 ], [ %i.cf, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread48 ], [ %i.bc, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit12.thread ], [ null, %bb.p ], [ %i.eb, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit21.thread52 ], [ %i.cy, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit18.thread ], [ %spec.select53, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit15.thread ], [ %i.f, %bb.e ], [ %i.f, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ %i.f, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.042.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02328 = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %.not29 = icmp eq ptr %.02328, null
  br i1 %.not29, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i16, ptr %1, align 2, !tbaa !124    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.i = load i16, ptr %i.h, align 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread
  %.02330 = phi ptr [ %.02328, %.lr.ph ], [ %.023, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02330, i64 32
  %i.k = load i16, ptr %i.j, align 2, !tbaa !124  ; 2 uses
  %i.l = icmp ult i16 %i.c, %i.k
  br i1 %i.l, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i16 %i.k, %i.c
  br i1 %i.m, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02330, i64 34
  %i.o = load i16, ptr %i.n, align 2, !tbaa !125  ; 2 uses
  %i.p = icmp ult i16 %i.e, %i.o
  br i1 %i.p, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i:         ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.q = icmp ult i16 %i.o, %i.e
  br i1 %i.q, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25, label %bb.d

bb.d:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02330, i64 36
  %i.s = load i16, ptr %i.r, align 2, !tbaa !124  ; 2 uses
  %i.t = icmp ult i16 %i.g, %i.s
  br i1 %i.t, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ult i16 %i.s, %i.g
  br i1 %i.u, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02330, i64 38
  %i.w = load i16, ptr %i.v, align 2, !tbaa !125
  %i.x = icmp ult i16 %i.i, %i.w
  br i1 %i.x, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25: ; preds = %bb.e, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i, %bb.c, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i, %bb.b, %bb.d, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25
  %.sink = phi i64 [ 24, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25 ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ 16, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit ]
  %i.y = phi i1 [ false, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread25 ], [ true, %bb.d ], [ true, %bb.b ], [ true, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ true, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02330, i64 %.sink
  %.023 = load ptr, ptr %i.z, align 8, !tbaa !105 ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !359

._crit_edge:                                      ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.thread
  br i1 %i.y, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.022.lcssa46 = phi ptr [ %.02330, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  %i.ac = icmp eq ptr %.022.lcssa46, %i.ab
  br i1 %i.ac, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.022.lcssa46) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.022.lcssa45 = phi ptr [ %.022.lcssa46, %bb.f ], [ %.02330, %._crit_edge ] ; 4 uses
  %.sroa.08.0 = phi ptr [ %i.ad, %bb.f ], [ %.02330, %._crit_edge ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !124 ; 2 uses
  %i.ag = load i16, ptr %1, align 2, !tbaa !124   ; 2 uses
  %i.ah = icmp ult i16 %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i16 %i.ag, %i.af
  br i1 %i.ai, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5:         ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 34
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !125 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !125 ; 2 uses
  %i.an = icmp ult i16 %i.ak, %i.am
  br i1 %i.an, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i6

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i6:        ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5
  %i.ao = icmp ult i16 %i.am, %i.ak
  br i1 %i.ao, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27, label %bb.i

bb.i:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i6
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i16, ptr %i.ap, align 2, !tbaa !124 ; 2 uses
  %i.as = load i16, ptr %i.aq, align 2, !tbaa !124 ; 2 uses
  %i.at = icmp ult i16 %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp ult i16 %i.as, %i.ar
  br i1 %i.au, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 38
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !125
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !125
  %i.az = icmp ult i16 %i.aw, %i.ay
  br i1 %i.az, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread, label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27: ; preds = %bb.j, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i6, %bb.h, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7
  br label %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread

_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread: ; preds = %bb.i, %bb.g, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7, %._crit_edge.thread, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27
  %.sroa.021.0 = phi ptr [ %.sroa.08.0, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27 ], [ null, %._crit_edge.thread ], [ null, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7 ], [ null, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5 ], [ null, %bb.g ], [ null, %bb.i ]
  %.sroa.4.0 = phi ptr [ null, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7.thread27 ], [ %.022.lcssa46, %._crit_edge.thread ], [ %.022.lcssa45, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit7 ], [ %.022.lcssa45, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i5 ], [ %.022.lcssa45, %bb.g ], [ %.022.lcssa45, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !95
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81
  %i.i = load i64, ptr %2, align 8, !tbaa !81
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !105 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !81     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !360

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !81
  %.pre82 = load i64, ptr %2, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !81     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !81
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !141
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !105 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !360

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !81
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !105 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !141
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !105 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !105 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !360

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmbESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !47
  %i.t = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !81
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !50
  %i.y = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.y, ptr %i.s, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !42
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !42
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !49
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !47, !alias.scope !368, !noalias !369
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !369, !noalias !368 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !49, !alias.scope !369, !noalias !368 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !370
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !368, !noalias !369
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !42, !alias.scope !369, !noalias !368
  store i64 %i.an, ptr %i.af, align 8, !tbaa !42, !alias.scope !368, !noalias !369
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !49, !alias.scope !369, !noalias !368
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !49, !alias.scope !368, !noalias !369
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !369, !noalias !368
  store i64 0, ptr %i.ap, align 8, !tbaa !49, !alias.scope !369, !noalias !368
  store i8 0, ptr %i.ah, align 8, !tbaa !42, !alias.scope !369, !noalias !368
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !364

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !47, !alias.scope !371, !noalias !372
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !372, !noalias !371 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !49, !alias.scope !372, !noalias !371 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !373
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !50, !alias.scope !371, !noalias !372
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !42, !alias.scope !372, !noalias !371
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !42, !alias.scope !371, !noalias !372
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !49, !alias.scope !372, !noalias !371
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !49, !alias.scope !371, !noalias !372
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !50, !alias.scope !372, !noalias !371
  store i64 0, ptr %i.be, align 8, !tbaa !49, !alias.scope !372, !noalias !371
  store i8 0, ptr %i.aw, align 8, !tbaa !42, !alias.scope !372, !noalias !371
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !364

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !97
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !85
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !97
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #26 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!4 = distinct !{!4, !86}
!5 = distinct !{!5, !86}
!6 = distinct !{null, null, null, null, null}
!7 = distinct !{!7, !86}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !12, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!21 = !{!"any pointer", !12, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = !{!"_ZTSSt6locale", !25, i64 0}
!27 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !22, i64 40, !23, i64 48, !12, i64 64, !13, i64 192, !24, i64 200, !26, i64 208}
!28 = !{!"p1 _ZTSSo", !21, i64 0}
!29 = !{!"bool", !12, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!34 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !28, i64 216, !12, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!35 = !{!34, !31, i64 240}
!36 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!38 = !{!"p1 int", !21, i64 0}
!39 = !{!"p1 short", !21, i64 0}
!40 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!41 = !{!40, !12, i64 56}
!42 = !{!12, !12, i64 0}
!43 = !{!"p1 omnipotent char", !21, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!27, !20, i64 32}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!47 = !{!46, !43, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !18, i64 8, !12, i64 16}
!49 = !{!48, !18, i64 8}
!50 = !{!48, !43, i64 0}
!51 = !{!"_ZTSSi", !18, i64 8}
!52 = !{!51, !18, i64 8}
!53 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIhSaIhEE", !55, i64 0}
!57 = !{!"_ZTS25LodePNGDecompressSettings", !13, i64 0, !13, i64 4, !18, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
!58 = !{!"_ZTS22LodePNGDecoderSettings", !57, i64 0, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !18, i64 64, !18, i64 72}
!59 = !{!"_ZTS23LodePNGCompressSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !21, i64 24, !21, i64 32, !21, i64 40}
!60 = !{!"_ZTS21LodePNGFilterStrategy", !12, i64 0}
!61 = !{!"_ZTS22LodePNGEncoderSettings", !59, i64 0, !13, i64 48, !13, i64 52, !60, i64 56, !43, i64 64, !13, i64 72, !13, i64 76, !13, i64 80}
!62 = !{!"_ZTS16LodePNGColorType", !12, i64 0}
!63 = !{!"_ZTS16LodePNGColorMode", !62, i64 0, !13, i64 4, !43, i64 8, !18, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!64 = !{!"any p2 pointer", !21, i64 0}
!65 = !{!"p2 omnipotent char", !64, i64 0}
!66 = !{!"_ZTS11LodePNGTime", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!67 = !{!"_ZTS11LodePNGInfo", !13, i64 0, !13, i64 4, !13, i64 8, !63, i64 16, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !18, i64 72, !65, i64 80, !65, i64 88, !18, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !13, i64 136, !43, i64 144, !13, i64 152, !13, i64 156, !66, i64 160, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !13, i64 216, !13, i64 220, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252, !43, i64 256, !43, i64 264, !13, i64 272, !13, i64 276, !13, i64 280, !13, i64 284, !13, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !13, i64 320, !13, i64 324, !13, i64 328, !13, i64 332, !13, i64 336, !13, i64 340, !13, i64 344, !13, i64 348, !13, i64 352, !13, i64 356, !13, i64 360, !13, i64 364, !13, i64 368, !12, i64 376, !12, i64 400}
!68 = !{!"_ZTS12LodePNGState", !58, i64 0, !61, i64 80, !63, i64 168, !67, i64 208, !13, i64 632}
!69 = !{!"_ZTSN7lodepng5StateE", !68, i64 0}
!70 = !{!"_ZTS4Data", !48, i64 0, !56, i64 32, !56, i64 56, !13, i64 80, !13, i64 84, !69, i64 88, !13, i64 728, !29, i64 732, !29, i64 733, !29, i64 734, !29, i64 735}
!71 = !{!70, !29, i64 733}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!70, !13, i64 728}
!75 = !{!"_ZTS9HexFormat", !12, i64 0}
!76 = !{!"_ZTS10RenderMode", !12, i64 0}
!77 = !{!"_ZTS7Options", !29, i64 0, !29, i64 1, !29, i64 2, !29, i64 3, !29, i64 4, !29, i64 5, !29, i64 6, !29, i64 7, !29, i64 8, !29, i64 9, !29, i64 10, !29, i64 11, !29, i64 12, !75, i64 16, !29, i64 20, !76, i64 24, !13, i64 28, !29, i64 32, !29, i64 33, !29, i64 34, !29, i64 35, !29, i64 36}
!78 = !{!77, !29, i64 36}
!79 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!80 = !{!79, !79, i64 0}
end_hunk_2
begin_hunk_3_@llvm.bswap.i32
!144 = !{!143, !143, i64 0}
!145 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEE", !21, i64 0}
!146 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !143, i64 0, !145, i64 8}
!147 = !{!146, !145, i64 8}
!148 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbE", !48, i64 0, !29, i64 32}
!149 = !{!148, !29, i64 32}
!150 = distinct !{!150, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!151 = distinct !{!151, !150, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!152 = distinct !{!152, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!153 = distinct !{!153, !152, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!154 = !{!151}
!155 = !{!153}
!156 = !{!153, !151}
!157 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !26, i64 56}
!158 = !{!157, !43, i64 40}
!159 = !{!157, !43, i64 32}
!160 = distinct !{!160, !86}
!161 = distinct !{!161, !86}
!162 = distinct !{!162, !86}
!163 = distinct !{!163, !86}
!164 = !{!"p1 long", !21, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !164, i64 0, !164, i64 8, !164, i64 16}
!167 = !{!166, !164, i64 8}
!168 = !{!166, !164, i64 0}
!169 = !{!166, !164, i64 16}
!170 = distinct !{!170, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!171 = distinct !{!171, !170, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!172 = !{!171}
!173 = distinct !{!173, !86}
!174 = distinct !{!174, !86, !108}
!175 = distinct !{!175, !86}
!176 = distinct !{!176, !86}
!177 = distinct !{!177, !86}
!178 = distinct !{!178, !86, !108}
!179 = distinct !{!179, !86}
!180 = distinct !{!180, !86}
!181 = distinct !{!181, !86, !185, !186}
!182 = distinct !{!182, !86, !185, !186}
!183 = distinct !{!183, !86}
!184 = distinct !{!184, !86, !185}
!185 = !{!"llvm.loop.isvectorized", i32 1}
!186 = !{!"llvm.loop.unroll.runtime.disable"}
!187 = !{!"branch_weights", i32 4, i32 28}
!188 = distinct !{!188, !86}
!189 = distinct !{!189, !86}
!190 = distinct !{!190, !86}
!191 = distinct !{!191, !86}
!192 = distinct !{!192, !86}
!193 = distinct !{!193, !86}
!194 = distinct !{!194, !86}
!195 = distinct !{!195, !86}
!196 = distinct !{!196, !86}
!197 = !{!63, !43, i64 8}
!198 = distinct !{!198, !86}
!199 = distinct !{!199, !86}
!200 = distinct !{!200, !86}
!201 = !{!68, !18, i64 184}
!202 = distinct !{!202, !86}
!203 = distinct !{!203, !86}
!204 = distinct !{!204, !86}
!205 = distinct !{!205, !86}
!206 = distinct !{!206, !86}
!207 = !{!"_ZTSSt4pairIS_IttES0_E", !123, i64 0, !123, i64 4}
!208 = !{!"_ZTSSt4pairIKS_IS_IttES0_EmE", !207, i64 0, !18, i64 8}
!209 = !{!208, !18, i64 8}
!210 = !{!68, !13, i64 40}
!211 = !{!68, !13, i64 44}
!212 = !{!68, !13, i64 48}
!213 = !{!68, !13, i64 228}
!214 = distinct !{!214, !"_ZL16printableICCWordB5cxx11PKhmm"}
!215 = distinct !{!215, !214, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!216 = distinct !{!216, !"_ZL16printableICCWordB5cxx11PKhmm"}
!217 = distinct !{!217, !216, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!218 = distinct !{!218, !"_ZL16printableICCWordB5cxx11PKhmm"}
!219 = distinct !{!219, !218, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!220 = distinct !{!220, !"_ZL16printableICCWordB5cxx11PKhmm"}
!221 = distinct !{!221, !220, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!222 = distinct !{!222, !"_ZL16printableICCWordB5cxx11PKhmm"}
!223 = distinct !{!223, !222, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!224 = distinct !{!224, !"_ZL16printableICCWordB5cxx11PKhmm"}
!225 = distinct !{!225, !224, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!226 = distinct !{!226, !"_ZL16printableICCWordB5cxx11PKhmm"}
!227 = distinct !{!227, !226, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!228 = distinct !{!228, !"_ZL16printableICCWordB5cxx11PKhmm"}
!229 = distinct !{!229, !228, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!230 = distinct !{!230, !"_ZL16printableICCWordB5cxx11PKhmm"}
!231 = distinct !{!231, !230, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!232 = distinct !{!232, !"_ZL16printableICCWordB5cxx11PKhmm"}
!233 = distinct !{!233, !232, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!234 = distinct !{!234, !"_ZL16printableICCWordB5cxx11PKhmm"}
!235 = distinct !{!235, !234, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!236 = distinct !{!236, !"_ZL16printableICCWordB5cxx11PKhmm"}
!237 = distinct !{!237, !236, !"_ZL16printableICCWordB5cxx11PKhmm: argument 0"}
!238 = distinct !{!238, !86, !108}
!239 = distinct !{!239, !86}
!240 = distinct !{!240, !86}
!241 = distinct !{!241, !86}
!242 = distinct !{!242, !86}
!243 = !{!215}
!244 = !{!217}
!245 = !{!219}
!246 = !{!221}
!247 = !{!223}
!248 = !{!225}
!249 = !{!227}
!250 = !{!229}
!251 = !{!231}
!252 = !{!233}
!253 = !{!235}
!254 = !{!237}
!255 = distinct !{!255, !86}
!256 = !{!67, !13, i64 8}
!257 = !{!67, !13, i64 0}
!258 = !{!67, !13, i64 4}
!259 = !{!63, !62, i64 0}
!260 = !{!63, !13, i64 4}
!261 = !{!63, !13, i64 24}
!262 = !{!63, !13, i64 28}
!263 = !{!63, !13, i64 32}
!264 = !{!63, !13, i64 36}
!265 = !{!67, !13, i64 56}
!266 = !{!67, !13, i64 60}
!267 = !{!67, !13, i64 64}
!268 = !{!67, !13, i64 68}
!269 = !{!67, !13, i64 200}
!270 = !{!67, !13, i64 204}
!271 = !{!67, !13, i64 208}
!272 = !{!67, !13, i64 212}
!273 = !{!67, !13, i64 216}
!274 = !{!67, !13, i64 220}
!275 = !{!67, !13, i64 224}
!276 = !{!67, !13, i64 228}
!277 = !{!67, !13, i64 232}
!278 = !{!67, !13, i64 236}
!279 = !{!67, !13, i64 240}
!280 = !{!67, !13, i64 244}
!281 = !{!67, !13, i64 248}
!282 = !{!67, !13, i64 252}
!283 = !{!67, !13, i64 272}
!284 = !{!67, !43, i64 256}
!285 = !{!67, !13, i64 136}
!286 = !{!67, !13, i64 152}
!287 = !{!67, !43, i64 264}
!288 = !{!67, !43, i64 144}
!289 = !{!67, !13, i64 184}
!290 = !{!67, !13, i64 188}
!291 = !{!67, !13, i64 192}
!292 = !{!67, !13, i64 196}
!293 = distinct !{!293, !86}
!294 = distinct !{!294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!295 = distinct !{!295, !294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0:thread"}
!296 = distinct !{!296, !294, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!297 = distinct !{!297, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!298 = distinct !{!298, !297, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!299 = distinct !{!299, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!300 = distinct !{!300, !299, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!301 = !{!77, !29, i64 1}
!302 = !{!295}
!303 = !{!296}
!304 = !{!298}
!305 = !{!300}
!306 = distinct !{!306, !86}
!307 = distinct !{!307, !86}
!308 = !{!67, !18, i64 72}
!309 = !{!67, !65, i64 88}
!310 = !{!67, !65, i64 80}
!311 = !{!67, !18, i64 96}
!312 = !{!67, !65, i64 128}
!313 = !{!67, !65, i64 104}
!314 = !{!67, !65, i64 112}
!315 = !{!67, !65, i64 120}
!316 = !{!67, !13, i64 156}
!317 = !{!66, !13, i64 0}
!318 = !{!66, !13, i64 4}
!319 = !{!66, !13, i64 8}
!320 = !{!66, !13, i64 12}
!321 = !{!66, !13, i64 16}
!322 = !{!66, !13, i64 20}
!323 = distinct !{!323, !86}
!324 = distinct !{!324, !86}
!325 = distinct !{!325, !86}
!326 = distinct !{!326, !86}
!327 = distinct !{!327, !86}
!328 = distinct !{!328, !86}
!329 = distinct !{!329, !86}
!330 = distinct !{!330, !86}
!331 = !{!"_ZTSSt4pairIKmbE", !18, i64 0, !29, i64 8}
!332 = !{!331, !18, i64 0}
!333 = !{!331, !29, i64 8}
!334 = !{!68, !13, i64 344}
!335 = !{!68, !43, i64 352}
!336 = !{!68, !13, i64 360}
!337 = !{!77, !29, i64 2}
!338 = !{!77, !29, i64 4}
!339 = !{!77, !29, i64 11}
!340 = !{!77, !29, i64 34}
!341 = !{!77, !29, i64 35}
!342 = distinct !{!342, !86}
!343 = distinct !{!343, !86}
!344 = distinct !{!344, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!345 = distinct !{!345, !344, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0:thread"}
!346 = distinct !{!346, !86}
!347 = distinct !{!347, !344, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!348 = distinct !{!348, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!349 = distinct !{!349, !348, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!350 = distinct !{!350, !86, !108}
!351 = !{!345}
!352 = !{!347}
!353 = !{!349}
!354 = distinct !{!354, !86}
!355 = distinct !{!355, !86}
!356 = distinct !{!356, !86}
!357 = distinct !{!357, !86}
!358 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!359 = distinct !{!359, !86}
!360 = distinct !{!360, !86}
!361 = distinct !{!361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!362 = distinct !{!362, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!363 = distinct !{!363, !361, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!364 = distinct !{!364, !86}
!365 = distinct !{!365, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!366 = distinct !{!366, !365, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!367 = distinct !{!367, !365, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!368 = !{!362}
!369 = !{!363}
!370 = !{!362, !363}
!371 = !{!366}
!372 = !{!367}
!373 = !{!366, !367}
end_hunk_3
