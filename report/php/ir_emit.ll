Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_emit?download=true
inline.NumInlined: 520
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ir_emit_epilogue:bb.a
  br i1 %.not69, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 2315, i32 noundef 5, i32 noundef 4, i32 noundef 5)
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !110
  %i.bu = add nsw i32 %i.bt, %i.br                ; 2 uses
  %.not70 = icmp eq i32 %i.bu, 0
  br i1 %.not70, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !158
  %.not71 = icmp eq i32 %i.bw, 0
  br i1 %.not71, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.c, i32 noundef 2303, i32 noundef 4, i32 noundef %i.bu)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ar, %bb.as, %bb.au, %bb.ax, %bb.aw, %bb.av
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ir_emit_arguments(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, i8 noundef signext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !22   ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 5 uses
  %i.k = icmp ult i16 %i.i, 3
  br i1 %i.k, label %bb.eb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i8 %5, -1
  %spec.store.select = select i1 %i.l, i8 0, i8 %5 ; 7 uses
  %i.m = load i8, ptr %2, align 8, !tbaa !22      ; 2 uses
  %i.n = icmp eq i8 %i.m, 74
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101
  %i.q = and i32 %i.p, 8192
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %4, align 8                 ; 2 uses
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i8 %i.r, 2
  %.not766 = icmp eq i8 %i.t, 0
  br i1 %.not766, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.u = call fastcc i32 @ir_call_used_stack(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %i.a)
  br label %bb.k

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.v = call fastcc i32 @ir_call_used_stack(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %i.a) ; 2 uses
  %.not767 = icmp ne i8 %i.f, 0
  %i.w = icmp eq i8 %i.m, 75
  %or.cond842 = and i1 %.not767, %i.w
  %i.x = icmp eq i32 %i.v, %i.g
  %i.y = select i1 %or.cond842, i1 %i.x, i1 false
  %.0666 = select i1 %i.y, i32 0, i32 %i.v        ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !135 ; 2 uses
  %.not768 = icmp eq i32 %i.aa, 0
  %.not769 = icmp sgt i32 %.0666, %i.aa
  %or.cond811 = select i1 %.not768, i1 true, i1 %.not769
  br i1 %or.cond811, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %4, align 8
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = add nsw i32 %.0666, 15
  %i.ae = and i32 %i.ad, -16                      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !110
  %i.ah = add nsw i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !110
  %.not770 = icmp eq i32 %i.ae, 0
  br i1 %.not770, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 2275, i32 noundef 4, i32 noundef %i.ae)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.e, %bb.f
  %.1667 = phi i32 [ 0, %bb.h ], [ 0, %bb.e ], [ %i.u, %bb.f ], [ %.0666, %bb.j ], [ %.0666, %bb.i ] ; 5 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !63
  %.not771 = icmp eq i32 %i.ai, 0
  br i1 %.not771, label %.loopexit848, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = add nuw nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ak to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.0658851 = phi i32 [ 0, %.lr.ph ], [ %.1659, %bb.s ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %i.an = load ptr, ptr %0, align 8, !tbaa !42
  %i.ao = sext i32 %i.am to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ao ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !22
  %i.ar = icmp eq i8 %i.aq, 66
  br i1 %i.ar, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !125
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 8) ; 2 uses
  %i.ay = add i32 %.0658851, -1
  %i.az = add i32 %i.ay, %i.au
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = sub nsw i32 0, %i.ax
  %i.bc = and i32 %i.ba, %i.bb                    ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ao
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !22  ; 4 uses
  %i.bg = sub nsw i32 %.1667, %i.bc
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28080, i32 noundef %i.bg)
  %.not809 = icmp eq i8 %i.bf, -1
  br i1 %.not809, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not810 = icmp ult i8 %i.bf, 64
  br i1 %.not810, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = and i8 %i.bf, 63                        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef 6, i8 noundef signext %i.bh, i32 noundef %i.bj)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0690 = phi i8 [ %i.bh, %bb.o ], [ %i.bf, %bb.n ]
  %i.bk = zext nneg i8 %.0690 to i32
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28087, i32 noundef %i.bk)
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef 6, i8 noundef signext 6, i32 noundef %i.bm)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bn = sext i32 %i.au to i64
  tail call fastcc void @ir_emit_load_imm_int(ptr noundef nonnull %0, i32 noundef 6, i8 noundef signext 1, i64 noundef %i.bn)
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28093)
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r
  %.1659 = phi i32 [ %i.bc, %bb.r ], [ %.0658851, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit848, label %bb.l, !llvm.loop !315

.loopexit848:                                     ; preds = %bb.s, %bb.k
  %i.bo = add nsw i32 %i.j, -2
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = tail call noalias ptr @_emalloc(i64 noundef %i.bq) #25 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bt = sext i32 %1 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 24
  %umax879 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 3)
  %i.bz = add nuw nsw i32 %umax879, 1
  %wide.trip.count880 = zext nneg i32 %i.bz to i64
  br label %bb.t

