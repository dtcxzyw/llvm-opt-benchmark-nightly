Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/crx?download=true
inline.NumInlined: 355
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_Z9crxReadQPP12CrxBitstreami:bb.a

_Z19crxBitstreamGetBitsP12CrxBitstreami.exit17:   ; preds = %.loopexit, %_ZL13crxFillBufferP12CrxBitstream.exit29, %bb.ae, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit
  %.0 = phi i32 [ %.139.i, %bb.ae ], [ %i.ls, %_Z19crxBitstreamGetBitsP12CrxBitstreami.exit ], [ %i.fv, %_ZL13crxFillBufferP12CrxBitstream.exit29 ], [ %i.hp, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z18crxDecodeGolombTopP12CrxBitstreamiPiS1_(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !24
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i32 [ %i.b, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01415 = phi ptr [ %i.d, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = add nsw i32 %.016, -1
  %i.c = load i32, ptr %.01415, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %.01415, i64 4 ; 6 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = load i32, ptr %3, align 4, !tbaa !24
  %i.f = tail call noundef i32 @_Z9crxReadQPP12CrxBitstreami(ptr noundef %0, i32 noundef %i.e) ; 4 uses
  %i.g = and i32 %i.f, 1
  %i.h = sub nsw i32 0, %i.g
  %i.i = lshr i32 %i.f, 1
  %i.j = xor i32 %i.i, %i.h
  %i.k = load i32, ptr %i.d, align 4, !tbaa !24
  %i.l = add nsw i32 %i.j, %i.k
  store i32 %i.l, ptr %i.d, align 4, !tbaa !24
  %i.m = load i32, ptr %3, align 4, !tbaa !24     ; 3 uses
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
  store i32 %i.y, ptr %3, align 4, !tbaa !24
  %i.z = icmp samesign ugt i32 %.016, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !4

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24
  %i.aa = add nsw i32 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi i32 [ 1, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %.014.lcssa = phi ptr [ %2, %bb.a ], [ %i.d, %._crit_edge.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.lcssa, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21crxDecodeGolombNormalP12CrxBitstreamiPiS1_S1_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 3 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !24
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !24
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
  %i.k = load i32, ptr %.03237, align 4, !tbaa !24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03336, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24   ; 2 uses
  %i.n = load i32, ptr %.03336, align 4, !tbaa !24
  %i.o = sub nsw i32 %i.n, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = add nsw i32 %i.k, %.038                  ; 2 uses
  store i32 %i.p, ptr %i.a, align 16, !tbaa !24
  store i32 %i.p, ptr %i.g, align 4, !tbaa !24
  store i32 %i.k, ptr %i.h, align 8, !tbaa !24
  store i32 %i.m, ptr %i.i, align 4, !tbaa !24
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %.03237, i64 4 ; 6 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !24
  %i.ab = load i32, ptr %4, align 4, !tbaa !24
  %i.ac = tail call noundef i32 @_Z9crxReadQPP12CrxBitstreami(ptr noundef %0, i32 noundef %i.ab) ; 4 uses
  %i.ad = and i32 %i.ac, 1
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !24
  %i.ai = add nsw i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !24
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.03336, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.al = load i32, ptr %i.l, align 4, !tbaa !24
  %i.am = sub nsw i32 %i.ak, %i.al                ; 2 uses
  %i.an = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
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
  store i32 %i.bc, ptr %4, align 4, !tbaa !24
  br label %bb.b, !llvm.loop !262

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bd = load i32, ptr %4, align 4, !tbaa !24    ; 3 uses
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
  store i32 %i.bp, ptr %4, align 4, !tbaa !24
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bq = phi i32 [ %i.c, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.032.lcssa = phi ptr [ %3, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z12crxMakeQStepP8CrxImageP7CrxTilePij(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !114   ; 5 uses
  %i.c = add i8 %i.b, -4
  %or.cond = icmp ult i8 %i.c, -3
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i16, ptr %i.d, align 4, !tbaa !133
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 7
  %i.h = lshr i32 %i.g, 3                         ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.j = load i16, ptr %i.i, align 2, !tbaa !120
  %i.k = zext i16 %i.j to i32                     ; 4 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.k, 1
  %i.n = add nuw nsw i32 %i.l, %i.m               ; 6 uses
  %i.o = add nuw nsw i32 %i.k, 3
  %i.p = lshr i32 %i.o, 2                         ; 4 uses
  %i.q = add nuw nsw i32 %i.k, 7
  %i.r = lshr i32 %i.q, 3                         ; 4 uses
  %.not = icmp eq i8 %i.b, 1
  %4 = icmp samesign ugt i8 %i.b, 2
  %5 = select i1 %4, i32 %i.r, i32 0
  %6 = add nuw nsw i32 %i.p, %5
  %i.s = select i1 %.not, i32 0, i32 %6
  %.1149 = add nuw nsw i32 %i.s, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = mul nuw nsw i32 %.1149, %i.h
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = zext nneg i8 %i.b to i64                 ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !110
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.y, %i.ab
  %i.ad = add nuw nsw i64 %i.ac, %i.w
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #26 ; 11 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !111 ; 7 uses
  %i.ag = icmp ne ptr %i.af, null
  %i.ah = icmp ne ptr %i.ae, null                 ; 2 uses
  %or.cond.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i, label %.preheader.i.i, label %_ZN13libraw_memmgr6mallocEm.exit

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112
  %.not.i.i.1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.1, label %bb.e, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112
  %.not.i.i.2 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.i.i, 508
  br i1 %exitcond.not.i.i.2, label %bb.f, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %bb.c
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.2
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112
  %.not.i.i.3 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.d
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %bb.d ], [ 0, %bb.b ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.e, label %.preheader.i.i.1

bb.e:                                             ; preds = %.preheader.i.i.3, %.preheader.i.i.2, %.preheader.i.i.1, %.preheader.i.i
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader.i.i.1 ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.2 ], [ %indvars.iv.next.i.i.2, %.preheader.i.i.3 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i.lcssa
  store ptr %i.ae, ptr %i.aq, align 8, !tbaa !112
  br label %_ZN13libraw_memmgr6mallocEm.exit

bb.f:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 4088 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !112
  %.not11.i.i = icmp eq ptr %i.as, null
  br i1 %.not11.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = tail call ptr @__cxa_allocate_exception(i64 4) #23 ; 2 uses
  store i32 11, ptr %i.at, align 16, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #24
  unreachable

_ZN13libraw_memmgr6mallocEm.exit:                 ; preds = %bb.b, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ae, ptr %i.au, align 8, !tbaa !132
  br i1 %i.ah, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN13libraw_memmgr6mallocEm.exit
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.x ; 6 uses
  switch i8 %i.b, label %.loopexit [
    i8 3, label %bb.j
    i8 2, label %bb.o
    i8 1, label %bb.t
  ]

bb.j:                                             ; preds = %bb.i
  store ptr %i.av, ptr %i.ae, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.h, ptr %i.aw, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.r, ptr %i.ax, align 4, !tbaa !269
  %.not209 = icmp eq i32 %i.r, 0
  br i1 %.not209, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.j
  %i.ay = add nsw i32 %i.n, -1                    ; 4 uses
  %.not210 = icmp eq i32 %i.h, 0
  br i1 %.not210, label %._crit_edge185, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph184, %._crit_edge.us
  %indvars.iv231 = phi i32 [ %indvars.iv.next232, %._crit_edge.us ], [ 0, %.lr.ph184 ] ; 2 uses
  %indvars.iv226 = phi i32 [ %indvars.iv.next227, %._crit_edge.us ], [ 1, %.lr.ph184 ] ; 2 uses
  %indvars.iv221 = phi i32 [ %indvars.iv.next222, %._crit_edge.us ], [ 2, %.lr.ph184 ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.us ], [ 3, %.lr.ph184 ] ; 2 uses
  %.0144182.us = phi i32 [ %i.cm, %._crit_edge.us ], [ 0, %.lr.ph184 ]
  %.0146181.us = phi ptr [ %i.cl, %._crit_edge.us ], [ %i.av, %.lr.ph184 ]
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.ay)
  %i.az = mul i32 %i.h, %smin
  %i.ba = sext i32 %i.az to i64
  %smin223 = tail call i32 @llvm.smin.i32(i32 %indvars.iv221, i32 %i.ay)
  %i.bb = mul i32 %i.h, %smin223
  %i.bc = sext i32 %i.bb to i64
  %smin228 = tail call i32 @llvm.smin.i32(i32 %indvars.iv226, i32 %i.ay)
  %i.bd = mul i32 %i.h, %smin228
  %i.be = sext i32 %i.bd to i64
  %smin233 = tail call i32 @llvm.smin.i32(i32 %indvars.iv231, i32 %i.ay)
  %i.bf = mul i32 %i.h, %smin233
  %i.bg = sext i32 %i.bf to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.n
  %indvars.iv234 = phi i64 [ %i.bg, %.lr.ph.us ], [ %indvars.iv.next235, %bb.n ] ; 2 uses
  %indvars.iv229 = phi i64 [ %i.be, %.lr.ph.us ], [ %indvars.iv.next230, %bb.n ] ; 2 uses
  %indvars.iv224 = phi i64 [ %i.bc, %.lr.ph.us ], [ %indvars.iv.next225, %bb.n ] ; 2 uses
  %indvars.iv219 = phi i64 [ %i.ba, %.lr.ph.us ], [ %indvars.iv.next220, %bb.n ] ; 2 uses
  %.0139180.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ck, %bb.n ]
  %.1147175.us = phi ptr [ %.0146181.us, %.lr.ph.us ], [ %i.cl, %bb.n ] ; 2 uses
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv234
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !24
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, 1
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv229
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !24
  %i.bl = add nsw i32 %i.bk, %i.bi
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv224
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bo = add nsw i32 %i.bl, %i.bn
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv219
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !24
  %i.br = add nsw i32 %i.bo, %i.bq                ; 2 uses
  %isneg.us = icmp slt i32 %i.br, 0
  %i.bs = select i1 %isneg.us, i32 3, i32 0
  %i.bt = add nsw i32 %i.bs, %i.br
  %i.bu = ashr i32 %i.bt, 2                       ; 4 uses
  %i.bv = sdiv i32 %i.bu, 6                       ; 2 uses
  %i.bw = srem i32 %i.bu, 6
  %i.bx = icmp sgt i32 %i.bu, 35
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr @q_step_tbl, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !24
  %i.cb = sub nsw i32 6, %i.bv
  %i.cc = ashr i32 %i.ca, %i.cb
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cd = urem i32 %i.bu, 6
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @q_step_tbl, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  %i.ch = add nuw nsw i32 %i.bv, 26
  %i.ci = and i32 %i.ch, 31
  %i.cj = shl i32 %i.cg, %i.ci
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge172.us = phi i32 [ %i.cc, %bb.l ], [ %i.cj, %bb.m ]
  store i32 %storemerge172.us, ptr %.1147175.us, align 4, !tbaa !24
  %i.ck = add nuw nsw i32 %.0139180.us, 1         ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1147175.us, i64 4 ; 3 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.h
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.k, !llvm.loop !263

._crit_edge.us:                                   ; preds = %bb.n
  %i.cm = add nuw nsw i32 %.0144182.us, 1         ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 4
  %indvars.iv.next222 = add nuw nsw i32 %indvars.iv221, 4
  %indvars.iv.next227 = add nuw nsw i32 %indvars.iv226, 4
  %indvars.iv.next232 = add nuw nsw i32 %indvars.iv231, 4
  %exitcond243.not = icmp eq i32 %i.cm, %i.r
  br i1 %exitcond243.not, label %._crit_edge185, label %.lr.ph.us, !llvm.loop !264

._crit_edge185:                                   ; preds = %._crit_edge.us, %.lr.ph184, %bb.j
  %.0146.lcssa = phi ptr [ %i.av, %bb.j ], [ %i.av, %.lr.ph184 ], [ %i.cl, %._crit_edge.us ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge185, %bb.i
  %.2 = phi ptr [ %.0146.lcssa, %._crit_edge185 ], [ %i.av, %bb.i ] ; 4 uses
  %.0145 = phi ptr [ %i.cn, %._crit_edge185 ], [ %i.ae, %bb.i ] ; 4 uses
  store ptr %.2, ptr %.0145, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %.0145, i64 8
end_hunk_0
