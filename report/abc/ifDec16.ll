Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluCheck:bb.a
  br i1 %i.le, label %If_CluCopy.exit.i, label %vector.body284, !llvm.loop !329

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %i.lf = load i64, ptr %11, align 8, !tbaa !44
  store i64 %i.lf, ptr %i.ky, align 8, !tbaa !44
  %exitcond.not.i.i = icmp eq i32 %i.kw, 1
  br i1 %exitcond.not.i.i, label %If_CluCopy.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.lg = load i64, ptr %i.kr, align 8, !tbaa !44
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %i.lg, ptr %i.lh, align 8, !tbaa !44
  %exitcond.not.i.i.1 = icmp eq i32 %i.kw, 2
  br i1 %exitcond.not.i.i.1, label %If_CluCopy.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.li = load i64, ptr %i.ks, align 8, !tbaa !44
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !44
  br label %If_CluCopy.exit.i

If_CluCopy.exit.i:                                ; preds = %vector.body284, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i184
  %i.lk = add nuw nsw i32 %.012.i185, 1           ; 2 uses
  %exitcond.not.i186 = icmp eq i32 %i.lk, %i.l
  br i1 %exitcond.not.i186, label %If_CluAdjustBig.exit, label %.lr.ph.i184, !llvm.loop !330

If_CluAdjustBig.exit:                             ; preds = %If_CluCopy.exit.i, %If_CluCopy.exit183, %._crit_edge201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %8, ptr noundef nonnull align 1 dereferenceable(18) %13, i64 18, i1 false), !tbaa.struct !81
  %.not139 = icmp eq ptr %9, null
  br i1 %.not139, label %bb.an, label %bb.am

bb.am:                                            ; preds = %If_CluAdjustBig.exit
  %i.ll = load i64, ptr %i.c, align 16, !tbaa !44
  store i64 %i.ll, ptr %9, align 8, !tbaa !44
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %If_CluAdjustBig.exit
  %.not140 = icmp eq ptr %10, null
  br i1 %.not140, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 %.035.i, ptr %10, align 8, !tbaa !44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ab
  %i.lm = phi i8 [ %i.gm, %bb.an ], [ %i.gm, %bb.ao ], [ %i.dw, %bb.ab ]
  %.not141 = icmp eq ptr %.0112, null
  br i1 %.not141, label %If_CluSupport.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lo = load <4 x i8>, ptr %i.ln, align 1, !tbaa !71
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !71
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !71
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !71
  %i.lv = and <4 x i8> %i.lo, splat (i8 15)
  %i.lw = zext nneg <4 x i8> %i.lv to <4 x i32>
  %i.lx = shl nuw <4 x i32> %i.lw, <i32 4, i32 8, i32 12, i32 16>
  %i.ly = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.lx)
  %i.lz = and i8 %i.lq, 15
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = shl nuw nsw i32 %i.ma, 20
  %op.rdx = or i32 %i.ly, %i.mb
  %i.mc = and i8 %i.ls, 15
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = shl nuw nsw i32 %i.md, 24
  %i.mf = zext i8 %i.lu to i32
  %i.mg = shl i32 %i.mf, 28
  %op.rdx292 = or disjoint i32 %i.me, %i.mg
  %op.rdx293 = or i32 %op.rdx, %op.rdx292
  %i.mh = and i8 %i.lm, 15
  %i.mi = zext nneg i8 %i.mh to i32
  %op.rdx294 = or disjoint i32 %op.rdx293, %i.mi
  br label %If_CluSupport.exit.thread.sink.split

