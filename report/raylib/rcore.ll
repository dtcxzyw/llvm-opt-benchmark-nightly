Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlLoadTexture:bb.a
    i32 18, label %bb.v
    i32 19, label %bb.v
    i32 21, label %bb.v
    i32 22, label %bb.v
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 20, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  br label %.thread.i

bb.p:                                             ; preds = %bb.n, %bb.n
  br label %.thread.i

bb.q:                                             ; preds = %bb.n
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  br label %.thread.i

bb.s:                                             ; preds = %bb.n
  br label %.thread.i

bb.t:                                             ; preds = %bb.n
  br label %.thread.i

bb.u:                                             ; preds = %bb.n
  br label %.thread.i

bb.v:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.al = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.am = sdiv <2 x i32> %i.al, splat (i32 4)     ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0
  %i.ao = shl i32 %i.an, 3
  %i.ap = extractelement <2 x i32> %i.am, i64 1
  %i.aq = mul i32 %i.ao, %i.ap
  br label %rlGetPixelDataSize.exit

bb.w:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.ar = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 4)     ; 2 uses
  %i.at = extractelement <2 x i32> %i.as, i64 0
  %i.au = shl i32 %i.at, 4
  %i.av = extractelement <2 x i32> %i.as, i64 1
  %i.aw = mul i32 %i.au, %i.av
  br label %rlGetPixelDataSize.exit

bb.x:                                             ; preds = %bb.n
  %i.ax = add nsw <2 x i32> %i.ak, splat (i32 3)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 4)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = mul i32 %i.ba, %i.bb
  br label %rlGetPixelDataSize.exit

bb.y:                                             ; preds = %bb.n
  br i1 %or.cond.i, label %.thread.i, label %rlGetPixelDataSize.exit

.thread.i:                                        ; preds = %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.02024.i = phi double [ 0.000000e+00, %bb.y ], [ 8.000000e+00, %bb.u ], [ 6.000000e+00, %bb.t ], [ 1.600000e+01, %bb.s ], [ 1.200000e+01, %bb.r ], [ 3.000000e+00, %bb.q ], [ 4.000000e+00, %bb.p ], [ 2.000000e+00, %bb.o ], [ 1.000000e+00, %bb.n ]
  %i.bd = sitofp <2 x i32> %i.ak to <2 x double>  ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fmul nnan double %.02024.i, %i.be
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = fptosi double %i.bh to i32
  br label %rlGetPixelDataSize.exit

