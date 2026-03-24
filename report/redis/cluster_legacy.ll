begin_hunk_0
  br label %sdslen.exit79.thread

sdslen.exit79.thread:                             ; preds = %getHostnamePingExtSize.exit76, %getHumanNodenamePingExtSize.exit97, %sdslen.exit79
  %.4 = phi ptr [ %.350, %getHumanNodenamePingExtSize.exit97 ], [ %.249, %sdslen.exit79 ], [ %.249, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.144 = phi i32 [ %274, %getHumanNodenamePingExtSize.exit97 ], [ %.043, %sdslen.exit79 ], [ %.043, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.1 = phi i16 [ %275, %getHumanNodenamePingExtSize.exit97 ], [ %.0, %sdslen.exit79 ], [ %.0, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %276 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65
  %277 = getelementptr inbounds nuw i8, ptr %276, i64 40
  %278 = load ptr, ptr %277, align 8, !tbaa !121  ; 3 uses
end_hunk_0
begin_hunk_1
  br label %.outer

.outer:                                           ; preds = %.loopexit.split.us, %284
  %.5.ph = phi ptr [ %.7, %.loopexit.split.us ], [ %.4, %284 ] ; 8 uses
  %.245.ph = phi i32 [ %302, %.loopexit.split.us ], [ %.144, %284 ] ; 2 uses
  %.2.ph = phi i16 [ %303, %.loopexit.split.us ], [ %.1, %284 ] ; 2 uses
  %.not64 = icmp eq ptr %.5.ph, null
end_hunk_1
begin_hunk_2
  %298 = load i32, ptr %.5.ph, align 8, !tbaa !9
  %299 = call noundef i32 @llvm.bswap.i32(i32 %298)
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw i8, ptr %.5.ph, i64 %300
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %.outer.split.us, %.thread
end_hunk_2
begin_hunk_3
  br label %304

304:                                              ; preds = %.split.us, %sdslen.exit79.thread
  %.8 = phi ptr [ %.5.ph, %.split.us ], [ %.4, %sdslen.exit79.thread ] ; 7 uses
  %.346 = phi i32 [ %.245.ph, %.split.us ], [ %.144, %sdslen.exit79.thread ]
  %.3 = phi i16 [ %.2.ph, %.split.us ], [ %.1, %sdslen.exit79.thread ]
  %.not62 = icmp eq ptr %.8, null
end_hunk_3
begin_hunk_4
  %.not = icmp ne i32 %8, 0
  %9 = icmp eq ptr %5, null
  %or.cond69 = select i1 %.not, i1 true, i1 %9
  br i1 %or.cond69, label %124, label %.preheader78

.preheader78:                                     ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 2168
  %11 = load i32, ptr %10, align 8, !tbaa !47     ; 4 uses
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader78
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 2176
  %14 = load ptr, ptr %13, align 8, !tbaa !53     ; 3 uses
  %wide.trip.count = zext nneg i32 %11 to i64     ; 2 uses
end_hunk_4
begin_hunk_5

16:                                               ; preds = %16, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %16 ] ; 3 uses
  %.04179 = phi i32 [ 0, %.lr.ph.new ], [ %.142.1, %16 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %16 ]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv
  %18 = load ptr, ptr %17, align 8, !tbaa !54
end_hunk_5
begin_hunk_6
  %21 = and i32 %20, 12
  %or.cond = icmp eq i32 %21, 0
  %22 = zext i1 %or.cond to i32
  %.142 = add nuw nsw i32 %.04179, %22
  %23 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !54
end_hunk_6
begin_hunk_7

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.04179.epil.init = phi i32 [ 0, %.lr.ph ], [ %.142.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %11 to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %30 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %indvars.iv.epil.init
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 88
end_hunk_7
begin_hunk_8
  %34 = and i32 %33, 12
  %or.cond.epil = icmp eq i32 %34, 0
  %35 = zext i1 %or.cond.epil to i32
  %.142.epil = add nuw nsw i32 %.04179.epil.init, %35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader78
  %.041.lcssa = phi i32 [ 0, %.preheader78 ], [ %.142.1, %._crit_edge.loopexit.unr-lcssa ], [ %.142.epil, %.epil.preheader ]
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8232), align 8, !tbaa !271
  %.not51 = icmp sgt i32 %.041.lcssa, %36
  br i1 %.not51, label %37, label %124
end_hunk_8
begin_hunk_9
  %39 = load ptr, ptr %38, align 8, !tbaa !80
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef %39) #32
  %40 = call ptr @dictNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not5285 = icmp eq ptr %40, null
  br i1 %.not5285, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %37, %.loopexit
  %41 = phi ptr [ %102, %.loopexit ], [ %40, %37 ]
  %.04387 = phi ptr [ %.3, %.loopexit ], [ %3, %37 ] ; 3 uses
  %.04686 = phi ptr [ %.248, %.loopexit ], [ null, %37 ] ; 3 uses
  %42 = call ptr @dictGetVal(ptr noundef nonnull %41) #32 ; 9 uses
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 88
  %44 = load i32, ptr %43, align 8, !tbaa !88     ; 2 uses
end_hunk_9
begin_hunk_10
  %.not58 = icmp eq i32 %46, 0
  br i1 %.not58, label %clusterCountNonFailingSlaves.exit.thread, label %47

47:                                               ; preds = %.lr.ph89
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 2168
  %49 = load i32, ptr %48, align 8, !tbaa !47     ; 4 uses
  %50 = icmp sgt i32 %49, 0
end_hunk_10
begin_hunk_11
  %51 = getelementptr inbounds nuw i8, ptr %42, i64 2176
  %52 = load ptr, ptr %51, align 8, !tbaa !53     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %49 to i64   ; 2 uses
  %xtraiter107 = and i64 %wide.trip.count.i, 1
  %53 = icmp eq i32 %49, 1
  br i1 %53, label %.epil.preheader106, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter111 = and i64 %wide.trip.count.i, 2147483646
  br label %54

54:                                               ; preds = %54, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %54 ] ; 3 uses
  %.08.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.1, %54 ]
  %niter112 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter112.next.1, %54 ]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %52, i64 %indvars.iv.i
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 88
  %58 = load i32, ptr %57, align 8, !tbaa !88
  %59 = lshr i32 %58, 3
  %60 = and i32 %59, 1
  %61 = xor i32 %60, 1
  %spec.select.i = add nuw nsw i32 %61, %.08.i
  %62 = getelementptr inbounds nuw [8 x i8], ptr %52, i64 %indvars.iv.i
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 88
  %66 = load i32, ptr %65, align 8, !tbaa !88
  %67 = lshr i32 %66, 3
  %68 = and i32 %67, 1
  %69 = xor i32 %68, 1
  %spec.select.i.1 = add nuw nsw i32 %69, %spec.select.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter112.next.1 = add i64 %niter112, 2         ; 2 uses
  %niter112.ncmp.1 = icmp eq i64 %niter112.next.1, %unroll_iter111
  br i1 %niter112.ncmp.1, label %clusterCountNonFailingSlaves.exit.unr-lcssa, label %54, !llvm.loop !185