If_CluSupport.exit.thread.sink.split:             ; preds = %bb.aa, %bb.aq
  %.sink = phi i32 [ %op.rdx294, %bb.aq ], [ %i.dv, %bb.aa ]
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
  %i.a = load <8 x i8>, ptr %0, align 1, !tbaa !71
  %i.b = and <8 x i8> %i.a, splat (i8 15)
  %i.c = zext nneg <8 x i8> %i.b to <8 x i32>
  %i.d = shl nuw <8 x i32> %i.c, <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.e = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.d)
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecInAny(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph44.preheader, label %.loopexit40

.lr.ph44.preheader:                               ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %wide.trip.count52 = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph44

.loopexit:                                        ; preds = %bb.b, %.lr.ph44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.loopexit40, label %.lr.ph44, !llvm.loop !331

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %.loopexit
  %indvars.iv49 = phi i64 [ 0, %.lr.ph44.preheader ], [ %indvars.iv.next50, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph44.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 3 uses
  %i.c = icmp samesign ult i64 %indvars.iv.next50, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph44
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv49
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = and i64 %i.e, %0                         ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv49 to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = lshr i64 %i.f, %i.i
  %i.k = or i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv49
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
  %i.n = and i64 %i.m, %0                         ; 2 uses
  %i.o = shl i64 %i.n, %i.i
  %i.p = or i64 %i.o, %i.n
  %i.q = shl i64 %i.p, 32
  %i.r = ashr exact i64 %i.q, 32                  ; 2 uses
  %i.s = shl i64 %i.k, 32
  %i.t = ashr exact i64 %i.s, 32                  ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count52
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !332

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv46 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next47, %bb.b ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv46
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = and i64 %i.v, %i.r                       ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = zext nneg i32 %i.y to i64                ; 4 uses
  %i.aa = shl i64 %i.w, %i.z
  %i.ab = or i64 %i.aa, %i.w
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv46
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = and i64 %i.ae, %i.r                     ; 2 uses
  %i.ag = lshr i64 %i.af, %i.z
  %i.ah = or i64 %i.ag, %i.af
  %i.ai = trunc i64 %i.ah to i32                  ; 3 uses
  %i.aj = and i64 %i.v, %i.t                      ; 2 uses
  %i.ak = shl i64 %i.aj, %i.z
  %i.al = or i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = and i64 %i.ae, %i.t                     ; 2 uses
  %i.ao = lshr i64 %i.an, %i.z
  %i.ap = or i64 %i.ao, %i.an
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = icmp eq i32 %i.ac, %i.ai                ; 2 uses
  %i.as = icmp eq i32 %i.ac, %i.am                ; 2 uses
  %or.cond = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond, label %.loopexit40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp eq i32 %i.ac, %i.aq
  %i.au = or i1 %i.as, %i.ar
  %or.cond39 = select i1 %i.au, i1 %i.at, i1 false
  br i1 %or.cond39, label %.loopexit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = icmp eq i32 %i.ai, %i.am
  %i.aw = icmp eq i32 %i.ai, %i.aq
  %or.cond38 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond38, label %.loopexit40, label %bb.b

.loopexit40:                                      ; preds = %.loopexit, %bb.e, %bb.d, %bb.c, %bb.a
  %.032 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.loopexit ]
  ret i32 %.032
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecIn(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = and i64 %0, 6148914691236517205
  %i.a = and i64 %0, -6148914691236517206         ; 2 uses
  %i.b = lshr exact i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, %i.a
  %3 = icmp sgt i32 %1, 1
  %i.d = mul i64 %2, 12884901888
  %i.e = ashr exact i64 %i.d, 32                  ; 2 uses
  %i.f = shl i64 %i.c, 32
  %i.g = ashr exact i64 %i.f, 32                  ; 2 uses
  br i1 %3, label %.lr.ph.preheader, label %.loopexit38

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit38, label %.lr.ph, !llvm.loop !333

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = and i64 %i.i, %i.e                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = and i64 %i.r, %i.e                       ; 2 uses
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
  br i1 %or.cond, label %.loopexit38, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ag = icmp eq i32 %i.p, %i.ad
  %i.ah = or i1 %i.af, %i.ae
  %or.cond37 = select i1 %i.ah, i1 %i.ag, i1 false
  br i1 %or.cond37, label %.loopexit38, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %i.v, %i.z
  %i.aj = icmp eq i32 %i.v, %i.ad
  %or.cond36 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond36, label %.loopexit38, label %bb.b

.loopexit38:                                      ; preds = %bb.b, %bb.d, %bb.c, %.lr.ph, %bb.a
  %.031 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %.lr.ph ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.031
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecInU(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = and i64 %0, 6148914691236517205
  %i.a = and i64 %0, -6148914691236517206         ; 2 uses
  %i.b = lshr exact i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, %i.a
  %3 = icmp sgt i32 %1, 1
  %i.d = mul i64 %2, 12884901888
  %i.e = ashr exact i64 %i.d, 32                  ; 2 uses
  %i.f = shl i64 %i.c, 32
  %i.g = ashr exact i64 %i.f, 32                  ; 2 uses
  br i1 %3, label %.lr.ph.preheader, label %.loopexit27

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit27, label %.lr.ph, !llvm.loop !334

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = and i64 %i.i, %i.e                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = and i64 %i.r, %i.e                       ; 2 uses
  %i.t = lshr i64 %i.s, %i.m
  %i.u = or i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i64 %i.i, %i.g                       ; 2 uses
  %i.x = shl i64 %i.w, %i.m
  %i.y = or i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i64 %i.r, %i.g                      ; 2 uses
  %i.ab = lshr i64 %i.aa, %i.m
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp eq i32 %i.p, %i.v
  %i.af = icmp eq i32 %i.p, %i.z
  %i.ag = icmp eq i32 %i.p, %i.ad
  %i.ah = select i1 %i.ae, i1 true, i1 %i.ag
  %or.cond26 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond26, label %.loopexit27, label %bb.b

.loopexit27:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.023 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.023
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecOut(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i64 %0, -1
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !335

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 4 uses
  %i.e = and i64 %i.d, %0
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %i.d, %i.a
  %i.h = icmp eq i64 %i.g, 0
  %or.cond22 = or i1 %i.f, %i.h
  br i1 %or.cond22, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = xor i64 %i.d, -1
  %i.j = and i64 %0, %i.i
  %i.k = icmp eq i64 %i.j, 0
  %i.l = or i64 %i.d, %0
  %i.m = icmp eq i64 %i.l, -1
  %or.cond = or i1 %i.k, %i.m
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, 2) i32 @If_CluCheckDecOutU(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !336

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = and i64 %0, %i.d
  %i.f = icmp eq i64 %i.e, 0
  %i.g = or i64 %i.c, %0
  %i.h = icmp eq i64 %i.g, -1
  %or.cond = or i1 %i.f, %i.h
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck45(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.If_Grp_t_, align 1          ; 3 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.If_Grp_t_, align 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @If_CluCheck(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %6, ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0)
  %.sroa.0.0.copyload = load i8, ptr %6, align 1, !tbaa !71 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.c = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.c, label %If_CluCheckDecOutU.exit, label %If_CluAdjust.exit

If_CluAdjust.exit:                                ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp eq i8 %.sroa.0.0.copyload, 6
  br i1 %i.e, label %If_CluAdjust.exit19.thread, label %If_CluAdjust.exit19

If_CluAdjust.exit19:                              ; preds = %If_CluAdjust.exit
  %i.f = zext nneg i8 %.sroa.0.0.copyload to i32
  %i.g = shl nuw i32 1, %i.f
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i11 = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i11, -1
  %i.j = and i64 %i.d, %i.i                       ; 2 uses
  %i.k = icmp eq i8 %.sroa.0.0.copyload, 1
  %i.l = shl i64 %i.j, 2
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  %.131.i13 = or i64 %i.m, %i.j                   ; 2 uses
  %i.n = icmp ult i8 %.sroa.0.0.copyload, 3
  %i.o = shl i64 %.131.i13, 4
  %i.p = select i1 %i.n, i64 %i.o, i64 0
  %.232.i14 = or i64 %i.p, %.131.i13              ; 2 uses
  %i.q = icmp ult i8 %.sroa.0.0.copyload, 4
  %i.r = shl i64 %.232.i14, 8
  %i.s = select i1 %i.q, i64 %i.r, i64 0
  %.333.i15 = or i64 %i.s, %.232.i14              ; 2 uses
  %i.t = icmp ult i8 %.sroa.0.0.copyload, 5
  %i.u = shl i64 %.333.i15, 16
  %i.v = select i1 %i.t, i64 %i.u, i64 0
  %.434.i16 = or i64 %i.v, %.333.i15              ; 2 uses
  %i.w = icmp ult i8 %.sroa.0.0.copyload, 6
  %i.x = shl i64 %.434.i16, 32
  %i.y = select i1 %i.w, i64 %i.x, i64 0
  %.5.i17 = or i64 %i.y, %.434.i16
  %i.z = icmp slt i8 %.sroa.0.0.copyload, 5
  br i1 %i.z, label %If_CluCheckDecOutU.exit, label %If_CluAdjust.exit19.thread

If_CluAdjust.exit19.thread:                       ; preds = %If_CluAdjust.exit, %If_CluAdjust.exit19
  %.035.i1833 = phi i64 [ %.5.i17, %If_CluAdjust.exit19 ], [ %i.d, %If_CluAdjust.exit ] ; 30 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 140
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !82
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %If_CluCheckDecOut.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %If_CluAdjust.exit19.thread
  %i.ae = and i64 %.035.i1833, -6148914691236517206
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %.035.i1833, -6148914691236517206
  %i.ah = icmp eq i64 %i.ag, -6148914691236517206
  %or.cond22.i = or i1 %i.af, %i.ah
  br i1 %or.cond22.i, label %If_CluCheckDecOutU.exit, label %bb.f

.lr.ph.i.1:                                       ; preds = %bb.f
  %i.ai = and i64 %.035.i1833, -3689348814741910324
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = and i64 %.035.i1833, -3689348814741910324
  %i.al = icmp eq i64 %i.ak, -3689348814741910324
  %or.cond22.i.1 = or i1 %i.aj, %i.al
  br i1 %or.cond22.i.1, label %If_CluCheckDecOutU.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.1
  %i.am = and i64 %.035.i1833, 3689348814741910323
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = and i64 %.035.i1833, 3689348814741910323
  %i.ap = icmp eq i64 %i.ao, 3689348814741910323
  %or.cond.i.1 = or i1 %i.an, %i.ap
  br i1 %or.cond.i.1, label %If_CluCheckDecOutU.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.b
  %i.aq = and i64 %.035.i1833, -1085102592571150096
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = and i64 %.035.i1833, -1085102592571150096
  %i.at = icmp eq i64 %i.as, -1085102592571150096
  %or.cond22.i.2 = or i1 %i.ar, %i.at
  br i1 %or.cond22.i.2, label %If_CluCheckDecOutU.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.2
  %i.au = and i64 %.035.i1833, 1085102592571150095
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = and i64 %.035.i1833, 1085102592571150095
  %i.ax = icmp eq i64 %i.aw, 1085102592571150095
  %or.cond.i.2 = or i1 %i.av, %i.ax
  br i1 %or.cond.i.2, label %If_CluCheckDecOutU.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.c
  %i.ay = and i64 %.035.i1833, -71777214294589696
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = and i64 %.035.i1833, -71777214294589696
  %i.bb = icmp eq i64 %i.ba, -71777214294589696
  %or.cond22.i.3 = or i1 %i.az, %i.bb
  br i1 %or.cond22.i.3, label %If_CluCheckDecOutU.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.3
  %i.bc = and i64 %.035.i1833, 71777214294589695
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = and i64 %.035.i1833, 71777214294589695
  %i.bf = icmp eq i64 %i.be, 71777214294589695
  %or.cond.i.3 = or i1 %i.bd, %i.bf
  br i1 %or.cond.i.3, label %If_CluCheckDecOutU.exit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.d
  %i.bg = and i64 %.035.i1833, -281470681808896
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = and i64 %.035.i1833, -281470681808896
  %i.bj = icmp eq i64 %i.bi, -281470681808896
  %or.cond22.i.4 = or i1 %i.bh, %i.bj
  br i1 %or.cond22.i.4, label %If_CluCheckDecOutU.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.4
  %i.bk = and i64 %.035.i1833, 281470681808895
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i64 %.035.i1833, 281470681808895
  %i.bn = icmp eq i64 %i.bm, 281470681808895
  %or.cond.i.4 = or i1 %i.bl, %i.bn
  br i1 %or.cond.i.4, label %If_CluCheckDecOutU.exit, label %If_CluCheckDecOut.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bo = and i64 %.035.i1833, 6148914691236517205
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = and i64 %.035.i1833, 6148914691236517205
  %i.br = icmp eq i64 %i.bq, 6148914691236517205
  %or.cond.i = or i1 %i.bp, %i.br
  br i1 %or.cond.i, label %If_CluCheckDecOutU.exit, label %.lr.ph.i.1

If_CluCheckDecOut.exit:                           ; preds = %bb.e, %If_CluAdjust.exit19.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !83
  %.not9 = icmp eq i32 %i.bt, 0
  br i1 %.not9, label %If_CluCheckDecOutU.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %If_CluCheckDecOut.exit
  %i.bu = and i64 %.035.i1833, 6148914691236517205
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = and i64 %.035.i1833, 6148914691236517205
  %i.bx = icmp eq i64 %i.bw, 6148914691236517205
  %or.cond.i22 = or i1 %i.bv, %i.bx
  br i1 %or.cond.i22, label %If_CluCheckDecOutU.exit, label %.lr.ph.i20.1

.lr.ph.i20.1:                                     ; preds = %.lr.ph.i20.preheader
  %i.by = and i64 %.035.i1833, 3689348814741910323
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = and i64 %.035.i1833, 3689348814741910323
  %i.cb = icmp eq i64 %i.ca, 3689348814741910323
  %or.cond.i22.1 = or i1 %i.bz, %i.cb
  br i1 %or.cond.i22.1, label %If_CluCheckDecOutU.exit, label %.lr.ph.i20.2

.lr.ph.i20.2:                                     ; preds = %.lr.ph.i20.1
  %i.cc = and i64 %.035.i1833, 1085102592571150095
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = and i64 %.035.i1833, 1085102592571150095
  %i.cf = icmp eq i64 %i.ce, 1085102592571150095
  %or.cond.i22.2 = or i1 %i.cd, %i.cf
  br i1 %or.cond.i22.2, label %If_CluCheckDecOutU.exit, label %.lr.ph.i20.3

.lr.ph.i20.3:                                     ; preds = %.lr.ph.i20.2
  %i.cg = and i64 %.035.i1833, 71777214294589695
  %i.ch = icmp eq i64 %i.cg, 0
  %i.ci = and i64 %.035.i1833, 71777214294589695
  %i.cj = icmp eq i64 %i.ci, 71777214294589695
  %or.cond.i22.3 = or i1 %i.ch, %i.cj
  br i1 %or.cond.i22.3, label %If_CluCheckDecOutU.exit, label %.lr.ph.i20.4

.lr.ph.i20.4:                                     ; preds = %.lr.ph.i20.3
  %i.ck = and i64 %.035.i1833, 281470681808895
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = and i64 %.035.i1833, 281470681808895
  %i.cn = icmp eq i64 %i.cm, 281470681808895
  %or.cond.i22.4 = or i1 %i.cl, %i.cn
  %spec.select = zext i1 %or.cond.i22.4 to i32
  br label %If_CluCheckDecOutU.exit

If_CluCheckDecOutU.exit:                          ; preds = %.lr.ph.i20.4, %bb.f, %.lr.ph.i, %.lr.ph.i.1, %bb.b, %.lr.ph.i.2, %bb.c, %.lr.ph.i.3, %bb.d, %.lr.ph.i.4, %bb.e, %.lr.ph.i20.preheader, %.lr.ph.i20.1, %.lr.ph.i20.2, %.lr.ph.i20.3, %If_CluCheckDecOut.exit, %If_CluAdjust.exit19, %bb.a
  %.0 = phi i32 [ 1, %.lr.ph.i20.3 ], [ 0, %bb.a ], [ 1, %If_CluAdjust.exit19 ], [ 0, %If_CluCheckDecOut.exit ], [ 1, %bb.f ], [ 1, %.lr.ph.i20.preheader ], [ 1, %.lr.ph.i20.1 ], [ %spec.select, %.lr.ph.i20.4 ], [ 1, %.lr.ph.i20.2 ], [ 1, %bb.e ], [ 1, %.lr.ph.i.4 ], [ 1, %bb.d ], [ 1, %.lr.ph.i.3 ], [ 1, %bb.c ], [ 1, %.lr.ph.i.2 ], [ 1, %bb.b ], [ 1, %.lr.ph.i.1 ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck54(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.If_Grp_t_, align 1          ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %6 = alloca %struct.If_Grp_t_, align 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @If_CluCheck(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %6, ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 5, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0)
  %.sroa.0.0.copyload = load i8, ptr %6, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.c = icmp eq i8 %.sroa.0.0.copyload, 0
  br i1 %i.c, label %If_CluCheckDecInU.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.e = load i8, ptr %5, align 1, !tbaa !78      ; 9 uses
  %i.f = icmp eq i8 %i.e, 6
  br i1 %i.f, label %If_CluAdjust.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i8 %i.e to i32
  %i.h = shl nuw i32 1, %i.g
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i, -1
  %i.k = and i64 %i.d, %i.j                       ; 2 uses
  %i.l = icmp eq i8 %i.e, 0
  %i.m = shl nuw nsw i64 %i.k, %i.i
  %i.n = select i1 %i.l, i64 %i.m, i64 0
  %.030.i = or i64 %i.n, %i.k                     ; 2 uses
  %i.o = icmp ult i8 %i.e, 2
  %i.p = shl i64 %.030.i, 2
  %i.q = select i1 %i.o, i64 %i.p, i64 0
  %.131.i = or i64 %i.q, %.030.i                  ; 2 uses
  %i.r = icmp ult i8 %i.e, 3
  %i.s = shl i64 %.131.i, 4
  %i.t = select i1 %i.r, i64 %i.s, i64 0
  %.232.i = or i64 %i.t, %.131.i                  ; 2 uses
  %i.u = icmp ult i8 %i.e, 4
  %i.v = shl i64 %.232.i, 8
  %i.w = select i1 %i.u, i64 %i.v, i64 0
  %.333.i = or i64 %i.w, %.232.i                  ; 2 uses
  %i.x = icmp ult i8 %i.e, 5
  %i.y = shl i64 %.333.i, 16
  %i.z = select i1 %i.x, i64 %i.y, i64 0
  %.434.i = or i64 %i.z, %.333.i                  ; 2 uses
  %i.aa = icmp ult i8 %i.e, 6
  %i.ab = shl i64 %.434.i, 32
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0
  %.5.i = or i64 %i.ac, %.434.i
  br label %If_CluAdjust.exit

If_CluAdjust.exit:                                ; preds = %bb.b, %bb.c
  %.035.i = phi i64 [ %.5.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.ad = icmp slt i8 %i.e, 5
  br i1 %i.ad, label %If_CluCheckDecInU.exit, label %bb.d

bb.d:                                             ; preds = %If_CluAdjust.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 140
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !82
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %If_CluCheckDecIn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %7 = and i64 %.035.i, 6148914691236517205
  %i.ai = and i64 %.035.i, -6148914691236517206   ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, %i.ai
  %i.al = mul i64 %7, 12884901888
  %i.am = ashr exact i64 %i.al, 32                ; 8 uses
  %i.an = shl i64 %i.ak, 32
  %i.ao = ashr exact i64 %i.an, 32                ; 8 uses
  %i.ap = and i64 %i.am, 3689348814741910323      ; 2 uses
  %i.aq = shl nuw i64 %i.ap, 2
  %i.ar = or disjoint i64 %i.aq, %i.ap
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %i.at = and i64 %i.am, -3689348814741910324     ; 2 uses
  %i.au = lshr exact i64 %i.at, 2
  %i.av = or disjoint i64 %i.au, %i.at
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %i.ax = and i64 %i.ao, 3689348814741910323      ; 2 uses
  %i.ay = shl nuw i64 %i.ax, 2
  %i.az = or disjoint i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = and i64 %i.ao, -3689348814741910324     ; 2 uses
  %i.bc = lshr exact i64 %i.bb, 2
  %i.bd = or disjoint i64 %i.bc, %i.bb
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = icmp eq i32 %i.as, %i.aw                ; 2 uses
  %i.bg = icmp eq i32 %i.as, %i.ba                ; 2 uses
  %or.cond.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i, label %If_CluCheckDecInU.exit, label %bb.k

.lr.ph.i.1:                                       ; preds = %bb.l
  %i.bh = and i64 %i.am, 1085102592571150095      ; 2 uses
  %i.bi = shl nuw i64 %i.bh, 4
  %i.bj = or disjoint i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = and i64 %i.am, -1085102592571150096     ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 4
  %i.bn = or disjoint i64 %i.bm, %i.bl
  %i.bo = trunc i64 %i.bn to i32                  ; 3 uses
  %i.bp = and i64 %i.ao, 1085102592571150095      ; 2 uses
  %i.bq = shl nuw i64 %i.bp, 4
  %i.br = or disjoint i64 %i.bq, %i.bp
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = and i64 %i.ao, -1085102592571150096     ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 4
  %i.bv = or disjoint i64 %i.bu, %i.bt
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = icmp eq i32 %i.bk, %i.bo                ; 2 uses
  %i.by = icmp eq i32 %i.bk, %i.bs                ; 2 uses
  %or.cond.i.1 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond.i.1, label %If_CluCheckDecInU.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.bz = icmp eq i32 %i.bk, %i.bw
  %i.ca = or i1 %i.by, %i.bx
  %or.cond37.i.1 = select i1 %i.ca, i1 %i.bz, i1 false
  br i1 %or.cond37.i.1, label %If_CluCheckDecInU.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = icmp eq i32 %i.bo, %i.bs
  %i.cc = icmp eq i32 %i.bo, %i.bw
  %or.cond36.i.1 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond36.i.1, label %If_CluCheckDecInU.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.f
  %i.cd = and i64 %i.am, 71777214294589695        ; 2 uses
  %i.ce = shl nuw i64 %i.cd, 8
  %i.cf = or disjoint i64 %i.ce, %i.cd
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = and i64 %i.am, -71777214294589696       ; 2 uses
  %i.ci = lshr exact i64 %i.ch, 8
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = trunc i64 %i.cj to i32                  ; 3 uses
  %i.cl = and i64 %i.ao, 71777214294589695        ; 2 uses
  %i.cm = shl nuw i64 %i.cl, 8
  %i.cn = or disjoint i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = and i64 %i.ao, -71777214294589696       ; 2 uses
  %i.cq = lshr exact i64 %i.cp, 8
  %i.cr = or disjoint i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %i.ct = icmp eq i32 %i.cg, %i.ck                ; 2 uses
  %i.cu = icmp eq i32 %i.cg, %i.co                ; 2 uses
  %or.cond.i.2 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i.2, label %If_CluCheckDecInU.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.2
  %i.cv = icmp eq i32 %i.cg, %i.cs
  %i.cw = or i1 %i.cu, %i.ct
  %or.cond37.i.2 = select i1 %i.cw, i1 %i.cv, i1 false
  br i1 %or.cond37.i.2, label %If_CluCheckDecInU.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = icmp eq i32 %i.ck, %i.co
  %i.cy = icmp eq i32 %i.ck, %i.cs
  %or.cond36.i.2 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond36.i.2, label %If_CluCheckDecInU.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h
  %i.cz = and i64 %i.am, 281470681808895          ; 2 uses
  %i.da = shl nuw i64 %i.cz, 16
  %i.db = or disjoint i64 %i.da, %i.cz
  %i.dc = trunc i64 %i.db to i32                  ; 3 uses
  %i.dd = and i64 %i.am, -281470681808896         ; 2 uses
  %i.de = lshr exact i64 %i.dd, 16
  %i.df = or disjoint i64 %i.de, %i.dd
  %i.dg = trunc i64 %i.df to i32                  ; 3 uses
  %i.dh = and i64 %i.ao, 281470681808895          ; 2 uses
  %i.di = shl nuw i64 %i.dh, 16
  %i.dj = or disjoint i64 %i.di, %i.dh
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = and i64 %i.ao, -281470681808896         ; 2 uses
  %i.dm = lshr exact i64 %i.dl, 16
  %i.dn = or disjoint i64 %i.dm, %i.dl
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = icmp eq i32 %i.dc, %i.dg                ; 2 uses
  %i.dq = icmp eq i32 %i.dc, %i.dk                ; 2 uses
  %or.cond.i.3 = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond.i.3, label %If_CluCheckDecInU.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.dr = icmp eq i32 %i.dc, %i.do
  %i.ds = or i1 %i.dq, %i.dp
  %or.cond37.i.3 = select i1 %i.ds, i1 %i.dr, i1 false
  br i1 %or.cond37.i.3, label %If_CluCheckDecInU.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dt = icmp eq i32 %i.dg, %i.dk
  %i.du = icmp eq i32 %i.dg, %i.do
  %or.cond36.i.3 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond36.i.3, label %If_CluCheckDecInU.exit, label %If_CluCheckDecIn.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.dv = icmp eq i32 %i.as, %i.be
  %i.dw = or i1 %i.bg, %i.bf
  %or.cond37.i = select i1 %i.dw, i1 %i.dv, i1 false
  br i1 %or.cond37.i, label %If_CluCheckDecInU.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = icmp eq i32 %i.aw, %i.ba
  %i.dy = icmp eq i32 %i.aw, %i.be
  %or.cond36.i = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond36.i, label %If_CluCheckDecInU.exit, label %.lr.ph.i.1

If_CluCheckDecIn.exit:                            ; preds = %bb.j, %bb.d
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !83
  %.not8 = icmp eq i32 %i.ea, 0
  br i1 %.not8, label %If_CluCheckDecInU.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %If_CluCheckDecIn.exit
  %8 = and i64 %.035.i, 6148914691236517205
  %i.eb = and i64 %.035.i, -6148914691236517206   ; 2 uses
  %i.ec = lshr exact i64 %i.eb, 1
  %i.ed = or disjoint i64 %i.ec, %i.eb
  %i.ee = mul i64 %8, 12884901888
  %i.ef = ashr exact i64 %i.ee, 32                ; 8 uses
  %i.eg = shl i64 %i.ed, 32
  %i.eh = ashr exact i64 %i.eg, 32                ; 8 uses
  %i.ei = and i64 %i.ef, 3689348814741910323      ; 2 uses
  %i.ej = shl nuw i64 %i.ei, 2
  %i.ek = or disjoint i64 %i.ej, %i.ei
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = and i64 %i.ef, -3689348814741910324     ; 2 uses
  %i.en = lshr exact i64 %i.em, 2
  %i.eo = or disjoint i64 %i.en, %i.em
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = and i64 %i.eh, 3689348814741910323      ; 2 uses
  %i.er = shl nuw i64 %i.eq, 2
  %i.es = or disjoint i64 %i.er, %i.eq
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i64 %i.eh, -3689348814741910324     ; 2 uses
  %i.ev = lshr exact i64 %i.eu, 2
  %i.ew = or disjoint i64 %i.ev, %i.eu
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = icmp eq i32 %i.el, %i.ep
  %i.ez = icmp eq i32 %i.el, %i.et
  %i.fa = icmp eq i32 %i.el, %i.ex
  %i.fb = select i1 %i.ey, i1 true, i1 %i.fa
  %or.cond26.i = select i1 %i.ez, i1 %i.fb, i1 false
  br i1 %or.cond26.i, label %If_CluCheckDecInU.exit, label %.lr.ph.i19.1

.lr.ph.i19.1:                                     ; preds = %.lr.ph.i19
  %i.fc = and i64 %i.ef, 1085102592571150095      ; 2 uses
  %i.fd = shl nuw i64 %i.fc, 4
  %i.fe = or disjoint i64 %i.fd, %i.fc
  %i.ff = trunc i64 %i.fe to i32                  ; 3 uses
  %i.fg = and i64 %i.ef, -1085102592571150096     ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 4
  %i.fi = or disjoint i64 %i.fh, %i.fg
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = and i64 %i.eh, 1085102592571150095      ; 2 uses
  %i.fl = shl nuw i64 %i.fk, 4
  %i.fm = or disjoint i64 %i.fl, %i.fk
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = and i64 %i.eh, -1085102592571150096     ; 2 uses
  %i.fp = lshr exact i64 %i.fo, 4
  %i.fq = or disjoint i64 %i.fp, %i.fo
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = icmp eq i32 %i.ff, %i.fj
  %i.ft = icmp eq i32 %i.ff, %i.fn
  %i.fu = icmp eq i32 %i.ff, %i.fr
  %i.fv = select i1 %i.fs, i1 true, i1 %i.fu
  %or.cond26.i.1 = select i1 %i.ft, i1 %i.fv, i1 false
  br i1 %or.cond26.i.1, label %If_CluCheckDecInU.exit, label %.lr.ph.i19.2

.lr.ph.i19.2:                                     ; preds = %.lr.ph.i19.1
  %i.fw = and i64 %i.ef, 71777214294589695        ; 2 uses
  %i.fx = shl nuw i64 %i.fw, 8
  %i.fy = or disjoint i64 %i.fx, %i.fw
  %i.fz = trunc i64 %i.fy to i32                  ; 3 uses
  %i.ga = and i64 %i.ef, -71777214294589696       ; 2 uses
  %i.gb = lshr exact i64 %i.ga, 8
  %i.gc = or disjoint i64 %i.gb, %i.ga
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = and i64 %i.eh, 71777214294589695        ; 2 uses
  %i.gf = shl nuw i64 %i.ge, 8
  %i.gg = or disjoint i64 %i.gf, %i.ge
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i64 %i.eh, -71777214294589696       ; 2 uses
  %i.gj = lshr exact i64 %i.gi, 8
  %i.gk = or disjoint i64 %i.gj, %i.gi
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = icmp eq i32 %i.fz, %i.gd
  %i.gn = icmp eq i32 %i.fz, %i.gh
  %i.go = icmp eq i32 %i.fz, %i.gl
  %i.gp = select i1 %i.gm, i1 true, i1 %i.go
  %or.cond26.i.2 = select i1 %i.gn, i1 %i.gp, i1 false
  br i1 %or.cond26.i.2, label %If_CluCheckDecInU.exit, label %.lr.ph.i19.3

.lr.ph.i19.3:                                     ; preds = %.lr.ph.i19.2
  %i.gq = and i64 %i.ef, 281470681808895          ; 2 uses
  %i.gr = shl nuw i64 %i.gq, 16
  %i.gs = or disjoint i64 %i.gr, %i.gq
  %i.gt = trunc i64 %i.gs to i32                  ; 3 uses
  %i.gu = and i64 %i.ef, -281470681808896         ; 2 uses
  %i.gv = lshr exact i64 %i.gu, 16
  %i.gw = or disjoint i64 %i.gv, %i.gu
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = and i64 %i.eh, 281470681808895          ; 2 uses
  %i.gz = shl nuw i64 %i.gy, 16
  %i.ha = or disjoint i64 %i.gz, %i.gy
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i64 %i.eh, -281470681808896         ; 2 uses
  %i.hd = lshr exact i64 %i.hc, 16
  %i.he = or disjoint i64 %i.hd, %i.hc
  %i.hf = trunc i64 %i.he to i32
  %i.hg = icmp eq i32 %i.gt, %i.gx
  %i.hh = icmp eq i32 %i.gt, %i.hb
  %i.hi = icmp eq i32 %i.gt, %i.hf
  %i.hj = select i1 %i.hg, i1 true, i1 %i.hi
  %or.cond26.i.3 = select i1 %i.hh, i1 %i.hj, i1 false
  %spec.select = zext i1 %or.cond26.i.3 to i32
  br label %If_CluCheckDecInU.exit

If_CluCheckDecInU.exit:                           ; preds = %.lr.ph.i19.3, %bb.k, %.lr.ph.i, %bb.l, %.lr.ph.i.1, %bb.e, %bb.f, %.lr.ph.i.2, %bb.g, %bb.h, %.lr.ph.i.3, %bb.i, %bb.j, %.lr.ph.i19, %.lr.ph.i19.1, %.lr.ph.i19.2, %If_CluCheckDecIn.exit, %If_CluAdjust.exit, %bb.a
  %.0 = phi i32 [ 1, %.lr.ph.i19.2 ], [ 0, %bb.a ], [ 1, %If_CluAdjust.exit ], [ 0, %If_CluCheckDecIn.exit ], [ 1, %bb.k ], [ 1, %.lr.ph.i19 ], [ 1, %.lr.ph.i19.1 ], [ %spec.select, %.lr.ph.i19.3 ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %.lr.ph.i.3 ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %.lr.ph.i.2 ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %.lr.ph.i.1 ], [ 1, %bb.l ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @If_CluCheck3(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.If_Grp_t_) align 1 captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %12 = alloca %struct.If_Grp_t_, align 1         ; 15 uses
  %13 = alloca %struct.If_Grp_t_, align 1         ; 10 uses
  %14 = alloca %struct.If_Grp_t_, align 1         ; 17 uses
  %15 = alloca %struct.If_Grp_t_, align 1         ; 8 uses
  %i.e = alloca [18 x i32], align 16              ; 10 uses
  %i.f = alloca [18 x i32], align 16              ; 11 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %13, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %14, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %15, i8 0, i64 18, i1 false)
  %i.i = load i32, ptr @If_CluCheck3.Counter, align 4, !tbaa !35
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr @If_CluCheck3.Counter, align 4, !tbaa !35
  %i.k = load i32, ptr @s_Count3, align 4, !tbaa !35
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @s_Count3, align 4, !tbaa !35
  %i.m = add i32 %5, -1
  %i.n = add i32 %i.m, %6
  call void @If_CluCheck(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %i.n, ptr noundef nonnull %15, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.o = load i8, ptr %12, align 1, !tbaa !78
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !79
  %i.s = add i8 %i.r, -3
  %or.cond5 = icmp ult i8 %i.s, 2
  %i.t = icmp eq i32 %4, %5
  %or.cond = and i1 %i.t, %or.cond5
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = add i32 %3, 2
  %i.v = sub i32 %i.u, %5
  %.not145 = icmp sgt i32 %i.v, %6
  br i1 %.not145, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.w = trunc i32 %5 to i8                       ; 2 uses
  store i8 %i.w, ptr %12, align 1, !tbaa !78
  %i.x = icmp slt i32 %3, 7
  %i.y = add nsw i32 %3, -6
  %i.z = shl nuw i32 1, %i.y
  %i.aa = select i1 %i.x, i32 1, i32 %i.z         ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.ac, i1 false), !tbaa !44
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.d
  %i.ad = icmp sgt i32 %3, 0
  br i1 %i.ad, label %.lr.ph153.preheader, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %If_CluCopy.exit
  %wide.trip.count172 = zext nneg i32 %3 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph153.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph153.preheader
  %n.vec = and i64 %wide.trip.count172, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %vec.ind, ptr %i.ae, align 16, !tbaa !35
  store <4 x i32> %step.add, ptr %i.af, align 16, !tbaa !35
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind, ptr %i.ag, align 16, !tbaa !35
  store <4 x i32> %step.add, ptr %i.ah, align 16, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count172
  br i1 %cmp.n, label %._crit_edge154, label %.lr.ph153.preheader219

.lr.ph153.preheader219:                           ; preds = %.lr.ph153.preheader, %middle.block
  %indvars.iv169.ph = phi i64 [ 0, %.lr.ph153.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader219, %.lr.ph153
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.lr.ph153 ], [ %indvars.iv169.ph, %.lr.ph153.preheader219 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv169
  %i.ak = trunc nuw nsw i64 %indvars.iv169 to i32 ; 2 uses
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv169
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !35
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !338

._crit_edge154:                                   ; preds = %.lr.ph153, %middle.block, %If_CluCopy.exit
  %i.am = icmp sgt i8 %i.w, 0
  br i1 %i.am, label %.lr.ph.i146, label %If_CluMoveGroupToMsb.exit

.lr.ph.i146:                                      ; preds = %._crit_edge154
  %i.an = and i32 %5, 127                         ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 2 ; 2 uses
  %wide.trip.count177 = zext nneg i32 %i.an to i64
  %i.ap = zext nneg i32 %i.an to i64              ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !71
  %i.at = sext i8 %i.as to i32
  %i.au = add i32 %3, -1
  call void @If_CluMoveVar(ptr noundef nonnull %i.a, i32 noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.at, i32 noundef %i.au)
  %exitcond178.peel.not = icmp samesign ult i32 %i.an, 2
  br i1 %exitcond178.peel.not, label %If_CluMoveGroupToMsb.exit, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph.i146
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.peel.next
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %bb.e ], [ 1, %.peel.next ] ; 2 uses
  %i.aw = xor i64 %indvars.iv174, -1              ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !71
  %i.az = sext i8 %i.ay to i32
  %i.ba = trunc nsw i64 %i.aw to i32
  %i.bb = add i32 %3, %i.ba
  call void @If_CluMoveVar(ptr noundef nonnull %i.a, i32 noundef %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.az, i32 noundef %i.bb)
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %If_CluMoveGroupToMsb.exit, label %bb.e, !llvm.loop !339

If_CluMoveGroupToMsb.exit:                        ; preds = %bb.e, %.lr.ph.i146, %._crit_edge154
  call void @If_CluDeriveDisjoint4(ptr noundef nonnull %i.a, i32 noundef %3, ptr nonnull poison, ptr noundef nonnull %i.f, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.bc = load i8, ptr %14, align 1, !tbaa !78    ; 5 uses
  %i.bd = sext i8 %i.bc to i32                    ; 6 uses
  %i.be = icmp sgt i8 %i.bc, 0
  br i1 %i.be, label %.lr.ph156.preheader, label %._crit_edge157

.lr.ph156.preheader:                              ; preds = %If_CluMoveGroupToMsb.exit
  %wide.trip.count183 = zext nneg i32 %i.bd to i64 ; 3 uses
  %min.iters.check206 = icmp ult i8 %i.bc, 8
  br i1 %min.iters.check206, label %.lr.ph156.preheader218, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph156.preheader
  %n.vec208 = and i64 %wide.trip.count183, 120    ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 3 uses
  %vec.ind211 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph207 ], [ %vec.ind.next214, %vector.body209 ] ; 4 uses
  %step.add212 = add <4 x i32> %vec.ind211, splat (i32 4) ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index210 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x i32> %vec.ind211, ptr %i.bf, align 16, !tbaa !35
  store <4 x i32> %step.add212, ptr %i.bg, align 16, !tbaa !35
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index210 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x i32> %vec.ind211, ptr %i.bh, align 16, !tbaa !35
  store <4 x i32> %step.add212, ptr %i.bi, align 16, !tbaa !35
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next214 = add <4 x i32> %vec.ind211, splat (i32 8)
  %i.bj = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.bj, label %middle.block215, label %vector.body209, !llvm.loop !340

middle.block215:                                  ; preds = %vector.body209
  %cmp.n216 = icmp eq i64 %n.vec208, %wide.trip.count183
  br i1 %cmp.n216, label %._crit_edge157, label %.lr.ph156.preheader218
end_hunk_0