rlGetPixelDataSize.exit:                          ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %.thread.i
  %.1.i = phi i32 [ %i.bi, %.thread.i ], [ 0, %bb.y ], [ %i.aw, %bb.w ], [ %i.bc, %bb.x ], [ %i.aq, %bb.v ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  call void @rlGetGlTextureFormats(i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bj = extractelement <2 x i32> %i.ak, i64 0   ; 3 uses
  %i.bk = extractelement <2 x i32> %i.ak, i64 1   ; 3 uses
  call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %.094, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %.1.i, i32 noundef %.06992)
  %i.bl = load i32, ptr %i.b, align 4             ; 3 uses
  %.not80 = icmp eq i32 %i.bl, 0
  br i1 %.not80, label %bb.af, label %bb.z

bb.z:                                             ; preds = %rlGetPixelDataSize.exit
  br i1 %i.ac, label %bb.aa, label %bb.ab

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
  %i.k = mul nsw i32 %2, 6
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp sgt i32 %2, 0
  %smax126.a = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 3 uses
  %smax138.a = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %smax144 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %wide.trip.count149 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax126.a to i64 ; 4 uses
  %wide.trip.count127 = zext nneg i32 %smax138.a to i64 ; 2 uses
  %wide.trip.count139 = zext nneg i32 %smax144 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %smax126.a to i1
  %xtraiter161 = and i64 %wide.trip.count127, 1
  %unroll_iter165 = and i64 %wide.trip.count127, 2147483640
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  %lcmp.mod164 = trunc i32 %smax138.a to i1
  %xtraiter167 = and i64 %wide.trip.count, 1
  %unroll_iter171 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  %lcmp.mod170 = trunc i32 %smax126.a to i1
  %xtraiter173 = and i64 %wide.trip.count139, 1
  %unroll_iter177 = and i64 %wide.trip.count139, 2147483632
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  %lcmp.mod176 = trunc i32 %smax144 to i1
  br label %bb.d

._crit_edge116:                                   ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.39)
  %i.n = mul nsw i32 %2, 12
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2                      ; 2 uses
  %i.q = shl nsw i32 %2, 3
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = shl nsw i32 %2, 4
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i32 %2, 6
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 2
  %wide.trip.count154 = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph115, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv146 ; 6 uses
  store i32 %2, ptr %i.y, align 8
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 6 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 6 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 7 uses
  store ptr %i.ah, ptr %i.ai, align 8
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %bb.d ]
  %i.aj = load ptr, ptr %i.aa, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.aa, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store float 0.000000e+00, ptr %i.an, align 4
  %i.ao = load ptr, ptr %i.aa, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store float 0.000000e+00, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.aa, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.at, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
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
  %i.au = load ptr, ptr %i.aa, align 8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil
  store float 0.000000e+00, ptr %i.av, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %.lr.ph105.preheader.new, label %.lr.ph.epil, !llvm.loop !197

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader.unr-lcssa, %.lr.ph.epil
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %indvars.iv123 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %indvars.iv.next124.3, %.lr.ph105 ] ; 5 uses
  %niter166 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter166.next.3, %.lr.ph105 ]
  %i.aw = load ptr, ptr %i.ac, align 8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv123
  store float 0.000000e+00, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.ac, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv123
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store float 0.000000e+00, ptr %i.ba, align 4
  %i.bb = load ptr, ptr %i.ac, align 8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float 0.000000e+00, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.ac, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv123
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store float 0.000000e+00, ptr %i.bg, align 4
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %niter166.next.3 = add i64 %niter166, 4         ; 2 uses
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
  %i.bh = load ptr, ptr %i.ac, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv123.epil
  store float 0.000000e+00, ptr %i.bi, align 4
  %indvars.iv.next124.epil = add nuw nsw i64 %indvars.iv123.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162, 0
  br i1 %epil.iter162.cmp.not, label %.lr.ph107.preheader.new, label %.lr.ph105.epil, !llvm.loop !198

.lr.ph107.preheader.new:                          ; preds = %.lr.ph107.preheader.unr-lcssa, %.lr.ph105.epil
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph107 ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %niter172.next.3, %.lr.ph107 ]
  %i.bj = load ptr, ptr %i.ae, align 8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv129
  store float 0.000000e+00, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.ae, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv129
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store float 0.000000e+00, ptr %i.bn, align 4
  %i.bo = load ptr, ptr %i.ae, align 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv129
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float 0.000000e+00, ptr %i.bq, align 4
  %i.br = load ptr, ptr %i.ae, align 8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv129
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float 0.000000e+00, ptr %i.bt, align 4
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
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
  %i.bu = load ptr, ptr %i.ae, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv129.epil
  store float 0.000000e+00, ptr %i.bv, align 4
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168, 0
  br i1 %epil.iter168.cmp.not, label %.lr.ph109.preheader.new, label %.lr.ph107.epil, !llvm.loop !199

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader.unr-lcssa, %.lr.ph107.epil
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %indvars.iv135 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %indvars.iv.next136.3, %.lr.ph109 ] ; 5 uses
  %niter178 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter178.next.3, %.lr.ph109 ]
  %i.bw = load ptr, ptr %i.ag, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv135
  store i8 0, ptr %i.bx, align 1
  %i.by = load ptr, ptr %i.ag, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv135
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 0, ptr %i.ca, align 1
  %i.cb = load ptr, ptr %i.ag, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv135
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 0, ptr %i.cd, align 1
  %i.ce = load ptr, ptr %i.ag, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv135
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  store i8 0, ptr %i.cg, align 1
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
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
  %i.ch = load ptr, ptr %i.ag, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv135.epil
  store i8 0, ptr %i.ci, align 1
  %indvars.iv.next136.epil = add nuw nsw i64 %indvars.iv135.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174, 0
  br i1 %epil.iter174.cmp.not, label %.lr.ph112.preheader, label %.lr.ph109.epil, !llvm.loop !200

.lr.ph112.preheader:                              ; preds = %.lr.ph109.epil, %.lr.ph112.preheader.unr-lcssa
  br label %.lr.ph112

