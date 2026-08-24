Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_superequalizer?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@init:bb.a
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.g = call i32 @av_tx_init(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 6, i32 noundef 0, i32 noundef 16384, ptr noundef nonnull %i.a, i64 noundef 0) #7 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %equ_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.k = call i32 @av_tx_init(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef 6, i32 noundef 1, i32 noundef 16384, ptr noundef nonnull %i.b, i64 noundef 0) #7 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %equ_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 2 uses
  store float 9.600000e+01, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 404 ; 3 uses
  store <2 x i32> <i32 8191, i32 16384>, ptr %i.n, align 8, !tbaa !27
  %i.p = call noalias ptr @av_calloc(i64 noundef 16386, i64 noundef 4) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !28
  %i.r = load i32, ptr %i.o, align 4, !tbaa !29
  %i.s = sext i32 %i.r to i64
  %i.t = call noalias ptr @av_calloc(i64 noundef %i.s, i64 noundef 4) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = load i32, ptr %i.o, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = call noalias ptr @av_calloc(i64 noundef %i.w, i64 noundef 4) #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 384 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !31
  %i.z = load i32, ptr %i.o, align 4, !tbaa !29
  %i.aa = add nsw i32 %i.z, 2
  %i.ab = sext i32 %i.aa to i64
  %i.ac = call noalias ptr @av_calloc(i64 noundef %i.ab, i64 noundef 4) #7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !32
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %equ_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !30
  %.not44.i = icmp eq ptr %i.af, null
  br i1 %.not44.i, label %equ_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !31
  %.not45.i = icmp eq ptr %i.ag, null
  %.not46.i = icmp eq ptr %i.ac, null
  %or.cond.i = select i1 %.not45.i, i1 true, i1 %.not46.i
  br i1 %or.cond.i, label %equ_init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 6.000000e+00>, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store <4 x float> <float 2.400000e+01, float 1.200000e+02, float 7.200000e+02, float 5.040000e+03>, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store <4 x float> <float 4.032000e+04, float 3.628800e+05, float 3.628800e+06, float 3.991680e+07>, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store <4 x float> <float f0x4DE467E0, float f0x4FB99466, float f0x51A261D9, float f0x53983BBB>, ptr %i.ak, align 8, !tbaa !20
  %i.al = load float, ptr %i.m, align 8, !tbaa !22 ; 4 uses
  %i.am = fcmp nsz ugt float %i.al, 2.100000e+01
  br i1 %i.am, label %bb.g, label %alpha.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = fcmp nsz ugt float %i.al, 5.000000e+01
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = fadd nsz float %i.al, -2.100000e+01     ; 2 uses
  %i.ap = fpext nsz float %i.ao to double
  %i.aq = call nsz double @llvm.pow.f64(double %i.ap, double f0x3FD99999A0000000)
  %i.ar = fmul nnan nsz float %i.ao, 7.886000e-02
  %i.as = fpext nsz float %i.ar to double
  %i.at = call nsz double @llvm.fmuladd.f64(double %i.aq, double f0x3FE2B1C440000000, double %i.as)
  %i.au = fptrunc nsz double %i.at to float
  br label %alpha.exit.i

bb.i:                                             ; preds = %bb.g
  %i.av = fadd nsz float %i.al, f0xC10B3333
  %i.aw = fmul nsz float %i.av, 1.102000e-01
  br label %alpha.exit.i

