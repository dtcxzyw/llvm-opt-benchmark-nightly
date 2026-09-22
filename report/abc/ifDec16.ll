Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluCheck:bb.a
  %i.jk = trunc i32 %3 to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 2
  %i.jm = sext i32 %4 to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.jm
  store i8 %i.jk, ptr %i.jn, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %.not138 = icmp eq ptr %11, null
  br i1 %.not138, label %If_CluAdjustBig.exit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge201
  %i.jo = load i8, ptr %13, align 1, !tbaa !78    ; 8 uses
  %i.jp = sext i8 %i.jo to i32                    ; 4 uses
  %i.jq = icmp slt i8 %i.jo, 6
  br i1 %i.jq, label %If_CluAdjust.exit176, label %bb.al

If_CluAdjust.exit176:                             ; preds = %bb.ak
  %i.jr = load i64, ptr %i.c, align 16, !tbaa !44
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
  store i64 %.5.i174, ptr %11, align 8, !tbaa !44
  br label %If_CluCopy.exit183

bb.al:                                            ; preds = %bb.ak
  %i.ko = add nsw i32 %i.jp, -6                   ; 2 uses
  %.not190 = icmp eq i32 %i.ko, 31
  br i1 %.not190, label %If_CluCopy.exit183, label %.lr.ph.preheader.i177

.lr.ph.preheader.i177:                            ; preds = %bb.al
  %i.kp = shl nuw i32 1, %i.ko
  %wide.trip.count.i178 = zext nneg i32 %i.kp to i64
  %i.kq = shl nuw nsw i64 %wide.trip.count.i178, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, ptr noundef nonnull align 16 dereferenceable(1) %i.c, i64 %i.kq, i1 false), !tbaa !44
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
  %wide.load286 = load <2 x i64>, ptr %i.ld, align 8, !tbaa !44
  %wide.load287 = load <2 x i64>, ptr %i.le, align 8, !tbaa !44
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index285 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <2 x i64> %wide.load286, ptr %i.lf, align 8, !tbaa !44
  store <2 x i64> %wide.load287, ptr %i.lg, align 8, !tbaa !44
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.lh, label %If_CluCopy.exit.i, label %vector.body284, !llvm.loop !329

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %i.li = load i64, ptr %11, align 8, !tbaa !44
  store i64 %i.li, ptr %i.lb, align 8, !tbaa !44
  %exitcond.not.i.i = icmp eq i32 %i.kz, 1
  br i1 %exitcond.not.i.i, label %If_CluCopy.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.lj = load i64, ptr %i.ku, align 8, !tbaa !44
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !44
  %exitcond.not.i.i.1 = icmp eq i32 %i.kz, 2
  br i1 %exitcond.not.i.i.1, label %If_CluCopy.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ll = load i64, ptr %i.kv, align 8, !tbaa !44
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i64 %i.ll, ptr %i.lm, align 8, !tbaa !44
  br label %If_CluCopy.exit.i

If_CluCopy.exit.i:                                ; preds = %vector.body284, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i184
  %i.ln = add nuw nsw i32 %.012.i185, 1           ; 2 uses
  %exitcond.not.i186 = icmp eq i32 %i.ln, %i.l
  br i1 %exitcond.not.i186, label %If_CluAdjustBig.exit, label %.lr.ph.i184, !llvm.loop !330

If_CluAdjustBig.exit:                             ; preds = %If_CluCopy.exit.i, %If_CluCopy.exit183, %._crit_edge201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false), !tbaa.struct !81
  %.not139 = icmp eq ptr %9, null
  br i1 %.not139, label %bb.an, label %bb.am

