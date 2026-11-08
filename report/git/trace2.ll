Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/trace2?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tr2main_atexit_handler:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 16), align 8, !tbaa !35
  tail call void %i.p() #10, !inline_history !33
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 16), align 8, !tbaa !35
  tail call void %i.q() #10, !inline_history !33
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 16), align 8, !tbaa !35
  tail call void %i.r() #10, !inline_history !33
  tail call void @tr2tls_release() #10
  tail call void @tr2_sid_release() #10
  tail call void @tr2_cmd_name_release() #10
  tail call void @tr2_cfg_free_patterns() #10
  tail call void @tr2_cfg_free_env_vars() #10
  tail call void @tr2_sysenv_release() #10
  store i1 false, ptr @trace2_enabled, align 4
  ret void
}

declare i32 @sigchain_push(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @tr2main_signal_handler(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @getnanotime() #10
  %i.b = udiv i64 %i.a, 1000
  %i.c = tail call i64 @tr2tls_absolute_elapsed(i64 noundef %i.b) #10 ; 3 uses
  %i.d = load ptr, ptr @tr2_tgt_normal, align 8, !tbaa !16
  %i.e = tail call i32 @tr2_dst_trace_want(ptr noundef %i.d) #10
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 48), align 8, !tbaa !36 ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f(i64 noundef %i.c, i32 noundef %0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.g = load ptr, ptr @tr2_tgt_perf, align 8, !tbaa !16
  %i.h = tail call i32 @tr2_dst_trace_want(ptr noundef %i.g) #10
  %.not13.1 = icmp eq i32 %i.h, 0
  br i1 %.not13.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 48), align 8, !tbaa !36 ; 2 uses
  %.not14.1 = icmp eq ptr %i.i, null
  br i1 %.not14.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.i(i64 noundef %i.c, i32 noundef %0) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load ptr, ptr @tr2_tgt_event, align 8, !tbaa !16
  %i.k = tail call i32 @tr2_dst_trace_want(ptr noundef %i.j) #10
  %.not13.2 = icmp eq i32 %i.k, 0
  br i1 %.not13.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 48), align 8, !tbaa !36 ; 2 uses
  %.not14.2 = icmp eq ptr %i.l, null
  br i1 %.not14.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.l(i64 noundef %i.c, i32 noundef %0) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.m = tail call i32 @sigchain_pop(i32 noundef %0) #10 ; 0 uses
  %i.n = tail call i32 @raise(i32 noundef %0) #10 ; 0 uses
  ret void
}

declare void @tr2tls_init() local_unnamed_addr #1

declare i32 @tr2_dst_trace_want(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @trace2_is_enabled() local_unnamed_addr #4 {
bb.a:
  %.b = load i1, ptr @trace2_enabled, align 4
  %i.a = zext i1 %.b to i32
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @trace2_cmd_start_fl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @trace2_enabled, align 4
  br i1 %.b, label %bb.b, label %free_redacted_argv.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @getnanotime() #10
  %i.b = udiv i64 %i.a, 1000
  %i.c = tail call i64 @tr2tls_absolute_elapsed(i64 noundef %i.b) #10 ; 3 uses
  %i.d = tail call fastcc ptr @redact_argv(ptr noundef %2) ; 6 uses
  %i.e = load ptr, ptr @tr2_tgt_normal, align 8, !tbaa !16
  %i.f = tail call i32 @tr2_dst_trace_want(ptr noundef %i.e) #10
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 32), align 8, !tbaa !37 ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.g(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, ptr noundef %i.d) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.h = load ptr, ptr @tr2_tgt_perf, align 8, !tbaa !16
  %i.i = tail call i32 @tr2_dst_trace_want(ptr noundef %i.h) #10
  %.not16.1 = icmp eq i32 %i.i, 0
  br i1 %.not16.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 32), align 8, !tbaa !37 ; 2 uses
  %.not17.1 = icmp eq ptr %i.j, null
  br i1 %.not17.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.j(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, ptr noundef %i.d) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.k = load ptr, ptr @tr2_tgt_event, align 8, !tbaa !16
  %i.l = tail call i32 @tr2_dst_trace_want(ptr noundef %i.k) #10
  %.not16.2 = icmp eq i32 %i.l, 0
  br i1 %.not16.2, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 32), align 8, !tbaa !37 ; 2 uses
  %.not17.2 = icmp eq ptr %i.m, null
  br i1 %.not17.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.m(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, ptr noundef %i.d) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.not.i = icmp eq ptr %i.d, %2
  br i1 %.not.i, label %free_redacted_argv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.n = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %.not1517.i = icmp eq ptr %i.n, null
  br i1 %.not1517.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader.i ] ; 2 uses
  %i.o = phi ptr [ %i.s, %bb.m ], [ %i.n, %.preheader.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.o
  br i1 %.not16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  tail call void @free(ptr noundef %i.q) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %.not15.i = icmp eq ptr %i.s, null
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  tail call void @free(ptr noundef %i.d) #10
  br label %free_redacted_argv.exit

free_redacted_argv.exit:                          ; preds = %._crit_edge.i, %bb.k, %bb.a
  ret void
}

