begin_hunk_0

_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i: ; preds = %11, %10, %9
  %13 = phi i16 [ %7, %9 ], [ 0, %11 ], [ %.496..496..496..pre.i.i.i, %10 ] ; [#uses=1 type=i16]
  %14 = add i16 %13, %7                           ; [#uses=1 type=i16]
  %15 = freeze i16 %14                            ; [#uses=2 type=i16]
  %.496..496..496..sroa_idx122 = getelementptr inbounds nuw i8, ptr %4, i64 496 ; [#uses=1 type=ptr]
  store i16 %15, ptr %.496..496..496..sroa_idx122, align 8, !tbaa !50
  br label %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit: ; preds = %3, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i
  %.496..496. = phi i16 [ 0, %3 ], [ %15, %_ZN10fast_float8stackvecILt62EE16extend_uncheckedENS_4spanImEE.exit.i.i ] ; [#uses=5 type=i16]
  %.not = icmp eq i64 %2, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %.critedge34, label %16

16:                                               ; preds = %_ZN10fast_float8stackvecILt62EEC2ENS_4spanImEE.exit
  %.not19.i = icmp eq i16 %7, 0                   ; [#uses=1 type=i1]
  br i1 %.not19.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %16
  %17 = load i64, ptr %1, align 8, !tbaa !25      ; [#uses=1 type=i64]
  %18 = zext i64 %17 to i128                      ; [#uses=3 type=i128]
  %xtraiter = and i64 %8, 1                       ; [#uses=1 type=i64]
  %19 = icmp eq i16 %7, 1                         ; [#uses=1 type=i1]
  br i1 %19, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %8, 65534                ; [#uses=1 type=i64]
  br label %29

._crit_edge.i.unr-lcssa:                          ; preds = %29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0        ; [#uses=1 type=i1]
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %47, %._crit_edge.i.unr-lcssa ] ; [#uses=1 type=i64]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %45, %._crit_edge.i.unr-lcssa ] ; [#uses=1 type=i64]
  %lcmp.mod112 = trunc i16 %7 to i1               ; [#uses=1 type=i1]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i.epil.init ; [#uses=2 type=ptr]
  %21 = load i64, ptr %20, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %22 = zext i64 %21 to i128                      ; [#uses=1 type=i128]
  %23 = mul nuw i128 %22, %18                     ; [#uses=1 type=i128]
  %24 = zext i64 %.01215.i.epil.init to i128      ; [#uses=1 type=i128]
  %25 = add nuw i128 %23, %24                     ; [#uses=2 type=i128]
  %26 = lshr i128 %25, 64                         ; [#uses=2 type=i128]
  %27 = trunc nuw i128 %26 to i64                 ; [#uses=1 type=i64]
  %28 = trunc i128 %25 to i64                     ; [#uses=1 type=i64]
  store i64 %28, ptr %20, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa109 = phi i128 [ %44, %._crit_edge.i.unr-lcssa ], [ %26, %.epil.preheader ] ; [#uses=1 type=i128]
  %.lcssa108 = phi i64 [ %45, %._crit_edge.i.unr-lcssa ], [ %27, %.epil.preheader ] ; [#uses=1 type=i64]
  %.not.i = icmp eq i128 %.lcssa109, 0            ; [#uses=1 type=i1]
  br i1 %.not.i, label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit, label %48

29:                                               ; preds = %29, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %47, %29 ] ; [#uses=3 type=i64]
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %45, %29 ] ; [#uses=1 type=i64]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %29 ] ; [#uses=1 type=i64]
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; [#uses=2 type=ptr]
  %31 = load i64, ptr %30, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %32 = zext i64 %31 to i128                      ; [#uses=1 type=i128]
  %33 = mul nuw i128 %32, %18                     ; [#uses=1 type=i128]
  %34 = zext i64 %.01215.i to i128                ; [#uses=1 type=i128]
  %35 = add nuw i128 %33, %34                     ; [#uses=2 type=i128]
  %36 = lshr i128 %35, 64                         ; [#uses=1 type=i128]
  %37 = trunc i128 %35 to i64                     ; [#uses=1 type=i64]
  store i64 %37, ptr %30, align 8, !tbaa !25
  %38 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.i ; [#uses=1 type=ptr]
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 8 ; [#uses=2 type=ptr]
  %40 = load i64, ptr %39, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %41 = zext i64 %40 to i128                      ; [#uses=1 type=i128]
  %42 = mul nuw i128 %41, %18                     ; [#uses=1 type=i128]
  %43 = add nuw i128 %42, %36                     ; [#uses=2 type=i128]
  %44 = lshr i128 %43, 64                         ; [#uses=2 type=i128]
  %45 = trunc nuw i128 %44 to i64                 ; [#uses=3 type=i64]
  %46 = trunc i128 %43 to i64                     ; [#uses=1 type=i64]
  store i64 %46, ptr %39, align 8, !tbaa !25
  %47 = add nuw nsw i64 %.016.i, 2                ; [#uses=2 type=i64]
  %niter.next.1 = add i64 %niter, 2               ; [#uses=2 type=i64]
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter ; [#uses=1 type=i1]
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %29, !llvm.loop !53

48:                                               ; preds = %._crit_edge.i
  %49 = icmp ult i16 %7, 62                       ; [#uses=1 type=i1]
  br i1 %49, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i, label %.critedge32

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i: ; preds = %48
  %50 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8 ; [#uses=1 type=ptr]
  store i64 %.lcssa108, ptr %50, align 8, !tbaa !25
  %51 = add nuw nsw i16 %7, 1                     ; [#uses=1 type=i16]
  store i16 %51, ptr %6, align 8, !tbaa !50
  br label %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit

_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit: ; preds = %16, %._crit_edge.i, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i
  %.not30.not68.not = icmp eq i64 %2, 1           ; [#uses=1 type=i1]
  br i1 %.not30.not68.not, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10fast_float9small_mulILt62EEEbRNS_8stackvecIXT_EEEm.exit
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 496 ; [#uses=2 type=ptr]
  %.not.i35 = icmp ult i16 %.496..496., 63        ; [#uses=1 type=i1]
  %.0..0..0. = load i64, ptr %4, align 8          ; [#uses=1 type=i64]
  %53 = shl nuw nsw i16 %.496..496., 3            ; [#uses=1 type=i16]
  %.idx.i.i.i.i = zext nneg i16 %53 to i64        ; [#uses=1 type=i64]
  br i1 %.not.i35, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
end_hunk_0
begin_hunk_1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.critedge.us
  %.02769.us = phi i64 [ %144, %.critedge.us ], [ 1, %.lr.ph.split.us.preheader ] ; [#uses=7 type=i64]
  %54 = phi i16 [ %143, %.critedge.us ], [ %.promoted, %.lr.ph.split.us.preheader ] ; [#uses=3 type=i16]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769.us ; [#uses=1 type=ptr]
  %56 = load i64, ptr %55, align 8, !tbaa !25     ; [#uses=2 type=i64]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not29.us = icmp eq i64 %56, 0                 ; [#uses=1 type=i1]
  br i1 %.not29.us, label %.critedge.us, label %57

57:                                               ; preds = %.lr.ph.split.us
  store i16 0, ptr %52, align 8, !tbaa !50
  switch i16 %.496..496., label %59 [
    i16 0, label %60
    i16 1, label %58
  ], !prof !75

58:                                               ; preds = %57
  store i64 %.0..0..0., ptr %5, align 8, !tbaa !25
  br label %60

59:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %4, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.us = load i16, ptr %52, align 8, !tbaa !50 ; [#uses=1 type=i16]
  br label %60

60:                                               ; preds = %59, %58, %57
  %61 = phi i16 [ %.496..496., %57 ], [ 0, %58 ], [ %.pre.i.i.us, %59 ] ; [#uses=1 type=i16]
  %62 = add i16 %61, %.496..496.                  ; [#uses=7 type=i16]
  %63 = zext i16 %62 to i64                       ; [#uses=3 type=i64]
  %.not19.i36.us = icmp eq i16 %62, 0             ; [#uses=1 type=i1]
  br i1 %.not19.i36.us, label %98, label %.lr.ph.i37.us

.lr.ph.i37.us:                                    ; preds = %60
  %64 = zext i64 %56 to i128                      ; [#uses=3 type=i128]
  %xtraiter114 = and i64 %63, 1                   ; [#uses=1 type=i64]
  %65 = icmp eq i16 %62, 1                        ; [#uses=1 type=i1]
  br i1 %65, label %.epil.preheader113, label %.lr.ph.i37.us.new

.lr.ph.i37.us.new:                                ; preds = %.lr.ph.i37.us
  %unroll_iter119 = and i64 %63, 65534            ; [#uses=1 type=i64]
  br label %66

66:                                               ; preds = %66, %.lr.ph.i37.us.new
  %.016.i38.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %84, %66 ] ; [#uses=3 type=i64]
  %.01215.i39.us = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %82, %66 ] ; [#uses=1 type=i64]
  %niter120 = phi i64 [ 0, %.lr.ph.i37.us.new ], [ %niter120.next.1, %66 ] ; [#uses=1 type=i64]
  %67 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us ; [#uses=2 type=ptr]
  %68 = load i64, ptr %67, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %69 = zext i64 %68 to i128                      ; [#uses=1 type=i128]
  %70 = mul nuw i128 %69, %64                     ; [#uses=1 type=i128]
  %71 = zext i64 %.01215.i39.us to i128           ; [#uses=1 type=i128]
  %72 = add nuw i128 %70, %71                     ; [#uses=2 type=i128]
  %73 = lshr i128 %72, 64                         ; [#uses=1 type=i128]
  %74 = trunc i128 %72 to i64                     ; [#uses=1 type=i64]
  store i64 %74, ptr %67, align 8, !tbaa !25
  %75 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us ; [#uses=1 type=ptr]
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 8 ; [#uses=2 type=ptr]
  %77 = load i64, ptr %76, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %78 = zext i64 %77 to i128                      ; [#uses=1 type=i128]
  %79 = mul nuw i128 %78, %64                     ; [#uses=1 type=i128]
  %80 = add nuw i128 %79, %73                     ; [#uses=2 type=i128]
  %81 = lshr i128 %80, 64                         ; [#uses=2 type=i128]
  %82 = trunc nuw i128 %81 to i64                 ; [#uses=3 type=i64]
  %83 = trunc i128 %80 to i64                     ; [#uses=1 type=i64]
  store i64 %83, ptr %76, align 8, !tbaa !25
  %84 = add nuw nsw i64 %.016.i38.us, 2           ; [#uses=2 type=i64]
  %niter120.next.1 = add i64 %niter120, 2         ; [#uses=2 type=i64]
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119 ; [#uses=1 type=i1]
  br i1 %niter120.ncmp.1, label %._crit_edge.i41.us.unr-lcssa, label %66, !llvm.loop !53

._crit_edge.i41.us.unr-lcssa:                     ; preds = %66
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0  ; [#uses=1 type=i1]
  br i1 %lcmp.mod115.not, label %._crit_edge.i41.us, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.lr.ph.i37.us
  %.016.i38.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %84, %._crit_edge.i41.us.unr-lcssa ] ; [#uses=1 type=i64]
  %.01215.i39.us.epil.init = phi i64 [ 0, %.lr.ph.i37.us ], [ %82, %._crit_edge.i41.us.unr-lcssa ] ; [#uses=1 type=i64]
  %lcmp.mod118 = trunc i16 %62 to i1              ; [#uses=1 type=i1]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %85 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.016.i38.us.epil.init ; [#uses=2 type=ptr]
  %86 = load i64, ptr %85, align 8, !tbaa !25     ; [#uses=1 type=i64]
  %87 = zext i64 %86 to i128                      ; [#uses=1 type=i128]
  %88 = mul nuw i128 %87, %64                     ; [#uses=1 type=i128]
  %89 = zext i64 %.01215.i39.us.epil.init to i128 ; [#uses=1 type=i128]
  %90 = add nuw i128 %88, %89                     ; [#uses=2 type=i128]
  %91 = lshr i128 %90, 64                         ; [#uses=2 type=i128]
  %92 = trunc nuw i128 %91 to i64                 ; [#uses=1 type=i64]
  %93 = trunc i128 %90 to i64                     ; [#uses=1 type=i64]
  store i64 %93, ptr %85, align 8, !tbaa !25
  br label %._crit_edge.i41.us

._crit_edge.i41.us:                               ; preds = %._crit_edge.i41.us.unr-lcssa, %.epil.preheader113
  %.lcssa105 = phi i128 [ %81, %._crit_edge.i41.us.unr-lcssa ], [ %91, %.epil.preheader113 ] ; [#uses=1 type=i128]
  %.lcssa = phi i64 [ %82, %._crit_edge.i41.us.unr-lcssa ], [ %92, %.epil.preheader113 ] ; [#uses=1 type=i64]
  %.not.i42.us = icmp eq i128 %.lcssa105, 0       ; [#uses=1 type=i1]
  br i1 %.not.i42.us, label %98, label %94

94:                                               ; preds = %._crit_edge.i41.us
  %95 = icmp ult i16 %62, 62                      ; [#uses=1 type=i1]
  br i1 %95, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us: ; preds = %94
  %96 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %63 ; [#uses=1 type=ptr]
  store i64 %.lcssa, ptr %96, align 8, !tbaa !25
  %97 = add nuw nsw i16 %62, 1                    ; [#uses=1 type=i16]
  br label %98

98:                                               ; preds = %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us, %._crit_edge.i41.us, %60
  %99 = phi i16 [ %97, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i44.us ], [ %62, %._crit_edge.i41.us ], [ 0, %60 ] ; [#uses=2 type=i16]
  %100 = zext i16 %99 to i64                      ; [#uses=4 type=i64]
  %101 = zext i16 %54 to i64                      ; [#uses=5 type=i64]
  %102 = icmp ugt i64 %.02769.us, %101            ; [#uses=1 type=i1]
  %103 = sub nsw i64 %101, %.02769.us             ; [#uses=1 type=i64]
  %104 = icmp ult i64 %103, %100                  ; [#uses=1 type=i1]
  %or.cond.i.us = select i1 %102, i1 true, i1 %104 ; [#uses=1 type=i1]
  br i1 %or.cond.i.us, label %105, label %113

105:                                              ; preds = %98
  %106 = add i64 %.02769.us, %100                 ; [#uses=4 type=i64]
  %107 = icmp ult i64 %106, 63                    ; [#uses=1 type=i1]
  br i1 %107, label %108, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

108:                                              ; preds = %105
  %109 = icmp samesign ugt i64 %106, %101         ; [#uses=1 type=i1]
  br i1 %109, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us: ; preds = %108
  %110 = getelementptr [8 x i8], ptr %0, i64 %101 ; [#uses=1 type=ptr]
  %111 = sub nuw nsw i64 %106, %101               ; [#uses=1 type=i64]
  %112 = shl nuw nsw i64 %111, 3                  ; [#uses=1 type=i64]
  tail call void @llvm.memset.p0.i64(ptr align 8 %110, i8 0, i64 %112, i1 false), !tbaa !25
  br label %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us

_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us: ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.loopexit.i.us, %108
  %storemerge.i.i.i.us = trunc nuw nsw i64 %106 to i16 ; [#uses=2 type=i16]
  store i16 %storemerge.i.i.i.us, ptr %6, align 8, !tbaa !50
  br label %113

113:                                              ; preds = %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us, %98
  %114 = phi i16 [ %54, %98 ], [ %storemerge.i.i.i.us, %_ZN10fast_float8stackvecILt62EE10try_resizeEmm.exit.thread.i.us ] ; [#uses=6 type=i16]
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %0, i64 %.02769.us ; [#uses=1 type=ptr]
  %.not.i46.us = icmp eq i16 %99, 0               ; [#uses=1 type=i1]
  br i1 %.not.i46.us, label %.critedge.us, label %.lr.ph.i47.us

.lr.ph.i47.us:                                    ; preds = %113, %126
  %.02434.i.us = phi i64 [ %127, %126 ], [ 0, %113 ] ; [#uses=3 type=i64]
  %.02533.i.us = phi i1 [ %.0.in.i.us, %126 ], [ false, %113 ] ; [#uses=1 type=i1]
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %.02434.i.us ; [#uses=2 type=ptr]
  %115 = load i64, ptr %gep.i.us, align 8, !tbaa !25 ; [#uses=1 type=i64]
  %116 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.02434.i.us ; [#uses=1 type=ptr]
  %117 = load i64, ptr %116, align 8, !tbaa !25   ; [#uses=1 type=i64]
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 %117) ; [#uses=2 type={ i64, i1 }]
  %119 = extractvalue { i64, i1 } %118, 1         ; [#uses=2 type=i1]
  %120 = extractvalue { i64, i1 } %118, 0         ; [#uses=2 type=i64]
  br i1 %.02533.i.us, label %121, label %126

121:                                              ; preds = %.lr.ph.i47.us
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 1) ; [#uses=2 type={ i64, i1 }]
  %123 = extractvalue { i64, i1 } %122, 1         ; [#uses=1 type=i1]
  %124 = extractvalue { i64, i1 } %122, 0         ; [#uses=1 type=i64]
  %125 = or i1 %119, %123                         ; [#uses=1 type=i1]
  br label %126

126:                                              ; preds = %121, %.lr.ph.i47.us
  %.0.in.i.us = phi i1 [ %125, %121 ], [ %119, %.lr.ph.i47.us ] ; [#uses=2 type=i1]
  %.023.i.us = phi i64 [ %124, %121 ], [ %120, %.lr.ph.i47.us ] ; [#uses=1 type=i64]
  store i64 %.023.i.us, ptr %gep.i.us, align 8, !tbaa !25
  %127 = add nuw nsw i64 %.02434.i.us, 1          ; [#uses=2 type=i64]
  %exitcond.not.i48.us = icmp eq i64 %127, %100   ; [#uses=1 type=i1]
  br i1 %exitcond.not.i48.us, label %._crit_edge.i49.us, label %.lr.ph.i47.us, !llvm.loop !76

._crit_edge.i49.us:                               ; preds = %126
  br i1 %.0.in.i.us, label %128, label %.critedge.us

128:                                              ; preds = %._crit_edge.i49.us
  %129 = add i64 %.02769.us, %100                 ; [#uses=2 type=i64]
  %130 = zext i16 %114 to i64                     ; [#uses=3 type=i64]
  %131 = icmp ult i64 %129, %130                  ; [#uses=1 type=i1]
  br i1 %131, label %.lr.ph104, label %.critedge.i.i.us

132:                                              ; preds = %.lr.ph104
  %133 = add nuw nsw i64 %.01421.i.i.us103, 1     ; [#uses=2 type=i64]
  %134 = icmp ult i64 %133, %130                  ; [#uses=1 type=i1]
  br i1 %134, label %.lr.ph104, label %.critedge.i.i.us, !llvm.loop !77

.critedge.i.i.us:                                 ; preds = %132, %128
  %135 = icmp ult i16 %114, 62                    ; [#uses=1 type=i1]
  br i1 %135, label %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us: ; preds = %.critedge.i.i.us
  %136 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %130 ; [#uses=1 type=ptr]
  store i64 1, ptr %136, align 8, !tbaa !25
  %137 = add nuw nsw i16 %114, 1                  ; [#uses=2 type=i16]
  store i16 %137, ptr %6, align 8, !tbaa !50
  br label %.critedge.us

.lr.ph104:                                        ; preds = %128, %132
  %.01421.i.i.us103 = phi i64 [ %133, %132 ], [ %129, %128 ] ; [#uses=2 type=i64]
  %138 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01421.i.i.us103 ; [#uses=2 type=ptr]
  %139 = load i64, ptr %138, align 8, !tbaa !25   ; [#uses=1 type=i64]
  %140 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 1) ; [#uses=2 type={ i64, i1 }]
  %141 = extractvalue { i64, i1 } %140, 1         ; [#uses=1 type=i1]
  %142 = extractvalue { i64, i1 } %140, 0         ; [#uses=1 type=i64]
  store i64 %142, ptr %138, align 8, !tbaa !25
  br i1 %141, label %132, label %.critedge.us, !llvm.loop !77

.critedge.us:                                     ; preds = %.lr.ph104, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us, %._crit_edge.i49.us, %113, %.lr.ph.split.us
  %143 = phi i16 [ %54, %.lr.ph.split.us ], [ %114, %113 ], [ %137, %_ZN10fast_float8stackvecILt62EE8try_pushEm.exit.thread.i.i.us ], [ %114, %._crit_edge.i49.us ], [ %114, %.lr.ph104 ] ; [#uses=1 type=i16]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %144 = add nuw i64 %.02769.us, 1                ; [#uses=2 type=i64]
  %exitcond75.not = icmp eq i64 %144, %2          ; [#uses=1 type=i1]
  br i1 %exitcond75.not, label %.critedge34, label %.lr.ph.split.us, !llvm.loop !78

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.02769 = phi i64 [ %147, %.critedge ], [ 1, %.lr.ph ] ; [#uses=2 type=i64]
  %145 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02769 ; [#uses=1 type=ptr]
  %146 = load i64, ptr %145, align 8, !tbaa !25   ; [#uses=1 type=i64]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not29 = icmp eq i64 %146, 0                   ; [#uses=1 type=i1]
  br i1 %.not29, label %.critedge, label %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit

.critedge:                                        ; preds = %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %147 = add nuw i64 %.02769, 1                   ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %147, %2            ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %.critedge34, label %.lr.ph.split, !llvm.loop !78

_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit: ; preds = %.lr.ph.split, %94, %105, %.critedge.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.critedge32

end_hunk_1
begin_hunk_2
  br i1 %.not1.i, label %.critedge32, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.critedge34
  %148 = getelementptr i8, ptr %0, i64 -8         ; [#uses=1 type=ptr]
  br label %149

149:                                              ; preds = %155, %.lr.ph.i50
  %150 = phi i16 [ %.promoted.i, %.lr.ph.i50 ], [ %156, %155 ] ; [#uses=2 type=i16]
  %151 = zext i16 %150 to i64                     ; [#uses=1 type=i64]
  %152 = getelementptr [8 x i8], ptr %148, i64 %151 ; [#uses=1 type=ptr]
  %153 = load i64, ptr %152, align 8, !tbaa !25   ; [#uses=1 type=i64]
  %154 = icmp eq i64 %153, 0                      ; [#uses=1 type=i1]
  br i1 %154, label %155, label %.critedge32

155:                                              ; preds = %149
  %156 = add i16 %150, -1                         ; [#uses=3 type=i16]
  store i16 %156, ptr %6, align 8, !tbaa !50
  %.not.i51 = icmp eq i16 %156, 0                 ; [#uses=1 type=i1]
  br i1 %.not.i51, label %.critedge32, label %149, !llvm.loop !79

.critedge32:                                      ; preds = %155, %149, %48, %.critedge34, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit
  %.6 = phi i1 [ false, %48 ], [ false, %_ZN10fast_float8stackvecILt62EE10try_extendENS_4spanImEE.exit ], [ true, %.critedge34 ], [ true, %149 ], [ true, %155 ] ; [#uses=1 type=i1]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i1 %.6
}
end_hunk_2
