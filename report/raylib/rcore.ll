inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlLoadTexture:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr @glad_glTexImage2D, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = load i32, ptr %i.d, align 4
  call void %i.bm(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef %.193) #56
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr @glad_glCompressedTexImage2D, align 8
  call void %i.bp(i32 noundef 3553, i32 noundef %.094, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef %.1.i, ptr noundef %.193) #56
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %3, label %bb.af [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask, i64 16, i1 false)
  %i.bq = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.bq(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const.rlLoadTextureCubemap.swizzleMask.54, i64 16, i1 false)
  %i.br = load ptr, ptr @glad_glTexParameteriv, align 8
  call void %i.br(i32 noundef 3553, i32 noundef 36422, ptr noundef nonnull %i.f) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #56
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %rlGetPixelDataSize.exit
  %i.bs = sdiv <2 x i32> %i.ak, splat (i32 2)
  %i.bt = add i32 %.1.i, %.06992
  %i.bu = zext i32 %.1.i to i64
  %.2.idx = select i1 %.not, i64 0, i64 %i.bu
  %.2 = getelementptr inbounds nuw i8, ptr %.193, i64 %.2.idx
  %i.bv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 1))
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.bw = add nuw nsw i32 %.094, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.n

bb.ag:                                            ; preds = %._crit_edge
  %i.bx = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bx(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #56
  %i.by = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.by(i32 noundef 3553, i32 noundef 10241, i32 noundef 9987) #56
  %i.bz = load ptr, ptr @glad_glTexParameteri, align 8
  call void %i.bz(i32 noundef 3553, i32 noundef 33084, i32 noundef 0) #56
  %i.ca = load ptr, ptr @glad_glTexParameteri, align 8
  %i.cb = add nsw i32 %4, -1
  call void %i.ca(i32 noundef 3553, i32 noundef 33085, i32 noundef %i.cb) #56
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.cc = load ptr, ptr @glad_glBindTexture, align 8
  call void %i.cc(i32 noundef 3553, i32 noundef 0) #56
  %i.cd = load i32, ptr %i.a, align 4             ; 2 uses
  %.not79 = icmp eq i32 %i.cd, 0
  br i1 %.not79, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = call ptr @rlGetPixelFormatName(i32 noundef %3)
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef %i.cd, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.ce, i32 noundef %4)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.49)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.072 = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.072
}

; Function Attrs: nounwind uwtable
define void @rlLoadRenderBatch(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rlRenderBatch) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %.b = load i1, ptr @isGpuReady, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.38)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 72) #60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph115, label %._crit_edge116.thread

._crit_edge116.thread:                            ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  br label %._crit_edge120

.lr.ph115:                                        ; preds = %bb.c
  %i.e = mul nsw i32 %2, 12                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nsw i32 %2, 3                        ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i32 %2, 4                        ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i32 %2, 6                        ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp sgt i32 %2, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %smax138 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %smax144 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 6)
  %i.n = add nsw i32 %smax144, -2
  %i.o = udiv i32 %i.n, 6
  %wide.trip.count149 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 2 uses
  %wide.trip.count139 = zext nneg i32 %smax138 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %smax to i1
  %xtraiter161 = and i64 %wide.trip.count127, 1
  %unroll_iter165 = and i64 %wide.trip.count127, 2147483640
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164 = trunc i32 %smax126 to i1
  %xtraiter167 = and i64 %wide.trip.count, 1
  %unroll_iter171 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  %lcmp.mod170 = trunc i32 %smax to i1
  %xtraiter173 = and i64 %wide.trip.count139, 1
  %unroll_iter177 = and i64 %wide.trip.count139, 2147483632
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod176 = trunc i32 %smax138 to i1
  br label %bb.d

._crit_edge116:                                   ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  %i.p = mul nsw i32 %2, 12
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  %i.s = shl nsw i32 %2, 3
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = shl nsw i32 %2, 4
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i32 %2, 6
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  %wide.trip.count154 = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv146 ; 6 uses
  store i32 %2, ptr %i.aa, align 8
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 6 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 6 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 7 uses
  store ptr %i.aj, ptr %i.ak, align 8
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %bb.d ]
  %i.al = load ptr, ptr %i.ac, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.ac, align 8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float 0.000000e+00, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ac, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store float 0.000000e+00, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ac, align 8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store float 0.000000e+00, ptr %i.av, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph105.preheader.unr-lcssa, label %.lr.ph

