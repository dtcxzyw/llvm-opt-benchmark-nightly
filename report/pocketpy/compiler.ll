Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/compiler?download=true
inline.NumInlined: 296
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@try_compile_assignment:bb.a
  %i.m = getelementptr [112 x i8], ptr %i.i, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -72
  %.val129 = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.o = getelementptr i8, ptr %i.m, i64 -64
  %.val130 = load i32, ptr %i.o, align 8, !tbaa !195
  %i.p = sext i32 %.val130 to i64
  %i.q = getelementptr [8 x i8], ptr %.val129, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 45
  %i.v = load i8, ptr %i.u, align 1, !tbaa !109, !range !31, !noundef !32
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str)
  br label %.thread133

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.m, i64 -80
  %i.z = load i8, ptr %i.y, align 8, !tbaa !33, !range !31, !noundef !32
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
  br label %.thread133

bb.f:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %i.d, 1
  store i32 %i.ac, ptr %i.c, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !190
  %i.af = add nsw i32 %i.g, -1
  %i.ag = tail call fastcc ptr @EXPR_TUPLE_ALLOW_SLICE(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %.not120 = icmp eq ptr %i.ag, null
  br i1 %.not120, label %bb.g, label %.thread133

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !193
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [112 x i8], ptr %i.ah, i64 %i.aj ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -72
  %.val127 = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.am = getelementptr i8, ptr %i.ak, i64 -64    ; 2 uses
  %.val128 = load i32, ptr %i.am, align 8, !tbaa !195 ; 2 uses
  %i.an = sext i32 %.val128 to i64
  %i.ao = getelementptr [8 x i8], ptr %.val127, i64 %i.an ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 45
  %i.at = load i8, ptr %i.as, align 1, !tbaa !109, !range !31, !noundef !32
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  br label %.thread133

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr i8, ptr %i.ak, i64 -112
  %i.ax = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13 ; 10 uses
  store ptr @BinaryExpr__new.Vt, ptr %i.ax, align 8, !tbaa !144
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.ae, ptr %i.ay, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %i.af, ptr %i.ba, align 8, !tbaa !146
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  store i8 1, ptr %i.bb, align 4, !tbaa !147
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.aq, ptr %i.bc, align 8, !tbaa !150
  %i.bd = getelementptr i8, ptr %i.ao, i64 -16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !107 ; 6 uses
  %i.bf = add nsw i32 %.val128, -2
  store i32 %i.bf, ptr %i.am, align 8, !tbaa !195
  store ptr %i.be, ptr %i.az, align 8, !tbaa !148
  tail call void @BinaryExpr__emit_(ptr noundef nonnull %i.ax, ptr noundef %i.aw) #12
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !255 ; 2 uses
  %.not121 = icmp eq ptr %i.bi, null
  br i1 %.not121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %.not122 = icmp eq ptr %i.bk, null
  br i1 %.not122, label %.critedge183, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink178 = phi ptr [ %i.bi, %bb.i ], [ %i.bk, %bb.j ]
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !192
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !193
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [112 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -112
  %i.bq = tail call zeroext i1 %.sink178(ptr noundef nonnull %i.be, ptr noundef %i.bp) #12
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %.not14.i = icmp eq ptr %i.bt, null
  br i1 %.not14.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.bt(ptr noundef nonnull %i.be) #12, !inline_history !256
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @free(ptr noundef nonnull %i.be) #12
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !52 ; 2 uses
  %.not16.i = icmp eq ptr %i.bw, null
  br i1 %.not16.i, label %BinaryExpr__dtor.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.bw(ptr noundef nonnull %i.aq) #12, !inline_history !256
  br label %BinaryExpr__dtor.exit

BinaryExpr__dtor.exit:                            ; preds = %bb.m, %bb.n
  tail call void @free(ptr noundef nonnull %i.aq) #12
  tail call void @free(ptr noundef nonnull %i.ax) #12
  br i1 %i.bq, label %bb.p, label %bb.o

.critedge183:                                     ; preds = %bb.j
  tail call void @BinaryExpr__dtor(ptr noundef nonnull %i.ax) #12
  tail call void @free(ptr noundef nonnull %i.ax) #12
  br label %bb.o

bb.o:                                             ; preds = %.critedge183, %BinaryExpr__dtor.exit
  %i.bx = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %.thread133

bb.p:                                             ; preds = %BinaryExpr__dtor.exit
  store i8 1, ptr %1, align 1, !tbaa !77
  br label %.thread133

bb.q:                                             ; preds = %bb.a
  %i.by = add nsw i32 %i.d, 1                     ; 3 uses
  store i32 %i.by, ptr %i.c, align 8, !tbaa !186
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 456), align 8, !tbaa !67
  %i.ca = load i32, ptr %i.b, align 8, !tbaa !191
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  %i.ce = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.bz, ptr noundef %i.cd)
  br label %.thread133

bb.s:                                             ; preds = %bb.q
  %i.cf = sext i32 %i.by to i64
  %i.cg = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !191
  %i.ci = icmp eq i32 %i.ch, 16
  br i1 %i.ci, label %bb.t, label %.preheader

bb.t:                                             ; preds = %bb.s
  %i.cj = add nsw i32 %i.d, 2                     ; 2 uses
  store i32 %i.cj, ptr %i.c, align 8, !tbaa !186
  %.not112 = icmp eq i32 %i.cj, 0
  br i1 %.not112, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.s, %bb.t
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !190
  %i.cm = tail call fastcc ptr @compile_yield_from(ptr noundef nonnull %0, i32 noundef %i.cl) ; 2 uses
  %.not116 = icmp eq ptr %i.cm, null
  br i1 %.not116, label %.loopexit, label %.thread133

