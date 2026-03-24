begin_hunk_0

_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i: ; preds = %11, %10, %9
  %13 = phi i16 [ %7, %9 ], [ 0, %11 ], [ %.496..496..496..pre.i.i.i, %10 ]
  %14 = add i16 %13, %7                           ; 2 uses
  %.496..496..496..sroa_idx122 = getelementptr inbounds nuw i8, ptr %4, i64 496
  store i16 %14, ptr %.496..496..496..sroa_idx122, align 8, !tbaa !50
  br label %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit: ; preds = %3, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %3 ], [ %14, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i ] ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge34, label %15

15:                                               ; preds = %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.not19.i = icmp eq i16 %7, 0
  br i1 %.not19.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %15
  %16 = load i64, ptr %1, align 8, !tbaa !25
  %17 = zext i64 %16 to i128                      ; 3 uses
  %xtraiter = and i64 %8, 1
  %18 = icmp eq i16 %7, 1
  br i1 %18, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %8, 65534
  br label %28

._crit_edge.i.unr-lcssa:                          ; preds = %28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %46, %._crit_edge.i.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %44, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod112 = trunc i16 %7 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; 2 uses
  %20 = load i64, ptr %19, align 8, !tbaa !25
  %21 = zext i64 %20 to i128
  %22 = mul nuw i128 %21, %17
  %23 = zext i64 %.01215.i.epil.init to i128
  %24 = add nuw i128 %22, %23                     ; 2 uses
  %25 = lshr i128 %24, 64                         ; 2 uses
  %26 = trunc nuw i128 %25 to i64
  %27 = trunc i128 %24 to i64
  store i64 %27, ptr %19, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa109 = phi i128 [ %43, %._crit_edge.i.unr-lcssa ], [ %25, %.epil.preheader ]
  %.lcssa108 = phi i64 [ %44, %._crit_edge.i.unr-lcssa ], [ %26, %.epil.preheader ]
  %.not.i = icmp eq i128 %.lcssa109, 0
  br i1 %.not.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %47

28:                                               ; preds = %28, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %46, %28 ] ; 3 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %44, %28 ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %28 ]
  %29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; 2 uses
  %30 = load i64, ptr %29, align 8, !tbaa !25
  %31 = zext i64 %30 to i128
  %32 = mul nuw i128 %31, %17
  %33 = zext i64 %.01215.i to i128
  %34 = add nuw i128 %32, %33                     ; 2 uses
  %35 = lshr i128 %34, 64
  %36 = trunc i128 %34 to i64
  store i64 %36, ptr %29, align 8, !tbaa !25
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %39 = load i64, ptr %38, align 8, !tbaa !25
  %40 = zext i64 %39 to i128
  %41 = mul nuw i128 %40, %17
  %42 = add nuw i128 %41, %35                     ; 2 uses
  %43 = lshr i128 %42, 64                         ; 2 uses
  %44 = trunc nuw i128 %43 to i64                 ; 3 uses
  %45 = trunc i128 %42 to i64
  store i64 %45, ptr %38, align 8, !tbaa !25
  %46 = add nuw nsw i64 %.016.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %28, !llvm.loop !53

47:                                               ; preds = %._crit_edge.i
  %48 = icmp ult i16 %7, 62
  br i1 %48, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %47
  %49 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8
  store i64 %.lcssa108, ptr %49, align 8, !tbaa !25
  %50 = add nuw nsw i16 %7, 1
  store i16 %50, ptr %6, align 8, !tbaa !50
  br label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit: ; preds = %15, %._crit_edge.i, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %.not30.not68.not = icmp eq i64 %2, 1
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 496 ; 2 uses
  %.not.i35 = icmp ult i16 %.496..496., 63
  %.0..0..0. = load i64, ptr %4, align 8
  %52 = shl nuw nsw i16 %.496..496., 3
  %.idx.i.i.i.i = zext nneg i16 %52 to i64
  br i1 %.not.i35, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
end_hunk_0
begin_hunk_1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.critedge.us
  %.02769.us = phi i64 [ %143, %.critedge.us ], [ 1, %.lr.ph.split.us.preheader ] ; 7 uses
  %53 = phi i16 [ %142, %.critedge.us ], [ %.promoted, %.lr.ph.split.us.preheader ] ; 3 uses
  %54 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us
  %55 = load i64, ptr %54, align 8, !tbaa !25     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not29.us = icmp eq i64 %55, 0
  br i1 %.not29.us, label %.critedge.us, label %56

56:                                               ; preds = %.lr.ph.split.us
  store i16 0, ptr %51, align 8, !tbaa !50
  switch i16 %.496..496., label %58 [
    i16 0, label %59
    i16 1, label %57
  ], !prof !75

57:                                               ; preds = %56
  store i64 %.0..0..0., ptr %5, align 8, !tbaa !25
  br label %59

58:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %4, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %51, align 8, !tbaa !50
  br label %59

