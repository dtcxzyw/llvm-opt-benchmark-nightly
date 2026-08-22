Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mgrep?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@monkey1:bb.a

.lr.ph154:                                        ; preds = %.preheader132, %.lr.ph154
  %i.ee = phi i8 [ %i.ek, %.lr.ph154 ], [ %i.ed, %.preheader132 ]
  %i.ef = phi ptr [ %i.ej, %.lr.ph154 ], [ %.389, %.preheader132 ]
  %i.eg = zext i8 %i.ee to i32
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ei = tail call noundef i32 @putc(i32 noundef %i.eg, ptr noundef %i.eh), !inline_history !24 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8   ; 2 uses
  %.not109 = icmp eq i8 %i.ek, 10
  br i1 %.not109, label %._crit_edge155, label %.lr.ph154, !llvm.loop !51

._crit_edge155:                                   ; preds = %.lr.ph154, %.preheader132
  %.lcssa142 = phi ptr [ %.389, %.preheader132 ], [ %i.ej, %.lr.ph154 ]
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.em = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.el), !inline_history !24 ; 0 uses
  br label %.loopexit134

bb.m:                                             ; preds = %bb.i
  br i1 %.not107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %scevgep = getelementptr i8, ptr %.067159, i64 -1
  %i.eo = sub i64 %.086158178, %.067159179
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv181 = phi ptr [ %scevgep182, %bb.p ], [ %scevgep180, %bb.o ] ; 2 uses
  %.591 = phi ptr [ %i.ep, %bb.p ], [ %.086158, %bb.o ]
  %i.ep = getelementptr inbounds i8, ptr %.591, i64 -1 ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.eq, 10
  %scevgep182 = getelementptr i8, ptr %indvars.iv181, i64 -1
  br i1 %.not111, label %bb.q, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %bb.p
  %.not113 = icmp ult ptr %.067159, %i.ep
  br i1 %.not113, label %.lr.ph151, label %._crit_edge152.preheader

.lr.ph151:                                        ; preds = %bb.q, %.lr.ph151
  %.269149 = phi ptr [ %i.er, %.lr.ph151 ], [ %.067159, %bb.q ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.269149, i64 1 ; 2 uses
  %i.es = load i8, ptr %.269149, align 1, !tbaa !8
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ev = tail call noundef i32 @putc(i32 noundef %i.et, ptr noundef %i.eu), !inline_history !24 ; 0 uses
  %exitcond183.not = icmp eq ptr %i.er, %indvars.iv181
  br i1 %exitcond183.not, label %bb.r, label %.lr.ph151, !llvm.loop !53

bb.r:                                             ; preds = %.lr.ph151
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ex = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ew), !inline_history !24 ; 0 uses
  br label %._crit_edge152.preheader

