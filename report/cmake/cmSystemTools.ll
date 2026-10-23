Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSystemTools?download=true
inline.NumInlined: 3100
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN13cmSystemTools19VersionCompareEqualERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a

_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %.critedge6.i.i, %bb.c, %bb.d
  %.252.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %.critedge6.i.i ]
  ret i1 %.252.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN13cmSystemTools21VersionCompareGreaterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.045.i.i = phi ptr [ %i.a, %bb.a ], [ %.348.i.i, %bb.g ] ; 2 uses
  %.044.i.i = phi ptr [ %i.b, %bb.a ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %i.c = load i8, ptr %.045.i.i, align 1, !tbaa !32
  %i.d = add i8 %i.c, -48
  %or.cond.i.i = icmp ult i8 %i.d, 10
  br i1 %or.cond.i.i, label %.critedge.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %.044.i.i, align 1, !tbaa !32
  %i.f = add i8 %i.e, -48
  %or.cond58.i.i = icmp ult i8 %i.f, 10
  br i1 %or.cond58.i.i, label %.critedge.i.i.preheader, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

.critedge.i.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.146.i.i = phi ptr [ %i.i, %.critedge.i.i ], [ %.045.i.i, %.critedge.i.i.preheader ] ; 5 uses
  %i.g = load i8, ptr %.146.i.i, align 1, !tbaa !32
  %i.h = icmp eq i8 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %.146.i.i, i64 1
  br i1 %i.h, label %.critedge.i.i, label %.preheader65.i.i, !llvm.loop !3

.preheader65.i.i:                                 ; preds = %.critedge.i.i, %.preheader65.i.i
  %.1.i.i = phi ptr [ %i.l, %.preheader65.i.i ], [ %.044.i.i, %.critedge.i.i ] ; 5 uses
  %i.j = load i8, ptr %.1.i.i, align 1, !tbaa !32
  %i.k = icmp eq i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %i.k, label %.preheader65.i.i, label %.preheader.i.i, !llvm.loop !4

.preheader.i.i:                                   ; preds = %.preheader65.i.i, %.preheader.i.i
  %.247.i.i = phi ptr [ %i.o, %.preheader.i.i ], [ %.146.i.i, %.preheader65.i.i ] ; 4 uses
  %i.m = load i8, ptr %.247.i.i, align 1, !tbaa !32 ; 2 uses
  %i.n = add i8 %i.m, -48
  %or.cond59.i.i = icmp ult i8 %i.n, 10
  %i.o = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 1
  br i1 %or.cond59.i.i, label %.preheader.i.i, label %.critedge4.i.i, !llvm.loop !5

.critedge4.i.i:                                   ; preds = %.preheader.i.i, %.critedge4.i.i
  %.2.i.i = phi ptr [ %i.r, %.critedge4.i.i ], [ %.1.i.i, %.preheader.i.i ] ; 4 uses
  %i.p = load i8, ptr %.2.i.i, align 1, !tbaa !32 ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond60.i.i = icmp ult i8 %i.q, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  br i1 %or.cond60.i.i, label %.critedge4.i.i, label %.critedge6.i.i, !llvm.loop !6

.critedge6.i.i:                                   ; preds = %.critedge4.i.i
  %i.s = ptrtoint ptr %.247.i.i to i64
  %i.t = ptrtoint ptr %.146.i.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ptrtoint ptr %.2.i.i to i64
  %i.w = ptrtoint ptr %.1.i.i to i64
  %.neg.i.i = sub i64 %i.w, %i.v
  %i.x = add i64 %.neg.i.i, %i.u                  ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge6.i.i
  %i.z = tail call i32 @strncmp(ptr noundef nonnull %.146.i.i, ptr noundef nonnull %.1.i.i, i64 noundef %i.u) #40
  %i.aa = sext i32 %i.z to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge6.i.i
  %.043.i.i = phi i64 [ %i.aa, %bb.d ], [ %i.x, %.critedge6.i.i ] ; 2 uses
  %i.ab = icmp slt i64 %.043.i.i, 0
  br i1 %i.ab, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %.043.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i8 %i.p, 46
  %spec.select.idx.i.i = zext i1 %i.ac to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %spec.select.idx.i.i
  %i.ad = icmp eq i8 %i.m, 46
  %.348.idx.i.i = zext i1 %i.ad to i64
  %.348.i.i = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 %.348.idx.i.i
  br label %bb.b, !llvm.loop !7

_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.c, %bb.f, %bb.e
  %.252.i.i = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.252.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN13cmSystemTools23VersionCompareGreaterEqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.045.i.i = phi ptr [ %i.a, %bb.a ], [ %.348.i.i, %bb.g ] ; 2 uses
  %.044.i.i = phi ptr [ %i.b, %bb.a ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %i.c = load i8, ptr %.045.i.i, align 1, !tbaa !32
  %i.d = add i8 %i.c, -48
  %or.cond.i.i = icmp ult i8 %i.d, 10
  br i1 %or.cond.i.i, label %.critedge.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %.044.i.i, align 1, !tbaa !32
  %i.f = add i8 %i.e, -48
  %or.cond58.i.i = icmp ult i8 %i.f, 10
  br i1 %or.cond58.i.i, label %.critedge.i.i.preheader, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

.critedge.i.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.146.i.i = phi ptr [ %i.i, %.critedge.i.i ], [ %.045.i.i, %.critedge.i.i.preheader ] ; 5 uses
  %i.g = load i8, ptr %.146.i.i, align 1, !tbaa !32
  %i.h = icmp eq i8 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %.146.i.i, i64 1
  br i1 %i.h, label %.critedge.i.i, label %.preheader65.i.i, !llvm.loop !3

.preheader65.i.i:                                 ; preds = %.critedge.i.i, %.preheader65.i.i
  %.1.i.i = phi ptr [ %i.l, %.preheader65.i.i ], [ %.044.i.i, %.critedge.i.i ] ; 5 uses
  %i.j = load i8, ptr %.1.i.i, align 1, !tbaa !32
  %i.k = icmp eq i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %i.k, label %.preheader65.i.i, label %.preheader.i.i, !llvm.loop !4

.preheader.i.i:                                   ; preds = %.preheader65.i.i, %.preheader.i.i
  %.247.i.i = phi ptr [ %i.o, %.preheader.i.i ], [ %.146.i.i, %.preheader65.i.i ] ; 4 uses
  %i.m = load i8, ptr %.247.i.i, align 1, !tbaa !32 ; 2 uses
  %i.n = add i8 %i.m, -48
  %or.cond59.i.i = icmp ult i8 %i.n, 10
  %i.o = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 1
  br i1 %or.cond59.i.i, label %.preheader.i.i, label %.critedge4.i.i, !llvm.loop !5

.critedge4.i.i:                                   ; preds = %.preheader.i.i, %.critedge4.i.i
  %.2.i.i = phi ptr [ %i.r, %.critedge4.i.i ], [ %.1.i.i, %.preheader.i.i ] ; 4 uses
  %i.p = load i8, ptr %.2.i.i, align 1, !tbaa !32 ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond60.i.i = icmp ult i8 %i.q, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  br i1 %or.cond60.i.i, label %.critedge4.i.i, label %.critedge6.i.i, !llvm.loop !6

.critedge6.i.i:                                   ; preds = %.critedge4.i.i
  %i.s = ptrtoint ptr %.247.i.i to i64
  %i.t = ptrtoint ptr %.146.i.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ptrtoint ptr %.2.i.i to i64
  %i.w = ptrtoint ptr %.1.i.i to i64
  %.neg.i.i = sub i64 %i.w, %i.v
  %i.x = add i64 %.neg.i.i, %i.u                  ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge6.i.i
  %i.z = tail call i32 @strncmp(ptr noundef nonnull %.146.i.i, ptr noundef nonnull %.1.i.i, i64 noundef %i.u) #40
  %i.aa = sext i32 %i.z to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge6.i.i
  %.043.i.i = phi i64 [ %i.aa, %bb.d ], [ %i.x, %.critedge6.i.i ] ; 2 uses
  %i.ab = icmp slt i64 %.043.i.i, 0
  br i1 %i.ab, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %.043.i.i, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i8 %i.p, 46
  %spec.select.idx.i.i = zext i1 %i.ac to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 %spec.select.idx.i.i
  %i.ad = icmp eq i8 %i.m, 46
  %.348.idx.i.i = zext i1 %i.ad to i64
  %.348.i.i = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 %.348.idx.i.i
  br label %bb.b, !llvm.loop !7

_ZN13cmSystemTools14VersionCompareENS_9CompareOpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %bb.c, %bb.f, %bb.e
  %.252.i.i = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.c ]
  ret i1 %.252.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -255, 256) i32 @_ZN13cmSystemTools10strverscmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !28     ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !32
  %i.g = icmp ne i8 %i.d, %i.f                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.d, 0
  %or.cond.i.i = or i1 %.not.i.i, %i.g
  %i.h = add i64 %.0.i.i, 1
  br i1 %or.cond.i.i, label %_ZL42cm_strverscmp_find_first_difference_or_endPKcS0_.exit.i, label %bb.b, !llvm.loop !760