bb.am:                                            ; preds = %If_CluAdjustBig.exit
  %i.lo = load i64, ptr %i.c, align 16, !tbaa !44
  store i64 %i.lo, ptr %9, align 8, !tbaa !44
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %If_CluAdjustBig.exit
  %.not140 = icmp eq ptr %10, null
  br i1 %.not140, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 %.035.i, ptr %10, align 8, !tbaa !44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ab
  %i.lp = phi i8 [ %i.gp, %bb.an ], [ %i.gp, %bb.ao ], [ %i.dz, %bb.ab ]
  %.not141 = icmp eq ptr %.0112, null
  br i1 %.not141, label %If_CluSupport.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lr = load <4 x i8>, ptr %i.lq, align 1, !tbaa !71
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !71
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !71
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !71
  %i.ly = and <4 x i8> %i.lr, splat (i8 15)
  %i.lz = zext nneg <4 x i8> %i.ly to <4 x i32>
  %i.ma = shl nuw <4 x i32> %i.lz, <i32 4, i32 8, i32 12, i32 16>
  %i.mb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ma)
  %i.mc = and i8 %i.lt, 15
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = shl nuw nsw i32 %i.md, 20
  %op.rdx = or i32 %i.mb, %i.me
  %i.mf = and i8 %i.lv, 15
  %i.mg = zext nneg i8 %i.mf to i32
  %i.mh = shl nuw nsw i32 %i.mg, 24
  %i.mi = zext i8 %i.lx to i32
  %i.mj = shl i32 %i.mi, 28
  %op.rdx292 = or disjoint i32 %i.mh, %i.mj
  %op.rdx293 = or i32 %op.rdx, %op.rdx292
  %i.mk = and i8 %i.lp, 15
  %i.ml = zext nneg i8 %i.mk to i32
  %op.rdx294 = or disjoint i32 %op.rdx293, %i.ml
  br label %If_CluSupport.exit.thread.sink.split

If_CluSupport.exit.thread.sink.split:             ; preds = %bb.aa, %bb.aq
  %.sink = phi i32 [ %op.rdx294, %bb.aq ], [ %i.dy, %bb.aa ]
  store i32 %.sink, ptr %.0112, align 4, !tbaa !35
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
  %1 = load <4 x i8>, ptr %0, align 1, !tbaa !71
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load <4 x i8>, ptr %2, align 1, !tbaa !71
  %4 = and <4 x i8> %1, splat (i8 15)
  %5 = zext nneg <4 x i8> %4 to <4 x i32>
  %6 = shl nuw nsw <4 x i32> %5, <i32 0, i32 4, i32 8, i32 12>
  %7 = and <4 x i8> %3, splat (i8 15)
  %8 = zext nneg <4 x i8> %7 to <4 x i32>
  %9 = shl nuw <4 x i32> %8, <i32 16, i32 20, i32 24, i32 28>
  %rdx.op = or disjoint <4 x i32> %6, %9
  %i.a = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %rdx.op)
  ret i32 %i.a
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = and i64 %i.e, %0                         ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.f, %i.i
  %i.k = or i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv50
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
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
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.u = and i64 %i.t, %i.q                       ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = zext nneg i32 %i.w to i64                ; 4 uses
  %i.y = shl i64 %i.u, %i.x
  %i.z = or i64 %i.y, %i.u
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv47
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = and i64 %i.i, %i.f                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44   ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = and i64 %i.i, %i.f                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
end_hunk_0
begin_hunk_1_@If_CluCheckExt3:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %7, align 1
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %7, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %12, i64 18, i1 false)
  %i.a = icmp sgt i8 %.sroa.0.0.copyload, 0
  %i.b = zext i1 %i.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define float @If_CluDelayMax(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !78      ; 4 uses
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i8 %i.a to i64     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i8 %i.a, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.078 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.s, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !71
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !85 ; 2 uses
  %i.j = fcmp ogt float %.078, %i.i
  %i.k = select i1 %i.j, float %.078, float %i.i  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !71
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !85 ; 2 uses
  %i.r = fcmp ogt float %i.k, %i.q
  %i.s = select i1 %i.r, float %i.k, float %i.q   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !25

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i8 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.epil.init
  %i.u = load i8, ptr %i.t, align 1, !tbaa !71
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !85 ; 2 uses
  %i.y = fcmp ogt float %.078.epil.init, %i.x
  %i.z = select i1 %i.y, float %.078.epil.init, float %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.07.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ]
  ret float %.07.lcssa
}