bb.t:                                             ; preds = %.loopexit848, %bb.ay
  %indvars.iv877 = phi i64 [ 3, %.loopexit848 ], [ %indvars.iv.next878, %bb.ay ] ; 3 uses
  %.0660858 = phi i1 [ false, %.loopexit848 ], [ %.2662, %bb.ay ] ; 5 uses
  %.0663857 = phi i32 [ %i.g, %.loopexit848 ], [ %.1664, %bb.ay ] ; 8 uses
  %.0669856 = phi i32 [ 0, %.loopexit848 ], [ %.1670, %bb.ay ] ; 8 uses
  %.0671855 = phi i32 [ 0, %.loopexit848 ], [ %.3674, %bb.ay ] ; 5 uses
  %.0677854 = phi i32 [ 0, %.loopexit848 ], [ %.2679, %bb.ay ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv877
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !63 ; 4 uses
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !125 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.bt
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv877
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22  ; 7 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !42
  %i.ch = sext i32 %i.cb to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ch ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !22  ; 3 uses
  %i.cl = zext i8 %i.ck to i32                    ; 4 uses
  %i.cm = icmp ult i8 %i.ck, 12                   ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.cn = load i8, ptr %i.ci, align 8, !tbaa !22
  %i.co = icmp eq i8 %i.cn, 66                    ; 2 uses
  br i1 %i.co, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.cp = load i8, ptr %4, align 8
  %i.cq = and i8 %i.cp, 2
  %.not797 = icmp eq i8 %i.cq, 0
  br i1 %.not797, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !22 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 8) ; 2 uses
  %i.cw = add i32 %.0663857, -1
  %i.cx = add i32 %i.cw, %i.cv
  %i.cy = sub nsw i32 0, %i.cv
  %i.cz = and i32 %i.cx, %i.cy                    ; 3 uses
  %.not805 = icmp eq i32 %i.cs, 0
  br i1 %.not805, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ch
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22  ; 4 uses
  %.not806 = icmp eq i8 %i.dc, -1
  br i1 %.not806, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not807 = icmp ult i8 %i.dc, 64
  br i1 %.not807, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = and i8 %i.dc, 63                        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !22
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef 6, i8 noundef signext %i.dd, i32 noundef %i.df)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1691 = phi i8 [ %i.dd, %bb.z ], [ %i.dc, %bb.y ] ; 2 uses
  %.not808 = icmp eq i8 %.1691, 6
  br i1 %.not808, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = zext nneg i8 %.1691 to i32
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28087, i32 noundef %i.dg)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef 6, i8 noundef signext 6, i32 noundef %i.di)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dj = icmp eq i32 %i.cz, 0
  br i1 %i.dj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28097)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28080, i32 noundef %i.cz)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28101, i32 noundef %i.cs)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.w
  %i.dk = add i32 %i.cs, 7
  %i.dl = add i32 %i.dk, %i.cz
  %i.dm = and i32 %i.dl, -8
  br label %bb.ay

