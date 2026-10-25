Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcarith?download=true
inline.NumInlined: 23
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@encode_mcu_DC_first:bb.a

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_first(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  tail call fastcc void @emit_restart(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !57
  %i.k = load i32, ptr %i.h, align 4, !tbaa !59
  %i.l = add nsw i32 %i.k, 1
  %i.m = and i32 %i.l, 7
  store i32 %i.m, ptr %i.h, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.e, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.y = zext nneg i32 %i.v to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !70 ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = icmp sgt i16 %i.ad, -1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !71
  %i.ah = lshr i32 %i.ae, %i.ag
  %.not102 = icmp eq i32 %i.ah, 0
  br i1 %.not102, label %bb.i, label %._crit_edge.loopexit.split.loop.exit177

bb.h:                                             ; preds = %bb.f
  %i.ai = sub nsw i32 0, %i.ae
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !71
  %i.ak = lshr i32 %i.ai, %i.aj
  %.not101 = icmp eq i32 %i.ak, 0
  br i1 %.not101, label %bb.i, label %._crit_edge.loopexit.split.loop.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp sgt i64 %indvars.iv, 1
  br i1 %i.al, label %bb.f, label %._crit_edge, !llvm.loop !84

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.h
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit177:          ; preds = %bb.g
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit, %._crit_edge.loopexit.split.loop.exit177, %bb.e
  %.085.lcssa = phi i32 [ %i.v, %bb.e ], [ %i.an, %._crit_edge.loopexit.split.loop.exit177 ], [ %i.am, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !42 ; 3 uses
  %.not103134 = icmp sgt i32 %i.ap, %.085.lcssa
  br i1 %.not103134, label %._crit_edge138, label %.lr.ph137

.lr.ph137:                                        ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ar = sext i32 %i.t to i64                    ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ar
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph137, %._crit_edge133
  %.086135 = phi i32 [ %i.ap, %.lr.ph137 ], [ %i.ck, %._crit_edge133 ] ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !48
  %i.ax = mul i32 %.086135, 3
  %i.ay = add i32 %i.ax, -3
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 2 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef %i.ba, i32 noundef 0)
  %i.bb = sext i32 %.086135 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %bb.n ], [ %i.bb, %bb.j ] ; 3 uses
  %.088 = phi ptr [ %i.bp, %bb.n ], [ %i.ba, %bb.j ] ; 4 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv149
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !49
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !70 ; 2 uses
  %i.bh = sext i16 %i.bg to i32                   ; 2 uses
  %i.bi = icmp sgt i16 %i.bg, -1
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr %i.w, align 8, !tbaa !71
  %i.bk = lshr i32 %i.bh, %i.bj                   ; 2 uses
  %.not106 = icmp eq i32 %i.bk, 0
  br i1 %.not106, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bl = sub nsw i32 0, %i.bh
  %i.bm = load i32, ptr %i.w, align 8, !tbaa !71
  %i.bn = lshr i32 %i.bl, %i.bm                   ; 2 uses
  %.not105 = icmp eq i32 %i.bn, 0
  br i1 %.not105, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.088, i64 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.bo, i32 noundef 0)
  %i.bp = getelementptr inbounds nuw i8, ptr %.088, i64 3
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1
  br label %bb.k

bb.o:                                             ; preds = %bb.m, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ 1, %bb.m ]
  %.084 = phi i32 [ %i.bk, %bb.l ], [ %i.bn, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.088, i64 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, i32 noundef 1)
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.at, i32 noundef %.sink)
  %.187141 = trunc i64 %indvars.iv149 to i32      ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.088, i64 2 ; 3 uses
  %i.bs = add nsw i32 %.084, -1                   ; 4 uses
  %.not107 = icmp eq i32 %i.bs, 0
  br i1 %.not107, label %.loopexit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef 1)
  %.not108 = icmp eq i32 %i.bs, 1
  br i1 %.not108, label %.loopexit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef 1)
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !48
  %i.bu = load i8, ptr %i.av, align 1, !tbaa !33
  %i.bv = zext i8 %i.bu to i32
  %.not109 = icmp sgt i32 %.187141, %i.bv
  %i.bw = select i1 %.not109, i64 217, i64 189
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 3 uses
  %i.by = lshr i32 %i.bs, 2                       ; 2 uses
  %.not110123 = icmp eq i32 %i.by, 0
  br i1 %.not110123, label %.loopexit.thread164, label %.lr.ph127

