inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Vec_MemHashInsert:bb.a
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !37 ; 5 uses
  %.not.i20 = icmp eq i32 %i.id, -1
  br i1 %.not.i20, label %Vec_MemHashLookup.exit.thread.loopexit, label %bb.u, !llvm.loop !94

Vec_MemHashLookup.exit.thread.loopexit:           ; preds = %bb.v
  %i.ie = getelementptr inbounds [4 x i8], ptr %.val.i19, i64 %i.ib
  br label %Vec_MemHashLookup.exit.thread

Vec_MemHashLookup.exit.thread:                    ; preds = %Vec_MemHashLookup.exit.thread.loopexit, %Vec_MemHashKey.exit.i
  %.0.lcssa.i30 = phi ptr [ %i.gx, %Vec_MemHashKey.exit.i ], [ %i.ie, %Vec_MemHashLookup.exit.thread.loopexit ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !90 ; 6 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 4      ; 3 uses
  %.val14 = load i32, ptr %i.ih, align 4, !tbaa !86 ; 8 uses
  store i32 %.val14, ptr %.0.lcssa.i30, align 4, !tbaa !37
  %i.ii = load i32, ptr %i.ig, align 8, !tbaa !88
  %i.ij = icmp eq i32 %.val14, %i.ii
  br i1 %i.ij, label %bb.w, label %Vec_IntPush.exit

bb.w:                                             ; preds = %Vec_MemHashLookup.exit.thread
  %i.ik = icmp slt i32 %.val14, 16
  br i1 %i.ik, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !89 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.im, null
  br i1 %.not9.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.in = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.im, i64 noundef 64) #10
  br label %Vec_IntGrow.exit.i

bb.z:                                             ; preds = %bb.x
  %i.io = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.z, %bb.y
  %i.ip = phi ptr [ %i.in, %bb.y ], [ %i.io, %bb.z ]
  store ptr %i.ip, ptr %i.il, align 8, !tbaa !89
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.iq = icmp samesign ult i32 %.val14, 1073741823
  %i.ir = shl nuw nsw i32 %.val14, 1
  %spec.select.i = select i1 %i.iq, i32 %i.ir, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val14, %spec.select.i
  br i1 %.not.i9.i, label %bb.ab, label %Vec_IntPush.exit

