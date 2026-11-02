Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdarith?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@decode_mcu_DC_refine:bb.a
  %i.at = phi i32 [ %.pre34.i, %.thread.i ], [ %.pre.i, %.thread.thread38.i ], [ %i.aa, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.p, align 8, !tbaa !49
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.f, label %process_restart.exit, !llvm.loop !1

process_restart.exit:                             ; preds = %.thread.thread.i, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.ay, align 8, !tbaa !62
  %i.az = load i32, ptr %i.c, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %process_restart.exit, %bb.b
  %i.ba = phi i32 [ %i.az, %process_restart.exit ], [ %i.f, %bb.b ]
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.e, align 4, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !51
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = trunc i32 %i.bi to i16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.bk = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.bc)
  %.not14 = icmp eq i32 %i.bk, 0
  br i1 %.not14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !71
  %i.bo = or i16 %i.bn, %i.bj
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %bb.l, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.n, %bb.k
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu_AC_refine(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 24, ptr %i.n, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !55
  tail call void %i.o(ptr noundef nonnull %0) #3, !inline_history !0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !49
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %process_restart.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.pre33.i = load i32, ptr %i.t, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %.thread.thread.i, %.lr.ph.i
  %i.aa = phi i32 [ %.pre33.i, %.lr.ph.i ], [ %i.at, %.thread.thread.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.thread.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %.not28.i = icmp eq i32 %i.aa, 0
  br i1 %.not28.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !47
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread.thread38.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.v, align 4, !tbaa !50
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.thread.thread.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  store i32 0, ptr %i.am, align 4, !tbaa !45
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 0, ptr %i.an, align 4, !tbaa !45
  %.pre34.i = load i32, ptr %i.t, align 8, !tbaa !42 ; 2 uses
  %.not29.i = icmp eq i32 %.pre34.i, 0
  br i1 %.not29.i, label %.thread.thread38.i, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  %.pr.i = load i32, ptr %i.u, align 4, !tbaa !47
  %.not30.i = icmp eq i32 %.pr.i, 0
  br i1 %.not30.i, label %.thread.thread.i, label %.thread.thread38.i

.thread.thread38.i:                               ; preds = %.thread.i, %bb.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.as, i8 0, i64 256, i1 false)
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !42
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.thread38.i, %.thread.i, %bb.h
  %i.at = phi i32 [ %.pre34.i, %.thread.i ], [ %.pre.i, %.thread.thread38.i ], [ %i.aa, %bb.h ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.p, align 8, !tbaa !49
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %bb.f, label %process_restart.exit, !llvm.loop !1

process_restart.exit:                             ; preds = %.thread.thread.i, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.ay, align 8, !tbaa !62
  %i.az = load i32, ptr %i.c, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %process_restart.exit, %bb.b
  %i.ba = phi i32 [ %i.az, %process_restart.exit ], [ %i.f, %bb.b ]
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.e, align 4, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !62
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %1, align 8, !tbaa !70    ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !51 ; 3 uses
  %i.bm = shl nuw i32 1, %i.bl
  %i.bn = shl nsw i32 -1, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !48 ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %2 = zext nneg i32 %i.bp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !45
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !71
  %.not58 = icmp eq i16 %i.bv, 0
  br i1 %.not58, label %bb.m, label %._crit_edge.loopexit.split.loop.exit

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bw = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %._crit_edge.loopexit.split.loop.exit, %bb.l
  %.0.lcssa = phi i32 [ %i.bp, %bb.l ], [ %3, %._crit_edge.loopexit.split.loop.exit ], [ 0, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47 ; 2 uses
  %.not5978 = icmp sgt i32 %i.by, %i.bp
  br i1 %.not5978, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ca = sext i32 %i.bj to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = trunc i32 %i.bm to i16                  ; 2 uses
  %i.cd = shl i32 65535, %i.bl
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.cg = trunc i32 %i.bn to i16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph81, %bb.ab
  %.05279 = phi i32 [ %i.by, %.lr.ph81 ], [ %i.dm, %bb.ab ] ; 3 uses
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !60
  %i.ci = mul i32 %.05279, 3
  %i.cj = add i32 %i.ci, -3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = icmp sgt i32 %.05279, %.0.lcssa
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef %i.cl)
  %.not60 = icmp eq i32 %i.cn, 0
  br i1 %.not60, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = sext i32 %.05279 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.z, %bb.p
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.z ], [ %i.co, %bb.p ] ; 4 uses
  %.053 = phi ptr [ %i.df, %bb.z ], [ %i.cl, %bb.p ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.a
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !45
  %i.cr = sext i32 %i.cq to i64                   ; 3 uses
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !71
  %.not61 = icmp eq i16 %i.ct, 0
  br i1 %.not61, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.cr ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.cw = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cv)
  %.not65 = icmp eq i32 %i.cw, 0
  br i1 %.not65, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i16, ptr %i.cu, align 2, !tbaa !71 ; 3 uses
  %i.cy = icmp slt i16 %i.cx, 0
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = add i16 %i.cx, %i.ce
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !71
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.da = add i16 %i.cx, %i.cc
  store i16 %i.da, ptr %i.cu, align 2, !tbaa !71
  br label %bb.ab

bb.v:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %.053, i64 1
  %i.dc = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.db)
  %.not62 = icmp eq i32 %i.dc, 0
  br i1 %.not62, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.cr ; 2 uses
  %i.de = tail call fastcc i32 @arith_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.cf)
  %.not64 = icmp eq i32 %i.de, 0
  br i1 %.not64, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i16 %i.cg, ptr %i.dd, align 2, !tbaa !71
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  store i16 %i.cc, ptr %i.dd, align 2, !tbaa !71
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.053, i64 3
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1
  %i.dg = load i32, ptr %i.bo, align 8, !tbaa !48
  %i.dh = sext i32 %i.dg to i64
  %.not63 = icmp slt i64 %indvars.iv.a, %i.dh
  br i1 %.not63, label %bb.q, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %0, align 8, !tbaa !52    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 126, ptr %i.dj, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !58
  tail call void %i.dl(ptr noundef nonnull %0, i32 noundef -1) #3
  store i32 -1, ptr %i.bc, align 8, !tbaa !62
  br label %.loopexit

