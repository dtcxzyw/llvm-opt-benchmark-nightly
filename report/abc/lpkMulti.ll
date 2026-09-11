Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkMulti?download=true
inline.NumInlined: 31
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Lpk_MapTreeMulti:.preheader165
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.gr = trunc nuw nsw i64 %indvars.iv237.epil.init to i32
  %i.gs = shl nuw i32 1, %i.gr
  %i.gt = and i32 %i.gs, %i.ge
  %.not155.us.epil = icmp eq i32 %i.gt, 0
  br i1 %.not155.us.epil, label %._crit_edge180.us, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv237.epil.init ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !19
  %i.gw = add nsw i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !19
  br label %._crit_edge180.us

._crit_edge180.us:                                ; preds = %.epil.preheader, %bb.f, %._crit_edge180.us.unr-lcssa
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph184.preheader, label %.lr.ph179.us, !llvm.loop !91

bb.g:                                             ; preds = %.lr.ph176, %bb.i
  %indvars.iv225 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next226, %bb.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv225
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !102
  %i.gz = call ptr @Kit_DsdDecompose(ptr noundef %i.gy, i32 noundef %2) #12 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv225
  %i.hb = call ptr @Kit_DsdExpand(ptr noundef %i.gz) #12 ; 2 uses
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !27
  call void @Kit_DsdNtkFree(ptr noundef %i.gz) #12
  br i1 %.not156, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hc = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.er, i32 noundef %i.hc) ; 0 uses
  %i.he = load ptr, ptr @stdout, align 8, !tbaa !105
  call void @Kit_DsdPrint(ptr noundef %i.he, ptr noundef %i.hb) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count229
  br i1 %exitcond230.not, label %.lr.ph182, label %bb.g, !llvm.loop !92

.lr.ph184.preheader:                              ; preds = %.lr.ph182.split, %._crit_edge180.us
  %smax251 = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %wide.trip.count252 = zext nneg i32 %smax251 to i64
  br label %.lr.ph184