_ZL42cm_strverscmp_find_first_difference_or_endPKcS0_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i.i ; 2 uses
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %_ZL42cm_strverscmp_find_first_difference_or_endPKcS0_.exit.i
  %.not5.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not5.i.i, label %bb.e, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.06.i.i = phi i64 [ %i.o, %bb.d ], [ %.0.i.i, %bb.c ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.a, i64 %.06.i.i
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %i.n = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.m)
  %.not4.i.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i.i, label %_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = add i64 %.06.i.i, -1                     ; 2 uses
  %.not.i54.i = icmp eq i64 %i.o, 0
  br i1 %.not.i54.i, label %_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i, label %.lr.ph.i.i, !llvm.loop !761

_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i:  ; preds = %bb.d, %.lr.ph.i.i
  %.0.lcssa.i.i = phi i64 [ %.06.i.i, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.not48.i = icmp eq i64 %.0.lcssa.i.i, %.0.i.i
  br i1 %.not48.i, label %_ZL31cm_strverscmp_find_digits_beginPKcm.exit._ZL31cm_strverscmp_find_digits_beginPKcm.exit.thread_crit_edge.i, label %.preheader

_ZL31cm_strverscmp_find_digits_beginPKcm.exit._ZL31cm_strverscmp_find_digits_beginPKcm.exit.thread_crit_edge.i: ; preds = %_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i
  %.pre.i = load i8, ptr %i.i, align 1, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %_ZL31cm_strverscmp_find_digits_beginPKcm.exit._ZL31cm_strverscmp_find_digits_beginPKcm.exit.thread_crit_edge.i, %bb.c
  %2 = phi i8 [ %.pre.i, %_ZL31cm_strverscmp_find_digits_beginPKcm.exit._ZL31cm_strverscmp_find_digits_beginPKcm.exit.thread_crit_edge.i ], [ %i.d, %bb.c ]
  %i.p = tail call i32 @cmsysString_isdigit(i8 noundef signext %2)
  %.not49.i = icmp eq i32 %i.p, 0
  br i1 %.not49.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.j, align 1, !tbaa !32
  %i.r = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.q)
  %.not50.i = icmp eq i32 %i.r, 0
  br i1 %.not50.i, label %.thread.i, label %.preheader

