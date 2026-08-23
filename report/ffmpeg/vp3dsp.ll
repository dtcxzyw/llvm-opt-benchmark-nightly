Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3dsp?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vp3_v_loop_filter_8_c:vp3_v_loop_filter_c.exit
  %i.ep = getelementptr inbounds i8, ptr %.0.i.ptr.5, i64 %1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !11
  %i.er = zext i8 %i.eq to i32
  %i.es = load i8, ptr %.0.i.ptr.5, align 1, !tbaa !11
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds i8, ptr %.0.i.ptr.5, i64 %i.a ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = sub nsw i32 %i.et, %i.ew
  %i.ey = mul nsw i32 %i.ex, 3
  %i.ez = add nuw nsw i32 %i.eo, 4
  %i.fa = sub nsw i32 %i.ez, %i.er
  %i.fb = add nsw i32 %i.fa, %i.ey
  %i.fc = ashr i32 %i.fb, 3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !14 ; 2 uses
  %i.fg = add nsw i32 %i.ff, %i.ew                ; 3 uses
  %.not.i3.5 = icmp ult i32 %i.fg, 256
  %isnotneg.i4.5 = icmp sgt i32 %i.fg, -1
  %i.fh = sext i1 %isnotneg.i4.5 to i8
  %i.fi = trunc nuw i32 %i.fg to i8
  %.0.i5.5 = select i1 %.not.i3.5, i8 %i.fi, i8 %i.fh
  store i8 %.0.i5.5, ptr %i.eu, align 1, !tbaa !11
  %i.fj = load i8, ptr %.0.i.ptr.5, align 1, !tbaa !11
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.fk, %i.ff                ; 3 uses
  %.not.i.5 = icmp ult i32 %i.fl, 256
  %isnotneg.i.5 = icmp sgt i32 %i.fl, -1
  %i.fm = sext i1 %isnotneg.i.5 to i8
  %i.fn = trunc nuw i32 %i.fl to i8
  %.0.i2.5 = select i1 %.not.i.5, i8 %i.fn, i8 %i.fm
  store i8 %.0.i2.5, ptr %.0.i.ptr.5, align 1, !tbaa !11
  %.0.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 6 uses
  %i.fo = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %i.b
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load i8, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %i.fv = zext i8 %i.fu to i32
  %i.fw = getelementptr inbounds i8, ptr %.0.i.ptr.6, i64 %i.a ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11
  %i.fy = zext i8 %i.fx to i32                    ; 2 uses
  %i.fz = sub nsw i32 %i.fv, %i.fy
  %i.ga = mul nsw i32 %i.fz, 3
  %i.gb = add nuw nsw i32 %i.fq, 4
  %i.gc = sub nsw i32 %i.gb, %i.ft
  %i.gd = add nsw i32 %i.gc, %i.ga
  %i.ge = ashr i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !14 ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.fy                ; 3 uses
  %.not.i3.6 = icmp ult i32 %i.gi, 256
  %isnotneg.i4.6 = icmp sgt i32 %i.gi, -1
  %i.gj = sext i1 %isnotneg.i4.6 to i8
  %i.gk = trunc nuw i32 %i.gi to i8
  %.0.i5.6 = select i1 %.not.i3.6, i8 %i.gk, i8 %i.gj
  store i8 %.0.i5.6, ptr %i.fw, align 1, !tbaa !11
  %i.gl = load i8, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 %i.gm, %i.gh                ; 3 uses
  %.not.i.6 = icmp ult i32 %i.gn, 256
  %isnotneg.i.6 = icmp sgt i32 %i.gn, -1
  %i.go = sext i1 %isnotneg.i.6 to i8
  %i.gp = trunc nuw i32 %i.gn to i8
  %.0.i2.6 = select i1 %.not.i.6, i8 %i.gp, i8 %i.go
  store i8 %.0.i2.6, ptr %.0.i.ptr.6, align 1, !tbaa !11
  %.0.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 6 uses
  %i.gq = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %i.b
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = zext i8 %i.gr to i32
  %i.gt = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !11
  %i.gv = zext i8 %i.gu to i32
  %i.gw = load i8, ptr %.0.i.ptr.7, align 1, !tbaa !11
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds i8, ptr %.0.i.ptr.7, i64 %i.a ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = mul nsw i32 %i.hb, 3
  %i.hd = add nuw nsw i32 %i.gs, 4
  %i.he = sub nsw i32 %i.hd, %i.gv
  %i.hf = add nsw i32 %i.he, %i.hc
  %i.hg = ashr i32 %i.hf, 3
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !14 ; 2 uses
  %i.hk = add nsw i32 %i.hj, %i.ha                ; 3 uses
  %.not.i3.7 = icmp ult i32 %i.hk, 256
  %isnotneg.i4.7 = icmp sgt i32 %i.hk, -1
  %i.hl = sext i1 %isnotneg.i4.7 to i8
  %i.hm = trunc nuw i32 %i.hk to i8
  %.0.i5.7 = select i1 %.not.i3.7, i8 %i.hm, i8 %i.hl
  store i8 %.0.i5.7, ptr %i.gy, align 1, !tbaa !11
  %i.hn = load i8, ptr %.0.i.ptr.7, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i32
  %i.hp = sub nsw i32 %i.ho, %i.hj                ; 3 uses
  %.not.i.7 = icmp ult i32 %i.hp, 256
  %isnotneg.i.7 = icmp sgt i32 %i.hp, -1
  %i.hq = sext i1 %isnotneg.i.7 to i8
  %i.hr = trunc nuw i32 %i.hp to i8
  %.0.i2.7 = select i1 %.not.i.7, i8 %i.hr, i8 %i.hq
  store i8 %.0.i2.7, ptr %.0.i.ptr.7, align 1, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp3_h_loop_filter_8_c(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = shl nsw i64 %1, 3
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %.not.i7 = icmp eq i64 %1, 0
  br i1 %.not.i7, label %vp3_h_loop_filter_c.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i8 = phi ptr [ %i.ac, %.lr.ph ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %.0.i8, i64 -2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i8, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = load i8, ptr %.0.i8, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i8, i64 -1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, 3
  %i.p = add nuw nsw i32 %i.e, 4
  %i.q = sub nsw i32 %i.p, %i.h
  %i.r = add nsw i32 %i.q, %i.o
  %i.s = ashr i32 %i.r, 3
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14   ; 2 uses
  %i.w = add nsw i32 %i.v, %i.m                   ; 3 uses
  %.not.i4 = icmp ult i32 %i.w, 256
  %isnotneg.i5 = icmp sgt i32 %i.w, -1
  %i.x = sext i1 %isnotneg.i5 to i8
  %i.y = trunc nuw i32 %i.w to i8
  %.0.i6 = select i1 %.not.i4, i8 %i.y, i8 %i.x
  store i8 %.0.i6, ptr %i.k, align 1, !tbaa !11
  %i.z = sub nsw i32 %i.j, %i.v                   ; 3 uses
  %.not.i2 = icmp ult i32 %i.z, 256
  %isnotneg.i = icmp sgt i32 %i.z, -1
  %i.aa = sext i1 %isnotneg.i to i8
  %i.ab = trunc nuw i32 %i.z to i8
  %.0.i3 = select i1 %.not.i2, i8 %i.ab, i8 %i.aa
  store i8 %.0.i3, ptr %.0.i8, align 1, !tbaa !11
  %i.ac = getelementptr inbounds i8, ptr %.0.i8, i64 %1 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i, label %vp3_h_loop_filter_c.exit, label %.lr.ph, !llvm.loop !16

vp3_h_loop_filter_c.exit:                         ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp3dsp_set_bounding_values(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 12 uses
  %i.b = icmp ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 483) #8
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %.lr.ph

.lr.ph33.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph33.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph33.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph33.preheader.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.e = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph33.preheader, label %.lr.ph.epil, !llvm.loop !22

.lr.ph33.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph33.preheader.unr-lcssa
  %i.f = zext nneg i32 %1 to i64
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.j, ptr %i.i, align 4, !tbaa !14
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.l = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.l, ptr %i.k, align 4, !tbaa !14
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph33.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !24

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %indvars.iv39 = phi i64 [ %i.f, %.lr.ph33.preheader ], [ %indvars.iv.next40, %.lr.ph33 ] ; 4 uses
  %.032 = phi i32 [ %1, %.lr.ph33.preheader ], [ %i.s, %.lr.ph33 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39
  store i32 %.032, ptr %i.o, align 4, !tbaa !14
  %i.p = sub nsw i32 0, %.032
  %i.q = sub nsw i64 0, %indvars.iv39
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !14
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %i.s = add nsw i32 %.032, -1                    ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv39, 127
  %i.u = icmp ne i32 %i.s, 0                      ; 2 uses
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph33, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph33
  br i1 %i.u, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store i32 %i.s, ptr %i.w, align 4, !tbaa !14
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.d, %._crit_edge
  %i.x = mul nuw i32 %1, 33686018                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 %i.x, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i32 %i.x, ptr %i.z, align 4, !tbaa !14
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
end_hunk_0
