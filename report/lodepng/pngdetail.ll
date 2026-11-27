Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 606
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z10showRenderR4DataRK7Options:bb.a

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load i32, ptr %i.al, align 8, !tbaa !126
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !127
  tail call void @_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.am, i32 noundef %i.ao, i1 noundef zeroext false)
  %.pre19 = load i32, ptr %i.aa, align 4, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %.pre19, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.au = load i32, ptr %i.at, align 4, !tbaa !127
  tail call void @_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.as, i32 noundef %i.au, i1 noundef zeroext true)
  %.pr18 = load i32, ptr %i.aa, align 4, !tbaa !136
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
  %i.b = load i8, ptr %i.a, align 2, !tbaa !337, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21showSingleLineSummaryR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 4, !tbaa !338, !range !71, !noundef !72
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z10showErrorsRK4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.h = load i8, ptr %i.g, align 1, !tbaa !134, !range !71, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z8showExifR4Data(ptr noundef nonnull align 8 dereferenceable(736) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !129, !range !71, !noundef !72
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !132, !range !71, !noundef !72
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.q = load i8, ptr %i.p, align 2, !tbaa !133, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 4, !tbaa !135, !range !71, !noundef !72
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @_Z14showHeaderInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119, !range !71, !noundef !72
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Z14showColorStatsR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.z = load i8, ptr %i.y, align 2, !tbaa !131, !range !71, !noundef !72
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_Z11showPNGInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !339, !range !71, !noundef !72
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_Z14displayPaletteR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !138, !range !71, !noundef !72
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81, !range !71, !noundef !72
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_Z17displayChunkNamesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !340, !range !71, !noundef !72
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_Z18displayFilterTypesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !341, !range !71, !noundef !72
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_Z13printZlibInfoR4Data(ptr noundef nonnull align 8 dereferenceable(736) %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !139, !range !71, !noundef !72
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_Z10showRenderR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.au = load i32, ptr %i.at, align 8, !tbaa !73
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
  store i32 1, ptr %i.e, align 4, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i8 0, ptr %i.f, align 4, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 80, ptr %i.h, align 4, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not114399 = icmp sgt i32 %0, 1
  br i1 %.not114399, label %.lr.ph411, label %.thread244

.lr.ph411:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 35
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 33 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 9 uses
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
  %.promoted = load i8, ptr %i.n, align 2
  %.promoted783 = load i8, ptr %i.o, align 1
  %.promoted792 = load i8, ptr %i.p, align 4
  %.promoted801 = load i8, ptr %i.q, align 1
  %.promoted810 = load i8, ptr %i.r, align 2
  %.promoted819 = load i8, ptr %i.s, align 1
  %.promoted828 = load i8, ptr %i.t, align 4
  %.promoted837 = load i8, ptr %i.u, align 1
  %.promoted846 = load i8, ptr %i.v, align 1
  %.promoted855 = load i8, ptr %i.w, align 4
  %.promoted864 = load i8, ptr %i.x, align 1
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond635.not, label %..thread244_crit_edge, label %bb.c, !llvm.loop !342

bb.c:                                             ; preds = %.lr.ph411, %bb.b
  %.lcssa757866 = phi i8 [ %.promoted864, %.lr.ph411 ], [ %.lcssa757865, %bb.b ] ; 10 uses
  %.lcssa756857 = phi i8 [ %.promoted855, %.lr.ph411 ], [ %.lcssa756856, %bb.b ] ; 10 uses
  %.lcssa755848 = phi i8 [ %.promoted846, %.lr.ph411 ], [ %.lcssa755847, %bb.b ] ; 10 uses
  %.lcssa754839 = phi i8 [ %.promoted837, %.lr.ph411 ], [ %.lcssa754838, %bb.b ] ; 10 uses
  %.lcssa753830 = phi i8 [ %.promoted828, %.lr.ph411 ], [ %.lcssa753829, %bb.b ] ; 10 uses
  %.lcssa752821 = phi i8 [ %.promoted819, %.lr.ph411 ], [ %.lcssa752820, %bb.b ] ; 10 uses
  %.lcssa751812 = phi i8 [ %.promoted810, %.lr.ph411 ], [ %.lcssa751811, %bb.b ] ; 10 uses
  %.lcssa750803 = phi i8 [ %.promoted801, %.lr.ph411 ], [ %.lcssa750802, %bb.b ] ; 10 uses
  %.lcssa749794 = phi i8 [ %.promoted792, %.lr.ph411 ], [ %.lcssa749793, %bb.b ] ; 10 uses
  %.lcssa748785 = phi i8 [ %.promoted783, %.lr.ph411 ], [ %.lcssa748784, %bb.b ] ; 10 uses
  %.lcssa747776 = phi i8 [ %.promoted, %.lr.ph411 ], [ %.lcssa747775, %bb.b ] ; 10 uses
  %i.ah = phi i8 [ 0, %.lr.ph411 ], [ %i.kt, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph411 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.lcssa341494 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa341492, %bb.b ] ; 4 uses
  %.lcssa338490 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa338488, %bb.b ] ; 4 uses
  %.lcssa335486 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa335484, %bb.b ] ; 4 uses
  %.lcssa332482 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa332480, %bb.b ] ; 4 uses
  %.lcssa329478 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa329476, %bb.b ] ; 4 uses
  %.lcssa326474 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa326472, %bb.b ] ; 4 uses
  %.lcssa323470 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa323468, %bb.b ] ; 4 uses
  %.lcssa320466 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa320464, %bb.b ] ; 4 uses
  %.lcssa317462 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa317460, %bb.b ] ; 4 uses
  %.lcssa314458 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa314456, %bb.b ] ; 4 uses
  %.lcssa311454 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa311452, %bb.b ] ; 4 uses
  %.lcssa308450 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa308448, %bb.b ] ; 4 uses
  %.lcssa305446 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa305444, %bb.b ] ; 4 uses
  %.lcssa302442 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa302440, %bb.b ] ; 4 uses
  %.lcssa299432 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa299430, %bb.b ] ; 4 uses
  %.lcssa296422 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa296420, %bb.b ] ; 4 uses
  %.089409 = phi i1 [ false, %.lr.ph411 ], [ %.392, %bb.b ] ; 6 uses
  %.lcssa283349406 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa283348, %bb.b ] ; 4 uses
  %.lcssa286357403 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa286356, %bb.b ] ; 4 uses
  %.lcssa289366400 = phi i8 [ 0, %.lr.ph411 ], [ %.lcssa289365, %bb.b ] ; 4 uses
  %i.ai = phi i32 [ 0, %.lr.ph411 ], [ %i.kw, %bb.b ] ; 11 uses
  %i.aj = phi i32 [ 80, %.lr.ph411 ], [ %i.kv, %bb.b ] ; 8 uses
  %i.ak = phi i32 [ 1, %.lr.ph411 ], [ %i.ku, %bb.b ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !46
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 %.lcssa747776, ptr %i.n, align 2
  store i8 %.lcssa748785, ptr %i.o, align 1
  store i8 %.lcssa749794, ptr %i.p, align 4
  store i8 %.lcssa750803, ptr %i.q, align 1
  store i8 %.lcssa751812, ptr %i.r, align 2
  store i8 %.lcssa752821, ptr %i.s, align 1
  store i8 %.lcssa753830, ptr %i.t, align 4
  store i8 %.lcssa754839, ptr %i.u, align 1
  store i8 %.lcssa755848, ptr %i.v, align 1
  store i8 %.lcssa756857, ptr %i.w, align 4
  store i8 %.lcssa757866, ptr %i.x, align 1
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.244) #25
          to label %.noexc unwind label %.loopexit.split-lp253

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !80
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc125 unwind label %.loopexit252 ; 2 uses