.lr.ph105.preheader.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph105.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.next.3, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ] ; 2 uses
  %i.aw = load ptr, ptr %i.ac, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.epil
  store float 0.000000e+00, ptr %i.ax, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil, !llvm.loop !189

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader.unr-lcssa, %.lr.ph.epil
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %indvars.iv.next124.3, %.lr.ph105 ] ; 5 uses
  %niter166 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter166.next.3, %.lr.ph105 ]
  %i.ay = load ptr, ptr %i.ae, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv123
  store float 0.000000e+00, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.ae, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float 0.000000e+00, ptr %i.bc, align 4
  %i.bd = load ptr, ptr %i.ae, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv123
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float 0.000000e+00, ptr %i.bf, align 4
  %i.bg = load ptr, ptr %i.ae, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store float 0.000000e+00, ptr %i.bi, align 4
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter166.next.3 = add nuw i64 %niter166, 4     ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %.lr.ph107.preheader.unr-lcssa, label %.lr.ph105

.lr.ph107.preheader.unr-lcssa:                    ; preds = %.lr.ph105
  br i1 %lcmp.mod163.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil.preheader

.lr.ph105.epil.preheader:                         ; preds = %.lr.ph107.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph105.epil

.lr.ph105.epil:                                   ; preds = %.lr.ph105.epil, %.lr.ph105.epil.preheader
  %indvars.iv123.epil = phi i64 [ %indvars.iv.next124.epil, %.lr.ph105.epil ], [ %indvars.iv.next124.3, %.lr.ph105.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i64 [ %epil.iter162.next, %.lr.ph105.epil ], [ 0, %.lr.ph105.epil.preheader ] ; 2 uses
  %i.bj = load ptr, ptr %i.ae, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv123.epil
  store float 0.000000e+00, ptr %i.bk, align 4
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162, 0
  br i1 %epil.iter162.cmp.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil, !llvm.loop !191

.lr.ph107.preheader.new:                          ; preds = %.lr.ph107.preheader.unr-lcssa, %.lr.ph105.epil
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph107 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %niter172.next.3, %.lr.ph107 ]
  %i.bl = load ptr, ptr %i.ag, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv129
  store float 0.000000e+00, ptr %i.bm, align 4
  %i.bn = load ptr, ptr %i.ag, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv129
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float 0.000000e+00, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.ag, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store float 0.000000e+00, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.ag, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv129
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store float 0.000000e+00, ptr %i.bv, align 4
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter172.next.3 = add nuw i64 %niter172, 4     ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.lr.ph109.preheader.unr-lcssa, label %.lr.ph107

.lr.ph109.preheader.unr-lcssa:                    ; preds = %.lr.ph107
  br i1 %lcmp.mod169.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.lr.ph109.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph107.epil ], [ %indvars.iv.next130.3, %.lr.ph107.epil.preheader ] ; 2 uses
  %epil.iter168 = phi i64 [ %epil.iter168.next, %.lr.ph107.epil ], [ 0, %.lr.ph107.epil.preheader ] ; 2 uses
  %i.bw = load ptr, ptr %i.ag, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv129.epil
  store float 0.000000e+00, ptr %i.bx, align 4
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168, 0
  br i1 %epil.iter168.cmp.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil, !llvm.loop !192

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader.unr-lcssa, %.lr.ph107.epil
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %indvars.iv.next136.3, %.lr.ph109 ] ; 5 uses
  %niter178 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter178.next.3, %.lr.ph109 ]
  %i.by = load ptr, ptr %i.ai, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv135
  store i8 0, ptr %i.bz, align 1
  %i.ca = load ptr, ptr %i.ai, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv135
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 0, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %i.ai, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv135
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 0, ptr %i.cf, align 1
  %i.cg = load ptr, ptr %i.ai, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv135
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  store i8 0, ptr %i.ci, align 1
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135, 4 ; 2 uses
  %niter178.next.3 = add nuw i64 %niter178, 4     ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %.lr.ph112.preheader.unr-lcssa, label %.lr.ph109

