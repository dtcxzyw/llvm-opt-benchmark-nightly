Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmTruth?download=true
inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Vec_MemHashInsert:bb.a
  %i.ho = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !23 ; 5 uses
  %.not.i20 = icmp eq i32 %i.hp, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !87

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.hn
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.gj, %Vec_MemHashKey.exit.i ], [ %i.hq, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !97 ; 6 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.ht, align 4, !tbaa !94 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !23
  %i.hu = load i32, ptr %i.hs, align 8, !tbaa !95
  %i.hv = icmp eq i32 %.val14, %i.hu
  br i1 %i.hv, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.hw = icmp slt i32 %.val14, 16
  br i1 %i.hw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !96 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ia = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ib = phi ptr [ %i.hz, %bb.y ], [ %i.ia, %bb.z ]
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.ic = icmp samesign ult i32 %.val14, 1073741823
  %i.id = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !96 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.if, null
  %i.ig = zext nneg i32 %spec.select.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ii = tail call ptr @realloc(ptr noundef nonnull %i.if, i64 noundef %i.ih) #10
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ij = tail call noalias ptr @malloc(i64 noundef %i.ih) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ik = phi ptr [ %i.ii, %bb.ac ], [ %i.ij, %bb.ad ]
  store ptr %i.ik, ptr %i.ie, align 8, !tbaa !96
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.hs, align 8, !tbaa !95
  %.pre = load i32, ptr %i.ht, align 4, !tbaa !94
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.il = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !96
  %i.io = add nsw i32 %i.il, 1
  store i32 %i.io, ptr %i.ht, align 4, !tbaa !94
  %i.ip = sext i32 %i.il to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !23
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !92  ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !17 ; 3 uses
  %i.iu = ashr i32 %i.ir, %i.it                   ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !98 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, %i.iu
  br i1 %i.ix, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !99 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.iu, %i.iz
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !16 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jb, null
  %.not38.i.i = icmp eq i32 %i.iz, 0
  %i.jc = shl nsw i32 %i.iz, 1
  %i.jd = add nsw i32 %i.iu, 32
  %i.je = select i1 %.not38.i.i, i32 %i.jd, i32 %i.jc ; 2 uses
  store i32 %i.je, ptr %i.iy, align 8, !tbaa !99
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = tail call ptr @realloc(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #10
  %.pre.pre.i.i = load i32, ptr %i.iv, align 4, !tbaa !98
  %.pre.pre.pre.pre.i = load i32, ptr %i.is, align 8, !tbaa !17
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ji = tail call noalias ptr @malloc(i64 noundef %i.jg) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.it, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.iw, %bb.ai ]
  %i.jj = phi ptr [ %i.jh, %bb.ah ], [ %i.ji, %bb.ai ]
  store ptr %i.jj, ptr %i.ja, align 8, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.it, %bb.af ] ; 2 uses
  %i.jk = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.iw, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jk, %i.iu
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.jl = load i32, ptr %0, align 8, !tbaa !20
  %i.jm = shl i32 %i.jl, %.pre.pre.i
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !16
  %i.jr = sext i32 %i.jk to i64
  %wide.trip.count.i.i24 = sext i32 %i.iu to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.jr, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jo) #11
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i.i26
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !19
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !91

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !98
  %.pre.i = ashr i32 %i.ir, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.iu, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ju = add nsw i32 %i.ir, 1
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !92
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !16
  %i.jx = sext i32 %.pre-phi.i to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !19
  %i.ka = load i32, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !21
  %i.kd = and i32 %i.kc, %i.ir
  %i.ke = mul nsw i32 %i.kd, %i.ka
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kf
  %i.kh = sext i32 %i.ka to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kg, ptr readonly align 8 %1, i64 %i.ki, i1 false)
  %i.kj = load ptr, ptr %i.hr, align 8, !tbaa !97
  %i.kk = getelementptr i8, ptr %i.kj, i64 4
  %.val = load i32, ptr %i.kk, align 4, !tbaa !94
  %i.kl = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kl, %Vec_MemPush.exit ], [ %i.gk, %.lr.ph.i18 ], [ %i.hp, %bb.u ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 30) %2, i32 noundef range(i32 -2147483648, 31) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 8 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 10 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw nsw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add nsw i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !22
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not130 = icmp eq i32 %i.x, 31
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !22 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22 ; 4 uses
  %min.iters.check184 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check184, label %scalar.ph183, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec186 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert187 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat188 = shufflevector <2 x i64> %broadcast.splatinsert187, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph185
  %index196 = phi i64 [ 0, %vector.ph185 ], [ %index.next199, %vector.body195 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index196 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %i.am, align 8, !tbaa !22 ; 3 uses
  %wide.load198 = load <2 x i64>, ptr %i.an, align 8, !tbaa !22 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat188, %wide.load197
  %i.ap = and <2 x i64> %broadcast.splat188, %wide.load198
  %i.aq = and <2 x i64> %broadcast.splat190, %wide.load197
  %i.ar = and <2 x i64> %broadcast.splat190, %wide.load198
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat192
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat192
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat194, %wide.load197
  %i.ax = and <2 x i64> %broadcast.splat194, %wide.load198
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat192
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat192
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !22
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !22
  %index.next199 = add nuw i64 %index196, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next199, %n.vec186
  br i1 %i.bc, label %.loopexit, label %vector.body195, !llvm.loop !100

scalar.ph183:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !22
  %exitcond150.not = icmp slt i32 %i.y, 2
  br i1 %exitcond150.not, label %.loopexit, label %scalar.ph183.1

scalar.ph183.1:                                   ; preds = %scalar.ph183
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !22 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !22
  %exitcond150.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond150.not.1, label %.loopexit, label %scalar.ph183.2

scalar.ph183.2:                                   ; preds = %scalar.ph183.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !22 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !22
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 2 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx128 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx128 ; 2 uses
  %.not129 = icmp eq i32 %i.ce, 31                ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %i.cl = sext i32 %spec.select117 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22 ; 5 uses
  %i.co = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cp = xor i64 %i.cn, -1                       ; 2 uses
  %i.cq = shl nuw nsw i32 2, %i.ci
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cj to i64              ; 3 uses
  %min.iters.check168 = icmp eq i32 %i.ci, 0
  %n.vec170 = and i64 %i.cs, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert171 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat172 = shufflevector <2 x i64> %broadcast.splatinsert171, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %middle.block180
  %.0126 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.dp, %middle.block180 ] ; 4 uses
  %invariant.gep159 = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cs ; 2 uses
  br i1 %min.iters.check168, label %scalar.ph167, label %vector.body175

