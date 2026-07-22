inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jpeg_copy_critical_parameters:bb.a
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !107
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !108
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 330
  store i8 %i.ea, ptr %i.eb, align 2, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ee = load <2 x i16>, ptr %i.ec, align 8, !tbaa !99
  store <2 x i16> %i.ee, ptr %i.ed, align 4, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @jinit_c_master_control(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_arith_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_phuff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_huff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_marker_writer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 3, ptr %i.d, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void %i.e(ptr noundef nonnull %0) #4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = load i32, ptr %i.h, align 8, !tbaa !111
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !112
  br label %start_iMCU_row.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.o = load i32, ptr %i.n, align 4, !tbaa !113
  %i.p = add i32 %i.o, -1
  %i.q = icmp ult i32 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !114
  store i32 %i.v, ptr %i.t, align 4, !tbaa !112
  br label %start_iMCU_row.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !115
  store i32 %i.x, ptr %i.t, align 4, !tbaa !112
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.d, %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 0, ptr %i.z, align 8, !tbaa !117
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @compress_output(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = alloca [10 x ptr], align 16              ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !118
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !113
  %i.j = add i32 %i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 2 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !120
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ac = load i32, ptr %i.q, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !114 ; 2 uses
  %i.af = mul i32 %i.ae, %i.ac
  %i.ag = tail call ptr %i.v(ptr noundef nonnull %0, ptr noundef %i.ab, i32 noundef %i.af, i32 noundef %i.ae, i32 noundef 0) #4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.k, align 8, !tbaa !111 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.al = phi i32 [ %i.l, %bb.a ], [ %i.ai, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !117 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112 ; 2 uses
  %i.aq = icmp slt i32 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aw = sext i32 %i.an to i64
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !116
  %.pre161 = load i32, ptr %i.e, align 8, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %._crit_edge122
  %i.ax = phi i32 [ %i.ap, %.lr.ph125 ], [ %i.eq, %._crit_edge122 ]
  %i.ay = phi i32 [ %.pre161, %.lr.ph125 ], [ %i.er, %._crit_edge122 ] ; 2 uses
  %i.az = phi i32 [ %.pre, %.lr.ph125 ], [ 0, %._crit_edge122 ] ; 2 uses
  %indvars.iv158 = phi i64 [ %i.aw, %.lr.ph125 ], [ %indvars.iv.next159, %._crit_edge122 ] ; 3 uses
  %i.ba = icmp ult i32 %i.az, %i.ay
  br i1 %i.ba, label %.preheader, label %._crit_edge122

.preheader:                                       ; preds = %bb.c, %bb.i
  %.071121 = phi i32 [ %i.en, %bb.i ], [ %i.az, %bb.c ] ; 4 uses
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !111 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %.preheader
  %i.bd = icmp ult i32 %.071121, %i.g
  %wide.trip.count156 = zext nneg i32 %i.bb to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph119, %._crit_edge100
  %indvars.iv153 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next154, %._crit_edge100 ] ; 3 uses
  %.077117 = phi i32 [ 0, %.lr.ph119 ], [ %.178.lcssa, %._crit_edge100 ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv153
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !126 ; 13 uses
  %i.bi = mul i32 %i.bh, %.071121
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bl = phi i32 [ %i.bk, %bb.e ], [ %i.bh, %bb.d ]
  %.fr127 = freeze i32 %i.bl                      ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !128 ; 4 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.f
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !110
  %i.bq = icmp ult i32 %i.bp, %i.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 76
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv153
  %i.bt = zext i32 %i.bi to i64
  %i.bu = icmp sgt i32 %.fr127, 0
  br i1 %i.bu, label %.lr.ph99.split.us.preheader, label %.lr.ph99.split

.lr.ph99.split.us.preheader:                      ; preds = %.lr.ph99
  %wide.trip.count = zext nneg i32 %i.bn to i64
  %i.bv = zext nneg i32 %.fr127 to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %.fr127, 4
  %n.vec = and i64 %i.bv, 2147483644              ; 5 uses
  %i.bw = shl nuw nsw i64 %n.vec, 7
  %i.bx = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br label %.lr.ph99.split.us

.lr.ph99.split.us:                                ; preds = %.lr.ph99.split.us.preheader, %._crit_edge94.us
  %indvars.iv149 = phi i64 [ 0, %.lr.ph99.split.us.preheader ], [ %indvars.iv.next150, %._crit_edge94.us ] ; 2 uses
  %.17896.us = phi i32 [ %.077117, %.lr.ph99.split.us.preheader ], [ %.4.lcssa.us, %._crit_edge94.us ] ; 2 uses
  %.pre164.a = add nsw i64 %indvars.iv149, %indvars.iv158 ; 2 uses
  br i1 %i.bq, label %.lr.ph88.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph99.split.us
  %i.by = load i32, ptr %i.br, align 4, !tbaa !115
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %.pre164.a, %i.bz
  br i1 %i.ca, label %.lr.ph88.us, label %..loopexit_crit_edge.us

.lr.ph88.us:                                      ; preds = %.lr.ph99.split.us, %bb.g
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !123
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.pre164.a
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !58
  %i.ce = getelementptr inbounds nuw [128 x i8], ptr %i.cd, i64 %i.bt ; 3 uses
  %i.cf = sext i32 %.17896.us to i64              ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph88.us
  %i.cg = add nsw i64 %n.vec, %i.cf               ; 2 uses
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.bw
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %i.ce, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add184 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %vector.gep, ptr %gep, align 8, !tbaa !58
  store <2 x ptr> %step.add184, ptr %i.ci, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph88.us, %middle.block
  %indvars.iv141.ph = phi i64 [ %i.cf, %.lr.ph88.us ], [ %i.cg, %middle.block ]
  %.086.us.ph = phi ptr [ %i.ce, %.lr.ph88.us ], [ %i.ch, %middle.block ]
  %.07485.us.ph = phi i32 [ 0, %.lr.ph88.us ], [ %i.bx, %middle.block ]
  br label %scalar.ph

..loopexit_crit_edge.us.loopexit:                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next142.lcssa = phi i64 [ %i.cg, %middle.block ], [ %indvars.iv.next142, %scalar.ph ]
  %i.ck = trunc nsw i64 %indvars.iv.next142.lcssa to i32
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %bb.g
  %.3.us = phi i32 [ %.17896.us, %bb.g ], [ %i.ck, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %.1.us = phi i32 [ 0, %bb.g ], [ %.fr127, %..loopexit_crit_edge.us.loopexit ] ; 5 uses
  %i.cl = icmp slt i32 %.1.us, %i.bh
  br i1 %i.cl, label %.lr.ph93.us.preheader, label %._crit_edge94.us

.lr.ph93.us.preheader:                            ; preds = %..loopexit_crit_edge.us
  %i.cm = sext i32 %.3.us to i64                  ; 4 uses
  %i.cn = sub i32 %i.bh, %.1.us
  %.neg = add nuw i32 %.1.us, 1
  %xtraiter191 = and i32 %i.cn, 1
  %lcmp.mod192.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph93.us.prol.loopexit, label %.lr.ph93.us.prol

.lr.ph93.us.prol:                                 ; preds = %.lr.ph93.us.preheader
  %i.co = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cm ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !58
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !99
  store i16 %i.ct, ptr %i.cp, align 2, !tbaa !99
  %indvars.iv.next146.prol = add nsw i64 %i.cm, 1 ; 2 uses
  %i.cu = add nuw nsw i32 %.1.us, 1
  br label %.lr.ph93.us.prol.loopexit

.lr.ph93.us.prol.loopexit:                        ; preds = %.lr.ph93.us.prol, %.lr.ph93.us.preheader
  %indvars.iv.next146.lcssa.unr = phi i64 [ poison, %.lr.ph93.us.preheader ], [ %indvars.iv.next146.prol, %.lr.ph93.us.prol ]
  %indvars.iv145.unr = phi i64 [ %i.cm, %.lr.ph93.us.preheader ], [ %indvars.iv.next146.prol, %.lr.ph93.us.prol ]
  %.291.us.unr = phi i32 [ %.1.us, %.lr.ph93.us.preheader ], [ %i.cu, %.lr.ph93.us.prol ]
  %i.cv = icmp eq i32 %i.bh, %.neg
  br i1 %i.cv, label %._crit_edge94.us.loopexit, label %.lr.ph93.us

._crit_edge94.us.loopexit:                        ; preds = %.lr.ph93.us, %.lr.ph93.us.prol.loopexit
  %indvars.iv.next146.lcssa = phi i64 [ %indvars.iv.next146.lcssa.unr, %.lr.ph93.us.prol.loopexit ], [ %indvars.iv.next146.1, %.lr.ph93.us ]
  %i.cw = trunc nsw i64 %indvars.iv.next146.lcssa to i32
  br label %._crit_edge94.us

._crit_edge94.us:                                 ; preds = %._crit_edge94.us.loopexit, %..loopexit_crit_edge.us
  %.4.lcssa.us = phi i32 [ %.3.us, %..loopexit_crit_edge.us ], [ %i.cw, %._crit_edge94.us.loopexit ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count
  br i1 %exitcond152.not, label %._crit_edge100, label %.lr.ph99.split.us, !llvm.loop !132

.lr.ph93.us:                                      ; preds = %.lr.ph93.us.prol.loopexit, %.lr.ph93.us
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.1, %.lr.ph93.us ], [ %indvars.iv145.unr, %.lr.ph93.us.prol.loopexit ] ; 4 uses
  %.291.us = phi i32 [ %i.dj, %.lr.ph93.us ], [ %.291.us.unr, %.lr.ph93.us.prol.loopexit ]
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv145
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !58 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv145 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !58
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !58
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !99
  store i16 %i.dc, ptr %i.cy, align 2, !tbaa !99
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv.next146
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !58 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next146 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !58
  %i.dg = getelementptr i8, ptr %i.df, i64 -8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !99
  store i16 %i.di, ptr %i.de, align 2, !tbaa !99
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2 ; 2 uses
  %i.dj = add nuw nsw i32 %.291.us, 2             ; 2 uses
  %exitcond148.not.1 = icmp eq i32 %i.dj, %i.bh
  br i1 %exitcond148.not.1, label %._crit_edge94.us.loopexit, label %.lr.ph93.us, !llvm.loop !133

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph ], [ %indvars.iv141.ph, %scalar.ph.preheader ] ; 2 uses
  %.086.us = phi ptr [ %i.dk, %scalar.ph ], [ %.086.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.07485.us = phi i32 [ %i.dm, %scalar.ph ], [ %.07485.us.ph, %scalar.ph.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.086.us, i64 128
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv141
  store ptr %.086.us, ptr %i.dl, align 8, !tbaa !58
  %i.dm = add nuw nsw i32 %.07485.us, 1           ; 2 uses
  %exitcond144.not = icmp eq i32 %i.dm, %.fr127
  br i1 %exitcond144.not, label %..loopexit_crit_edge.us.loopexit, label %scalar.ph, !llvm.loop !134

.lr.ph99.split:                                   ; preds = %.lr.ph99
  %i.dn = icmp sgt i32 %i.bh, 0
  br i1 %i.dn, label %.lr.ph99.split.split.us.preheader, label %._crit_edge100

.lr.ph99.split.split.us.preheader:                ; preds = %.lr.ph99.split
  %xtraiter = and i32 %i.bh, 1
  %i.do = icmp eq i32 %i.bh, 1
  %unroll_iter = and i32 %i.bh, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = trunc i32 %i.bh to i1
  br label %.lr.ph99.split.split.us

.lr.ph99.split.split.us:                          ; preds = %.lr.ph99.split.split.us.preheader, %._crit_edge94.us109
  %indvars.iv137 = phi i32 [ %i.eh, %._crit_edge94.us109 ], [ %.077117, %.lr.ph99.split.split.us.preheader ] ; 2 uses
  %.07397.us102 = phi i32 [ %3, %._crit_edge94.us109 ], [ 0, %.lr.ph99.split.split.us.preheader ]
  %2 = sext i32 %indvars.iv137 to i64             ; 2 uses
  br i1 %i.do, label %.epil.preheader, label %.lr.ph99.split.split.us.new

.lr.ph99.split.split.us.new:                      ; preds = %.lr.ph99.split.split.us, %.lr.ph99.split.split.us.new
  %indvars.iv137.a = phi i64 [ %indvars.iv.next138.1, %.lr.ph99.split.split.us.new ], [ %2, %.lr.ph99.split.split.us ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph99.split.split.us.new ], [ 0, %.lr.ph99.split.split.us ]
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv137.a
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !58 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv137.a ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !58
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !58
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !99
  store i16 %i.du, ptr %i.dq, align 2, !tbaa !99
  %indvars.iv.next138.a = add nsw i64 %indvars.iv137.a, 1 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv.next138.a
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !58 ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next138.a ; 2 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !58
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !58
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !99
  store i16 %i.ea, ptr %i.dw, align 2, !tbaa !99
  %indvars.iv.next138.1 = add nsw i64 %indvars.iv137.a, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge94.us109.unr-lcssa, label %.lr.ph99.split.split.us.new, !llvm.loop !133

._crit_edge94.us109.unr-lcssa:                    ; preds = %.lr.ph99.split.split.us.new
  br i1 %lcmp.mod.not, label %._crit_edge94.us109, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge94.us109.unr-lcssa, %.lr.ph99.split.split.us
  %indvars.iv137.epil.init = phi i64 [ %2, %.lr.ph99.split.split.us ], [ %indvars.iv.next138.1, %._crit_edge94.us109.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.au, i64 %indvars.iv137.epil.init
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !58 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv137.epil.init ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !58
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !58
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !99
  store i16 %i.eg, ptr %i.ec, align 2, !tbaa !99
  br label %._crit_edge94.us109

._crit_edge94.us109:                              ; preds = %._crit_edge94.us109.unr-lcssa, %.epil.preheader
  %3 = add nuw nsw i32 %.07397.us102, 1           ; 2 uses
  %i.eh = add i32 %indvars.iv137, %i.bh
  %exitcond140.not = icmp eq i32 %3, %i.bn
  br i1 %exitcond140.not, label %._crit_edge100.loopexit128, label %.lr.ph99.split.split.us, !llvm.loop !132

._crit_edge100.loopexit128:                       ; preds = %._crit_edge94.us109
  %4 = mul i32 %i.bn, %i.bh
  %5 = add i32 %.077117, %4
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge94.us, %.lr.ph99.split, %._crit_edge100.loopexit128, %bb.f
  %.178.lcssa = phi i32 [ %.077117, %bb.f ], [ %5, %._crit_edge100.loopexit128 ], [ %.077117, %.lr.ph99.split ], [ %.4.lcssa.us, %._crit_edge94.us ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge120, label %bb.d, !llvm.loop !135

._crit_edge120:                                   ; preds = %._crit_edge100, %.preheader
  %i.ei = load ptr, ptr %i.av, align 8, !tbaa !136
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !137
  %i.el = call i32 %i.ek(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %i.el, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge120
  %i.em = trunc nsw i64 %indvars.iv158 to i32
  store i32 %i.em, ptr %i.am, align 8, !tbaa !117
  store i32 %.071121, ptr %i.ar, align 4, !tbaa !116
  br label %bb.n

bb.i:                                             ; preds = %._crit_edge120
  %i.en = add nuw i32 %.071121, 1                 ; 2 uses
  %i.eo = load i32, ptr %i.e, align 8, !tbaa !118 ; 2 uses
  %i.ep = icmp ult i32 %i.en, %i.eo
  br i1 %i.ep, label %.preheader, label %._crit_edge122.loopexit, !llvm.loop !139

._crit_edge122.loopexit:                          ; preds = %bb.i
  %.pre162 = load i32, ptr %i.ao, align 4, !tbaa !112
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %bb.c
  %i.eq = phi i32 [ %.pre162, %._crit_edge122.loopexit ], [ %i.ax, %bb.c ] ; 2 uses
  %i.er = phi i32 [ %i.eo, %._crit_edge122.loopexit ], [ %i.ay, %bb.c ]
  store i32 0, ptr %i.ar, align 4, !tbaa !116
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.es = sext i32 %i.eq to i64
  %i.et = icmp slt i64 %indvars.iv.next159, %i.es
  br i1 %i.et, label %bb.c, label %._crit_edge126.loopexit, !llvm.loop !140

._crit_edge126.loopexit:                          ; preds = %._crit_edge122
  %.pre163 = load i32, ptr %i.k, align 8, !tbaa !111
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %._crit_edge
  %i.eu = phi i32 [ %.pre163, %._crit_edge126.loopexit ], [ %i.al, %._crit_edge ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !110
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !110
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !49  ; 5 uses
  %i.ez = icmp sgt i32 %i.eu, 1
  br i1 %i.ez, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge126
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  store i32 1, ptr %i.fa, align 4, !tbaa !112
  br label %start_iMCU_row.exit

bb.k:                                             ; preds = %._crit_edge126
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !110
  %i.fd = load i32, ptr %i.h, align 4, !tbaa !113
  %i.fe = add i32 %i.fd, -1
  %i.ff = icmp ult i32 %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 44 ; 2 uses
  br i1 %i.ff, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !114
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !112
  br label %start_iMCU_row.exit

bb.m:                                             ; preds = %bb.k
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !115
  store i32 %i.fm, ptr %i.fi, align 4, !tbaa !112
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.j, %bb.l, %bb.m
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 36
  store i32 0, ptr %i.fn, align 4, !tbaa !116
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i32 0, ptr %i.fo, align 8, !tbaa !117
  br label %bb.n

bb.n:                                             ; preds = %start_iMCU_row.exit, %bb.h
  %.070 = phi i32 [ 0, %bb.h ], [ 1, %start_iMCU_row.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @compress_output_12(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @compress_output(ptr noundef %0, ptr poison)
  ret i32 %i.a
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !17, i64 496}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !15, i64 332, !15, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !16, i64 480, !4, i64 488, !17, i64 496, !18, i64 504, !19, i64 512, !20, i64 520, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !10, i64 568, !4, i64 576}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!27, !4, i64 32}
!27 = !{!"jpeg_comp_master", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!28 = !{!8, !9, i64 0}
!29 = !{!30, !4, i64 40}
!30 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !31, i64 128, !32, i64 136, !4, i64 144, !32, i64 152, !4, i64 160, !4, i64 164}
!31 = !{!"long", !5, i64 0}
!32 = !{!"p2 omnipotent char", !33, i64 0}
!33 = !{!"any p2 pointer", !10, i64 0}
!34 = !{!30, !10, i64 0}
!35 = !{!8, !4, i64 36}
!36 = !{!5, !5, i64 0}
!37 = !{!30, !10, i64 32}
!38 = !{!8, !13, i64 40}
!39 = !{!40, !10, i64 16}
!40 = !{!"jpeg_destination_mgr", !41, i64 0, !31, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!41 = !{!"p1 omnipotent char", !10, i64 0}
!42 = !{!8, !4, i64 56}
!43 = !{!8, !4, i64 292}
!44 = !{!8, !4, i64 344}
!45 = !{!8, !11, i64 8}
!46 = !{!47, !10, i64 0}
!47 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !31, i64 88, !31, i64 96}
!48 = distinct !{null, null}
!49 = !{!8, !20, i64 520}
!50 = !{!51, !10, i64 0}
!51 = !{!"", !52, i64 0, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !53, i64 48, !5, i64 56}
!52 = !{!"jpeg_c_coef_controller", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!53 = !{!"p2 _ZTS20jvirt_barray_control", !33, i64 0}
!54 = !{!51, !10, i64 8}
!55 = !{!51, !10, i64 16}
!56 = !{!51, !53, i64 48}
!57 = !{!47, !10, i64 8}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 short", !10, i64 0}
!60 = !{!47, !10, i64 48}
!61 = distinct !{null}
!62 = !{!8, !21, i64 528}
!63 = !{!64, !10, i64 0}
!64 = !{!"jpeg_marker_writer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!65 = !{!8, !4, i64 340}
!66 = !{!67, !70, i64 568}
!67 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !68, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !32, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !16, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !15, i64 384, !15, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !69, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !41, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !16, i64 552, !4, i64 560, !4, i64 564, !70, i64 568, !71, i64 576, !72, i64 584, !73, i64 592, !74, i64 600, !75, i64 608, !76, i64 616, !77, i64 624, !78, i64 632, !79, i64 640, !80, i64 648}
!68 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!69 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!70 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!71 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!72 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!73 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!74 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!75 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!76 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!77 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!78 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!79 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!80 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!81 = !{!82, !4, i64 20}
!82 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !69, i64 120}
!83 = !{!67, !4, i64 60}
!84 = !{!67, !4, i64 296}
end_hunk_0