._crit_edge:                                      ; preds = %.lr.ph112, %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge116, label %bb.d

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 7 uses
  %.092110 = phi i32 [ %i.de, %.lr.ph112 ], [ 0, %.lr.ph112.preheader ] ; 2 uses
  %i.cj = shl nuw nsw i32 %.092110, 2             ; 5 uses
  %i.ck = load ptr, ptr %i.ai, align 8
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv141
  store i32 %i.cj, ptr %i.cl, align 4
  %i.cm = or disjoint i32 %i.cj, 1
  %i.cn = load ptr, ptr %i.ai, align 8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv141
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.cm, ptr %i.cp, align 4
  %i.cq = or disjoint i32 %i.cj, 2                ; 2 uses
  %i.cr = load ptr, ptr %i.ai, align 8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv141
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %i.cq, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.ai, align 8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv141
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 %i.cj, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.ai, align 8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %i.cq, ptr %i.cz, align 4
  %i.da = or disjoint i32 %i.cj, 3
  %i.db = load ptr, ptr %i.ai, align 8
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv141
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  store i32 %i.da, ptr %i.dd, align 4
  %i.de = add nuw nsw i32 %.092110, 1
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 6 ; 2 uses
  %3 = icmp slt i64 %indvars.iv.next142, %i.l
  br i1 %3, label %.lr.ph112, label %._crit_edge

._crit_edge120:                                   ; preds = %bb.g, %._crit_edge116.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.40)
  %i.df = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.h, label %bb.i