.lr.ph112.preheader.unr-lcssa:                    ; preds = %.lr.ph109
  br i1 %lcmp.mod175.not, label %.lr.ph112.preheader, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %.lr.ph112.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph109.epil

.lr.ph109.epil:                                   ; preds = %.lr.ph109.epil, %.lr.ph109.epil.preheader
  %indvars.iv135.epil = phi i64 [ %indvars.iv.next136.epil, %.lr.ph109.epil ], [ %indvars.iv.next136.3, %.lr.ph109.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i64 [ %epil.iter174.next, %.lr.ph109.epil ], [ 0, %.lr.ph109.epil.preheader ] ; 2 uses
  %i.cj = load ptr, ptr %i.ai, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv135.epil
  store i8 0, ptr %i.ck, align 1
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174, 0
  br i1 %epil.iter174.cmp.not, label %.lr.ph112.preheader, label %.lr.ph109.epil, !llvm.loop !193

.lr.ph112.preheader:                              ; preds = %.lr.ph109.epil, %.lr.ph112.preheader.unr-lcssa
  br label %.lr.ph112

._crit_edge:                                      ; preds = %.lr.ph112, %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge116, label %bb.d

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 7 uses
  %.092110 = phi i32 [ %i.dg, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 3 uses
  %i.cl = shl nuw nsw i32 %.092110, 2             ; 5 uses
  %i.cm = load ptr, ptr %i.ak, align 8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv141
  store i32 %i.cl, ptr %i.cn, align 4
  %i.co = or disjoint i32 %i.cl, 1
  %i.cp = load ptr, ptr %i.ak, align 8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.co, ptr %i.cr, align 4
  %i.cs = or disjoint i32 %i.cl, 2                ; 2 uses
  %i.ct = load ptr, ptr %i.ak, align 8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv141
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cs, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.ak, align 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv141
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %i.cl, ptr %i.cy, align 4
  %i.cz = load ptr, ptr %i.ak, align 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv141
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %i.cs, ptr %i.db, align 4
  %i.dc = or disjoint i32 %i.cl, 3
  %i.dd = load ptr, ptr %i.ak, align 8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv141
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.dc, ptr %i.df, align 4
  %i.dg = add nuw nsw i32 %.092110, 1
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 6
  %exitcond145.not = icmp eq i32 %.092110, %i.o
  br i1 %exitcond145.not, label %._crit_edge, label %.lr.ph112

._crit_edge120:                                   ; preds = %bb.g, %._crit_edge116.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.40)
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !170, !noundef !171
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.h, label %bb.i

bb.e:                                             ; preds = %._crit_edge116, %bb.g
  %indvars.iv151 = phi i64 [ 0, %._crit_edge116 ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !170, !noundef !171
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dl = load ptr, ptr @glad_glGenVertexArrays, align 8
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 2 uses
  tail call void %i.dl(i32 noundef 1, ptr noundef nonnull %i.dn) #56
  %i.do = load ptr, ptr @glad_glBindVertexArray, align 8
  %i.dp = load i32, ptr %i.dn, align 8
  tail call void %i.do(i32 noundef %i.dp) #56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dq = load ptr, ptr @glad_glGenBuffers, align 8
  %i.dr = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151 ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52 ; 2 uses
  tail call void %i.dq(i32 noundef 1, ptr noundef nonnull %i.ds) #56
  %i.dt = load ptr, ptr @glad_glBindBuffer, align 8
  %i.du = load i32, ptr %i.ds, align 4
  tail call void %i.dt(i32 noundef 34962, i32 noundef %i.du) #56
  %i.dv = load ptr, ptr @glad_glBufferData, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dv(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.dx, i32 noundef 35048) #56
  %i.dy = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ea = load i32, ptr %i.dz, align 4
  tail call void %i.dy(i32 noundef %i.ea) #56
  %i.eb = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ed = load i32, ptr %i.ec, align 4
  tail call void %i.eb(i32 noundef %i.ed, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.ee = load ptr, ptr @glad_glGenBuffers, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  tail call void %i.ee(i32 noundef 1, ptr noundef nonnull %i.ef) #56
  %i.eg = load ptr, ptr @glad_glBindBuffer, align 8
  %i.eh = load i32, ptr %i.ef, align 8
  tail call void %i.eg(i32 noundef 34962, i32 noundef %i.eh) #56
  %i.ei = load ptr, ptr @glad_glBufferData, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ei(i32 noundef 34962, i64 noundef %i.u, ptr noundef %i.ek, i32 noundef 35048) #56
  %i.el = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4
  tail call void %i.el(i32 noundef %i.eo) #56
  %i.ep = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  tail call void %i.ep(i32 noundef %i.es, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.et = load ptr, ptr @glad_glGenBuffers, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dr, i64 60 ; 2 uses
  tail call void %i.et(i32 noundef 1, ptr noundef nonnull %i.eu) #56
  %i.ev = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ew = load i32, ptr %i.eu, align 4
  tail call void %i.ev(i32 noundef 34962, i32 noundef %i.ew) #56
  %i.ex = load ptr, ptr @glad_glBufferData, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ex(i32 noundef 34962, i64 noundef %i.r, ptr noundef %i.ez, i32 noundef 35048) #56
  %i.fa = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4
  tail call void %i.fa(i32 noundef %i.fd) #56
  %i.fe = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4
  tail call void %i.fe(i32 noundef %i.fh, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.fi = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 2 uses
  tail call void %i.fi(i32 noundef 1, ptr noundef nonnull %i.fj) #56
  %i.fk = load ptr, ptr @glad_glBindBuffer, align 8
  %i.fl = load i32, ptr %i.fj, align 8
  tail call void %i.fk(i32 noundef 34962, i32 noundef %i.fl) #56
  %i.fm = load ptr, ptr @glad_glBufferData, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fm(i32 noundef 34962, i64 noundef %i.w, ptr noundef %i.fo, i32 noundef 35048) #56
  %i.fp = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  tail call void %i.fp(i32 noundef %i.fs) #56
  %i.ft = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i32, ptr %i.fv, align 4
  tail call void %i.ft(i32 noundef %i.fw, i32 noundef 4, i32 noundef 5121, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null) #56
  %i.fx = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 68 ; 2 uses
  tail call void %i.fx(i32 noundef 1, ptr noundef nonnull %i.fy) #56
  %i.fz = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ga = load i32, ptr %i.fy, align 4
  tail call void %i.fz(i32 noundef 34963, i32 noundef %i.ga) #56
  %i.gb = load ptr, ptr @glad_glBufferData, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8
  tail call void %i.gb(i32 noundef 34963, i64 noundef %i.z, ptr noundef %i.gd, i32 noundef 35044) #56
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge120, label %bb.e

bb.h:                                             ; preds = %._crit_edge120
  %i.ge = load ptr, ptr @glad_glBindVertexArray, align 8
  tail call void %i.ge(i32 noundef 0) #56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge120
  %i.gf = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 256, i64 noundef 16) #60 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gf, ptr %i.gg, align 8
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.gi = insertelement <4 x i32> <i32 7, i32 0, i32 0, i32 poison>, i32 %i.gh, i64 3 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  store i32 %1, ptr %0, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.gk, align 4
end_hunk_0
begin_hunk_1_@DecodeDataBase64:bb.a
.preheader:                                       ; preds = %bb.d
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.not105 = icmp sgt i64 %i.d, 2
  br i1 %.not105, label %.lr.ph108.preheader, label %bb.e

.lr.ph108.preheader:                              ; preds = %.lr.ph.preheader
  %invariant.op = sub nsw i64 %i.d, 2
  br label %.lr.ph108

.lr.ph:                                           ; preds = %bb.k
  %.not = icmp slt i64 %indvars.iv.next86, %invariant.op
  br i1 %.not, label %.lr.ph108, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %indvars.iv87.lcssa = phi i32 [ %i.p, %.lr.ph._crit_edge ], [ 0, %.lr.ph.preheader ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.252)
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph
  %indvars.iv85107 = phi i64 [ %indvars.iv.next86, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 4 uses
  %indvars.iv87106 = phi i64 [ %indvars.iv.next88, %.lr.ph ], [ 0, %.lr.ph108.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv85107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not70 = icmp eq i8 %i.ae, 61
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph108
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph108, %bb.f
  %i.ak = phi i32 [ %i.aj, %bb.f ], [ 0, %.lr.ph108 ] ; 4 uses
  %i.al = or disjoint i64 %indvars.iv85107, 3     ; 2 uses
  %i.am = icmp slt i64 %i.al, %i.d
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %.not71 = icmp eq i8 %i.ao, 61
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @DecodeDataBase64.base64DecodeTable, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or i32 %i.ak, %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.au = phi i32 [ %i.at, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87106, 3 ; 4 uses
  %.not72 = icmp sgt i64 %indvars.iv.next88, %i.l
  br i1 %.not72, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.av = trunc nuw nsw i64 %indvars.iv87106 to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aw = shl nuw nsw i32 %i.v, 18
  %i.ax = shl nuw nsw i32 %i.ab, 12
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ak                     ; 2 uses
  %i.ba = lshr i32 %i.az, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv87106 ; 3 uses
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = lshr i32 %i.az, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = trunc i32 %i.au to i8
  %i.bh = getelementptr i8, ptr %i.bc, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85107, 4 ; 3 uses
  %i.bi = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bj = icmp slt i32 %i.bi, %i.c
  br i1 %i.bj, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.thread, %bb.e
  %.05778 = phi i32 [ %indvars.iv87.lcssa, %bb.e ], [ %i.av, %.thread ], [ 0, %.preheader ], [ %i.bk, %.loopexit.loopexit ]
  %.not73 = icmp eq i32 %i.j, %.05778
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.254)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  store i32 %i.k, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.a
  %.163 = phi ptr [ null, %bb.a ], [ %i.m, %bb.m ], [ null, %bb.d ]
  ret ptr %.163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @ComputeCRC32(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #50 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  %.promoted71 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  %ComputeMD5.hash.promoted = load i32, ptr @ComputeMD5.hash, align 16
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv82 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next83, %bb.c ] ; 2 uses
  %i.n = phi i32 [ %ComputeMD5.hash.promoted, %.lr.ph.preheader ], [ %i.s, %bb.c ] ; 2 uses
  %i.o = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = phi i32 [ %.promoted71, %.lr.ph.preheader ], [ %i.u, %bb.c ] ; 2 uses
  %i.q = phi i32 [ %.promoted72, %.lr.ph.preheader ], [ %i.v, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ %i.ag, %bb.g ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %.0 = phi i64 [ %indvars.iv, %bb.e ], [ %i.aj, %bb.g ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.059, %.06466
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.k, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.r, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = shl i32 %i.bb, %i.bd
  %i.bf = sub i32 32, %i.bd
  %i.bg = lshr i32 %i.bb, %i.bf
  %i.bh = add i32 %i.be, %.06367
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 8 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeSHA1.hash, align 16
  store i32 -1009589776, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %i.b = add nsw i32 %1, 8
  %i.c = sdiv i32 %i.b, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i64 %i.h, 3                      ; 8 uses
  %i.k = trunc i64 %i.j to i8
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr i8, ptr %i.g, i64 %i.l     ; 8 uses
  %i.n = getelementptr i8, ptr %i.m, i64 63
  store i8 %i.k, ptr %i.n, align 1
  %i.o = lshr i64 %i.j, 8
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr i8, ptr %i.m, i64 62
  store i8 %i.p, ptr %i.q, align 1
  %i.r = lshr i64 %i.j, 16
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr i8, ptr %i.m, i64 61
  store i8 %i.s, ptr %i.t, align 1
  %i.u = lshr i64 %i.j, 24
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr i8, ptr %i.m, i64 60
  store i8 %i.v, ptr %i.w, align 1
  %i.x = lshr i64 %i.j, 32
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr i8, ptr %i.m, i64 59
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = lshr i64 %i.j, 40
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr i8, ptr %i.m, i64 58
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %i.j, 48
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr i8, ptr %i.m, i64 57
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = lshr i64 %i.j, 56
  %i.ah = trunc nuw i64 %i.ag to i8
  %i.ai = getelementptr i8, ptr %i.m, i64 56
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = icmp sgt i32 %i.e, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted119 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %.promoted118 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 12), align 4
  %.promoted117 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 8), align 8
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 4), align 4
  %ComputeSHA1.hash.promoted = load i32, ptr @ComputeSHA1.hash, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.cz, ptr @ComputeSHA1.hash, align 16
  store i32 %i.da, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 4), align 4
end_hunk_1
begin_hunk_2_@IsMouseButtonReleased:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsMouseButtonUp(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ult i32 %0, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1915), i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2112), i64 %i.a
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  %spec.select = select i1 %i.g, i1 true, i1 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetMouseX() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.c = fadd float %i.a, %i.b
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul float %i.c, %i.d
  %i.f = fptosi float %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetMouseY() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1888), align 8
  %i.b = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1872), align 8
  %i.c = fadd float %i.a, %i.b
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1880), align 8
  %i.e = fmul float %i.c, %i.d
  %i.f = fptosi float %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMousePosition() local_unnamed_addr #26 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  %i.c = fadd <2 x float> %i.a, %i.b
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul <2 x float> %i.c, %i.d
  ret <2 x float> %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetMouseOffset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  store <2 x float> %i.c, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1868), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMouseWheelMoveV() local_unnamed_addr #26 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchX() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), align 8
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchY() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1988), align 4
  %i.b = fptosi float %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define <2 x float> @GetTouchPosition(i32 noundef %0) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1984), i64 %i.b
  %.sroa.0.0.copyload2 = load <2 x float>, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.273, i32 noundef 8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload2, %bb.b ], [ splat (float -1.000000e+00), %bb.c ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointId(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1952), i64 %i.b
  %i.d = load i32, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @GetTouchPointCount() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1948), align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #52

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sinfl_build(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 7, 11) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 -2147483647, -2147483648) %4) unnamed_addr #53 {
bb.a:
  %i.a = alloca [288 x i16], align 16             ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 18 uses
  %i.c = alloca [16 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %4, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !298

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.b, align 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.am, ptr %i.an, align 4
  %wide.trip.count119 = zext nneg i32 %3 to i64   ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count119, -1     ; 3 uses
  %xtraiter196 = and i64 %i.ao, 1
  %unroll_iter201 = and i64 %i.ao, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %i.ap = phi i32 [ %i.am, %._crit_edge ], [ %i.aw, %bb.b ]
  %indvars.iv116 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next117.1, %bb.b ] ; 3 uses
  %.095 = phi i32 [ 0, %._crit_edge ], [ %i.bb, %bb.b ]
  %niter202 = phi i64 [ 0, %._crit_edge ], [ %niter202.next.1, %bb.b ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv116
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.ap                ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.as                ; 3 uses
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = shl i32 %.095, 2
  %i.az = shl i32 %i.ar, 1
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = add nsw i32 %i.av, %i.ba                ; 3 uses
  %niter202.next.1 = add nuw nsw i64 %niter202, 2 ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.b

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod200 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next117.1
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.aw
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next117.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.be, ptr %i.bg, align 4
  %i.bh = shl i32 %i.bb, 1
  %i.bi = add nsw i32 %i.bd, %i.bh
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa194 = phi i32 [ %i.bb, %.unr-lcssa ], [ %i.bi, %.epil.preheader ]
  %i.bj = shl i32 %.lcssa194, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %wide.trip.count119
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, %i.bj
  br i1 %i.d, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.c
  %wide.trip.count124 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter203 = and i64 %wide.trip.count124, 1
  %i.bn = icmp eq i32 %4, 1
  br i1 %i.bn, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter207 = and i64 %wide.trip.count124, 2147483646
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %indvars.iv121 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %indvars.iv.next122.1, %.lr.ph98 ] ; 4 uses
  %niter208 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter208.next.1, %.lr.ph98 ]
  %i.bo = trunc i64 %indvars.iv121 to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bv
  store i16 %i.bo, ptr %i.bw, align 2
  %indvars.iv.next122 = or disjoint i64 %indvars.iv121, 1 ; 2 uses
  %i.bx = trunc i64 %indvars.iv.next122 to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next122
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ce
  store i16 %i.bx, ptr %i.cf, align 2
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %niter208.next.1 = add nuw i64 %niter208, 2     ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %._crit_edge99.loopexit, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next122.1, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.cg = trunc i64 %indvars.iv121.epil.init to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv121.epil.init
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cg, ptr %i.co, align 2
  br label %._crit_edge99.loopexit

