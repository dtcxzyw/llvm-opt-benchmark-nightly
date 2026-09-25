Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event_tagging?download=true
inline.NumInlined: 27
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@evtag_unmarshal_int:bb.a
  %i.ap = add nsw i32 %.039.i, -2                 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader.i, !llvm.loop !3

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.039.i.epil.init = phi i32 [ %i.q, %.preheader.i.preheader ], [ %i.ap, %.unr-lcssa ] ; 2 uses
  %.03038.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %.1.i.1, %.unr-lcssa ]
  %lcmp.mod19 = trunc i8 %narrow.i to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.aq = shl i32 %.03038.i.epil.init, 4
  %i.ar = and i32 %.039.i.epil.init, 1
  %.not37.i.epil = icmp eq i32 %i.ar, 0
  %i.as = lshr i32 %.039.i.epil.init, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = and i8 %i.av, 15
  %i.ax = lshr i8 %i.av, 4
  %.pn.in.i.epil = select i1 %.not37.i.epil, i8 %i.ax, i8 %i.aw
  %.pn.i.epil = zext nneg i8 %.pn.in.i.epil to i32
  %.1.i.epil = or disjoint i32 %i.aq, %.pn.i.epil
  br label %bb.i

bb.i:                                             ; preds = %.unr-lcssa, %.preheader.i.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.unr-lcssa ], [ %.1.i.epil, %.preheader.i.epil.preheader ]
  store i32 %.1.i.lcssa, ptr %2, align 4
  br label %decode_int_internal.exit

decode_int_internal.exit:                         ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.031.i = phi i32 [ -1, %bb.d ], [ -1, %bb.e ], [ %i.t, %bb.i ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ] ; 3 uses
  %i.ay = call i32 @evbuffer_drain(ptr noundef %0, i64 noundef %i.j) #8 ; 0 uses
  %i.az = icmp slt i32 %.031.i, 0
  %i.ba = icmp ugt i32 %.031.i, %i.i
  %or.cond = or i1 %i.az, %i.ba
  %spec.select = select i1 %or.cond, i32 -1, i32 %.031.i
  br label %bb.j