.noexc125:                                        ; preds = %.noexc.i
  store ptr %i.aq, ptr %4, align 8, !tbaa !49
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !80
  store i64 %i.ar, ptr %i.j, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc125, %bb.e
  %i.as = phi ptr [ %i.aq, %.noexc125 ], [ %i.j, %bb.e ] ; 2 uses
  switch i64 %i.ao, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %i.am, align 1, !tbaa !41
  store i8 %i.at, ptr %i.as, align 1, !tbaa !41
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.au = load i64, ptr %i.d, align 8, !tbaa !80  ; 2 uses
  store i64 %i.au, ptr %i.k, align 8, !tbaa !48
  %i.av = load ptr, ptr %4, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !48  ; 11 uses
  %i.ay = icmp ugt i64 %i.ax, 1
  br i1 %i.ay, label %bb.i, label %bb.ax

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %4, align 8, !tbaa !49    ; 11 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !41
  %i.bb = icmp eq i8 %i.ba, 45
  br i1 %i.bb, label %bb.j, label %bb.ax

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !41
  %.not = icmp eq i8 %i.bd, 45
  br i1 %.not, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.ax, 2
  br i1 %i.be, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.k
  %i.bf = load i16, ptr %i.az, align 1
  %i.bg = icmp ne i16 %i.bf, 30765
  %i.bh = zext i1 %i.bg to i32
  %.not247 = icmp eq i32 %i.bh, 0
  br i1 %.not247, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bi = load i16, ptr %i.az, align 1
  %i.bj = icmp ne i16 %i.bi, 30253
  %i.bk = zext i1 %i.bj to i32
  %.not248 = icmp eq i32 %i.bk, 0
  br i1 %.not248, label %.lr.ph, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  %i.bl = load i16, ptr %i.az, align 1
  %i.bm = icmp ne i16 %i.bl, 29741
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !48
  %i.kp = load ptr, ptr %i.ke, align 8, !tbaa !49
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 0, ptr %i.kq, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.kr = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  store ptr %i.ks, ptr %i.ab, align 8, !tbaa !83
  br label %.critedge121