._crit_edge152.preheader:                         ; preds = %bb.q, %bb.r
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.preheader, %._crit_edge152
  %.692 = phi ptr [ %i.ey, %._crit_edge152 ], [ %i.ep, %._crit_edge152.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.692, i64 1 ; 3 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !8
  %.not114 = icmp eq i8 %i.ez, 10
  br i1 %.not114, label %bb.s, label %._crit_edge152, !llvm.loop !54

bb.s:                                             ; preds = %._crit_edge152
  %i.fa = getelementptr inbounds nuw i8, ptr %.692, i64 2
  br label %.loopexit134

bb.t:                                             ; preds = %bb.f, %._crit_edge
  %.not131 = icmp eq ptr %i.cr, null
  br i1 %.not131, label %.loopexit134, label %bb.e, !llvm.loop !55

.loopexit134:                                     ; preds = %bb.t, %.preheader133, %._crit_edge155, %bb.s, %.epilog-lcssa, %bb.d
  %.9 = phi ptr [ %.086158, %bb.d ], [ %.288, %.preheader133 ], [ %.086158, %.epilog-lcssa ], [ %.lcssa142, %._crit_edge155 ], [ %i.ey, %bb.s ], [ %.086158, %bb.t ]
  %.082 = phi i8 [ %i.al, %bb.d ], [ %i.m, %.preheader133 ], [ 1, %.epilog-lcssa ], [ %i.m, %._crit_edge155 ], [ %i.m, %bb.s ], [ 1, %bb.t ]
  %.572 = phi ptr [ %.067159, %bb.d ], [ %.067159, %.preheader133 ], [ %.067159, %.epilog-lcssa ], [ %.067159, %._crit_edge155 ], [ %i.fa, %bb.s ], [ %.067159, %bb.t ] ; 2 uses
  %i.fb = zext i8 %.082 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.9, i64 %i.fb ; 2 uses
  %.not = icmp ugt ptr %i.fc, %i.c
  br i1 %.not, label %._crit_edge162, label %bb.b, !llvm.loop !56

._crit_edge162:                                   ; preds = %.loopexit134, %bb.a
  %.067.lcssa = phi ptr [ %i.g, %bb.a ], [ %.572, %.loopexit134 ] ; 2 uses
  %i.fd = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = load i32, ptr @COUNT, align 4
  %i.fg = icmp ne i32 %i.ff, 0
  %or.cond3 = select i1 %i.fe, i1 true, i1 %i.fg
  %.not100164 = icmp ugt ptr %.067.lcssa, %i.c
  %or.cond167 = select i1 %or.cond3, i1 true, i1 %.not100164
  br i1 %or.cond167, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge162, %.lr.ph166
  %.673165 = phi ptr [ %i.fh, %.lr.ph166 ], [ %.067.lcssa, %._crit_edge162 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.673165, i64 1 ; 2 uses
  %i.fi = load i8, ptr %.673165, align 1, !tbaa !8
  %i.fj = zext i8 %i.fi to i32
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.fl = tail call noundef i32 @putc(i32 noundef %i.fj, ptr noundef %i.fk), !inline_history !24 ; 0 uses
  %.not100 = icmp ugt ptr %i.fh, %i.c
  br i1 %.not100, label %.loopexit, label %.lr.ph166, !llvm.loop !57

.loopexit:                                        ; preds = %bb.g, %.lr.ph166, %._crit_edge162
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @mgrep(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17408 x i8], align 16            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 10, ptr %i.b, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 6 uses
  %i.d = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 8192) #16 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.g = phi i32 [ %i.bb, %bb.l ], [ %i.e, %bb.a ]
  %i.h = phi i64 [ %i.ba, %bb.l ], [ %i.d, %bb.a ] ; 4 uses
  %.03039 = phi i32 [ %spec.store.select, %bb.l ], [ 1023, %bb.a ] ; 3 uses
  %i.i = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.j = icmp ne i32 %i.i, 0
  %i.k = load i32, ptr @COUNT, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i, label %countline.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %total_line.promoted.i = load i32, ptr @total_line, align 4 ; 2 uses
  %wide.trip.count.i = and i64 %i.h, 2147483647
  %xtraiter = and i64 %i.h, 1
  %i.m = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.h, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %i.n = phi i32 [ %total_line.promoted.i, %.lr.ph.preheader.i.new ], [ %i.y, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 2, !tbaa !8
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.b, label %.lr.ph.i.1

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.r, ptr @total_line, align 4, !tbaa !4
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.s = phi i32 [ %i.n, %.lr.ph.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.x = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.x, ptr @total_line, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %i.y = phi i32 [ %i.s, %.lr.ph.i.1 ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %countline.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

countline.exit.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %countline.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %countline.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %countline.exit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %total_line.promoted.i, %.lr.ph.preheader.i ], [ %i.y, %countline.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %bb.e, label %countline.exit

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ac = add nsw i32 %.epil.init, 1
  store i32 %i.ac, ptr @total_line, align 4, !tbaa !4
  br label %countline.exit

countline.exit:                                   ; preds = %countline.exit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %.lr.ph
  %i.ad = add nuw nsw i32 %i.g, 1023              ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %countline.exit
  %.1 = phi i32 [ %i.ad, %countline.exit ], [ %2, %bb.f ] ; 8 uses
  %1 = zext nneg i32 %.1 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = icmp ne i8 %i.af, 10
  %i.ah = icmp sgt i32 %.1, 1024
  %i.ai = and i1 %i.ah, %i.ag
  %2 = add nsw i32 %.1, -1
  br i1 %i.ai, label %bb.f, label %bb.g, !llvm.loop !58

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  %i.ak = sub nsw i32 %i.ad, %.1                  ; 4 uses
  %i.al = add nsw i32 %i.ak, 1
  %i.am = sext i32 %.03039 to i64
  %i.an = getelementptr i8, ptr %i.a, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  store i8 10, ptr %i.ao, align 1, !tbaa !8
  %i.ap = load i32, ptr @SHORT, align 4, !tbaa !4
  %.not32 = icmp eq i32 %i.ap, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @m_short(ptr noundef nonnull %i.a, i32 noundef %.03039, i32 noundef %.1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @monkey1(ptr noundef nonnull %i.a, i32 noundef %.03039, i32 noundef %.1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = load i32, ptr @num_of_matched, align 4
  %i.at = icmp ne i32 %i.as, 0
  %or.cond3 = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %._crit_edge.thread

bb.l:                                             ; preds = %bb.j
  %i.au = sub nsw i32 1023, %i.ak
  %i.av = icmp sgt i32 %i.ak, 1023
  %spec.store.select = select i1 %i.av, i32 1, i32 %i.au ; 5 uses
  %i.aw = sext i32 %spec.store.select to i64
  %i.ax = getelementptr inbounds i8, ptr %i.a, i64 %i.aw
  %i.ay = sext i32 %i.al to i64
  %i.az = call ptr @strncpy(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.aj, i64 noundef %i.ay) #16 ; 0 uses
  %i.ba = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 8192) #16 ; 2 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.l
  %i.bd = icmp sgt i32 %i.ak, 0
  store i8 10, ptr %i.c, align 16, !tbaa !8
  %i.be = sext i32 %spec.store.select to i64
  %i.bf = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  store i8 10, ptr %i.bg, align 1, !tbaa !8
  br i1 %i.bd, label %bb.m, label %._crit_edge.thread

bb.m:                                             ; preds = %._crit_edge
  %i.bh = load i32, ptr @SHORT, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @m_short(ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef %.1)
  br label %._crit_edge.thread

bb.o:                                             ; preds = %bb.m
  call void @monkey1(ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef %.1)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8pat_list", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"pat_list", !5, i64 0, !12, i64 8}
!16 = !{!15, !12, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!24 = distinct !{null}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 short", !13, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
end_hunk_0