clusterCountNonFailingSlaves.exit.unr-lcssa:      ; preds = %54
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %clusterCountNonFailingSlaves.exit, label %.epil.preheader106

.epil.preheader106:                               ; preds = %clusterCountNonFailingSlaves.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %clusterCountNonFailingSlaves.exit.unr-lcssa ]
  %.08.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %clusterCountNonFailingSlaves.exit.unr-lcssa ]
  %lcmp.mod110 = trunc i32 %49 to i1
  call void @llvm.assume(i1 %lcmp.mod110)
  %70 = getelementptr inbounds nuw [8 x i8], ptr %52, i64 %indvars.iv.i.epil.init
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 88
  %73 = load i32, ptr %72, align 8, !tbaa !88
  %74 = lshr i32 %73, 3
  %75 = and i32 %74, 1
  %76 = xor i32 %75, 1
  %spec.select.i.epil = add nuw nsw i32 %76, %.08.i.epil.init
  br label %clusterCountNonFailingSlaves.exit

clusterCountNonFailingSlaves.exit:                ; preds = %clusterCountNonFailingSlaves.exit.unr-lcssa, %.epil.preheader106
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %clusterCountNonFailingSlaves.exit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader106 ] ; 2 uses
  %.not77 = icmp ne i32 %spec.select.i.lcssa, 0
  %brmerge = or i1 %.not77, %narrow.not
  br i1 %brmerge, label %.thread, label %77

clusterCountNonFailingSlaves.exit.thread:         ; preds = %47, %.lr.ph89
  br i1 %narrow.not, label %.thread, label %77

77:                                               ; preds = %clusterCountNonFailingSlaves.exit, %clusterCountNonFailingSlaves.exit.thread
  %.not60 = icmp eq ptr %.04686, null
  br i1 %.not60, label %78, label %82