.loopexit.thread164:                              ; preds = %bb.q
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, i32 noundef 0)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  br label %.lr.ph132.preheader

.lr.ph127:                                        ; preds = %bb.q, %.lr.ph127
  %i.ca = phi i32 [ %i.cd, %.lr.ph127 ], [ %i.by, %bb.q ]
  %.0125 = phi i32 [ %i.cb, %.lr.ph127 ], [ 2, %bb.q ]
  %.189124 = phi ptr [ %i.cc, %.lr.ph127 ], [ %i.bx, %bb.q ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.189124, i32 noundef 1)
  %i.cb = shl i32 %.0125, 1                       ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.189124, i64 1 ; 2 uses
  %i.cd = lshr i32 %i.ca, 1                       ; 2 uses
  %.not110 = icmp eq i32 %i.cd, 0
  br i1 %.not110, label %.loopexit, label %.lr.ph127, !llvm.loop !85

.loopexit.thread:                                 ; preds = %bb.o, %bb.p
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef 0)
  br label %._crit_edge133

.loopexit:                                        ; preds = %.lr.ph127
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.cc, i32 noundef 0)
  %i.ce = getelementptr inbounds nuw i8, ptr %.189124, i64 15
  %.not111130 = icmp eq i32 %i.cb, 0
  br i1 %.not111130, label %._crit_edge133, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.loopexit.thread164, %.loopexit
  %i.cf = phi ptr [ %i.bz, %.loopexit.thread164 ], [ %i.ce, %.loopexit ]
  %.1168 = phi i32 [ 2, %.loopexit.thread164 ], [ %i.cb, %.loopexit ]
  %2 = ashr exact i32 %.1168, 1
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %i.cg = phi i32 [ %i.cj, %.lr.ph132 ], [ %2, %.lr.ph132.preheader ] ; 2 uses
  %i.ch = and i32 %i.cg, %i.bs
  %.not112 = icmp ne i32 %i.ch, 0
  %i.ci = zext i1 %.not112 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, i32 noundef %i.ci)
  %i.cj = ashr i32 %i.cg, 1                       ; 2 uses
  %.not111 = icmp eq i32 %i.cj, 0
  br i1 %.not111, label %._crit_edge133, label %.lr.ph132, !llvm.loop !86

._crit_edge133:                                   ; preds = %.lr.ph132, %.loopexit.thread, %.loopexit
  %i.ck = add nsw i32 %.187141, 1                 ; 2 uses
  %.not103.not = icmp sgt i32 %.085.lcssa, %.187141
  br i1 %.not103.not, label %bb.j, label %._crit_edge138.loopexit, !llvm.loop !87