vector.body175:                                   ; preds = %.preheader, %vector.body175
  %index176 = phi i64 [ %index.next179, %vector.body175 ], [ 0, %.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %index176 ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !22 ; 2 uses
  %i.cu = and <2 x i64> %broadcast.splat, %wide.load177
  %i.cv = lshr <2 x i64> %i.cu, %broadcast.splat172
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %index176 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !22 ; 2 uses
  %i.cx = shl <2 x i64> %wide.load178, %broadcast.splat172
  %i.cy = and <2 x i64> %i.cx, %broadcast.splat
  %i.cz = and <2 x i64> %wide.load177, %broadcast.splat174
  %i.da = or <2 x i64> %i.cy, %i.cz
  store <2 x i64> %i.da, ptr %i.ct, align 8, !tbaa !22
  %i.db = and <2 x i64> %wide.load178, %broadcast.splat
  %i.dc = or <2 x i64> %i.db, %i.cv
  store <2 x i64> %i.dc, ptr %i.cw, align 8, !tbaa !22
  %index.next179 = add nuw i64 %index176, 2       ; 2 uses
  %i.dd = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.dd, label %middle.block180, label %vector.body175, !llvm.loop !101

scalar.ph167:                                     ; preds = %.preheader, %scalar.ph167
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph167 ], [ 0, %.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %indvars.iv141 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !22 ; 2 uses
  %i.dg = and i64 %i.cn, %i.df
  %i.dh = lshr i64 %i.dg, %i.co
  %gep160 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv141 ; 2 uses
  %i.di = load i64, ptr %gep160, align 8, !tbaa !22 ; 2 uses
  %i.dj = shl i64 %i.di, %i.co
  %i.dk = and i64 %i.dj, %i.cn
  %i.dl = and i64 %i.df, %i.cp
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !22
  %i.dn = and i64 %i.di, %i.cn
  %i.do = or i64 %i.dn, %i.dh
  store i64 %i.do, ptr %gep160, align 8, !tbaa !22
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %i.cs
  br i1 %exitcond145.not, label %middle.block180, label %scalar.ph167, !llvm.loop !102

middle.block180:                                  ; preds = %vector.body175, %scalar.ph167
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cr ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.ch
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !103

bb.h:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %i.dr = add nsw i32 %spec.select, -6            ; 2 uses
  %i.ds = shl nuw nsw i32 1, %i.dr                ; 2 uses
  %i.dt = add nsw i32 %spec.select117, -6         ; 5 uses
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = shl nuw nsw i32 2, %i.dt                ; 2 uses
  %i.dw = shl nuw nsw i32 2, %i.dr
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = zext nneg i32 %i.dv to i64              ; 3 uses
  %i.dz = zext nneg i32 %i.du to i64              ; 6 uses
  %i.ea = zext nneg i32 %i.ds to i64              ; 4 uses
  %4 = shl nuw nsw i64 %i.dz, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %i.dy)
  %5 = icmp samesign ult i32 %i.dv, %i.ds
  %umin = zext i1 %5 to i64                       ; 2 uses
  %6 = or disjoint i64 %umin, %i.dy
  %7 = sub nsw i64 %umax, %6
  %i.eb = add nsw i32 %spec.select, -5
  %8 = zext i32 %i.eb to i64
  %9 = add nuw nsw i64 %8, 3
  %min.iters.check = icmp ult i32 %i.dt, 2
  %10 = add nsw i32 %spec.select117, -5
  %i.ec = zext nneg i32 %10 to i64
  %11 = lshr i64 %7, %i.ec
  %i.ed = add i64 %11, %umin
  %12 = add nsw i32 %spec.select117, -5
  %13 = zext nneg i32 %12 to i64
  %14 = shl i64 %i.ed, %13                        ; 2 uses
  %15 = shl i64 %14, 3
  %i.ee = getelementptr i8, ptr %0, i64 %15
  %i.ef = getelementptr i8, ptr %i.ee, i64 %4
  %16 = add i64 %14, %i.ea
  %17 = add i64 %16, %i.dz
  %18 = shl i64 %17, 3
  %19 = getelementptr i8, ptr %0, i64 %18
  %n.vec = and i64 %i.dz, 2147483644
  %xtraiter = and i64 %i.dz, 1
  %i.eg = icmp eq i32 %i.dt, 0
  %unroll_iter = and i64 %i.dz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod210 = icmp eq i32 %i.dt, 0
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.preheader120.lr.ph ], [ %indvar.next, %bb.i ] ; 2 uses
  %.1124 = phi ptr [ %0, %.preheader120.lr.ph ], [ %i.fa, %bb.i ] ; 3 uses
  %i.eh = shl i64 %indvar, %9                     ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dz ; 2 uses
  %invariant.gep157 = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.ea ; 2 uses
  %20 = getelementptr i8, ptr %i.ef, i64 %i.eh
  %21 = getelementptr i8, ptr %19, i64 %i.eh
  %bound0 = icmp ult ptr %invariant.gep, %21
  %bound1 = icmp ult ptr %invariant.gep157, %20
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader120, %middle.block
  %indvars.iv138 = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next139, %middle.block ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv138 ; 4 uses
  %gep158 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157, i64 %indvars.iv138 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119
  br i1 %i.eg, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ei, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  %wide.load164 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %index ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !22, !alias.scope !112
  %wide.load166 = load <2 x i64>, ptr %i.el, align 8, !tbaa !22, !alias.scope !112
  store <2 x i64> %wide.load165, ptr %i.ei, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load166, ptr %i.ej, align 8, !tbaa !22, !alias.scope !111, !noalias !112
  store <2 x i64> %wide.load, ptr %i.ek, align 8, !tbaa !22, !alias.scope !112
  store <2 x i64> %wide.load164, ptr %i.el, align 8, !tbaa !22, !alias.scope !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !107

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !22
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !22
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !22
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.next ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !22
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !22
  store i64 %i.es, ptr %i.et, align 8, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !108

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %middle.block.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.epil.init ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !22
  store i64 %i.ey, ptr %i.ev, align 8, !tbaa !22
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !22
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, %i.dy ; 2 uses
  %i.ez = icmp samesign ult i64 %indvars.iv.next139, %i.ea
  br i1 %i.ez, label %.preheader119, label %bb.i, !llvm.loop !109

