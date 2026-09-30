Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/crx?download=true
inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z9crxReadQPP12CrxBitstreami:bb.a

_Z19crxBitstreamGetBitsP12CrxBitstreami.exit17:   ; preds = %.loopexit, %_ZL13crxFillBufferP12CrxBitstream.exit29, %bb.ae, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit
  %.0 = phi i32 [ %.139.i, %bb.ae ], [ %i.ls, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit ], [ %i.fv, %_ZL13crxFillBufferP12CrxBitstream.exit29 ], [ %i.hp, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z18crxDecodeGolombTopP12CrxBitstreamiPiS1_(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !29
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i32 [ %i.b, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01415 = phi ptr [ %i.d, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = add nsw i32 %.016, -1
  %i.c = load i32, ptr %.01415, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %.01415, i64 4 ; 6 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !29
  %i.e = load i32, ptr %3, align 4, !tbaa !29
  %i.f = tail call noundef i32 @_Z9crxReadQPP12CrxBitstreami(ptr noundef %0, i32 noundef %i.e) ; 4 uses
  %i.g = and i32 %i.f, 1
  %i.h = sub nsw i32 0, %i.g
  %i.i = lshr i32 %i.f, 1
  %i.j = xor i32 %i.i, %i.h
  %i.k = load i32, ptr %i.d, align 4, !tbaa !29
  %i.l = add nsw i32 %i.j, %i.k
  store i32 %i.l, ptr %i.d, align 4, !tbaa !29
  %i.m = load i32, ptr %3, align 4, !tbaa !29     ; 3 uses
  %i.n = shl nuw i32 1, %i.m
  %i.o = ashr i32 %i.n, 1
  %i.p = icmp slt i32 %i.f, %i.o
  %.neg.i = sext i1 %i.p to i32
  %i.q = ashr i32 %i.f, %i.m                      ; 2 uses
  %i.r = icmp sgt i32 %i.q, 2
  %i.s = zext i1 %i.r to i32
  %i.t = icmp sgt i32 %i.q, 5
  %i.u = zext i1 %i.t to i32
  %i.v = add i32 %i.m, %i.s
  %i.w = add i32 %i.v, %i.u
  %i.x = add i32 %i.w, %.neg.i
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.x, i32 7)
  store i32 %i.y, ptr %3, align 4, !tbaa !29
  %i.z = icmp samesign ugt i32 %.016, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !6

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.d, align 4, !tbaa !29
  %i.aa = add nsw i32 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi i32 [ 1, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %.014.lcssa = phi ptr [ %2, %bb.a ], [ %i.d, %._crit_edge.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21crxDecodeGolombNormalP12CrxBitstreamiPiS1_S1_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29   ; 3 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !29
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !29
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.j, %bb.c ]
  %.038 = phi i32 [ %i.f, %.lr.ph ], [ %i.am, %bb.c ] ; 3 uses
  %.03237 = phi ptr [ %3, %.lr.ph ], [ %i.aa, %bb.c ] ; 2 uses
  %.03336 = phi ptr [ %2, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %i.j = add nsw i32 %.in, -1                     ; 2 uses
  %i.k = load i32, ptr %.03237, align 4, !tbaa !29 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03336, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29   ; 2 uses
  %i.n = load i32, ptr %.03336, align 4, !tbaa !29
  %i.o = sub nsw i32 %i.n, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.p = add nsw i32 %i.k, %.038                  ; 2 uses
  store i32 %i.p, ptr %i.a, align 16, !tbaa !29
  store i32 %i.p, ptr %i.g, align 4, !tbaa !29
  store i32 %i.k, ptr %i.h, align 8, !tbaa !29
  store i32 %i.m, ptr %i.i, align 4, !tbaa !29
  %.lobit12.i = xor i32 %i.o, %.038
  %i.q = lshr i32 %.lobit12.i, 30
  %i.r = and i32 %i.q, 2
  %i.s = icmp slt i32 %i.k, %i.m
  %i.t = icmp slt i32 %.038, 0
  %i.u = xor i1 %i.t, %i.s
  %i.v = zext i1 %i.u to i32
  %i.w = or disjoint i32 %i.r, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %.03237, i64 4 ; 6 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !29
  %i.ab = load i32, ptr %4, align 4, !tbaa !29
  %i.ac = tail call noundef i32 @_Z9crxReadQPP12CrxBitstreami(ptr noundef %0, i32 noundef %i.ab) ; 4 uses
  %i.ad = and i32 %i.ac, 1
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ai = add nsw i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !29
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.03336, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = load i32, ptr %i.l, align 4, !tbaa !29
  %i.am = sub nsw i32 %i.ak, %i.al                ; 2 uses
  %i.an = load i32, ptr %4, align 4, !tbaa !29    ; 3 uses
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ap = add nuw i32 %i.ao, %i.af
  %i.aq = and i32 %i.ap, 2147483647               ; 2 uses
  %i.ar = shl nuw i32 1, %i.an
  %i.as = ashr i32 %i.ar, 1
  %i.at = icmp slt i32 %i.aq, %i.as
  %.neg.i35 = sext i1 %i.at to i32
  %i.au = add i32 %i.an, %.neg.i35
  %i.av = lshr i32 %i.aq, %i.an                   ; 2 uses
  %i.aw = icmp samesign ugt i32 %i.av, 2
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nsw i32 %i.au, %i.ax
  %i.az = icmp samesign ugt i32 %i.av, 5
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nsw i32 %i.ay, %i.ba
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 7)
  store i32 %i.bc, ptr %4, align 4, !tbaa !29
  br label %bb.b, !llvm.loop !311

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bd = load i32, ptr %4, align 4, !tbaa !29    ; 3 uses
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = ashr i32 %i.be, 1
  %i.bg = icmp slt i32 %i.ac, %i.bf
  %.neg.i = sext i1 %i.bg to i32
  %i.bh = ashr i32 %i.ac, %i.bd                   ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 2
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp sgt i32 %i.bh, 5
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add i32 %i.bd, %i.bj
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = add i32 %i.bn, %.neg.i
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 7)
  store i32 %i.bp, ptr %4, align 4, !tbaa !29
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bq = phi i32 [ %i.c, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.032.lcssa = phi ptr [ %3, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z12crxMakeQStepP8CrxImageP7CrxTilePij(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !144   ; 5 uses
  %i.c = add i8 %i.b, -4
  %or.cond = icmp ult i8 %i.c, -3
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !163
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 7
  %i.h = lshr i32 %i.g, 3                         ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.j = load i16, ptr %i.i, align 2, !tbaa !150
  %i.k = zext i16 %i.j to i32                     ; 4 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.k, 1
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 6 uses
  %i.o = add nuw nsw i32 %i.k, 3
  %i.p = lshr i32 %i.o, 2                         ; 4 uses
  %i.q = add nuw nsw i32 %i.k, 7
  %i.r = lshr i32 %i.q, 3                         ; 4 uses
  %.not = icmp eq i8 %i.b, 1
  %4 = select i1 %.not, i32 0, i32 %i.p
  %spec.select = add nuw nsw i32 %4, %i.n
  %5 = icmp samesign ugt i8 %i.b, 2
  %i.s = select i1 %5, i32 %i.r, i32 0
  %.1149 = add nuw nsw i32 %spec.select, %i.s
  %i.t = mul nuw nsw i32 %.1149, %i.h
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.x, %i.aa
  %i.ac = add nuw nsw i64 %i.ab, %i.v
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #25 ; 11 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN13libraw_memmgr6mallocEm.exit.thread, label %.preheader.i.i

_ZN13libraw_memmgr6mallocEm.exit.thread:          ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.ae, align 8, !tbaa !162
  br label %.loopexit

.preheader.i.i:                                   ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !141 ; 9 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !142
  %.not10.i.i.1 = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.1, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !142
  %.not10.i.i.2 = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.2, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !142
  %.not10.i.i.3 = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.3, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.3
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142
  %.not10.i.i.4 = icmp eq ptr %i.ao, null
  br i1 %.not10.i.i.4, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.4
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142
  %.not10.i.i.5 = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.5, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.5
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !142
  %.not10.i.i.6 = icmp eq ptr %i.as, null
  br i1 %.not10.i.i.6, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %exitcond.not.i.i.6 = icmp eq i64 %indvars.iv.next.i.i.6, 511
  br i1 %exitcond.not.i.i.6, label %bb.k, label %bb.j, !llvm.loop !5

bb.j:                                             ; preds = %bb.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i.6, %bb.i ] ; 9 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !142
  %.not10.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i, label %_ZN13libraw_memmgr6mallocEm.exit, label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4088 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !142
  %.not11.i.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ad, ptr %i.av, align 8, !tbaa !142
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 4) #22 ; 2 uses
  store i32 11, ptr %i.ax, align 16, !tbaa !63
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #23
  unreachable

_ZN13libraw_memmgr6mallocEm.exit:                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.j
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.j ], [ %indvars.iv.next.i.i, %bb.c ], [ %indvars.iv.next.i.i.1, %bb.d ], [ %indvars.iv.next.i.i.2, %bb.e ], [ %indvars.iv.next.i.i.3, %bb.f ], [ %indvars.iv.next.i.i.4, %bb.g ], [ %indvars.iv.next.i.i.5, %bb.h ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.lcssa
  store ptr %i.ad, ptr %i.ay, align 8, !tbaa !142
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ad, ptr %i.az, align 8, !tbaa !162
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.w ; 6 uses
  switch i8 %i.b, label %.loopexit [
    i8 3, label %bb.n
    i8 2, label %bb.s
    i8 1, label %bb.x
  ]

bb.n:                                             ; preds = %_ZN13libraw_memmgr6mallocEm.exit
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.h, ptr %i.bb, align 8, !tbaa !94
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.r, ptr %i.bc, align 4, !tbaa !318
  %.not209 = icmp eq i32 %i.r, 0
  br i1 %.not209, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.n
  %i.bd = add nsw i32 %i.n, -1
  %.not210 = icmp eq i32 %i.h, 0
  br i1 %.not210, label %._crit_edge185, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph184
  %i.be = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bg = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0144182.us = phi i32 [ %i.cl, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0146181.us = phi ptr [ %i.ck, %._crit_edge.us ], [ %i.ba, %.lr.ph.us.preheader ]
  %i.bi = phi <4 x i32> [ %i.cm, %._crit_edge.us ], [ <i32 1, i32 0, i32 2, i32 3>, %.lr.ph.us.preheader ] ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bi, <4 x i32> %i.bf)
  %i.bk = mul <4 x i32> %i.bh, %i.bj
  %i.bl = sext <4 x i32> %i.bk to <4 x i64>
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.us, %bb.r
  %.0139180.us = phi i32 [ 0, %.lr.ph.us ], [ %i.cj, %bb.r ]
  %.1147175.us = phi ptr [ %.0146181.us, %.lr.ph.us ], [ %i.ck, %bb.r ] ; 2 uses
  %i.bm = phi <4 x i64> [ %i.bl, %.lr.ph.us ], [ %i.bo, %bb.r ] ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, <4 x i64> %i.bm
  %i.bo = add nsw <4 x i64> %i.bm, splat (i64 1)
  %i.bp = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.bn, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !29
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bp) ; 2 uses
  %isneg.us = icmp slt i32 %i.bq, 0
  %i.br = select i1 %isneg.us, i32 3, i32 0
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = ashr i32 %i.bs, 2                       ; 4 uses
  %i.bu = sdiv i32 %i.bt, 6                       ; 2 uses
  %i.bv = srem i32 %i.bt, 6
  %i.bw = icmp sgt i32 %i.bt, 35
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = sub nsw i32 6, %i.bu
  %i.cb = ashr i32 %i.bz, %i.ca
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cc = urem i32 %i.bt, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29
  %i.cg = add nuw nsw i32 %i.bu, 26
  %i.ch = and i32 %i.cg, 31
  %i.ci = shl i32 %i.cf, %i.ch
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge172.us = phi i32 [ %i.cb, %bb.p ], [ %i.ci, %bb.q ]
  store i32 %storemerge172.us, ptr %.1147175.us, align 4, !tbaa !29
  %i.cj = add nuw nsw i32 %.0139180.us, 1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1147175.us, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.cj, %i.h
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.o, !llvm.loop !312

._crit_edge.us:                                   ; preds = %bb.r
  %i.cl = add nuw nsw i32 %.0144182.us, 1         ; 2 uses
  %i.cm = add nuw nsw <4 x i32> %i.bi, splat (i32 4)
  %exitcond243.not = icmp eq i32 %i.cl, %i.r
  br i1 %exitcond243.not, label %._crit_edge185, label %.lr.ph.us, !llvm.loop !313

._crit_edge185:                                   ; preds = %._crit_edge.us, %.lr.ph184, %bb.n
  %.0146.lcssa = phi ptr [ %i.ba, %bb.n ], [ %i.ba, %.lr.ph184 ], [ %i.ck, %._crit_edge.us ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge185, %_ZN13libraw_memmgr6mallocEm.exit
  %.2 = phi ptr [ %.0146.lcssa, %._crit_edge185 ], [ %i.ba, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  %.0145 = phi ptr [ %i.cn, %._crit_edge185 ], [ %i.ad, %_ZN13libraw_memmgr6mallocEm.exit ] ; 4 uses
  store ptr %.2, ptr %.0145, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  store i32 %i.h, ptr %i.co, align 8, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  store i32 %i.p, ptr %i.cp, align 4, !tbaa !318
  %.not211 = icmp eq i32 %i.p, 0
end_hunk_0