bb.ai:                                            ; preds = %bb.v, %bb.u
  %i.dn = load i8, ptr %i.bw, align 2, !tbaa !92
  %i.do = zext i8 %i.dn to i32
  %i.dp = icmp slt i32 %.0677854, %i.do
  br i1 %i.dp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load ptr, ptr %i.bx, align 8, !tbaa !93
  %i.dr = sext i32 %.0677854 to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.0684 = phi i8 [ %i.dt, %bb.aj ], [ -1, %bb.ai ]
  %i.du = add nsw i32 %.0677854, 1                ; 2 uses
  %i.dv = load i8, ptr %4, align 8                ; 2 uses
  %i.dw = lshr i8 %i.dv, 3
  %i.dx = and i8 %i.dw, 1
  %i.dy = zext nneg i8 %i.dx to i32
  %spec.select = add nsw i32 %.0671855, %i.dy     ; 2 uses
  %i.dz = and i8 %i.dv, 2
  %.not799 = icmp eq i8 %i.dz, 0
  %or.cond843 = select i1 %i.co, i1 %.not799, i1 false
  br i1 %or.cond843, label %bb.ay, label %bb.ao

bb.al:                                            ; preds = %bb.t
  %i.ea = load i8, ptr %i.bu, align 1, !tbaa !94
  %i.eb = zext i8 %i.ea to i32
  %i.ec = icmp slt i32 %.0671855, %i.eb
  br i1 %i.ec, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ed = load ptr, ptr %i.bv, align 8, !tbaa !95
  %i.ee = sext i32 %.0671855 to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !22
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.1685 = phi i8 [ %i.eg, %bb.am ], [ -1, %bb.al ]
  %i.eh = add nsw i32 %.0671855, 1
  %i.ei = load i8, ptr %4, align 8
  %i.ej = lshr i8 %i.ei, 3
  %i.ek = and i8 %i.ej, 1
  %i.el = zext nneg i8 %i.ek to i32
  %spec.select812 = add nsw i32 %.0677854, %i.el
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.2686 = phi i8 [ %.1685, %bb.an ], [ %.0684, %bb.ak ] ; 3 uses
  %.1678 = phi i32 [ %spec.select812, %bb.an ], [ %i.du, %bb.ak ] ; 5 uses
  %.2673 = phi i32 [ %i.eh, %bb.an ], [ %spec.select, %bb.ak ] ; 5 uses
  %.not800 = icmp eq i8 %.2686, -1
  br i1 %.not800, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.em = icmp slt i32 %i.cb, 0
  %i.en = icmp eq i8 %i.cf, -1
  %or.cond = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not802 = icmp ult i8 %i.cf, 64
  br i1 %.not802, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i32, ptr %i.by, align 8, !tbaa !319
  %i.ep = and i8 %i.cf, 63                        ; 3 uses
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = shl nuw i32 1, %i.eq
  %i.es = and i32 %i.eo, %i.er
  %.not803 = icmp eq i32 %i.es, 0
  br i1 %.not803, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef %i.cl, i8 noundef signext %i.ep, i32 noundef %i.cb)
  br label %.critedge

.critedge:                                        ; preds = %bb.aq, %bb.as
  %.2692 = phi i8 [ %i.ep, %bb.as ], [ %i.cf, %bb.aq ] ; 2 uses
  %.not804 = icmp eq i8 %.2692, %.2686
  br i1 %.not804, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %.critedge
  %i.et = sext i32 %.0669856 to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.et ; 3 uses
  store i32 %i.cl, ptr %i.eu, align 4, !tbaa !162
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i8 %.2692, ptr %i.ev, align 4, !tbaa !163
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 5
  store i8 %.2686, ptr %i.ew, align 1, !tbaa !164
  %i.ex = add nsw i32 %.0669856, 1
  br label %bb.ay

bb.au:                                            ; preds = %bb.ao
  %i.ey = icmp sgt i32 %i.cb, -1
  %.not801 = icmp ult i8 %i.cf, 64
  %or.cond813 = select i1 %i.ey, i1 %.not801, i1 false
  br i1 %or.cond813, label %bb.av, label %ir_emit_store_mem.exit

bb.av:                                            ; preds = %bb.au
  %i.ez = zext i32 %.0663857 to i64
  %i.fa = or disjoint i64 %i.ez, 561867621662720  ; 2 uses
  br i1 %i.cm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val.i, i32 noundef %i.cl, i64 noundef %i.fa, i8 noundef signext %i.cf)
  br label %ir_emit_store_mem.exit