bb.i:                                             ; preds = %middle.block
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dx ; 2 uses
  %i.fb = icmp ult ptr %i.fa, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fb, label %.preheader120, label %.loopexit, !llvm.loop !110

.loopexit:                                        ; preds = %bb.i, %middle.block180, %vector.body195, %scalar.ph183, %scalar.ph183.1, %scalar.ph183.2, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"any p2 pointer", !8, i64 0}
!11 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !12, i64 8}
!14 = !{!"p2 long", !10, i64 0}
!15 = !{!"Vec_Mem_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24, !11, i64 32, !11, i64 40}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !5, i64 8}
!18 = !{!"p1 long", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!15, !5, i64 0}
!21 = !{!15, !5, i64 12}
!22 = !{!9, !9, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24, !25, !26}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !24, !25, !26}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !24, !25}
!37 = distinct !{!37, !24, !25, !26}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !24, !25, !26}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !24, !25}
!42 = distinct !{!42, !24, !25}
!43 = distinct !{!43, !24, !25, !26}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !24, !25, !26}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !24, !25}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !24, !25, !26}
!50 = distinct !{!50, !24, !26, !25}
!51 = distinct !{!51, !24, !25, !26}
!52 = distinct !{!52, !24, !26, !25}
!53 = distinct !{!53, !24, !25, !26}
!54 = distinct !{!54, !24, !26, !25}
!55 = distinct !{!55, !24, !25, !26}
!56 = distinct !{!56, !24, !26, !25}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24, !25, !26}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !24, !25}
!64 = distinct !{!64, !24}
!65 = !{!"p1 _ZTS10Mig_Man_t_", !8, i64 0}
!66 = !{!"p1 _ZTS10Mpm_Par_t_", !8, i64 0}
!67 = !{!"p1 _ZTS13Mpm_LibLut_t_", !8, i64 0}
!68 = !{!"p1 _ZTS11Mmr_Step_t_", !8, i64 0}
!69 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !10, i64 8}
!70 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!71 = !{!"p1 _ZTS10Vec_Mem_t_", !8, i64 0}
!72 = !{!"p1 _ZTS10Mpm_Dsd_t_", !8, i64 0}
!73 = !{!"p1 _ZTS13Hsh_IntMan_t_", !8, i64 0}
!74 = !{!"p1 _ZTS10Vec_Wrd_t_", !8, i64 0}
!75 = !{!"p1 _ZTS10Vec_Wec_t_", !8, i64 0}
!76 = !{!"Mpm_Man_t_", !65, i64 0, !66, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !67, i64 32, !5, i64 40, !5, i64 44, !9, i64 48, !9, i64 56, !68, i64 64, !5, i64 72, !4, i64 80, !4, i64 344, !69, i64 3248, !70, i64 3264, !8, i64 3272, !4, i64 3280, !4, i64 3296, !4, i64 4088, !71, i64 4880, !5, i64 4888, !5, i64 4892, !4, i64 4896, !4, i64 5408, !4, i64 5920, !4, i64 6432, !72, i64 6944, !73, i64 6952, !11, i64 6960, !74, i64 6968, !4, i64 6976, !11, i64 11296, !4, i64 11304, !4, i64 11316, !75, i64 11328, !13, i64 11336, !13, i64 11352, !13, i64 11368, !13, i64 11384, !13, i64 11400, !13, i64 11416, !13, i64 11432, !13, i64 11448, !13, i64 11464, !4, i64 11480, !5, i64 13880, !5, i64 13884, !5, i64 13888, !5, i64 13892, !5, i64 13896, !9, i64 13904, !9, i64 13912, !9, i64 13920, !9, i64 13928, !9, i64 13936, !9, i64 13944, !9, i64 13952}
!77 = !{!76, !5, i64 16}
!78 = !{!76, !71, i64 4880}
!79 = !{!76, !66, i64 8}
!80 = !{!"Mpm_Par_t_", !67, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!81 = !{!80, !5, i64 36}
!82 = !{!76, !5, i64 13896}
!83 = !{!76, !5, i64 24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24, !25}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24, !25}
!90 = distinct !{!90, !27}
!91 = distinct !{!91, !24}
!92 = !{!15, !5, i64 4}
!93 = !{!15, !11, i64 32}
!94 = !{!13, !5, i64 4}
!95 = !{!13, !5, i64 0}
!96 = !{!13, !12, i64 8}
!97 = !{!15, !11, i64 40}
!98 = !{!15, !5, i64 20}
!99 = !{!15, !5, i64 16}
!100 = distinct !{!100, !24, !25, !26}
!101 = distinct !{!101, !24, !25, !26}
!102 = distinct !{!102, !24, !26, !25}
!103 = distinct !{!103, !24}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !24, !25, !26}
!108 = distinct !{!108, !24, !25}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24}
!111 = !{!105}
!112 = !{!106}
end_hunk_0
