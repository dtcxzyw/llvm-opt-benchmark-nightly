Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluCheck:bb.a
  %vec.ind.next276 = add <4 x i32> %vec.ind273, splat (i32 8)
  %i.iv = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.iv, label %middle.block277, label %vector.body271, !llvm.loop !326

middle.block277:                                  ; preds = %vector.body271
  %cmp.n278 = icmp eq i64 %n.vec270, %wide.trip.count213
  br i1 %cmp.n278, label %._crit_edge197, label %.lr.ph196.preheader296

.lr.ph196.preheader296:                           ; preds = %.lr.ph196.preheader, %middle.block277
  %indvars.iv210.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec270, %middle.block277 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader296, %.lr.ph196
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %.lr.ph196 ], [ %indvars.iv210.ph, %.lr.ph196.preheader296 ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv210
  %i.ix = trunc nuw nsw i64 %indvars.iv210 to i32 ; 2 uses
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !10
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv210
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !10
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge197, label %.lr.ph196, !llvm.loop !327

._crit_edge197:                                   ; preds = %.lr.ph196, %middle.block277, %bb.aj
  %i.iz = phi i32 [ %i.io, %bb.aj ], [ %i.iq, %middle.block277 ], [ %i.iq, %.lr.ph196 ]
  call void @If_CluMoveVar(ptr noundef nonnull %i.c, i32 noundef %i.iz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef %.0109, i32 noundef %4)
  %i.ja = icmp sgt i32 %.0109, %4
  br i1 %i.ja, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %._crit_edge197
  %i.jb = sext i32 %.0109 to i64                  ; 2 uses
  %i.jc = add nsw i64 %i.jb, 2
  %i.jd = xor i32 %4, -1
  %i.je = add i32 %.0109, %i.jd
  %i.jf = zext i32 %i.je to i64                   ; 3 uses
  %i.jg = sub nsw i64 %i.jc, %i.jf
  %scevgep = getelementptr i8, ptr %13, i64 %i.jg
  %i.jh = add nsw i64 %i.jb, 1
  %i.ji = sub nsw i64 %i.jh, %i.jf
  %scevgep215 = getelementptr i8, ptr %13, i64 %i.ji
  %i.jj = add nuw nsw i64 %i.jf, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %scevgep215, i64 %i.jj, i1 false), !tbaa !80
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %.lr.ph200, %._crit_edge197
  %i.jk = trunc i32 %3 to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.jm = sext i32 %4 to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.jm
  store i8 %i.jk, ptr %i.jn, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %.not138 = icmp eq ptr %11, null
  br i1 %.not138, label %If_CluAdjustBig.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge201
  %i.jo = load i8, ptr %13, align 1, !tbaa !175   ; 8 uses
  %i.jp = sext i8 %i.jo to i32                    ; 4 uses
  %i.jq = icmp slt i8 %i.jo, 6
  br i1 %i.jq, label %If_CluAdjust.exit176, label %bb.al

If_CluAdjust.exit176:                             ; preds = %bb.ak
  %i.jr = load i64, ptr %i.c, align 16, !tbaa !18
  %i.js = shl nuw nsw i32 1, %i.jp
  %i.jt = zext nneg i32 %i.js to i64              ; 2 uses
  %notmask.i168 = shl nsw i64 -1, %i.jt
  %i.ju = xor i64 %notmask.i168, -1
  %i.jv = and i64 %i.jr, %i.ju                    ; 2 uses
  %i.jw = icmp eq i8 %i.jo, 0
  %i.jx = shl nuw nsw i64 %i.jv, %i.jt
  %i.jy = select i1 %i.jw, i64 %i.jx, i64 0
  %.030.i169 = or i64 %i.jy, %i.jv                ; 2 uses
  %i.jz = icmp ult i8 %i.jo, 2
  %i.ka = shl i64 %.030.i169, 2
  %i.kb = select i1 %i.jz, i64 %i.ka, i64 0
  %.131.i170 = or i64 %i.kb, %.030.i169           ; 2 uses
  %i.kc = icmp ult i8 %i.jo, 3
  %i.kd = shl i64 %.131.i170, 4
  %i.ke = select i1 %i.kc, i64 %i.kd, i64 0
  %.232.i171 = or i64 %i.ke, %.131.i170           ; 2 uses
  %i.kf = icmp ult i8 %i.jo, 4
  %i.kg = shl i64 %.232.i171, 8
  %i.kh = select i1 %i.kf, i64 %i.kg, i64 0
  %.333.i172 = or i64 %i.kh, %.232.i171           ; 2 uses
  %i.ki = icmp ult i8 %i.jo, 5
  %i.kj = shl i64 %.333.i172, 16
  %i.kk = select i1 %i.ki, i64 %i.kj, i64 0
  %.434.i173 = or i64 %i.kk, %.333.i172           ; 2 uses
  %i.kl = icmp ult i8 %i.jo, 6
  %i.km = shl i64 %.434.i173, 32
  %i.kn = select i1 %i.kl, i64 %i.km, i64 0
  %.5.i174 = or i64 %i.kn, %.434.i173
  store i64 %.5.i174, ptr %11, align 8, !tbaa !18
  br label %If_CluCopy.exit183