59:                                               ; preds = %58, %57, %56
  %60 = phi i16 [ %.496..496., %56 ], [ 0, %57 ], [ %.pre.i.i.us, %58 ]
  %61 = add i16 %60, %.496..496.                  ; 7 uses
  %62 = zext i16 %61 to i64                       ; 3 uses
  %.not19.i36.us = icmp eq i16 %61, 0
  br i1 %.not19.i36.us, label %97, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %59
  %63 = zext i64 %55 to i128                      ; 3 uses
  %xtraiter114 = and i64 %62, 1
  %64 = icmp eq i16 %61, 1
  br i1 %64, label %.epil.preheader113, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
  %unroll_iter119 = and i64 %62, 65534
  br label %65

65:                                               ; preds = %65, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %83, %65 ] ; 3 uses
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %81, %65 ]
  %niter120 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter120.next.1, %65 ]
  %66 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us ; 2 uses
  %67 = load i64, ptr %66, align 8, !tbaa !25
  %68 = zext i64 %67 to i128
  %69 = mul nuw i128 %68, %63
  %70 = zext i64 %.01215.i39.us to i128
  %71 = add nuw i128 %69, %70                     ; 2 uses
  %72 = lshr i128 %71, 64
  %73 = trunc i128 %71 to i64
  store i64 %73, ptr %66, align 8, !tbaa !25
  %74 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  %76 = load i64, ptr %75, align 8, !tbaa !25
  %77 = zext i64 %76 to i128
  %78 = mul nuw i128 %77, %63
  %79 = add nuw i128 %78, %72                     ; 2 uses
  %80 = lshr i128 %79, 64                         ; 2 uses
  %81 = trunc nuw i128 %80 to i64                 ; 3 uses
  %82 = trunc i128 %79 to i64
  store i64 %82, ptr %75, align 8, !tbaa !25
  %83 = add nuw nsw i64 %.016.i38.us, 2           ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %65, !llvm.loop !53

._crit_edge.i41.us.unr-lcssa:                     ; preds = %65
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge.i41.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %83, %._crit_edge.i41.us.unr-lcssa ]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %81, %._crit_edge.i41.us.unr-lcssa ]
  %lcmp.mod118 = trunc i16 %61 to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %84 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us.epil.init ; 2 uses
  %85 = load i64, ptr %84, align 8, !tbaa !25
  %86 = zext i64 %85 to i128
  %87 = mul nuw i128 %86, %63
  %88 = zext i64 %.01215.i39.us.epil.init to i128
  %89 = add nuw i128 %87, %88                     ; 2 uses
  %90 = lshr i128 %89, 64                         ; 2 uses
  %91 = trunc nuw i128 %90 to i64
  %92 = trunc i128 %89 to i64
  store i64 %92, ptr %84, align 8, !tbaa !25
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader113
  %.lcssa105 = phi i128 [ %80, %._crit_edge.i41.us.unr-lcssa ], [ %90, %.epil.preheader113 ]
  %.lcssa = phi i64 [ %81, %._crit_edge.i41.us.unr-lcssa ], [ %91, %.epil.preheader113 ]
  %.not.i42.us = icmp eq i128 %.lcssa105, 0
  br i1 %.not.i42.us, label %97, label %93

93:                                               ; preds = %._crit_edge.i41.us
  %94 = icmp ult i16 %61, 62
  br i1 %94, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %93
  %95 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %62
  store i64 %.lcssa, ptr %95, align 8, !tbaa !25
  %96 = add nuw nsw i16 %61, 1
  br label %97

97:                                               ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %59
  %98 = phi i16 [ %96, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %61, %._crit_edge.i41.us ], [ 0, %59 ] ; 2 uses
  %99 = zext i16 %98 to i64                       ; 4 uses
  %100 = zext i16 %53 to i64                      ; 5 uses
  %101 = icmp ugt i64 %.02769.us, %100
  %102 = sub nsw i64 %100, %.02769.us
  %103 = icmp ult i64 %102, %99
  %or.cond.i.us = select i1 %101, i1 true, i1 %103
  br i1 %or.cond.i.us, label %104, label %112

104:                                              ; preds = %97
  %105 = add i64 %.02769.us, %99                  ; 4 uses
  %106 = icmp ult i64 %105, 63
  br i1 %106, label %107, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

107:                                              ; preds = %104
  %108 = icmp samesign ugt i64 %105, %100
  br i1 %108, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %107
  %109 = getelementptr [8 x i8], ptr %0, i64 %100
  %110 = sub nuw nsw i64 %105, %100
  %111 = shl nuw nsw i64 %110, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %109, i8 0, i64 %111, i1 false), !tbaa !25
  br label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %107
  %storemerge.i.i.i.us = trunc nuw nsw i64 %105 to i16 ; 2 uses
  store i16 %storemerge.i.i.i.us, ptr %6, align 8, !tbaa !50
  br label %112