declare i64 @getnanotime() local_unnamed_addr #1

declare i64 @tr2tls_absolute_elapsed(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @redact_argv(ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %.b = load i1, ptr @trace2_redact, align 4
  br i1 %.b, label %.thread, label %.preheader57

.preheader57:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not64 = icmp eq ptr %i.b, null
  br i1 %.not64, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57, %bb.b
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.b ], [ 1, %.preheader57 ] ; 2 uses
  %indvars.iv89 = phi i32 [ %indvars.iv.next90, %bb.b ], [ 0, %.preheader57 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader57 ] ; 5 uses
  %i.c = phi ptr [ %i.h, %bb.b ], [ %i.b, %.preheader57 ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = tail call fastcc ptr @redact_arg(ptr noundef %i.c) ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not50 = icmp eq ptr %i.e, %i.f
  br i1 %.not50, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  %indvars.iv.next90 = add i32 %indvars.iv89, 1
  %indvars.iv.next93 = add nuw i64 %indvars.iv92, 1
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.preheader ], [ 0, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv83
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %.not52 = icmp eq ptr %i.j, null
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br i1 %.not52, label %bb.d, label %.preheader, !llvm.loop !39

bb.d:                                             ; preds = %.preheader
  %i.k = shl i64 %indvars.iv83, 3
  %i.l = add i64 %i.k, 8
  %i.m = and i64 %i.l, 34359738360
  %i.n = tail call ptr @xmalloc(i64 noundef %i.m) #10 ; 12 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv83
  store ptr null, ptr %i.o, align 8, !tbaa !19
  %.not73 = icmp eq i64 %indvars.iv, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.d
  %i.p = ptrtoaddr ptr %i.n to i64
  %wide.trip.count = zext i32 %indvars.iv89 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %indvars.iv89, 8
  %i.q = sub i64 %i.a, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph67.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph67.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x ptr>, ptr %i.r, align 8, !tbaa !19
  %wide.load118 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load, ptr %i.t, align 8, !tbaa !19
  store <2 x ptr> %wide.load118, ptr %i.u, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph67.preheader119

.lr.ph67.preheader119:                            ; preds = %.lr.ph67.preheader, %middle.block
  %indvars.iv86.ph = phi i64 [ 0, %.lr.ph67.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader119, %.lr.ph67.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %.lr.ph67.prol ], [ %indvars.iv86.ph, %.lr.ph67.preheader119 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader119 ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv86.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv86.prol
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !41

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader119
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %.lr.ph67.preheader119 ], [ %indvars.iv.next87.prol, %.lr.ph67.prol ]
  %i.z = sub nsw i64 %indvars.iv86.ph, %wide.trip.count
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %.lr.ph67 ], [ %indvars.iv86.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv86
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv86
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next87
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next87
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !19
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next87.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next87.1
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next87.2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next87.2
  store ptr %i.al, ptr %i.am, align 8, !tbaa !19
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next87.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph67, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block, %bb.d
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.e, ptr %i.an, align 8, !tbaa !19
  %.14368 = add nuw i64 %indvars.iv, 1
  %i.ao = and i64 %.14368, 4294967295
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not5369 = icmp eq ptr %i.aq, null
  br i1 %.not5369, label %.thread, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge, %bb.f
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.f ], [ %indvars.iv92, %._crit_edge ] ; 2 uses
  %i.ar = phi ptr [ %i.ay, %bb.f ], [ %i.aq, %._crit_edge ]
  %i.as = phi ptr [ %i.ax, %bb.f ], [ %i.ap, %._crit_edge ]
  %i.at = tail call fastcc ptr @redact_arg(ptr noundef %i.ar) ; 2 uses
  %.not54 = icmp eq ptr %i.at, null
  br i1 %.not54, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph72
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph72, %bb.e
  %i.av = phi ptr [ %i.au, %bb.e ], [ %i.at, %.lr.ph72 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv95
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !19
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next96 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %.not53 = icmp eq ptr %i.ay, null
  br i1 %.not53, label %.thread, label %.lr.ph72, !llvm.loop !43

.thread:                                          ; preds = %bb.b, %bb.f, %.preheader57, %._crit_edge, %bb.c, %bb.a
  %.044 = phi ptr [ %0, %bb.c ], [ %0, %bb.a ], [ %i.n, %._crit_edge ], [ %0, %.preheader57 ], [ %i.n, %bb.f ], [ %0, %bb.b ]
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define dso_local void @trace2_cmd_exit_fl(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @trace2_enabled, align 4
  br i1 %.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @trace2_collect_process_info(i32 noundef 1) #10
  store i32 %2, ptr @tr2main_exit_code, align 4, !tbaa !17
  %i.a = tail call i64 @getnanotime() #10
  %i.b = udiv i64 %i.a, 1000
  %i.c = tail call i64 @tr2tls_absolute_elapsed(i64 noundef %i.b) #10 ; 3 uses
  %i.d = load ptr, ptr @tr2_tgt_normal, align 8, !tbaa !16
  %i.e = tail call i32 @tr2_dst_trace_want(ptr noundef %i.d) #10
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 40), align 8, !tbaa !47 ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.f(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, i32 noundef %2) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.g = load ptr, ptr @tr2_tgt_perf, align 8, !tbaa !16
  %i.h = tail call i32 @tr2_dst_trace_want(ptr noundef %i.g) #10
  %.not14.1 = icmp eq i32 %i.h, 0
  br i1 %.not14.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 40), align 8, !tbaa !47 ; 2 uses
  %.not15.1 = icmp eq ptr %i.i, null
  br i1 %.not15.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.i(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, i32 noundef %2) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.j = load ptr, ptr @tr2_tgt_event, align 8, !tbaa !16
  %i.k = tail call i32 @tr2_dst_trace_want(ptr noundef %i.j) #10
  %.not14.2 = icmp eq i32 %i.k, 0
  br i1 %.not14.2, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 40), align 8, !tbaa !47 ; 2 uses
  %.not15.2 = icmp eq ptr %i.l, null
  br i1 %.not15.2, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.l(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, i32 noundef %2) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.j, %bb.a
  ret void
}