bb.v:                                             ; preds = %.preheader, %bb.x
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.x ], [ 1, %.preheader ] ; 2 uses
  %.097 = phi i32 [ %i.co, %bb.x ], [ 0, %.preheader ] ; 2 uses
  %i.cn = tail call fastcc ptr @EXPR_TUPLE_ALLOW_SLICE(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %.not113 = icmp eq ptr %i.cn, null
  br i1 %.not113, label %bb.w, label %.thread133

bb.w:                                             ; preds = %bb.v
  %i.co = add nuw nsw i32 %.097, 1                ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [48 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !191
  %i.cu = icmp eq i32 %i.ct, 57
  br i1 %i.cu, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cv = add nsw i32 %i.cq, 1                    ; 2 uses
  store i32 %i.cv, ptr %i.c, align 8, !tbaa !186
  %i.cw = icmp eq i32 %i.cv, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.cw, label %.critedge, label %bb.v, !llvm.loop !252

.critedge:                                        ; preds = %bb.w, %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !192
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !193
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [112 x i8], ptr %i.cy, i64 %i.db ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -112
  %i.de = getelementptr i8, ptr %i.dc, i64 -72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !194
  %i.dg = getelementptr i8, ptr %i.dc, i64 -64    ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !195
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.df, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !107 ; 5 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !46
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !48
  tail call void %i.dn(ptr noundef nonnull %i.dl, ptr noundef %i.dd) #12, !inline_history !196
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %Ctx__s_emit_top.exit, label %bb.y

bb.y:                                             ; preds = %.critedge
  tail call void %i.dq(ptr noundef nonnull %i.dl) #12, !inline_history !196
  br label %Ctx__s_emit_top.exit

Ctx__s_emit_top.exit:                             ; preds = %.critedge, %bb.y
  tail call void @free(ptr noundef nonnull %i.dl) #12
  %i.dr = load i32, ptr %i.dg, align 8, !tbaa !195
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !195
  %.not115138 = icmp eq i32 %.097, 0
  br i1 %.not115138, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %Ctx__s_emit_top.exit, %.lr.ph
  %.096139 = phi i32 [ %i.dz, %.lr.ph ], [ 1, %Ctx__s_emit_top.exit ]
  %i.dt = load ptr, ptr %i.cx, align 8, !tbaa !192
  %i.du = load i32, ptr %i.cz, align 8, !tbaa !193
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr [112 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -112
  %i.dy = tail call fastcc i32 @Ctx__emit_(ptr noundef %i.dx, i32 noundef 2, i16 noundef zeroext 0, i32 noundef -1) ; 0 uses
  %i.dz = add i32 %.096139, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !253

.loopexit:                                        ; preds = %.lr.ph, %Ctx__s_emit_top.exit, %bb.u
  %.1 = phi i32 [ 1, %bb.u ], [ 1, %Ctx__s_emit_top.exit ], [ %i.co, %.lr.ph ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %.split, %Ctx__s_pop.exit
  %i.ec = add nuw nsw i32 %.0140, 1               ; 2 uses
  %exitcond145.not = icmp eq i32 %i.ec, %.1
  br i1 %exitcond145.not, label %bb.af, label %bb.aa, !llvm.loop !254

bb.aa:                                            ; preds = %.loopexit, %bb.z
  %.0140 = phi i32 [ 0, %.loopexit ], [ %i.ec, %bb.z ]
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !192
  %i.ee = load i32, ptr %i.eb, align 8, !tbaa !193
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [112 x i8], ptr %i.ed, i64 %i.ef ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -112
  %i.ei = getelementptr i8, ptr %i.eg, i64 -72
  %.val125 = load ptr, ptr %i.ei, align 8, !tbaa !194
  %i.ej = getelementptr i8, ptr %i.eg, i64 -64    ; 2 uses
  %.val126 = load i32, ptr %i.ej, align 8, !tbaa !195
  %i.ek = sext i32 %.val126 to i64
  %i.el = getelementptr [8 x i8], ptr %.val125, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !107 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !46 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 45
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !109, !range !31, !noundef !32
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.es = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  br label %.thread133

bb.ac:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !51 ; 2 uses
  %.not117 = icmp eq ptr %i.eu, null
  br i1 %.not117, label %.thread167, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = tail call zeroext i1 %i.eu(ptr noundef nonnull %i.en, ptr noundef %i.eh) #12 ; 2 uses
  %.pre = load ptr, ptr %i.ea, align 8, !tbaa !192
  %.pre146 = load i32, ptr %i.eb, align 8, !tbaa !193
  %.phi.trans.insert = sext i32 %.pre146 to i64
  %.phi.trans.insert147 = getelementptr [112 x i8], ptr %.pre, i64 %.phi.trans.insert ; 2 uses
  %.phi.trans.insert148 = getelementptr i8, ptr %.phi.trans.insert147, i64 -72
  %.pre149 = load ptr, ptr %.phi.trans.insert148, align 8, !tbaa !194
  %.phi.trans.insert150 = getelementptr i8, ptr %.phi.trans.insert147, i64 -64 ; 3 uses
  %.pre151 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !195 ; 2 uses
  %.phi.trans.insert152 = sext i32 %.pre151 to i64
  %.phi.trans.insert153 = getelementptr [8 x i8], ptr %.pre149, i64 %.phi.trans.insert152
  %.phi.trans.insert154 = getelementptr i8, ptr %.phi.trans.insert153, i64 -8
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !tbaa !107 ; 3 uses
  %.not.i131 = icmp eq ptr %.pre155, null
  br i1 %.not.i131, label %Ctx__s_pop.exit, label %..thread167_crit_edge

..thread167_crit_edge:                            ; preds = %bb.ad
  %i.ew = xor i1 %i.ev, true
  %.pre194 = load ptr, ptr %.pre155, align 8, !tbaa !46
  br label %.thread167

.thread167:                                       ; preds = %..thread167_crit_edge, %bb.ac
  %i.ex = phi ptr [ %.pre194, %..thread167_crit_edge ], [ %i.eo, %bb.ac ]
  %i.ey = phi ptr [ %.phi.trans.insert150, %..thread167_crit_edge ], [ %i.ej, %bb.ac ] ; 2 uses
  %.not118171 = phi i1 [ %i.ew, %..thread167_crit_edge ], [ true, %bb.ac ]
  %i.ez = phi ptr [ %.pre155, %..thread167_crit_edge ], [ %i.en, %bb.ac ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !52 ; 2 uses
  %.not9.i = icmp eq ptr %i.fb, null
  br i1 %.not9.i, label %.split, label %bb.ae

bb.ae:                                            ; preds = %.thread167
  tail call void %i.fb(ptr noundef nonnull %i.ez) #12, !inline_history !197
  br label %.split

.split:                                           ; preds = %bb.ae, %.thread167
  tail call void @free(ptr noundef nonnull %i.ez) #12
  %.pre.i = load i32, ptr %i.ey, align 8, !tbaa !195
  %i.fc = add nsw i32 %.pre.i, -1
  store i32 %i.fc, ptr %i.ey, align 8, !tbaa !195
  br i1 %.not118171, label %.thread, label %bb.z

Ctx__s_pop.exit:                                  ; preds = %bb.ad
  %i.fd = add nsw i32 %.pre151, -1
  store i32 %i.fd, ptr %.phi.trans.insert150, align 8, !tbaa !195
  br i1 %i.ev, label %bb.z, label %.thread

.thread:                                          ; preds = %.split, %Ctx__s_pop.exit
  %i.fe = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
  br label %.thread133

bb.af:                                            ; preds = %bb.z
  store i8 1, ptr %1, align 1, !tbaa !77
  br label %.thread133

bb.ag:                                            ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !77
  br label %.thread133

.thread133:                                       ; preds = %bb.v, %bb.ab, %.thread, %bb.af, %bb.u, %bb.h, %bb.f, %bb.p, %bb.o, %bb.ag, %bb.r, %bb.e, %bb.c
  %.6 = phi ptr [ null, %bb.ag ], [ %i.x, %bb.c ], [ %i.ab, %bb.e ], [ %i.ce, %bb.r ], [ %i.bx, %bb.o ], [ %i.ag, %bb.f ], [ %i.av, %bb.h ], [ null, %bb.p ], [ %i.cm, %bb.u ], [ null, %bb.af ], [ %i.es, %bb.ab ], [ %i.fe, %.thread ], [ %i.cn, %bb.v ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compile_yield_from(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !193
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.19)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @EXPR_TUPLE_ALLOW_SLICE(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !0 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.h = load i32, ptr %i.b, align 8, !tbaa !193
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [112 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -112
  %i.l = getelementptr i8, ptr %i.j, i64 -72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.n = getelementptr i8, ptr %i.j, i64 -64      ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  tail call void %i.u(ptr noundef nonnull %i.s, ptr noundef %i.k) #12, !inline_history !196
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %Ctx__s_emit_top.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.x(ptr noundef nonnull %i.s) #12, !inline_history !196
  br label %Ctx__s_emit_top.exit

Ctx__s_emit_top.exit:                             ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.s) #12
  %i.y = load i32, ptr %i.n, align 8, !tbaa !195
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !195
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !193
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [112 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -112
  %i.af = tail call fastcc i32 @Ctx__emit_(ptr noundef %i.ae, i32 noundef 86, i16 noundef zeroext 0, i32 noundef %1) ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !193
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [112 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -112   ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 -84    ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !35
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !121 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 204
  %i.at = load i32, ptr %i.as, align 4, !tbaa !122
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.f, label %Ctx__enter_block.exit

bb.f:                                             ; preds = %Ctx__s_emit_top.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.aw = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.av) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.av, i32 noundef %i.aw) #12
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %.pre12.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !121
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !192
  br label %Ctx__enter_block.exit

Ctx__enter_block.exit:                            ; preds = %Ctx__s_emit_top.exit, %bb.f
  %i.ax = phi ptr [ %.pre, %bb.f ], [ %i.ag, %Ctx__s_emit_top.exit ]
  %i.ay = phi i32 [ %.pre12.i, %bb.f ], [ %i.ar, %Ctx__s_emit_top.exit ]
  %i.az = phi ptr [ %.pre.i, %bb.f ], [ %i.an, %Ctx__s_emit_top.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 2 uses
end_hunk_0
begin_hunk_1_@parse_expression:bb.a
  store i32 %i.l, ptr %i.c, align 8, !tbaa !186
  %i.m = tail call ptr %i.j(ptr noundef nonnull %0) #12 ; 2 uses
  %.not38 = icmp eq ptr %i.m, null
  br i1 %.not38, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.o = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !191  ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !211
  %.not39 = icmp uge i32 %i.v, %1
  %.not40 = icmp ne i32 %i.r, 49
  %or.cond44.not = or i1 %2, %.not40
  %or.cond47 = and i1 %.not39, %or.cond44.not
  br i1 %or.cond47, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.preheader
  %i.w = add nsw i32 %i.o, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge3
  %i.aa = tail call ptr %i.y(ptr noundef nonnull %0) #12 ; 2 uses
  %.not41 = icmp eq ptr %i.aa, null
  br i1 %.not41, label %.preheader, label %.critedge, !llvm.loop !2

.critedge.sink.split:                             ; preds = %.critedge3, %bb.a
  %.lcssa53.sink = phi i64 [ %i.h, %bb.a ], [ %i.s, %.critedge3 ]
  %.str.7.sink = phi ptr [ @.str.6, %bb.a ], [ @.str.7, %.critedge3 ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink, ptr noundef %i.ac)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %.critedge.sink.split, %bb.b
  %.3 = phi ptr [ %i.ad, %.critedge.sink.split ], [ %i.m, %bb.b ], [ null, %.preheader ], [ %i.aa, %bb.c ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprName(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = getelementptr i8, ptr %i.f, i64 -32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !215
  %i.k = tail call ptr @py_namev(ptr %i.h, i32 %i.j) #12 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load i32, ptr %i.l, align 8, !tbaa !193 ; 2 uses
  %i.m = icmp slt i32 %.val, 2
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.q = sext i32 %.val to i64
  %i.r = getelementptr [112 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -48
  %i.t = tail call zeroext i1 @c11_smallmap_n2d__contains(ptr noundef %i.s, ptr noundef %i.k) #12
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.w = load i8, ptr %i.v, align 4, !tbaa !30, !range !31, !noundef !32
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %i.n, %bb.a ], [ 1, %bb.b ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !186
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [48 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !190
  %i.af = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @NameExpr__new.Vt, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.k, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %.017, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !193
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [112 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -72    ; 3 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 -64    ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 -60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !220
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %Ctx__s_push.exit

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.an) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.an, i32 noundef %i.at) #12
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.d, %bb.e
  %i.au = phi i32 [ %.pre.i, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.af, ptr %i.ax, align 8, !tbaa !107
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %Ctx__s_push.exit, %bb.c
  %.0 = phi ptr [ %i.y, %bb.c ], [ null, %Ctx__s_push.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprLiteral(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = getelementptr i8, ptr %i.f, i64 -16
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @LiteralExpr__new.Vt, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.h, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !193
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [112 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -72      ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -64      ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !195  ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 -60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %Ctx__s_push.exit

bb.b:                                             ; preds = %bb.a
  %i.z = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.t) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.t, i32 noundef %i.z) #12
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.a, %bb.b
  %i.aa = phi i32 [ %.pre.i, %bb.b ], [ %i.v, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !107
  %i.ae = add nsw i32 %i.aa, 1
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !195
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @exprFString(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  %i.k = phi i32 [ %i.d, %bb.a ], [ %.pre97, %.thread ] ; 3 uses
  %i.l = phi ptr [ %i.b, %bb.a ], [ %.pre, %.thread ] ; 4 uses
  %.049 = phi i32 [ 0, %bb.a ], [ %.251, %.thread ] ; 6 uses
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 8, !tbaa !191  ; 2 uses
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !186
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge104, label %bb.d

._crit_edge104:                                   ; preds = %bb.c
  %.pre107 = load i32, ptr %i.l, align 8, !tbaa !191
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @FStringExpr__new.ListExprVt, ptr %i.r, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.h, ptr %i.s, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 43, ptr %i.t, align 4, !tbaa !113
  %i.u = zext nneg i32 %.049 to i64               ; 6 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #13 ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %.049, ptr %i.z, align 8, !tbaa !105
  %.not79 = icmp eq i32 %.049, 0
  %.pre98.a = load ptr, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %.pre99 = load i32, ptr %i.j, align 8, !tbaa !193
  %.phi.trans.insert = sext i32 %.pre99 to i64    ; 2 uses
  %.phi.trans.insert101 = getelementptr [112 x i8], ptr %.pre98.a, i64 %.phi.trans.insert ; 3 uses
  br i1 %.not79, label %._crit_edge100, label %.lr.ph

._crit_edge100:                                   ; preds = %bb.d
  %.phi.trans.insert102 = getelementptr i8, ptr %.phi.trans.insert101, i64 -64
  %.pre103 = load i32, ptr %.phi.trans.insert102, align 8, !tbaa !195
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %.phi.trans.insert101, i64 -72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !194 ; 3 uses
  %i.ac = getelementptr i8, ptr %.phi.trans.insert101, i64 -64 ; 2 uses
  %.promoted = load i32, ptr %i.ac, align 8, !tbaa !195
  %i.ad = sext i32 %.promoted to i64              ; 5 uses
  %1 = zext nneg i32 %.049 to i64                 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.049, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = shl nsw i64 %i.ad, 3
  %i.ag = shl nuw nsw i64 %i.u, 3
  %i.ah = add i64 %i.af, %i.ae
  %i.ai = add i64 %i.ag, %i.x
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 2147483644                 ; 4 uses
  %2 = sub nsw i64 %i.u, %n.vec
  %i.ak = sub nsw i64 %i.ad, %n.vec               ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = sub i64 %i.ad, %index
  %i.an = xor i64 %index, -1
  %i.ao = getelementptr [8 x i8], ptr %i.ab, i64 %i.am ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -16
  %i.aq = getelementptr i8, ptr %i.ao, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !107
  %wide.load169 = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -24
  store <2 x ptr> %wide.load, ptr %i.as, align 8, !tbaa !107
  store <2 x ptr> %wide.load169, ptr %i.at, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %1
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv92.ph = phi i64 [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph ], [ %2, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph ], [ %i.ak, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ak, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.av = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  store i32 %i.av, ptr %i.ac, align 8, !tbaa !195
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %._crit_edge
  %i.aw = phi i32 [ %.pre103, %._crit_edge100 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ax = getelementptr [112 x i8], ptr %.pre98.a, i64 %.phi.trans.insert ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -72    ; 3 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 -64    ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 -60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !220
  %i.bc = icmp eq i32 %i.aw, %i.bb
  br i1 %i.bc, label %bb.f, label %Ctx__s_push.exit

bb.f:                                             ; preds = %bb.e
  %i.bd = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ay) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ay, i32 noundef %i.bd) #12
  %.pre.i = load i32, ptr %i.az, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.e, %bb.f
  %i.be = phi i32 [ %.pre.i, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !194
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %i.r, ptr %i.bh, align 8, !tbaa !107
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %i.az, align 8, !tbaa !195
  br label %EXPR.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph ], [ %indvars.iv92.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1 ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !107
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next93
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !107
  %3 = trunc nuw i64 %indvars.iv92 to i32
  %i.bn = icmp sgt i32 %3, 1
  br i1 %i.bn, label %scalar.ph, label %._crit_edge, !llvm.loop !298

bb.g:                                             ; preds = %._crit_edge104, %bb.b
  %i.bo = phi i32 [ %i.o, %bb.b ], [ %.pre107, %._crit_edge104 ] ; 2 uses
  %i.bp = phi i32 [ %i.k, %bb.b ], [ 0, %._crit_edge104 ] ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.bq ; 2 uses
  %i.bs = icmp eq i32 %i.bo, 7
  br i1 %i.bs, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bt = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.c, align 8, !tbaa !186
  %.not55 = icmp eq i32 %i.bt, 0
  br i1 %.not55, label %._crit_edge108, label %bb.i

._crit_edge108:                                   ; preds = %bb.h
  %.pre111 = load i32, ptr %i.l, align 8, !tbaa !191
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !190
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bx = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @LiteralExpr__new.Vt, ptr %i.bx, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.bv, ptr %i.by, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i8 0, ptr %i.ca, align 8, !tbaa !86
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.cc = load i32, ptr %i.j, align 8, !tbaa !193
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [112 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -72    ; 3 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -64    ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !195 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 -60
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !220
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.j, label %Ctx__s_push.exit59

bb.j:                                             ; preds = %bb.i
  %i.cl = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.cf) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.cf, i32 noundef %i.cl) #12
  %.pre.i58 = load i32, ptr %i.cg, align 8, !tbaa !195
  br label %Ctx__s_push.exit59

Ctx__s_push.exit59:                               ; preds = %bb.i, %bb.j
  %i.cm = phi i32 [ %.pre.i58, %bb.j ], [ %i.ch, %bb.i ] ; 2 uses
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !194
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !107
  %i.cq = add nsw i32 %i.cm, 1
  store i32 %i.cq, ptr %i.cg, align 8, !tbaa !195
  br label %.thread

bb.k:                                             ; preds = %._crit_edge108, %bb.g
  %i.cr = phi i32 [ %i.bo, %bb.g ], [ %.pre111, %._crit_edge108 ] ; 2 uses
  %i.cs = phi i32 [ %i.bp, %bb.g ], [ 0, %._crit_edge108 ]
  %i.ct = zext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !210 ; 2 uses
  %.not.i.i = icmp ne ptr %i.cv, null
  %i.cw = icmp ne i32 %i.cr, 49
  %or.cond42.i.i = and i1 %i.cw, %.not.i.i
  br i1 %or.cond42.i.i, label %bb.l, label %EXPR.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = add nsw i32 %i.cs, 1
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !186
  %i.cy = tail call ptr %i.cv(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.cy, null
  br i1 %.not38.i.i, label %.preheader.i.i, label %EXPR.exit.thread

.preheader.i.i:                                   ; preds = %bb.l, %bb.m
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.da = load i32, ptr %i.c, align 8, !tbaa !186 ; 3 uses
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [48 x i8], ptr %i.cz, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !191 ; 3 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !211
  %.not39.i.i = icmp ne i32 %i.dh, 0
  %.not40.i.i = icmp ne i32 %i.dd, 49
  %or.cond47.i.i = and i1 %.not40.i.i, %.not39.i.i
  br i1 %or.cond47.i.i, label %.critedge3.i.i, label %EXPR.exit.thread65

.critedge3.i.i:                                   ; preds = %.preheader.i.i
  %i.di = add nsw i32 %i.da, 1
  store i32 %i.di, ptr %i.c, align 8, !tbaa !186
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !212 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %EXPR.exit, label %bb.m

bb.m:                                             ; preds = %.critedge3.i.i
  %i.dm = tail call ptr %i.dk(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.dm, null
  br i1 %.not41.i.i, label %.preheader.i.i, label %EXPR.exit.thread, !llvm.loop !2

EXPR.exit:                                        ; preds = %.critedge3.i.i, %bb.k
  %.lcssa53.sink.i.i = phi i64 [ %i.ct, %bb.k ], [ %i.de, %.critedge3.i.i ]
  %.str.7.sink.i.i = phi ptr [ @.str.6, %bb.k ], [ @.str.7, %.critedge3.i.i ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !67
  %i.dp = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i.i, ptr noundef %i.do), !inline_history !216 ; 2 uses
  %.not56 = icmp eq ptr %i.dp, null
  br i1 %.not56, label %EXPR.exit.EXPR.exit.thread65_crit_edge, label %EXPR.exit.thread

EXPR.exit.EXPR.exit.thread65_crit_edge:           ; preds = %EXPR.exit
  %.pre112 = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %.pre113 = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert114 = sext i32 %.pre113 to i64 ; 2 uses
  %.phi.trans.insert115 = getelementptr inbounds [48 x i8], ptr %.pre112, i64 %.phi.trans.insert114
  %.pre116 = load i32, ptr %.phi.trans.insert115, align 8, !tbaa !191
  br label %EXPR.exit.thread65

EXPR.exit.thread65:                               ; preds = %.preheader.i.i, %EXPR.exit.EXPR.exit.thread65_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert114, %EXPR.exit.EXPR.exit.thread65_crit_edge ], [ %i.db, %.preheader.i.i ]
  %i.dq = phi i32 [ %.pre116, %EXPR.exit.EXPR.exit.thread65_crit_edge ], [ %i.dd, %.preheader.i.i ]
  %i.dr = phi i32 [ %.pre113, %EXPR.exit.EXPR.exit.thread65_crit_edge ], [ %i.da, %.preheader.i.i ]
  %i.ds = phi ptr [ %.pre112, %EXPR.exit.EXPR.exit.thread65_crit_edge ], [ %i.cz, %.preheader.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds [48 x i8], ptr %i.ds, i64 %.pre-phi ; 2 uses
  %i.du = icmp eq i32 %i.dq, 8
  br i1 %i.du, label %bb.n, label %.thread

bb.n:                                             ; preds = %EXPR.exit.thread65
  %i.dv = add nsw i32 %i.dr, 1                    ; 3 uses
  store i32 %i.dv, ptr %i.c, align 8, !tbaa !186
  %.not57 = icmp eq i32 %i.dv, 0
  br i1 %.not57, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !214
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !215
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.ec = load i32, ptr %i.j, align 8, !tbaa !193
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr [112 x i8], ptr %i.eb, i64 %i.ed ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -72    ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !194 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 -64    ; 5 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !195 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [8 x i8], ptr %i.eg, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !107
  %i.en = add nsw i32 %i.ei, -1
  store i32 %i.en, ptr %i.eh, align 8, !tbaa !195
  %i.eo = sext i32 %i.dv to i64
  %i.ep = getelementptr [48 x i8], ptr %i.ds, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !190
  %i.es = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13 ; 6 uses
  store ptr @FStringSpecExpr__new.Vt, ptr %i.es, align 8, !tbaa !66
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i32 %i.er, ptr %i.et, align 8, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.em, ptr %i.eu, align 8, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.dx, ptr %i.ev, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i32 %i.ea, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !195 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ee, i64 -60
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !220
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.p, label %Ctx__s_push.exit61

bb.p:                                             ; preds = %bb.o
  %i.fa = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ef) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ef, i32 noundef %i.fa) #12
  %.pre.i60 = load i32, ptr %i.eh, align 8, !tbaa !195
  %.pre117 = load ptr, ptr %i.ef, align 8, !tbaa !194
  br label %Ctx__s_push.exit61

Ctx__s_push.exit61:                               ; preds = %bb.o, %bb.p
  %i.fb = phi ptr [ %.pre117, %bb.p ], [ %i.eg, %bb.o ]
  %i.fc = phi i32 [ %.pre.i60, %bb.p ], [ %i.ew, %bb.o ] ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fd
  store ptr %i.es, ptr %i.fe, align 8, !tbaa !107
  %i.ff = add nsw i32 %i.fc, 1
  store i32 %i.ff, ptr %i.eh, align 8, !tbaa !195
  br label %.thread

.thread:                                          ; preds = %bb.n, %Ctx__s_push.exit61, %EXPR.exit.thread65, %Ctx__s_push.exit59
  %.251 = add nuw nsw i32 %.049, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre97 = load i32, ptr %i.c, align 8, !tbaa !186
  br label %bb.b

EXPR.exit.thread:                                 ; preds = %bb.l, %EXPR.exit, %bb.m, %Ctx__s_push.exit
  %.3 = phi ptr [ null, %Ctx__s_push.exit ], [ %i.dm, %bb.m ], [ %i.cy, %bb.l ], [ %i.dp, %EXPR.exit ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprBytes(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = tail call { ptr, i32 } @c11_string__sv(ptr noundef %i.h) #12 ; 2 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = extractvalue { ptr, i32 } %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !193
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [112 x i8], ptr %i.m, i64 %i.p ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.s = load i32, ptr %i.c, align 8, !tbaa !186
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [48 x i8], ptr %i.r, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !190
  %i.x = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13 ; 6 uses
  store ptr @RawStringExpr__new.Vt, ptr %i.x, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.w, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.j, ptr %i.z, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 37, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr i8, ptr %i.q, i64 -72     ; 3 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 -64     ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !195 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 -60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !220
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.b, label %Ctx__s_push.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ab) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ab, i32 noundef %i.ah) #12
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.a, %bb.b
  %i.ai = phi i32 [ %.pre.i, %bb.b ], [ %i.ad, %bb.a ] ; 2 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  store ptr %i.x, ptr %i.al, align 8, !tbaa !107
  %i.am = add nsw i32 %i.ai, 1
  store i32 %i.am, ptr %i.ac, align 8, !tbaa !195
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprImag(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !193
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [112 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !186
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [48 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !190
  %i.o = getelementptr i8, ptr %i.l, i64 -8
  %i.p = load double, ptr %i.o, align 8, !tbaa !65
  %i.q = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 4 uses
  store ptr @ImagExpr__new.Vt, ptr %i.q, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.n, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.p, ptr %i.s, align 8, !tbaa !74
  %i.t = getelementptr i8, ptr %i.f, i64 -72      ; 3 uses
  %i.u = getelementptr i8, ptr %i.f, i64 -64      ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !195  ; 2 uses
  %i.w = getelementptr i8, ptr %i.f, i64 -60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %Ctx__s_push.exit

bb.b:                                             ; preds = %bb.a
  %i.z = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.t) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.t, i32 noundef %i.z) #12
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.a, %bb.b
  %i.aa = phi i32 [ %.pre.i, %bb.b ], [ %i.v, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !107
  %i.ae = add nsw i32 %i.aa, 1
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !195
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @exprBinaryOp(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -48
  %i.h = getelementptr i8, ptr %i.f, i64 -28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !190
  %i.j = load i32, ptr %i.g, align 8, !tbaa !191  ; 4 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !211
  %.not = icmp ne i32 %i.j, 51
  %i.o = zext i1 %.not to i32
  %spec.select = add nsw i32 %i.n, %i.o
  %i.p = load i32, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp ne ptr %i.s, null
  %i.t = icmp ne i32 %i.p, 49
  %or.cond42.i = and i1 %i.t, %.not.i
  br i1 %or.cond42.i, label %bb.b, label %parse_expression.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.d, 1
  store i32 %i.u, ptr %i.c, align 8, !tbaa !186
  %i.v = tail call ptr %i.s(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not38.i = icmp eq ptr %i.v, null
  br i1 %.not38.i, label %.preheader.i, label %parse_expression.exit.thread

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.x = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [48 x i8], ptr %i.w, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !191 ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !211
  %.not39.i = icmp uge i32 %i.ae, %spec.select
  %.not40.i = icmp ne i32 %i.aa, 49
  %or.cond47.i = and i1 %.not40.i, %.not39.i
  br i1 %or.cond47.i, label %.critedge3.i, label %parse_expression.exit.thread35

.critedge3.i:                                     ; preds = %.preheader.i
  %i.af = add nsw i32 %i.x, 1
  store i32 %i.af, ptr %i.c, align 8, !tbaa !186
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !212 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %parse_expression.exit, label %bb.c

bb.c:                                             ; preds = %.critedge3.i
  %i.aj = tail call ptr %i.ah(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not41.i = icmp eq ptr %i.aj, null
  br i1 %.not41.i, label %.preheader.i, label %parse_expression.exit.thread, !llvm.loop !2

parse_expression.exit:                            ; preds = %.critedge3.i, %bb.a
  %.lcssa53.sink.i = phi i64 [ %i.q, %bb.a ], [ %i.ab, %.critedge3.i ]
  %.str.7.sink.i = phi ptr [ @.str.6, %bb.a ], [ @.str.7, %.critedge3.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.am = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i, ptr noundef %i.al), !inline_history !217 ; 2 uses
  %.not32 = icmp eq ptr %i.am, null
  br i1 %.not32, label %parse_expression.exit.thread35, label %parse_expression.exit.thread

parse_expression.exit.thread35:                   ; preds = %.preheader.i, %parse_expression.exit
  %i.an = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #13 ; 8 uses
  store ptr @BinaryExpr__new.Vt, ptr %i.an, align 8, !tbaa !144
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.i, ptr %i.ao, align 8, !tbaa !145
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
end_hunk_1
begin_hunk_2_@consume_comp:bb.a

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.k, 1                      ; 3 uses
  store i32 %i.p, ptr %i.c, align 8, !tbaa !186
  %.not40 = icmp eq i32 %i.p, 0
  br i1 %.not40, label %._crit_edge69, label %bb.e

._crit_edge69:                                    ; preds = %bb.c
  %.pre72 = load i32, ptr %i.j, align 8, !tbaa !191
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge69, %bb.b
  %i.q = phi i32 [ %i.n, %bb.b ], [ %.pre72, %._crit_edge69 ]
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 672), align 8, !tbaa !67
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.v = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.r, ptr noundef %i.u)
  br label %parse_expression.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.w
  %i.y = load i32, ptr %i.x, align 8, !tbaa !191  ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !210 ; 2 uses
  %.not.i = icmp ne ptr %i.ab, null
  %i.ac = icmp ne i32 %i.y, 49
  %or.cond42.i = and i1 %i.ac, %.not.i
  br i1 %or.cond42.i, label %bb.f, label %parse_expression.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.k, 2
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !186
  %i.ae = tail call ptr %i.ab(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not38.i = icmp eq ptr %i.ae, null
  br i1 %.not38.i, label %.preheader.i, label %parse_expression.exit.thread

.preheader.i:                                     ; preds = %bb.f, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !186 ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [48 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !191 ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !211
  %.not39.i = icmp ugt i32 %i.an, 3
  %.not40.i = icmp ne i32 %i.aj, 49
  %or.cond47.i = and i1 %.not40.i, %.not39.i
  br i1 %or.cond47.i, label %.critedge3.i, label %parse_expression.exit.thread46

.critedge3.i:                                     ; preds = %.preheader.i
  %i.ao = add nsw i32 %i.ag, 1
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !212 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %parse_expression.exit, label %bb.g

bb.g:                                             ; preds = %.critedge3.i
  %i.as = tail call ptr %i.aq(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not41.i = icmp eq ptr %i.as, null
  br i1 %.not41.i, label %.preheader.i, label %parse_expression.exit.thread, !llvm.loop !2

parse_expression.exit:                            ; preds = %.critedge3.i, %bb.e
  %.lcssa53.sink.i = phi i64 [ %i.z, %bb.e ], [ %i.ak, %.critedge3.i ]
  %.str.7.sink.i = phi ptr [ @.str.6, %bb.e ], [ @.str.7, %.critedge3.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.av = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i, ptr noundef %i.au), !inline_history !217 ; 2 uses
  %.not41 = icmp eq ptr %i.av, null
  br i1 %.not41, label %parse_expression.exit.parse_expression.exit.thread46_crit_edge, label %parse_expression.exit.thread

parse_expression.exit.parse_expression.exit.thread46_crit_edge: ; preds = %parse_expression.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre55 = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre55 to i64
  %.phi.trans.insert56 = getelementptr inbounds [48 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre57 = load i32, ptr %.phi.trans.insert56, align 8, !tbaa !191
  br label %parse_expression.exit.thread46

parse_expression.exit.thread46:                   ; preds = %.preheader.i, %parse_expression.exit.parse_expression.exit.thread46_crit_edge
  %i.aw = phi i32 [ %.pre57, %parse_expression.exit.parse_expression.exit.thread46_crit_edge ], [ %i.aj, %.preheader.i ]
  %i.ax = phi i32 [ %.pre55, %parse_expression.exit.parse_expression.exit.thread46_crit_edge ], [ %i.ag, %.preheader.i ]
  %i.ay = icmp eq i32 %i.aw, 82
  br i1 %i.ay, label %bb.h, label %bb.j

bb.h:                                             ; preds = %parse_expression.exit.thread46
  %i.az = add nsw i32 %i.ax, 1                    ; 2 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !186
  %.not42 = icmp eq i32 %i.az, 0
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 4, i1 noundef zeroext false) ; 2 uses
  %.not43 = icmp eq ptr %i.ba, null
  br i1 %.not43, label %bb.j, label %parse_expression.exit.thread

bb.j:                                             ; preds = %bb.i, %parse_expression.exit.thread46, %bb.h
  %.0 = phi i1 [ false, %parse_expression.exit.thread46 ], [ false, %bb.h ], [ true, %bb.i ]
  %i.bb = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #13 ; 10 uses
  store ptr @CompExpr__new.Vt, ptr %i.bb, align 8, !tbaa !128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.h, ptr %i.bc, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i32 %1, ptr %i.bd, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  store i32 %2, ptr %i.be, align 4, !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !192 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !193
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr [112 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !194 ; 5 uses
  %i.bp = getelementptr i8, ptr %i.bm, i64 -64    ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !195 ; 3 uses
  br i1 %.0, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bo, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !107
  %i.bv = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !195
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %i.bx = phi i32 [ %i.bv, %bb.k ], [ %i.bq, %bb.j ] ; 4 uses
  %i.by = getelementptr [112 x i8], ptr %i.bi, i64 %i.bl ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -64    ; 3 uses
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !107
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !117
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr [8 x i8], ptr %i.bo, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !107
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !116
  %i.ck = sext i32 %i.bx to i64
  %i.cl = getelementptr [8 x i8], ptr %i.bo, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !107
  %i.co = add nsw i32 %i.bx, -3                   ; 3 uses
  store i32 %i.co, ptr %i.bz, align 8, !tbaa !195
  store ptr %i.cn, ptr %i.bf, align 8, !tbaa !115
  %i.cp = getelementptr i8, ptr %i.by, i64 -60
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !220
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.l, label %Ctx__s_push.exit

bb.l:                                             ; preds = %._crit_edge
  %i.cs = getelementptr i8, ptr %i.by, i64 -72    ; 3 uses
  %i.ct = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.cs) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.cs, i32 noundef %i.ct) #12
  %.pre.i = load i32, ptr %i.bz, align 8, !tbaa !195
  %.pre68 = load ptr, ptr %i.cs, align 8, !tbaa !194
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %._crit_edge, %bb.l
  %i.cu = phi ptr [ %.pre68, %bb.l ], [ %i.bo, %._crit_edge ]
  %i.cv = phi i32 [ %.pre.i, %bb.l ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.bb, ptr %i.cx, align 8, !tbaa !107
  %i.cy = add nsw i32 %i.cv, 1
  store i32 %i.cy, ptr %i.bz, align 8, !tbaa !195
  br label %parse_expression.exit.thread

parse_expression.exit.thread:                     ; preds = %bb.g, %bb.f, %bb.i, %parse_expression.exit, %bb.a, %Ctx__s_push.exit, %bb.d
  %.036 = phi ptr [ %i.v, %bb.d ], [ %i.i, %bb.a ], [ %i.av, %parse_expression.exit ], [ null, %Ctx__s_push.exit ], [ %i.ba, %bb.i ], [ %i.ae, %bb.f ], [ %i.as, %bb.g ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @EXPR_VARS(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre67.a = load i32, ptr %i.b, align 8, !tbaa !186
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.e = phi i32 [ %.pre67.a, %bb.a ], [ %i.bd, %bb.f ] ; 2 uses
  %i.f = phi ptr [ %.pre, %bb.a ], [ %i.at, %bb.f ] ; 2 uses
  %.036 = phi i32 [ 0, %bb.a ], [ %i.az, %bb.f ]  ; 5 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !186
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre72 = load i32, ptr %i.f, align 8, !tbaa !191
  br label %split

split:                                            ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %.pre72, %._crit_edge ], [ %i.i, %bb.b ]
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 24), align 8, !tbaa !67
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.m, ptr noundef %i.p)
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !215
  %i.v = tail call ptr @py_namev(ptr %i.s, i32 %i.u) #12
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr [48 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !190
  %.val = load i32, ptr %i.c, align 8, !tbaa !193 ; 2 uses
  %i.ac = icmp slt i32 %.val, 2
  %i.ad = zext i1 %i.ac to i32
  %i.ae = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @NameExpr__new.Vt, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 %i.ad, ptr %i.ah, align 8, !tbaa !22
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.aj = sext i32 %.val to i64
  %i.ak = getelementptr [112 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -72    ; 3 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -64    ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !195 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 -60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !220
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %Ctx__s_push.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.al) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.al, i32 noundef %i.ar) #12
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !195
  %.pre68.a = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre69 = load i32, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.pre73 = sext i32 %.pre69 to i64
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.y, %bb.d ], [ %.pre73, %bb.e ]
  %i.as = phi i32 [ %i.x, %bb.d ], [ %.pre69, %bb.e ] ; 2 uses
  %i.at = phi ptr [ %i.w, %bb.d ], [ %.pre68.a, %bb.e ] ; 3 uses
  %i.au = phi i32 [ %i.an, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ae, ptr %i.ax, align 8, !tbaa !107
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !195
  %i.az = add nuw nsw i32 %.036, 1                ; 3 uses
  %i.ba = getelementptr inbounds [48 x i8], ptr %i.at, i64 %.pre-phi
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !191
  %i.bc = icmp eq i32 %i.bb, 48
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %Ctx__s_push.exit
  %i.bd = add nsw i32 %i.as, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.b, align 8, !tbaa !186
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge, label %bb.b, !llvm.loop !315

.critedge:                                        ; preds = %Ctx__s_push.exit, %bb.f
  %i.bf = phi i32 [ %i.as, %Ctx__s_push.exit ], [ 0, %bb.f ]
  %.not39 = icmp eq i32 %.036, 0
  br i1 %.not39, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [48 x i8], ptr %i.at, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !190
  %i.bk = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @TupleExpr__new.TupleExprVt, ptr %i.bk, align 8, !tbaa !112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store i32 38, ptr %i.bm, align 4, !tbaa !113
  %i.bn = zext nneg i32 %i.az to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #13 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.az, ptr %i.br, align 8, !tbaa !105
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !193
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [112 x i8], ptr %i.bs, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -72    ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !194 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -64    ; 4 uses
  %.promoted = load i32, ptr %i.by, align 8, !tbaa !195
  %1 = zext nneg i32 %.036 to i64                 ; 5 uses
  %i.bz = sext i32 %.promoted to i64              ; 5 uses
  %narrow = add nuw i32 %.036, 1
  %2 = zext i32 %narrow to i64                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.036, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %i.cb = ptrtoaddr ptr %i.bp to i64
  %i.cc = shl nsw i64 %i.bz, 3
  %i.cd = shl nuw nsw i64 %1, 3
  %3 = add i64 %i.cc, %i.ca
  %i.ce = add i64 %i.cd, %i.cb
  %4 = sub i64 %3, %i.ce
  %5 = add i64 %4, -9
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 4294967292                 ; 4 uses
  %i.cf = sub nsw i64 %i.bz, %n.vec               ; 2 uses
  %i.cg = sub nsw i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = sub i64 %i.bz, %index
  %i.ci = sub i64 %1, %index
  %i.cj = getelementptr [8 x i8], ptr %i.bx, i64 %i.ch ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  %i.cl = getelementptr i8, ptr %i.cj, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !107
  %wide.load99 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ci ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -24
  store <2 x ptr> %wide.load, ptr %i.cn, align 8, !tbaa !107
  store <2 x ptr> %wide.load99, ptr %i.co, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv62.ph = phi i64 [ %i.bz, %vector.memcheck ], [ %i.bz, %bb.g ], [ %i.cf, %middle.block ]
  %indvars.iv60.ph = phi i64 [ %1, %vector.memcheck ], [ %1, %bb.g ], [ %i.cg, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next63.lcssa = phi i64 [ %i.cf, %middle.block ], [ %indvars.iv.next63, %scalar.ph ]
  %i.cq = trunc nsw i64 %indvars.iv.next63.lcssa to i32 ; 3 uses
  store i32 %i.cq, ptr %i.by, align 8, !tbaa !195
  %i.cr = getelementptr i8, ptr %i.bv, i64 -60
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !220
  %i.ct = icmp eq i32 %i.cs, %i.cq
  br i1 %i.ct, label %bb.h, label %Ctx__s_push.exit41

bb.h:                                             ; preds = %.loopexit
  %i.cu = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.bw) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.bw, i32 noundef %i.cu) #12
  %.pre.i40 = load i32, ptr %i.by, align 8, !tbaa !195
  %.pre70 = load ptr, ptr %i.bw, align 8, !tbaa !194
  br label %Ctx__s_push.exit41

Ctx__s_push.exit41:                               ; preds = %.loopexit, %bb.h
  %i.cv = phi ptr [ %.pre70, %bb.h ], [ %i.bx, %.loopexit ]
  %i.cw = phi i32 [ %.pre.i40, %bb.h ], [ %i.cq, %.loopexit ] ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cx
  store ptr %i.bk, ptr %i.cy, align 8, !tbaa !107
  %i.cz = add nsw i32 %i.cw, 1
  store i32 %i.cz, ptr %i.by, align 8, !tbaa !195
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph ], [ %indvars.iv60.ph, %scalar.ph.preheader ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv62
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !107
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv60
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !107
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  %6 = trunc nuw i64 %indvars.iv60 to i32
  %i.de = icmp sgt i32 %6, 0
  br i1 %i.de, label %scalar.ph, label %.loopexit, !llvm.loop !317

bb.i:                                             ; preds = %.critedge, %Ctx__s_push.exit41, %split
  %.035 = phi ptr [ %i.q, %split ], [ null, %Ctx__s_push.exit41 ], [ null, %.critedge ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define internal void @DictItemExpr__emit_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void %i.d(ptr noundef nonnull %i.b, ptr noundef %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  tail call void %i.h(ptr noundef nonnull %i.f, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DictItemExpr__dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.e(ptr noundef nonnull %i.b) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !224
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223  ; 4 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.k(ptr noundef nonnull %i.h) #12
  %.pre17 = load ptr, ptr %i.g, align 8, !tbaa !223
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre17, %bb.g ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %i.l) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NamedExpr__emit_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void %i.d(ptr noundef nonnull %i.b, ptr noundef %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !227
  %i.g = tail call fastcc i32 @Ctx__emit_(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 0, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call zeroext i1 %i.l(ptr noundef nonnull %i.i, ptr noundef %1) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NamedExpr__dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.e(ptr noundef nonnull %i.b) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228  ; 4 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.k(ptr noundef nonnull %i.h) #12
  %.pre17 = load ptr, ptr %i.g, align 8, !tbaa !228
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre17, %bb.g ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %i.l) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @push_f_context(ptr noundef %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185
  %i.b = tail call ptr @FuncDecl__rcnew(ptr noundef %i.a, ptr %1, i32 %2) #12 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr [48 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i32 %i.l, ptr %i.m, align 8, !tbaa !318
  %i.n = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load i32, ptr %i.n, align 8, !tbaa !193 ; 2 uses
  %i.o = icmp sgt i32 %.val, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.q = zext i1 %i.o to i8
  store i8 %i.q, ptr %i.p, align 8, !tbaa !319
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !192
  %i.t = sext i32 %.val to i64
  %i.u = getelementptr [112 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -112     ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.y = load i32, ptr %i.x, align 8, !tbaa !320  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !321
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 216 ; 2 uses
  %i.ad = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ac) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ac, i32 noundef %i.ad) #12
end_hunk_2
