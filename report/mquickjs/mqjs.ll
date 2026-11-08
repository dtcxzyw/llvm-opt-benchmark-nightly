Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mqjs?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@JS_PrepareBytecode64to32

; Function Attrs: optsize
declare void @JS_PrepareBytecode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @JS_RelocateBytecode2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_GetException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @JS_IsBytecode(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @JS_RelocateBytecode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_LoadBytecode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @JS_PushGCRef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_NewArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_SetPropertyUint32(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_NewString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_PopGCRef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_GetGlobalObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_SetPropertyStr(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_Run(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @readline_tty_init() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 3, 17) i32 @term_get_color(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #15 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20    ; 7 uses
  %i.d = sext i8 %i.c to i32                      ; 3 uses
  switch i8 %i.c, label %bb.j [
    i8 39, label %bb.b
    i8 34, label %bb.b
    i8 47, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = add nsw i32 %2, 1                        ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20    ; 3 uses
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = icmp eq i8 %i.h, %i.c
  %or.cond108 = or i1 %i.i, %i.j
  br i1 %or.cond108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.k = phi i8 [ %i.t, %bb.e ], [ %i.h, %bb.b ]
  %i.l = phi i64 [ %i.r, %bb.e ], [ %i.f, %bb.b ]
  %.071109 = phi i32 [ %i.q, %bb.e ], [ %i.e, %bb.b ]
  %i.m = icmp eq i8 %i.k, 92
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !20
  %.not83 = icmp eq i8 %i.p, 0
  br i1 %.not83, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 1, %bb.d ], [ 2, %bb.c ]
  %i.q = add nsw i32 %.071109, %.sink             ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20    ; 3 uses
  %i.u = icmp eq i8 %i.t, 0                       ; 2 uses
  %i.v = icmp eq i8 %i.t, %i.c
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.071.lcssa = phi i32 [ %i.e, %bb.b ], [ %i.q, %bb.e ]
  %.lcssa = phi i1 [ %i.i, %bb.b ], [ %i.u, %bb.e ]
  %not. = xor i1 %.lcssa, true
  %i.w = zext i1 %not. to i32
  %spec.select = sub i32 %.071.lcssa, %2
  %i.x = add i32 %spec.select, %i.w
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.b, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %i.aa = icmp eq i8 %i.z, 42
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = add i32 %2, 2
  %i.ac = sext i32 %i.ab to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge86, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge86 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.ae, label %.critedge86 [
    i8 0, label %.critedge
    i8 42, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.ad, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %.not100 = icmp eq i8 %i.ag, 47
  br i1 %.not100, label %.critedge, label %.critedge86

.critedge86:                                      ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.h, !llvm.loop !53

.critedge:                                        ; preds = %bb.h, %bb.i
  %i.ah = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %.not82 = icmp eq i8 %i.ae, 0
  %i.ai = add nsw i32 %i.ah, 2
  %spec.select87 = select i1 %.not82, i32 %i.ah, i32 %i.ai
  %i.aj = sub nsw i32 %spec.select87, %2
  br label %.loopexit

bb.j:                                             ; preds = %bb.a, %bb.f
  %i.ak = add i8 %i.c, -48
  %or.cond3 = icmp ult i8 %i.ak, 10
  %i.al = icmp eq i8 %i.c, 46
  %or.cond5 = or i1 %i.al, %or.cond3
  br i1 %or.cond5, label %.critedge102, label %bb.l

.critedge102:                                     ; preds = %bb.j, %.critedge102.backedge
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.critedge102.backedge ], [ %i.a, %bb.j ]
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next123
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %.fr137 = freeze i8 %i.an                       ; 2 uses
  %i.ao = sext i8 %.fr137 to i32                  ; 3 uses
  %i.ap = add nsw i32 %i.ao, -58
  %or.cond.i = icmp ult i32 %i.ap, -10
  %i.aq = add nsw i32 %i.ao, -91
  %or.cond3.i = icmp ult i32 %i.aq, -26
  %or.cond15.i.not146 = select i1 %or.cond.i, i1 %or.cond3.i, i1 false
  %i.ar = add nsw i32 %i.ao, -123
  %or.cond5.i = icmp ult i32 %i.ar, -26
  %or.cond141 = select i1 %or.cond15.i.not146, i1 %or.cond5.i, i1 false
  br i1 %or.cond141, label %switch.early.test, label %.critedge102.backedge

switch.early.test:                                ; preds = %.critedge102
  switch i8 %.fr137, label %bb.k [
    i8 95, label %.critedge102.backedge
    i8 36, label %.critedge102.backedge
  ]

.critedge102.backedge:                            ; preds = %switch.early.test, %switch.early.test, %.critedge102
  br label %.critedge102, !llvm.loop !54

bb.k:                                             ; preds = %switch.early.test
  %i.as = trunc nsw i64 %indvars.iv.next123 to i32
  %i.at = sub nsw i32 %i.as, %2
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.au = add nsw i32 %i.d, -58
  %or.cond.i88 = icmp ult i32 %i.au, -10
  %i.av = add nsw i32 %i.d, -91
  %or.cond3.i89 = icmp ult i32 %i.av, -26
  %or.cond15.i90.not144 = select i1 %or.cond.i88, i1 %or.cond3.i89, i1 false
  %i.aw = add nsw i32 %i.d, -123
  %or.cond5.i91 = icmp ult i32 %i.aw, -26
  %or.cond142 = select i1 %or.cond15.i90.not144, i1 %or.cond5.i91, i1 false
  br i1 %or.cond142, label %switch.early.test132, label %.critedge104.preheader

switch.early.test132:                             ; preds = %bb.l
  switch i8 %i.c, label %.loopexit [
    i8 95, label %.critedge104.preheader
    i8 36, label %.critedge104.preheader
  ]

.critedge104.preheader:                           ; preds = %switch.early.test132, %switch.early.test132, %bb.l
  %4 = add i32 %2, 1
  %5 = sext i32 %4 to i64
  br label %.critedge104

.critedge104:                                     ; preds = %.critedge104.backedge, %.critedge104.preheader
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.critedge104.backedge ], [ %5, %.critedge104.preheader ] ; 2 uses
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.critedge104.backedge ], [ %i.a, %.critedge104.preheader ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next115
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %.fr = freeze i8 %i.ay                          ; 2 uses
  %i.az = sext i8 %.fr to i32                     ; 3 uses
  %i.ba = add nsw i32 %i.az, -58
  %or.cond.i94 = icmp ult i32 %i.ba, -10
  %i.bb = add nsw i32 %i.az, -91
  %or.cond3.i95 = icmp ult i32 %i.bb, -26
  %or.cond15.i96.not145 = select i1 %or.cond.i94, i1 %or.cond3.i95, i1 false
  %i.bc = add nsw i32 %i.az, -123
  %or.cond5.i97 = icmp ult i32 %i.bc, -26
  %or.cond143 = select i1 %or.cond15.i96.not145, i1 %or.cond5.i97, i1 false
  br i1 %or.cond143, label %switch.early.test133, label %.critedge104.backedge

switch.early.test133:                             ; preds = %.critedge104
  switch i8 %.fr, label %bb.m [
    i8 95, label %.critedge104.backedge
    i8 36, label %.critedge104.backedge
  ]

.critedge104.backedge:                            ; preds = %switch.early.test133, %switch.early.test133, %.critedge104
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  br label %.critedge104, !llvm.loop !55

bb.m:                                             ; preds = %switch.early.test133
  %i.bd = trunc nsw i64 %indvars.iv.next115 to i32
  %i.be = sub nsw i32 %i.bd, %2                   ; 4 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = tail call fastcc i32 @find_keyword(ptr noundef nonnull %i.b, i64 noundef %i.bf, ptr noundef nonnull @js_keywords) #28
  %.not78 = icmp eq i32 %i.bg, 0
  br i1 %.not78, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.m, %bb.n
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.n ], [ %indvars.iv117, %bb.m ] ; 2 uses
  %6 = getelementptr inbounds i8, ptr %1, i64 %indvars.iv119
  %7 = load i8, ptr %6, align 1, !tbaa !20
  switch i8 %7, label %bb.o [
    i8 32, label %bb.n
    i8 40, label %.loopexit
  ]

bb.n:                                             ; preds = %.preheader
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1
  br label %.preheader, !llvm.loop !56

bb.o:                                             ; preds = %.preheader
  %i.bh = tail call fastcc i32 @find_keyword(ptr noundef nonnull %i.b, i64 noundef %i.bf, ptr noundef nonnull @js_types) #28
  %.not79 = icmp eq i32 %i.bh, 0
  %. = select i1 %.not79, i32 11, i32 14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %switch.early.test132, %bb.o, %bb.m, %.critedge, %bb.k, %._crit_edge
  %.072 = phi i32 [ 15, %._crit_edge ], [ 8, %.critedge ], [ 3, %bb.k ], [ 11, %switch.early.test132 ], [ 16, %bb.m ], [ %., %bb.o ], [ 12, %.preheader ]
  %.0 = phi i32 [ %i.x, %._crit_edge ], [ %i.aj, %.critedge ], [ %i.at, %bb.k ], [ 1, %switch.early.test132 ], [ %i.be, %bb.m ], [ %i.be, %bb.o ], [ %i.be, %.preheader ]
  store i32 %.0, ptr %0, align 4, !tbaa !23
  ret i32 %.072
}

; Function Attrs: optsize
declare void @JS_SetInterruptHandler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @js_interrupt_handler(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @readline_is_interrupted() #21
  ret i32 %i.a
}

; Function Attrs: optsize
declare ptr @readline_tty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @find_keyword(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr nofree noundef readonly %2) unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !20
  %.not16 = icmp eq i8 %i.a, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.017 = phi ptr [ %i.g, %bb.d ], [ %2, %bb.a ]  ; 3 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.017, i32 noundef 124) #22 ; 3 uses
  %.not14 = icmp eq ptr %i.b, null
  br i1 %.not14, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = ptrtoaddr ptr %.017 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull %.017, i64 %1)
  %.not15 = icmp eq i32 %bcmp, 0
  br i1 %.not15, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.d, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.011
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @readline_is_interrupted() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @JS_StackCheck(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @JS_PushArg(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @JS_Call(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { cold noreturn nounwind optsize }
attributes #24 = { cold }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { cold nounwind optsize }
attributes #27 = { nounwind optsize allocsize(0) }
attributes #28 = { optsize }
attributes #29 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"timeval", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!12, !12, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTS7JSGCRef", !17, i64 0}
!26 = !{!"JSGCRef", !12, i64 0, !25, i64 8}
!27 = !{!"timespec", !12, i64 0, !12, i64 8}
!28 = !{!27, !12, i64 0}
!29 = !{!27, !12, i64 8}
!30 = !{!"", !9, i64 0, !26, i64 8, !12, i64 24}
!31 = !{!30, !9, i64 0}
!32 = !{!30, !12, i64 24}
!33 = !{!"double", !8, i64 0}
!34 = !{!33, !33, i64 0}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"ReadlineState", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !8, i64 13, !8, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !8, i64 44, !18, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !18, i64 72, !18, i64 80, !9, i64 88, !18, i64 96, !17, i64 104}
!40 = !{!39, !9, i64 56}
!41 = !{!39, !18, i64 72}
!42 = !{!39, !18, i64 80}
!43 = !{!39, !9, i64 60}
!44 = !{!39, !18, i64 96}
!45 = !{!39, !9, i64 88}
!46 = !{!39, !17, i64 104}
!47 = distinct !{!47, !24}
!48 = !{!26, !12, i64 0}
!49 = distinct !{!49, !24}
!50 = !{!30, !12, i64 8}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
end_hunk_0