78:                                               ; preds = %77
end_hunk_11
begin_hunk_12
  br label %82

82:                                               ; preds = %78, %77
  %.147 = phi ptr [ %.04686, %77 ], [ %spec.select65, %78 ] ; 2 uses
  %83 = getelementptr inbounds nuw i8, ptr %42, i64 2248 ; 2 uses
  %84 = load i64, ptr %83, align 8, !tbaa !272
  %.not61 = icmp eq i64 %84, 0
end_hunk_12
begin_hunk_13

88:                                               ; preds = %82, %85, %.thread
  %.0387275 = phi i32 [ 0, %82 ], [ 0, %85 ], [ %.0387276, %.thread ]
  %.248 = phi ptr [ %.147, %82 ], [ %.147, %85 ], [ %.04686, %.thread ] ; 2 uses
  %89 = icmp eq i32 %.0387275, %0
  br i1 %89, label %.preheader, label %.loopexit

end_hunk_13
begin_hunk_14
  %90 = getelementptr inbounds nuw i8, ptr %42, i64 2168
  %91 = load i32, ptr %90, align 8, !tbaa !47     ; 2 uses
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %.preheader
  %93 = getelementptr inbounds nuw i8, ptr %42, i64 2176
  %94 = load ptr, ptr %93, align 8, !tbaa !53
  %wide.trip.count97 = zext nneg i32 %91 to i64
  br label %95

95:                                               ; preds = %.lr.ph83, %95
  %indvars.iv94 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next95, %95 ] ; 2 uses
  %.14481 = phi ptr [ %.04387, %.lr.ph83 ], [ %spec.select66, %95 ] ; 2 uses
  %96 = getelementptr inbounds nuw [8 x i8], ptr %94, i64 %indvars.iv94
  %97 = load ptr, ptr %96, align 8, !tbaa !54     ; 2 uses
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %99 = getelementptr inbounds nuw i8, ptr %.14481, i64 8
  %100 = call i32 @memcmp(ptr noundef nonnull dereferenceable(40) %98, ptr noundef nonnull dereferenceable(40) %99, i64 noundef 40) #33
  %101 = icmp slt i32 %100, 0
  %spec.select66 = select i1 %101, ptr %97, ptr %.14481 ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit, label %95, !llvm.loop !273

.loopexit:                                        ; preds = %95, %.preheader, %88
  %.3 = phi ptr [ %.04387, %88 ], [ %.04387, %.preheader ], [ %spec.select66, %95 ] ; 2 uses
  %102 = call ptr @dictNext(ptr noundef nonnull %2) #32 ; 2 uses
  %.not52 = icmp eq ptr %102, null
  br i1 %.not52, label %._crit_edge90, label %.lr.ph89, !llvm.loop !274

._crit_edge90:                                    ; preds = %.loopexit, %37
  %.046.lcssa = phi ptr [ null, %37 ], [ %.248, %.loopexit ] ; 4 uses
  %.043.lcssa = phi ptr [ %3, %37 ], [ %.3, %.loopexit ]
  call void @dictResetIterator(ptr noundef nonnull %2) #32
end_hunk_14
begin_hunk_15
  %or.cond68 = select i1 %.not53, i1 %104, i1 false
  br i1 %or.cond68, label %105, label %124

105:                                              ; preds = %._crit_edge90
  %106 = call i64 @mstime() #32
  %107 = getelementptr inbounds nuw i8, ptr %.046.lcssa, i64 2248
  %108 = load i64, ptr %107, align 8, !tbaa !272
end_hunk_15
begin_hunk_16
  store i32 %123, ptr %121, align 8, !tbaa !66
  br label %124

124:                                              ; preds = %._crit_edge90, %105, %111, %119, %._crit_edge, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}
end_hunk_16
begin_hunk_17
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %117 = load ptr, ptr %116, align 8, !tbaa !257
  %118 = tail call i32 @strcasecmp(ptr noundef %117, ptr noundef nonnull @.str.218) #33
  %.not299 = icmp eq i32 %118, 0                  ; 2 uses
  %119 = zext i1 %.not299 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %112, i8 0, i64 16384, i1 false)
  %120 = load i32, ptr %108, align 8, !tbaa !297
end_hunk_17
begin_hunk_18
  br i1 %121, label %.lr.ph441, label %._crit_edge444

122:                                              ; preds = %.lr.ph441
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %123 = load i32, ptr %108, align 8, !tbaa !297  ; 2 uses
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %indvars.iv.next481, %124
  br i1 %125, label %.lr.ph441, label %.preheader, !llvm.loop !318