; Function Attrs: nounwind uwtable
define float @If_CutDelayLutStruct(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [18 x float], align 16            ; 14 uses
  %i.b = alloca [18 x i32], align 16              ; 12 uses
  %4 = alloca %struct.If_Grp_t_, align 1          ; 10 uses
  %5 = alloca %struct.If_Grp_t_, align 1          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %4, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %5, i8 0, i64 18, i1 false)
  %i.c = getelementptr i8, ptr %1, i64 36         ; 3 uses
  %.val77 = load i64, ptr %i.c, align 4           ; 3 uses
  %i.d = trunc i64 %.val77 to i32                 ; 3 uses
  %i.e = lshr i32 %i.d, 24                        ; 14 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %2) ; 0 uses
  br label %If_CluDelayMax.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %2, align 1, !tbaa !71      ; 2 uses
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -48                    ; 6 uses
  %i.k = add i8 %i.h, -55
  %or.cond = icmp ult i8 %i.k, -4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.j) ; 0 uses
  br label %If_CluDelayMax.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !71    ; 2 uses
  %i.o = sext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -48                    ; 6 uses
  %i.q = add i8 %i.n, -55
  %or.cond3 = icmp ult i8 %i.q, -4
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.p) ; 0 uses
  br label %If_CluDelayMax.exit

bb.g:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.p, %i.j
  %.not71 = icmp slt i32 %i.e, %i.s
  br i1 %.not71, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.t = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %.not118 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not118, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr i8, ptr %0, i64 40
  %.val78 = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.v = getelementptr i8, ptr %.val78, i64 8
  %.val78.val = load ptr, ptr %i.v, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %i.p) ; 0 uses
  br label %If_CluDelayMax.exit

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val78.val, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %.not72 = icmp eq ptr %i.ab, null
  br i1 %.not72, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 92
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !360
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.ad, ptr %i.ae, align 4, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !346

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.af = tail call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.j, i32 range(i32 -176, -2147483648) %i.p)
  %.not73 = icmp sgt i32 %i.e, %i.af
  br i1 %.not73, label %bb.l, label %iter.check

.critedge.thread:                                 ; preds = %.preheader
  %i.ag = tail call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.j, i32 range(i32 -176, -2147483648) %i.p)
  %.not73146 = icmp sgt i32 %i.e, %i.ag
  br i1 %.not73146, label %bb.l, label %If_CluDelayMax.exit

iter.check:                                       ; preds = %.critedge
  %i.ah = lshr i64 %.val77, 24
  %i.ai = and i64 %i.ah, 255
  %i.aj = getelementptr [4 x i8], ptr %i.t, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.al = zext nneg i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 1, i64 %i.al, i1 false), !tbaa !71
  %wide.trip.count128 = zext nneg i32 %i.e to i64
  %min.iters.check = icmp ult i32 %i.d, 134217728
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check155 = icmp ult i32 %i.d, 536870912
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 224          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <16 x i8> %vec.ind, ptr %i.an, align 1, !tbaa !71
  store <16 x i8> %step.add, ptr %i.ao, align 1, !tbaa !71
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !361

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec156 = and i64 %wide.trip.count, 248       ; 3 uses
  %i.aq = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index157 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next159, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind158 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next160, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index157
  store <8 x i8> %vec.ind158, ptr %i.ar, align 1, !tbaa !71
  %index.next159 = add nuw i64 %index157, 8       ; 2 uses
  %vec.ind.next160 = add <8 x i8> %vec.ind158, splat (i8 8)
  %i.as = icmp eq i64 %index.next159, %n.vec156
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !348

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %n.vec156, %wide.trip.count
  br i1 %cmp.n161, label %.lr.ph.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv125.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec156, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %vec.epilog.scalar.ph ], [ %indvars.iv125.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.at = trunc i64 %indvars.iv125 to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv125
  store i8 %i.at, ptr %i.au, align 1, !tbaa !71
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.lr.ph.i, label %vec.epilog.scalar.ph, !llvm.loop !349

.lr.ph.i:                                         ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aw = icmp eq i32 %i.e, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.k ] ; 3 uses
  %.078.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bl, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !71
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !85 ; 2 uses
  %i.bc = fcmp ogt float %.078.i, %i.bb
  %i.bd = select i1 %i.bc, float %.078.i, float %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !71
  %i.bh = sext i8 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !85 ; 2 uses
  %i.bk = fcmp ogt float %i.bd, %i.bj
  %i.bl = select i1 %i.bk, float %i.bd, float %i.bj ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %If_CluDelayMax.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !25