bb.ax:                                            ; preds = %bb.av
  tail call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef %i.cl, i64 noundef %i.fa, i8 noundef signext %i.cf)
  br label %ir_emit_store_mem.exit

ir_emit_store_mem.exit:                           ; preds = %bb.ax, %bb.aw, %bb.au
  %.1661 = phi i1 [ true, %bb.au ], [ %.0660858, %bb.aw ], [ %.0660858, %bb.ax ]
  %i.fb = zext i8 %i.ck to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !22
  %narrow = tail call i8 @llvm.umax.i8(i8 %i.fd, i8 8)
  %spec.select814 = zext i8 %narrow to i32
  %i.fe = add i32 %.0663857, %spec.select814
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ak, %bb.ap, %bb.ar, %ir_emit_store_mem.exit, %.critedge, %bb.at, %bb.ah
  %.2679 = phi i32 [ %.0677854, %bb.ah ], [ %i.du, %bb.ak ], [ %.1678, %bb.at ], [ %.1678, %.critedge ], [ %.1678, %ir_emit_store_mem.exit ], [ %.1678, %bb.ar ], [ %.1678, %bb.ap ]
  %.3674 = phi i32 [ %.0671855, %bb.ah ], [ %spec.select, %bb.ak ], [ %.2673, %bb.at ], [ %.2673, %.critedge ], [ %.2673, %ir_emit_store_mem.exit ], [ %.2673, %bb.ar ], [ %.2673, %bb.ap ] ; 2 uses
  %.1670 = phi i32 [ %.0669856, %bb.ah ], [ %.0669856, %bb.ak ], [ %i.ex, %bb.at ], [ %.0669856, %.critedge ], [ %.0669856, %ir_emit_store_mem.exit ], [ %.0669856, %bb.ar ], [ %.0669856, %bb.ap ] ; 3 uses
  %.1664 = phi i32 [ %i.dm, %bb.ah ], [ %.0663857, %bb.ak ], [ %.0663857, %bb.at ], [ %.0663857, %.critedge ], [ %i.fe, %ir_emit_store_mem.exit ], [ %.0663857, %bb.ar ], [ %.0663857, %bb.ap ]
  %.2662 = phi i1 [ %.0660858, %bb.ah ], [ true, %bb.ak ], [ %.0660858, %bb.at ], [ %.0660858, %.critedge ], [ %.1661, %ir_emit_store_mem.exit ], [ true, %bb.ar ], [ true, %bb.ap ] ; 2 uses
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1 ; 2 uses
  %exitcond881.not = icmp eq i64 %indvars.iv.next878, %wide.trip.count880
  br i1 %exitcond881.not, label %._crit_edge, label %bb.t, !llvm.loop !316

._crit_edge:                                      ; preds = %bb.ay
  %.not774 = icmp eq i32 %.1670, 0
  br i1 %.not774, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  tail call fastcc void @ir_parallel_copy(ptr noundef nonnull %0, ptr noundef %i.br, i32 noundef %.1670, i8 noundef signext %spec.store.select)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge
  tail call void @_efree(ptr noundef %i.br) #23
  br i1 %.2662, label %.lr.ph869, label %.loopexit847