alpha.exit.i:                                     ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi nsz float [ %i.aw, %bb.i ], [ %i.au, %bb.h ], [ 0.000000e+00, %bb.f ]
  %i.ax = call nsz fastcc float @izero(ptr noundef nonnull %i.d, float noundef %.0.i.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 364
  store float %i.ax, ptr %i.ay, align 4, !tbaa !33
  br label %equ_init.exit

equ_init.exit:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %alpha.exit.i
  %.041.i = phi i32 [ %i.k, %bb.b ], [ %i.g, %bb.a ], [ 0, %alpha.exit.i ], [ -12, %bb.e ], [ -12, %bb.d ], [ -12, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.041.i
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  tail call void @av_freep(ptr noundef nonnull %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  tail call void @av_tx_uninit(ptr noundef nonnull %i.h) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @av_tx_uninit(ptr noundef nonnull %i.i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #7 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #7
  br label %bb.j

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.g, i32 noundef %i.o, i32 noundef %i.o, ptr noundef nonnull %i.b) #7 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !38   ; 5 uses
  %i.s = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.t = getelementptr i8, ptr %.val, i64 56
  %.val.val = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr i8, ptr %.val, i64 72
  %.val.val31 = load ptr, ptr %i.u, align 8, !tbaa !9 ; 10 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %.val.val31, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.val31, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val31, i64 384
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 22 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ae = call ptr @ff_get_audio_buffer(ptr noundef %.val.val.val, i32 noundef %i.ad) #7 ; 5 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %bb.e, label %.preheader4.i

.preheader4.i:                                    ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 388 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !55
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph27.i, label %._crit_edge28.i

.lr.ph27.i:                                       ; preds = %.preheader4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val31, i64 416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.val.val31, i64 404 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.val31, i64 440
  %i.an = getelementptr inbounds nuw i8, ptr %.val.val31, i64 424
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.val31, i64 448
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val31, i64 432
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.val31, i64 400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %filter_frame.exit

bb.f:                                             ; preds = %._crit_edge25.i, %.lr.ph27.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next61.i, %._crit_edge25.i ] ; 4 uses
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv60.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57 ; 7 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv60.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57 ; 22 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64              ; 2 uses
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv60.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 7 uses
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !49 ; 6 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.preheader.i, label %.preheader3.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.bh = ptrtoaddr ptr %i.be to i64
  %wide.trip.count.i = zext nneg i32 %i.bf to i64 ; 5 uses
  %min.iters.check108 = icmp ult i32 %i.bf, 8
  %i.bi = sub i64 %i.bh, %i.ab
  %diff.check106 = icmp ugt i64 %i.bi, -32
  %or.cond = select i1 %min.iters.check108, i1 true, i1 %diff.check106
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph.preheader.i
  %n.vec110 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index112 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load113 = load <4 x float>, ptr %i.bj, align 4, !tbaa !20
  %wide.load114 = load <4 x float>, ptr %i.bk, align 4, !tbaa !20
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index112 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %wide.load113, ptr %i.bl, align 4, !tbaa !20
  store <4 x float> %wide.load114, ptr %i.bm, align 4, !tbaa !20
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.bn, label %middle.block116, label %vector.body111, !llvm.loop !59

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %n.vec110, %wide.trip.count.i
  br i1 %cmp.n117, label %.preheader3.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block116
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec110, %middle.block116 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.prol
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.prol
  store float %i.bp, ptr %i.bq, align 4, !tbaa !20
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !63

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.br = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %.preheader3.i, label %.lr.ph.i

.preheader3.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block116, %bb.f
  %.094.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bf, %middle.block116 ], [ %i.bf, %.lr.ph.i ], [ %i.bf, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bt = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %i.bu = icmp slt i32 %.094.lcssa.i, %i.bt
  br i1 %i.bu, label %.lr.ph9.preheader.i, label %._crit_edge.i

.lr.ph9.preheader.i:                              ; preds = %.preheader3.i
  %i.bv = zext nneg i32 %.094.lcssa.i to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %scevgep.i = getelementptr i8, ptr %i.aa, i64 %i.bw
  %i.bx = xor i32 %.094.lcssa.i, -1
  %i.by = add nsw i32 %i.bt, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cb, i1 false), !tbaa !20
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  store float %i.cd, ptr %i.ce, align 4, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  store float %i.cg, ptr %i.ch, align 4, !tbaa !20
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !20
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.1
  store float %i.cj, ptr %i.ck, align 4, !tbaa !20
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i.2
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !20
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.2
  store float %i.cm, ptr %i.cn, align 4, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader3.i, label %.lr.ph.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %.lr.ph9.preheader.i, %.preheader3.i
  %i.co = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !67
  call void %i.co(ptr noundef %i.cp, ptr noundef %i.y, ptr noundef %i.aa, i64 noundef 4) #7, !inline_history !68
  %i.cq = load i32, ptr %i.al, align 4, !tbaa !29 ; 2 uses
  %.not10010.i = icmp slt i32 %i.cq, -1
  br i1 %.not10010.i, label %._crit_edge14.i, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %._crit_edge.i
  %i.cr = sdiv i32 %i.cq, 2                       ; 2 uses
  %i.cs = add nuw nsw i32 %i.cr, 1
  %wide.trip.count37.i = zext nneg i32 %i.cs to i64 ; 4 uses
  %min.iters.check92 = icmp ult i32 %i.cr, 3
  br i1 %min.iters.check92, label %.lr.ph13.i.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph13.preheader.i
  %i.ct = shl nuw nsw i64 %wide.trip.count37.i, 3 ; 2 uses
  %scevgep85.a = getelementptr i8, ptr %i.y, i64 %i.ct
  %scevgep87 = getelementptr i8, ptr %i.w, i64 %i.ct
  %bound088 = icmp ult ptr %i.y, %scevgep87
  %bound189 = icmp ult ptr %i.w, %scevgep85.a
  %found.conflict90 = and i1 %bound088, %bound189
  br i1 %found.conflict90, label %.lr.ph13.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck83
  %n.vec94 = and i64 %wide.trip.count37.i, 2147483644 ; 3 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body95 ] ; 2 uses
  %i.cu = shl nuw nsw i64 %index96, 1             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cu
  %wide.vec = load <8 x float>, ptr %i.cv, align 4, !tbaa !20, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec97.a = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cu ; 2 uses
  %wide.vec98 = load <8 x float>, ptr %i.cw, align 4, !tbaa !20, !alias.scope !72, !noalias !69 ; 2 uses
  %strided.vec99 = shufflevector <8 x float> %wide.vec98, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec100 = shufflevector <8 x float> %wide.vec98, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.cx = fneg nsz <4 x float> %strided.vec100
  %i.cy = fmul nsz <4 x float> %strided.vec97.a, %i.cx
  %i.cz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec99, <4 x float> %i.cy)
  %i.da = fmul nsz <4 x float> %strided.vec, %strided.vec100
  %i.db = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec97.a, <4 x float> %strided.vec99, <4 x float> %i.da)
  %interleaved.vec = shufflevector <4 x float> %i.cz, <4 x float> %i.db, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.cw, align 4, !tbaa !20, !alias.scope !72, !noalias !69
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %i.dc = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.dc, label %middle.block102, label %vector.body95, !llvm.loop !74