If_CluDelayMax.exit.loopexit.unr-lcssa:           ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %If_CluDelayMax.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %If_CluDelayMax.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %If_CluDelayMax.exit.loopexit.unr-lcssa ]
  %.078.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bl, %If_CluDelayMax.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod192 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !71
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !85 ; 2 uses
  %i.br = fcmp ogt float %.078.i.epil.init, %i.bq
  %i.bs = select i1 %i.br, float %.078.i.epil.init, float %i.bq
  br label %If_CluDelayMax.exit.loopexit

If_CluDelayMax.exit.loopexit:                     ; preds = %If_CluDelayMax.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa190 = phi float [ %i.bl, %If_CluDelayMax.exit.loopexit.unr-lcssa ], [ %i.bs, %.epil.preheader ]
  %i.bt = fadd float %.lcssa190, 1.000000e+00
  br label %If_CluDelayMax.exit

bb.l:                                             ; preds = %.critedge.thread, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !362 ; 14 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.by = lshr i64 %.val77, 24
  %i.bz = and i64 %i.by, 255                      ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !363 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 24
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !364 ; 2 uses
  br i1 %.not.i.i, label %If_CutTruthWR.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = ashr i32 %.val.pre.i, 1                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !367
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !368
  %i.ch = ashr i32 %i.cc, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !369
  %i.cl = load i32, ptr %i.cb, align 8, !tbaa !370
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !371
  %i.co = and i32 %i.cn, %i.cc
  %i.cp = mul nsw i32 %i.co, %i.cl
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cq
  br label %If_CutTruthWR.exit.i

If_CutTruthWR.exit.i:                             ; preds = %bb.m, %bb.l
  %i.cs = phi ptr [ %i.cr, %bb.m ], [ null, %bb.l ] ; 13 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.bz
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35 ; 5 uses
  %i.cx = and i32 %.val.pre.i, 1
  %.not.i7.i = icmp eq i32 %i.cx, 0
  %i.cy = icmp sgt i32 %i.cw, 0                   ; 2 uses
  br i1 %.not.i7.i, label %.preheader.i.i, label %.preheader14.i.i

.preheader14.i.i:                                 ; preds = %If_CutTruthWR.exit.i
  br i1 %i.cy, label %.lr.ph.preheader.i.i, label %If_CutTruthW.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader14.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cw to i64 ; 5 uses
  %min.iters.check162 = icmp ult i32 %i.cw, 6
  %i.cz = sub i64 %i.ct, %i.bw
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond186 = select i1 %min.iters.check162, i1 true, i1 %diff.check
  br i1 %or.cond186, label %.lr.ph.i.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec164 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next168, %vector.body165 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index166 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x i64>, ptr %i.da, align 8, !tbaa !44
  %wide.load167 = load <2 x i64>, ptr %i.db, align 8, !tbaa !44
  %i.dc = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.dd = xor <2 x i64> %wide.load167, splat (i64 -1)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index166 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x i64> %i.dc, ptr %i.de, align 8, !tbaa !44
  store <2 x i64> %i.dd, ptr %i.df, align 8, !tbaa !44
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.dg, label %middle.block169, label %vector.body165, !llvm.loop !350

middle.block169:                                  ; preds = %vector.body165
  %cmp.n170 = icmp eq i64 %n.vec164, %wide.trip.count.i.i
  br i1 %cmp.n170, label %If_CutTruthW.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block169
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec164, %middle.block169 ] ; 3 uses
  %xtraiter193 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