bb.e:                                             ; preds = %._crit_edge116, %bb.g
  %indvars.iv151 = phi i64 [ 0, %._crit_edge116 ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dj = load ptr, ptr @glad_glGenVertexArrays, align 8
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 2 uses
  tail call void %i.dj(i32 noundef 1, ptr noundef nonnull %i.dl) #56
  %i.dm = load ptr, ptr @glad_glBindVertexArray, align 8
  %i.dn = load i32, ptr %i.dl, align 8
  tail call void %i.dm(i32 noundef %i.dn) #56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.do = load ptr, ptr @glad_glGenBuffers, align 8
  %i.dp = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv151 ; 10 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 52 ; 2 uses
  tail call void %i.do(i32 noundef 1, ptr noundef nonnull %i.dq) #56
  %i.dr = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ds = load i32, ptr %i.dq, align 4
  tail call void %i.dr(i32 noundef 34962, i32 noundef %i.ds) #56
  %i.dt = load ptr, ptr @glad_glBufferData, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dt(i32 noundef 34962, i64 noundef %i.p, ptr noundef %i.dv, i32 noundef 35048) #56
  %i.dw = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.dy = load i32, ptr %i.dx, align 4
  tail call void %i.dw(i32 noundef %i.dy) #56
  %i.dz = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.eb = load i32, ptr %i.ea, align 4
  tail call void %i.dz(i32 noundef %i.eb, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.ec = load ptr, ptr @glad_glGenBuffers, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 56 ; 2 uses
  tail call void %i.ec(i32 noundef 1, ptr noundef nonnull %i.ed) #56
  %i.ee = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ef = load i32, ptr %i.ed, align 8
  tail call void %i.ee(i32 noundef 34962, i32 noundef %i.ef) #56
  %i.eg = load ptr, ptr @glad_glBufferData, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.eg(i32 noundef 34962, i64 noundef %i.s, ptr noundef %i.ei, i32 noundef 35048) #56
  %i.ej = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4
  tail call void %i.ej(i32 noundef %i.em) #56
  %i.en = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  tail call void %i.en(i32 noundef %i.eq, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.er = load ptr, ptr @glad_glGenBuffers, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.dp, i64 60 ; 2 uses
  tail call void %i.er(i32 noundef 1, ptr noundef nonnull %i.es) #56
  %i.et = load ptr, ptr @glad_glBindBuffer, align 8
  %i.eu = load i32, ptr %i.es, align 4
  tail call void %i.et(i32 noundef 34962, i32 noundef %i.eu) #56
  %i.ev = load ptr, ptr @glad_glBufferData, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ev(i32 noundef 34962, i64 noundef %i.p, ptr noundef %i.ex, i32 noundef 35048) #56
  %i.ey = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4
  tail call void %i.ey(i32 noundef %i.fb) #56
  %i.fc = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4
  tail call void %i.fc(i32 noundef %i.ff, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.fg = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  tail call void %i.fg(i32 noundef 1, ptr noundef nonnull %i.fh) #56
  %i.fi = load ptr, ptr @glad_glBindBuffer, align 8
  %i.fj = load i32, ptr %i.fh, align 8
  tail call void %i.fi(i32 noundef 34962, i32 noundef %i.fj) #56
  %i.fk = load ptr, ptr @glad_glBufferData, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fk(i32 noundef 34962, i64 noundef %i.u, ptr noundef %i.fm, i32 noundef 35048) #56
  %i.fn = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %i.fq = load i32, ptr %i.fp, align 4
  tail call void %i.fn(i32 noundef %i.fq) #56
  %i.fr = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.fu = load i32, ptr %i.ft, align 4
  tail call void %i.fr(i32 noundef %i.fu, i32 noundef 4, i32 noundef 5121, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null) #56
  %i.fv = load ptr, ptr @glad_glGenBuffers, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 68 ; 2 uses
  tail call void %i.fv(i32 noundef 1, ptr noundef nonnull %i.fw) #56
  %i.fx = load ptr, ptr @glad_glBindBuffer, align 8
  %i.fy = load i32, ptr %i.fw, align 4
  tail call void %i.fx(i32 noundef 34963, i32 noundef %i.fy) #56
  %i.fz = load ptr, ptr @glad_glBufferData, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  tail call void %i.fz(i32 noundef 34963, i64 noundef %i.x, ptr noundef %i.gb, i32 noundef 35044) #56
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge120, label %bb.e

bb.h:                                             ; preds = %._crit_edge120
  %i.gc = load ptr, ptr @glad_glBindVertexArray, align 8
  tail call void %i.gc(i32 noundef 0) #56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge120
  %i.gd = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 256, i64 noundef 16) #60 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gd, ptr %i.ge, align 8
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  %i.gg = insertelement <4 x i32> <i32 7, i32 0, i32 0, i32 poison>, i32 %i.gf, i64 3 ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  store i32 %1, ptr %0, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float -1.000000e+00, ptr %i.gi, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %bb.i
  %indvars.iv156 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next157.3, %bb.k ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv156
  store <4 x i32> %i.gg, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv156
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x i32> %i.gg, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv156
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store <4 x i32> %i.gg, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv156
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  store <4 x i32> %i.gg, ptr %i.gp, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %exitcond159.not.3 = icmp eq i64 %indvars.iv.next157.3, 256
  br i1 %exitcond159.not.3, label %bb.j, label %bb.k

bb.l:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlglClose() local_unnamed_addr #0 {
bb.a:
  tail call void @rlUnloadRenderBatch(ptr noundef nonnull byval(%struct.rlRenderBatch) align 8 getelementptr inbounds nuw (i8, ptr @RLGL, i64 8))
  %i.a = load ptr, ptr @glad_glUseProgram, align 8
  tail call void %i.a(i32 noundef 0) #56, !inline_history !201
  %i.b = load ptr, ptr @glad_glDetachShader, align 8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2360), align 8
  tail call void %i.b(i32 noundef %i.c, i32 noundef %i.d) #56, !inline_history !201
  %i.e = load ptr, ptr @glad_glDetachShader, align 8
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2364), align 4
  tail call void %i.e(i32 noundef %i.f, i32 noundef %i.g) #56, !inline_history !201
  %i.h = load ptr, ptr @glad_glDeleteShader, align 8
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2360), align 8
  tail call void %i.h(i32 noundef %i.i) #56, !inline_history !201
  %i.j = load ptr, ptr @glad_glDeleteShader, align 8
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2364), align 4
  tail call void %i.j(i32 noundef %i.k) #56, !inline_history !201
  %i.l = load ptr, ptr @glad_glDeleteProgram, align 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  tail call void %i.l(i32 noundef %i.m) #56, !inline_history !201
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  tail call void @free(ptr noundef %i.n) #56
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.1405, i32 noundef %i.o)
  %i.p = load ptr, ptr @glad_glDeleteTextures, align 8
  tail call void %i.p(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340)) #56
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %i.q)
  store i1 false, ptr @isGpuReady, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlUnloadRenderBatch(ptr nofree noundef readonly byval(%struct.rlRenderBatch) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @glad_glBindBuffer, align 8
  tail call void %i.a(i32 noundef 34962, i32 noundef 0) #56
  %i.b = load ptr, ptr @glad_glBindBuffer, align 8
end_hunk_0