.lr.ph869:                                        ; preds = %bb.ba
  %i.ff = load i8, ptr %i.e, align 1, !tbaa !123
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fi = sext i32 %1 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fv = sext i8 %spec.store.select to i32
  %umax885 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 3)
  %i.fw = add nuw nsw i32 %umax885, 1
  %wide.trip.count886 = zext nneg i32 %i.fw to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph869, %ir_load_local_addr.exit
  %indvars.iv882 = phi i64 [ 3, %.lr.ph869 ], [ %indvars.iv.next883, %ir_load_local_addr.exit ] ; 3 uses
  %.0867 = phi i32 [ 0, %.lr.ph869 ], [ %.2, %ir_load_local_addr.exit ] ; 18 uses
  %.2665866 = phi i32 [ %i.fg, %.lr.ph869 ], [ %.5, %ir_load_local_addr.exit ] ; 22 uses
  %.4675865 = phi i32 [ 0, %.lr.ph869 ], [ %.8, %ir_load_local_addr.exit ] ; 6 uses
  %.3680864 = phi i32 [ 0, %.lr.ph869 ], [ %.6683, %ir_load_local_addr.exit ] ; 8 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv882
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !63 ; 12 uses
  %i.fz = load ptr, ptr %i.fh, align 8, !tbaa !125
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.fi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv882
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !22  ; 9 uses
  %i.gd = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ge = sext i32 %i.fy to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.ge ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !22  ; 8 uses
  %i.gi = zext i8 %i.gh to i32                    ; 11 uses
  %i.gj = icmp ult i8 %i.gh, 12                   ; 2 uses
  br i1 %i.gj, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.gk = load i8, ptr %i.gf, align 8, !tbaa !22
  %i.gl = icmp eq i8 %i.gk, 66
  br i1 %i.gl, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !22 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !22
  %i.gq = load i8, ptr %4, align 8
  %i.gr = and i8 %i.gq, 2
  %.not794 = icmp eq i8 %i.gr, 0
  %i.gs = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 8) ; 4 uses
  br i1 %.not794, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gt = add i32 %.2665866, -1
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = sub nsw i32 0, %i.gs
  %i.gw = and i32 %i.gu, %i.gv
  %i.gx = add i32 %i.gn, 7
  %i.gy = add i32 %i.gx, %i.gw
  %i.gz = and i32 %i.gy, -8
  br label %ir_load_local_addr.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ha = add i32 %.0867, -1
  %i.hb = add i32 %i.ha, %i.gn
  %i.hc = add i32 %i.hb, %i.gs
  %i.hd = sub nsw i32 0, %i.gs
  %i.he = and i32 %i.hc, %i.hd                    ; 3 uses
  %i.hf = load i8, ptr %i.fl, align 2, !tbaa !92
  %i.hg = zext i8 %i.hf to i32
  %i.hh = icmp slt i32 %.3680864, %i.hg
  br i1 %i.hh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load ptr, ptr %i.fm, align 8, !tbaa !93
  %i.hj = sext i32 %.3680864 to i64
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !22
  %i.hm = sext i8 %i.hl to i32
  %i.hn = sub nsw i32 %.1667, %i.he
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28109, i32 noundef %i.hm, i32 noundef %i.hn)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ho = sub nsw i32 %.1667, %i.he
  tail call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.d, i32 noundef 28109, i32 noundef %i.fv, i32 noundef %i.ho)
  %i.hp = zext i32 %.2665866 to i64
  %i.hq = or disjoint i64 %i.hp, 561867621662720
  %.val822 = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call fastcc void @ir_emit_store_mem_int(ptr %.val822, i32 noundef 6, i64 noundef %i.hq, i8 noundef signext %spec.store.select)
  %i.hr = add i32 %.2665866, 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.3 = phi i32 [ %.2665866, %bb.bg ], [ %i.hr, %bb.bh ]
  %i.hs = add nsw i32 %.3680864, 1
  %i.ht = load i8, ptr %4, align 8
  %i.hu = lshr i8 %i.ht, 3
  %i.hv = and i8 %i.hu, 1
  %i.hw = zext nneg i8 %i.hv to i32
  %spec.select815 = add nsw i32 %.4675865, %i.hw
  br label %ir_load_local_addr.exit

bb.bj:                                            ; preds = %bb.bc
  %i.hx = load i8, ptr %i.fl, align 2, !tbaa !92
  %i.hy = zext i8 %i.hx to i32
  %i.hz = icmp slt i32 %.3680864, %i.hy
  br i1 %i.hz, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.ia = load ptr, ptr %i.fm, align 8, !tbaa !93
  %i.ib = sext i32 %.3680864 to i64
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !22
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bb
  %i.ie = load i8, ptr %i.fj, align 1, !tbaa !94
  %i.if = zext i8 %i.ie to i32
  %i.ig = icmp slt i32 %.4675865, %i.if
  br i1 %i.ig, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.ih = load ptr, ptr %i.fk, align 8, !tbaa !95
  %i.ii = sext i32 %.4675865 to i64
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !22
  br label %.thread