end_hunk_1
begin_hunk_2_@If_CutDelayLutStruct:bb.a
bb.u:                                             ; preds = %bb.t
  %i.ia = trunc i64 %indvars.iv135 to i8
  %i.ib = load i8, ptr %5, align 1, !tbaa !78     ; 2 uses
  %i.ic = add i8 %i.ib, 1
  store i8 %i.ic, ptr %5, align 1, !tbaa !78
  %i.id = sext i8 %i.ib to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hw, i64 %i.id
  store i8 %i.ia, ptr %i.ie, align 1, !tbaa !71
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next136
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !35
  %.not76.1 = icmp eq i32 %i.ig, 0
  br i1 %.not76.1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ih = trunc i64 %indvars.iv.next136 to i8
  %i.ii = load i8, ptr %5, align 1, !tbaa !78     ; 2 uses
  %i.ij = add i8 %i.ii, 1
  store i8 %i.ij, ptr %5, align 1, !tbaa !78
  %i.ik = sext i8 %i.ii to i64
  %i.il = getelementptr inbounds i8, ptr %i.hw, i64 %i.ik
  store i8 %i.ih, ptr %i.il, align 1, !tbaa !71
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %._crit_edge117.loopexit.unr-lcssa, label %bb.t, !llvm.loop !358

._crit_edge117.loopexit.unr-lcssa:                ; preds = %bb.x
  %lcmp.mod214.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod214.not, label %._crit_edge117.loopexit, label %.epil.preheader211

.epil.preheader211:                               ; preds = %._crit_edge117.loopexit.unr-lcssa, %.lr.ph116
  %indvars.iv135.epil.init = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next136.1, %._crit_edge117.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i64 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv135.epil.init
  %i.in = load i32, ptr %i.im, align 4, !tbaa !35
  %.not76.epil = icmp eq i32 %i.in, 0
  br i1 %.not76.epil, label %bb.y, label %._crit_edge117.loopexit

bb.y:                                             ; preds = %.epil.preheader211
  %i.io = trunc i64 %indvars.iv135.epil.init to i8
  %i.ip = load i8, ptr %5, align 1, !tbaa !78     ; 2 uses
  %i.iq = add i8 %i.ip, 1
  store i8 %i.iq, ptr %5, align 1, !tbaa !78
  %i.ir = sext i8 %i.ip to i64
  %i.is = getelementptr inbounds i8, ptr %i.hw, i64 %i.ir
  store i8 %i.io, ptr %i.is, align 1, !tbaa !71
  br label %._crit_edge117.loopexit

._crit_edge117.loopexit:                          ; preds = %.epil.preheader211, %bb.y, %._crit_edge117.loopexit.unr-lcssa
  %.pre = load i8, ptr %5, align 1, !tbaa !78
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %._crit_edge117.loopexit, %bb.s
  %i.it = phi i8 [ %.pre, %._crit_edge117.loopexit ], [ 0, %bb.s ] ; 2 uses
  %i.iu = trunc nuw i32 %i.e to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 4 uses
  %i.iw = add i8 %i.it, 1
  store i8 %i.iw, ptr %5, align 1, !tbaa !78
  %i.ix = sext i8 %i.it to i64
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %i.ix
  store i8 %i.iu, ptr %i.iy, align 1, !tbaa !71
  %i.iz = load i64, ptr %i.c, align 4
  %i.ja = and i64 %i.iz, -4096
  %i.jb = or disjoint i64 %i.ja, 2
  store i64 %i.jb, ptr %i.c, align 4
  %i.jc = load i8, ptr %5, align 1, !tbaa !78     ; 4 uses
  %i.jd = icmp sgt i8 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.i96, label %If_CluDelayMax.exit

.lr.ph.i96:                                       ; preds = %._crit_edge117
  %wide.trip.count.i97 = zext nneg i8 %i.jc to i64 ; 2 uses
  %xtraiter219 = and i64 %wide.trip.count.i97, 1
  %i.je = icmp eq i8 %i.jc, 1
  br i1 %i.je, label %.epil.preheader218, label %.lr.ph.i96.new

