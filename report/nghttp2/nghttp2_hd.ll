Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_hd?download=true
inline.NumInlined: 158
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@add_hd_table_incremental:bb.a
  %i.df = shl i64 %.0.i.i, 1
  br i1 %i.de, label %.preheader26.i.i, label %bb.f, !llvm.loop !125

bb.f:                                             ; preds = %.preheader26.i.i
  %i.dg = shl i64 %.0.i.i, 3
  %i.dh = tail call ptr @nghttp2_mem_malloc(ptr noundef %i.b, i64 noundef %i.dg) #11 ; 8 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %hd_ringbuf_push_front.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.dj = load i64, ptr %i.l, align 8, !tbaa !61  ; 4 uses
  %.not28.i.i = icmp eq i64 %i.dj, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !39 ; 6 uses
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %hd_ringbuf_get.exit.lr.ph.i.i

hd_ringbuf_get.exit.lr.ph.i.i:                    ; preds = %.preheader.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !62 ; 5 uses
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !40 ; 5 uses
  %xtraiter = and i64 %i.dj, 3                    ; 3 uses
  %i.dn = icmp ult i64 %i.dj, 4
  br i1 %i.dn, label %hd_ringbuf_get.exit.i.i.epil.preheader, label %hd_ringbuf_get.exit.lr.ph.i.i.new

hd_ringbuf_get.exit.lr.ph.i.i.new:                ; preds = %hd_ringbuf_get.exit.lr.ph.i.i
  %unroll_iter = and i64 %i.dj, -4
  br label %hd_ringbuf_get.exit.i.i

hd_ringbuf_get.exit.i.i:                          ; preds = %hd_ringbuf_get.exit.i.i, %hd_ringbuf_get.exit.lr.ph.i.i.new
  %.02227.i.i = phi i64 [ 0, %hd_ringbuf_get.exit.lr.ph.i.i.new ], [ %i.el, %hd_ringbuf_get.exit.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %hd_ringbuf_get.exit.lr.ph.i.i.new ], [ %niter.next.3, %hd_ringbuf_get.exit.i.i ]
  %i.do = add i64 %.02227.i.i, %i.dl
  %i.dp = and i64 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !63
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.02227.i.i
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !63
  %i.dt = or disjoint i64 %.02227.i.i, 1          ; 2 uses
  %i.du = add i64 %i.dt, %i.dl
  %i.dv = and i64 %i.du, %i.dm
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !63
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dt
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !63
  %i.dz = or disjoint i64 %.02227.i.i, 2          ; 2 uses
  %i.ea = add i64 %i.dz, %i.dl
  %i.eb = and i64 %i.ea, %i.dm
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dz
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !63
  %i.ef = or disjoint i64 %.02227.i.i, 3          ; 2 uses
  %i.eg = add i64 %i.ef, %i.dl
  %i.eh = and i64 %i.eg, %i.dm
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ef
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !63
  %i.el = add nuw i64 %.02227.i.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.loopexit.unr-lcssa, label %hd_ringbuf_get.exit.i.i, !llvm.loop !126

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %hd_ringbuf_get.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %hd_ringbuf_get.exit.i.i.epil.preheader

hd_ringbuf_get.exit.i.i.epil.preheader:           ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %hd_ringbuf_get.exit.lr.ph.i.i
  %.02227.i.i.epil.init = phi i64 [ 0, %hd_ringbuf_get.exit.lr.ph.i.i ], [ %i.el, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %hd_ringbuf_get.exit.i.i.epil

hd_ringbuf_get.exit.i.i.epil:                     ; preds = %hd_ringbuf_get.exit.i.i.epil, %hd_ringbuf_get.exit.i.i.epil.preheader
  %.02227.i.i.epil = phi i64 [ %.02227.i.i.epil.init, %hd_ringbuf_get.exit.i.i.epil.preheader ], [ %i.er, %hd_ringbuf_get.exit.i.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %hd_ringbuf_get.exit.i.i.epil.preheader ], [ %epil.iter.next, %hd_ringbuf_get.exit.i.i.epil ]
  %i.em = add i64 %.02227.i.i.epil, %i.dl
  %i.en = and i64 %i.em, %i.dm
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.02227.i.i.epil
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !63
  %i.er = add nuw i64 %.02227.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %hd_ringbuf_get.exit.i.i.epil, !llvm.loop !127

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %hd_ringbuf_get.exit.i.i.epil, %.preheader.i.i
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef %.pre.i.i) #11
  store ptr %i.dh, ptr %0, align 8, !tbaa !39
  %i.es = add i64 %.0.i.i, -1                     ; 2 uses
  store i64 %i.es, ptr %i.cz, align 8, !tbaa !40
  %.pre14.i = load i64, ptr %i.l, align 8, !tbaa !61
  %.pre15.i = add i64 %.pre14.i, 1
  br label %bb.g

