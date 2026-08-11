inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@zend_dump_block_info:bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.186, i64 6, i64 1, ptr %i.l) #12 ; 0 uses
  %.pre = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = and i32 %i.n, 4096
  %.not63 = icmp eq i32 %i.o, 0
  br i1 %.not63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.187, i64 5, i64 1, ptr %i.p) #12 ; 0 uses
  %.pre94 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ %.pre94, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.s = and i32 %i.r, 2
  %.not64 = icmp eq i32 %i.s, 0
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.188, i64 7, i64 1, ptr %i.t) #12 ; 0 uses
  %.pre95 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi i32 [ %.pre95, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.w = and i32 %i.v, 4
  %.not65 = icmp eq i32 %i.w, 0
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.189, i64 7, i64 1, ptr %i.x) #12 ; 0 uses
  %.pre96 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi i32 [ %.pre96, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.aa = and i32 %i.z, 8
  %.not66 = icmp eq i32 %i.aa, 0
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ac = tail call i64 @fwrite(ptr nonnull @.str.190, i64 5, i64 1, ptr %i.ab) #12 ; 0 uses
  %.pre97 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = phi i32 [ %.pre97, %bb.l ], [ %i.z, %bb.k ] ; 2 uses
  %i.ae = and i32 %i.ad, 4112
  %.not67 = icmp eq i32 %i.ae, 0
  br i1 %.not67, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.191, i64 6, i64 1, ptr %i.af) #12 ; 0 uses
  %.pre98 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = phi i32 [ %.pre98, %bb.n ], [ %i.ad, %bb.m ] ; 2 uses
  %i.ai = and i32 %i.ah, 32
  %.not68 = icmp eq i32 %i.ai, 0
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.192, i64 4, i64 1, ptr %i.aj) #12 ; 0 uses
  %.pre99 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = phi i32 [ %.pre99, %bb.p ], [ %i.ah, %bb.o ] ; 2 uses
  %i.am = and i32 %i.al, 64
  %.not69 = icmp eq i32 %i.am, 0
  br i1 %.not69, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.193, i64 6, i64 1, ptr %i.an) #12 ; 0 uses
  %.pre100 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = phi i32 [ %.pre100, %bb.r ], [ %i.al, %bb.q ] ; 2 uses
  %i.aq = and i32 %i.ap, 128
  %.not70 = icmp eq i32 %i.aq, 0
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.194, i64 8, i64 1, ptr %i.ar) #12 ; 0 uses
  %.pre101 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = phi i32 [ %.pre101, %bb.t ], [ %i.ap, %bb.s ] ; 2 uses
  %i.au = and i32 %i.at, 256
  %.not71 = icmp eq i32 %i.au, 0
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str.195, i64 12, i64 1, ptr %i.av) #12 ; 0 uses
  %.pre103.pre = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre103 = phi i32 [ %.pre103.pre, %bb.v ], [ %i.at, %bb.u ] ; 2 uses
  %i.ax = and i32 %2, 1
  %.not72 = icmp eq i32 %i.ax, 0
  %.not73 = icmp sgt i32 %.pre103, -1
  %or.cond = select i1 %.not72, i1 %.not73, i1 false
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.az = tail call i64 @fwrite(ptr nonnull @.str.196, i64 12, i64 1, ptr %i.ay) #12 ; 0 uses
  %.pre102 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ba = phi i32 [ %.pre102, %bb.x ], [ %.pre103, %bb.w ] ; 2 uses
  %i.bb = and i32 %i.ba, 2048
  %.not74 = icmp eq i32 %i.bb, 0
  br i1 %.not74, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.197, i64 17, i64 1, ptr %i.bc) #12 ; 0 uses
  %.pre104 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.be = phi i32 [ %.pre104, %bb.z ], [ %i.ba, %bb.y ] ; 2 uses
  %i.bf = and i32 %i.be, 65536
  %.not75 = icmp eq i32 %i.bf, 0
  br i1 %.not75, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bh = tail call i64 @fwrite(ptr nonnull @.str.198, i64 12, i64 1, ptr %i.bg) #12 ; 0 uses
  %.pre105 = load i32, ptr %i.i, align 8, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bi = phi i32 [ %.pre105, %bb.ab ], [ %i.be, %bb.aa ]
  %i.bj = and i32 %i.bi, 131072
  %.not76 = icmp eq i32 %i.bj, 0
  br i1 %.not76, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.199, i64 12, i64 1, ptr %i.bk) #12 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !128 ; 2 uses
  %.not77 = icmp eq i32 %i.bn, 0
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !24 ; 2 uses
  br i1 %.not77, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !127 ; 2 uses
  %i.br = add i32 %i.bn, -1
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.200, i32 noundef %i.bq, i32 noundef %i.bs) #13 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bu = tail call i64 @fwrite(ptr nonnull @.str.201, i64 6, i64 1, ptr %i.bo) #12 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc78 = tail call i32 @fputc(i32 10, ptr %i.bv) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !159 ; 3 uses
  %.not79 = icmp eq i32 %i.bx, 0
  br i1 %.not79, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !177
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !178
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cc ; 3 uses
  %i.ce = sext i32 %i.bx to i64
  %.idx = shl nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %.idx
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !88
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.202, i32 noundef %i.ch) #13 ; 0 uses
  %i.cj = icmp sgt i32 %i.bx, 1
  br i1 %i.cj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ai
  %.05681 = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05682 = phi ptr [ %.056, %.lr.ph ], [ %.05681, %.lr.ph.preheader ] ; 2 uses
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cl = load i32, ptr %.05682, align 4, !tbaa !88
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.203, i32 noundef %i.cl) #13 ; 0 uses
  %.056 = getelementptr inbounds nuw i8, ptr %.05682, i64 4 ; 2 uses
  %i.cn = icmp ult ptr %.056, %i.cf
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph, %bb.ai
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.84, i64 2, i64 1, ptr %i.co) #12 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !180
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !88
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.204, i32 noundef %i.cv) #13 ; 0 uses
  %i.cx = load i32, ptr %i.cq, align 4, !tbaa !180
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %bb.ak, %.lr.ph85
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph85 ], [ 1, %bb.ak ] ; 2 uses
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !88
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.203, i32 noundef %i.dc) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load i32, ptr %i.cq, align 4, !tbaa !180
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph85, label %._crit_edge86, !llvm.loop !181