bb.ab:                                            ; preds = %bb.t, %bb.u, %bb.r, %bb.y, %bb.x
  %.187 = trunc i64 %indvars.iv.a to i32          ; 2 uses
  %i.dm = add nsw i32 %.187, 1
  %i.dn = load i32, ptr %i.bo, align 8, !tbaa !48
  %.not59.not = icmp sgt i32 %i.dn, %.187
  br i1 %.not59.not, label %bb.n, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %bb.o, %bb.ab, %._crit_edge, %bb.k, %bb.aa
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0) #3, !inline_history !0
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 24, ptr %i.n, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !55
  tail call void %i.o(ptr noundef nonnull %0) #3, !inline_history !0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !49
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %process_restart.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.pre33.i = load i32, ptr %i.t, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %.thread.thread.i, %.lr.ph.i
  %i.aa = phi i32 [ %.pre33.i, %.lr.ph.i ], [ %i.at, %.thread.thread.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.thread.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %.not28.i = icmp eq i32 %i.aa, 0
  br i1 %.not28.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !47
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread.thread38.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.v, align 4, !tbaa !50
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.thread.thread.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  store i32 0, ptr %i.am, align 4, !tbaa !45
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store i32 0, ptr %i.an, align 4, !tbaa !45
  %.pre34.i = load i32, ptr %i.t, align 8, !tbaa !42 ; 2 uses
  %.not29.i = icmp eq i32 %.pre34.i, 0
  br i1 %.not29.i, label %.thread.thread38.i, label %.thread.i
end_hunk_0