bb.al:                                            ; preds = %bb.ak
  %i.ko = add nsw i32 %i.jp, -6                   ; 2 uses
  %.not190 = icmp eq i32 %i.ko, 31
  br i1 %.not190, label %If_CluCopy.exit183, label %.lr.ph.preheader.i177

.lr.ph.preheader.i177:                            ; preds = %bb.al
  %i.kp = shl nuw i32 1, %i.ko
  %wide.trip.count.i178 = zext nneg i32 %i.kp to i64
  %i.kq = shl nuw nsw i64 %wide.trip.count.i178, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.kq, i1 false), !tbaa !18
  br label %If_CluCopy.exit183

If_CluCopy.exit183:                               ; preds = %.lr.ph.preheader.i177, %bb.al, %If_CluAdjust.exit176
  %i.kr = icmp ne i32 %i.l, %i.jp
  %i.ks = call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -128, 128) %i.jp, i32 6) ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %i.l
  %or.cond.i = select i1 %i.kr, i1 %i.kt, i1 false
  br i1 %or.cond.i, label %.lr.ph.i184.preheader, label %If_CluAdjustBig.exit

.lr.ph.i184.preheader:                            ; preds = %If_CluCopy.exit183
  %i.ku = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %.lr.ph.i184.preheader, %If_CluCopy.exit.i
  %.012.i185 = phi i32 [ %i.ln, %If_CluCopy.exit.i ], [ %i.ks, %.lr.ph.i184.preheader ] ; 3 uses
  %i.kw = icmp samesign ult i32 %.012.i185, 7
  %i.kx = add nsw i32 %.012.i185, -6
  %i.ky = shl nuw i32 1, %i.kx
  %i.kz = select i1 %i.kw, i32 1, i32 %i.ky       ; 5 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.la ; 4 uses
  %i.lc = icmp sgt i32 %i.kz, 0
  br i1 %i.lc, label %.lr.ph.i.i.preheader, label %If_CluCopy.exit.i

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i184
  %min.iters.check281 = icmp ult i32 %i.kz, 4
  br i1 %min.iters.check281, label %.lr.ph.i.i, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec283 = and i64 %i.la, 2147483644
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next288, %vector.body284 ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index285 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load286 = load <2 x i64>, ptr %i.ld, align 8, !tbaa !18
  %wide.load287 = load <2 x i64>, ptr %i.le, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index285 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <2 x i64> %wide.load286, ptr %i.lf, align 8, !tbaa !18
  store <2 x i64> %wide.load287, ptr %i.lg, align 8, !tbaa !18
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.lh, label %If_CluCopy.exit.i, label %vector.body284, !llvm.loop !328

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %i.li = load i64, ptr %11, align 8, !tbaa !18
  store i64 %i.li, ptr %i.lb, align 8, !tbaa !18
  %exitcond.not.i.i = icmp eq i32 %i.kz, 1
  br i1 %exitcond.not.i.i, label %If_CluCopy.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.lj = load i64, ptr %i.ku, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !18
  %exitcond.not.i.i.1 = icmp eq i32 %i.kz, 2
  br i1 %exitcond.not.i.i.1, label %If_CluCopy.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ll = load i64, ptr %i.kv, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i64 %i.ll, ptr %i.lm, align 8, !tbaa !18
  br label %If_CluCopy.exit.i