.preheader:                                       ; preds = %bb.f, %_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i
  %.0.lcssa.i67.i = phi i64 [ %.0.i.i, %bb.f ], [ %.0.lcssa.i.i, %_ZL31cm_strverscmp_find_digits_beginPKcm.exit.i ] ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader
  %.0.i55.i = phi i64 [ %.0.lcssa.i67.i, %.preheader ], [ %i.v, %bb.h ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i55.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %i.u = icmp eq i8 %i.t, 48
  br i1 %i.u, label %bb.h, label %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i55.i, 1                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !32
  %i.y = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.x)
  %.not.i56.i = icmp eq i32 %i.y, 0
  br i1 %.not.i56.i, label %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit.i, label %bb.g, !llvm.loop !762

_ZL33cm_strverscmp_count_leading_zerosPKcm.exit.i: ; preds = %bb.h, %bb.g
  %i.z = sub i64 %.0.i55.i, %.0.lcssa.i67.i
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit.i
  %.0.i57.i = phi i64 [ %.0.lcssa.i67.i, %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit.i ], [ %i.ad, %bb.j ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i57.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !32
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.j, label %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit59.i

bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %.0.i57.i, 1                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !32
  %i.ag = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.af)
  %.not.i58.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i58.i, label %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit59.i, label %bb.i, !llvm.loop !762