bb.ab:                                            ; preds = %bb.aa
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !89 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.it, null
  %i.iu = zext nneg i32 %spec.select.i to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iw = tail call ptr @realloc(ptr noundef nonnull %i.it, i64 noundef %i.iv) #10
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ix = tail call noalias ptr @malloc(i64 noundef %i.iv) #11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.iy = phi ptr [ %i.iw, %bb.ac ], [ %i.ix, %bb.ad ]
  store ptr %i.iy, ptr %i.is, align 8, !tbaa !89
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ae, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ae ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ig, align 8, !tbaa !88
  %.pre = load i32, ptr %i.ih, align 4, !tbaa !86
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_MemHashLookup.exit.thread, %bb.aa, %Vec_IntGrow.exit11.sink.split.i
  %i.iz = phi i32 [ %.val14, %Vec_MemHashLookup.exit.thread ], [ %.val14, %bb.aa ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !89
  %i.jc = add nsw i32 %i.iz, 1
  store i32 %i.jc, ptr %i.ih, align 4, !tbaa !86
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jd
  store i32 -1, ptr %i.je, align 4, !tbaa !37
  %i.jf = load i32, ptr %i.a, align 4, !tbaa !84  ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !31 ; 3 uses
  %i.ji = ashr i32 %i.jf, %i.jh                   ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !99 ; 3 uses
  %i.jl = icmp slt i32 %i.jk, %i.ji
  br i1 %i.jl, label %bb.af, label %Vec_MemPush.exit

bb.af:                                            ; preds = %Vec_IntPush.exit
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !100 ; 3 uses
  %.not36.i.i = icmp slt i32 %i.ji, %i.jn
  br i1 %.not36.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !28 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.jp, null
  %.not38.i.i = icmp eq i32 %i.jn, 0
  %i.jq = shl nsw i32 %i.jn, 1
  %i.jr = add nsw i32 %i.ji, 32
  %i.js = select i1 %.not38.i.i, i32 %i.jr, i32 %i.jq ; 2 uses
  store i32 %i.js, ptr %i.jm, align 8, !tbaa !100
  %i.jt = sext i32 %i.js to i64
  %i.ju = shl nsw i64 %i.jt, 3                    ; 2 uses
  br i1 %.not37.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jv = tail call ptr @realloc(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #10
  %.pre.pre.i.i = load i32, ptr %i.jj, align 4, !tbaa !99
  %.pre.pre.pre.pre.i = load i32, ptr %i.jg, align 8, !tbaa !31
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.jw = tail call noalias ptr @malloc(i64 noundef %i.ju) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre.pre.pre.i = phi i32 [ %.pre.pre.pre.pre.i, %bb.ah ], [ %i.jh, %bb.ai ]
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %bb.ah ], [ %i.jk, %bb.ai ]
  %i.jx = phi ptr [ %i.jv, %bb.ah ], [ %i.jw, %bb.ai ]
  store ptr %i.jx, ptr %i.jo, align 8, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.pre.pre.i = phi i32 [ %.pre.pre.pre.i, %bb.aj ], [ %i.jh, %bb.af ] ; 2 uses
  %i.jy = phi i32 [ %.pre.i.i, %bb.aj ], [ %i.jk, %bb.af ] ; 2 uses
  %.not40.not41.i.i = icmp slt i32 %i.jy, %i.ji
  br i1 %.not40.not41.i.i, label %.lr.ph.i.i23, label %._crit_edge.i.i

.lr.ph.i.i23:                                     ; preds = %bb.ak
  %i.jz = load i32, ptr %0, align 8, !tbaa !34
  %i.ka = shl i32 %i.jz, %.pre.pre.i
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl nsw i64 %i.kb, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !28
  %i.kf = sext i32 %i.jy to i64
  %wide.trip.count.i.i24 = sext i32 %i.ji to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.i23
  %indvars.iv.i.i25 = phi i64 [ %i.kf, %.lr.ph.i.i23 ], [ %indvars.iv.next.i.i26, %bb.al ]
  %indvars.iv.next.i.i26 = add nsw i64 %indvars.iv.i.i25, 1 ; 3 uses
  %i.kg = tail call noalias ptr @malloc(i64 noundef %i.kc) #11
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i26
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !32
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i24
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i, label %bb.al, !llvm.loop !101

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !99
  %.pre.i = ashr i32 %i.jf, %.pre.pre.i
  br label %Vec_MemPush.exit

Vec_MemPush.exit:                                 ; preds = %Vec_IntPush.exit, %._crit_edge.i.i
  %.pre-phi.i = phi i32 [ %i.ji, %Vec_IntPush.exit ], [ %.pre.i, %._crit_edge.i.i ]
  %i.ki = add nsw i32 %i.jf, 1
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !84
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !28
  %i.kl = sext i32 %.pre-phi.i to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !32
  %i.ko = load i32, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !35
  %i.kr = and i32 %i.kq, %i.jf
  %i.ks = mul nsw i32 %i.kr, %i.ko
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.kt
  %i.kv = sext i32 %i.ko to i64
  %i.kw = shl nsw i64 %i.kv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ku, ptr readonly align 8 %1, i64 %i.kw, i1 false)
  %i.kx = load ptr, ptr %i.if, align 8, !tbaa !90
  %i.ky = getelementptr i8, ptr %i.kx, i64 4
  %.val = load i32, ptr %i.ky, align 4, !tbaa !86
  %i.kz = add nsw i32 %.val, -1
  br label %Vec_MemHashLookup.exit

