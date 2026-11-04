Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamfenc?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@iamf_write_packet:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = tail call i32 @ff_iamf_write_parameter_blocks(ptr noundef nonnull %i.b, ptr noundef %i.p, ptr noundef nonnull %1, ptr noundef nonnull %0) #3 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %..thread_crit_edge, label %.thread21

..thread_crit_edge:                               ; preds = %bb.b
  %.pre = load i32, ptr %i.j, align 4, !tbaa !43
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
  %i.w = load i32, ptr %i.v, align 8, !tbaa !47
  %.not18 = icmp eq i32 %i.w, 0
  br i1 %.not18, label %bb.d, label %.thread21

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.x, align 8, !tbaa !45
  br label %.thread21

.thread21:                                        ; preds = %bb.b, %bb.d, %bb.c, %.thread
  %.124 = phi i32 [ %i.u, %.thread ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.q, %bb.b ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @iamf_write_trailer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = and i32 %i.h, 1
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @avio_seek(ptr noundef nonnull %i.f, i64 noundef 0, i32 noundef 1) #3
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55   ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60
  switch i32 %i.m, label %bb.d [
    i32 1630826605, label %bb.e
    i32 1937076303, label %bb.e
    i32 1130450022, label %bb.e
    i32 1835233385, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  %i.p = tail call ptr @avcodec_get_name(i32 noundef %i.o) #3
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %i.p) #3
  br label %.thread118

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 132
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = icmp sgt i32 %i.r, 2
  br i1 %i.s, label %bb.f, label %.preheader131

.preheader131:                                    ; preds = %bb.e
  %.not106140.not = icmp eq i64 %indvars.iv166, 0
  br i1 %.not106140.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader131
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43   ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw nsw i64 %indvars.iv166 to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.v) #3
  br label %.thread118

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv166
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !50

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43
  %i.aa = icmp eq i32 %i.u, %i.z
  br i1 %i.aa, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.u) #3
  br label %.thread118

.critedge:                                        ; preds = %bb.g, %.preheader131
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.critedge113, label %bb.b, !llvm.loop !51

.critedge113:                                     ; preds = %.critedge, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !64 ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 2
  br i1 %i.ad, label %bb.j, label %.preheader130

.preheader130:                                    ; preds = %.critedge113
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65 ; 3 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !69
  %i.ak = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.am = icmp eq <2 x i32> %i.al, <i32 2, i32 1>
  %i.an = zext <2 x i1> %i.am to <2 x i32>
  %i.ao = add nuw nsw <2 x i32> %i.bk, %i.an
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa214 = phi <2 x i32> [ %i.bk, %.unr-lcssa ], [ %i.ao, %.epil.preheader ]
  %i.ap = add nsw <2 x i32> %.lcssa214, <i32 0, i32 -3>
  %i.aq = icmp ult <2 x i32> %i.ap, <i32 1, i32 -2> ; 2 uses
  %1 = extractelement <2 x i1> %i.aq, i64 0
  %2 = extractelement <2 x i1> %i.aq, i64 1
  %or.cond6 = select i1 %2, i1 true, i1 %1
  br i1 %or.cond6, label %bb.m, label %.lr.ph150