.preheader:                                       ; preds = %122
end_hunk_18
begin_hunk_19
  br i1 %.not299, label %.lr.ph.split.i.preheader.us, label %.critedge.us.i.preheader

.lr.ph.split.i.preheader.us:                      ; preds = %.lr.ph443, %.loopexit410.us
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %.loopexit410.us ], [ 2, %.lr.ph443 ] ; 2 uses
  %127 = load ptr, ptr %5, align 8, !tbaa !310
  %128 = getelementptr inbounds nuw [8 x i8], ptr %127, i64 %indvars.iv486
  %129 = load ptr, ptr %128, align 8, !tbaa !311
  %130 = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %129) #32 ; 3 uses
  %131 = sext i32 %130 to i64                     ; 2 uses
end_hunk_19
begin_hunk_20
  br i1 %141, label %.loopexit, label %.loopexit410.us

.loopexit410.us:                                  ; preds = %137
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %142 = load i32, ptr %108, align 8, !tbaa !297
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %indvars.iv.next487, %143
  br i1 %144, label %.lr.ph.split.i.preheader.us, label %._crit_edge444, !llvm.loop !319

.lr.ph441:                                        ; preds = %111, %122
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %122 ], [ 2, %111 ] ; 2 uses
  %145 = load ptr, ptr %5, align 8, !tbaa !310
  %146 = getelementptr inbounds nuw [8 x i8], ptr %145, i64 %indvars.iv480
  %147 = load ptr, ptr %146, align 8, !tbaa !311
  %148 = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %147) #32
  %149 = icmp eq i32 %148, -1
end_hunk_20
begin_hunk_21
  br label %849

.critedge.us.i.preheader:                         ; preds = %.lr.ph443, %.loopexit413
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %.loopexit413 ], [ 2, %.lr.ph443 ] ; 2 uses
  %151 = load ptr, ptr %5, align 8, !tbaa !310
  %152 = getelementptr inbounds nuw [8 x i8], ptr %151, i64 %indvars.iv483
  %153 = load ptr, ptr %152, align 8, !tbaa !311
  %154 = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %153) #32 ; 3 uses
  %155 = sext i32 %154 to i64                     ; 2 uses
end_hunk_21
begin_hunk_22
  br i1 %164, label %.loopexit, label %.loopexit413

.loopexit413:                                     ; preds = %160
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %165 = load i32, ptr %108, align 8, !tbaa !297
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %indvars.iv.next484, %166
  br i1 %167, label %.critedge.us.i.preheader, label %._crit_edge444, !llvm.loop !319

.loopexit:                                        ; preds = %160, %.critedge.us.i.preheader, %137, %.lr.ph.split.i.preheader.us
end_hunk_22
begin_hunk_23
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %190 = load ptr, ptr %189, align 8, !tbaa !257
  %191 = tail call i32 @strcasecmp(ptr noundef %190, ptr noundef nonnull @.str.220) #33
  %.not303 = icmp eq i32 %191, 0                  ; 2 uses
  %192 = zext i1 %.not303 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %185, i8 0, i64 16384, i1 false)
  %193 = load i32, ptr %178, align 8, !tbaa !297
end_hunk_23
begin_hunk_24
  br i1 %.not303, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit415.us
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %.loopexit415.us ], [ 2, %.lr.ph ] ; 3 uses
  %195 = load ptr, ptr %5, align 8, !tbaa !310
  %196 = getelementptr inbounds nuw [8 x i8], ptr %195, i64 %indvars.iv477
  %197 = load ptr, ptr %196, align 8, !tbaa !311
  %198 = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %197) #32 ; 4 uses
  %199 = icmp eq i32 %198, -1
end_hunk_24
begin_hunk_25

200:                                              ; preds = %.lr.ph.split.us
  %201 = load ptr, ptr %5, align 8, !tbaa !310
  %202 = getelementptr inbounds nuw [8 x i8], ptr %201, i64 %indvars.iv477
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %204 = load ptr, ptr %203, align 8, !tbaa !311
  %205 = tail call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %204) #32 ; 4 uses
end_hunk_25
begin_hunk_26
  br i1 %exitcond.not.i373.us, label %.loopexit415.us, label %.lr.ph.split.i369.us, !llvm.loop !292

.loopexit415.us:                                  ; preds = %221
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 2 ; 2 uses
  %222 = load i32, ptr %178, align 8, !tbaa !297
  %223 = trunc nuw i64 %indvars.iv.next478 to i32
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !320