Vec_MemHashLookup.exit:                           ; preds = %bb.u, %.lr.ph.i18, %Vec_MemPush.exit
  %.0 = phi i32 [ %i.kz, %Vec_MemPush.exit ], [ %i.gy, %.lr.ph.i18 ], [ %i.id, %bb.u ]
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
  %i.c = load i64, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw nsw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add nsw i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !36
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !36
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !36
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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36 ; 4 uses
  %min.iters.check186 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check186, label %scalar.ph185, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec188 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph187
  %index198 = phi i64 [ 0, %vector.ph187 ], [ %index.next201, %vector.body197 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index198 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load199 = load <2 x i64>, ptr %i.am, align 8, !tbaa !36 ; 3 uses
  %wide.load200 = load <2 x i64>, ptr %i.an, align 8, !tbaa !36 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat190, %wide.load199
  %i.ap = and <2 x i64> %broadcast.splat190, %wide.load200
  %i.aq = and <2 x i64> %broadcast.splat192, %wide.load199
  %i.ar = and <2 x i64> %broadcast.splat192, %wide.load200
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat194
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat194
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat196, %wide.load199
  %i.ax = and <2 x i64> %broadcast.splat196, %wide.load200
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat194
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat194
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !36
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !36
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next201, %n.vec188
  br i1 %i.bc, label %.loopexit, label %vector.body197, !llvm.loop !102

scalar.ph185:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !36    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !36
  %exitcond150.not = icmp slt i32 %i.y, 2
  br i1 %exitcond150.not, label %.loopexit, label %scalar.ph185.1

scalar.ph185.1:                                   ; preds = %scalar.ph185
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !36
  %exitcond150.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond150.not.1, label %.loopexit, label %scalar.ph185.2

scalar.ph185.2:                                   ; preds = %scalar.ph185.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !36 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !36
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
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !36 ; 5 uses
  %i.co = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cp = xor i64 %i.cn, -1                       ; 2 uses
  %i.cq = shl nuw nsw i32 2, %i.ci
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cj to i64              ; 3 uses
  %min.iters.check170 = icmp eq i32 %i.ci, 0
  %n.vec172 = and i64 %i.cs, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %middle.block182
  %.0126 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.dp, %middle.block182 ] ; 4 uses
  %invariant.gep159 = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cs ; 2 uses
  br i1 %min.iters.check170, label %scalar.ph169, label %vector.body177

vector.body177:                                   ; preds = %.preheader, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %index178 ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %i.cu = and <2 x i64> %broadcast.splat, %wide.load179
  %i.cv = lshr <2 x i64> %i.cu, %broadcast.splat174
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %index178 ; 2 uses
  %wide.load180 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !36 ; 2 uses
  %i.cx = shl <2 x i64> %wide.load180, %broadcast.splat174
  %i.cy = and <2 x i64> %i.cx, %broadcast.splat
  %i.cz = and <2 x i64> %wide.load179, %broadcast.splat176
  %i.da = or <2 x i64> %i.cy, %i.cz
  store <2 x i64> %i.da, ptr %i.ct, align 8, !tbaa !36
  %i.db = and <2 x i64> %wide.load180, %broadcast.splat
  %i.dc = or <2 x i64> %i.db, %i.cv
  store <2 x i64> %i.dc, ptr %i.cw, align 8, !tbaa !36
  %index.next181 = add nuw i64 %index178, 2       ; 2 uses
  %i.dd = icmp eq i64 %index.next181, %n.vec172
  br i1 %i.dd, label %middle.block182, label %vector.body177, !llvm.loop !103