If_CluCopy.exit.i:                                ; preds = %vector.body284, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i184
  %i.ln = add nuw nsw i32 %.012.i185, 1           ; 2 uses
  %exitcond.not.i186 = icmp eq i32 %i.ln, %i.l
  br i1 %exitcond.not.i186, label %If_CluAdjustBig.exit, label %.lr.ph.i184, !llvm.loop !329

If_CluAdjustBig.exit:                             ; preds = %If_CluCopy.exit.i, %If_CluCopy.exit183, %._crit_edge201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false), !tbaa.struct !330
  %.not139 = icmp eq ptr %9, null
  br i1 %.not139, label %bb.an, label %bb.am

bb.am:                                            ; preds = %If_CluAdjustBig.exit
  %i.lo = load i64, ptr %i.c, align 16, !tbaa !18
  store i64 %i.lo, ptr %9, align 8, !tbaa !18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %If_CluAdjustBig.exit
  %.not140 = icmp eq ptr %10, null
  br i1 %.not140, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 %.035.i, ptr %10, align 8, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ab
  %i.lp = phi i8 [ %i.gp, %bb.an ], [ %i.gp, %bb.ao ], [ %i.dz, %bb.ab ]
  %.not141 = icmp eq ptr %.0112, null
  br i1 %.not141, label %If_CluSupport.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %14 = and i8 %i.lp, 15
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !80
  %17 = shl i8 %16, 4
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i32
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 2
  %20 = load <4 x i8>, ptr %i.lq, align 1, !tbaa !80
  %i.lr = and <4 x i8> %20, splat (i8 15)
  %i.ls = zext nneg <4 x i8> %i.lr to <4 x i32>
  %i.lt = shl nuw nsw <4 x i32> %i.ls, <i32 8, i32 12, i32 16, i32 20>
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %22 = load i8, ptr %21, align 1, !tbaa !80
  %i.lu = and i8 %22, 15
  %i.lv = zext nneg i8 %i.lu to i32
  %i.lw = shl nuw nsw i32 %i.lv, 24
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %24 = load i8, ptr %23, align 1, !tbaa !80
  %25 = and i8 %24, 15
  %i.lx = zext nneg i8 %25 to i32
  %i.ly = shl nuw i32 %i.lx, 28
  %26 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.lt)
  %op.rdx.a = or i32 %26, %19
  %op.rdx292 = or disjoint i32 %i.lw, %i.ly
  %op.rdx293 = or i32 %op.rdx.a, %op.rdx292
  br label %If_CluSupport.exit.thread.sink.split

If_CluSupport.exit.thread.sink.split:             ; preds = %bb.aa, %bb.aq
  %.sink = phi i32 [ %op.rdx293, %bb.aq ], [ %i.dy, %bb.aa ]
  store i32 %.sink, ptr %.0112, align 4, !tbaa !10
  br label %If_CluSupport.exit.thread