._crit_edge138.loopexit:                          ; preds = %._crit_edge133
  %.pre = load i32, ptr %i.u, align 8, !tbaa !50
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %._crit_edge
  %i.cl = phi i32 [ %i.v, %._crit_edge ], [ %.pre, %._crit_edge138.loopexit ]
  %.086.lcssa = phi i32 [ %i.ap, %._crit_edge ], [ %i.ck, %._crit_edge138.loopexit ] ; 2 uses
  %.not104 = icmp sgt i32 %.086.lcssa, %i.cl
  br i1 %.not104, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge138
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cn = sext i32 %i.t to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cq = mul i32 %.086.lcssa, 3
  %i.cr = add i32 %i.cq, -3
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef %i.ct, i32 noundef 1)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge138
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_DC_refine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  tail call fastcc void @emit_restart(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !57
  %i.k = load i32, ptr %i.h, align 4, !tbaa !59
  %i.l = add nsw i32 %i.k, 1
  %i.m = and i32 %i.l, 7
  store i32 %i.m, ptr %i.h, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.e, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.r = load i32, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !67
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.x = load i16, ptr %i.w, align 2, !tbaa !70
  %i.y = sext i16 %i.x to i32
  %i.z = lshr i32 %i.y, %i.r
  %i.aa = and i32 %i.z, 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef %i.aa)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !67
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu_AC_refine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  tail call fastcc void @emit_restart(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !57
  %i.k = load i32, ptr %i.h, align 4, !tbaa !59
  %i.l = add nsw i32 %i.k, 1
  %i.m = and i32 %i.l, 7
  store i32 %i.m, ptr %i.h, align 4, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.e, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !69     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge115

.lr.ph:                                           ; preds = %bb.e
  %i.y = zext nneg i32 %i.v to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !70 ; 2 uses
  %i.ae = sext i16 %i.ad to i32                   ; 2 uses
  %i.af = icmp sgt i16 %i.ad, -1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !71
  %i.ah = lshr i32 %i.ae, %i.ag
  %.not88 = icmp eq i32 %i.ah, 0
  br i1 %.not88, label %bb.i, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.ai = sub nsw i32 0, %i.ae
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !71
  %i.ak = lshr i32 %i.ai, %i.aj
  %.not87 = icmp eq i32 %i.ak, 0
  br i1 %.not87, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp sgt i64 %indvars.iv, 1
  br i1 %i.al, label %bb.f, label %._crit_edge115, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.am = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.ao = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ao, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %._crit_edge, %bb.l
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %bb.l ], [ %indvars.iv, %._crit_edge ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv139
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !70 ; 2 uses
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = icmp sgt i16 %i.at, -1
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph114
  %i.aw = load i32, ptr %i.an, align 4, !tbaa !41
  %i.ax = lshr i32 %i.au, %i.aw
  %.not90 = icmp eq i32 %i.ax, 0
  br i1 %.not90, label %bb.l, label %._crit_edge115.loopexit.split.loop.exit164
end_hunk_0
begin_hunk_1_@encode_mcu:bb.a
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.1145175, i32 noundef 1)
  %i.bh = shl i32 %.0176, 1                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1145175, i64 1 ; 2 uses
  %i.bj = lshr i32 %i.bg, 1                       ; 2 uses
  %.not160 = icmp eq i32 %i.bj, 0
  br i1 %.not160, label %.loopexit172, label %.lr.ph, !llvm.loop !92

.loopexit172:                                     ; preds = %.lr.ph, %bb.k, %bb.j
  %.2146 = phi ptr [ %i.bb, %bb.j ], [ %i.be, %bb.k ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.j ], [ 1, %bb.k ], [ %i.bh, %.lr.ph ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.2146, i32 noundef 0)
  %i.bk = getelementptr inbounds i8, ptr %i.x, i64 %i.al
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !33
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp slt i32 %.1, %i.bp
  br i1 %i.bq, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.loopexit172
  %i.br = getelementptr inbounds i8, ptr %i.y, i64 %i.al
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %.1, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.bz = add nsw i32 %i.by, 8
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit172, %bb.m
  %.sink251.a = phi i32 [ %i.bz, %bb.m ], [ 0, %.loopexit172 ]
  store i32 %.sink251.a, ptr %i.ao, align 4, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.2146, i64 14
  %i.cb = ashr i32 %.1, 1                         ; 2 uses
  %.not161178 = icmp eq i32 %i.cb, 0
  br i1 %.not161178, label %.loopexit171, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.n, %.lr.ph179
  %i.cc = phi i32 [ %i.cf, %.lr.ph179 ], [ %i.cb, %bb.n ] ; 2 uses
  %i.cd = and i32 %i.cc, %i.bc
  %.not162 = icmp ne i32 %i.cd, 0
  %i.ce = zext i1 %.not162 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, i32 noundef %i.ce)
  %i.cf = ashr i32 %i.cc, 1                       ; 2 uses
  %.not161 = icmp eq i32 %i.cf, 0
  br i1 %.not161, label %.loopexit171, label %.lr.ph179, !llvm.loop !93

