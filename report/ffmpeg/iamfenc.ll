Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamfenc?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@iamf_write_packet:bb.a
  br i1 %i.n, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = tail call i32 @ff_iamf_write_parameter_blocks(ptr noundef nonnull %i.b, ptr noundef %i.p, ptr noundef nonnull %1, ptr noundef nonnull %0) #3 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %..thread_crit_edge, label %.thread21

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = load i32, ptr %i.j, align 4, !tbaa !37
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.a
  %i.r = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.k, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 @ff_iamf_write_audio_frame(ptr noundef nonnull %i.b, ptr noundef %i.t, i32 noundef %i.r, ptr noundef nonnull %1) #3 ; 2 uses
  %.not17 = icmp eq i32 %i.u, 0
  br i1 %.not17, label %bb.c, label %.thread21

bb.c:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46
  %.not18 = icmp eq i32 %i.w, 0
  br i1 %.not18, label %bb.d, label %.thread21

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.x, align 8, !tbaa !47
  br label %.thread21

.thread21:                                        ; preds = %bb.b, %bb.d, %bb.c, %.thread
  %.124 = phi i32 [ %i.u, %.thread ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.q, %bb.b ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @iamf_write_trailer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %i.i = and i32 %i.h, 1
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @avio_seek(ptr noundef nonnull %i.f, i64 noundef 0, i32 noundef 1) #3
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = tail call i64 @avio_seek(ptr noundef %i.k, i64 noundef %i.m, i32 noundef 0) #3 ; 0 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.p = tail call i32 @ff_iamf_write_descriptors(ptr noundef nonnull %i.b, ptr noundef %i.o, ptr noundef nonnull %0) #3 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.s = tail call i64 @avio_seek(ptr noundef %i.r, i64 noundef %i.j, i32 noundef 0) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ %i.p, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @iamf_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 2 uses
  %.not107142.not = icmp eq i32 %i.d, 0
  br i1 %.not107142.not, label %.critedge113, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %wide.trip.count169 = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph144, %.critedge
  %indvars.iv166 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next167, %.critedge ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv166
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  switch i32 %i.m, label %bb.d [
    i32 1630826605, label %bb.e
    i32 1937076303, label %bb.e
    i32 1130450022, label %bb.e
    i32 1835233385, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  %i.p = tail call ptr @avcodec_get_name(i32 noundef %i.o) #3
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %i.p) #3
  br label %.thread118

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %bb.f, label %.preheader131

.preheader131:                                    ; preds = %bb.e
  %.not106140.not = icmp eq i64 %indvars.iv166, 0
  br i1 %.not106140.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader131
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i64 %indvars.iv166 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.v) #3
  br label %.thread118

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv166
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !58

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = icmp eq i32 %i.u, %i.z
  br i1 %i.aa, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.u) #3
  br label %.thread118

.critedge:                                        ; preds = %bb.g, %.preheader131
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.critedge113, label %bb.b, !llvm.loop !60

.critedge113:                                     ; preds = %.critedge, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !61 ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 2
  br i1 %i.ad, label %bb.j, label %.preheader130

.preheader130:                                    ; preds = %.critedge113
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62 ; 3 uses
  %wide.trip.count = zext i32 %i.ac to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.l

bb.j:                                             ; preds = %.critedge113
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #3
  br label %.thread118

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod224 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next172.1
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !65
  %i.ak = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.am = icmp eq <2 x i32> %i.al, <i32 2, i32 1>
  %i.an = zext <2 x i1> %i.am to <2 x i32>
  %i.ao = add nuw nsw <2 x i32> %i.bi, %i.an
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa214 = phi <2 x i32> [ %i.bi, %.unr-lcssa ], [ %i.ao, %.epil.preheader ]
  %1 = add nsw <2 x i32> %.lcssa214, <i32 0, i32 -3>
  %2 = icmp ult <2 x i32> %1, <i32 1, i32 -2>     ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0
  %4 = extractelement <2 x i1> %2, i64 1
  %or.cond6 = select i1 %4, i1 true, i1 %3
  br i1 %or.cond6, label %bb.m, label %.lr.ph150