._crit_edge99.loopexit:                           ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.epil.preheader
  %.pre134 = load i32, ptr %i.c, align 16
  %i.cp = sext i32 %.pre134 to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.c
  %i.cq = phi i64 [ %i.cp, %._crit_edge99.loopexit ], [ 0, %bb.c ]
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.cq ; 2 uses
  %i.cs = shl nuw nsw i32 1, %3
  %i.ct = icmp slt i32 %i.bm, %i.cs
  br i1 %i.ct, label %.preheader, label %bb.d

.preheader:                                       ; preds = %._crit_edge99, %.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.preheader ], [ 0, %._crit_edge99 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv130
  store i32 1, ptr %i.cu, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next131 to i32
  %.3.highbits = lshr i32 %i.cv, %2
  %i.cw = icmp eq i32 %.3.highbits, 0
  br i1 %i.cw, label %.preheader, label %sinfl_build_tbl.exit

bb.d:                                             ; preds = %._crit_edge99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not59.i = icmp eq i32 %i.cy, 0
  br i1 %.not59.i, label %.lr.ph.i, label %.preheader55.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  %.not.i = icmp eq i32 %i.da, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %.not4660.i = icmp slt i32 %2, %i.db
  br i1 %.not4660.i, label %.loopexit, label %.preheader55.lr.ph.i

.preheader55.lr.ph.i:                             ; preds = %bb.d, %._crit_edge.i
  %i.dc = phi i32 [ %i.db, %._crit_edge.i ], [ 1, %bb.d ] ; 2 uses
  %.sroa.17.068 = phi i32 [ %i.da, %._crit_edge.i ], [ %i.cy, %bb.d ]
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = zext nneg i32 %2 to i64
  br label %.preheader55.i

.loopexit54.i:                                    ; preds = %bb.g
  %i.df = trunc nsw i64 %indvars.iv126 to i32
  %i.dg = trunc nsw i64 %indvars.iv.next127 to i32 ; 2 uses
  %.not46.i.not = icmp sgt i32 %2, %i.df
  br i1 %.not46.i.not, label %.preheader55.i, label %.loopexit

.preheader55.i:                                   ; preds = %.loopexit54.i, %.preheader55.lr.ph.i
  %.sroa.0.1 = phi i32 [ %i.dc, %.preheader55.lr.ph.i ], [ %i.dg, %.loopexit54.i ] ; 7 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.068, %.preheader55.lr.ph.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.0 = phi i32 [ 0, %.preheader55.lr.ph.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.0 = phi ptr [ %i.cr, %.preheader55.lr.ph.i ], [ %i.ef, %.loopexit54.i ]
  %.03961.i = phi i32 [ %i.dd, %.preheader55.lr.ph.i ], [ %.5.i, %.loopexit54.i ] ; 5 uses
  %i.dh = add nsw i32 %.03961.i, -1               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.preheader55.i
  %.sroa.17.2 = phi i32 [ %.sroa.17.1, %.preheader55.i ], [ %i.em, %.thread.i ]
  %.sroa.26.1 = phi i32 [ %.sroa.26.0, %.preheader55.i ], [ %i.el, %.thread.i ] ; 4 uses
  %.sroa.3346.1 = phi ptr [ %.sroa.3346.0, %.preheader55.i ], [ %i.ef, %.thread.i ] ; 2 uses
  %i.di = load i16, ptr %.sroa.3346.1, align 2
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.dj, 16
  %i.dl = or i32 %i.dk, %.sroa.0.1
  %i.dm = sext i32 %.sroa.26.1 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dm
  store i32 %i.dl, ptr %i.dn, align 4
  %.not47.i = icmp eq i32 %.sroa.26.1, %i.dh
  br i1 %.not47.i, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.e
  %i.do = icmp slt i32 %.sroa.0.1, %2
  br i1 %i.do, label %.lr.ph63.i.preheader, label %sinfl_build_tbl.exit

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.dp = sub i32 %2, %.sroa.0.1
  %.neg = add i32 %.sroa.0.1, 1
  %xtraiter211 = and i32 %i.dp, 1
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader
  %i.dq = sext i32 %.03961.i to i64               ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  %i.ds = shl nsw i64 %i.dq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr nonnull align 4 %0, i64 %i.ds, i1 false)
  %i.dt = shl i32 %.03961.i, 1
  %i.du = add nsw i32 %.sroa.0.1, 1
  br label %.lr.ph63.i.prol.loopexit

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.sroa.0.2.unr = phi i32 [ %.sroa.0.1, %.lr.ph63.i.preheader ], [ %i.du, %.lr.ph63.i.prol ]
  %.262.i.unr = phi i32 [ %.03961.i, %.lr.ph63.i.preheader ], [ %i.dt, %.lr.ph63.i.prol ]
  %i.dv = icmp eq i32 %2, %.neg
  br i1 %i.dv, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.sroa.0.2 = phi i32 [ %i.ee, %.lr.ph63.i ], [ %.sroa.0.2.unr, %.lr.ph63.i.prol.loopexit ]
  %.262.i = phi i32 [ %i.ed, %.lr.ph63.i ], [ %.262.i.unr, %.lr.ph63.i.prol.loopexit ] ; 3 uses
  %i.dw = sext i32 %.262.i to i64                 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dw
  %i.dy = shl nsw i64 %i.dw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %0, i64 %i.dy, i1 false)
  %i.dz = shl i32 %.262.i, 1
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ea
  %i.ec = shl nsw i64 %i.ea, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr nonnull align 4 %0, i64 %i.ec, i1 false)
  %i.ed = shl i32 %.262.i, 2
  %i.ee = add nsw i32 %.sroa.0.2, 2               ; 2 uses
  %exitcond129.not.1 = icmp eq i32 %i.ee, %2
  br i1 %exitcond129.not.1, label %sinfl_build_tbl.exit, label %.lr.ph63.i