_ZL33cm_strverscmp_count_leading_zerosPKcm.exit59.i: ; preds = %bb.j, %bb.i
  %.not51.i = icmp eq i64 %.0.i55.i, %.0.i57.i
  br i1 %.not51.i, label %bb.k, label %.thread67.i

.thread67.i:                                      ; preds = %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit59.i
  %i.ah = sub i64 %.0.i57.i, %.0.lcssa.i67.i
  %i.ai = icmp ugt i64 %i.ah, %i.z
  %i.aj = select i1 %i.ai, i32 1, i32 -1
  br label %_ZL13cm_strverscmpPKcS0_.exit

bb.k:                                             ; preds = %_ZL33cm_strverscmp_count_leading_zerosPKcm.exit59.i
  %i.ak = icmp eq i64 %.0.i55.i, %.0.lcssa.i67.i
  br i1 %i.ak, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.0.i60.i = phi i64 [ %i.ao, %.preheader.i ], [ %.0.i.i, %bb.k ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i60.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.am)
  %.not.i61.i = icmp eq i32 %i.an, 0
  %i.ao = add i64 %.0.i60.i, 1
  br i1 %.not.i61.i, label %_ZL29cm_strverscmp_find_digits_endPKcm.exit.i, label %.preheader.i, !llvm.loop !763