middle.block102:                                  ; preds = %vector.body95
  %cmp.n103 = icmp eq i64 %n.vec94, %wide.trip.count37.i
  br i1 %cmp.n103, label %._crit_edge14.i, label %.lr.ph13.i.preheader

.lr.ph13.i.preheader:                             ; preds = %vector.memcheck83, %.lr.ph13.preheader.i, %middle.block102
  %indvars.iv34.i.ph = phi i64 [ 0, %vector.memcheck83 ], [ 0, %.lr.ph13.preheader.i ], [ %n.vec94, %middle.block102 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %.lr.ph13.i ], [ %indvars.iv34.i.ph, %.lr.ph13.i.preheader ] ; 2 uses
  %i.dd = shl nuw nsw i64 %indvars.iv34.i, 1      ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dd ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !20
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dd
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20 ; 2 uses
  %i.dk = fneg nsz float %i.dj
  %i.dl = load <2 x float>, ptr %i.de, align 4, !tbaa !20 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dk, i64 1
  %i.do = fmul nsz <2 x float> %i.dl, %i.dn
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dr, <2 x float> %i.dp)
  store <2 x float> %i.ds, ptr %i.df, align 4, !tbaa !20
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %._crit_edge14.i, label %.lr.ph13.i, !llvm.loop !75