.loopexit171:                                     ; preds = %.lr.ph179, %bb.n, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.loopexit171
  %.0140180 = phi i32 [ 63, %.loopexit171 ], [ %i.dc, %bb.r ] ; 6 uses
  %i.ci = zext nneg i32 %.0140180 to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !49
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !70
  %.not163 = icmp eq i16 %i.cn, 0
  br i1 %.not163, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.co = add nsw i32 %.0140180, -1               ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !49
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !70
  %.not163.1 = icmp eq i16 %i.cu, 0
  br i1 %.not163.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cv = add nsw i32 %.0140180, -2               ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !49
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !70
  %.not163.2 = icmp eq i16 %i.db, 0
  br i1 %.not163.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = add nsw i32 %.0140180, -3
  %i.dd = icmp sgt i32 %.0140180, 3
  br i1 %i.dd, label %bb.o, label %._crit_edge204.thread, !llvm.loop !94

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0140180.lcssa = phi i32 [ %.0140180, %bb.o ], [ %i.co, %bb.p ], [ %i.cv, %bb.q ] ; 2 uses
  %.not164200 = icmp slt i32 %.0140180.lcssa, 1
  br i1 %.not164200, label %._crit_edge204.thread, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.s
  %i.de = sext i32 %i.ch to i64                   ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.ab, i64 %i.de
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph203, %._crit_edge199
  %.0141201 = phi i32 [ 1, %.lr.ph203 ], [ %i.ey, %._crit_edge199 ] ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.di = mul i32 %.0141201, 3
  %i.dj = add i32 %i.di, -3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.dl, i32 noundef 0)
  %i.dm = sext i32 %.0141201 to i64               ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !49
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !70 ; 2 uses
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.t, %.lr.ph184
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph184 ], [ %i.dm, %bb.t ]
  %.3147182 = phi ptr [ %i.du, %.lr.ph184 ], [ %i.dl, %bb.t ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3147182, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dt, i32 noundef 0)
  %i.du = getelementptr inbounds nuw i8, ptr %.3147182, i64 3 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !49
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !70 ; 2 uses
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %.lr.ph184, label %._crit_edge.loopexit, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %.lr.ph184
  %i.eb = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %.lcssa181 = phi i16 [ %i.dr, %bb.t ], [ %i.dz, %._crit_edge.loopexit ] ; 2 uses
  %.3147.lcssa = phi ptr [ %i.dl, %bb.t ], [ %i.du, %._crit_edge.loopexit ] ; 2 uses
  %.1142.lcssa = phi i32 [ %.0141201, %bb.t ], [ %i.eb, %._crit_edge.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ec, i32 noundef 1)
  %i.ed = icmp slt i16 %.lcssa181, 1
  %.sink252 = zext i1 %i.ed to i32
  %i.ee = tail call i16 @llvm.abs.i16(i16 %.lcssa181, i1 false)
  %.1139 = zext i16 %i.ee to i32
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef %.sink252)
  %i.ef = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 2 ; 3 uses
  %i.eg = add nsw i32 %.1139, -1                  ; 4 uses
  %.not165 = icmp eq i32 %i.eg, 0
  br i1 %.not165, label %.loopexit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 1)
  %.not166 = icmp eq i32 %i.eg, 1
  br i1 %.not166, label %.loopexit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 1)
  %i.eh = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.ei = load i8, ptr %i.dg, align 1, !tbaa !33
  %i.ej = zext i8 %i.ei to i32
  %.not167 = icmp sgt i32 %.1142.lcssa, %i.ej
  %i.ek = select i1 %.not167, i64 217, i64 189
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek ; 3 uses
  %i.em = ashr i32 %i.eg, 2                       ; 2 uses
  %.not168189 = icmp eq i32 %i.em, 0
  br i1 %.not168189, label %.loopexit.thread235, label %.lr.ph193

.loopexit.thread235:                              ; preds = %bb.v
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.el, i32 noundef 0)
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 14
  br label %.lr.ph198.preheader

.lr.ph193:                                        ; preds = %bb.v, %.lr.ph193
  %i.eo = phi i32 [ %i.er, %.lr.ph193 ], [ %i.em, %bb.v ]
  %.3191 = phi i32 [ %i.ep, %.lr.ph193 ], [ 2, %bb.v ]
  %.4148190 = phi ptr [ %i.eq, %.lr.ph193 ], [ %i.el, %bb.v ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.4148190, i32 noundef 1)
  %i.ep = shl i32 %.3191, 1                       ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.4148190, i64 1 ; 2 uses
  %i.er = ashr i32 %i.eo, 1                       ; 2 uses
  %.not168 = icmp eq i32 %i.er, 0
  br i1 %.not168, label %.loopexit, label %.lr.ph193, !llvm.loop !96

.loopexit.thread:                                 ; preds = %._crit_edge, %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef 0)
  br label %._crit_edge199

