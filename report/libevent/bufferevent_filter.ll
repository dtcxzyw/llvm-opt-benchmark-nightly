Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/bufferevent_filter?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0_@be_filter_process_output:bb.a
  %i.dv = phi ptr [ %i.y, %bb.e ], [ %i.y, %be_underlying_writebuf_full.exit67.us ], [ %i.y, %bb.p ], [ %i.y, %bb.o ], [ %i.y, %bufferevent_trigger_nolock_.exit.us ], [ %i.o, %be_underlying_writebuf_full.exit67.thread ], [ %i.o, %bb.t ], [ %i.o, %bufferevent_trigger_nolock_.exit ], [ %i.o, %.split ]
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.du, align 8
  %i.dy = tail call i32 @evbuffer_cb_set_flags(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef 1) #3 ; 0 uses
  %i.dz = load i32, ptr %2, align 4
  %.not57 = icmp eq i32 %i.dz, 0
  br i1 %.not57, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.critedge61
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8
  %.not58 = icmp eq i64 %i.eb, 0
  br i1 %.not58, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ed = load i64, ptr %i.ec, align 8
  %.not59 = icmp eq i64 %i.ed, 0
  br i1 %.not59, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ef = tail call i32 @event_add(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #3 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge61, %bb.w, %bb.v, %bb.b, %be_underlying_writebuf_full.exit, %be_underlying_writebuf_full.exit.thread
  ret void
}

declare i32 @bufferevent_decref_and_unlock_(ptr noundef) local_unnamed_addr #1

declare i64 @evbuffer_get_length(ptr noundef) local_unnamed_addr #1