bb.j:                                             ; preds = %decode_int_internal.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ %spec.select, %decode_int_internal.exit ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 10) i32 @evtag_unmarshal_int64(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = call fastcc i32 @decode_tag_internal(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef 1)
  %i.d = icmp ne i32 %i.c, -1
  %i.e = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %1, %i.e
  %or.cond12 = select i1 %i.d, i1 %.not, i1 false
  br i1 %or.cond12, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @evtag_decode_int(ptr noundef nonnull %i.b, ptr noundef %0)
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i64 @evbuffer_get_length(ptr noundef %0) #8
  %i.i = load i32, ptr %i.b, align 4              ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i64 @evbuffer_get_length(ptr noundef %0) #8 ; 2 uses
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %decode_int64_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef 1) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %decode_int64_internal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %i.p = lshr i8 %i.o, 4
  %narrow.i = add nuw nsw i8 %i.p, 1              ; 2 uses
  %i.q = zext nneg i8 %narrow.i to i32            ; 5 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp samesign ult i64 %i.l, %i.t
  br i1 %i.u, label %decode_int64_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef %i.t) #8 ; 4 uses
  %.not36.i = icmp eq ptr %i.v, null
  br i1 %.not36.i, label %decode_int64_internal.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g
  %xtraiter = and i32 %i.q, 1                     ; 2 uses
  %i.w = icmp ult i8 %i.o, 16
  br i1 %i.w, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.q, 30
  %.not37.i = icmp eq i32 %xtraiter, 0
  %i.x = and i8 %i.o, 16
  %.not37.i.1 = icmp eq i8 %i.x, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.039.i = phi i32 [ %i.q, %.preheader.i.preheader.new ], [ %i.ao, %.preheader.i ] ; 3 uses
  %.03038.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %.1.i.1, %.preheader.i ]
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.y = lshr i32 %.039.i, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = lshr i8 %i.ab, 4
  %.pn.in.i = select i1 %.not37.i, i8 %i.ac, i8 %i.ab
  %i.ad = add nsw i32 %.039.i, -1
  %i.ae = shl i64 %.03038.i, 8
  %i.af = shl i8 %.pn.in.i, 4
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ae, %i.ag
  %i.ai = lshr i32 %i.ad, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = and i8 %i.al, 15
  %i.an = lshr i8 %i.al, 4
  %.pn.in.i.1 = select i1 %.not37.i.1, i8 %i.an, i8 %i.am
  %.pn.i.1 = zext nneg i8 %.pn.in.i.1 to i64
  %.1.i.1 = or disjoint i64 %i.ah, %.pn.i.1       ; 3 uses
  %i.ao = add nsw i32 %.039.i, -2                 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %.preheader.i, !llvm.loop !4

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.h, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.039.i.epil.init = phi i32 [ %i.q, %.preheader.i.preheader ], [ %i.ao, %.unr-lcssa ] ; 2 uses
  %.03038.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %.1.i.1, %.unr-lcssa ]
  %lcmp.mod19 = trunc i8 %narrow.i to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.ap = shl i64 %.03038.i.epil.init, 4
  %i.aq = and i32 %.039.i.epil.init, 1
  %.not37.i.epil = icmp eq i32 %i.aq, 0
  %i.ar = lshr i32 %.039.i.epil.init, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = and i8 %i.au, 15
  %i.aw = lshr i8 %i.au, 4
  %.pn.in.i.epil = select i1 %.not37.i.epil, i8 %i.aw, i8 %i.av
  %.pn.i.epil = zext nneg i8 %.pn.in.i.epil to i64
  %.1.i.epil = or disjoint i64 %i.ap, %.pn.i.epil
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa, %.preheader.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %.unr-lcssa ], [ %.1.i.epil, %.preheader.i.epil.preheader ]
  store i64 %.1.i.lcssa, ptr %2, align 8
  br label %decode_int64_internal.exit

decode_int64_internal.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.031.i = phi i32 [ -1, %bb.d ], [ -1, %bb.e ], [ %i.s, %bb.h ], [ -1, %bb.f ], [ -1, %bb.g ] ; 3 uses
  %i.ax = call i32 @evbuffer_drain(ptr noundef %0, i64 noundef %i.j) #8 ; 0 uses
  %i.ay = icmp slt i32 %.031.i, 0
  %i.az = icmp ugt i32 %.031.i, %i.i
  %or.cond = or i1 %i.ay, %i.az
  %spec.select = select i1 %or.cond, i32 -1, i32 %.031.i
  br label %bb.i

