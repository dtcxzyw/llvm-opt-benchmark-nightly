inline.NumInlined: 326
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 106
begin_hunk_0_@Dau_Dsd6DecomposeTripleVars:bb.a
  br label %Dau_DsdFindVarDef.exit.i

Dau_DsdFindVarDef.exit.i:                         ; preds = %bb.ax, %._crit_edge.loopexit.split.loop.exit.i.i, %Dau_DsdAddVarDef.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %Dau_DsdAddVarDef.exit.i ], [ %i.jp, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.m, %bb.ax ] ; 2 uses
  %i.jq = sext i32 %.0.lcssa.i.i to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !9
  %i.jt = load i32, ptr %i.r, align 4, !tbaa !9
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !9
  store i32 %i.js, ptr %i.r, align 4, !tbaa !9
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %.0.lcssa.i.i, i32 noundef %i.p)
  %i.ju = load i32, ptr %i.j, align 4, !tbaa !118
  %i.jv = add nsw i32 %i.ju, -1
  br i1 %i.s, label %.lr.ph.i96.i, label %Dau_DsdFindVarDef.exit101.i

.lr.ph.i96.i:                                     ; preds = %Dau_DsdFindVarDef.exit.i, %bb.ay
  %indvars.iv.i97.i = phi i64 [ %indvars.iv.next.i98.i, %bb.ay ], [ 0, %Dau_DsdFindVarDef.exit.i ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i97.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !9
  %i.jy = icmp eq i32 %i.jx, %i.jv
  br i1 %i.jy, label %._crit_edge.loopexit.split.loop.exit.i100.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i96.i
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i97.i, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i98.i, %wide.trip.count.i95.i
  br i1 %exitcond.not.i99.i, label %Dau_DsdFindVarDef.exit101.i, label %.lr.ph.i96.i, !llvm.loop !135

._crit_edge.loopexit.split.loop.exit.i100.i:      ; preds = %.lr.ph.i96.i
  %i.jz = trunc nuw nsw i64 %indvars.iv.i97.i to i32
  br label %Dau_DsdFindVarDef.exit101.i

Dau_DsdFindVarDef.exit101.i:                      ; preds = %bb.ay, %._crit_edge.loopexit.split.loop.exit.i100.i, %Dau_DsdFindVarDef.exit.i
  %.0.lcssa.i93.i = phi i32 [ 0, %Dau_DsdFindVarDef.exit.i ], [ %i.jz, %._crit_edge.loopexit.split.loop.exit.i100.i ], [ %i.p, %bb.ay ]
  %i.ka = call fastcc i32 @Dau_Dsd6DecomposeSingleVarOne(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.p, i32 noundef %.0.lcssa.i93.i)
  %.not.i59 = icmp eq i32 %i.ka, 0
  br i1 %.not.i59, label %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107, label %Dau_Dsd6DecomposeTripleVarsInner.exit

Dau_Dsd6DecomposeTripleVarsInner.exit.thread107:  ; preds = %Dau_DsdFindVarDef.exit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.loopexit131

Dau_Dsd6DecomposeTripleVarsInner.exit:            ; preds = %Dau_DsdFindVarDef.exit101.i
  %i.kb = call i32 @Dau_Dsd6DecomposeSingleVar(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.t) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.kc = icmp eq i32 %i.kb, %.043
  br i1 %i.kc, label %Abc_TtSuppOnlyOne.exit.thread, label %.loopexit131

.loopexit131:                                     ; preds = %Dau_Dsd6DecomposeTripleVarsInner.exit, %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107
  %.089.i109 = phi i32 [ %i.p, %Dau_Dsd6DecomposeTripleVarsInner.exit.thread107 ], [ %i.kb, %Dau_Dsd6DecomposeTripleVarsInner.exit ] ; 2 uses
  %i.kd = icmp eq i32 %.089.i109, 0
  br i1 %i.kd, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.loopexit131
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ke = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #31
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %Abc_Clock.exit61, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kg = load i64, ptr %6, align 8, !tbaa !120
  %i.kh = mul nsw i64 %i.kg, 1000000
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !122
  %i.kk = sdiv i64 %i.kj, 1000
  %i.kl = add nsw i64 %i.kk, %i.kh
  br label %Abc_Clock.exit61

Abc_Clock.exit61:                                 ; preds = %bb.az, %bb.ba
  %.0.i60 = phi i64 [ %i.kl, %bb.ba ], [ -1, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.km = add i64 %.0.i60, %.0.i.neg159
  %i.kn = load i64, ptr @s_Times.2, align 16, !tbaa !39
  %i.ko = add nsw i64 %i.km, %i.kn
  store i64 %i.ko, ptr @s_Times.2, align 16, !tbaa !39
  br label %.thread116

bb.bb:                                            ; preds = %.loopexit131
  %.049.in155177 = trunc i64 %indvars.iv to i32
  %i.kp = call i32 @Dau_Dsd6DecomposeDoubleVars(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %.089.i109) ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.kr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #31
  %i.ks = icmp slt i32 %i.kr, 0
  br i1 %i.ks, label %Abc_Clock.exit63, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kt = load i64, ptr %5, align 8, !tbaa !120
  %i.ku = mul nsw i64 %i.kt, 1000000
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !122
  %i.kx = sdiv i64 %i.kw, 1000
  %i.ky = add nsw i64 %i.kx, %i.ku
  br label %Abc_Clock.exit63

Abc_Clock.exit63:                                 ; preds = %bb.bc, %bb.bd
  %.0.i62 = phi i64 [ %i.ky, %bb.bd ], [ -1, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.kz = add i64 %.0.i62, %.0.i.neg159
  %i.la = load i64, ptr @s_Times.2, align 16, !tbaa !39
  %i.lb = add nsw i64 %i.kz, %i.la
  store i64 %i.lb, ptr @s_Times.2, align 16, !tbaa !39
  br label %.thread116

Abc_TtSuppOnlyOne.exit.thread:                    ; preds = %Abc_TtSuppFindFirst.exit, %bb.s, %bb.r, %Dau_Dsd6DecomposeTripleVarsInner.exit
  %i.lc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.lc, label %.lr.ph.i, label %.loopexit.thread, !llvm.loop !136

.loopexit:                                        ; preds = %bb.c, %bb.bb
  %.049.in143 = phi i32 [ %.049.in155177, %bb.bb ], [ %.043, %bb.c ]
  %.447 = phi i32 [ %i.kp, %bb.bb ], [ %.043, %bb.c ] ; 2 uses
  %i.ld = icmp eq i32 %.049.in143, 0
  br i1 %i.ld, label %.loopexit.thread, label %bb.c

.loopexit.thread:                                 ; preds = %.loopexit, %Abc_TtSuppOnlyOne.exit.thread
  %.447196 = phi i32 [ %.043, %Abc_TtSuppOnlyOne.exit.thread ], [ %.447, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.le = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #31
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %Abc_Clock.exit65, label %bb.be

bb.be:                                            ; preds = %.loopexit.thread
  %i.lg = load i64, ptr %4, align 8, !tbaa !120
  %i.lh = mul nsw i64 %i.lg, 1000000
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !122
  %i.lk = sdiv i64 %i.lj, 1000
  %i.ll = add nsw i64 %i.lk, %i.lh
  br label %Abc_Clock.exit65

Abc_Clock.exit65:                                 ; preds = %.loopexit.thread, %bb.be
  %.0.i64 = phi i64 [ %i.ll, %bb.be ], [ -1, %.loopexit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.lm = add i64 %.0.i64, %.0.i.neg159
  %i.ln = load i64, ptr @s_Times.2, align 16, !tbaa !39
  %i.lo = add nsw i64 %i.lm, %i.ln
  store i64 %i.lo, ptr @s_Times.2, align 16, !tbaa !39
  br label %.thread116

.thread116:                                       ; preds = %Abc_Clock.exit61, %Abc_Clock.exit63, %Dau_Dsd6DecomposeTripleVarsOuter.exit, %Abc_Clock.exit65
  %.5.ph = phi i32 [ %.447196, %Abc_Clock.exit65 ], [ 0, %Dau_Dsd6DecomposeTripleVarsOuter.exit ], [ 0, %Abc_Clock.exit63 ], [ 0, %Abc_Clock.exit61 ]
  ret i32 %.5.ph
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Dau_Dsd6DecomposeInternal(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @Dau_Dsd6DecomposeSingleVar(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Dau_Dsd6DecomposeDoubleVars(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.a) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @Dau_Dsd6DecomposeTripleVars(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.c) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc i32 @Dau_DsdWritePrime(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 1, 3) i32 @Dau_DsdWritePrime(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #18 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 16 uses
  %i.b = alloca [2000 x i8], align 16             ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.e = icmp slt i32 %3, 7
  %i.f = add nsw i32 %3, -6
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.k = tail call i32 @Dau_DsdCheck1Step(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef %i.j) ; 14 uses
  %i.l = icmp eq i32 %i.k, -2
  br i1 %i.l, label %bb.c, label %Dau_DsdWriteString.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !124
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 5 uses
  %4 = icmp sgt i32 %3, 5
  %i.r = add nsw i32 %3, -2
  %i.s = icmp slt i32 %3, 2
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %1, align 8, !tbaa !39
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15                         ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, 10
  %i.x = trunc nuw nsw i32 %i.v to i8             ; 2 uses
  %i.y = or disjoint i8 %i.x, 48
  %i.z = add nuw nsw i8 %i.x, 55
  %.0.i.i = select i1 %i.w, i8 %i.y, i8 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %.0.i.i, ptr %i.q, align 1, !tbaa !8
  br label %Abc_TtWriteHexRev.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp samesign ult i32 %3, 7
  %i.ac = select i1 %i.ab, i32 1, i32 %i.g        ; 2 uses
  %.not26.i = icmp slt i32 %i.ac, 1
  br i1 %.not26.i, label %Abc_TtWriteHexRev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr i8, ptr %1, i64 %.idx.i
  %.01925.i = getelementptr i8, ptr %i.ae, i64 -8
  %notmask.i = shl nsw i32 -1, %i.r
  %i.af = xor i32 %notmask.i, -1
  %i.ag = select i1 %4, i32 15, i32 %i.af         ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64              ; 6 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check180 = icmp eq i32 %i.ag, 0
  %n.vec182 = and i64 %i.ai, 4294967294           ; 4 uses
  %i.aj = sub nsw i64 %i.ah, %n.vec182
  %broadcast.splatinsert183 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat184 = shufflevector <2 x i64> %broadcast.splatinsert183, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ak = add nsw <2 x i64> %broadcast.splat184, <i64 0, i64 -1>
  %cmp.n191 = icmp eq i64 %i.ai, %n.vec182
  br label %bb.f

.loopexit.i:                                      ; preds = %scalar.ph179, %middle.block190
  %.lcssa131 = phi ptr [ %i.ao, %middle.block190 ], [ %i.bl, %scalar.ph179 ] ; 2 uses
  %.019.i = getelementptr inbounds i8, ptr %.01928.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.019.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %Abc_TtWriteHexRev.exit, label %bb.f, !llvm.loop !137

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.01928.i = phi ptr [ %.019.i, %.loopexit.i ], [ %.01925.i, %.lr.ph.i ] ; 4 uses
  %.027.i = phi ptr [ %.lcssa131, %.loopexit.i ], [ %i.q, %.lr.ph.i ] ; 6 uses
  br i1 %min.iters.check180, label %scalar.ph179.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %bb.f
  %i.al = sub i64 %i.ad, %indvar
  %i.am = shl i64 %i.al, 3
  %scevgep178 = getelementptr i8, ptr %1, i64 %i.am
  %i.an = getelementptr i8, ptr %.027.i, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.an, i64 1
  %bound0 = icmp ult ptr %.027.i, %scevgep178
  %bound1 = icmp ult ptr %.01928.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph179.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck177
  %i.ao = getelementptr i8, ptr %.027.i, i64 %n.vec182 ; 2 uses
  %i.ap = load i64, ptr %.01928.i, align 8, !tbaa !39, !alias.scope !138
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph181
  %index186 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body185 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.ak, %vector.ph181 ], [ %vec.ind.next, %vector.body185 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.027.i, i64 %index186
  %i.aq = shl nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ar = and <2 x i64> %i.aq, splat (i64 4294967292)
  %i.as = lshr <2 x i64> %broadcast.splat188, %i.ar
  %i.at = trunc <2 x i64> %i.as to <2 x i32>
  %i.au = and <2 x i32> %i.at, splat (i32 15)     ; 2 uses
  %i.av = icmp samesign ult <2 x i32> %i.au, splat (i32 10)
  %i.aw = trunc nuw nsw <2 x i32> %i.au to <2 x i8> ; 2 uses
  %i.ax = or disjoint <2 x i8> %i.aw, splat (i8 48)
  %i.ay = add nuw nsw <2 x i8> %i.aw, splat (i8 55)
  %i.az = select <2 x i1> %i.av, <2 x i8> %i.ax, <2 x i8> %i.ay
  store <2 x i8> %i.az, ptr %next.gep, align 1, !tbaa !8, !alias.scope !141, !noalias !138
  %index.next189 = add nuw i64 %index186, 2       ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 -2)
  %i.ba = icmp eq i64 %index.next189, %n.vec182
  br i1 %i.ba, label %middle.block190, label %vector.body185, !llvm.loop !143

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %.loopexit.i, label %scalar.ph179.preheader

scalar.ph179.preheader:                           ; preds = %vector.memcheck177, %bb.f, %middle.block190
  %indvars.iv.i.ph = phi i64 [ %i.ah, %vector.memcheck177 ], [ %i.ah, %bb.f ], [ %i.aj, %middle.block190 ]
  %.124.i.ph = phi ptr [ %.027.i, %vector.memcheck177 ], [ %.027.i, %bb.f ], [ %i.ao, %middle.block190 ]
  br label %scalar.ph179

scalar.ph179:                                     ; preds = %scalar.ph179.preheader, %scalar.ph179
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph179 ], [ %indvars.iv.i.ph, %scalar.ph179.preheader ] ; 3 uses
  %.124.i = phi ptr [ %i.bl, %scalar.ph179 ], [ %.124.i.ph, %scalar.ph179.preheader ] ; 2 uses
  %i.bb = load i64, ptr %.01928.i, align 8, !tbaa !39
  %i.bc = shl nsw i64 %indvars.iv.i, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = lshr i64 %i.bb, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 15                       ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, 10
  %i.bi = trunc nuw nsw i32 %i.bg to i8           ; 2 uses
  %i.bj = or disjoint i8 %i.bi, 48
  %i.bk = add nuw nsw i8 %i.bi, 55
  %.0.i21.i = select i1 %i.bh, i8 %i.bj, i8 %i.bk
  %i.bl = getelementptr inbounds nuw i8, ptr %.124.i, i64 1 ; 2 uses
  store i8 %.0.i21.i, ptr %.124.i, align 1, !tbaa !8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bm = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.bm, label %scalar.ph179, label %.loopexit.i, !llvm.loop !144

Abc_TtWriteHexRev.exit:                           ; preds = %.loopexit.i, %bb.d, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.d ], [ %i.q, %bb.e ], [ %.lcssa131, %.loopexit.i ]
  %i.bn = ptrtoint ptr %.2.i to i64
  %i.bo = ptrtoint ptr %i.q to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i32, ptr %i.n, align 8, !tbaa !124
  %i.bs = add nsw i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.n, align 8, !tbaa !124
  br label %bb.o

Dau_DsdWriteString.exit:                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !124 ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !124
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  store i8 60, ptr %i.by, align 1, !tbaa !8
  tail call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef 0)
  %i.bz = icmp eq i32 %i.h, 1                     ; 2 uses
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %Dau_DsdWriteString.exit
  %i.ca = load i64, ptr %1, align 8, !tbaa !39
  %i.cb = sext i32 %i.k to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !39
  %i.ce = and i64 %i.cd, %i.ca                    ; 2 uses
  %i.cf = shl nuw i32 1, %i.k
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %i.ce, %i.cg
  %i.ci = or i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.a, align 16, !tbaa !39
  br label %Abc_TtCofactor1p.exit

bb.h:                                             ; preds = %Dau_DsdWriteString.exit
  %i.cj = icmp slt i32 %i.k, 6
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = icmp sgt i32 %i.h, 0
  br i1 %i.ck, label %.lr.ph.i55, label %Abc_TtCofactor1p.exit

.lr.ph.i55:                                       ; preds = %bb.i
  %i.cl = shl nuw nsw i32 1, %i.k
  %i.cm = sext i32 %i.k to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cm
  %i.co = zext nneg i32 %i.cl to i64              ; 4 uses
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !39 ; 4 uses
  %min.iters.check134 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check134, label %scalar.ph133, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i55
  %i.cq = and i32 %i.h, 2147483644
  %n.vec136 = zext nneg i32 %i.cq to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat138 = shufflevector <2 x i64> %broadcast.splatinsert137, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body139 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index140 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load141 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !39
  %wide.load142 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !39
  %i.ct = and <2 x i64> %broadcast.splat138, %wide.load141 ; 2 uses
  %i.cu = and <2 x i64> %broadcast.splat138, %wide.load142 ; 2 uses
  %i.cv = lshr <2 x i64> %i.ct, %broadcast.splat
  %i.cw = lshr <2 x i64> %i.cu, %broadcast.splat
  %i.cx = or <2 x i64> %i.cv, %i.ct
  %i.cy = or <2 x i64> %i.cw, %i.cu
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index140 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x i64> %i.cx, ptr %i.cz, align 16, !tbaa !39
end_hunk_0
begin_hunk_1_@Dau_DsdWritePrime:bb.a

bb.l:                                             ; preds = %Dau_DsdWriteString.exit59
  %i.ft = icmp slt i32 %i.k, 6
  br i1 %i.ft, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fu = icmp sgt i32 %i.h, 0
  br i1 %i.fu, label %.lr.ph.i72, label %Abc_TtCofactor0p.exit

.lr.ph.i72:                                       ; preds = %bb.m
  %i.fv = shl nuw nsw i32 1, %i.k
  %i.fw = sext i32 %i.k to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !39 ; 4 uses
  %i.fz = zext nneg i32 %i.fv to i64              ; 4 uses
  %min.iters.check162 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check162, label %scalar.ph161, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i72
  %i.ga = and i32 %i.h, 2147483644
  %n.vec164 = zext nneg i32 %i.ga to i64
  %broadcast.splatinsert165 = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %broadcast.splat166 = shufflevector <2 x i64> %broadcast.splatinsert165, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert167 = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat168 = shufflevector <2 x i64> %broadcast.splatinsert167, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph163
  %index170 = phi i64 [ 0, %vector.ph163 ], [ %index.next173, %vector.body169 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index170 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load171 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !39
  %wide.load172 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !39
  %i.gd = and <2 x i64> %wide.load171, %broadcast.splat166 ; 2 uses
  %i.ge = and <2 x i64> %wide.load172, %broadcast.splat166 ; 2 uses
  %i.gf = shl <2 x i64> %i.gd, %broadcast.splat168
  %i.gg = shl <2 x i64> %i.ge, %broadcast.splat168
  %i.gh = or <2 x i64> %i.gf, %i.gd
  %i.gi = or <2 x i64> %i.gg, %i.ge
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index170 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store <2 x i64> %i.gh, ptr %i.gj, align 16, !tbaa !39
  store <2 x i64> %i.gi, ptr %i.gk, align 16, !tbaa !39
  %index.next173 = add nuw i64 %index170, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next173, %n.vec164
  br i1 %i.gl, label %Abc_TtCofactor0p.exit, label %vector.body169, !llvm.loop !148

scalar.ph161:                                     ; preds = %.lr.ph.i72
  %i.gm = load i64, ptr %1, align 8, !tbaa !39
  %i.gn = and i64 %i.gm, %i.fy                    ; 2 uses
  %i.go = shl i64 %i.gn, %i.fz
  %i.gp = or i64 %i.go, %i.gn
  store i64 %i.gp, ptr %i.a, align 16, !tbaa !39
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !39
  %i.gs = and i64 %i.gr, %i.fy                    ; 2 uses
  %i.gt = shl i64 %i.gs, %i.fz
  %i.gu = or i64 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !39
  %exitcond60.not.i.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond60.not.i.1, label %Abc_TtCofactor0p.exit, label %scalar.ph161.2

scalar.ph161.2:                                   ; preds = %scalar.ph161
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !39
  %i.gy = and i64 %i.gx, %i.fy                    ; 2 uses
  %i.gz = shl i64 %i.gy, %i.fz
  %i.ha = or i64 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ha, ptr %i.hb, align 16, !tbaa !39
  br label %Abc_TtCofactor0p.exit

bb.n:                                             ; preds = %bb.l
  %i.hc = sext i32 %i.h to i64
  %.idx.i60 = shl nsw i64 %i.hc, 3
  %i.hd = getelementptr inbounds i8, ptr %1, i64 %.idx.i60
  %i.he = add nsw i32 %i.k, -6                    ; 4 uses
  %i.hf = shl nuw i32 1, %i.he                    ; 4 uses
  %i.hg = icmp sgt i32 %i.h, 0
  br i1 %i.hg, label %.preheader.lr.ph.i62, label %Abc_TtCofactor0p.exit

.preheader.lr.ph.i62:                             ; preds = %bb.n
  %.not.i63 = icmp eq i32 %i.he, 31
  %i.hh = shl i32 2, %i.he
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  br i1 %.not.i63, label %Abc_TtCofactor0p.exit, label %.preheader.us.preheader.i64

.preheader.us.preheader.i64:                      ; preds = %.preheader.lr.ph.i62
  %i.hj = sext i32 %i.hf to i64
  %smax.i65 = call i32 @llvm.smax.i32(i32 %i.hf, i32 1)
  %min.iters.check150 = icmp slt i32 %i.hf, 4
  %i.hk = and i32 %smax.i65, 2147483644
  %n.vec152 = zext nneg i32 %i.hk to i64
  %exitcond.not.i70 = icmp slt i32 %i.hf, 2
  %exitcond.not.i70.1 = icmp eq i32 %i.he, 1
  br label %.preheader.us.i67

.preheader.us.i67:                                ; preds = %._crit_edge.us.i71, %.preheader.us.preheader.i64
  %.051.us.i = phi ptr [ %i.ia, %._crit_edge.us.i71 ], [ %i.a, %.preheader.us.preheader.i64 ] ; 6 uses
  %.04250.us.i = phi ptr [ %i.hz, %._crit_edge.us.i71 ], [ %1, %.preheader.us.preheader.i64 ] ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.hj ; 4 uses
  br i1 %min.iters.check150, label %scalar.ph149, label %vector.body153

vector.body153:                                   ; preds = %.preheader.us.i67, %vector.body153
  %index154 = phi i64 [ %index.next157, %vector.body153 ], [ 0, %.preheader.us.i67 ] ; 4 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i, i64 %index154 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load155 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !39 ; 2 uses
  %wide.load156 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !39 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index154 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <2 x i64> %wide.load155, ptr %i.hn, align 8, !tbaa !39
  store <2 x i64> %wide.load156, ptr %i.ho, align 8, !tbaa !39
  %i.hp = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index154 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  store <2 x i64> %wide.load155, ptr %i.hp, align 8, !tbaa !39
  store <2 x i64> %wide.load156, ptr %i.hq, align 8, !tbaa !39
  %index.next157 = add nuw i64 %index154, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.hr, label %._crit_edge.us.i71, label %vector.body153, !llvm.loop !149

scalar.ph149:                                     ; preds = %.preheader.us.i67
  %i.hs = load i64, ptr %.04250.us.i, align 8, !tbaa !39 ; 2 uses
  store i64 %i.hs, ptr %.051.us.i, align 8, !tbaa !39
  store i64 %i.hs, ptr %invariant.gep.i, align 8, !tbaa !39
  br i1 %exitcond.not.i70, label %._crit_edge.us.i71, label %scalar.ph149.1

scalar.ph149.1:                                   ; preds = %scalar.ph149
  %i.ht = getelementptr inbounds nuw i8, ptr %.04250.us.i, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !39 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.051.us.i, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !39
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 8
  store i64 %i.hu, ptr %gep.i.1, align 8, !tbaa !39
  br i1 %exitcond.not.i70.1, label %._crit_edge.us.i71, label %scalar.ph149.2

scalar.ph149.2:                                   ; preds = %scalar.ph149.1
  %i.hw = getelementptr inbounds nuw i8, ptr %.04250.us.i, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !39 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.051.us.i, i64 16
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !39
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 16
  store i64 %i.hx, ptr %gep.i.2, align 8, !tbaa !39
  br label %._crit_edge.us.i71

._crit_edge.us.i71:                               ; preds = %vector.body153, %scalar.ph149, %scalar.ph149.1, %scalar.ph149.2
  %i.hz = getelementptr inbounds [8 x i8], ptr %.04250.us.i, i64 %i.hi ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.hi
  %i.ib = icmp ult ptr %i.hz, %i.hd
  br i1 %i.ib, label %.preheader.us.i67, label %Abc_TtCofactor0p.exit, !llvm.loop !104

Abc_TtCofactor0p.exit:                            ; preds = %._crit_edge.us.i71, %vector.body169, %scalar.ph161, %scalar.ph161.2, %bb.k, %bb.m, %bb.n, %.preheader.lr.ph.i62
  %i.ic = load i32, ptr %i.ez, align 4, !tbaa !114
  %i.id = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef 0, i32 noundef %i.ic, ptr noundef nonnull %i.b) ; 0 uses
  %i.ie = load i8, ptr %i.b, align 16, !tbaa !8   ; 2 uses
  %.not5.i73 = icmp eq i8 %i.ie, 0
  br i1 %.not5.i73, label %Dau_DsdWriteString.exit77, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %Abc_TtCofactor0p.exit, %.lr.ph.i74
  %i.if = phi i8 [ %i.il, %.lr.ph.i74 ], [ %i.ie, %Abc_TtCofactor0p.exit ]
  %.06.i75 = phi ptr [ %i.ig, %.lr.ph.i74 ], [ %i.b, %Abc_TtCofactor0p.exit ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.06.i75, i64 1 ; 2 uses
  %i.ih = load i32, ptr %i.bu, align 8, !tbaa !124 ; 2 uses
  %i.ii = add nsw i32 %i.ih, 1
  store i32 %i.ii, ptr %i.bu, align 8, !tbaa !124
  %i.ij = sext i32 %i.ih to i64
  %i.ik = getelementptr inbounds i8, ptr %i.bt, i64 %i.ij
  store i8 %i.if, ptr %i.ik, align 1, !tbaa !8
  %i.il = load i8, ptr %i.ig, align 1, !tbaa !8   ; 2 uses
  %.not.i76 = icmp eq i8 %i.il, 0
  br i1 %.not.i76, label %Dau_DsdWriteString.exit77, label %.lr.ph.i74, !llvm.loop !147

Dau_DsdWriteString.exit77:                        ; preds = %.lr.ph.i74, %Abc_TtCofactor0p.exit
  %i.im = load i32, ptr %i.bu, align 8, !tbaa !124 ; 2 uses
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.bu, align 8, !tbaa !124
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds i8, ptr %i.bt, i64 %i.io
  store i8 62, ptr %i.ip, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.o

bb.o:                                             ; preds = %Dau_DsdWriteString.exit77, %Abc_TtWriteHexRev.exit
  %.044 = phi i32 [ 2, %Abc_TtWriteHexRev.exit ], [ 1, %Dau_DsdWriteString.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %Dau_DsdWriteString.exit102.preheader

bb.p:                                             ; preds = %bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !114
  %.not47 = icmp eq i32 %i.ir, 0
  br i1 %.not47, label %Dau_DsdWriteString.exit102.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !124
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.is, i64 %i.iv ; 5 uses
  %5 = icmp sgt i32 %3, 5
  %i.ix = add nsw i32 %3, -2
  %i.iy = icmp slt i32 %3, 2
  br i1 %i.iy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.iz = load i64, ptr %1, align 8, !tbaa !39
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = and i32 %i.ja, 15                       ; 2 uses
  %i.jc = icmp samesign ult i32 %i.jb, 10
  %i.jd = trunc nuw nsw i32 %i.jb to i8           ; 2 uses
  %i.je = or disjoint i8 %i.jd, 48
  %i.jf = add nuw nsw i8 %i.jd, 55
  %.0.i.i97 = select i1 %i.jc, i8 %i.je, i8 %i.jf
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store i8 %.0.i.i97, ptr %i.iw, align 1, !tbaa !8
  br label %Abc_TtWriteHexRev.exit98

bb.s:                                             ; preds = %bb.q
  %i.jh = icmp samesign ult i32 %3, 7
  %i.ji = add nsw i32 %3, -6
  %i.jj = shl nuw i32 1, %i.ji
  %i.jk = select i1 %i.jh, i32 1, i32 %i.jj       ; 2 uses
  %.not26.i82 = icmp slt i32 %i.jk, 1
  br i1 %.not26.i82, label %Abc_TtWriteHexRev.exit98, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.s
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %.idx.i84 = shl nuw nsw i64 %i.jl, 3
  %i.jm = getelementptr i8, ptr %1, i64 %.idx.i84
  %.01925.i85 = getelementptr i8, ptr %i.jm, i64 -8
  %notmask.i86 = shl nsw i32 -1, %i.ix
  %i.jn = xor i32 %notmask.i86, -1
  %i.jo = select i1 %5, i32 15, i32 %i.jn         ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i64              ; 6 uses
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check203 = icmp eq i32 %i.jo, 0
  %n.vec205 = and i64 %i.jq, 4294967294           ; 4 uses
  %i.jr = sub nsw i64 %i.jp, %n.vec205
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.jp, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.js = add nsw <2 x i64> %broadcast.splat207, <i64 0, i64 -1>
  %cmp.n217 = icmp eq i64 %i.jq, %n.vec205
  br label %bb.t

.loopexit.i93:                                    ; preds = %scalar.ph202, %middle.block216
  %.lcssa = phi ptr [ %i.jw, %middle.block216 ], [ %i.kt, %scalar.ph202 ] ; 2 uses
  %.019.i94 = getelementptr inbounds i8, ptr %.01928.i87, i64 -8 ; 2 uses
  %.not.i95 = icmp ult ptr %.019.i94, %1
  %indvar.next197 = add i64 %indvar196, 1
  br i1 %.not.i95, label %Abc_TtWriteHexRev.exit98, label %bb.t, !llvm.loop !137

bb.t:                                             ; preds = %.loopexit.i93, %.lr.ph.i83
  %indvar196 = phi i64 [ %indvar.next197, %.loopexit.i93 ], [ 0, %.lr.ph.i83 ] ; 2 uses
  %.01928.i87 = phi ptr [ %.019.i94, %.loopexit.i93 ], [ %.01925.i85, %.lr.ph.i83 ] ; 4 uses
  %.027.i88 = phi ptr [ %.lcssa, %.loopexit.i93 ], [ %i.iw, %.lr.ph.i83 ] ; 6 uses
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck194

vector.memcheck194:                               ; preds = %bb.t
  %i.jt = sub i64 %i.jl, %indvar196
  %i.ju = shl i64 %i.jt, 3
  %scevgep198 = getelementptr i8, ptr %1, i64 %i.ju
  %i.jv = getelementptr i8, ptr %.027.i88, i64 %i.jp
  %scevgep195 = getelementptr i8, ptr %i.jv, i64 1
  %bound0199 = icmp ult ptr %.027.i88, %scevgep198
  %bound1200 = icmp ult ptr %.01928.i87, %scevgep195
  %found.conflict201 = and i1 %bound0199, %bound1200
  br i1 %found.conflict201, label %scalar.ph202.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck194
  %i.jw = getelementptr i8, ptr %.027.i88, i64 %n.vec205 ; 2 uses
  %i.jx = load i64, ptr %.01928.i87, align 8, !tbaa !39, !alias.scope !150
  %broadcast.splatinsert212 = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %broadcast.splat213 = shufflevector <2 x i64> %broadcast.splatinsert212, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph204
  %index209 = phi i64 [ 0, %vector.ph204 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %vec.ind210 = phi <2 x i64> [ %i.js, %vector.ph204 ], [ %vec.ind.next215, %vector.body208 ] ; 2 uses
  %next.gep211 = getelementptr i8, ptr %.027.i88, i64 %index209
  %i.jy = shl nsw <2 x i64> %vec.ind210, splat (i64 2)
  %i.jz = and <2 x i64> %i.jy, splat (i64 4294967292)
  %i.ka = lshr <2 x i64> %broadcast.splat213, %i.jz
  %i.kb = trunc <2 x i64> %i.ka to <2 x i32>
  %i.kc = and <2 x i32> %i.kb, splat (i32 15)     ; 2 uses
  %i.kd = icmp samesign ult <2 x i32> %i.kc, splat (i32 10)
  %i.ke = trunc nuw nsw <2 x i32> %i.kc to <2 x i8> ; 2 uses
  %i.kf = or disjoint <2 x i8> %i.ke, splat (i8 48)
  %i.kg = add nuw nsw <2 x i8> %i.ke, splat (i8 55)
  %i.kh = select <2 x i1> %i.kd, <2 x i8> %i.kf, <2 x i8> %i.kg
  store <2 x i8> %i.kh, ptr %next.gep211, align 1, !tbaa !8, !alias.scope !153, !noalias !150
  %index.next214 = add nuw i64 %index209, 2       ; 2 uses
  %vec.ind.next215 = add nsw <2 x i64> %vec.ind210, splat (i64 -2)
  %i.ki = icmp eq i64 %index.next214, %n.vec205
  br i1 %i.ki, label %middle.block216, label %vector.body208, !llvm.loop !155

middle.block216:                                  ; preds = %vector.body208
  br i1 %cmp.n217, label %.loopexit.i93, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck194, %bb.t, %middle.block216
  %indvars.iv.i89.ph = phi i64 [ %i.jp, %vector.memcheck194 ], [ %i.jp, %bb.t ], [ %i.jr, %middle.block216 ]
  %.124.i90.ph = phi ptr [ %.027.i88, %vector.memcheck194 ], [ %.027.i88, %bb.t ], [ %i.jw, %middle.block216 ]
  br label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i92, %scalar.ph202 ], [ %indvars.iv.i89.ph, %scalar.ph202.preheader ] ; 3 uses
  %.124.i90 = phi ptr [ %i.kt, %scalar.ph202 ], [ %.124.i90.ph, %scalar.ph202.preheader ] ; 2 uses
  %i.kj = load i64, ptr %.01928.i87, align 8, !tbaa !39
  %i.kk = shl nsw i64 %indvars.iv.i89, 2
  %i.kl = and i64 %i.kk, 4294967292
  %i.km = lshr i64 %i.kj, %i.kl
  %i.kn = trunc i64 %i.km to i32
  %i.ko = and i32 %i.kn, 15                       ; 2 uses
  %i.kp = icmp samesign ult i32 %i.ko, 10
  %i.kq = trunc nuw nsw i32 %i.ko to i8           ; 2 uses
  %i.kr = or disjoint i8 %i.kq, 48
  %i.ks = add nuw nsw i8 %i.kq, 55
  %.0.i21.i91 = select i1 %i.kp, i8 %i.kr, i8 %i.ks
  %i.kt = getelementptr inbounds nuw i8, ptr %.124.i90, i64 1 ; 2 uses
  store i8 %.0.i21.i91, ptr %.124.i90, align 1, !tbaa !8
  %indvars.iv.next.i92 = add nsw i64 %indvars.iv.i89, -1
  %i.ku = icmp sgt i64 %indvars.iv.i89, 0
  br i1 %i.ku, label %scalar.ph202, label %.loopexit.i93, !llvm.loop !156

Abc_TtWriteHexRev.exit98:                         ; preds = %.loopexit.i93, %bb.r, %bb.s
  %.2.i96 = phi ptr [ %i.jg, %bb.r ], [ %i.iw, %bb.s ], [ %.lcssa, %.loopexit.i93 ]
  %i.kv = ptrtoint ptr %.2.i96 to i64
  %i.kw = ptrtoint ptr %i.iw to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = load i32, ptr %i.it, align 8, !tbaa !124
  %i.la = add nsw i32 %i.kz, %i.ky
  store i32 %i.la, ptr %i.it, align 8, !tbaa !124
  br label %Dau_DsdWriteString.exit102.preheader

Dau_DsdWriteString.exit102.preheader:             ; preds = %bb.p, %Abc_TtWriteHexRev.exit98, %bb.o
  %.1 = phi i32 [ %.044, %bb.o ], [ 2, %Abc_TtWriteHexRev.exit98 ], [ 2, %bb.p ]
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !124 ; 2 uses
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.lc, align 8, !tbaa !124
  %i.lf = sext i32 %i.ld to i64
  %i.lg = getelementptr inbounds i8, ptr %i.lb, i64 %i.lf
  store i8 123, ptr %i.lg, align 1, !tbaa !8
  %i.lh = icmp sgt i32 %3, 0
  br i1 %i.lh, label %Dau_DsdWriteString.exit102.preheader111, label %.preheader

Dau_DsdWriteString.exit102.preheader111:          ; preds = %Dau_DsdWriteString.exit102.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %Dau_DsdWriteString.exit102

.preheader:                                       ; preds = %Dau_DsdWriteString.exit102, %Dau_DsdWriteString.exit102.preheader
  %i.li = load i32, ptr %i.lc, align 8, !tbaa !124 ; 2 uses
  %i.lj = add nsw i32 %i.li, 1
  store i32 %i.lj, ptr %i.lc, align 8, !tbaa !124
  %i.lk = sext i32 %i.li to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lb, i64 %i.lk
  store i8 125, ptr %i.ll, align 1, !tbaa !8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.lm, align 4, !tbaa !116
  ret i32 %.1

Dau_DsdWriteString.exit102:                       ; preds = %Dau_DsdWriteString.exit102.preheader111, %Dau_DsdWriteString.exit102
  %indvars.iv = phi i64 [ 0, %Dau_DsdWriteString.exit102.preheader111 ], [ %indvars.iv.next, %Dau_DsdWriteString.exit102 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !9
  call fastcc void @Dau_DsdWriteVar(ptr noundef nonnull %0, i32 noundef %i.lo, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %Dau_DsdWriteString.exit102, !llvm.loop !157
}

; Function Attrs: nounwind uwtable
define range(i32 2, 1) i32 @Dau_DsdDecomposeSingleVar(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #31
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %5, align 8, !tbaa !120
  %.neg24 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !122
  %.neg = sdiv i64 %i.e, -1000
  %.neg25 = add i64 %.neg, %.neg24
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg25, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %Abc_Clock.exit
  %.021 = phi i32 [ %3, %Abc_Clock.exit ], [ %.1, %.loopexit ] ; 7 uses
  %i.f = icmp sgt i32 %.021, 1
  br i1 %i.f, label %.split.preheader, label %.loopexit
end_hunk_1
begin_hunk_2_@Dau_DsdDecomposeDoubleVars:bb.a
  br i1 %i.kl, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ko = icmp sgt i32 %i.ea, 0
  br i1 %i.ko, label %.preheader.lr.ph.i254, label %Abc_TtCheckEqualCofs.exit275.thread.thread.thread

.preheader.lr.ph.i254:                            ; preds = %bb.af
  %i.kp = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.kq = shl nuw nsw i32 1, %i.kp
  %i.kr = zext nneg i32 %i.kq to i64
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit275.thread.thread.thread, label %.preheader.lr.ph.split.us.i256

.preheader.lr.ph.split.us.i256:                   ; preds = %.preheader.lr.ph.i254
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !39
  br label %.preheader.us.i259

.preheader.us.i259:                               ; preds = %._crit_edge.us.i268, %.preheader.lr.ph.split.us.i256
  %.0101133.us.i260 = phi ptr [ %1, %.preheader.lr.ph.split.us.i256 ], [ %i.ky, %._crit_edge.us.i268 ] ; 2 uses
  %invariant.gep173.i = getelementptr [8 x i8], ptr %.0101133.us.i260, i64 %i.cr
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %indvars.iv.next152.i266 = add nuw nsw i64 %indvars.iv151.i262, 1 ; 2 uses
  %exitcond156.not.i267 = icmp eq i64 %indvars.iv.next152.i266, %wide.trip.count155.i258
  br i1 %exitcond156.not.i267, label %._crit_edge.us.i268, label %bb.ah, !llvm.loop !203

bb.ah:                                            ; preds = %bb.ag, %.preheader.us.i259
  %indvars.iv151.i262 = phi i64 [ 0, %.preheader.us.i259 ], [ %indvars.iv.next152.i266, %bb.ag ] ; 2 uses
  %gep174.i263 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv151.i262
  %i.ku = load i64, ptr %gep174.i263, align 8, !tbaa !39 ; 2 uses
  %i.kv = lshr i64 %i.ku, %i.kr
  %i.kw = xor i64 %i.kv, %i.ku
  %i.kx = and i64 %i.kw, %i.kt
  %.not115.us.i265 = icmp eq i64 %i.kx, 0
  br i1 %.not115.us.i265, label %bb.ag, label %Abc_TtCheckEqualCofs.exit275.thread

._crit_edge.us.i268:                              ; preds = %bb.ag
  %i.ky = getelementptr inbounds [8 x i8], ptr %.0101133.us.i260, i64 %i.cq ; 2 uses
  %i.kz = icmp ult ptr %i.ky, %i.kn
  br i1 %i.kz, label %.preheader.us.i259, label %Abc_TtCheckEqualCofs.exit275.thread, !llvm.loop !204

bb.ai:                                            ; preds = %bb.ae
  %i.la = icmp slt i32 %i.ea, 1
  %i.lb = trunc i64 %indvars.iv612 to i32
  %i.lc = add i32 %i.lb, -6                       ; 3 uses
  %.not137.i235 = icmp eq i32 %i.lc, 31
  %i.ld = or i1 %i.la, %.not137.i235
  %or.cond526 = or i1 %i.ld, %.not.i233
  br i1 %or.cond526, label %Abc_TtCheckEqualCofs.exit275.thread.thread.thread694, label %.preheader121.us.us.preheader.i236

Abc_TtCheckEqualCofs.exit275.thread.thread.thread694: ; preds = %bb.ai
  %i.le = sext i32 %i.ea to i64
  %.idx138.i182695 = shl nsw i64 %i.le, 3
  %i.lf = getelementptr inbounds i8, ptr %1, i64 %.idx138.i182695
  br label %bb.ar

.preheader121.us.us.preheader.i236:               ; preds = %bb.ai
  %i.lg = shl nuw nsw i32 1, %i.lc                ; 2 uses
  %i.lh = add nuw nsw i32 %i.lg, %i.co
  %i.li = shl nuw i32 2, %i.lc
  %i.lj = sext i32 %i.li to i64
  %i.lk = sext i32 %i.lh to i64
  %wide.trip.count.i238 = zext nneg i32 %i.lg to i64
  br label %.preheader121.us.us.i239

.preheader121.us.us.i239:                         ; preds = %._crit_edge125.split.us.us.us.i253, %.preheader121.us.us.preheader.i236
  %.1102126.us.us.i240 = phi ptr [ %i.lq, %._crit_edge125.split.us.us.us.i253 ], [ %1, %.preheader121.us.us.preheader.i236 ] ; 3 uses
  %invariant.gep.i241 = getelementptr [8 x i8], ptr %.1102126.us.us.i240, i64 %i.cr
  %invariant.gep171.i242 = getelementptr [8 x i8], ptr %.1102126.us.us.i240, i64 %i.lk
  br label %.preheader119.us.us.us.i243

.preheader119.us.us.us.i243:                      ; preds = %._crit_edge.us.us.us.i251, %.preheader121.us.us.i239
  %indvars.iv148.i244 = phi i64 [ %indvars.iv.next149.i252, %._crit_edge.us.us.us.i251 ], [ 0, %.preheader121.us.us.i239 ] ; 3 uses
  %gep.i245 = getelementptr [8 x i8], ptr %invariant.gep.i241, i64 %indvars.iv148.i244
  %gep172.i246 = getelementptr [8 x i8], ptr %invariant.gep171.i242, i64 %indvars.iv148.i244
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %indvars.iv.next.i249 = add nuw nsw i64 %indvars.iv.i247, 1 ; 2 uses
  %exitcond.not.i250 = icmp eq i64 %indvars.iv.next.i249, %wide.trip.count.i238
  br i1 %exitcond.not.i250, label %._crit_edge.us.us.us.i251, label %bb.ak, !llvm.loop !205

bb.ak:                                            ; preds = %bb.aj, %.preheader119.us.us.us.i243
  %indvars.iv.i247 = phi i64 [ %indvars.iv.next.i249, %bb.aj ], [ 0, %.preheader119.us.us.us.i243 ] ; 3 uses
  %i.ll = getelementptr [8 x i8], ptr %gep.i245, i64 %indvars.iv.i247
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !39
  %i.ln = getelementptr [8 x i8], ptr %gep172.i246, i64 %indvars.iv.i247
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !39
  %.not.us.us.us.i248 = icmp eq i64 %i.lm, %i.lo
  br i1 %.not.us.us.us.i248, label %bb.aj, label %Abc_TtCheckEqualCofs.exit275.thread

._crit_edge.us.us.us.i251:                        ; preds = %bb.aj
  %indvars.iv.next149.i252 = add nsw i64 %indvars.iv148.i244, %i.lj ; 2 uses
  %i.lp = icmp slt i64 %indvars.iv.next149.i252, %i.cr
  br i1 %i.lp, label %.preheader119.us.us.us.i243, label %._crit_edge125.split.us.us.us.i253, !llvm.loop !206

._crit_edge125.split.us.us.us.i253:               ; preds = %._crit_edge.us.us.us.i251
  %i.lq = getelementptr inbounds [8 x i8], ptr %.1102126.us.us.i240, i64 %i.cq ; 2 uses
  %i.lr = icmp ult ptr %i.lq, %i.kn
  br i1 %i.lr, label %.preheader121.us.us.i239, label %Abc_TtCheckEqualCofs.exit275.thread, !llvm.loop !207

Abc_TtCheckEqualCofs.exit275.thread:              ; preds = %._crit_edge125.split.us.us.us.i253, %._crit_edge.us.i268, %bb.ad, %bb.ac, %bb.ah, %bb.ak
  %i.ls = phi i32 [ 2, %._crit_edge.us.i268 ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 2, %bb.ac ], [ 2, %._crit_edge125.split.us.us.us.i253 ] ; 5 uses
  br i1 %i.cl, label %bb.al, label %Abc_TtCheckEqualCofs.exit275.thread.thread

bb.al:                                            ; preds = %Abc_TtCheckEqualCofs.exit275.thread
  %i.lt = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !39
  %i.lw = and i64 %i.lv, %i.lt
  %i.lx = icmp sgt i32 %i.ea, 0
  br i1 %i.lx, label %.lr.ph.i222, label %Abc_TtCheckEqualCofs.exit228

.lr.ph.i222:                                      ; preds = %bb.al
  %i.ly = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.lz = shl nuw i32 1, %i.ly
  %i.ma = zext nneg i32 %i.lz to i64
  %wide.trip.count160.i223 = zext nneg i32 %i.ea to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %indvars.iv.next158.i226 = add nuw nsw i64 %indvars.iv157.i224, 1 ; 2 uses
  %exitcond161.not.i227 = icmp eq i64 %indvars.iv.next158.i226, %wide.trip.count160.i223
  br i1 %exitcond161.not.i227, label %Abc_TtCheckEqualCofs.exit228, label %bb.an, !llvm.loop !202

bb.an:                                            ; preds = %bb.am, %.lr.ph.i222
  %indvars.iv157.i224 = phi i64 [ 0, %.lr.ph.i222 ], [ %indvars.iv.next158.i226, %bb.am ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i224
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !39 ; 2 uses
  %i.md = lshr i64 %i.mc, %i.ma
  %i.me = xor i64 %i.md, %i.mc
  %i.mf = and i64 %i.lw, %i.me
  %.not116.i225 = icmp eq i64 %i.mf, 0
  br i1 %.not116.i225, label %bb.am, label %Abc_TtCheckEqualCofs.exit228

Abc_TtCheckEqualCofs.exit275.thread.thread.thread: ; preds = %bb.af, %.preheader.lr.ph.i254
  %i.mg = sext i32 %i.ea to i64
  %.idx138.i182693 = shl nsw i64 %i.mg, 3
  %i.mh = getelementptr inbounds i8, ptr %1, i64 %.idx138.i182693
  br label %bb.ao

Abc_TtCheckEqualCofs.exit275.thread.thread:       ; preds = %Abc_TtCheckEqualCofs.exit275.thread
  %i.mi = icmp slt i64 %indvars.iv612, 6
  %i.mj = sext i32 %i.ea to i64
  %.idx138.i182 = shl nsw i64 %i.mj, 3
  %i.mk = getelementptr inbounds i8, ptr %1, i64 %.idx138.i182 ; 2 uses
  br i1 %i.mi, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %Abc_TtCheckEqualCofs.exit275.thread.thread.thread, %Abc_TtCheckEqualCofs.exit275.thread.thread
  %i.ml = phi ptr [ %i.mh, %Abc_TtCheckEqualCofs.exit275.thread.thread.thread ], [ %i.mk, %Abc_TtCheckEqualCofs.exit275.thread.thread ]
  %i.mm = phi i32 [ 2, %Abc_TtCheckEqualCofs.exit275.thread.thread.thread ], [ %i.ls, %Abc_TtCheckEqualCofs.exit275.thread.thread ] ; 4 uses
  %i.mn = icmp sgt i32 %i.ea, 0
  br i1 %i.mn, label %.preheader.lr.ph.i207, label %Abc_TtCheckEqualCofs.exit228

.preheader.lr.ph.i207:                            ; preds = %bb.ao
  %i.mo = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.mp = shl nuw nsw i32 1, %i.mo
  %i.mq = zext nneg i32 %i.mp to i64
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit228, label %.preheader.lr.ph.split.us.i209

.preheader.lr.ph.split.us.i209:                   ; preds = %.preheader.lr.ph.i207
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !39
  br label %.preheader.us.i212

.preheader.us.i212:                               ; preds = %._crit_edge.us.i221, %.preheader.lr.ph.split.us.i209
  %.0101133.us.i213 = phi ptr [ %1, %.preheader.lr.ph.split.us.i209 ], [ %i.mx, %._crit_edge.us.i221 ] ; 2 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  %indvars.iv.next152.i219 = add nuw nsw i64 %indvars.iv151.i215, 1 ; 2 uses
  %exitcond156.not.i220 = icmp eq i64 %indvars.iv.next152.i219, %wide.trip.count155.i258
  br i1 %exitcond156.not.i220, label %._crit_edge.us.i221, label %bb.aq, !llvm.loop !203

bb.aq:                                            ; preds = %bb.ap, %.preheader.us.i212
  %indvars.iv151.i215 = phi i64 [ 0, %.preheader.us.i212 ], [ %indvars.iv.next152.i219, %bb.ap ] ; 2 uses
  %gep174.i216 = getelementptr [8 x i8], ptr %.0101133.us.i213, i64 %indvars.iv151.i215
  %i.mt = load i64, ptr %gep174.i216, align 8, !tbaa !39 ; 2 uses
  %i.mu = lshr i64 %i.mt, %i.mq
  %i.mv = xor i64 %i.mu, %i.mt
  %i.mw = and i64 %i.mv, %i.ms
  %.not115.us.i218 = icmp eq i64 %i.mw, 0
  br i1 %.not115.us.i218, label %bb.ap, label %Abc_TtCheckEqualCofs.exit228

._crit_edge.us.i221:                              ; preds = %bb.ap
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0101133.us.i213, i64 %i.cq ; 2 uses
  %i.my = icmp ult ptr %i.mx, %i.ml
  br i1 %i.my, label %.preheader.us.i212, label %Abc_TtCheckEqualCofs.exit228, !llvm.loop !204

bb.ar:                                            ; preds = %Abc_TtCheckEqualCofs.exit275.thread.thread.thread694, %Abc_TtCheckEqualCofs.exit275.thread.thread
  %i.mz = phi ptr [ %i.lf, %Abc_TtCheckEqualCofs.exit275.thread.thread.thread694 ], [ %i.mk, %Abc_TtCheckEqualCofs.exit275.thread.thread ]
  %i.na = phi i32 [ 2, %Abc_TtCheckEqualCofs.exit275.thread.thread.thread694 ], [ %i.ls, %Abc_TtCheckEqualCofs.exit275.thread.thread ] ; 5 uses
  %i.nb = trunc i64 %indvars.iv612 to i32
  %i.nc = add i32 %i.nb, -6                       ; 3 uses
  %i.nd = shl nuw i32 1, %i.nc                    ; 2 uses
  %i.ne = icmp sgt i32 %i.ea, 0
  br i1 %i.ne, label %.preheader121.lr.ph.i185, label %Abc_TtCheckEqualCofs.exit228

.preheader121.lr.ph.i185:                         ; preds = %bb.ar
  %i.nf = shl i32 2, %i.nc
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit228, label %.preheader121.lr.ph.split.us.i187

.preheader121.lr.ph.split.us.i187:                ; preds = %.preheader121.lr.ph.i185
  %.not137.i188 = icmp eq i32 %i.nc, 31
  br i1 %.not137.i188, label %Abc_TtCheckEqualCofs.exit228, label %.preheader121.us.us.preheader.i189

.preheader121.us.us.preheader.i189:               ; preds = %.preheader121.lr.ph.split.us.i187
  %smax.i190 = call i32 @llvm.smax.i32(i32 %i.nd, i32 1)
  %i.ng = sext i32 %i.nf to i64
  %i.nh = sext i32 %i.nd to i64
  %wide.trip.count.i191 = zext nneg i32 %smax.i190 to i64
  br label %.preheader121.us.us.i192

.preheader121.us.us.i192:                         ; preds = %._crit_edge125.split.us.us.us.i206, %.preheader121.us.us.preheader.i189
  %.1102126.us.us.i193 = phi ptr [ %i.nn, %._crit_edge125.split.us.us.us.i206 ], [ %1, %.preheader121.us.us.preheader.i189 ] ; 3 uses
  %invariant.gep171.i195 = getelementptr [8 x i8], ptr %.1102126.us.us.i193, i64 %i.nh
  br label %.preheader119.us.us.us.i196

.preheader119.us.us.us.i196:                      ; preds = %._crit_edge.us.us.us.i204, %.preheader121.us.us.i192
  %indvars.iv148.i197 = phi i64 [ %indvars.iv.next149.i205, %._crit_edge.us.us.us.i204 ], [ 0, %.preheader121.us.us.i192 ] ; 3 uses
  %gep.i198 = getelementptr [8 x i8], ptr %.1102126.us.us.i193, i64 %indvars.iv148.i197
  %gep172.i199 = getelementptr [8 x i8], ptr %invariant.gep171.i195, i64 %indvars.iv148.i197
  br label %bb.at

bb.as:                                            ; preds = %bb.at
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next.i202, %wide.trip.count.i191
  br i1 %exitcond.not.i203, label %._crit_edge.us.us.us.i204, label %bb.at, !llvm.loop !205

bb.at:                                            ; preds = %bb.as, %.preheader119.us.us.us.i196
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i202, %bb.as ], [ 0, %.preheader119.us.us.us.i196 ] ; 3 uses
  %i.ni = getelementptr [8 x i8], ptr %gep.i198, i64 %indvars.iv.i200
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !39
  %i.nk = getelementptr [8 x i8], ptr %gep172.i199, i64 %indvars.iv.i200
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !39
  %.not.us.us.us.i201 = icmp eq i64 %i.nj, %i.nl
  br i1 %.not.us.us.us.i201, label %bb.as, label %Abc_TtCheckEqualCofs.exit228

._crit_edge.us.us.us.i204:                        ; preds = %bb.as
  %indvars.iv.next149.i205 = add nsw i64 %indvars.iv148.i197, %i.ng ; 2 uses
  %i.nm = icmp slt i64 %indvars.iv.next149.i205, %i.cr
  br i1 %i.nm, label %.preheader119.us.us.us.i196, label %._crit_edge125.split.us.us.us.i206, !llvm.loop !206

._crit_edge125.split.us.us.us.i206:               ; preds = %._crit_edge.us.us.us.i204
  %i.nn = getelementptr inbounds [8 x i8], ptr %.1102126.us.us.i193, i64 %i.cq ; 2 uses
  %i.no = icmp ult ptr %i.nn, %i.mz
  br i1 %i.no, label %.preheader121.us.us.i192, label %Abc_TtCheckEqualCofs.exit228, !llvm.loop !207

Abc_TtCheckEqualCofs.exit228:                     ; preds = %._crit_edge125.split.us.us.us.i206, %._crit_edge.us.i221, %bb.am, %bb.an, %bb.aq, %bb.at, %bb.ab, %Abc_TtCheckEqualCofs.exit275.thread376, %bb.al, %bb.ao, %.preheader.lr.ph.i207, %bb.ar, %.preheader121.lr.ph.i185, %.preheader121.lr.ph.split.us.i187
  %i.np = phi i32 [ %i.jp, %Abc_TtCheckEqualCofs.exit275.thread376 ], [ 2, %bb.ab ], [ %i.mm, %._crit_edge.us.i221 ], [ %i.mm, %bb.ao ], [ %i.na, %.preheader121.lr.ph.i185 ], [ %i.na, %bb.ar ], [ %i.ls, %bb.al ], [ %i.ls, %bb.am ], [ %i.na, %.preheader121.lr.ph.split.us.i187 ], [ %i.mm, %.preheader.lr.ph.i207 ], [ %i.na, %bb.at ], [ %i.mm, %bb.aq ], [ %i.ls, %bb.an ], [ %i.na, %._crit_edge125.split.us.us.us.i206 ]
  %.3.i184 = phi i32 [ %i.jv, %Abc_TtCheckEqualCofs.exit275.thread376 ], [ 1, %bb.ab ], [ 1, %._crit_edge.us.i221 ], [ 1, %bb.ao ], [ 1, %.preheader121.lr.ph.i185 ], [ 1, %bb.ar ], [ 1, %bb.al ], [ 1, %bb.am ], [ poison, %.preheader121.lr.ph.split.us.i187 ], [ 1, %.preheader.lr.ph.i207 ], [ 0, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 1, %._crit_edge125.split.us.us.us.i206 ]
  %i.nq = or disjoint i32 %.3.i184, %i.np
  br label %Dau_DsdFindSupportOne.exit.i

Dau_DsdFindSupportOne.exit.i:                     ; preds = %Abc_TtCheckEqualCofs.exit228, %Abc_TtCheckEqualCofs.exit323
  %.0.in.i.i = phi i32 [ %i.ja, %Abc_TtCheckEqualCofs.exit323 ], [ %i.nq, %Abc_TtCheckEqualCofs.exit228 ]
  %.0.i.i = xor i32 %.0.in.i.i, 3                 ; 2 uses
  %i.nr = trunc nuw nsw i32 %.0.i.i to i8
  store i8 %i.nr, ptr %i.dv, align 1, !tbaa !8
  switch i32 %.0.i.i, label %Dau_DsdDecomposeDoubleVarsOne.exit [
    i32 3, label %bb.au
    i32 2, label %bb.bw
    i32 1, label %bb.db
  ]

bb.au:                                            ; preds = %Dau_DsdFindSupportOne.exit.i
  %i.ns = icmp eq i32 %i.ea, 1                    ; 2 uses
  br i1 %i.ns, label %Abc_TtCheckEqualCofs.exit181, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.cl, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.nt = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !39
  %i.nw = and i64 %i.nv, %i.nt
  %i.nx = icmp sgt i32 %i.ea, 0
  br i1 %i.nx, label %.lr.ph.i175, label %Abc_TtCheckEqualCofs.exit134.thread400

.lr.ph.i175:                                      ; preds = %bb.aw
  %i.ny = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.nz = shl nuw i32 1, %i.ny
  %i.oa = add nuw nsw i32 %i.nz, %i.ct
  %i.ob = zext nneg i32 %i.oa to i64
  %wide.trip.count160.i176 = zext nneg i32 %i.ea to i64
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay
  %indvars.iv.next158.i179 = add nuw nsw i64 %indvars.iv157.i177, 1 ; 2 uses
  %exitcond161.not.i180 = icmp eq i64 %indvars.iv.next158.i179, %wide.trip.count160.i176
  br i1 %exitcond161.not.i180, label %.thread389, label %bb.ay, !llvm.loop !202

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.i175
  %indvars.iv157.i177 = phi i64 [ 0, %.lr.ph.i175 ], [ %indvars.iv.next158.i179, %bb.ax ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i177
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !39 ; 2 uses
  %i.oe = lshr i64 %i.od, %i.ob
  %i.of = xor i64 %i.oe, %i.od
  %i.og = and i64 %i.nw, %i.of
  %.not116.i178 = icmp eq i64 %i.og, 0
  br i1 %.not116.i178, label %bb.ax, label %Dau_DsdDecomposeDoubleVarsOne.exit

bb.az:                                            ; preds = %bb.av
  %i.oh = icmp slt i64 %indvars.iv612, 6
  %i.oi = sext i32 %i.ea to i64
  %.idx138.i135 = shl nsw i64 %i.oi, 3
  %i.oj = getelementptr inbounds i8, ptr %1, i64 %.idx138.i135 ; 4 uses
  br i1 %i.oh, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ok = icmp sgt i32 %i.ea, 0
  br i1 %i.ok, label %.preheader.lr.ph.i160, label %Abc_TtCheckEqualCofs.exit134.thread400

.preheader.lr.ph.i160:                            ; preds = %bb.ba
  %i.ol = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.om = shl nuw nsw i32 1, %i.ol
  %i.on = zext nneg i32 %i.om to i64
  br i1 %.not.i233, label %.preheader.lr.ph.i113, label %.preheader.lr.ph.split.us.i162

.preheader.lr.ph.split.us.i162:                   ; preds = %.preheader.lr.ph.i160
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !39
  br label %.preheader.us.i165

.preheader.us.i165:                               ; preds = %._crit_edge.us.i174, %.preheader.lr.ph.split.us.i162
  %.0101133.us.i166 = phi ptr [ %1, %.preheader.lr.ph.split.us.i162 ], [ %i.ov, %._crit_edge.us.i174 ] ; 3 uses
  %invariant.gep175.i167 = getelementptr [8 x i8], ptr %.0101133.us.i166, i64 %i.cr
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  %indvars.iv.next152.i172 = add nuw nsw i64 %indvars.iv151.i168, 1 ; 2 uses
  %exitcond156.not.i173 = icmp eq i64 %indvars.iv.next152.i172, %wide.trip.count155.i258
  br i1 %exitcond156.not.i173, label %._crit_edge.us.i174, label %bb.bc, !llvm.loop !203

bb.bc:                                            ; preds = %bb.bb, %.preheader.us.i165
  %indvars.iv151.i168 = phi i64 [ 0, %.preheader.us.i165 ], [ %indvars.iv.next152.i172, %bb.bb ] ; 3 uses
  %gep174.i169 = getelementptr [8 x i8], ptr %.0101133.us.i166, i64 %indvars.iv151.i168
  %i.oq = load i64, ptr %gep174.i169, align 8, !tbaa !39
  %gep176.i170 = getelementptr [8 x i8], ptr %invariant.gep175.i167, i64 %indvars.iv151.i168
  %i.or = load i64, ptr %gep176.i170, align 8, !tbaa !39
  %i.os = lshr i64 %i.or, %i.on
  %i.ot = xor i64 %i.os, %i.oq
  %i.ou = and i64 %i.ot, %i.op
  %.not115.us.i171 = icmp eq i64 %i.ou, 0
  br i1 %.not115.us.i171, label %bb.bb, label %Dau_DsdDecomposeDoubleVarsOne.exit

._crit_edge.us.i174:                              ; preds = %bb.bb
  %i.ov = getelementptr inbounds [8 x i8], ptr %.0101133.us.i166, i64 %i.cq ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.oj
  br i1 %i.ow, label %.preheader.us.i165, label %.thread389, !llvm.loop !204

bb.bd:                                            ; preds = %bb.az
  %i.ox = trunc i64 %indvars.iv612 to i32
  %i.oy = add i32 %i.ox, -6                       ; 4 uses
  %i.oz = shl nuw i32 1, %i.oy                    ; 3 uses
  %i.pa = add nsw i32 %i.oz, %i.co
  %i.pb = icmp sgt i32 %i.ea, 0
  br i1 %i.pb, label %.preheader121.lr.ph.i138, label %Abc_TtCheckEqualCofs.exit134.thread400

.preheader121.lr.ph.i138:                         ; preds = %bb.bd
  %i.pc = shl i32 2, %i.oy
  br i1 %.not.i233, label %.preheader121.lr.ph.i92, label %.preheader121.lr.ph.split.us.i140

.preheader121.lr.ph.split.us.i140:                ; preds = %.preheader121.lr.ph.i138
  %.not137.i141 = icmp eq i32 %i.oy, 31
  br i1 %.not137.i141, label %Abc_TtCheckEqualCofs.exit134.thread400, label %.preheader121.us.us.preheader.i142

.preheader121.us.us.preheader.i142:               ; preds = %.preheader121.lr.ph.split.us.i140
  %smax.i143 = call i32 @llvm.smax.i32(i32 %i.oz, i32 1)
  %i.pd = sext i32 %i.pc to i64
  %i.pe = sext i32 %i.pa to i64
  %wide.trip.count.i144 = zext nneg i32 %smax.i143 to i64
  br label %.preheader121.us.us.i145

.preheader121.us.us.i145:                         ; preds = %._crit_edge125.split.us.us.us.i159, %.preheader121.us.us.preheader.i142
  %.1102126.us.us.i146 = phi ptr [ %i.pk, %._crit_edge125.split.us.us.us.i159 ], [ %1, %.preheader121.us.us.preheader.i142 ] ; 3 uses
  %invariant.gep171.i148 = getelementptr [8 x i8], ptr %.1102126.us.us.i146, i64 %i.pe
  br label %.preheader119.us.us.us.i149

.preheader119.us.us.us.i149:                      ; preds = %._crit_edge.us.us.us.i157, %.preheader121.us.us.i145
  %indvars.iv148.i150 = phi i64 [ %indvars.iv.next149.i158, %._crit_edge.us.us.us.i157 ], [ 0, %.preheader121.us.us.i145 ] ; 3 uses
  %gep.i151 = getelementptr [8 x i8], ptr %.1102126.us.us.i146, i64 %indvars.iv148.i150
  %gep172.i152 = getelementptr [8 x i8], ptr %invariant.gep171.i148, i64 %indvars.iv148.i150
  br label %bb.bf

bb.be:                                            ; preds = %bb.bf
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %indvars.iv.next.i155, %wide.trip.count.i144
  br i1 %exitcond.not.i156, label %._crit_edge.us.us.us.i157, label %bb.bf, !llvm.loop !205

bb.bf:                                            ; preds = %bb.be, %.preheader119.us.us.us.i149
  %indvars.iv.i153 = phi i64 [ %indvars.iv.next.i155, %bb.be ], [ 0, %.preheader119.us.us.us.i149 ] ; 3 uses
  %i.pf = getelementptr [8 x i8], ptr %gep.i151, i64 %indvars.iv.i153
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !39
  %i.ph = getelementptr [8 x i8], ptr %gep172.i152, i64 %indvars.iv.i153
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !39
  %.not.us.us.us.i154 = icmp eq i64 %i.pg, %i.pi
  br i1 %.not.us.us.us.i154, label %bb.be, label %Dau_DsdDecomposeDoubleVarsOne.exit

._crit_edge.us.us.us.i157:                        ; preds = %bb.be
  %indvars.iv.next149.i158 = add nsw i64 %indvars.iv148.i150, %i.pd ; 2 uses
  %i.pj = icmp slt i64 %indvars.iv.next149.i158, %i.cr
  br i1 %i.pj, label %.preheader119.us.us.us.i149, label %._crit_edge125.split.us.us.us.i159, !llvm.loop !206

._crit_edge125.split.us.us.us.i159:               ; preds = %._crit_edge.us.us.us.i157
  %i.pk = getelementptr inbounds [8 x i8], ptr %.1102126.us.us.i146, i64 %i.cq ; 2 uses
  %i.pl = icmp ult ptr %i.pk, %i.oj
  br i1 %i.pl, label %.preheader121.us.us.i145, label %.thread389, !llvm.loop !207

Abc_TtCheckEqualCofs.exit181:                     ; preds = %bb.au
  %i.pm = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !39
  %i.pp = and i64 %i.po, %i.pm                    ; 2 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.pr = shl nuw i32 1, %i.pq                    ; 2 uses
  %i.ps = add nsw i32 %i.pr, %i.ct
  %i.pt = load i64, ptr %1, align 8, !tbaa !39    ; 4 uses
  %i.pu = zext nneg i32 %i.ps to i64
  %i.pv = lshr i64 %i.pt, %i.pu
  %i.pw = xor i64 %i.pv, %i.pt
  %i.px = and i64 %i.pp, %i.pw
  %.not438 = icmp eq i64 %i.px, 0
  br i1 %.not438, label %Abc_TtCheckEqualCofs.exit134, label %Dau_DsdDecomposeDoubleVarsOne.exit

.thread389:                                       ; preds = %._crit_edge125.split.us.us.us.i159, %._crit_edge.us.i174, %bb.ax
  br i1 %i.cl, label %bb.bg, label %.thread389.thread

bb.bg:                                            ; preds = %.thread389
  %i.py = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !39
  %i.qb = and i64 %i.qa, %i.py
  %i.qc = icmp sgt i32 %i.ea, 0
  br i1 %i.qc, label %.lr.ph.i128, label %Abc_TtCheckEqualCofs.exit134.thread400

.lr.ph.i128:                                      ; preds = %bb.bg
  %i.qd = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.qe = shl nuw i32 1, %i.qd
  %i.qf = zext nneg i32 %i.qe to i64
  %wide.trip.count160.i129 = zext nneg i32 %i.ea to i64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next158.i132 = add nuw nsw i64 %indvars.iv157.i130, 1 ; 2 uses
  %exitcond161.not.i133 = icmp eq i64 %indvars.iv.next158.i132, %wide.trip.count160.i129
  br i1 %exitcond161.not.i133, label %Abc_TtCheckEqualCofs.exit134.thread400, label %bb.bi, !llvm.loop !202

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i128
  %indvars.iv157.i130 = phi i64 [ 0, %.lr.ph.i128 ], [ %indvars.iv.next158.i132, %bb.bh ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i130
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !39 ; 2 uses
  %i.qi = lshr i64 %i.qh, %i.qf
  %i.qj = lshr i64 %i.qh, %i.cu
  %i.qk = xor i64 %i.qi, %i.qj
  %i.ql = and i64 %i.qb, %i.qk
  %.not116.i131 = icmp eq i64 %i.ql, 0
  br i1 %.not116.i131, label %bb.bh, label %Dau_DsdDecomposeDoubleVarsOne.exit

.thread389.thread:                                ; preds = %.thread389
  %i.qm = icmp slt i64 %indvars.iv612, 6
  %i.qn = sext i32 %i.ea to i64
  %.idx138.i89 = shl nsw i64 %i.qn, 3
  %i.qo = getelementptr inbounds i8, ptr %1, i64 %.idx138.i89 ; 2 uses
  br i1 %i.qm, label %.thread389.thread.thread, label %.thread389.thread.thread432

.thread389.thread.thread:                         ; preds = %.thread389.thread
  %i.qp = icmp sgt i32 %i.ea, 0
  br i1 %i.qp, label %.preheader.lr.ph.i113, label %Abc_TtCheckEqualCofs.exit134.thread400

.preheader.lr.ph.i113:                            ; preds = %.preheader.lr.ph.i160, %.thread389.thread.thread
  %i.qq = phi ptr [ %i.qo, %.thread389.thread.thread ], [ %i.oj, %.preheader.lr.ph.i160 ]
  %i.qr = phi i32 [ %i.co, %.thread389.thread.thread ], [ %i.cy, %.preheader.lr.ph.i160 ] ; 2 uses
  %i.qs = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.qt = shl nuw nsw i32 1, %i.qs
  %i.qu = zext nneg i32 %i.qt to i64
  br i1 %.not139.i114, label %Abc_TtCheckEqualCofs.exit134.thread400, label %.preheader.lr.ph.split.us.i115

.preheader.lr.ph.split.us.i115:                   ; preds = %.preheader.lr.ph.i113
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !39
  %i.qx = sext i32 %i.qr to i64
  %smax154.i116 = call i32 @llvm.smax.i32(i32 %i.qr, i32 1)
  %wide.trip.count155.i117 = zext nneg i32 %smax154.i116 to i64
  br label %.preheader.us.i118

.preheader.us.i118:                               ; preds = %._crit_edge.us.i127, %.preheader.lr.ph.split.us.i115
  %.0101133.us.i119 = phi ptr [ %1, %.preheader.lr.ph.split.us.i115 ], [ %i.rd, %._crit_edge.us.i127 ] ; 3 uses
  %invariant.gep175.i120 = getelementptr [8 x i8], ptr %.0101133.us.i119, i64 %i.qx
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bk
  %indvars.iv.next152.i125 = add nuw nsw i64 %indvars.iv151.i121, 1 ; 2 uses
  %exitcond156.not.i126 = icmp eq i64 %indvars.iv.next152.i125, %wide.trip.count155.i117
  br i1 %exitcond156.not.i126, label %._crit_edge.us.i127, label %bb.bk, !llvm.loop !203

bb.bk:                                            ; preds = %bb.bj, %.preheader.us.i118
  %indvars.iv151.i121 = phi i64 [ 0, %.preheader.us.i118 ], [ %indvars.iv.next152.i125, %bb.bj ] ; 3 uses
  %gep174.i122 = getelementptr [8 x i8], ptr %.0101133.us.i119, i64 %indvars.iv151.i121
  %i.qy = load i64, ptr %gep174.i122, align 8, !tbaa !39
  %i.qz = lshr i64 %i.qy, %i.qu
  %gep176.i123 = getelementptr [8 x i8], ptr %invariant.gep175.i120, i64 %indvars.iv151.i121
  %i.ra = load i64, ptr %gep176.i123, align 8, !tbaa !39
  %i.rb = xor i64 %i.ra, %i.qz
  %i.rc = and i64 %i.rb, %i.qw
  %.not115.us.i124 = icmp eq i64 %i.rc, 0
  br i1 %.not115.us.i124, label %bb.bj, label %Dau_DsdDecomposeDoubleVarsOne.exit

._crit_edge.us.i127:                              ; preds = %bb.bj
  %i.rd = getelementptr inbounds [8 x i8], ptr %.0101133.us.i119, i64 %i.dc ; 2 uses
  %i.re = icmp ult ptr %i.rd, %i.qq
  br i1 %i.re, label %.preheader.us.i118, label %Abc_TtCheckEqualCofs.exit134.thread400, !llvm.loop !204

.thread389.thread.thread432:                      ; preds = %.thread389.thread
  %i.rf = trunc i64 %indvars.iv612 to i32
  %.pre618 = add i32 %i.rf, -6                    ; 2 uses
  %.pre620 = shl nuw i32 1, %.pre618
  %i.rg = icmp sgt i32 %i.ea, 0
  br i1 %i.rg, label %.preheader121.lr.ph.i92, label %Abc_TtCheckEqualCofs.exit134.thread400

.preheader121.lr.ph.i92:                          ; preds = %.preheader121.lr.ph.i138, %.thread389.thread.thread432
  %i.rh = phi ptr [ %i.qo, %.thread389.thread.thread432 ], [ %i.oj, %.preheader121.lr.ph.i138 ]
  %i.ri = phi i32 [ %i.co, %.thread389.thread.thread432 ], [ %i.cy, %.preheader121.lr.ph.i138 ]
  %.pre-phi619678 = phi i32 [ %.pre618, %.thread389.thread.thread432 ], [ %i.oy, %.preheader121.lr.ph.i138 ] ; 2 uses
  %.pre-phi621677 = phi i32 [ %.pre620, %.thread389.thread.thread432 ], [ %i.oz, %.preheader121.lr.ph.i138 ] ; 2 uses
  %.not137.i95 = icmp eq i32 %.pre-phi619678, 31
  %or.cond435 = or i1 %i.da, %.not137.i95
  br i1 %or.cond435, label %Abc_TtCheckEqualCofs.exit134.thread400, label %.preheader121.us.us.preheader.i96

.preheader121.us.us.preheader.i96:                ; preds = %.preheader121.lr.ph.i92
  %i.rj = shl nuw i32 2, %.pre-phi619678
  %smax.i97 = call i32 @llvm.smax.i32(i32 %.pre-phi621677, i32 1)
  %i.rk = sext i32 %i.rj to i64
  %i.rl = sext i32 %.pre-phi621677 to i64
  %i.rm = sext i32 %i.ri to i64                   ; 2 uses
  %wide.trip.count.i98 = zext nneg i32 %smax.i97 to i64
  br label %.preheader121.us.us.i99

.preheader121.us.us.i99:                          ; preds = %._crit_edge125.split.us.us.us.i112, %.preheader121.us.us.preheader.i96
  %.1102126.us.us.i100 = phi ptr [ %i.rs, %._crit_edge125.split.us.us.us.i112 ], [ %1, %.preheader121.us.us.preheader.i96 ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.1102126.us.us.i100, i64 %i.rl
  %invariant.gep171.i101 = getelementptr [8 x i8], ptr %.1102126.us.us.i100, i64 %i.rm
  br label %.preheader119.us.us.us.i102

.preheader119.us.us.us.i102:                      ; preds = %._crit_edge.us.us.us.i110, %.preheader121.us.us.i99
  %indvars.iv148.i103 = phi i64 [ %indvars.iv.next149.i111, %._crit_edge.us.us.us.i110 ], [ 0, %.preheader121.us.us.i99 ] ; 3 uses
  %gep.i104 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv148.i103
  %gep172.i105 = getelementptr [8 x i8], ptr %invariant.gep171.i101, i64 %indvars.iv148.i103
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bm
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i98
  br i1 %exitcond.not.i109, label %._crit_edge.us.us.us.i110, label %bb.bm, !llvm.loop !205

bb.bm:                                            ; preds = %bb.bl, %.preheader119.us.us.us.i102
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i108, %bb.bl ], [ 0, %.preheader119.us.us.us.i102 ] ; 3 uses
  %i.rn = getelementptr [8 x i8], ptr %gep.i104, i64 %indvars.iv.i106
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !39
  %i.rp = getelementptr [8 x i8], ptr %gep172.i105, i64 %indvars.iv.i106
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !39
end_hunk_2
begin_hunk_3_@Dau_DsdDecomposeDoubleVars:bb.a
  br i1 %i.aaw, label %.preheader.us.i200.i, label %.lr.ph.preheader.i.i, !llvm.loop !170

Abc_TtCofactor1.exit.thread568.i:                 ; preds = %bb.bv, %bb.bu
  call fastcc void @Dau_DsdTtElems()
  br label %Abc_TtMux.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.us.i207.i, %vector.body846, %scalar.ph840, %scalar.ph840.2, %.preheader.lr.ph.i195.i, %Abc_TtCofactor0p.exit.thread564.i
  call fastcc void @Dau_DsdTtElems()
  %.in596.i = getelementptr inbounds nuw [8 x i8], ptr @Dau_DsdTtElems.pTtElems, i64 %indvars.iv612
  %i.aax = load ptr, ptr %.in596.i, align 8, !tbaa !63 ; 5 uses
  %wide.trip.count.i213.i = zext i32 %i.ea to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ea, 4
  %i.aay = ptrtoaddr ptr %i.aax to i64
  %i.aaz = sub i64 %i.aay, %i.a
  %diff.check = icmp ugt i64 %i.aaz, -32
  %or.cond1513 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1513, label %.lr.ph.i214.i.preheader, label %vector.ph

.lr.ph.i214.i.preheader:                          ; preds = %.lr.ph.preheader.i.i
  %xtraiter1717 = and i64 %wide.trip.count.i213.i, 1
  %i.aba = icmp eq i32 %i.ea, 1
  br i1 %i.aba, label %.lr.ph.i214.i.epil.preheader, label %.lr.ph.i214.i.preheader.new

.lr.ph.i214.i.preheader.new:                      ; preds = %.lr.ph.i214.i.preheader
  %unroll_iter1721 = and i64 %wide.trip.count.i213.i, 4294967294
  br label %.lr.ph.i214.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i213.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %index ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %wide.load = load <2 x i64>, ptr %i.abb, align 8, !tbaa !39 ; 2 uses
  %wide.load835 = load <2 x i64>, ptr %i.abc, align 8, !tbaa !39 ; 2 uses
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %wide.load836 = load <2 x i64>, ptr %i.abd, align 16, !tbaa !39
  %wide.load837 = load <2 x i64>, ptr %i.abe, align 16, !tbaa !39
  %i.abf = and <2 x i64> %wide.load836, %wide.load
  %i.abg = and <2 x i64> %wide.load837, %wide.load835
  %i.abh = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.abi = xor <2 x i64> %wide.load835, splat (i64 -1)
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %wide.load838 = load <2 x i64>, ptr %i.abj, align 16, !tbaa !39
  %wide.load839 = load <2 x i64>, ptr %i.abk, align 16, !tbaa !39
  %i.abl = and <2 x i64> %wide.load838, %i.abh
  %i.abm = and <2 x i64> %wide.load839, %i.abi
  %i.abn = or <2 x i64> %i.abl, %i.abf
  %i.abo = or <2 x i64> %i.abm, %i.abg
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  store <2 x i64> %i.abn, ptr %i.abp, align 8, !tbaa !39
  store <2 x i64> %i.abo, ptr %i.abq, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abr = icmp eq i64 %index.next, %n.vec
  br i1 %i.abr, label %Abc_TtMux.exit.i, label %vector.body, !llvm.loop !220

.lr.ph.i214.i:                                    ; preds = %.lr.ph.i214.i, %.lr.ph.i214.i.preheader.new
  %indvars.iv.i215.i = phi i64 [ 0, %.lr.ph.i214.i.preheader.new ], [ %indvars.iv.next.i216.i.1, %.lr.ph.i214.i ] ; 6 uses
  %niter1722 = phi i64 [ 0, %.lr.ph.i214.i.preheader.new ], [ %niter1722.next.1, %.lr.ph.i214.i ]
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv.i215.i
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !39 ; 2 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i215.i
  %i.abv = load i64, ptr %i.abu, align 16, !tbaa !39
  %i.abw = and i64 %i.abv, %i.abt
  %i.abx = xor i64 %i.abt, -1
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i215.i
  %i.abz = load i64, ptr %i.aby, align 16, !tbaa !39
  %i.aca = and i64 %i.abz, %i.abx
  %i.acb = or i64 %i.aca, %i.abw
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i215.i
  store i64 %i.acb, ptr %i.acc, align 8, !tbaa !39
  %indvars.iv.next.i216.i = or disjoint i64 %indvars.iv.i215.i, 1 ; 4 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv.next.i216.i
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !39 ; 2 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i216.i
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !39
  %i.ach = and i64 %i.acg, %i.ace
  %i.aci = xor i64 %i.ace, -1
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i216.i
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !39
  %i.acl = and i64 %i.ack, %i.aci
  %i.acm = or i64 %i.acl, %i.ach
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i216.i
  store i64 %i.acm, ptr %i.acn, align 8, !tbaa !39
  %indvars.iv.next.i216.i.1 = add nuw nsw i64 %indvars.iv.i215.i, 2 ; 2 uses
  %niter1722.next.1 = add i64 %niter1722, 2       ; 2 uses
  %niter1722.ncmp.1 = icmp eq i64 %niter1722.next.1, %unroll_iter1721
  br i1 %niter1722.ncmp.1, label %Abc_TtMux.exit.i.loopexit.unr-lcssa, label %.lr.ph.i214.i, !llvm.loop !221

Abc_TtMux.exit.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i214.i
  %lcmp.mod1719.not = icmp eq i64 %xtraiter1717, 0
  br i1 %lcmp.mod1719.not, label %Abc_TtMux.exit.i, label %.lr.ph.i214.i.epil.preheader

.lr.ph.i214.i.epil.preheader:                     ; preds = %Abc_TtMux.exit.i.loopexit.unr-lcssa, %.lr.ph.i214.i.preheader
  %indvars.iv.i215.i.epil.init = phi i64 [ 0, %.lr.ph.i214.i.preheader ], [ %indvars.iv.next.i216.i.1, %Abc_TtMux.exit.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1720 = trunc i32 %i.ea to i1
  call void @llvm.assume(i1 %lcmp.mod1720)
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv.i215.i.epil.init
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !39 ; 2 uses
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i215.i.epil.init
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !39
  %i.acs = and i64 %i.acr, %i.acp
  %i.act = xor i64 %i.acp, -1
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i215.i.epil.init
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !39
  %i.acw = and i64 %i.acv, %i.act
  %i.acx = or i64 %i.acw, %i.acs
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i215.i.epil.init
  store i64 %i.acx, ptr %i.acy, align 8, !tbaa !39
  br label %Abc_TtMux.exit.i

Abc_TtMux.exit.i:                                 ; preds = %vector.body, %.lr.ph.i214.i.epil.preheader, %Abc_TtMux.exit.i.loopexit.unr-lcssa, %Abc_TtCofactor1.exit.thread568.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.eg

bb.bw:                                            ; preds = %Dau_DsdFindSupportOne.exit.i
  %i.acz = icmp eq i32 %i.ea, 1                   ; 3 uses
  br i1 %i.acz, label %Abc_TtCheckEqualCofs.exit88, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.cl, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.ada = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !39
  %i.add = and i64 %i.adc, %i.ada
  %i.ade = icmp sgt i32 %i.ea, 0
  br i1 %i.ade, label %.lr.ph.i82, label %Abc_TtCheckEqualCofs.exit88.thread

.lr.ph.i82:                                       ; preds = %bb.by
  %wide.trip.count160.i83 = zext nneg i32 %i.ea to i64
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next158.i86 = add nuw nsw i64 %indvars.iv157.i84, 1 ; 2 uses
  %exitcond161.not.i87 = icmp eq i64 %indvars.iv.next158.i86, %wide.trip.count160.i83
  br i1 %exitcond161.not.i87, label %Abc_TtCheckEqualCofs.exit88.thread, label %bb.ca, !llvm.loop !202

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i82
  %indvars.iv157.i84 = phi i64 [ 0, %.lr.ph.i82 ], [ %indvars.iv.next158.i86, %bb.bz ] ; 2 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i84
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !39 ; 2 uses
  %i.adh = lshr i64 %i.adg, %i.cu
  %i.adi = xor i64 %i.adh, %i.adg
  %i.adj = and i64 %i.add, %i.adi
  %.not116.i85 = icmp eq i64 %i.adj, 0
  br i1 %.not116.i85, label %bb.bz, label %Abc_TtCheckEqualCofs.exit88.thread409

bb.cb:                                            ; preds = %bb.bx
  %i.adk = icmp slt i64 %indvars.iv612, 6
  %i.adl = sext i32 %i.ea to i64
  %.idx138.i43 = shl nsw i64 %i.adl, 3
  %i.adm = getelementptr inbounds i8, ptr %1, i64 %.idx138.i43 ; 2 uses
  br i1 %i.adk, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.adn = icmp slt i32 %i.ea, 1
  %brmerge532 = or i1 %i.adn, %.not.i233
  br i1 %brmerge532, label %Abc_TtCheckEqualCofs.exit88.thread, label %.preheader.lr.ph.split.us.i69

.preheader.lr.ph.split.us.i69:                    ; preds = %bb.cc
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !39
  br label %.preheader.us.i72

.preheader.us.i72:                                ; preds = %._crit_edge.us.i81, %.preheader.lr.ph.split.us.i69
  %.0101133.us.i73 = phi ptr [ %1, %.preheader.lr.ph.split.us.i69 ], [ %i.adu, %._crit_edge.us.i81 ] ; 3 uses
  %invariant.gep175.i74 = getelementptr [8 x i8], ptr %.0101133.us.i73, i64 %i.cr
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ce
  %indvars.iv.next152.i79 = add nuw nsw i64 %indvars.iv151.i75, 1 ; 2 uses
  %exitcond156.not.i80 = icmp eq i64 %indvars.iv.next152.i79, %wide.trip.count155.i258
  br i1 %exitcond156.not.i80, label %._crit_edge.us.i81, label %bb.ce, !llvm.loop !203

bb.ce:                                            ; preds = %bb.cd, %.preheader.us.i72
  %indvars.iv151.i75 = phi i64 [ 0, %.preheader.us.i72 ], [ %indvars.iv.next152.i79, %bb.cd ] ; 3 uses
  %gep174.i76 = getelementptr [8 x i8], ptr %.0101133.us.i73, i64 %indvars.iv151.i75
  %i.adq = load i64, ptr %gep174.i76, align 8, !tbaa !39
  %gep176.i77 = getelementptr [8 x i8], ptr %invariant.gep175.i74, i64 %indvars.iv151.i75
  %i.adr = load i64, ptr %gep176.i77, align 8, !tbaa !39
  %i.ads = xor i64 %i.adr, %i.adq
  %i.adt = and i64 %i.ads, %i.adp
  %.not115.us.i78 = icmp eq i64 %i.adt, 0
  br i1 %.not115.us.i78, label %bb.cd, label %Abc_TtCheckEqualCofs.exit88.thread409

._crit_edge.us.i81:                               ; preds = %bb.cd
  %i.adu = getelementptr inbounds [8 x i8], ptr %.0101133.us.i73, i64 %i.cq ; 2 uses
  %i.adv = icmp ult ptr %i.adu, %i.adm
  br i1 %i.adv, label %.preheader.us.i72, label %Abc_TtCheckEqualCofs.exit88.thread, !llvm.loop !204

bb.cf:                                            ; preds = %bb.cb
  %i.adw = trunc i64 %indvars.iv612 to i32
  %i.adx = add i32 %i.adw, -6                     ; 3 uses
  %i.ady = shl nuw i32 1, %i.adx
  %i.adz = icmp sgt i32 %i.ea, 0
  br i1 %i.adz, label %.preheader121.lr.ph.i46, label %Abc_TtCheckEqualCofs.exit88.thread

.preheader121.lr.ph.i46:                          ; preds = %bb.cf
  %i.aea = shl i32 2, %i.adx
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit88.thread, label %.preheader121.lr.ph.split.us.i48

.preheader121.lr.ph.split.us.i48:                 ; preds = %.preheader121.lr.ph.i46
  %.not137.i49 = icmp eq i32 %i.adx, 31
  br i1 %.not137.i49, label %Abc_TtCheckEqualCofs.exit88.thread409, label %.preheader121.us.us.preheader.i50

.preheader121.us.us.preheader.i50:                ; preds = %.preheader121.lr.ph.split.us.i48
  %smax.i51 = call i32 @llvm.smax.i32(i32 %i.ady, i32 1)
  %i.aeb = sext i32 %i.aea to i64
  %wide.trip.count.i52 = zext nneg i32 %smax.i51 to i64
  br label %.preheader121.us.us.i53

.preheader121.us.us.i53:                          ; preds = %._crit_edge125.split.us.us.us.i66, %.preheader121.us.us.preheader.i50
  %.1102126.us.us.i54 = phi ptr [ %i.aeh, %._crit_edge125.split.us.us.us.i66 ], [ %1, %.preheader121.us.us.preheader.i50 ] ; 3 uses
  %invariant.gep171.i55 = getelementptr [8 x i8], ptr %.1102126.us.us.i54, i64 %i.cr
  br label %.preheader119.us.us.us.i56

.preheader119.us.us.us.i56:                       ; preds = %._crit_edge.us.us.us.i64, %.preheader121.us.us.i53
  %indvars.iv148.i57 = phi i64 [ %indvars.iv.next149.i65, %._crit_edge.us.us.us.i64 ], [ 0, %.preheader121.us.us.i53 ] ; 3 uses
  %gep.i58 = getelementptr [8 x i8], ptr %.1102126.us.us.i54, i64 %indvars.iv148.i57
  %gep172.i59 = getelementptr [8 x i8], ptr %invariant.gep171.i55, i64 %indvars.iv148.i57
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ch
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i52
  br i1 %exitcond.not.i63, label %._crit_edge.us.us.us.i64, label %bb.ch, !llvm.loop !205

bb.ch:                                            ; preds = %bb.cg, %.preheader119.us.us.us.i56
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i62, %bb.cg ], [ 0, %.preheader119.us.us.us.i56 ] ; 3 uses
  %i.aec = getelementptr [8 x i8], ptr %gep.i58, i64 %indvars.iv.i60
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !39
  %i.aee = getelementptr [8 x i8], ptr %gep172.i59, i64 %indvars.iv.i60
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !39
  %.not.us.us.us.i61 = icmp eq i64 %i.aed, %i.aef
  br i1 %.not.us.us.us.i61, label %bb.cg, label %Abc_TtCheckEqualCofs.exit88.thread409

._crit_edge.us.us.us.i64:                         ; preds = %bb.cg
  %indvars.iv.next149.i65 = add nsw i64 %indvars.iv148.i57, %i.aeb ; 2 uses
  %i.aeg = icmp slt i64 %indvars.iv.next149.i65, %i.cr
  br i1 %i.aeg, label %.preheader119.us.us.us.i56, label %._crit_edge125.split.us.us.us.i66, !llvm.loop !206

._crit_edge125.split.us.us.us.i66:                ; preds = %._crit_edge.us.us.us.i64
  %i.aeh = getelementptr inbounds [8 x i8], ptr %.1102126.us.us.i54, i64 %i.cq ; 2 uses
  %i.aei = icmp ult ptr %i.aeh, %i.adm
  br i1 %i.aei, label %.preheader121.us.us.i53, label %Abc_TtCheckEqualCofs.exit88.thread, !llvm.loop !207

Abc_TtCheckEqualCofs.exit88:                      ; preds = %bb.bw
  %i.aej = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !39
  %i.aem = and i64 %i.ael, %i.aej
  %i.aen = load i64, ptr %1, align 8, !tbaa !39   ; 2 uses
  %i.aeo = lshr i64 %i.aen, %i.cu
  %i.aep = xor i64 %i.aeo, %i.aen
  %i.aeq = and i64 %i.aem, %i.aep
  %.not437 = icmp eq i64 %i.aeq, 0
  br i1 %.not437, label %Abc_TtCheckEqualCofs.exit88.thread, label %Abc_TtCheckEqualCofs.exit88.thread409

Abc_TtCheckEqualCofs.exit88.thread:               ; preds = %._crit_edge125.split.us.us.us.i66, %._crit_edge.us.i81, %bb.bz, %bb.cc, %bb.by, %bb.cf, %.preheader121.lr.ph.i46, %Abc_TtCheckEqualCofs.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.aer = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.aes = add nsw i32 %i.aer, 97
  %i.aet = load i32, ptr %i.dq, align 4, !tbaa !9
  %i.aeu = add nsw i32 %i.aet, 97
  %i.aev = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.aes, i32 noundef %i.aeu) #31 ; 0 uses
  br i1 %i.acz, label %Abc_TtCofactor0p.exit238.thread569.i, label %bb.ci

Abc_TtCofactor0p.exit238.thread569.i:             ; preds = %Abc_TtCheckEqualCofs.exit88.thread
  %i.aew = load i64, ptr %1, align 8, !tbaa !39   ; 2 uses
  %i.aex = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.aey = and i64 %i.aex, %i.aew                 ; 2 uses
  %i.aez = shl i64 %i.aey, %i.cu
  %i.afa = or i64 %i.aez, %i.aey
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !39
  %i.afd = and i64 %i.afa, %i.afc                 ; 2 uses
  %i.afe = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.aff = shl nuw i32 1, %i.afe
  %i.afg = zext nneg i32 %i.aff to i64            ; 2 uses
  %i.afh = shl i64 %i.afd, %i.afg
  %i.afi = or i64 %i.afh, %i.afd
  store i64 %i.afi, ptr %i.d, align 16, !tbaa !39
  %i.afj = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.afk = and i64 %i.afj, %i.aew                 ; 2 uses
  %i.afl = lshr i64 %i.afk, %i.cu
  %i.afm = or i64 %i.afl, %i.afk
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv612
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !39
  %i.afp = and i64 %i.afm, %i.afo                 ; 2 uses
  %i.afq = lshr i64 %i.afp, %i.afg
  %i.afr = or i64 %i.afq, %i.afp
  store i64 %i.afr, ptr %i.q, align 16, !tbaa !39
  br label %.lr.ph.preheader.i291.i

bb.ci:                                            ; preds = %Abc_TtCheckEqualCofs.exit88.thread
  br i1 %i.cl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.afs = icmp sgt i32 %i.ea, 0
  br i1 %i.afs, label %.lr.ph.i233.i, label %Abc_TtCofactor0p.exit238.thread.i

.lr.ph.i233.i:                                    ; preds = %bb.cj
  %i.aft = load i64, ptr %i.cs, align 8, !tbaa !39 ; 4 uses
  %min.iters.check1067 = icmp ult i32 %i.ea, 4
  br i1 %min.iters.check1067, label %scalar.ph1066, label %vector.ph1068

vector.ph1068:                                    ; preds = %.lr.ph.i233.i
  %i.afu = and i32 %i.ea, 2147483644
  %n.vec1069 = zext nneg i32 %i.afu to i64
  %broadcast.splatinsert1070 = insertelement <2 x i64> poison, i64 %i.aft, i64 0
  %broadcast.splat1071 = shufflevector <2 x i64> %broadcast.splatinsert1070, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %vector.ph1068
  %index1075 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1078, %vector.body1074 ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1075 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %wide.load1076 = load <2 x i64>, ptr %i.afv, align 8, !tbaa !39
  %wide.load1077 = load <2 x i64>, ptr %i.afw, align 8, !tbaa !39
  %i.afx = and <2 x i64> %wide.load1076, %broadcast.splat1071 ; 2 uses
  %i.afy = and <2 x i64> %wide.load1077, %broadcast.splat1071 ; 2 uses
  %i.afz = shl <2 x i64> %i.afx, %broadcast.splat1073
  %i.aga = shl <2 x i64> %i.afy, %broadcast.splat1073
  %i.agb = or <2 x i64> %i.afz, %i.afx
  %i.agc = or <2 x i64> %i.aga, %i.afy
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index1075 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  store <2 x i64> %i.agb, ptr %i.agd, align 16, !tbaa !39
  store <2 x i64> %i.agc, ptr %i.age, align 16, !tbaa !39
  %index.next1078 = add nuw i64 %index1075, 4     ; 2 uses
  %i.agf = icmp eq i64 %index.next1078, %n.vec1069
  br i1 %i.agf, label %Abc_TtCofactor0p.exit238.thread.i, label %vector.body1074, !llvm.loop !222

scalar.ph1066:                                    ; preds = %.lr.ph.i233.i
  %i.agg = load i64, ptr %1, align 8, !tbaa !39
  %i.agh = and i64 %i.agg, %i.aft                 ; 2 uses
  %i.agi = shl i64 %i.agh, %i.cu
  %i.agj = or i64 %i.agi, %i.agh
  store i64 %i.agj, ptr %i.d, align 16, !tbaa !39
  %i.agk = load i64, ptr %i.bg, align 8, !tbaa !39
  %i.agl = and i64 %i.agk, %i.aft                 ; 2 uses
  %i.agm = shl i64 %i.agl, %i.cu
  %i.agn = or i64 %i.agm, %i.agl
  store i64 %i.agn, ptr %i.bh, align 8, !tbaa !39
  %exitcond60.not.i237.i.1 = icmp eq i32 %i.ea, 2
  br i1 %exitcond60.not.i237.i.1, label %Abc_TtCofactor0p.exit238.thread.i, label %scalar.ph1066.2

scalar.ph1066.2:                                  ; preds = %scalar.ph1066
  %i.ago = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.agp = and i64 %i.ago, %i.aft                 ; 2 uses
  %i.agq = shl i64 %i.agp, %i.cu
  %i.agr = or i64 %i.agq, %i.agp
  store i64 %i.agr, ptr %i.bj, align 16, !tbaa !39
  br label %Abc_TtCofactor0p.exit238.thread.i

bb.ck:                                            ; preds = %bb.ci
  %i.ags = sext i32 %i.ea to i64
  %.idx.i218.i = shl nsw i64 %i.ags, 3
  %i.agt = getelementptr inbounds i8, ptr %1, i64 %.idx.i218.i
  %i.agu = icmp slt i32 %i.ea, 1
  %brmerge534 = or i1 %i.agu, %.not.i233
  br i1 %brmerge534, label %Abc_TtCofactor0p.exit238.thread.i, label %.preheader.us.i224.i

.preheader.us.i224.i:                             ; preds = %bb.ck, %._crit_edge.us.i232.i
  %.051.us.i225.i = phi ptr [ %i.ahs, %._crit_edge.us.i232.i ], [ %i.d, %bb.ck ] ; 8 uses
  %.04250.us.i226.i = phi ptr [ %i.ahr, %._crit_edge.us.i232.i ], [ %1, %bb.ck ] ; 7 uses
  %invariant.gep.i227.i = getelementptr [8 x i8], ptr %.051.us.i225.i, i64 %i.cr ; 6 uses
  br i1 %or.cond1514, label %scalar.ph1084.preheader, label %vector.body1088

scalar.ph1084.preheader:                          ; preds = %.preheader.us.i224.i
  br i1 %i.dl, label %scalar.ph1084.epil.preheader, label %scalar.ph1084

vector.body1088:                                  ; preds = %.preheader.us.i224.i, %vector.body1088
  %index1089 = phi i64 [ %index.next1092, %vector.body1088 ], [ 0, %.preheader.us.i224.i ] ; 4 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i226.i, i64 %index1089 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %wide.load1090 = load <2 x i64>, ptr %i.agv, align 8, !tbaa !39 ; 2 uses
  %wide.load1091 = load <2 x i64>, ptr %i.agw, align 8, !tbaa !39 ; 2 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i225.i, i64 %index1089 ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  store <2 x i64> %wide.load1090, ptr %i.agx, align 8, !tbaa !39
  store <2 x i64> %wide.load1091, ptr %i.agy, align 8, !tbaa !39
  %i.agz = getelementptr [8 x i8], ptr %invariant.gep.i227.i, i64 %index1089 ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 16
  store <2 x i64> %wide.load1090, ptr %i.agz, align 8, !tbaa !39
  store <2 x i64> %wide.load1091, ptr %i.aha, align 8, !tbaa !39
  %index.next1092 = add nuw i64 %index1089, 4     ; 2 uses
  %i.ahb = icmp eq i64 %index.next1092, %n.vec1087
  br i1 %i.ahb, label %._crit_edge.us.i232.i, label %vector.body1088, !llvm.loop !223

scalar.ph1084:                                    ; preds = %scalar.ph1084.preheader, %scalar.ph1084
  %indvars.iv.i228.i = phi i64 [ %indvars.iv.next.i230.i.3, %scalar.ph1084 ], [ 0, %scalar.ph1084.preheader ] ; 7 uses
  %niter1692 = phi i64 [ %niter1692.next.3, %scalar.ph1084 ], [ 0, %scalar.ph1084.preheader ]
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i226.i, i64 %indvars.iv.i228.i
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !39 ; 2 uses
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i225.i, i64 %indvars.iv.i228.i
  store i64 %i.ahd, ptr %i.ahe, align 8, !tbaa !39
  %gep.i229.i = getelementptr [8 x i8], ptr %invariant.gep.i227.i, i64 %indvars.iv.i228.i
  store i64 %i.ahd, ptr %gep.i229.i, align 8, !tbaa !39
  %indvars.iv.next.i230.i = or disjoint i64 %indvars.iv.i228.i, 1 ; 3 uses
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i226.i, i64 %indvars.iv.next.i230.i
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !39 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i225.i, i64 %indvars.iv.next.i230.i
  store i64 %i.ahg, ptr %i.ahh, align 8, !tbaa !39
  %gep.i229.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i227.i, i64 %indvars.iv.next.i230.i
  store i64 %i.ahg, ptr %gep.i229.i.1, align 8, !tbaa !39
  %indvars.iv.next.i230.i.1 = or disjoint i64 %indvars.iv.i228.i, 2 ; 3 uses
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i226.i, i64 %indvars.iv.next.i230.i.1
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !39 ; 2 uses
end_hunk_3
begin_hunk_4_@Dau_DsdDecomposeDoubleVars:bb.a
  br i1 %or.cond1521, label %.lr.ph.i380.i.preheader, label %vector.ph1100

.lr.ph.i380.i.preheader:                          ; preds = %.lr.ph.preheader.i378.i
  %xtraiter1681 = and i64 %wide.trip.count.i379.i, 1
  %i.ayz = icmp eq i32 %i.ea, 1
  br i1 %i.ayz, label %.lr.ph.i380.i.epil.preheader, label %.lr.ph.i380.i.preheader.new

.lr.ph.i380.i.preheader.new:                      ; preds = %.lr.ph.i380.i.preheader
  %unroll_iter1685 = and i64 %wide.trip.count.i379.i, 4294967294
  br label %.lr.ph.i380.i

vector.ph1100:                                    ; preds = %.lr.ph.preheader.i378.i
  %n.vec1101 = and i64 %wide.trip.count.i379.i, 2147483644
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph1100
  %index1103 = phi i64 [ 0, %vector.ph1100 ], [ %index.next1110, %vector.body1102 ] ; 5 uses
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.ayw, i64 %index1103 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %wide.load1104 = load <2 x i64>, ptr %i.aza, align 8, !tbaa !39 ; 2 uses
  %wide.load1105 = load <2 x i64>, ptr %i.azb, align 8, !tbaa !39 ; 2 uses
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index1103 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 16
  %wide.load1106 = load <2 x i64>, ptr %i.azc, align 16, !tbaa !39
  %wide.load1107 = load <2 x i64>, ptr %i.azd, align 16, !tbaa !39
  %i.aze = and <2 x i64> %wide.load1106, %wide.load1104
  %i.azf = and <2 x i64> %wide.load1107, %wide.load1105
  %i.azg = xor <2 x i64> %wide.load1104, splat (i64 -1)
  %i.azh = xor <2 x i64> %wide.load1105, splat (i64 -1)
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index1103 ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %wide.load1108 = load <2 x i64>, ptr %i.azi, align 16, !tbaa !39
  %wide.load1109 = load <2 x i64>, ptr %i.azj, align 16, !tbaa !39
  %i.azk = and <2 x i64> %wide.load1108, %i.azg
  %i.azl = and <2 x i64> %wide.load1109, %i.azh
  %i.azm = or <2 x i64> %i.azk, %i.aze
  %i.azn = or <2 x i64> %i.azl, %i.azf
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1103 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 16
  store <2 x i64> %i.azm, ptr %i.azo, align 8, !tbaa !39
  store <2 x i64> %i.azn, ptr %i.azp, align 8, !tbaa !39
  %index.next1110 = add nuw i64 %index1103, 4     ; 2 uses
  %i.azq = icmp eq i64 %index.next1110, %n.vec1101
  br i1 %i.azq, label %Abc_TtMux.exit384.i, label %vector.body1102, !llvm.loop !246

.lr.ph.i380.i:                                    ; preds = %.lr.ph.i380.i, %.lr.ph.i380.i.preheader.new
  %indvars.iv.i381.i = phi i64 [ 0, %.lr.ph.i380.i.preheader.new ], [ %indvars.iv.next.i382.i.1, %.lr.ph.i380.i ] ; 6 uses
  %niter1686 = phi i64 [ 0, %.lr.ph.i380.i.preheader.new ], [ %niter1686.next.1, %.lr.ph.i380.i ]
  %i.azr = getelementptr inbounds nuw [8 x i8], ptr %i.ayw, i64 %indvars.iv.i381.i
  %i.azs = load i64, ptr %i.azr, align 8, !tbaa !39 ; 2 uses
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i381.i
  %i.azu = load i64, ptr %i.azt, align 16, !tbaa !39
  %i.azv = and i64 %i.azu, %i.azs
  %i.azw = xor i64 %i.azs, -1
  %i.azx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i381.i
  %i.azy = load i64, ptr %i.azx, align 16, !tbaa !39
  %i.azz = and i64 %i.azy, %i.azw
  %i.baa = or i64 %i.azz, %i.azv
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i381.i
  store i64 %i.baa, ptr %i.bab, align 8, !tbaa !39
  %indvars.iv.next.i382.i = or disjoint i64 %indvars.iv.i381.i, 1 ; 4 uses
  %i.bac = getelementptr inbounds nuw [8 x i8], ptr %i.ayw, i64 %indvars.iv.next.i382.i
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !39 ; 2 uses
  %i.bae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i382.i
  %i.baf = load i64, ptr %i.bae, align 8, !tbaa !39
  %i.bag = and i64 %i.baf, %i.bad
  %i.bah = xor i64 %i.bad, -1
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i382.i
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !39
  %i.bak = and i64 %i.baj, %i.bah
  %i.bal = or i64 %i.bak, %i.bag
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i382.i
  store i64 %i.bal, ptr %i.bam, align 8, !tbaa !39
  %indvars.iv.next.i382.i.1 = add nuw nsw i64 %indvars.iv.i381.i, 2 ; 2 uses
  %niter1686.next.1 = add i64 %niter1686, 2       ; 2 uses
  %niter1686.ncmp.1 = icmp eq i64 %niter1686.next.1, %unroll_iter1685
  br i1 %niter1686.ncmp.1, label %Abc_TtMux.exit384.i.loopexit.unr-lcssa, label %.lr.ph.i380.i, !llvm.loop !247

Abc_TtMux.exit384.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i380.i
  %lcmp.mod1683.not = icmp eq i64 %xtraiter1681, 0
  br i1 %lcmp.mod1683.not, label %Abc_TtMux.exit384.i, label %.lr.ph.i380.i.epil.preheader

.lr.ph.i380.i.epil.preheader:                     ; preds = %Abc_TtMux.exit384.i.loopexit.unr-lcssa, %.lr.ph.i380.i.preheader
  %indvars.iv.i381.i.epil.init = phi i64 [ 0, %.lr.ph.i380.i.preheader ], [ %indvars.iv.next.i382.i.1, %Abc_TtMux.exit384.i.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod1684 = trunc i32 %i.ea to i1
  call void @llvm.assume(i1 %lcmp.mod1684)
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.ayw, i64 %indvars.iv.i381.i.epil.init
  %i.bao = load i64, ptr %i.ban, align 8, !tbaa !39 ; 2 uses
  %i.bap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i381.i.epil.init
  %i.baq = load i64, ptr %i.bap, align 8, !tbaa !39
  %i.bar = and i64 %i.baq, %i.bao
  %i.bas = xor i64 %i.bao, -1
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i381.i.epil.init
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !39
  %i.bav = and i64 %i.bau, %i.bas
  %i.baw = or i64 %i.bav, %i.bar
  %i.bax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i381.i.epil.init
  store i64 %i.baw, ptr %i.bax, align 8, !tbaa !39
  br label %Abc_TtMux.exit384.i

Abc_TtMux.exit384.i:                              ; preds = %vector.body1102, %.lr.ph.i380.i.epil.preheader, %Abc_TtMux.exit384.i.loopexit.unr-lcssa, %Abc_TtCofactor0.exit377.thread580.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.eg

bb.db:                                            ; preds = %Dau_DsdFindSupportOne.exit.i
  %i.bay = icmp eq i32 %i.ea, 1                   ; 3 uses
  br i1 %i.bay, label %Abc_TtCheckEqualCofs.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.cl, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.baz = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.bba = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.bbb = load i64, ptr %i.bba, align 8, !tbaa !39
  %i.bbc = and i64 %i.bbb, %i.baz
  %i.bbd = icmp sgt i32 %i.ea, 0
  br i1 %i.bbd, label %.lr.ph.i, label %Abc_TtCheckEqualCofs.exit.thread

.lr.ph.i:                                         ; preds = %bb.dd
  %i.bbe = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.bbf = shl nuw i32 1, %i.bbe
  %i.bbg = add nuw nsw i32 %i.bbf, %i.ct
  %i.bbh = zext nneg i32 %i.bbg to i64
  %wide.trip.count160.i = zext nneg i32 %i.ea to i64
  br label %bb.df

bb.de:                                            ; preds = %bb.df
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count160.i
  br i1 %exitcond161.not.i, label %Abc_TtCheckEqualCofs.exit.thread, label %bb.df, !llvm.loop !202

bb.df:                                            ; preds = %bb.de, %.lr.ph.i
  %indvars.iv157.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next158.i, %bb.de ] ; 2 uses
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv157.i
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !39 ; 2 uses
  %i.bbk = lshr i64 %i.bbj, %i.bbh
  %i.bbl = xor i64 %i.bbk, %i.bbj
  %i.bbm = and i64 %i.bbc, %i.bbl
  %.not116.i = icmp eq i64 %i.bbm, 0
  br i1 %.not116.i, label %bb.de, label %Abc_TtCheckEqualCofs.exit.thread418

bb.dg:                                            ; preds = %bb.dc
  %i.bbn = icmp slt i64 %indvars.iv612, 6
  %i.bbo = sext i32 %i.ea to i64
  %.idx138.i = shl nsw i64 %i.bbo, 3
  %i.bbp = getelementptr inbounds i8, ptr %1, i64 %.idx138.i ; 2 uses
  br i1 %i.bbn, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.bbq = icmp sgt i32 %i.ea, 0
  br i1 %i.bbq, label %.preheader.lr.ph.i, label %Abc_TtCheckEqualCofs.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.dh
  %i.bbr = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.bbs = shl nuw nsw i32 1, %i.bbr
  %i.bbt = zext nneg i32 %i.bbs to i64
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit.thread, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !39
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.0101133.us.i = phi ptr [ %1, %.preheader.lr.ph.split.us.i ], [ %i.bcb, %._crit_edge.us.i ] ; 3 uses
  %invariant.gep175.i = getelementptr [8 x i8], ptr %.0101133.us.i, i64 %i.cr
  br label %bb.dj

bb.di:                                            ; preds = %bb.dj
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next152.i, %wide.trip.count155.i258
  br i1 %exitcond156.not.i, label %._crit_edge.us.i, label %bb.dj, !llvm.loop !203

bb.dj:                                            ; preds = %bb.di, %.preheader.us.i
  %indvars.iv151.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next152.i, %bb.di ] ; 3 uses
  %gep174.i = getelementptr [8 x i8], ptr %.0101133.us.i, i64 %indvars.iv151.i
  %i.bbw = load i64, ptr %gep174.i, align 8, !tbaa !39
  %gep176.i = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv151.i
  %i.bbx = load i64, ptr %gep176.i, align 8, !tbaa !39
  %i.bby = lshr i64 %i.bbx, %i.bbt
  %i.bbz = xor i64 %i.bby, %i.bbw
  %i.bca = and i64 %i.bbz, %i.bbv
  %.not115.us.i = icmp eq i64 %i.bca, 0
  br i1 %.not115.us.i, label %bb.di, label %Abc_TtCheckEqualCofs.exit.thread418

._crit_edge.us.i:                                 ; preds = %bb.di
  %i.bcb = getelementptr inbounds [8 x i8], ptr %.0101133.us.i, i64 %i.cq ; 2 uses
  %i.bcc = icmp ult ptr %i.bcb, %i.bbp
  br i1 %i.bcc, label %.preheader.us.i, label %Abc_TtCheckEqualCofs.exit.thread, !llvm.loop !204

bb.dk:                                            ; preds = %bb.dg
  %i.bcd = trunc i64 %indvars.iv612 to i32
  %i.bce = add i32 %i.bcd, -6                     ; 3 uses
  %i.bcf = shl nuw i32 1, %i.bce                  ; 2 uses
  %i.bcg = add nsw i32 %i.bcf, %i.co
  %i.bch = icmp sgt i32 %i.ea, 0
  br i1 %i.bch, label %.preheader121.lr.ph.i, label %Abc_TtCheckEqualCofs.exit.thread

.preheader121.lr.ph.i:                            ; preds = %bb.dk
  %i.bci = shl i32 2, %i.bce
  br i1 %.not.i233, label %Abc_TtCheckEqualCofs.exit.thread, label %.preheader121.lr.ph.split.us.i

.preheader121.lr.ph.split.us.i:                   ; preds = %.preheader121.lr.ph.i
  %.not137.i = icmp eq i32 %i.bce, 31
  br i1 %.not137.i, label %Abc_TtCheckEqualCofs.exit.thread418, label %.preheader121.us.us.preheader.i

.preheader121.us.us.preheader.i:                  ; preds = %.preheader121.lr.ph.split.us.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bcf, i32 1)
  %i.bcj = sext i32 %i.bci to i64
  %i.bck = sext i32 %i.bcg to i64
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader121.us.us.i

.preheader121.us.us.i:                            ; preds = %._crit_edge125.split.us.us.us.i, %.preheader121.us.us.preheader.i
  %.1102126.us.us.i = phi ptr [ %i.bcq, %._crit_edge125.split.us.us.us.i ], [ %1, %.preheader121.us.us.preheader.i ] ; 3 uses
  %invariant.gep171.i = getelementptr [8 x i8], ptr %.1102126.us.us.i, i64 %i.bck
  br label %.preheader119.us.us.us.i

.preheader119.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i, %.preheader121.us.us.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %._crit_edge.us.us.us.i ], [ 0, %.preheader121.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %.1102126.us.us.i, i64 %indvars.iv148.i
  %gep172.i = getelementptr [8 x i8], ptr %invariant.gep171.i, i64 %indvars.iv148.i
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dm
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.us.i, label %bb.dm, !llvm.loop !205

bb.dm:                                            ; preds = %bb.dl, %.preheader119.us.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.dl ], [ 0, %.preheader119.us.us.us.i ] ; 3 uses
  %i.bcl = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i
  %i.bcm = load i64, ptr %i.bcl, align 8, !tbaa !39
  %i.bcn = getelementptr [8 x i8], ptr %gep172.i, i64 %indvars.iv.i
  %i.bco = load i64, ptr %i.bcn, align 8, !tbaa !39
  %.not.us.us.us.i = icmp eq i64 %i.bcm, %i.bco
  br i1 %.not.us.us.us.i, label %bb.dl, label %Abc_TtCheckEqualCofs.exit.thread418

._crit_edge.us.us.us.i:                           ; preds = %bb.dl
  %indvars.iv.next149.i = add nsw i64 %indvars.iv148.i, %i.bcj ; 2 uses
  %i.bcp = icmp slt i64 %indvars.iv.next149.i, %i.cr
  br i1 %i.bcp, label %.preheader119.us.us.us.i, label %._crit_edge125.split.us.us.us.i, !llvm.loop !206

._crit_edge125.split.us.us.us.i:                  ; preds = %._crit_edge.us.us.us.i
  %i.bcq = getelementptr inbounds [8 x i8], ptr %.1102126.us.us.i, i64 %i.cq ; 2 uses
  %i.bcr = icmp ult ptr %i.bcq, %i.bbp
  br i1 %i.bcr, label %.preheader121.us.us.i, label %Abc_TtCheckEqualCofs.exit.thread, !llvm.loop !207

Abc_TtCheckEqualCofs.exit:                        ; preds = %bb.db
  %i.bcs = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !39
  %i.bcv = and i64 %i.bcu, %i.bcs
  %i.bcw = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.bcx = shl nuw i32 1, %i.bcw
  %i.bcy = add nsw i32 %i.bcx, %i.ct
  %i.bcz = load i64, ptr %1, align 8, !tbaa !39   ; 2 uses
  %i.bda = zext nneg i32 %i.bcy to i64
  %i.bdb = lshr i64 %i.bcz, %i.bda
  %i.bdc = xor i64 %i.bdb, %i.bcz
  %i.bdd = and i64 %i.bcv, %i.bdc
  %.not436 = icmp eq i64 %i.bdd, 0
  br i1 %.not436, label %Abc_TtCheckEqualCofs.exit.thread, label %Abc_TtCheckEqualCofs.exit.thread418

Abc_TtCheckEqualCofs.exit.thread:                 ; preds = %._crit_edge125.split.us.us.us.i, %._crit_edge.us.i, %bb.de, %.preheader.lr.ph.i, %bb.dd, %bb.dk, %.preheader121.lr.ph.i, %bb.dh, %Abc_TtCheckEqualCofs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.bde = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.bdf = add nsw i32 %i.bde, 97
  %i.bdg = load i32, ptr %i.dq, align 4, !tbaa !9
  %i.bdh = add nsw i32 %i.bdg, 97
  %i.bdi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bdf, i32 noundef %i.bdh) #31 ; 0 uses
  br i1 %i.bay, label %Abc_TtCofactor0p.exit405.thread581.i, label %bb.dn

Abc_TtCofactor0p.exit405.thread581.i:             ; preds = %Abc_TtCheckEqualCofs.exit.thread
  %i.bdj = load i64, ptr %1, align 8, !tbaa !39
  %i.bdk = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.bdl = and i64 %i.bdk, %i.bdj                 ; 2 uses
  %i.bdm = shl i64 %i.bdl, %i.cu
  %i.bdn = or i64 %i.bdm, %i.bdl                  ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv612
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !39
  %i.bdq = and i64 %i.bdn, %i.bdp                 ; 2 uses
  %i.bdr = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.bds = shl nuw i32 1, %i.bdr
  %i.bdt = zext nneg i32 %i.bds to i64            ; 2 uses
  %i.bdu = shl i64 %i.bdq, %i.bdt
  %i.bdv = or i64 %i.bdu, %i.bdq
  store i64 %i.bdv, ptr %i.f, align 16, !tbaa !39
  %i.bdw = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv612
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !39
  %i.bdy = and i64 %i.bdx, %i.bdn                 ; 2 uses
  %i.bdz = lshr i64 %i.bdy, %i.bdt
  %i.bea = or i64 %i.bdz, %i.bdy
  store i64 %i.bea, ptr %i.o, align 16, !tbaa !39
  br label %.lr.ph.preheader.i467.i

bb.dn:                                            ; preds = %Abc_TtCheckEqualCofs.exit.thread
  br i1 %i.cl, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.beb = icmp sgt i32 %i.ea, 0
  br i1 %i.beb, label %.lr.ph.i400.i, label %Abc_TtCofactor0p.exit405.thread.i

.lr.ph.i400.i:                                    ; preds = %bb.do
  %i.bec = load i64, ptr %i.cs, align 8, !tbaa !39 ; 4 uses
  %min.iters.check1343 = icmp ult i32 %i.ea, 4
  br i1 %min.iters.check1343, label %scalar.ph1342, label %vector.ph1344

vector.ph1344:                                    ; preds = %.lr.ph.i400.i
  %i.bed = and i32 %i.ea, 2147483644
  %n.vec1345 = zext nneg i32 %i.bed to i64
  %broadcast.splatinsert1346 = insertelement <2 x i64> poison, i64 %i.bec, i64 0
  %broadcast.splat1347 = shufflevector <2 x i64> %broadcast.splatinsert1346, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1344
  %index1351 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1354, %vector.body1350 ] ; 3 uses
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1351 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 16
  %wide.load1352 = load <2 x i64>, ptr %i.bee, align 8, !tbaa !39
  %wide.load1353 = load <2 x i64>, ptr %i.bef, align 8, !tbaa !39
  %i.beg = and <2 x i64> %wide.load1352, %broadcast.splat1347 ; 2 uses
  %i.beh = and <2 x i64> %wide.load1353, %broadcast.splat1347 ; 2 uses
  %i.bei = shl <2 x i64> %i.beg, %broadcast.splat1349
  %i.bej = shl <2 x i64> %i.beh, %broadcast.splat1349
  %i.bek = or <2 x i64> %i.bei, %i.beg
  %i.bel = or <2 x i64> %i.bej, %i.beh
  %i.bem = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index1351 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 16
  store <2 x i64> %i.bek, ptr %i.bem, align 16, !tbaa !39
  store <2 x i64> %i.bel, ptr %i.ben, align 16, !tbaa !39
  %index.next1354 = add nuw i64 %index1351, 4     ; 2 uses
  %i.beo = icmp eq i64 %index.next1354, %n.vec1345
  br i1 %i.beo, label %Abc_TtCofactor0p.exit405.thread.i, label %vector.body1350, !llvm.loop !248

scalar.ph1342:                                    ; preds = %.lr.ph.i400.i
  %i.bep = load i64, ptr %1, align 8, !tbaa !39
  %i.beq = and i64 %i.bep, %i.bec                 ; 2 uses
  %i.ber = shl i64 %i.beq, %i.cu
  %i.bes = or i64 %i.ber, %i.beq
  store i64 %i.bes, ptr %i.f, align 16, !tbaa !39
  %i.bet = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.beu = and i64 %i.bet, %i.bec                 ; 2 uses
  %i.bev = shl i64 %i.beu, %i.cu
  %i.bew = or i64 %i.bev, %i.beu
  store i64 %i.bew, ptr %i.aj, align 8, !tbaa !39
  %exitcond60.not.i404.i.1 = icmp eq i32 %i.ea, 2
  br i1 %exitcond60.not.i404.i.1, label %Abc_TtCofactor0p.exit405.thread.i, label %scalar.ph1342.2

scalar.ph1342.2:                                  ; preds = %scalar.ph1342
  %i.bex = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.bey = and i64 %i.bex, %i.bec                 ; 2 uses
  %i.bez = shl i64 %i.bey, %i.cu
  %i.bfa = or i64 %i.bez, %i.bey
  store i64 %i.bfa, ptr %i.al, align 16, !tbaa !39
  br label %Abc_TtCofactor0p.exit405.thread.i

bb.dp:                                            ; preds = %bb.dn
  %i.bfb = sext i32 %i.ea to i64
  %.idx.i385.i = shl nsw i64 %i.bfb, 3
  %i.bfc = getelementptr inbounds i8, ptr %1, i64 %.idx.i385.i
  %i.bfd = icmp slt i32 %i.ea, 1
  %brmerge542 = or i1 %i.bfd, %.not.i233
  br i1 %brmerge542, label %Abc_TtCofactor0p.exit405.thread.i, label %.preheader.us.i391.i

.preheader.us.i391.i:                             ; preds = %bb.dp, %._crit_edge.us.i399.i
  %.051.us.i392.i = phi ptr [ %i.bgb, %._crit_edge.us.i399.i ], [ %i.f, %bb.dp ] ; 8 uses
  %.04250.us.i393.i = phi ptr [ %i.bga, %._crit_edge.us.i399.i ], [ %1, %bb.dp ] ; 7 uses
  %invariant.gep.i394.i = getelementptr [8 x i8], ptr %.051.us.i392.i, i64 %i.cr ; 6 uses
  br i1 %or.cond1522, label %scalar.ph1360.preheader, label %vector.body1364

scalar.ph1360.preheader:                          ; preds = %.preheader.us.i391.i
  br i1 %i.dh, label %scalar.ph1360.epil.preheader, label %scalar.ph1360

vector.body1364:                                  ; preds = %.preheader.us.i391.i, %vector.body1364
  %index1365 = phi i64 [ %index.next1368, %vector.body1364 ], [ 0, %.preheader.us.i391.i ] ; 4 uses
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i393.i, i64 %index1365 ; 2 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 16
  %wide.load1366 = load <2 x i64>, ptr %i.bfe, align 8, !tbaa !39 ; 2 uses
  %wide.load1367 = load <2 x i64>, ptr %i.bff, align 8, !tbaa !39 ; 2 uses
  %i.bfg = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i392.i, i64 %index1365 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16
  store <2 x i64> %wide.load1366, ptr %i.bfg, align 8, !tbaa !39
  store <2 x i64> %wide.load1367, ptr %i.bfh, align 8, !tbaa !39
  %i.bfi = getelementptr [8 x i8], ptr %invariant.gep.i394.i, i64 %index1365 ; 2 uses
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 16
  store <2 x i64> %wide.load1366, ptr %i.bfi, align 8, !tbaa !39
  store <2 x i64> %wide.load1367, ptr %i.bfj, align 8, !tbaa !39
  %index.next1368 = add nuw i64 %index1365, 4     ; 2 uses
  %i.bfk = icmp eq i64 %index.next1368, %n.vec1363
  br i1 %i.bfk, label %._crit_edge.us.i399.i, label %vector.body1364, !llvm.loop !249

scalar.ph1360:                                    ; preds = %scalar.ph1360.preheader, %scalar.ph1360
  %indvars.iv.i395.i = phi i64 [ %indvars.iv.next.i397.i.3, %scalar.ph1360 ], [ 0, %scalar.ph1360.preheader ] ; 7 uses
  %niter1656 = phi i64 [ %niter1656.next.3, %scalar.ph1360 ], [ 0, %scalar.ph1360.preheader ]
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %.04250.us.i393.i, i64 %indvars.iv.i395.i
  %i.bfm = load i64, ptr %i.bfl, align 8, !tbaa !39 ; 2 uses
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i392.i, i64 %indvars.iv.i395.i
  store i64 %i.bfm, ptr %i.bfn, align 8, !tbaa !39
  %gep.i396.i = getelementptr [8 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.i395.i
end_hunk_4