.lr.ph.i96.new:                                   ; preds = %.lr.ph.i96
  %unroll_iter224 = and i64 %wide.trip.count.i97, 126
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i96.new
  %indvars.iv.i98 = phi i64 [ 0, %.lr.ph.i96.new ], [ %indvars.iv.next.i100.1, %bb.z ] ; 3 uses
  %.078.i99 = phi float [ 0.000000e+00, %.lr.ph.i96.new ], [ %i.jt, %bb.z ] ; 2 uses
  %niter225 = phi i64 [ 0, %.lr.ph.i96.new ], [ %niter225.next.1, %bb.z ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.i98
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !71
  %i.jh = sext i8 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !85 ; 2 uses
  %i.jk = fcmp ogt float %.078.i99, %i.jj
  %i.jl = select i1 %i.jk, float %.078.i99, float %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.i98
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !71
  %i.jp = sext i8 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !85 ; 2 uses
  %i.js = fcmp ogt float %i.jl, %i.jr
  %i.jt = select i1 %i.js, float %i.jl, float %i.jr ; 3 uses
  %indvars.iv.next.i100.1 = add nuw nsw i64 %indvars.iv.i98, 2 ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %If_CluDelayMax.exit102.loopexit.unr-lcssa, label %bb.z, !llvm.loop !25

If_CluDelayMax.exit102.loopexit.unr-lcssa:        ; preds = %bb.z
  %lcmp.mod221.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod221.not, label %If_CluDelayMax.exit102.loopexit, label %.epil.preheader218

.epil.preheader218:                               ; preds = %If_CluDelayMax.exit102.loopexit.unr-lcssa, %.lr.ph.i96
  %indvars.iv.i98.epil.init = phi i64 [ 0, %.lr.ph.i96 ], [ %indvars.iv.next.i100.1, %If_CluDelayMax.exit102.loopexit.unr-lcssa ]
  %.078.i99.epil.init = phi float [ 0.000000e+00, %.lr.ph.i96 ], [ %i.jt, %If_CluDelayMax.exit102.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod223 = trunc i8 %i.jc to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv.i98.epil.init
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !71
  %i.jw = sext i8 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !85 ; 2 uses
  %i.jz = fcmp ogt float %.078.i99.epil.init, %i.jy
  %i.ka = select i1 %i.jz, float %.078.i99.epil.init, float %i.jy
  br label %If_CluDelayMax.exit102.loopexit

If_CluDelayMax.exit102.loopexit:                  ; preds = %If_CluDelayMax.exit102.loopexit.unr-lcssa, %.epil.preheader218
  %.lcssa = phi float [ %i.jt, %If_CluDelayMax.exit102.loopexit.unr-lcssa ], [ %i.ka, %.epil.preheader218 ]
  %i.kb = fadd float %.lcssa, 1.000000e+00
  br label %If_CluDelayMax.exit

If_CluDelayMax.exit:                              ; preds = %.critedge.thread, %._crit_edge117, %If_CluDelayMax.exit102.loopexit, %If_CluDelayMax.exit.loopexit, %If_CutTruthW.exit, %bb.h, %bb.f, %bb.d, %bb.b
  %.066 = phi float [ 1.000000e+09, %bb.b ], [ 1.000000e+09, %bb.d ], [ 1.000000e+09, %bb.f ], [ 1.000000e+09, %bb.h ], [ 1.000000e+09, %If_CutTruthW.exit ], [ %i.bt, %If_CluDelayMax.exit.loopexit ], [ %i.kb, %If_CluDelayMax.exit102.loopexit ], [ 1.000000e+00, %._crit_edge117 ], [ 1.000000e+00, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret float %.066
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @If_CluTest() local_unnamed_addr #16 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = distinct !{!5, !34}
!6 = distinct !{!6, !34}
!7 = distinct !{!7, !34}
!8 = distinct !{!8, !34}
!9 = distinct !{!9, !34}
!10 = distinct !{!10, !34}
!11 = distinct !{!11, !34}
!12 = distinct !{!12, !34}
!13 = distinct !{!13, !34}
!14 = distinct !{!14, !34}
!15 = distinct !{!15, !34}
!16 = distinct !{!16, !34}
!17 = distinct !{!17, !34}
!18 = distinct !{!18, !34}
!19 = distinct !{!19, !34}
!20 = distinct !{!20, !34}
!21 = distinct !{!21, !34}
!22 = distinct !{!22, !34}
!23 = distinct !{!23, !34}
!24 = distinct !{!24, !34}
!25 = distinct !{!25, !34}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!31, !31, i64 0}
!36 = !{!"any pointer", !30, i64 0}
!37 = !{!"any p2 pointer", !36, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTS9If_Hte_t_", !36, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"If_Hte_t_", !39, i64 0, !31, i64 8, !31, i64 12, !30, i64 16}
!42 = !{!41, !31, i64 8}
!43 = !{!"long", !30, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 omnipotent char", !36, i64 0}
!46 = !{!"p1 _ZTS9If_Par_t_", !36, i64 0}
!47 = !{!"p1 _ZTS9If_Obj_t_", !36, i64 0}
!48 = !{!"p1 _ZTS10Vec_Ptr_t_", !36, i64 0}
!49 = !{!"float", !30, i64 0}
!50 = !{!"p1 long", !36, i64 0}
!51 = !{!"p1 _ZTS10Vec_Int_t_", !36, i64 0}
!52 = !{!"p1 _ZTS10Vec_Wrd_t_", !36, i64 0}
!53 = !{!"p1 _ZTS12Mem_Fixed_t_", !36, i64 0}
!54 = !{!"p1 _ZTS9If_Set_t_", !36, i64 0}
!55 = !{!"p1 _ZTS12If_DsdMan_t_", !36, i64 0}
!56 = !{!"p1 _ZTS14Hash_IntMan_t_", !36, i64 0}
!57 = !{!"p1 _ZTS10Vec_Str_t_", !36, i64 0}
!58 = !{!"p1 _ZTS10Vec_Mem_t_", !36, i64 0}
!59 = !{!"p1 _ZTS9If_Cut_t_", !36, i64 0}
!60 = !{!"p1 _ZTS10Tim_Man_t_", !36, i64 0}
!61 = !{!"If_Man_t_", !45, i64 0, !46, i64 8, !47, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !30, i64 64, !31, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !31, i64 104, !49, i64 108, !31, i64 112, !31, i64 116, !30, i64 120, !50, i64 152, !31, i64 160, !31, i64 164, !31, i64 168, !51, i64 176, !30, i64 184, !31, i64 568, !31, i64 572, !31, i64 576, !51, i64 584, !51, i64 592, !52, i64 600, !52, i64 608, !52, i64 616, !48, i64 624, !51, i64 632, !31, i64 640, !31, i64 644, !31, i64 648, !30, i64 652, !31, i64 716, !31, i64 720, !31, i64 724, !31, i64 728, !53, i64 736, !53, i64 744, !54, i64 752, !54, i64 760, !54, i64 768, !31, i64 776, !31, i64 780, !30, i64 784, !30, i64 912, !31, i64 1040, !31, i64 1044, !31, i64 1048, !31, i64 1052, !55, i64 1056, !30, i64 1064, !30, i64 1192, !30, i64 1320, !30, i64 1448, !30, i64 1576, !30, i64 1704, !30, i64 1832, !56, i64 1960, !51, i64 1968, !57, i64 1976, !58, i64 1984, !30, i64 1992, !31, i64 2024, !31, i64 2028, !31, i64 2032, !30, i64 2040, !30, i64 2088, !30, i64 2096, !51, i64 2104, !30, i64 2112, !48, i64 2176, !36, i64 2184, !51, i64 2192, !30, i64 2200, !57, i64 2264, !51, i64 2272, !51, i64 2280, !51, i64 2288, !47, i64 2296, !59, i64 2304, !31, i64 2312, !30, i64 2316, !30, i64 2444, !49, i64 2572, !31, i64 2576, !60, i64 2584, !51, i64 2592, !30, i64 2600, !30, i64 2608, !30, i64 2616, !53, i64 2632}
!62 = !{!61, !46, i64 8}
!63 = !{!"p1 _ZTS12If_LibLut_t_", !36, i64 0}
!64 = !{!"p1 _ZTS13If_LibCell_t_", !36, i64 0}
!65 = !{!"p1 float", !36, i64 0}
!66 = !{!"If_Par_t_", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !49, i64 24, !49, i64 28, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 48, !31, i64 52, !31, i64 56, !31, i64 60, !31, i64 64, !31, i64 68, !31, i64 72, !31, i64 76, !31, i64 80, !31, i64 84, !31, i64 88, !31, i64 92, !31, i64 96, !31, i64 100, !31, i64 104, !31, i64 108, !31, i64 112, !31, i64 116, !31, i64 120, !31, i64 124, !31, i64 128, !31, i64 132, !31, i64 136, !31, i64 140, !31, i64 144, !31, i64 148, !31, i64 152, !31, i64 156, !31, i64 160, !31, i64 164, !31, i64 168, !31, i64 172, !31, i64 176, !31, i64 180, !31, i64 184, !31, i64 188, !31, i64 192, !31, i64 196, !31, i64 200, !31, i64 204, !45, i64 208, !31, i64 216, !49, i64 220, !31, i64 224, !31, i64 228, !31, i64 232, !31, i64 236, !31, i64 240, !31, i64 244, !31, i64 248, !31, i64 252, !31, i64 256, !31, i64 260, !31, i64 264, !31, i64 268, !31, i64 272, !31, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !63, i64 296, !64, i64 304, !65, i64 312, !65, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368}
!67 = !{!66, !31, i64 0}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!30, !30, i64 0}
!72 = !{!41, !31, i64 12}
!73 = !{!61, !48, i64 40}
!74 = !{!"Vec_Ptr_t_", !31, i64 0, !31, i64 4, !37, i64 8}
!75 = !{!74, !37, i64 8}
!76 = !{!36, !36, i64 0}
!77 = !{!"If_Grp_t_", !30, i64 0, !30, i64 1, !30, i64 2}
!78 = !{!77, !30, i64 0}
!79 = !{!77, !30, i64 1}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{i64 0, i64 1, !71, i64 1, i64 1, !71, i64 2, i64 16, !71}
!82 = !{!66, !31, i64 140}
!83 = !{!66, !31, i64 144}
!84 = !{i64 0, i64 1, !71, i64 1, i64 16, !71}
!85 = !{!49, !49, i64 0}
!86 = distinct !{!86, !34}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34, !68, !69}
!89 = distinct !{!89, !34, !68}
!90 = distinct !{!90, !70}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34, !68, !69}
!97 = distinct !{!97, !34, !68, !69}
!98 = distinct !{!98, !34, !69, !68}
!99 = distinct !{!99, !34}
!100 = distinct !{!100, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !34, !68, !69}
!104 = distinct !{!104, !34, !68}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = !{!66, !31, i64 84}
!109 = !{!101}
!110 = !{!102}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = !{!"p1 int", !36, i64 0}
!117 = !{!"Vec_Int_t_", !31, i64 0, !31, i64 4, !116, i64 8}
!118 = !{!117, !31, i64 0}
!119 = !{!117, !116, i64 8}
!120 = !{!117, !31, i64 4}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = !{!61, !53, i64 2632}
!128 = !{!74, !31, i64 4}
!129 = !{!66, !31, i64 4}
!130 = !{!74, !31, i64 0}
!131 = !{!41, !39, i64 0}
!132 = distinct !{!132, !34, !68, !69}
!133 = distinct !{!133, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !34, !68, !69}
!137 = distinct !{!137, !34, !68}
!138 = !{!134}
!139 = !{!135}
!140 = distinct !{!140, !34}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !34}
!143 = distinct !{!143, !34, !68, !69}
!144 = distinct !{!144, !34}
!145 = distinct !{!145, !70}
!146 = distinct !{!146, !34, !68, !69}
!147 = distinct !{!147, !34, !68, !69}
!148 = distinct !{!148, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !34, !68, !69}
!152 = distinct !{!152, !34, !68}
!153 = distinct !{!153, !34}
!154 = distinct !{!154, !34, !68, !69}
!155 = distinct !{!155, !34, !68}
!156 = distinct !{!156, !70}
!157 = distinct !{!157, !34, !68, !69}
!158 = distinct !{!158, !34, !68}
!159 = distinct !{!159, !34}
!160 = distinct !{!160, !34, !69, !68}
!161 = !{!149}
!162 = !{!150}
!163 = distinct !{!163, !34, !68, !69}
!164 = distinct !{!164, !34, !68}
!165 = distinct !{!165, !34, !68, !69}
end_hunk_2
