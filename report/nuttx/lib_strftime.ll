Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_strftime?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@strftime:bb.a
  %i.fh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.fg, ptr noundef nonnull @.str.1, i32 noundef %i.ff) #8
  br label %.loopexit

bb.an:                                            ; preds = %.preheader
  %i.fi = zext nneg i32 %.0171228 to i64
  %i.fj = load i32, ptr %i.j, align 8
  %i.fk = load i32, ptr %i.k, align 4
  %i.fl = load i32, ptr %i.g, align 4
  %i.fm = add nsw i32 %i.fl, 1900
  %i.fn = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.fi, ptr noundef nonnull @.str.15, i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef %i.fm) #8
  br label %.loopexit

bb.ao:                                            ; preds = %.preheader
  %i.fo = zext nneg i32 %.0171228 to i64
  %i.fp = load i32, ptr %i.h, align 8
  %i.fq = load i32, ptr %i.i, align 4
  %i.fr = load i32, ptr %3, align 8
  %i.fs = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.fo, ptr noundef nonnull @.str.13, i32 noundef %i.fp, i32 noundef %i.fq, i32 noundef %i.fr) #8
  br label %.loopexit

bb.ap:                                            ; preds = %.preheader
  %i.ft = zext nneg i32 %.0171228 to i64
  %i.fu = load i32, ptr %i.g, align 4
  %i.fv = srem i32 %i.fu, 100
  %i.fw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.ft, ptr noundef nonnull @.str.1, i32 noundef %i.fv) #8
  br label %.loopexit

bb.aq:                                            ; preds = %.preheader
  %i.fx = zext nneg i32 %.0171228 to i64
  %i.fy = load i32, ptr %i.g, align 4
  %i.fz = add nsw i32 %i.fy, 1900
  %i.ga = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.fx, ptr noundef nonnull @.str.4, i32 noundef %i.fz) #8
  br label %.loopexit

bb.ar:                                            ; preds = %.preheader
  %i.gb = load i64, ptr %i.f, align 8             ; 2 uses
  %i.gc = sdiv i64 %i.gb, 3600
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = srem i64 %i.gb, 3600
  %.lhs.trunc = trunc nsw i64 %i.ge to i16
  %i.gf = sdiv i16 %.lhs.trunc, 60
  %i.gg = sext i16 %i.gf to i32
  %i.gh = mul nsw i32 %i.gd, 100
  %i.gi = add nsw i32 %i.gh, %i.gg
  %i.gj = zext nneg i32 %.0171228 to i64
  %i.gk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0172227, i64 noundef %i.gj, ptr noundef nonnull @.str.16, i32 noundef %i.gi) #8
  br label %.loopexit