hd_ringbuf_push_front.exit:                       ; preds = %bb.f
  %i.et = load ptr, ptr %i.cv, align 8, !tbaa !31
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.et) #11
  %i.eu = load ptr, ptr %i.cg, align 8, !tbaa !30
  tail call void @nghttp2_rcbuf_decref(ptr noundef %i.eu) #11
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.cg) #11
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge.i, %._crit_edge.i.i
  %.pre-phi.i = phi i64 [ %i.cy, %._crit_edge.i ], [ %.pre15.i, %._crit_edge.i.i ]
  %i.ev = phi i64 [ %i.dd, %._crit_edge.i ], [ %i.es, %._crit_edge.i.i ]
  %i.ew = phi i64 [ %i.dc, %._crit_edge.i ], [ -1, %._crit_edge.i.i ]
  %i.ex = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dh, %._crit_edge.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ew, ptr %i.ey, align 8, !tbaa !62
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.cg, ptr %i.ez, align 8, !tbaa !63
  store i64 %.pre-phi.i, ptr %i.l, align 8, !tbaa !61
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !42 ; 2 uses
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store i32 %i.fb, ptr %i.fd, align 8, !tbaa !85
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cg, i64 76
  store i32 %3, ptr %i.fe, align 4, !tbaa !70
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ff = and i32 %3, 127
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fg ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !63 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %hd_map_insert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !71
  br label %hd_map_insert.exit

hd_map_insert.exit:                               ; preds = %bb.h, %bb.i
  store ptr %i.cg, ptr %i.fh, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %hd_map_insert.exit, %bb.g
  %i.fl = load i64, ptr %i.m, align 8, !tbaa !41
  %i.fm = add i64 %i.fl, %i.k
  store i64 %i.fm, ptr %i.m, align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %.critedge, %bb.j, %hd_ringbuf_push_front.exit
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %.critedge ], [ -901, %hd_ringbuf_push_front.exit ], [ -901, %bb.d ]
  ret i32 %.0
}

declare i64 @nghttp2_hd_huff_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @nghttp2_hd_huff_decode_failure_state(ptr noundef) local_unnamed_addr #3