.thread.i:                                        ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3346.1, i64 2 ; 3 uses
  %i.eg = xor i32 %.sroa.26.1, %i.dh
  %i.eh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = lshr exact i32 -2147483648, %i.eh       ; 2 uses
  %i.ej = add i32 %i.ei, -1
  %i.ek = and i32 %i.ej, %.sroa.26.1
  %i.el = or i32 %i.ek, %i.ei                     ; 3 uses
  %i.em = add nsw i32 %.sroa.17.2, -1             ; 2 uses
  %.not48.i = icmp eq i32 %i.em, 0
  br i1 %.not48.i, label %.preheader53.i.preheader, label %bb.e

.preheader53.i.preheader:                         ; preds = %.thread.i
  %i.en = sext i32 %.sroa.0.1 to i64
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.preheader53.i.preheader, %bb.g
  %indvars.iv126 = phi i64 [ %i.en, %.preheader53.i.preheader ], [ %indvars.iv.next127, %bb.g ] ; 3 uses
  %.4.i = phi i32 [ %.03961.i, %.preheader53.i.preheader ], [ %.5.i, %bb.g ] ; 3 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 3 uses
  %.not49.not.i = icmp slt i64 %indvars.iv126, %i.de
  br i1 %.not49.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader53.i
  %i.eo = sext i32 %.4.i to i64                   ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  %i.eq = shl nsw i64 %i.eo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr nonnull align 4 %0, i64 %i.eq, i1 false)
  %i.er = shl i32 %.4.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader53.i
  %.5.i = phi i32 [ %i.er, %bb.f ], [ %.4.i, %.preheader53.i ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next127
  %i.et = load i32, ptr %i.es, align 4            ; 3 uses
  %.not50.i = icmp eq i32 %i.et, 0
  br i1 %.not50.i, label %.preheader53.i, label %.loopexit54.i

.loopexit:                                        ; preds = %.loopexit54.i, %._crit_edge.i
  %.sroa.0.3.ph = phi i32 [ %i.db, %._crit_edge.i ], [ %i.dg, %.loopexit54.i ]
  %.sroa.17.3.ph = phi i32 [ %i.da, %._crit_edge.i ], [ %i.et, %.loopexit54.i ]
  %.sroa.26.2.ph = phi i32 [ 0, %._crit_edge.i ], [ %i.el, %.loopexit54.i ]
  %.sroa.3346.2.ph = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.ef, %.loopexit54.i ]
  %i.eu = shl nuw nsw i32 1, %2                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = sub nsw i32 0, %2
  %i.ex = sext i32 %i.ew to i64
  %i.ey = zext nneg i32 %2 to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.b, i64 %i.ey
  br label %.loopexit.i.outer

.loopexit.i.loopexit:                             ; preds = %bb.l
  %i.ez = trunc nsw i64 %indvars.iv.next79.i to i32
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %.loopexit.i.loopexit, %.loopexit
end_hunk_2