declare void @trace2_collect_process_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @trace2_cmd_error_va_fl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @trace2_enabled, align 4
  br i1 %.b, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load ptr, ptr @tr2_tgt_normal, align 8, !tbaa !16
  %i.b = tail call i32 @tr2_dst_trace_want(ptr noundef %i.a) #10
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 64), align 8, !tbaa !48 ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.c, %bb.b
  %i.d = load ptr, ptr @tr2_tgt_perf, align 8, !tbaa !16
  %i.e = tail call i32 @tr2_dst_trace_want(ptr noundef %i.d) #10
  %.not12.1 = icmp eq i32 %i.e, 0
  br i1 %.not12.1, label %.preheader.2, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 64), align 8, !tbaa !48 ; 2 uses
  %.not13.1 = icmp eq ptr %i.f, null
  br i1 %.not13.1, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.f(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.e, %bb.d, %.preheader.1
  %i.g = load ptr, ptr @tr2_tgt_event, align 8, !tbaa !16
  %i.h = tail call i32 @tr2_dst_trace_want(ptr noundef %i.g) #10
  %.not12.2 = icmp eq i32 %i.h, 0
  br i1 %.not12.2, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.2
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 64), align 8, !tbaa !48 ; 2 uses
  %.not13.2 = icmp eq ptr %i.i, null
  br i1 %.not13.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.i(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @trace2_cmd_path_fl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @trace2_enabled, align 4
  br i1 %.b, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load ptr, ptr @tr2_tgt_normal, align 8, !tbaa !16
  %i.b = tail call i32 @tr2_dst_trace_want(ptr noundef %i.a) #10
  %.not11 = icmp eq i32 %i.b, 0
  br i1 %.not11, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_normal, i64 72), align 8, !tbaa !49 ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.c, %bb.b
  %i.d = load ptr, ptr @tr2_tgt_perf, align 8, !tbaa !16
  %i.e = tail call i32 @tr2_dst_trace_want(ptr noundef %i.d) #10
  %.not11.1 = icmp eq i32 %i.e, 0
  br i1 %.not11.1, label %.preheader.2, label %bb.d

bb.d:                                             ; preds = %.preheader.1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_perf, i64 72), align 8, !tbaa !49 ; 2 uses
  %.not12.1 = icmp eq ptr %i.f, null
  br i1 %.not12.1, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.f(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.e, %bb.d, %.preheader.1
  %i.g = load ptr, ptr @tr2_tgt_event, align 8, !tbaa !16
  %i.h = tail call i32 @tr2_dst_trace_want(ptr noundef %i.g) #10
  %.not11.2 = icmp eq i32 %i.h, 0
  br i1 %.not11.2, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.2
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tr2_tgt_event, i64 72), align 8, !tbaa !49 ; 2 uses
  %.not12.2 = icmp eq ptr %i.i, null
  br i1 %.not12.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.i(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @trace2_cmd_ancestry_fl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
end_hunk_0