bb.bb:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.critedge121 unwind label %bb.m

..critedge121.loopexit_crit_edge:                 ; preds = %bb.ah
  store i8 %i.di, ptr %i.y, align 2
  store i8 %i.dh, ptr %i.z, align 1
  store i8 %i.dg, ptr %i.aa, align 2
  br label %.critedge121

.critedge121:                                     ; preds = %..critedge121.loopexit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSolsEPFRSoS_E.exit
  %.lcssa757865 = phi i8 [ %i.bt, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa757866, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa757866, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa757866, %bb.bb ], [ %i.dj, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa756856 = phi i8 [ %i.bu, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa756857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa756857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa756857, %bb.bb ], [ %i.dk, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa755847 = phi i8 [ %i.bv, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa755848, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa755848, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa755848, %bb.bb ], [ %i.dl, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa754838 = phi i8 [ %i.bw, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa754839, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa754839, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa754839, %bb.bb ], [ %i.dm, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa753829 = phi i8 [ %i.bx, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa753830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa753830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa753830, %bb.bb ], [ %i.dn, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa752820 = phi i8 [ %i.by, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa752821, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa752821, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa752821, %bb.bb ], [ %i.do, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa751811 = phi i8 [ %i.bz, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa751812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa751812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa751812, %bb.bb ], [ %i.dp, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa750802 = phi i8 [ %i.ca, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa750803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa750803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa750803, %bb.bb ], [ %i.dq, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa749793 = phi i8 [ %i.cb, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa749794, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa749794, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa749794, %bb.bb ], [ %i.dr, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa748784 = phi i8 [ %i.cc, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa748785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa748785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa748785, %bb.bb ], [ %i.ds, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %.lcssa747775 = phi i8 [ %i.cd, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa747776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa747776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa747776, %bb.bb ], [ %i.dt, %..critedge121.loopexit_crit_edge ] ; 3 uses
  %i.kt = phi i8 [ %i.bq, %_ZNSolsEPFRSoS_E.exit ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.ah, %bb.bb ], [ %i.dg, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.lcssa341492 = phi i8 [ %i.bq, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa341494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa341494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa341494, %bb.bb ], [ %i.dg, %..critedge121.loopexit_crit_edge ]
  %.lcssa338488 = phi i8 [ %i.br, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa338490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa338490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa338490, %bb.bb ], [ %i.dh, %..critedge121.loopexit_crit_edge ]
  %.lcssa335484 = phi i8 [ %i.bs, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa335486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa335486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa335486, %bb.bb ], [ %i.di, %..critedge121.loopexit_crit_edge ]
  %.lcssa332480 = phi i8 [ %i.bt, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa332482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa332482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa332482, %bb.bb ], [ %i.dj, %..critedge121.loopexit_crit_edge ]
  %.lcssa329476 = phi i8 [ %i.bu, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa329478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa329478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa329478, %bb.bb ], [ %i.dk, %..critedge121.loopexit_crit_edge ]
  %.lcssa326472 = phi i8 [ %i.bv, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa326474, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa326474, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa326474, %bb.bb ], [ %i.dl, %..critedge121.loopexit_crit_edge ]
  %.lcssa323468 = phi i8 [ %i.bw, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa323470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa323470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa323470, %bb.bb ], [ %i.dm, %..critedge121.loopexit_crit_edge ]
  %.lcssa320464 = phi i8 [ %i.bx, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa320466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa320466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa320466, %bb.bb ], [ %i.dn, %..critedge121.loopexit_crit_edge ]
  %.lcssa317460 = phi i8 [ %i.by, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa317462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa317462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa317462, %bb.bb ], [ %i.do, %..critedge121.loopexit_crit_edge ]
  %.lcssa314456 = phi i8 [ %i.bz, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa314458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa314458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa314458, %bb.bb ], [ %i.dp, %..critedge121.loopexit_crit_edge ]
  %.lcssa311452 = phi i8 [ %i.ca, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa311454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa311454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa311454, %bb.bb ], [ %i.dq, %..critedge121.loopexit_crit_edge ]
  %.lcssa308448 = phi i8 [ %i.cb, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa308450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa308450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa308450, %bb.bb ], [ %i.dr, %..critedge121.loopexit_crit_edge ]
  %.lcssa305444 = phi i8 [ %i.cc, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa305446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa305446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa305446, %bb.bb ], [ %i.ds, %..critedge121.loopexit_crit_edge ]
  %.lcssa302440 = phi i8 [ %i.cd, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa302442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa302442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa302442, %bb.bb ], [ %i.dt, %..critedge121.loopexit_crit_edge ]
  %.lcssa299430 = phi i8 [ %i.ce, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa299432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa299432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa299432, %bb.bb ], [ %i.du, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.lcssa296420 = phi i8 [ %i.cf, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa296422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa296422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa296422, %bb.bb ], [ %i.dv, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %i.ku = phi i32 [ %i.ak, %_ZNSolsEPFRSoS_E.exit ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.ak, %bb.bb ], [ %i.ak, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %i.kv = phi i32 [ %i.aj, %_ZNSolsEPFRSoS_E.exit ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.aj, %bb.bb ], [ %i.aj, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %i.kw = phi i32 [ %i.ai, %_ZNSolsEPFRSoS_E.exit ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.ai, %bb.bb ], [ %i.ai, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.lcssa289365 = phi i8 [ %i.ci, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa289366400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa289366400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa289366400, %bb.bb ], [ %i.dw, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.lcssa286356 = phi i8 [ %i.ch, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa286357403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa286357403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa286357403, %bb.bb ], [ %i.dx, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.lcssa283348 = phi i8 [ %i.cg, %_ZNSolsEPFRSoS_E.exit ], [ %.lcssa283349406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.lcssa283349406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.lcssa283349406, %bb.bb ], [ %i.dy, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %.392 = phi i1 [ %.190, %_ZNSolsEPFRSoS_E.exit ], [ %.089409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.089409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.089409, %bb.bb ], [ %.190, %..critedge121.loopexit_crit_edge ] ; 2 uses
  %cond1 = phi i1 [ false, %_ZNSolsEPFRSoS_E.exit ], [ %not., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ true, %bb.bb ], [ true, %..critedge121.loopexit_crit_edge ]
  %i.kx = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.j
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %.critedge121
  %i.kz = load i64, ptr %i.j, align 8, !tbaa !41
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %.critedge121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %cond1, label %bb.b, label %.loopexit257

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %bb.m
  %.pn110 = phi { ptr, i32 } [ %i.cl, %bb.m ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ] ; 2 uses
  %i.lb = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.j
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.bc
  %i.ld = load i64, ptr %i.j, align 8, !tbaa !41
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.bc, %.loopexit252, %.loopexit.split-lp253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp253 ], [ %lpad.loopexit254, %.loopexit252 ], [ %.pn110, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit.split-lp

..thread244_crit_edge:                            ; preds = %bb.b
  store i8 %.lcssa747775, ptr %i.n, align 2
  store i8 %.lcssa748784, ptr %i.o, align 1
  store i8 %.lcssa749793, ptr %i.p, align 4
  store i8 %.lcssa750802, ptr %i.q, align 1
  store i8 %.lcssa751811, ptr %i.r, align 2
  store i8 %.lcssa752820, ptr %i.s, align 1
  store i8 %.lcssa753829, ptr %i.t, align 4
  store i8 %.lcssa754838, ptr %i.u, align 1
  store i8 %.lcssa755847, ptr %i.v, align 1
  store i8 %.lcssa756856, ptr %i.w, align 4
  store i8 %.lcssa757865, ptr %i.x, align 1
  store i8 %.lcssa296420, ptr %i.l, align 4
  store i8 %.lcssa299430, ptr %i.m, align 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !79
  %.pre651 = load ptr, ptr %i.ab, align 8, !tbaa !79
  %i.lf = trunc nuw i8 %i.kt to i1
  br label %.thread244

.thread244:                                       ; preds = %..thread244_crit_edge, %bb.a
  %i.lg = phi i1 [ %i.lf, %..thread244_crit_edge ], [ false, %bb.a ] ; 3 uses
  %i.lh = phi ptr [ %.pre651, %..thread244_crit_edge ], [ null, %bb.a ] ; 2 uses
  %i.li = phi ptr [ %.pre, %..thread244_crit_edge ], [ null, %bb.a ] ; 4 uses
  %.lcssa391 = phi i32 [ %i.ku, %..thread244_crit_edge ], [ 1, %bb.a ]
  %.lcssa382 = phi i32 [ %i.kv, %..thread244_crit_edge ], [ 80, %bb.a ]
  %.lcssa374 = phi i32 [ %i.kw, %..thread244_crit_edge ], [ 0, %bb.a ]
  %i.lj = phi i8 [ %.lcssa289365, %..thread244_crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.lcssa286357.lcssa = phi i8 [ %.lcssa286356, %..thread244_crit_edge ], [ 0, %bb.a ]
  %.lcssa283349.lcssa = phi i8 [ %.lcssa283348, %..thread244_crit_edge ], [ 0, %bb.a ]
  %.089.lcssa = phi i1 [ %.392, %..thread244_crit_edge ], [ false, %bb.a ]
  store i8 %.lcssa283349.lcssa, ptr %i.i, align 4
  store i8 %.lcssa286357.lcssa, ptr %i.f, align 4
  store i8 %i.lj, ptr %2, align 4
  store i32 %.lcssa374, ptr %i.g, align 4
  store i32 %.lcssa382, ptr %i.h, align 4
  store i32 %.lcssa391, ptr %i.e, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ll = icmp eq ptr %i.li, %i.lh
  br i1 %i.ll, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %.thread244
  %i.lm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.229, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %bb.bd
  %i.ln = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.lo = getelementptr i8, ptr %i.ln, i64 -24
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 240
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i201 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i201, label %.loopexit640.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 56
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i1.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 67
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ls)
          to label %.noexc203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc203:                                        ; preds = %bb.bf
  %i.lx = load ptr, ptr %i.ls, align 8, !tbaa !16
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = invoke noundef signext i8 %i.lz(ptr noundef nonnull align 8 dereferenceable(570) %i.ls, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc203, %bb.be
  %.0.i.i.i = phi i8 [ %i.lw, %bb.be ], [ %i.ma, %.noexc203 ]
  %i.mb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc205:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mb)
          to label %_ZNSolsEPFRSoS_E.exit191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit191:                         ; preds = %.noexc205
  invoke void @_Z8showHelpv()
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %.thread244
  br i1 %.089.lcssa, label %.lr.ph496, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 1, ptr %i.md, align 1, !tbaa !129
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 1, ptr %i.me, align 2, !tbaa !131
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 33 ; 2 uses
  store i8 1, ptr %i.mf, align 1, !tbaa !81
  %i.mg = trunc nuw i8 %i.lj to i1
  br i1 %i.mg, label %bb.bi, label %.lr.ph496

bb.bi:                                            ; preds = %bb.bh
  store i8 0, ptr %i.mf, align 1, !tbaa !81
  store i8 1, ptr %i.i, align 4, !tbaa !138
  br label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.bg, %bb.bi, %bb.bh
  %i.mh = ptrtoint ptr %i.li to i64
  %i.mi = ptrtoint ptr %i.lh to i64
  %i.mj = sub i64 %i.mi, %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.mq = icmp ugt i64 %i.mj, 32
  br i1 %i.mq, label %_ZNSolsEPFRSoS_E.exit193.peel, label %_ZNSolsEPFRSoS_E.exit198.peel

_ZNSolsEPFRSoS_E.exit193.peel:                    ; preds = %.lr.ph496
  %.phi.trans.insert653 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %.pre654 = load i64, ptr %.phi.trans.insert653, align 8, !tbaa !48
  %.pre652 = load ptr, ptr %i.li, align 8, !tbaa !49
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.pre652, i64 noundef %.pre654)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZNSolsEPFRSoS_E.exit193.peel
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  br i1 %i.lg, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196.peel
  %i.mt = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.mu = getelementptr i8, ptr %i.mt, i64 -24
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 240
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i218.peel = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i218.peel, label %.loopexit640.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219.peel

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219.peel: ; preds = %bb.bj
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 56
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !40
  %.not.i1.i.i220.peel = icmp eq i8 %i.na, 0
  br i1 %.not.i1.i.i220.peel, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219.peel
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 67
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219.peel
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.my)
          to label %.noexc224.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224.peel:                                   ; preds = %bb.bl
  %i.nd = load ptr, ptr %i.my, align 8, !tbaa !16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = invoke noundef signext i8 %i.nf(ptr noundef nonnull align 8 dereferenceable(570) %i.my, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel: ; preds = %.noexc224.peel, %bb.bk
  %.0.i.i.i222.peel = phi i8 [ %i.nc, %bb.bk ], [ %i.ng, %.noexc224.peel ]
  %i.nh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i222.peel)
          to label %.noexc226.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226.peel:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nh)
          to label %_ZNSolsEPFRSoS_E.exit198.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196.peel
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZNSolsEPFRSoS_E.exit198.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit198.peel:                    ; preds = %bb.bm, %.noexc226.peel, %.lr.ph496
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.nk = load ptr, ptr %3, align 8, !tbaa !84
  invoke void @_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.nk)
          to label %bb.bn unwind label %.loopexit.split-lp642.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit198.peel
  invoke void @_Z9showInfosR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 4 dereferenceable(37) %2)
          to label %bb.bo unwind label %.loopexit.split-lp646.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.mk) #26
  %i.nl = load ptr, ptr %i.ml, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i.peel, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.peel, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nm = load ptr, ptr %i.mm, align 8, !tbaa !106
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.np) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.peel

_ZNSt6vectorIhSaIhEED2Ev.exit.i.peel:             ; preds = %bb.bp, %bb.bo
  %i.nq = load ptr, ptr %i.mn, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i1.i.peel = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i1.i.peel, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.peel, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.peel
  %i.nr = load ptr, ptr %i.mo, align 8, !tbaa !106
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.nq to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nu) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.peel

_ZNSt6vectorIhSaIhEED2Ev.exit2.i.peel:            ; preds = %bb.bq, %_ZNSt6vectorIhSaIhEED2Ev.exit.i.peel
  %i.nv = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.mp
  br i1 %i.nw, label %_ZN4DataD2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.peel
  %i.nx = load i64, ptr %i.mp, align 8, !tbaa !41
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #27
  br label %_ZN4DataD2Ev.exit.peel

_ZN4DataD2Ev.exit.peel:                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.nz = load ptr, ptr %i.lk, align 8, !tbaa !83
  %i.oa = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = icmp ugt i64 %i.od, 32
  br i1 %i.oe, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZN4DataD2Ev.exit.peel, %_ZN4DataD2Ev.exit
  %i.of = phi ptr [ %i.qm, %_ZN4DataD2Ev.exit ], [ %i.oa, %_ZN4DataD2Ev.exit.peel ]
  %.0495 = phi i64 [ %i.qk, %_ZN4DataD2Ev.exit ], [ 1, %_ZN4DataD2Ev.exit.peel ] ; 3 uses
  br i1 %i.lg, label %_ZNSolsEPFRSoS_E.exit193, label %bb.br

bb.br:                                            ; preds = %.peel.next
  %i.og = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.oh = getelementptr i8, ptr %i.og, i64 -24
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 240
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i207 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i207, label %.loopexit640.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208: ; preds = %bb.br
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  %i.on = load i8, ptr %i.om, align 8, !tbaa !40
  %.not.i1.i.i209 = icmp eq i8 %i.on, 0
  br i1 %.not.i1.i.i209, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 67
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i208
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ol)
          to label %.noexc213 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc213:                                        ; preds = %bb.bt
  %i.oq = load ptr, ptr %i.ol, align 8, !tbaa !16
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = invoke noundef signext i8 %i.os(ptr noundef nonnull align 8 dereferenceable(570) %i.ol, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210: ; preds = %.noexc213, %bb.bs
  %.0.i.i.i211 = phi i8 [ %i.op, %bb.bs ], [ %i.ot, %.noexc213 ]
  %i.ou = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i211)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc215:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210
  %i.ov = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ou)
          to label %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge:     ; preds = %.noexc215
  %.pre655 = load ptr, ptr %3, align 8, !tbaa !84
  br label %_ZNSolsEPFRSoS_E.exit193

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSolsEPFRSoS_E.exit193, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bx, %bb.bt, %.noexc213, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i210, %.noexc215, %bb.bw, %.noexc224, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221, %.noexc226, %.loopexit640.invoke, %bb.bm, %.noexc226.peel, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221.peel, %.noexc224.peel, %bb.bl, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNSolsEPFRSoS_E.exit193.peel, %.noexc205, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc203, %bb.bf, %bb.bd, %_ZNSolsEPFRSoS_E.exit191
  %lpad.loopexit.split-lp1040 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSolsEPFRSoS_E.exit193:                         ; preds = %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge, %.peel.next
  %i.ow = phi ptr [ %.pre655, %.noexc215._ZNSolsEPFRSoS_E.exit193_crit_edge ], [ %i.of, %.peel.next ]
  %i.ox = getelementptr inbounds nuw [32 x i8], ptr %i.ow, i64 %.0495 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !49
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !48
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.oy, i64 noundef %i.pa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSolsEPFRSoS_E.exit193
  %i.pc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pb, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %i.lg, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.pd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %i.pe = getelementptr i8, ptr %i.pd, i64 -24
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 240
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i218 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i.i218, label %.loopexit640.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219

.loopexit640.invoke:                              ; preds = %bb.br, %bb.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %bb.bj
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.loopexit640.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit640.cont:                                ; preds = %.loopexit640.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219: ; preds = %bb.bu
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 56
  %i.pk = load i8, ptr %i.pj, align 8, !tbaa !40
  %.not.i1.i.i220 = icmp eq i8 %i.pk, 0
  br i1 %.not.i1.i.i220, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 67
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i219
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pi)
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.bw
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !16
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = invoke noundef signext i8 %i.pp(ptr noundef nonnull align 8 dereferenceable(570) %i.pi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221: ; preds = %.noexc224, %bb.bv
  %.0.i.i.i222 = phi i8 [ %i.pm, %bb.bv ], [ %i.pq, %.noexc224 ]
  %i.pr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i222)
          to label %.noexc226 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i221
  %i.ps = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pr)
          to label %_ZNSolsEPFRSoS_E.exit198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit196
  %i.pt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZNSolsEPFRSoS_E.exit198 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit198:                         ; preds = %bb.bx, %.noexc226
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.pu = load ptr, ptr %3, align 8, !tbaa !84
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pu, i64 %.0495
  invoke void @_ZN4DataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.pv)
          to label %bb.by unwind label %.loopexit.split-lp642.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %_ZNSolsEPFRSoS_E.exit198
  invoke void @_Z9showInfosR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %7, ptr noundef nonnull align 4 dereferenceable(37) %2)
          to label %bb.bz unwind label %.loopexit.split-lp646.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %i.mk) #26
  %i.pw = load ptr, ptr %i.ml, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.px = load ptr, ptr %i.mm, align 8, !tbaa !106
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pw to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef %i.qa) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.ca, %bb.bz
  %i.qb = load ptr, ptr %i.mn, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.qc = load ptr, ptr %i.mo, align 8, !tbaa !106
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qb to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qf) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.cb, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.qg = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.mp
  br i1 %i.qh, label %_ZN4DataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  %i.qi = load i64, ptr %i.mp, align 8, !tbaa !41
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #27
  br label %_ZN4DataD2Ev.exit

_ZN4DataD2Ev.exit:                                ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.qk = add nuw i64 %.0495, 1                   ; 2 uses
  %i.ql = load ptr, ptr %i.lk, align 8, !tbaa !83
  %i.qm = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = ashr exact i64 %i.qp, 5
  %i.qr = icmp ult i64 %i.qk, %i.qq
  br i1 %i.qr, label %.peel.next, label %.loopexit, !llvm.loop !351

.loopexit.split-lp642.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSolsEPFRSoS_E.exit198, %_ZNSolsEPFRSoS_E.exit198.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.loopexit.split-lp646.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.by, %bb.bn
  %lpad.loopexit.split-lp1044 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %7) #26
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.split-lp642.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp646.loopexit.split-lp.loopexit.split-lp
  %.pn115 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1044, %.loopexit.split-lp646.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp642.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit.split-lp

.loopexit257:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  store i8 %.lcssa747775, ptr %i.n, align 2
  store i8 %.lcssa748784, ptr %i.o, align 1
  store i8 %.lcssa749793, ptr %i.p, align 4
  store i8 %.lcssa750802, ptr %i.q, align 1
  store i8 %.lcssa751811, ptr %i.r, align 2
  store i8 %.lcssa752820, ptr %i.s, align 1
  store i8 %.lcssa753829, ptr %i.t, align 4
  store i8 %.lcssa754838, ptr %i.u, align 1
  store i8 %.lcssa755847, ptr %i.v, align 1
  store i8 %.lcssa756856, ptr %i.w, align 4
  store i8 %.lcssa757865, ptr %i.x, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4DataD2Ev.exit, %_ZN4DataD2Ev.exit.peel, %.loopexit257, %_ZNSolsEPFRSoS_E.exit191
  %i.qs = load ptr, ptr %3, align 8, !tbaa !84    ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !83 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qs, %i.qu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ra, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.qs, %.loopexit ] ; 3 uses
  %i.qv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.qy = load i64, ptr %i.qw, align 8, !tbaa !41
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qz) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ra, %i.qu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.rb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.qs, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !96
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rb to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.rg) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 0

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %.pn118 = phi { ptr, i32 } [ %.pn115, %bb.cc ], [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %lpad.loopexit.split-lp1040, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
  %i.c = load i32, ptr %i.a, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !16
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !41
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #26
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !16
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !51
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
end_hunk_1