bb.i:                                             ; preds = %decode_int64_internal.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ %spec.select, %decode_int64_internal.exit ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evtag_unmarshal_fixed(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call fastcc i32 @decode_tag_internal(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %evtag_unmarshal_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @evtag_decode_int(ptr noundef nonnull %i.a, ptr noundef %0)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %evtag_unmarshal_header.exit.thread, label %evtag_unmarshal_header.exit

evtag_unmarshal_header.exit.thread:               ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.d

evtag_unmarshal_header.exit:                      ; preds = %bb.b
  %i.i = call i64 @evbuffer_get_length(ptr noundef %0) #8
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %4 = icmp uge i64 %i.i, %i.j                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.k = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.k, %1
  %or.cond = select i1 %4, i1 %.not, i1 false
  %5 = select i1 %4, i64 %i.j, i64 4294967295
  %.not9 = icmp eq i64 %3, %5
  %or.cond10 = and i1 %or.cond, %.not9
  br i1 %or.cond10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %evtag_unmarshal_header.exit
  %i.l = call i32 @evbuffer_remove(ptr noundef %0, ptr noundef %2, i64 noundef %3) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %evtag_unmarshal_header.exit.thread, %evtag_unmarshal_header.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %evtag_unmarshal_header.exit ], [ -1, %evtag_unmarshal_header.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

declare i32 @evbuffer_remove(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evtag_unmarshal_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call fastcc i32 @decode_tag_internal(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %evtag_unmarshal_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @evtag_decode_int(ptr noundef nonnull %i.a, ptr noundef %0)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %evtag_unmarshal_header.exit.thread, label %evtag_unmarshal_header.exit

evtag_unmarshal_header.exit.thread:               ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

evtag_unmarshal_header.exit:                      ; preds = %bb.b
  %i.i = call i64 @evbuffer_get_length(ptr noundef %0) #8
  %i.j = zext nneg i32 %i.g to i64
  %3 = icmp uge i64 %i.i, %i.j                    ; 2 uses
  %..i = select i1 %3, i32 %i.g, i32 -1           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.k = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.k, %1
  %or.cond = select i1 %3, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %evtag_unmarshal_header.exit
  %i.l = add nuw nsw i32 %..i, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = call ptr @event_mm_malloc_(i64 noundef %i.m) #8 ; 3 uses
  store ptr %i.n, ptr %2, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evtag_unmarshal_string) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %..i to i64                ; 2 uses
  %i.q = call i32 @evbuffer_remove(ptr noundef %0, ptr noundef nonnull %i.n, i64 noundef %i.p) #8 ; 0 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1
  br label %bb.f

bb.f:                                             ; preds = %evtag_unmarshal_header.exit.thread, %evtag_unmarshal_header.exit, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ -1, %evtag_unmarshal_header.exit ], [ -1, %evtag_unmarshal_header.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

declare ptr @event_mm_malloc_(i64 noundef) local_unnamed_addr #3

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evtag_unmarshal_timeval(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = call fastcc i32 @decode_tag_internal(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %evtag_unmarshal_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @evtag_decode_int(ptr noundef nonnull %i.a, ptr noundef %0)
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %evtag_unmarshal_header.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @evbuffer_get_length(ptr noundef %0) #8
  %i.j = zext nneg i32 %i.g to i64                ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %evtag_unmarshal_header.exit.thread, label %bb.d

evtag_unmarshal_header.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.l = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.l, %1
  br i1 %.not, label %bb.e, label %decode_int_internal.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = call i64 @evbuffer_get_length(ptr noundef %0) #8 ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %decode_int_internal.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef 1) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %decode_int_internal.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.o, align 1               ; 4 uses
  %i.q = lshr i8 %i.p, 4
  %narrow.i = add nuw nsw i8 %i.q, 1              ; 2 uses
  %i.r = zext nneg i8 %narrow.i to i32            ; 5 uses
  %i.s = icmp slt i8 %i.p, 0
  br i1 %i.s, label %decode_int_internal.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i32 %i.r, 1                         ; 2 uses
  %i.u = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %i.v = zext nneg i32 %i.u to i64                ; 6 uses
  %i.w = icmp samesign ult i64 %i.m, %i.v
  br i1 %i.w, label %decode_int_internal.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef %i.v) #8 ; 4 uses
  %.not36.i = icmp eq ptr %i.x, null
  br i1 %.not36.i, label %decode_int_internal.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i32 %i.r, 1                     ; 2 uses
  %i.y = icmp ult i8 %i.p, 16
  br i1 %i.y, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i32 %i.r, 14
  %.not37.i = icmp eq i32 %xtraiter, 0
  %i.z = and i8 %i.p, 16
  %.not37.i.1 = icmp eq i8 %i.z, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.039.i = phi i32 [ %i.r, %.preheader.i.preheader.new ], [ %i.aq, %.preheader.i ] ; 3 uses
  %.03038.i = phi i32 [ 0, %.preheader.i.preheader.new ], [ %.1.i.1, %.preheader.i ]
  %niter = phi i32 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.aa = lshr i32 %.039.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = lshr i8 %i.ad, 4
  %.pn.in.i = select i1 %.not37.i, i8 %i.ae, i8 %i.ad
  %i.af = add nsw i32 %.039.i, -1
  %i.ag = shl i32 %.03038.i, 8
  %i.ah = shl i8 %.pn.in.i, 4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = lshr i32 %i.af, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = and i8 %i.an, 15
  %i.ap = lshr i8 %i.an, 4
  %.pn.in.i.1 = select i1 %.not37.i.1, i8 %i.ap, i8 %i.ao
  %.pn.i.1 = zext nneg i8 %.pn.in.i.1 to i32
  %.1.i.1 = or disjoint i32 %i.aj, %.pn.i.1       ; 3 uses
  %i.aq = add nsw i32 %.039.i, -2                 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %decode_int_internal.exit.unr-lcssa, label %.preheader.i, !llvm.loop !3

decode_int_internal.exit.unr-lcssa:               ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %decode_int_internal.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %decode_int_internal.exit.unr-lcssa, %.preheader.i.preheader
  %.039.i.epil.init = phi i32 [ %i.r, %.preheader.i.preheader ], [ %i.aq, %decode_int_internal.exit.unr-lcssa ] ; 2 uses
  %.03038.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %.1.i.1, %decode_int_internal.exit.unr-lcssa ]
  %lcmp.mod46 = trunc i8 %narrow.i to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.ar = shl i32 %.03038.i.epil.init, 4
  %i.as = and i32 %.039.i.epil.init, 1
  %.not37.i.epil = icmp eq i32 %i.as, 0
  %i.at = lshr i32 %.039.i.epil.init, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = and i8 %i.aw, 15
  %i.ay = lshr i8 %i.aw, 4
  %.pn.in.i.epil = select i1 %.not37.i.epil, i8 %i.ay, i8 %i.ax
  %.pn.i.epil = zext nneg i8 %.pn.in.i.epil to i32
  %.1.i.epil = or disjoint i32 %i.ar, %.pn.i.epil
  br label %decode_int_internal.exit

decode_int_internal.exit:                         ; preds = %decode_int_internal.exit.unr-lcssa, %.preheader.i.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %decode_int_internal.exit.unr-lcssa ], [ %.1.i.epil, %.preheader.i.epil.preheader ]
  %i.az = zext i32 %.1.i.lcssa to i64
  store i64 %i.az, ptr %2, align 8
  %i.ba = call i64 @evbuffer_get_length(ptr noundef %0) #8
  %i.bb = sub i64 %i.ba, %i.v                     ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 1
  br i1 %i.bc, label %decode_int_internal.exit.thread, label %bb.j

bb.j:                                             ; preds = %decode_int_internal.exit
  %i.bd = add nuw nsw i32 %i.t, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef %i.be) #8 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i17, label %decode_int_internal.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.v
  %i.bh = load i8, ptr %i.bg, align 1             ; 4 uses
  %i.bi = lshr i8 %i.bh, 4
  %narrow.i18 = add nuw nsw i8 %i.bi, 1           ; 2 uses
  %i.bj = zext nneg i8 %narrow.i18 to i32         ; 5 uses
  %i.bk = icmp slt i8 %i.bh, 0
  br i1 %i.bk, label %decode_int_internal.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = lshr i32 %i.bj, 1
  %i.bm = add nuw nsw i32 %i.bl, 1                ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bb, %i.bn
  br i1 %i.bo, label %decode_int_internal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = add nuw nsw i64 %i.bn, %i.v
  %i.bq = call ptr @evbuffer_pullup(ptr noundef %0, i64 noundef %i.bp) #8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.v ; 3 uses
  %.not36.i19 = icmp eq ptr %i.bq, null
  br i1 %.not36.i19, label %decode_int_internal.exit.thread, label %.preheader.i20.preheader

end_hunk_0