If_CluSupport.exit.thread:                        ; preds = %If_CluSupport.exit.thread.sink.split, %If_CluCopy.exit151, %.lr.ph.i152, %bb.ap, %bb.z, %If_CluSupport.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @If_CluGrp2Uns(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %1 = load i8, ptr %0, align 1, !tbaa !80
  %2 = and i8 %1, 15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !80
  %5 = shl i8 %4, 4
  %6 = or disjoint i8 %5, %2
  %7 = zext i8 %6 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load <4 x i8>, ptr %i.a, align 1, !tbaa !80
  %i.c = and <4 x i8> %i.b, splat (i8 15)
  %i.d = zext nneg <4 x i8> %i.c to <4 x i32>
  %i.e = shl nuw nsw <4 x i32> %i.d, <i32 8, i32 12, i32 16, i32 20>
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %9 = load i8, ptr %8, align 1, !tbaa !80
  %10 = and i8 %9, 15
  %11 = zext nneg i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 24
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %14 = load i8, ptr %13, align 1, !tbaa !80
  %15 = and i8 %14, 15
  %16 = zext nneg i8 %15 to i32
  %17 = shl nuw i32 %16, 28
  %i.f = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.e)
  %op.rdx = or i32 %i.f, %7
  %op.rdx11 = or disjoint i32 %12, %17
  %op.rdx12 = or i32 %op.rdx, %op.rdx11
  ret i32 %op.rdx12
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecInAny(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph45.preheader, label %.loopexit41

.lr.ph45.preheader:                               ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %wide.trip.count53 = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph45

.loopexit:                                        ; preds = %bb.b, %.lr.ph45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %.loopexit41, label %.lr.ph45, !llvm.loop !331

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.loopexit
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next51, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 3 uses
  %i.c = icmp samesign ult i64 %indvars.iv.next51, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph45
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv50
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = and i64 %i.e, %0                         ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.f, %i.i
  %i.k = or i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv50
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = and i64 %i.m, %0                         ; 2 uses
  %i.o = shl i64 %i.n, %i.i
  %i.p = or i64 %i.o, %i.n
  %sext = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext, 32                 ; 2 uses
  %sext36 = shl i64 %i.k, 32
  %i.r = ashr exact i64 %sext36, 32               ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count53
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !332

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv47 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next48, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv47
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = and i64 %i.t, %i.q                       ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = zext nneg i32 %i.w to i64                ; 4 uses
  %i.y = shl i64 %i.u, %i.x
  %i.z = or i64 %i.y, %i.u
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv47
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = and i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = lshr i64 %i.ad, %i.x
  %i.af = or i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = and i64 %i.t, %i.r                      ; 2 uses
  %i.ai = shl i64 %i.ah, %i.x
  %i.aj = or i64 %i.ai, %i.ah
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = and i64 %i.ac, %i.r                     ; 2 uses
  %i.am = lshr i64 %i.al, %i.x
  %i.an = or i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = icmp eq i32 %i.aa, %i.ag                ; 2 uses
  %i.aq = icmp eq i32 %i.aa, %i.ak                ; 2 uses
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %.loopexit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp eq i32 %i.aa, %i.ao
  %i.as = or i1 %i.aq, %i.ap
  %or.cond40 = select i1 %i.as, i1 %i.ar, i1 false
  br i1 %or.cond40, label %.loopexit41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = icmp eq i32 %i.ag, %i.ak
  %i.au = icmp eq i32 %i.ag, %i.ao
  %or.cond39 = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond39, label %.loopexit41, label %bb.b

.loopexit41:                                      ; preds = %.loopexit, %bb.e, %bb.d, %bb.c, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.loopexit ]
  ret i32 %.032
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecIn(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 6148914691236517205
  %i.b = and i64 %0, -6148914691236517206         ; 2 uses
  %i.c = lshr exact i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, %i.b
  %i.e = icmp sgt i32 %1, 1
  %sext = mul i64 %i.a, 12884901888
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %sext34 = shl i64 %i.d, 32
  %i.g = ashr exact i64 %sext34, 32               ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit39

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit39, label %.lr.ph, !llvm.loop !333

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = and i64 %i.i, %i.f                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = and i64 %i.r, %i.f                       ; 2 uses
  %i.t = lshr i64 %i.s, %i.m
  %i.u = or i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = and i64 %i.i, %i.g                       ; 2 uses
  %i.x = shl i64 %i.w, %i.m
  %i.y = or i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = and i64 %i.r, %i.g                      ; 2 uses
  %i.ab = lshr i64 %i.aa, %i.m
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = icmp eq i32 %i.p, %i.v                  ; 2 uses
  %i.af = icmp eq i32 %i.p, %i.z                  ; 2 uses
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.loopexit39, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ag = icmp eq i32 %i.p, %i.ad
  %i.ah = or i1 %i.af, %i.ae
  %or.cond38 = select i1 %i.ah, i1 %i.ag, i1 false
  br i1 %or.cond38, label %.loopexit39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.v, %i.z
  %i.aj = icmp eq i32 %i.v, %i.ad
  %or.cond37 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond37, label %.loopexit39, label %bb.b

.loopexit39:                                      ; preds = %bb.b, %bb.d, %bb.c, %.lr.ph, %bb.a
  %.031 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %.lr.ph ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.031
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecInU(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 6148914691236517205
  %i.b = and i64 %0, -6148914691236517206         ; 2 uses
  %i.c = lshr exact i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, %i.b
  %i.e = icmp sgt i32 %1, 1
  %sext = mul i64 %i.a, 12884901888
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %sext25 = shl i64 %i.d, 32
  %i.g = ashr exact i64 %sext25, 32               ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit28

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit28, label %.lr.ph, !llvm.loop !334

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = and i64 %i.i, %i.f                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
end_hunk_0