scalar.ph169:                                     ; preds = %.preheader, %scalar.ph169
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph169 ], [ 0, %.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %indvars.iv141 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !36 ; 2 uses
  %i.dg = and i64 %i.cn, %i.df
  %i.dh = lshr i64 %i.dg, %i.co
  %gep160 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv141 ; 2 uses
  %i.di = load i64, ptr %gep160, align 8, !tbaa !36 ; 2 uses
  %i.dj = shl i64 %i.di, %i.co
  %i.dk = and i64 %i.dj, %i.cn
  %i.dl = and i64 %i.df, %i.cp
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !36
  %i.dn = and i64 %i.di, %i.cn
  %i.do = or i64 %i.dn, %i.dh
  store i64 %i.do, ptr %gep160, align 8, !tbaa !36
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %i.cs
  br i1 %exitcond145.not, label %middle.block182, label %scalar.ph169, !llvm.loop !104

middle.block182:                                  ; preds = %vector.body177, %scalar.ph169
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cr ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.ch
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !105

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
  %i.eb = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.ea)
  %i.ec = icmp samesign ult i32 %i.dv, %i.ds
  %umin = zext i1 %i.ec to i64                    ; 2 uses
  %i.ed = or disjoint i64 %umin, %i.dy
  %i.ee = sub nsw i64 %umax, %i.ed
  %i.ef = add nsw i32 %spec.select117, -5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 %i.ee, %i.eg
  %i.ei = add i64 %i.eh, %umin
  %i.ej = add nsw i32 %spec.select117, -5
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %i.ei, %i.ek
  %4 = shl i64 %i.el, 3                           ; 2 uses
  %5 = shl nuw nsw i64 %i.dz, 4
  %i.em = shl nuw nsw i64 %i.ea, 3                ; 2 uses
  %i.en = add nsw i32 %spec.select, -5
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 3
  %i.eq = getelementptr i8, ptr %0, i64 %i.eb
  %i.er = getelementptr i8, ptr %0, i64 %i.em
  %i.es = getelementptr i8, ptr %0, i64 %4
  %6 = getelementptr i8, ptr %i.es, i64 %5
  %7 = getelementptr i8, ptr %0, i64 %4
  %8 = getelementptr i8, ptr %7, i64 %i.em
  %i.et = getelementptr i8, ptr %8, i64 %i.eb
  %min.iters.check = icmp ult i32 %i.dt, 2
  %n.vec = and i64 %i.dz, 2147483644
  %xtraiter = and i64 %i.dz, 1
  %i.eu = icmp eq i32 %i.dt, 0
  %unroll_iter = and i64 %i.dz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod212 = icmp eq i32 %i.dt, 0
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.preheader120.lr.ph ], [ %indvar.next, %bb.i ] ; 2 uses
  %.1124 = phi ptr [ %0, %.preheader120.lr.ph ], [ %i.fo, %bb.i ] ; 3 uses
  %i.ev = shl i64 %indvar, %i.ep                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.eq, i64 %i.ev
  %scevgep164 = getelementptr i8, ptr %i.er, i64 %i.ev
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dz
  %invariant.gep157.a = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.ea
  %scevgep163 = getelementptr i8, ptr %6, i64 %i.ev
  %scevgep165.a = getelementptr i8, ptr %i.et, i64 %i.ev
  %bound0 = icmp ult ptr %scevgep, %scevgep165.a
  %bound1 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader120, %middle.block
  %indvars.iv138 = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next139, %middle.block ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv138 ; 4 uses
  %gep158 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.a, i64 %indvars.iv138 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119
  br i1 %i.eu, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ew, align 8, !tbaa !36, !alias.scope !106, !noalias !109
  %wide.load166 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !36, !alias.scope !106, !noalias !109
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %index ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load167 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !36, !alias.scope !109
  %wide.load168 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !36, !alias.scope !109
  store <2 x i64> %wide.load167, ptr %i.ew, align 8, !tbaa !36, !alias.scope !106, !noalias !109
  store <2 x i64> %wide.load168, ptr %i.ex, align 8, !tbaa !36, !alias.scope !106, !noalias !109
  store <2 x i64> %wide.load, ptr %i.ey, align 8, !tbaa !36, !alias.scope !109
  store <2 x i64> %wide.load166, ptr %i.ez, align 8, !tbaa !36, !alias.scope !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !111

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !36
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !36
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !36
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.next ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !36
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !36
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !112

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %middle.block.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !36
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.epil.init ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !36
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !36
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !36
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, %i.dy ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next139, %i.ea
  br i1 %i.fn, label %.preheader119, label %bb.i, !llvm.loop !113