declare i32 @evbuffer_cb_set_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bufferevent_run_readcb_(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bufferevent_run_writecb_(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @be_filter_read_nolock_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %be_filter_process_input.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %be_filter_process_input.exit, label %.split13

.split13:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = tail call i32 %i.l(ptr noundef %i.o, ptr noundef %i.p, i64 noundef -1, i32 noundef 2, ptr noundef %i.q) #3, !inline_history !9
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %.lr.ph.i, label %be_filter_process_input.exit.thread

bb.c:                                             ; preds = %.critedge46.i
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = tail call i32 %i.s(ptr noundef %i.v, ptr noundef %i.w, i64 noundef -1, i32 noundef 2, ptr noundef %i.x) #3, !inline_history !9
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.critedge.thread.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.split13, %bb.c
  %i.aa = load i16, ptr %i.k, align 8
  %i.ab = and i16 %i.aa, 2
  %.not33.i = icmp eq i16 %i.ab, 0
  br i1 %.not33.i, label %.critedge.thread.i, label %.critedge46.i

.critedge46.i:                                    ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 @evbuffer_get_length(ptr noundef %i.ae) #3
  %.not34.i = icmp eq i64 %i.af, 0
  br i1 %.not34.i, label %.critedge.thread.i, label %bb.c

.critedge.thread.i:                               ; preds = %.lr.ph.i, %bb.c, %.critedge46.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %.not37.i = icmp eq i64 %i.ah, 0
  br i1 %.not37.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aj = load i64, ptr %i.ai, align 8
  %.not38.i = icmp eq i64 %i.aj, 0
  br i1 %.not38.i, label %be_filter_process_input.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = tail call i32 @event_add(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ag) #3 ; 0 uses
  br label %be_filter_process_input.exit.thread25

be_filter_process_input.exit:                     ; preds = %bb.b
  call fastcc void @be_filter_process_input(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.a)
  %.pr.pre = load i32, ptr %i.a, align 4
  %i.am = icmp eq i32 %.pr.pre, 0
  br i1 %i.am, label %be_filter_process_input.exit.thread, label %be_filter_process_input.exit.thread25

be_filter_process_input.exit.thread25:            ; preds = %bb.d, %bb.e, %be_filter_process_input.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 @evbuffer_get_length(ptr noundef %i.ao) #3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ar = load i64, ptr %i.aq, align 8
  %.not11.i = icmp ult i64 %i.ap, %i.ar
  br i1 %.not11.i, label %bufferevent_trigger_nolock_.exit, label %bb.f

bb.f:                                             ; preds = %be_filter_process_input.exit.thread25
  tail call void @bufferevent_run_readcb_(ptr noundef nonnull %1, i32 noundef 0) #3
  br label %bufferevent_trigger_nolock_.exit

bufferevent_trigger_nolock_.exit:                 ; preds = %be_filter_process_input.exit.thread25, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i64 @evbuffer_get_length(ptr noundef %i.at) #3
  %.not15 = icmp ne i64 %i.au, 0
  %or.cond = and i1 %.not, %.not15
  br i1 %or.cond, label %bb.g, label %be_filter_process_input.exit.thread

bb.g:                                             ; preds = %bufferevent_trigger_nolock_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %be_filter_process_input.exit.thread, label %be_readbuf_full.exit

be_readbuf_full.exit:                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.an, align 8
  %i.ay = tail call i64 @evbuffer_get_length(ptr noundef %i.ax) #3
  %i.az = load i64, ptr %i.av, align 8
  %.not20 = icmp ult i64 %i.ay, %i.az
  br i1 %.not20, label %be_filter_process_input.exit.thread, label %bb.h

bb.h:                                             ; preds = %be_readbuf_full.exit
  %i.ba = load ptr, ptr %i.an, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 @evbuffer_cb_set_flags(ptr noundef %i.ba, ptr noundef %i.bc, i32 noundef 1) #3 ; 0 uses
  br label %be_filter_process_input.exit.thread

be_filter_process_input.exit.thread:              ; preds = %.split13, %bb.g, %be_filter_process_input.exit, %bb.h, %be_readbuf_full.exit, %bufferevent_trigger_nolock_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @be_filter_process_input(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %be_readbuf_full.exit.thread.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 2
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %be_readbuf_full.exit.thread.split.us.preheader, label %be_readbuf_full.exit

be_readbuf_full.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 @evbuffer_get_length(ptr noundef %i.h) #3
  %i.j = load i64, ptr %i.e, align 8
  %.not44 = icmp ult i64 %i.i, %i.j
  br i1 %.not44, label %be_readbuf_full.exit.thread.split.us.preheader, label %bb.l

be_readbuf_full.exit.thread.split.us.preheader:   ; preds = %bb.c, %be_readbuf_full.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.pre = load i64, ptr %i.k, align 8
  br label %be_readbuf_full.exit.thread.split.us

be_readbuf_full.exit.thread.split.us:             ; preds = %be_readbuf_full.exit.thread.split.us.backedge, %be_readbuf_full.exit.thread.split.us.preheader
  %3 = phi i64 [ %.pre, %be_readbuf_full.exit.thread.split.us.preheader ], [ %.be, %be_readbuf_full.exit.thread.split.us.backedge ] ; 2 uses
  %.not32.us = icmp eq i64 %3, 0
  br i1 %.not32.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %be_readbuf_full.exit.thread.split.us
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = tail call i64 @evbuffer_get_length(ptr noundef %i.q) #3
  %i.s = sub i64 %3, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %be_readbuf_full.exit.thread.split.us
  %.0.us = phi i64 [ %i.s, %bb.d ], [ -1, %be_readbuf_full.exit.thread.split.us ]
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = tail call i32 %i.t(ptr noundef %i.w, ptr noundef %i.x, i64 noundef %.0.us, i32 noundef 0, ptr noundef %i.y) #3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4
  %i.ab = load i16, ptr %i.p, align 8
  %i.ac = and i16 %i.ab, 2
  %.not33.us = icmp eq i16 %i.ac, 0
  br i1 %.not33.us, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i64 @evbuffer_get_length(ptr noundef %i.af) #3
  %.not34.us = icmp eq i64 %i.ag, 0
  br i1 %.not34.us, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.k, align 8
  %.not.i40.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i40.us, label %be_readbuf_full.exit.thread.split.us.backedge, label %be_readbuf_full.exit41.us

be_readbuf_full.exit.thread.split.us.backedge:    ; preds = %bb.h, %be_readbuf_full.exit41.us
  %.be = phi i64 [ 0, %bb.h ], [ %i.ak, %be_readbuf_full.exit41.us ]
  br label %be_readbuf_full.exit.thread.split.us, !llvm.loop !0

be_readbuf_full.exit41.us:                        ; preds = %bb.h
  %i.ai = load ptr, ptr %i.l, align 8
  %i.aj = tail call i64 @evbuffer_get_length(ptr noundef %i.ai) #3
  %i.ak = load i64, ptr %i.k, align 8             ; 2 uses
  %.not45.us = icmp ult i64 %i.aj, %i.ak
  br i1 %.not45.us, label %be_readbuf_full.exit.thread.split.us.backedge, label %.critedge

be_readbuf_full.exit.thread.split:                ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 272
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.al, align 8
  %i.av = load ptr, ptr %i.ao, align 8
  %i.aw = tail call i32 %i.aq(ptr noundef %i.at, ptr noundef %i.au, i64 noundef -1, i32 noundef %1, ptr noundef %i.av) #3
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %.critedge

bb.i:                                             ; preds = %.critedge46
  %i.ay = load ptr, ptr %i.am, align 8
  %i.az = load ptr, ptr %i.an, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = load ptr, ptr %i.ao, align 8
  %i.be = tail call i32 %i.ay(ptr noundef %i.bb, ptr noundef %i.bc, i64 noundef -1, i32 noundef %1, ptr noundef %i.bd) #3
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %.critedge, !llvm.loop !0

.lr.ph:                                           ; preds = %be_readbuf_full.exit.thread.split, %bb.i
  store i32 1, ptr %2, align 4
  %i.bg = load i16, ptr %i.ap, align 8
  %i.bh = and i16 %i.bg, 2
  %.not33 = icmp eq i16 %i.bh, 0
  br i1 %.not33, label %.critedge.thread, label %.critedge46

.critedge46:                                      ; preds = %.lr.ph
  %i.bi = load ptr, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i64 @evbuffer_get_length(ptr noundef %i.bk) #3
  %.not34 = icmp eq i64 %i.bl, 0
  br i1 %.not34, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.i, %.critedge46, %bb.e, %bb.g, %be_readbuf_full.exit41.us, %be_readbuf_full.exit.thread.split
  %.pr = load i32, ptr %2, align 4
  %.not36 = icmp eq i32 %.pr, 0
  br i1 %.not36, label %bb.l, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %bb.f, %.critedge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %.not37 = icmp eq i64 %i.bn, 0
  br i1 %.not37, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bp = load i64, ptr %i.bo, align 8
  %.not38 = icmp eq i64 %i.bp, 0
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = tail call i32 @event_add(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bm) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.j, %bb.b, %be_readbuf_full.exit
  ret void
}

declare void @bufferevent_run_eventcb_(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

declare i32 @bufferevent_flush(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4, !8}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{null}
end_hunk_0