._crit_edge14.i:                                  ; preds = %.lr.ph13.i, %middle.block102, %._crit_edge.i
  %i.dt = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.du = load ptr, ptr %i.ap, align 8, !tbaa !77
  call void %i.dt(ptr noundef %i.du, ptr noundef %i.aa, ptr noundef %i.y, i64 noundef 8) #7, !inline_history !68
  %i.dv = load i32, ptr %i.aq, align 8, !tbaa !39 ; 7 uses
  %i.dw = icmp sgt i32 %i.dv, 0                   ; 2 uses
  %.pre.i = load i32, ptr %i.al, align 4, !tbaa !29 ; 4 uses
  br i1 %i.dw, label %.lr.ph17.i, label %.preheader2.i

.lr.ph17.i:                                       ; preds = %._crit_edge14.i
  %i.dx = sitofp nsz i32 %.pre.i to float         ; 4 uses
  %wide.trip.count42.i = zext nneg i32 %i.dv to i64 ; 6 uses
  %min.iters.check70 = icmp ult i32 %i.dv, 4
  br i1 %min.iters.check70, label %scalar.ph69.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph17.i
  %i.dy = shl nuw nsw i64 %wide.trip.count42.i, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ba, i64 %i.dy
  %scevgep68 = getelementptr i8, ptr %i.aa, i64 %i.dy
  %bound0 = icmp ult ptr %i.ba, %scevgep68
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph69.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck67
  %n.vec72 = and i64 %wide.trip.count42.i, 2147483644 ; 3 uses
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %i.dx, i64 0
  %broadcast.splat74 = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body75 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index76
  %wide.load77 = load <4 x float>, ptr %i.dz, align 4, !tbaa !20, !alias.scope !78
  %i.ea = fdiv nsz <4 x float> %wide.load77, %broadcast.splat74
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index76 ; 2 uses
  %wide.load78 = load <4 x float>, ptr %i.eb, align 4, !tbaa !20, !alias.scope !81, !noalias !78
  %i.ec = fadd nsz <4 x float> %wide.load78, %i.ea
  store <4 x float> %i.ec, ptr %i.eb, align 4, !tbaa !20, !alias.scope !81, !noalias !78
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.ed = icmp eq i64 %index.next79, %n.vec72
  br i1 %i.ed, label %middle.block80, label %vector.body75, !llvm.loop !83

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec72, %wide.trip.count42.i
  br i1 %cmp.n81, label %.preheader2.i, label %scalar.ph69.preheader

scalar.ph69.preheader:                            ; preds = %vector.memcheck67, %.lr.ph17.i, %middle.block80
  %indvars.iv39.i.ph = phi i64 [ 0, %vector.memcheck67 ], [ 0, %.lr.ph17.i ], [ %n.vec72, %middle.block80 ] ; 5 uses
  %xtraiter121 = and i64 %wide.trip.count42.i, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %scalar.ph69.prol.loopexit, label %scalar.ph69.prol

scalar.ph69.prol:                                 ; preds = %scalar.ph69.preheader
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv39.i.ph
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !20
  %i.eg = fdiv nsz float %i.ef, %i.dx
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv39.i.ph ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !20
  %i.ej = fadd nsz float %i.ei, %i.eg
  store float %i.ej, ptr %i.eh, align 4, !tbaa !20
  %indvars.iv.next40.i.prol = or disjoint i64 %indvars.iv39.i.ph, 1
  br label %scalar.ph69.prol.loopexit

scalar.ph69.prol.loopexit:                        ; preds = %scalar.ph69.prol, %scalar.ph69.preheader
  %indvars.iv39.i.unr = phi i64 [ %indvars.iv39.i.ph, %scalar.ph69.preheader ], [ %indvars.iv.next40.i.prol, %scalar.ph69.prol ]
  %i.ek = add nsw i64 %wide.trip.count42.i, -1
  %i.el = icmp eq i64 %indvars.iv39.i.ph, %i.ek
  br i1 %i.el, label %.preheader2.i, label %scalar.ph69