bb.l:                                             ; preds = %bb.l, %.preheader130
  %indvars.iv171 = phi i64 [ 0, %.preheader130 ], [ %indvars.iv.next172.1, %bb.l ] ; 3 uses
  %i.ap = phi <2 x i32> [ zeroinitializer, %.preheader130 ], [ %i.bi, %bb.l ]
  %niter = phi i64 [ 0, %.preheader130 ], [ %niter.next.1, %bb.l ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv171
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !65
  %i.au = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.av = shufflevector <2 x i32> %i.au, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aw = icmp eq <2 x i32> %i.av, <i32 2, i32 1>
  %i.ax = zext <2 x i1> %i.aw to <2 x i32>
  %i.ay = add nuw nsw <2 x i32> %i.ap, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv171
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !65
  %i.be = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %i.bf = shufflevector <2 x i32> %i.be, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bg = icmp eq <2 x i32> %i.bf, <i32 2, i32 1>
  %i.bh = zext <2 x i1> %i.bg to <2 x i32>
  %i.bi = add nuw nsw <2 x i32> %i.ay, %i.bh      ; 3 uses
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.l, !llvm.loop !67

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #3
  br label %.thread118

.preheader:                                       ; preds = %bb.o
  %.not111151.not = icmp eq i32 %i.br, 0
  br i1 %.not111151.not, label %._crit_edge, label %.lr.ph153

.lr.ph150:                                        ; preds = %bb.k, %bb.o
  %i.bj = phi i32 [ %i.br, %bb.o ], [ %i.ac, %bb.k ]
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv175
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !65
  %.not108 = icmp eq i32 %i.bo, 1
  br i1 %.not108, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph150
  %i.bp = tail call i32 @ff_iamf_add_audio_element(ptr noundef %i.b, ptr noundef nonnull %i.bm, ptr noundef nonnull %0) #3 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.thread118, label %._crit_edge181

._crit_edge181:                                   ; preds = %bb.n
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge181, %.lr.ph150
  %i.br = phi i32 [ %.pre, %._crit_edge181 ], [ %i.bj, %.lr.ph150 ] ; 4 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %.not109 = icmp samesign ult i64 %indvars.iv.next176, %i.bs
  br i1 %.not109, label %.lr.ph150, label %.preheader, !llvm.loop !68

.lr.ph153:                                        ; preds = %.preheader, %bb.q
  %i.bt = phi i32 [ %i.cb, %bb.q ], [ %i.br, %.preheader ]
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv178
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !65
  %.not110 = icmp eq i32 %i.by, 2
  br i1 %.not110, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph153
  %i.bz = tail call i32 @ff_iamf_add_mix_presentation(ptr noundef %i.b, ptr noundef nonnull %i.bw, ptr noundef nonnull %0) #3 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.thread118, label %._crit_edge182

._crit_edge182:                                   ; preds = %bb.p
  %.pre183 = load i32, ptr %i.ab, align 8, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge182, %.lr.ph153
  %i.cb = phi i32 [ %.pre183, %._crit_edge182 ], [ %i.bt, %.lr.ph153 ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.not111 = icmp samesign ult i64 %indvars.iv.next179, %i.cc
  br i1 %.not111, label %.lr.ph153, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !34
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !44
  br label %.thread118

.thread118:                                       ; preds = %bb.n, %bb.p, %bb.d, %bb.f, %bb.i, %._crit_edge, %bb.m, %bb.j
  %.9 = phi i32 [ -22, %bb.j ], [ -22, %bb.m ], [ 0, %._crit_edge ], [ %i.bz, %bb.p ], [ -22, %bb.d ], [ -22, %bb.i ], [ -22, %bb.f ], [ %i.bp, %bb.n ]
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal void @iamf_deinit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @ff_iamf_uninit_context(ptr noundef %i.b) #3
  ret void
}

declare i32 @ff_iamf_write_descriptors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_iamf_write_parameter_blocks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_iamf_write_audio_frame(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @avcodec_get_name(i32 noundef) local_unnamed_addr #1

declare i32 @ff_iamf_add_audio_element(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_iamf_add_mix_presentation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @ff_iamf_uninit_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

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
!9 = !{!10, !12, i64 24}
!10 = !{!"AVFormatContext", !11, i64 0, !13, i64 8, !14, i64 16, !12, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !20, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !21, i64 432, !20, i64 440, !12, i64 448, !12, i64 456, !21, i64 464, !20, i64 472}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!24 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!26 = !{!10, !15, i64 32}
!27 = !{!28, !21, i64 64}
!28 = !{!"IAMFMuxContext", !29, i64 0, !21, i64 64, !6, i64 72, !6, i64 76}
!29 = !{!"IAMFContext", !30, i64 0, !6, i64 8, !31, i64 16, !6, i64 24, !32, i64 32, !6, i64 40, !33, i64 48, !6, i64 56}
!30 = !{!"p2 _ZTS15IAMFCodecConfig", !17, i64 0}
!31 = !{!"p2 _ZTS16IAMFAudioElement", !17, i64 0}
!32 = !{!"p2 _ZTS19IAMFMixPresentation", !17, i64 0}
!33 = !{!"p2 _ZTS19IAMFParamDefinition", !17, i64 0}
!34 = !{!10, !16, i64 48}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!37 = !{!38, !6, i64 12}
!38 = !{!"AVStream", !11, i64 0, !6, i64 8, !6, i64 12, !39, i64 16, !12, i64 24, !40, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !40, i64 72, !23, i64 80, !40, i64 88, !41, i64 96, !6, i64 200, !40, i64 204, !6, i64 212}
!39 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!40 = !{!"AVRational", !6, i64 0, !6, i64 4}
!41 = !{!"AVPacket", !42, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !43, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !12, i64 80, !42, i64 88, !40, i64 96}
!42 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!43 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!44 = !{!28, !6, i64 76}
!45 = !{!41, !6, i64 36}
!46 = !{!41, !6, i64 32}
!47 = !{!28, !6, i64 72}
!48 = !{!49, !6, i64 144}
!49 = !{!"AVIOContext", !11, i64 0, !20, i64 8, !6, i64 16, !20, i64 24, !20, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !21, i64 104, !20, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !20, i64 152, !20, i64 160, !12, i64 168, !6, i64 176, !20, i64 184, !21, i64 192, !21, i64 200}
!50 = !{!10, !6, i64 44}
!51 = !{!38, !39, i64 16}
!52 = !{!53, !6, i64 0}
!53 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !6, i64 24, !43, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !40, i64 80, !40, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !54, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
end_hunk_0