_ZL29cm_strverscmp_find_digits_endPKcm.exit.i:    ; preds = %.preheader.i, %_ZL29cm_strverscmp_find_digits_endPKcm.exit.i
  %.0.i62.i = phi i64 [ %i.as, %_ZL29cm_strverscmp_find_digits_endPKcm.exit.i ], [ %.0.i.i, %.preheader.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i62.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !32
  %i.ar = tail call i32 @cmsysString_isdigit(i8 noundef signext %i.aq)
  %.not.i63.i = icmp eq i32 %i.ar, 0
  %i.as = add i64 %.0.i62.i, 1
  br i1 %.not.i63.i, label %bb.l, label %_ZL29cm_strverscmp_find_digits_endPKcm.exit.i, !llvm.loop !763

bb.l:                                             ; preds = %_ZL29cm_strverscmp_find_digits_endPKcm.exit.i
  %.not52.i = icmp eq i64 %.0.i60.i, %.0.i62.i
  %i.at = icmp ugt i64 %.0.i60.i, %.0.i62.i
  %i.au = select i1 %i.at, i32 1, i32 -1
  br i1 %.not52.i, label %.thread.i, label %_ZL13cm_strverscmpPKcS0_.exit

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.f, %bb.e, %_ZL42cm_strverscmp_find_first_difference_or_endPKcS0_.exit.i
  %i.av = load i8, ptr %i.i, align 1, !tbaa !32
  %i.aw = sext i8 %i.av to i32
  %i.ax = load i8, ptr %i.j, align 1, !tbaa !32
  %i.ay = sext i8 %i.ax to i32
  %i.az = sub nsw i32 %i.aw, %i.ay
  br label %_ZL13cm_strverscmpPKcS0_.exit

_ZL13cm_strverscmpPKcS0_.exit:                    ; preds = %.thread67.i, %bb.l, %.thread.i
  %.5.i = phi i32 [ %i.az, %.thread.i ], [ %i.au, %bb.l ], [ %i.aj, %.thread67.i ]
  ret i32 %.5.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13cmSystemTools11RemoveRPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_Pb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 9 uses
  %i.c = alloca [2 x i64], align 16               ; 9 uses
  %3 = alloca %class.cmELF, align 8               ; 19 uses
  %i.d = alloca [2 x ptr], align 16               ; 12 uses
  %4 = alloca %"class.std::vector.154", align 8   ; 13 uses
  %5 = alloca %"class.std::vector.19", align 8    ; 7 uses
  %6 = alloca %class.FileModeGuard, align 8       ; 10 uses
  %7 = alloca %"class.std::basic_ofstream", align 8 ; 18 uses
  %.not.i = icmp ne ptr %2, null                  ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.e = load ptr, ptr %0, align 8, !tbaa !28
  invoke void @_ZN5cmELFC1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 @_ZNK5cmELF5ValidEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNK5cmELFcvbEv.exit.i unwind label %bb.f

_ZNK5cmELFcvbEv.exit.i:                           ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %_ZL14RemoveRPathELFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit.thread61

_ZL14RemoveRPathELFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit.thread61: ; preds = %_ZNK5cmELFcvbEv.exit.i
  call void @_ZN5cmELFD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %.not.i, label %bb.bp, label %_ZL16RemoveRPathXCOFFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.g:                                             ; preds = %_ZNK5cmELFcvbEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.i = invoke noundef ptr @_ZN5cmELF8GetRPathEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.m       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not92.i = icmp eq ptr %i.i, null
  br i1 %.not92.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.i, ptr %i.d, align 16, !tbaa !145
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.057.i = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]    ; 3 uses
  %i.j = invoke noundef ptr @_ZN5cmELF10GetRunPathEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not93.i = icmp eq ptr %i.j, null
  br i1 %.not93.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = add nuw nsw i32 %.057.i, 1
  %i.l = zext nneg i32 %.057.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !145
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.n:                                             ; preds = %bb.l, %bb.k
  %.158.i = phi i32 [ %i.k, %bb.l ], [ %.057.i, %bb.k ] ; 4 uses
  switch i32 %.158.i, label %bb.q [
    i32 0, label %_ZL14RemoveRPathELFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit.thread
    i32 2, label %bb.o
  ]

_ZL14RemoveRPathELFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @_ZN5cmELFD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %_ZL16RemoveRPathXCOFFRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_Pb.exit

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !145  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !768
  %i.s = load ptr, ptr %i.d, align 16, !tbaa !145 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !768
  %i.v = icmp slt i32 %i.r, %i.u
  br i1 %i.v, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.p, ptr %i.d, align 16, !tbaa !145
  store ptr %i.s, ptr %i.o, align 8, !tbaa !145
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNK5cmELF17GetDynamicEntriesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.154") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.w = load ptr, ptr %4, align 8, !tbaa !770
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !770
  %.not171.i = icmp eq ptr %i.w, %i.y             ; 2 uses
  br i1 %.not171.i, label %bb.s, label %.preheader182.i

.preheader182.i:                                  ; preds = %bb.r
  %.not243.i = icmp eq i32 %.158.i, 0
  br i1 %.not243.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %.not97.i = icmp eq ptr %1, null
  br i1 %.not97.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.135, i64 noundef 50)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.ai ; 0 uses

bb.u:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIlmESaIS1_EED2Ev.exit123.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.preheader182.i
  %i.ad = invoke noundef i64 @_ZNK5cmELF23GetDynamicEntryPositionEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %bb.v unwind label %bb.ai

.lr.ph.i:                                         ; preds = %.preheader182.i
  %i.ae = load ptr, ptr %i.d, align 16, !tbaa !145 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !147
  store i64 %i.ag, ptr %i.b, align 16, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !148
end_hunk_0