declare ptr @nghttp2_cpymem(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @emit_string(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call i64 @nghttp2_hd_huff_encode_count(ptr noundef %1, i64 noundef %2) #11 ; 2 uses
  %.not = icmp ult i64 %i.b, %2                   ; 4 uses
  %. = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 3 uses
  %i.c = icmp ult i64 %., 127
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %., -127                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 127
  br i1 %i.e, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i64 [ %i.g, %.lr.ph.i ], [ 1, %bb.b ] ; 3 uses
  %.01215.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = lshr i64 %.01215.i, 7
  %i.g = add nuw nsw i64 %.016.i, 1
  %i.h = icmp ugt i64 %.01215.i, 16383
  br i1 %i.h, label %.lr.ph.i, label %count_encoded_length.exit, !llvm.loop !3

count_encoded_length.exit:                        ; preds = %.lr.ph.i
  %i.i = icmp samesign ugt i64 %.016.i, 14
  br i1 %i.i, label %bb.h, label %.lr.ph.i33.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = select i1 %.not, i8 -128, i8 0
  %i.k = trunc nuw nsw i64 %. to i8
  %i.l = or disjoint i8 %i.j, %i.k
  store i8 %i.l, ptr %i.a, align 16, !tbaa !26
  br label %encode_length.exit

bb.d:                                             ; preds = %bb.b
  %i.m = select i1 %.not, i8 -1, i8 127
  store i8 %i.m, ptr %i.a, align 16, !tbaa !26
  %.02528.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %._crit_edge.i

.lr.ph.i33.preheader:                             ; preds = %count_encoded_length.exit
  %3 = add nuw nsw i64 %.016.i, 2
  %i.n = select i1 %.not, i8 -1, i8 127
  store i8 %i.n, ptr %i.a, align 16, !tbaa !26
  %.02528.i48 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %.lr.ph.i33
  %.02530.i = phi ptr [ %.025.i, %.lr.ph.i33 ], [ %.02528.i48, %.lr.ph.i33.preheader ] ; 2 uses
  %.02429.i = phi i64 [ %i.q, %.lr.ph.i33 ], [ %i.d, %.lr.ph.i33.preheader ] ; 3 uses
  %i.o = trunc i64 %.02429.i to i8
  %i.p = or i8 %i.o, -128
  store i8 %i.p, ptr %.02530.i, align 1, !tbaa !26
  %i.q = lshr i64 %.02429.i, 7                    ; 2 uses
  %.025.i = getelementptr inbounds nuw i8, ptr %.02530.i, i64 1 ; 2 uses
  %i.r = icmp ugt i64 %.02429.i, 16383
  br i1 %i.r, label %.lr.ph.i33, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i33, %bb.d
  %.011.i353849 = phi i64 [ 2, %bb.d ], [ %3, %.lr.ph.i33 ]
  %.024.lcssa.i = phi i64 [ %i.d, %bb.d ], [ %i.q, %.lr.ph.i33 ]
  %.025.lcssa.i = phi ptr [ %.02528.i, %bb.d ], [ %.025.i, %.lr.ph.i33 ]
  %i.s = trunc nuw nsw i64 %.024.lcssa.i to i8
  store i8 %i.s, ptr %.025.lcssa.i, align 1, !tbaa !26
  br label %encode_length.exit

encode_length.exit:                               ; preds = %bb.c, %._crit_edge.i
  %.011.i3537 = phi i64 [ 1, %bb.c ], [ %.011.i353849, %._crit_edge.i ]
  %i.t = call i32 @nghttp2_bufs_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.011.i3537) #11 ; 2 uses
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %bb.e, label %bb.h

bb.e:                                             ; preds = %encode_length.exit
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @nghttp2_hd_huff_encode(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = call i32 @nghttp2_bufs_add(ptr noundef %0, ptr noundef %1, i64 noundef %2) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %encode_length.exit, %count_encoded_length.exit
  %.027 = phi i32 [ %i.t, %encode_length.exit ], [ -523, %count_encoded_length.exit ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.027
}

declare i64 @nghttp2_hd_huff_encode_count(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @nghttp2_hd_huff_encode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @nghttp2_bufs_addb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{!3, !64}
!4 = distinct !{!4, !64}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS13nghttp2_rcbuf", !13, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !10, i64 16, !9, i64 20}
!16 = !{!15, !14, i64 0}
!17 = !{!"p1 omnipotent char", !13, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"nghttp2_rcbuf", !13, i64 0, !13, i64 8, !17, i64 16, !18, i64 24, !10, i64 32}
!20 = !{!19, !17, i64 16}
!21 = !{!15, !14, i64 8}
!22 = !{!19, !18, i64 24}
!23 = !{!15, !9, i64 20}
!24 = !{!17, !17, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"", !17, i64 0, !17, i64 8, !18, i64 16, !18, i64 24, !9, i64 32}
!28 = !{!"p1 _ZTS16nghttp2_hd_entry", !13, i64 0}
!29 = !{!"nghttp2_hd_entry", !15, i64 0, !27, i64 24, !28, i64 64, !10, i64 72, !10, i64 76}
!30 = !{!29, !14, i64 0}
!31 = !{!29, !14, i64 8}
!32 = !{!"any p2 pointer", !13, i64 0}
!33 = !{!"p2 _ZTS16nghttp2_hd_entry", !32, i64 0}
!34 = !{!"", !33, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!35 = !{!"", !34, i64 0, !13, i64 32, !18, i64 40, !18, i64 48, !10, i64 56, !9, i64 60}
!36 = !{!35, !13, i64 32}
!37 = !{!35, !9, i64 60}
!38 = !{!35, !18, i64 48}
!39 = !{!34, !33, i64 0}
!40 = !{!34, !18, i64 8}
!41 = !{!35, !18, i64 40}
!42 = !{!35, !10, i64 56}
!43 = !{!"", !9, i64 0}
!44 = !{!"nghttp2_hd_deflater", !35, i64 0, !43, i64 64, !18, i64 1088, !18, i64 1096, !9, i64 1104}
!45 = !{!44, !9, i64 1104}
!46 = !{!44, !18, i64 1088}
!47 = !{!44, !18, i64 1096}
!48 = !{!44, !18, i64 48}
!49 = !{!"short", !9, i64 0}
!50 = !{!"", !49, i64 0, !9, i64 2}
!51 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!52 = !{!"nghttp2_hd_inflater", !35, i64 0, !50, i64 64, !51, i64 72, !51, i64 112, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !10, i64 224, !10, i64 228, !9, i64 232, !9, i64 233, !9, i64 234}
!53 = !{!52, !18, i64 200}
!54 = !{!52, !18, i64 208}
!55 = !{!52, !10, i64 224}
!56 = !{!52, !10, i64 228}
!57 = !{!52, !9, i64 232}
!58 = !{!52, !18, i64 216}
!59 = !{!52, !9, i64 233}
!60 = !{!52, !9, i64 234}
!61 = !{!34, !18, i64 24}
!62 = !{!34, !18, i64 16}
!63 = !{!28, !28, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!52, !14, i64 176}
!66 = !{!52, !14, i64 168}
!67 = !{!52, !14, i64 160}
!68 = !{!52, !14, i64 152}
!69 = !{!35, !18, i64 24}
!70 = !{!29, !10, i64 76}
!71 = !{!29, !28, i64 64}
!72 = !{!52, !18, i64 48}
!73 = !{!14, !14, i64 0}
!74 = !{!10, !10, i64 0}
!75 = !{i64 0, i64 8, !73, i64 8, i64 8, !73, i64 16, i64 4, !74, i64 20, i64 1, !26}
!76 = !{!"", !19, i64 0, !19, i64 40, !27, i64 80, !10, i64 120, !10, i64 124}
!77 = !{!76, !10, i64 120}
!78 = !{!15, !10, i64 16}
!79 = !{!44, !13, i64 32}
!80 = !{!27, !17, i64 0}
!81 = !{!27, !18, i64 16}
!82 = !{!27, !18, i64 24}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!27, !17, i64 8}
!85 = !{!29, !10, i64 72}
!86 = !{!"p1 _ZTS19nghttp2_hd_deflater", !13, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!52, !13, i64 32}
!89 = !{!52, !18, i64 184}
!90 = !{!52, !18, i64 192}
!91 = distinct !{!91, !64}
!92 = distinct !{!92, !64}
!93 = distinct !{!93, !83}
!94 = distinct !{!94, !64}
!95 = distinct !{!95, !64}
!96 = distinct !{!96, !"nghttp2_hd_table_get"}
!97 = distinct !{!97, !96, !"nghttp2_hd_table_get: argument 0"}
!98 = !{!44, !9, i64 60}
!99 = !{!76, !10, i64 124}
!100 = !{!27, !9, i64 32}
!101 = !{!29, !10, i64 16}
!102 = !{!76, !18, i64 64}
!103 = !{!76, !17, i64 56}
!104 = !{!97}
!105 = distinct !{!105, !64}
!106 = distinct !{!106, !83}
!107 = distinct !{!107, !"nghttp2_hd_table_get"}
!108 = distinct !{!108, !107, !"nghttp2_hd_table_get: argument 0"}
!109 = distinct !{!109, !64}
!110 = !{!52, !9, i64 60}
!111 = !{!108}
!112 = !{!52, !17, i64 96}
!113 = !{!52, !17, i64 88}
!114 = !{!51, !17, i64 24}
!115 = !{!52, !17, i64 136}
!116 = !{!52, !17, i64 128}
!117 = distinct !{!117, !"nghttp2_hd_table_get"}
!118 = distinct !{!118, !117, !"nghttp2_hd_table_get: argument 0"}
!119 = !{!118}
!120 = !{!"p1 _ZTS19nghttp2_hd_inflater", !13, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!44, !18, i64 40}
!123 = !{!52, !18, i64 40}
!124 = distinct !{!124, !64}
!125 = distinct !{!125, !64}
!126 = distinct !{!126, !64}
!127 = distinct !{!127, !83}
end_hunk_0