bb.l:                                             ; preds = %bb.l, %.preheader130
  %indvars.iv171 = phi i64 [ 0, %.preheader130 ], [ %indvars.iv.next172.1, %bb.l ] ; 3 uses
  %i.ar = phi <2 x i32> [ zeroinitializer, %.preheader130 ], [ %i.bk, %bb.l ]
  %niter = phi i64 [ 0, %.preheader130 ], [ %niter.next.1, %bb.l ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv171
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !69
  %i.aw = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.ax = shufflevector <2 x i32> %i.aw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ay = icmp eq <2 x i32> %i.ax, <i32 2, i32 1>
  %i.az = zext <2 x i1> %i.ay to <2 x i32>
  %i.ba = add nuw nsw <2 x i32> %i.ar, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv171
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !69
  %i.bg = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bh = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bi = icmp eq <2 x i32> %i.bh, <i32 2, i32 1>
  %i.bj = zext <2 x i1> %i.bi to <2 x i32>
  %i.bk = add nuw nsw <2 x i32> %i.ba, %i.bj      ; 3 uses
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.l, !llvm.loop !52

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #3
  br label %.thread118

.preheader:                                       ; preds = %bb.o
  %.not111151.not = icmp eq i32 %i.bt, 0
  br i1 %.not111151.not, label %._crit_edge, label %.lr.ph153

.lr.ph150:                                        ; preds = %bb.k, %bb.o
  %i.bl = phi i32 [ %i.bt, %bb.o ], [ %i.ac, %bb.k ]
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv175
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !67 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !69
  %.not108 = icmp eq i32 %i.bq, 1
  br i1 %.not108, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph150
  %i.br = tail call i32 @ff_iamf_add_audio_element(ptr noundef %i.b, ptr noundef nonnull %i.bo, ptr noundef nonnull %0) #3 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread118, label %._crit_edge181

._crit_edge181:                                   ; preds = %bb.n
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge181, %.lr.ph150
  %i.bt = phi i32 [ %.pre, %._crit_edge181 ], [ %i.bl, %.lr.ph150 ] ; 4 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.not109 = icmp samesign ult i64 %indvars.iv.next176, %i.bu
  br i1 %.not109, label %.lr.ph150, label %.preheader, !llvm.loop !53

.lr.ph153:                                        ; preds = %.preheader, %bb.q
  %i.bv = phi i32 [ %i.cd, %bb.q ], [ %i.bt, %.preheader ]
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv178
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !69
  %.not110 = icmp eq i32 %i.ca, 2
  br i1 %.not110, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph153
  %i.cb = tail call i32 @ff_iamf_add_mix_presentation(ptr noundef %i.b, ptr noundef nonnull %i.by, ptr noundef nonnull %0) #3 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread118, label %._crit_edge182

._crit_edge182:                                   ; preds = %bb.p
  %.pre183 = load i32, ptr %i.ab, align 8, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge182, %.lr.ph153
  %i.cd = phi i32 [ %.pre183, %._crit_edge182 ], [ %i.bv, %.lr.ph153 ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not111 = icmp samesign ult i64 %indvars.iv.next179, %i.ce
  br i1 %.not111, label %.lr.ph153, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !44
  br label %.thread118

.thread118:                                       ; preds = %bb.n, %bb.p, %bb.d, %bb.f, %bb.i, %._crit_edge, %bb.m, %bb.j
  %.9 = phi i32 [ -22, %bb.j ], [ -22, %bb.m ], [ 0, %._crit_edge ], [ %i.cb, %bb.p ], [ -22, %bb.d ], [ -22, %bb.i ], [ -22, %bb.f ], [ %i.br, %bb.n ]
  ret i32 %.9
}

; Function Attrs: nounwind uwtable
define internal void @iamf_deinit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!12 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!13 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS8AVStream", !14, i64 0}
!16 = !{!"p2 _ZTS13AVStreamGroup", !14, i64 0}
!17 = !{!"p2 _ZTS9AVChapter", !14, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p2 _ZTS9AVProgram", !14, i64 0}
!21 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!22 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!23 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!24 = !{!"AVFormatContext", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !6, i64 56, !16, i64 64, !6, i64 72, !17, i64 80, !18, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !19, i64 136, !19, i64 144, !18, i64 152, !6, i64 160, !6, i64 164, !20, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !21, i64 192, !19, i64 200, !6, i64 208, !6, i64 212, !22, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !19, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !6, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !19, i64 432, !18, i64 440, !9, i64 448, !9, i64 456, !19, i64 464, !18, i64 472}
!25 = !{!24, !9, i64 24}
!26 = !{!24, !13, i64 32}
!27 = !{!"p2 _ZTS15IAMFCodecConfig", !14, i64 0}
!28 = !{!"p2 _ZTS16IAMFAudioElement", !14, i64 0}
!29 = !{!"p2 _ZTS19IAMFMixPresentation", !14, i64 0}
!30 = !{!"p2 _ZTS19IAMFParamDefinition", !14, i64 0}
!31 = !{!"IAMFContext", !27, i64 0, !6, i64 8, !28, i64 16, !6, i64 24, !29, i64 32, !6, i64 40, !30, i64 48, !6, i64 56}
!32 = !{!"IAMFMuxContext", !31, i64 0, !19, i64 64, !6, i64 72, !6, i64 76}
!33 = !{!32, !19, i64 64}
!34 = !{!24, !15, i64 48}
!35 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!38 = !{!"AVRational", !6, i64 0, !6, i64 4}
!39 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!40 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!41 = !{!"AVPacket", !39, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !40, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !9, i64 80, !39, i64 88, !38, i64 96}
!42 = !{!"AVStream", !10, i64 0, !6, i64 8, !6, i64 12, !37, i64 16, !9, i64 24, !38, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !6, i64 64, !6, i64 68, !38, i64 72, !21, i64 80, !38, i64 88, !41, i64 96, !6, i64 200, !38, i64 204, !6, i64 212}
!43 = !{!42, !6, i64 12}
!44 = !{!32, !6, i64 76}
!45 = !{!32, !6, i64 72}
!46 = !{!41, !6, i64 36}
!47 = !{!41, !6, i64 32}
!48 = !{!"AVIOContext", !10, i64 0, !18, i64 8, !6, i64 16, !18, i64 24, !18, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !19, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !19, i64 104, !18, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !18, i64 152, !18, i64 160, !9, i64 168, !6, i64 176, !18, i64 184, !19, i64 192, !19, i64 200}
!49 = !{!48, !6, i64 144}
!50 = distinct !{!50, !63}
!51 = distinct !{!51, !63}
!52 = distinct !{!52, !63}
!53 = distinct !{!53, !63}
!54 = distinct !{!54, !63}
!55 = !{!24, !6, i64 44}
!56 = !{!42, !37, i64 16}
!57 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!58 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !18, i64 16, !6, i64 24, !40, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !38, i64 80, !38, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !57, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!59 = !{!58, !6, i64 0}
!60 = !{!58, !6, i64 8}
!61 = !{!58, !6, i64 4}
!62 = !{!58, !6, i64 132}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!24, !6, i64 56}
!65 = !{!24, !16, i64 64}
!66 = !{!"p1 _ZTS13AVStreamGroup", !9, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"AVStreamGroup", !10, i64 0, !9, i64 8, !6, i64 16, !19, i64 24, !6, i64 32, !5, i64 40, !21, i64 48, !6, i64 56, !15, i64 64, !6, i64 72}
!69 = !{!68, !6, i64 32}
end_hunk_0