bb.i:                                             ; preds = %middle.block
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dx ; 2 uses
  %i.fp = icmp ult ptr %i.fo, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fp, label %.preheader120, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %bb.i, %middle.block182, %vector.body197, %scalar.ph185, %scalar.ph185.1, %scalar.ph185.2, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"Mpm_Man_t_", !10, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !13, i64 32, !5, i64 40, !5, i64 44, !14, i64 48, !14, i64 56, !15, i64 64, !5, i64 72, !6, i64 80, !6, i64 344, !16, i64 3248, !18, i64 3264, !11, i64 3272, !6, i64 3280, !6, i64 3296, !6, i64 4088, !19, i64 4880, !5, i64 4888, !5, i64 4892, !6, i64 4896, !6, i64 5408, !6, i64 5920, !6, i64 6432, !20, i64 6944, !21, i64 6952, !22, i64 6960, !23, i64 6968, !6, i64 6976, !22, i64 11296, !6, i64 11304, !6, i64 11316, !24, i64 11328, !25, i64 11336, !25, i64 11352, !25, i64 11368, !25, i64 11384, !25, i64 11400, !25, i64 11416, !25, i64 11432, !25, i64 11448, !25, i64 11464, !6, i64 11480, !5, i64 13880, !5, i64 13884, !5, i64 13888, !5, i64 13892, !5, i64 13896, !14, i64 13904, !14, i64 13912, !14, i64 13920, !14, i64 13928, !14, i64 13936, !14, i64 13944, !14, i64 13952}
!10 = !{!"p1 _ZTS10Mig_Man_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Mpm_Par_t_", !11, i64 0}
!13 = !{!"p1 _ZTS13Mpm_LibLut_t_", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS11Mmr_Step_t_", !11, i64 0}
!16 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Vec_Mem_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Mpm_Dsd_t_", !11, i64 0}
!21 = !{!"p1 _ZTS13Hsh_IntMan_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!23 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!25 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !26, i64 8}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!9, !19, i64 4880}
!28 = !{!29, !30, i64 24}
!29 = !{!"Vec_Mem_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !30, i64 24, !22, i64 32, !22, i64 40}
!30 = !{!"p2 long", !17, i64 0}
!31 = !{!29, !5, i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 long", !11, i64 0}
!34 = !{!29, !5, i64 0}
!35 = !{!29, !5, i64 12}
!36 = !{!14, !14, i64 0}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!9, !12, i64 8}
!41 = !{!42, !5, i64 36}
!42 = !{!"Mpm_Par_t_", !13, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64}
!43 = distinct !{!43, !39}
!44 = !{!9, !5, i64 13896}
!45 = distinct !{!45, !39}
!46 = !{!9, !5, i64 24}
!47 = distinct !{!47, !39, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !39, !48, !49}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !39, !48}
!55 = distinct !{!55, !39, !48}
!56 = distinct !{!56, !39, !48, !49}
!57 = distinct !{!57, !51}
!58 = distinct !{!58, !39, !48, !49}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !39, !48}
!61 = distinct !{!61, !39, !48}
!62 = distinct !{!62, !39, !48, !49}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !39, !48, !49}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !39, !48}
!67 = distinct !{!67, !39, !48}
!68 = distinct !{!68, !39, !48, !49}
!69 = distinct !{!69, !39, !49, !48}
!70 = distinct !{!70, !39, !48, !49}
!71 = distinct !{!71, !39, !49, !48}
!72 = distinct !{!72, !39, !48, !49}
!73 = distinct !{!73, !39, !49, !48}
!74 = distinct !{!74, !39, !48, !49}
!75 = distinct !{!75, !39, !49, !48}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
end_hunk_0