.preheader2.i:                                    ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69, %middle.block80, %._crit_edge14.i
  %i.em = icmp slt i32 %i.dv, %.pre.i
  br i1 %i.em, label %.lr.ph20.i, label %.preheader1.i

.lr.ph20.i:                                       ; preds = %.preheader2.i
  %i.en = sitofp nsz i32 %.pre.i to float         ; 6 uses
  %i.eo = sext i32 %i.dv to i64                   ; 4 uses
  %wide.trip.count47.i = sext i32 %.pre.i to i64  ; 4 uses
  %i.ep = sub nsw i64 %wide.trip.count47.i, %i.eo ; 3 uses
  %min.iters.check57 = icmp ult i64 %i.ep, 4
  %i.eq = sub i64 %i.ab, %i.bb
  %diff.check55 = icmp ugt i64 %i.eq, -16
  %or.cond119 = select i1 %min.iters.check57, i1 true, i1 %diff.check55
  br i1 %or.cond119, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph20.i
  %n.vec59 = and i64 %i.ep, -4                    ; 3 uses
  %i.er = add nsw i64 %n.vec59, %i.eo
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next63, %vector.body60 ] ; 2 uses
  %i.es = add i64 %index61, %i.eo                 ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.es
  %wide.load62 = load <4 x float>, ptr %i.et, align 4, !tbaa !20
  %i.eu = fdiv nsz <4 x float> %wide.load62, %broadcast.splat
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.es
  store <4 x float> %i.eu, ptr %i.ev, align 4, !tbaa !20
  %index.next63 = add nuw i64 %index61, 4         ; 2 uses
  %i.ew = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ew, label %middle.block64, label %vector.body60, !llvm.loop !84

middle.block64:                                   ; preds = %vector.body60
  %cmp.n65 = icmp eq i64 %i.ep, %n.vec59
  br i1 %cmp.n65, label %.preheader1.i, label %scalar.ph56.preheader

scalar.ph56.preheader:                            ; preds = %.lr.ph20.i, %middle.block64
  %indvars.iv44.i.ph = phi i64 [ %i.eo, %.lr.ph20.i ], [ %i.er, %middle.block64 ] ; 4 uses
  %i.ex = sub nsw i64 %wide.trip.count47.i, %indvars.iv44.i.ph
  %xtraiter124 = and i64 %i.ex, 3                 ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %scalar.ph56.prol.loopexit, label %scalar.ph56.prol

scalar.ph56.prol:                                 ; preds = %scalar.ph56.preheader, %scalar.ph56.prol
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %scalar.ph56.prol ], [ %indvars.iv44.i.ph, %scalar.ph56.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %scalar.ph56.prol ], [ 0, %scalar.ph56.preheader ]
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %indvars.iv44.i.prol
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !20
  %i.fa = fdiv nsz float %i.ez, %i.en
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv44.i.prol
  store float %i.fa, ptr %i.fb, align 4, !tbaa !20
  %indvars.iv.next45.i.prol = add nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %scalar.ph56.prol.loopexit, label %scalar.ph56.prol, !llvm.loop !85

scalar.ph56.prol.loopexit:                        ; preds = %scalar.ph56.prol, %scalar.ph56.preheader
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %scalar.ph56.preheader ], [ %indvars.iv.next45.i.prol, %scalar.ph56.prol ]
  %i.fc = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count47.i
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %.preheader1.i, label %scalar.ph56

scalar.ph69:                                      ; preds = %scalar.ph69.prol.loopexit, %scalar.ph69
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i.1, %scalar.ph69 ], [ %indvars.iv39.i.unr, %scalar.ph69.prol.loopexit ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv39.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !20
end_hunk_0