end_hunk_26
begin_hunk_27
409:                                              ; preds = %406, %398
  %410 = tail call i32 @countKeysInSlot(i32 noundef %274) #32
  %411 = icmp eq i32 %410, 0
  %.pre491 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65 ; 2 uses
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = getelementptr inbounds nuw i8, ptr %.pre491, i64 48
  %414 = getelementptr inbounds [8 x i8], ptr %413, i64 %401 ; 2 uses
  %415 = load ptr, ptr %414, align 8, !tbaa !54
  %.not319 = icmp eq ptr %415, null
end_hunk_27
begin_hunk_28
  br label %417

417:                                              ; preds = %416, %412, %409
  %418 = getelementptr inbounds nuw i8, ptr %.pre491, i64 262192
  %419 = getelementptr inbounds [8 x i8], ptr %418, i64 %401
  %420 = load ptr, ptr %419, align 8, !tbaa !54
  %421 = load ptr, ptr @myself, align 8, !tbaa !54
  %422 = icmp eq ptr %420, %421
  %423 = tail call i32 @clusterDelSlot(i32 noundef %274)
  %424 = tail call i32 @clusterAddSlot(ptr noundef nonnull %386, i32 noundef %274)
  %.pre493 = load ptr, ptr @myself, align 8, !tbaa !54 ; 4 uses
  br i1 %422, label %425, label %444

425:                                              ; preds = %417
  %.not320 = icmp eq ptr %386, %.pre493
  br i1 %.not320, label %.thread, label %426

.thread:                                          ; preds = %425
  %.pre494520 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65
  br label %447

426:                                              ; preds = %425
  %427 = getelementptr inbounds nuw i8, ptr %.pre493, i64 2164
  %428 = load i32, ptr %427, align 4, !tbaa !155
  %429 = icmp eq i32 %428, 0
  %430 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8236), align 4
end_hunk_28
begin_hunk_29
  %442 = load i32, ptr %441, align 8, !tbaa !66
  %443 = or i32 %442, 46
  store i32 %443, ptr %441, align 8, !tbaa !66
  %.pre492 = load ptr, ptr @myself, align 8, !tbaa !54
  br label %444

444:                                              ; preds = %439, %426, %417
  %445 = phi ptr [ %.pre492, %439 ], [ %.pre493, %426 ], [ %.pre493, %417 ]
  %446 = icmp eq ptr %386, %445
  %.pre494 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65 ; 2 uses
  br i1 %446, label %447, label %465

447:                                              ; preds = %.thread, %444
  %.pre494521 = phi ptr [ %.pre494520, %.thread ], [ %.pre494, %444 ] ; 2 uses
  %448 = getelementptr inbounds nuw i8, ptr %.pre494521, i64 131120
  %449 = getelementptr inbounds [8 x i8], ptr %448, i64 %401
  %450 = load ptr, ptr %449, align 8, !tbaa !54
  %.not321 = icmp eq ptr %450, null
end_hunk_29
begin_hunk_30
  br label %849

465:                                              ; preds = %444, %447, %457, %358, %367, %320
  %466 = phi ptr [ %.pre494, %444 ], [ %.pre494521, %447 ], [ %458, %457 ], [ %359, %358 ], [ %368, %367 ], [ %321, %320 ]
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 393384 ; 2 uses
  %468 = load i32, ptr %467, align 8, !tbaa !66
  %469 = or i32 %468, 6
end_hunk_30
begin_hunk_31

752:                                              ; preds = %751
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.257) #32
  %.pre490 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65
  br label %753

753:                                              ; preds = %751, %752
  %754 = phi ptr [ %742, %751 ], [ %.pre490, %752 ]
  %755 = getelementptr inbounds nuw i8, ptr %754, i64 393368
  store i32 1, ptr %755, align 8, !tbaa !128
  br label %762
end_hunk_31
begin_hunk_32
797:                                              ; preds = %794
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.263, i64 noundef %775) #32
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !65
  %.pre489 = load i64, ptr %4, align 8, !tbaa !222
  br label %798

798:                                              ; preds = %794, %797
  %799 = phi i64 [ %775, %794 ], [ %.pre489, %797 ] ; 2 uses
  %800 = phi ptr [ %779, %794 ], [ %.pre, %797 ]  ; 2 uses
  %801 = getelementptr inbounds nuw i8, ptr %800, i64 8 ; 2 uses
  %802 = load i64, ptr %801, align 8, !tbaa !77
end_hunk_32