112:                                              ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %97
  %113 = phi i16 [ %53, %97 ], [ %storemerge.i.i.i.us, %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; 6 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us
  %.not.i46.us = icmp eq i16 %98, 0
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %112, %125
  %.02434.i.us = phi i64 [ %126, %125 ], [ 0, %112 ] ; 3 uses
  %.02533.i.us = phi i1 [ %.0.in.i.us, %125 ], [ false, %112 ]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; 2 uses
  %114 = load i64, ptr %gep.i.us, align 8, !tbaa !25
  %115 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02434.i.us
  %116 = load i64, ptr %115, align 8, !tbaa !25
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %114, i64 %116) ; 2 uses
  %118 = extractvalue { i64, i1 } %117, 1         ; 2 uses
  %119 = extractvalue { i64, i1 } %117, 0         ; 2 uses
  br i1 %.02533.i.us, label %120, label %125

120:                                              ; preds = %.lr.ph.i47.us
  %121 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %119, i64 1) ; 2 uses
  %122 = extractvalue { i64, i1 } %121, 1
  %123 = extractvalue { i64, i1 } %121, 0
  %124 = or i1 %118, %122
  br label %125

125:                                              ; preds = %120, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %124, %120 ], [ %118, %.lr.ph.i47.us ] ; 2 uses
  %.023.i.us = phi i64 [ %123, %120 ], [ %119, %.lr.ph.i47.us ]
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !25
  %126 = add nuw nsw i64 %.02434.i.us, 1          ; 2 uses
  %exitcond.not.i48.us = icmp eq i64 %126, %99
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !76

._crit_edge.i49.us:                               ; preds = %125
  br i1 %.0.in.i.us, label %127, label %.critedge.us

127:                                              ; preds = %._crit_edge.i49.us
  %128 = add i64 %.02769.us, %99                  ; 2 uses
  %129 = zext i16 %113 to i64                     ; 3 uses
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %.lr.ph104, label %.critedge.i.i.us

131:                                              ; preds = %.lr.ph104
  %132 = add nuw nsw i64 %.01421.i.i.us103, 1     ; 2 uses
  %133 = icmp ult i64 %132, %129
  br i1 %133, label %.lr.ph104, label %.critedge.i.i.us, !llvm.loop !77

.critedge.i.i.us:                                 ; preds = %131, %127
  %134 = icmp ult i16 %113, 62
  br i1 %134, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %135 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %129
  store i64 1, ptr %135, align 8, !tbaa !25
  %136 = add nuw nsw i16 %113, 1                  ; 2 uses
  store i16 %136, ptr %6, align 8, !tbaa !50
  br label %.critedge.us

.lr.ph104:                                        ; preds = %127, %131
  %.01421.i.i.us103 = phi i64 [ %132, %131 ], [ %128, %127 ] ; 2 uses
  %137 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us103 ; 2 uses
  %138 = load i64, ptr %137, align 8, !tbaa !25
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %138, i64 1) ; 2 uses
  %140 = extractvalue { i64, i1 } %139, 1
  %141 = extractvalue { i64, i1 } %139, 0
  store i64 %141, ptr %137, align 8, !tbaa !25
  br i1 %140, label %131, label %.critedge.us, !llvm.loop !77

.critedge.us:                                     ; preds = %.lr.ph104, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %112, %.lr.ph.split.us
  %142 = phi i16 [ %53, %.lr.ph.split.us ], [ %113, %112 ], [ %136, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %113, %._crit_edge.i49.us ], [ %113, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %143 = add nuw i64 %.02769.us, 1                ; 2 uses
  %exitcond75.not = icmp eq i64 %143, %2
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %146, %.critedge ], [ 1, %.lr.ph ] ; 2 uses
  %144 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769
  %145 = load i64, ptr %144, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not29 = icmp eq i64 %145, 0
  br i1 %.not29, label %.critedge, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %146 = add nuw i64 %.02769, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %146, %2
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !78

_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit: ; preds = %.lr.ph.split, %93, %104, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.critedge32

end_hunk_1
begin_hunk_2
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %147 = getelementptr i8, ptr %0, i64 -8
  br label %148

148:                                              ; preds = %154, %.lr.ph.i50
  %149 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %155, %154 ] ; 2 uses
  %150 = zext i16 %149 to i64
  %151 = getelementptr [8 x i8], ptr %147, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !25
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %.critedge32

154:                                              ; preds = %148
  %155 = add i16 %149, -1                         ; 3 uses
  store i16 %155, ptr %6, align 8, !tbaa !50
  %.not.i51 = icmp eq i16 %155, 0
  br i1 %.not.i51, label %.critedge32, label %148, !llvm.loop !79

.critedge32:                                      ; preds = %154, %148, %47, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit
  %.6 = phi i1 [ false, %47 ], [ false, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %148 ], [ true, %154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i1 %.6
}
end_hunk_2