bb.bn:                                            ; preds = %bb.bk, %bb.bj
  %.3687 = phi i8 [ %i.id, %bb.bk ], [ -1, %bb.bj ] ; 2 uses
  %i.il = add nsw i32 %.3680864, 1                ; 5 uses
  %i.im = load i8, ptr %4, align 8
  %i.in = lshr i8 %i.im, 3
  %i.io = and i8 %i.in, 1
  %i.ip = zext nneg i8 %i.io to i32
  %spec.select816 = add nsw i32 %.4675865, %i.ip  ; 5 uses
  %.not788 = icmp eq i8 %.3687, -1
  br i1 %.not788, label %bb.dd, label %bb.bo

.thread:                                          ; preds = %bb.bm, %bb.bl
  %.4688 = phi i8 [ %i.ik, %bb.bm ], [ -1, %bb.bl ] ; 2 uses
  %i.iq = add nsw i32 %.4675865, 1                ; 5 uses
  %i.ir = load i8, ptr %4, align 8
  %i.is = lshr i8 %i.ir, 3
  %i.it = and i8 %i.is, 1
  %i.iu = zext nneg i8 %i.it to i32
  %spec.select817 = add nsw i32 %.3680864, %i.iu  ; 5 uses
  %.not788829 = icmp eq i8 %.4688, -1
  br i1 %.not788829, label %.thread835, label %bb.bo

.thread835:                                       ; preds = %.thread
  %i.iv = zext i32 %.2665866 to i64
  %i.iw = or disjoint i64 %i.iv, 561867621662720  ; 3 uses
  %i.ix = icmp slt i32 %i.fy, 0
  br i1 %i.ix, label %bb.dj, label %bb.dk

bb.bo:                                            ; preds = %.thread, %bb.bn
  %.7834 = phi i32 [ %i.iq, %.thread ], [ %spec.select816, %bb.bn ] ; 15 uses
  %.5682832 = phi i32 [ %spec.select817, %.thread ], [ %i.il, %bb.bn ] ; 15 uses
  %.5689830 = phi i8 [ %.4688, %.thread ], [ %.3687, %bb.bn ] ; 4 uses
  %i.iy = sext i8 %.5689830 to i32                ; 10 uses
  %i.iz = icmp slt i32 %i.fy, 0                   ; 2 uses
  %i.ja = icmp eq i8 %i.gc, -1
  %or.cond9 = select i1 %i.iz, i1 true, i1 %i.ja
  br i1 %or.cond9, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not791 = icmp ult i8 %i.gc, 64
  br i1 %.not791, label %ir_load_local_addr.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jb = load i32, ptr %i.fn, align 8, !tbaa !319
  %i.jc = and i8 %i.gc, 63
  %i.jd = zext nneg i8 %i.jc to i32
  %i.je = shl nuw i32 1, %i.jd
  %i.jf = and i32 %i.jb, %i.je
  %.not792 = icmp eq i32 %i.jf, 0
  br i1 %.not792, label %bb.br, label %ir_load_local_addr.exit

bb.br:                                            ; preds = %bb.bq, %bb.bo
  br i1 %i.gj, label %bb.bs, label %bb.dc

bb.bs:                                            ; preds = %bb.br
  br i1 %i.iz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jg = and i8 %i.gh, 14                        ; 2 uses
  %or.cond12 = icmp eq i8 %i.jg, 8
  %or.cond15 = icmp eq i8 %i.jg, 2
  %spec.store.select16 = select i1 %or.cond15, i8 4, i8 %i.gh
  %narrow845 = select i1 %or.cond12, i8 10, i8 %spec.store.select16
  %.0693 = zext nneg i8 %narrow845 to i32
  tail call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef %.0693, i8 noundef signext %.5689830, i32 noundef %i.fy)
  br label %ir_load_local_addr.exit

bb.bu:                                            ; preds = %bb.bs
  %i.jh = load ptr, ptr %i.fo, align 8, !tbaa !114
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.ge
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !63 ; 2 uses
  %.not793 = icmp eq i32 %i.jj, 0
  br i1 %.not793, label %bb.cr, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jk = load ptr, ptr %i.fp, align 8, !tbaa !115
  %i.jl = sext i32 %i.jj to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !117 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !22 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !121
end_hunk_0