.lr.ph182.split:                                  ; preds = %.lr.ph182, %.lr.ph182.split
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %.lr.ph182.split ], [ 0, %.lr.ph182 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv231
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !102
  %i.hh = call i32 @Kit_TruthSupport(ptr noundef %i.hg, i32 noundef %2) #12 ; 0 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count246
  br i1 %exitcond236.not, label %.lr.ph184.preheader, label %.lr.ph182.split, !llvm.loop !91

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv248 = phi i64 [ 0, %.lr.ph184.preheader ], [ %indvars.iv.next249, %.lr.ph184 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv248
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !27 ; 2 uses
  %i.hk = call i32 @Kit_DsdGetSupports(ptr noundef %i.hj) #12 ; 0 uses
  call void @Lpk_CreateVarOrder(ptr noundef %i.hj, ptr noundef nonnull %i.g)
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge185.loopexit, label %.lr.ph184, !llvm.loop !93

._crit_edge185.loopexit:                          ; preds = %.lr.ph184
  %i.hl = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %i.hm = zext nneg i32 %i.hl to i64
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %._crit_edge185.loopexit, %._crit_edge173
  %.not208307309311 = phi i1 [ true, %._crit_edge173 ], [ false, %._crit_edge185.loopexit ] ; 2 uses
  %smax275 = phi i64 [ 1, %._crit_edge173 ], [ %i.hm, %._crit_edge185.loopexit ] ; 3 uses
  call void @Lpk_CreateCommonOrder(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef %i.er, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %i.j)
  %i.hn = icmp sgt i32 %2, 0
  br i1 %i.hn, label %.lr.ph188.preheader, label %._crit_edge189

.lr.ph188.preheader:                              ; preds = %._crit_edge185
  %wide.trip.count258 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check321 = icmp ult i32 %2, 8
  br i1 %min.iters.check321, label %.lr.ph188.preheader334, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph188.preheader
  %n.vec323 = and i64 %wide.trip.count258, 2147483640 ; 3 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph322 ], [ %vec.ind.next, %vector.body324 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index325 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load326 = load <4 x i32>, ptr %i.ho, align 16, !tbaa !19
  %wide.load327 = load <4 x i32>, ptr %i.hp, align 16, !tbaa !19
  %i.hq = shl nsw <4 x i32> %wide.load326, splat (i32 8)
  %i.hr = shl nsw <4 x i32> %wide.load327, splat (i32 8)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index325 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load328 = load <4 x i32>, ptr %i.hs, align 16, !tbaa !19
  %wide.load329 = load <4 x i32>, ptr %i.ht, align 16, !tbaa !19
  %i.hu = add <4 x i32> %vec.ind, splat (i32 256)
  %i.hv = add <4 x i32> %vec.ind, splat (i32 260)
  %i.hw = add <4 x i32> %i.hu, %i.hq
  %i.hx = add <4 x i32> %i.hv, %i.hr
  %i.hy = shl <4 x i32> %wide.load328, splat (i32 4)
  %i.hz = shl <4 x i32> %wide.load329, splat (i32 4)
  %i.ia = sub <4 x i32> %i.hw, %i.hy
  %i.ib = sub <4 x i32> %i.hx, %i.hz
  store <4 x i32> %i.ia, ptr %i.ho, align 16, !tbaa !19
  store <4 x i32> %i.ib, ptr %i.hp, align 16, !tbaa !19
  %index.next330 = add nuw i64 %index325, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ic = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.ic, label %middle.block331, label %vector.body324, !llvm.loop !94

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %n.vec323, %wide.trip.count258
  br i1 %cmp.n332, label %._crit_edge189, label %.lr.ph188.preheader334

.lr.ph188.preheader334:                           ; preds = %.lr.ph188.preheader, %middle.block331
  %indvars.iv254.ph = phi i64 [ 0, %.lr.ph188.preheader ], [ %n.vec323, %middle.block331 ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader334, %.lr.ph188
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph188 ], [ %indvars.iv254.ph, %.lr.ph188.preheader334 ] ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv254 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !19
  %i.if = shl nsw i32 %i.ie, 8
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv254
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !19
  %i.ii = trunc i64 %indvars.iv254 to i32
  %i.ij = add i32 %i.ii, 256
  %i.ik = add i32 %i.ij, %i.if
  %i.il = shl i32 %i.ih, 4
  %i.im = sub i32 %i.ik, %i.il
  store i32 %i.im, ptr %i.id, align 4, !tbaa !19
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge189, label %.lr.ph188, !llvm.loop !95

._crit_edge189:                                   ; preds = %.lr.ph188, %middle.block331, %._crit_edge185
  %.not = icmp eq i32 %i.j, 0                     ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge189
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge189
  br i1 %.not208307309311, label %._crit_edge194, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.k, %bb.m
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv260 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !27 ; 2 uses
  %i.ip = call ptr @Kit_DsdShrink(ptr noundef %i.io, ptr noundef nonnull %i.c) #12 ; 4 uses
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !27
  call void @Kit_DsdNtkFree(ptr noundef %i.io) #12
  %i.iq = call i32 @Kit_DsdGetSupports(ptr noundef %i.ip) #12 ; 0 uses
  call void @Kit_DsdRotate(ptr noundef %i.ip, ptr noundef nonnull %i.d) #12
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph192
  %i.ir = trunc nuw nsw i64 %indvars.iv260 to i32
  %i.is = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.er, i32 noundef %i.ir) ; 0 uses
  %i.it = load ptr, ptr @stdout, align 8, !tbaa !105
  call void @Kit_DsdPrint(ptr noundef %i.it, ptr noundef %i.ip) #12
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph192, %bb.l
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next261, %smax275
  br i1 %exitcond265.not, label %Kit_DsdNtkRoot.exit, label %.lr.ph192, !llvm.loop !96

Kit_DsdNtkRoot.exit:                              ; preds = %bb.m, %bb.q
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.q ], [ 0, %bb.m ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv266
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !106 ; 4 uses
  %i.iy = lshr i16 %i.ix, 1                       ; 2 uses
  %i.iz = load i16, ptr %i.iv, align 8, !tbaa !17 ; 2 uses
  %i.ja = icmp uge i16 %i.iy, %i.iz
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !14
  %narrow.i = sub nuw nsw i16 %i.iy, %i.iz
  %i.jd = zext nneg i16 %narrow.i to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !16 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = lshr i32 %i.jg, 6
  %i.ji = and i32 %i.jh, 7
  switch i32 %i.ji, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jj = and i16 %i.ix, 1
  %4 = xor i16 %i.jj, -1
  %5 = sext i16 %4 to i32
  br label %bb.q

bb.o:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jl = load i16, ptr %i.jk, align 4, !tbaa !18
  %i.jm = and i16 %i.ix, 1
  %i.jn = xor i16 %i.jl, %i.jm
  %i.jo = zext i16 %i.jn to i32
  br label %bb.q

bb.p:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jp = zext i16 %i.ix to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.sink = phi i32 [ %5, %bb.n ], [ %i.jp, %bb.p ], [ %i.jo, %bb.o ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv266
  store i32 %.sink, ptr %i.jq, align 4, !tbaa !19
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next267, %smax275
  br i1 %exitcond271.not, label %._crit_edge194, label %Kit_DsdNtkRoot.exit, !llvm.loop !97

._crit_edge194:                                   ; preds = %bb.q, %bb.k
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8240072 ; 2 uses
  store i32 1, ptr %i.jr, align 8, !tbaa !107
  %i.js = call ptr @Lpk_MapTreeMulti_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef %i.er, ptr noundef %3, i32 noundef %2, ptr noundef nonnull %i.c)
  store i32 0, ptr %i.jr, align 8, !tbaa !107
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge194
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge194
  br i1 %.not208307309311, label %.preheader, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.s
  %i.jt = sext i32 %i.er to i64
  %i.ju = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.jt
  br label %bb.t

.preheader:                                       ; preds = %bb.t, %bb.s
  br i1 %i.fh, label %.lr.ph204.preheader, label %._crit_edge205

.lr.ph204.preheader:                              ; preds = %.preheader
  %i.jv = zext nneg i32 %i.er to i64
  br label %.lr.ph204

bb.t:                                             ; preds = %.lr.ph197, %bb.t
  %indvars.iv272 = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next273, %bb.t ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv272
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !27
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv272
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !102
  call void @Kit_DsdTruth(ptr noundef %i.jx, ptr noundef %i.jz) #12
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %smax275
  br i1 %exitcond277.not, label %.preheader, label %bb.t, !llvm.loop !98

.loopexit:                                        ; preds = %bb.u, %.lr.ph204
  %i.ka = icmp samesign ugt i64 %indvars.iv284, 1
  br i1 %i.ka, label %.lr.ph204, label %._crit_edge205, !llvm.loop !99

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.loopexit
  %indvars.iv284 = phi i64 [ %i.jv, %.lr.ph204.preheader ], [ %indvars.iv.next285, %.loopexit ] ; 3 uses
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, -1 ; 5 uses
  %.not215 = icmp eq i64 %indvars.iv.next285, 31
  br i1 %.not215, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph204
  %i.kb = trunc nuw nsw i64 %indvars.iv.next285 to i32
  %i.kc = shl nuw i32 1, %i.kb
  %i.kd = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv.next285
  %i.ke = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv284
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next285
  %smax281 = call i32 @llvm.smax.i32(i32 %i.kc, i32 1)
  %wide.trip.count282 = zext nneg i32 %smax281 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph200, %bb.u
  %indvars.iv278 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next279, %bb.u ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv278
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !102
  %.idx304 = shl nuw nsw i64 %indvars.iv278, 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.idx304 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 16, !tbaa !102
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !102
  %i.km = load i32, ptr %i.kf, align 4, !tbaa !19
  call void @Kit_TruthMuxVar(ptr noundef %i.kh, ptr noundef %i.kj, ptr noundef %i.kl, i32 noundef %2, i32 noundef %i.km) #12
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count282
  br i1 %exitcond283.not, label %.loopexit, label %bb.u, !llvm.loop !100

._crit_edge205:                                   ; preds = %.loopexit, %.preheader
  %i.kn = icmp sgt i32 %i.p, 0
  br i1 %i.kn, label %.lr.ph318, label %Extra_TruthIsEqual.exit

.lr.ph318:                                        ; preds = %._crit_edge205
  %i.ko = zext nneg i32 %i.p to i64
  br label %bb.v

select.unfold.i158:                               ; preds = %bb.v
  %i.kp = trunc nuw i64 %i.kr to i32
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %bb.v, label %Extra_TruthIsEqual.exit, !llvm.loop !101

bb.v:                                             ; preds = %.lr.ph318, %select.unfold.i158
  %indvars.iv.i159317 = phi i64 [ %i.ko, %.lr.ph318 ], [ %i.kr, %select.unfold.i158 ]
  %i.kr = add nsw i64 %indvars.iv.i159317, -1     ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !19
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kr
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.kt, %i.kv
  br i1 %.not.i, label %select.unfold.i158, label %bb.w, !llvm.loop !101

bb.w:                                             ; preds = %bb.v
  %puts151 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Extra_TruthIsEqual.exit

Extra_TruthIsEqual.exit:                          ; preds = %select.unfold.i158, %._crit_edge205, %bb.w
  %i.kw = load ptr, ptr %i.a, align 16, !tbaa !27 ; 2 uses
  %.not153 = icmp eq ptr %i.kw, null
  br i1 %.not153, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Extra_TruthIsEqual.exit
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.kw) #12
  br label %bb.y

bb.y:                                             ; preds = %Extra_TruthIsEqual.exit, %bb.x
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !27 ; 2 uses
  %.not153.1 = icmp eq ptr %i.ky, null
  br i1 %.not153.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.ky) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.la = load ptr, ptr %i.kz, align 16, !tbaa !27 ; 2 uses
  %.not153.2 = icmp eq ptr %i.la, null
  br i1 %.not153.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.la) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !27 ; 2 uses
  %.not153.3 = icmp eq ptr %i.lc, null
  br i1 %.not153.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lc) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.le = load ptr, ptr %i.ld, align 16, !tbaa !27 ; 2 uses
  %.not153.4 = icmp eq ptr %i.le, null
  br i1 %.not153.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.le) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !27 ; 2 uses
  %.not153.5 = icmp eq ptr %i.lg, null
  br i1 %.not153.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lg) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.li = load ptr, ptr %i.lh, align 16, !tbaa !27 ; 2 uses
  %.not153.6 = icmp eq ptr %i.li, null
  br i1 %.not153.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.li) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !27 ; 2 uses
  %.not153.7 = icmp eq ptr %i.lk, null
  br i1 %.not153.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lk) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not152 = icmp eq ptr %i.t, null
  br i1 %.not152, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.t) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_0