.loopexit:                                        ; preds = %.lr.ph193
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.eq, i32 noundef 0)
  %i.es = getelementptr inbounds nuw i8, ptr %.4148190, i64 15
  %.not169196 = icmp eq i32 %i.ep, 0
  br i1 %.not169196, label %._crit_edge199, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %.loopexit.thread235, %.loopexit
  %i.et = phi ptr [ %i.en, %.loopexit.thread235 ], [ %i.es, %.loopexit ]
  %.4239 = phi i32 [ 2, %.loopexit.thread235 ], [ %i.ep, %.loopexit ]
  %2 = ashr exact i32 %.4239, 1
  br label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %i.eu = phi i32 [ %i.ex, %.lr.ph198 ], [ %2, %.lr.ph198.preheader ] ; 2 uses
  %i.ev = and i32 %i.eu, %i.eg
  %.not170 = icmp ne i32 %i.ev, 0
  %i.ew = zext i1 %.not170 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.et, i32 noundef %i.ew)
  %i.ex = ashr i32 %i.eu, 1                       ; 2 uses
  %.not169 = icmp eq i32 %i.ex, 0
  br i1 %.not169, label %._crit_edge199, label %.lr.ph198, !llvm.loop !97

._crit_edge199:                                   ; preds = %.lr.ph198, %.loopexit.thread, %.loopexit
  %i.ey = add nsw i32 %.1142.lcssa, 1             ; 2 uses
  %.not164.not = icmp slt i32 %.1142.lcssa, %.0140180.lcssa
  br i1 %.not164.not, label %bb.t, label %._crit_edge204, !llvm.loop !98

._crit_edge204:                                   ; preds = %._crit_edge199
  %i.ez = icmp slt i32 %.1142.lcssa, 63
  br i1 %i.ez, label %._crit_edge204.thread, label %bb.w

._crit_edge204.thread:                            ; preds = %bb.r, %bb.s, %._crit_edge204
  %.0141.lcssa241 = phi i32 [ %i.ey, %._crit_edge204 ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.fa = sext i32 %i.ch to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !48
  %i.fd = mul i32 %.0141.lcssa241, 3
  %i.fe = add i32 %i.fd, -3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.fg, i32 noundef 1)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge204, %._crit_edge204.thread
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.fh = load i32, ptr %i.p, align 8, !tbaa !67
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next219, %i.fi
  br i1 %i.fj, label %bb.f, label %._crit_edge209, !llvm.loop !99

._crit_edge209:                                   ; preds = %bb.w, %bb.e
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_restart(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 9 uses
  tail call void @finish_pass(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !63
  store i8 -1, ptr %i.e, align 1, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !64
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %emit_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %emit_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 24, ptr %i.o, align 8, !tbaa !38
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !39
  tail call void %i.p(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit

emit_byte.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !61   ; 4 uses
  %i.r = trunc i32 %1 to i8
  %i.s = add i8 %i.r, -48
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.q, align 8, !tbaa !63
  store i8 %i.s, ptr %i.t, align 1, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !64
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %emit_byte.exit29

bb.d:                                             ; preds = %emit_byte.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i28 = icmp eq i32 %i.ab, 0
  br i1 %.not.i28, label %bb.e, label %emit_byte.exit29

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 24, ptr %i.ad, align 8, !tbaa !38
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.ae(ptr noundef nonnull %0) #3, !inline_history !0
  br label %emit_byte.exit29

emit_byte.exit29:                                 ; preds = %emit_byte.exit, %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_byte.exit29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %.pre32 = load i32, ptr %i.aj, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %i.ar = phi i32 [ %.pre32, %.lr.ph ], [ %i.bo, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = icmp eq i32 %i.ar, 0
  br i1 %i.au, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !41
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 0, ptr %i.bf, align 4, !tbaa !49
  %.pre33 = load i32, ptr %i.aj, align 4, !tbaa !40 ; 2 uses
  %i.bg = icmp eq i32 %.pre33, 0
  br i1 %i.bg, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i
  %i.bh = phi i32 [ %.pre33, %bb.i ], [ %i.ar, %bb.h ], [ %i.ar, %bb.g ]
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !50
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.bn, i8 0, i64 256, i1 false)
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bo = phi i32 [ %i.bh, %.thread ], [ %.pre, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr %i.af, align 4, !tbaa !43
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %bb.f, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.k, %emit_byte.exit29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.bs, align 8, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 65536, ptr %i.bt, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  store i32 11, ptr %i.bv, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 -1, ptr %i.bw, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith_encode(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
end_hunk_1