bb.as:                                            ; preds = %.preheader
  store i8 37, ptr %.0172227, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.t, %bb.u, %bb.j, %bb.k, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0170 = phi i32 [ 1, %bb.as ], [ %i.ad, %bb.e ], [ 0, %bb.d ], [ %i.ak, %bb.g ], [ 0, %bb.f ], [ %i.ar, %bb.i ], [ 0, %bb.h ], [ %i.ay, %bb.k ], [ 0, %bb.j ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bi, %bb.n ], [ %i.bp, %bb.o ], [ %i.bt, %bb.p ], [ %i.bw, %bb.q ], [ %i.bz, %bb.r ], [ %i.cd, %bb.s ], [ %i.cn, %bb.u ], [ 0, %bb.t ], [ %i.cq, %bb.v ], [ %i.cu, %bb.w ], [ %i.cy, %bb.x ], [ %i.db, %bb.y ], [ 1, %bb.z ], [ %i.df, %bb.aa ], [ %i.dj, %bb.ab ], [ %i.ds, %bb.ac ], [ %i.dw, %bb.ad ], [ %i.dz, %bb.ae ], [ %i.ec, %bb.af ], [ 1, %bb.ag ], [ %i.eh, %bb.ah ], [ %i.el, %bb.ai ], [ %i.es, %bb.aj ], [ %i.ev, %bb.ak ], [ %i.ey, %bb.al ], [ %i.fh, %bb.am ], [ %i.fn, %bb.an ], [ %i.fs, %bb.ao ], [ %i.fw, %bb.ap ], [ %i.ga, %bb.aq ], [ %i.gk, %bb.ar ], [ 0, %.preheader ] ; 2 uses
  %i.gl = sext i32 %.0170 to i64
  %i.gm = getelementptr inbounds i8, ptr %.0172227, i64 %i.gl
  %i.gn = sub nsw i32 %.0171228, %.0170
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.0172.lcssa = phi ptr [ %0, %bb.a ], [ %.0172.be, %.backedge ]
  %.0171.lcssa = phi i32 [ %i.a, %bb.a ], [ %.0171.be, %.backedge ]
  %.lcssa226 = phi i1 [ %i.d, %bb.a ], [ %i.t, %.backedge ]
  br i1 %.lcssa226, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge
  store i8 0, ptr %.0172.lcssa, align 1
  %i.go = zext nneg i32 %.0171.lcssa to i64
  %i.gp = sub i64 %1, %i.go
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %bb.at
  %.0 = phi i64 [ %i.gp, %bb.at ], [ 0, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -2147481749, -2147483648) i32 @get_week_year(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @get_week_num(ptr noundef %0) #9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, 3
  %i.g = icmp ne i32 %i.a, 1
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.c, 1899
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.e, 360
  %i.j = icmp eq i32 %i.a, 1
  %or.cond3 = select i1 %i.i, i1 %i.j, i1 false
  %spec.select.v = select i1 %or.cond3, i32 1901, i32 1900
  %spec.select = add nsw i32 %spec.select.v, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_daysbeforemonth(i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_isleapyear(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn
declare dso_local noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 -306783378, 306783380) i32 @get_week_num(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %reass.sub = sub i32 %i.e, %i.b                 ; 3 uses
  %i.f = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %reass.sub, i64 1
  %i.h = add <2 x i32> %i.g, <i32 6, i32 369>
  %i.i = srem <2 x i32> %i.h, splat (i32 7)       ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub i32 %i.c, %i.j
  %i.l = sdiv i32 %i.k, 7
  %i.m = extractelement <2 x i32> %i.i, i64 1
  %i.n = icmp slt i32 %i.m, 3
  %i.o = zext i1 %i.n to i32
  %spec.select = add nsw i32 %i.l, %i.o           ; 2 uses
  switch i32 %spec.select, label %is_leap.exit.thread23 [
    i32 0, label %bb.b
    i32 53, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %reass.sub, 6
  %i.q = srem i32 %i.p, 7
  switch i32 %i.q, label %is_leap.exit.thread23 [
    i32 4, label %is_leap.exit.thread
    i32 5, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = srem i32 %i.s, 400
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = and i32 %i.u, 3
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %is_leap.exit.thread23

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nsw i32 %i.u to i16
  %i.x = insertelement <2 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.y = shufflevector <2 x i16> %i.x, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.z = srem <2 x i16> %i.y, <i16 100, i16 400>  ; 2 uses
  %i.aa = extractelement <2 x i16> %i.z, i64 0
  %.not.i = icmp ne i16 %i.aa, 0
  %i.ab = extractelement <2 x i16> %i.z, i64 1
  %i.ac = icmp eq i16 %i.ab, 0
  %or.cond29 = or i1 %.not.i, %i.ac
  br i1 %or.cond29, label %is_leap.exit.thread, label %is_leap.exit.thread23

is_leap.exit.thread:                              ; preds = %bb.d, %bb.b
  br label %is_leap.exit.thread23

bb.e:                                             ; preds = %bb.a
  %i.ad = add i32 %reass.sub, 371
  %i.ae = srem i32 %i.ad, 7
  switch i32 %i.ae, label %is_leap.exit22.thread24 [
    i32 4, label %is_leap.exit.thread23
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = and i32 %i.ag, 3
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %is_leap.exit22.thread24

bb.g:                                             ; preds = %bb.f
  %i.aj = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ak = shufflevector <2 x i32> %i.aj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.al = srem <2 x i32> %i.ak, <i32 100, i32 400> ; 2 uses
  %1 = extractelement <2 x i32> %i.al, i64 0
  %.not.i21 = icmp ne i32 %1, 0
  %2 = extractelement <2 x i32> %i.al, i64 1
  %3 = icmp eq i32 %2, 0
  %or.cond = or i1 %.not.i21, %3
  br i1 %or.cond, label %is_leap.exit.thread23, label %is_leap.exit22.thread24

is_leap.exit22.thread24:                          ; preds = %bb.g, %bb.f, %bb.e
  br label %is_leap.exit.thread23

is_leap.exit.thread23:                            ; preds = %bb.d, %bb.g, %bb.c, %is_leap.exit22.thread24, %bb.e, %bb.a, %is_leap.exit.thread, %bb.b
  %.3 = phi i32 [ %spec.select, %bb.a ], [ 52, %bb.b ], [ 53, %is_leap.exit.thread ], [ 52, %bb.d ], [ 1, %is_leap.exit22.thread24 ], [ 53, %bb.g ], [ 53, %bb.e ], [ 52, %bb.c ]
  ret i32 %.3
}

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noredzone nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noredzone nounwind optsize }
attributes #9 = { noredzone optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
end_hunk_0