._crit_edge86:                                    ; preds = %.lr.ph85, %bb.ak
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.di = tail call i64 @fwrite(ptr nonnull @.str.84, i64 2, i64 1, ptr %i.dh) #12 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge86, %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !182 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.205, i32 noundef %i.dk) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !183 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.206, i32 noundef %i.dp) #13 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !184 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.207, i32 noundef %i.du) #13 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !185 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, -1
  br i1 %i.ea, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ec = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.208, i32 noundef %i.dz) #13 ; 0 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ee = zext nneg i32 %i.dz to i64
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ed, i64 %i.ee
  %.0.in87 = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %.088 = load i32, ptr %.0.in87, align 8, !tbaa !186 ; 2 uses
  %i.eg = icmp sgt i32 %.088, -1
  br i1 %i.eg, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.as, %.lr.ph91
  %.089 = phi i32 [ %.0, %.lr.ph91 ], [ %.088, %bb.as ] ; 2 uses
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.203, i32 noundef %.089) #13 ; 0 uses
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ek = zext nneg i32 %.089 to i64
  %i.el = getelementptr inbounds nuw [64 x i8], ptr %i.ej, i64 %i.ek
  %.0.in = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !186 ; 2 uses
  %i.em = icmp sgt i32 %.0, -1
  br i1 %i.em, label %.lr.ph91, label %._crit_edge92, !llvm.loop !187

._crit_edge92:                                    ; preds = %.lr.ph91, %bb.as
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.eo = tail call i64 @fwrite(ptr nonnull @.str.84, i64 2, i64 1, ptr %i.en) #12 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge92, %bb.ar
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden void @zend_dump_ssa_variables(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.107, i64 19, i64 1, ptr %i.c) #12 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not8.i = icmp eq ptr %i.h, null
  br i1 %.not8.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #13 ; 0 uses
  br label %zend_dump_op_array_name.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %fputs.i = tail call i32 @fputs(ptr nonnull %i.p, ptr %i.o) #12 ; 0 uses
  br label %zend_dump_op_array_name.exit

bb.g:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.r = tail call i64 @fwrite(ptr nonnull @.str.72, i64 6, i64 1, ptr %i.q) #12 ; 0 uses
  br label %zend_dump_op_array_name.exit

zend_dump_op_array_name.exit:                     ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.106, i64 2, i64 1, ptr %i.s) #12 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !118
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %zend_dump_op_array_name.exit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %zend_dump_op_array_name.exit ] ; 5 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.108, i64 4, i64 1, ptr %i.x) #12 ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !188
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @zend_dump_ssa_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ac, i8 noundef zeroext 8, i32 noundef %i.ab, i32 noundef %2)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !190
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
end_hunk_0
