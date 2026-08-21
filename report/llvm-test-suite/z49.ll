Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z49?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@PS_PrintWord:bb.a
  %i.e = alloca [20 x i8], align 16               ; 4 uses
  %i.f = load i32, ptr @TotalWordCount, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr @TotalWordCount, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 4095                       ; 3 uses
  %i.k = load i32, ptr @currentfont, align 4, !tbaa !4
  %.not = icmp eq i32 %i.j, %i.k
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.j, ptr @currentfont, align 4, !tbaa !4
  %i.l = tail call i32 @FontHalfXHeight(i32 noundef %i.j) #10
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr @currentxheight2, align 2, !tbaa !18
  %i.n = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.o = load i32, ptr @currentfont, align 4, !tbaa !4
  %i.p = tail call i32 @FontSize(i32 noundef %i.o, ptr noundef nonnull %0) #10
  %i.q = load i32, ptr @currentfont, align 4, !tbaa !4
  %i.r = tail call ptr @FontName(i32 noundef %i.q) #10
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.174, i32 noundef %i.p, ptr noundef %i.r) #10 ; 0 uses
  %i.t = load i32, ptr @wordcount, align 4, !tbaa !4 ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @wordcount, align 4, !tbaa !4
  %i.v = icmp sgt i32 %i.t, 3
  %i.w = load ptr, ptr @out_fp, align 8, !tbaa !8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @putc(i32 noundef 10, ptr noundef %i.w) ; 0 uses
  store i32 0, ptr @wordcount, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = tail call i32 @putc(i32 noundef 32, ptr noundef %i.w) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.z = load i32, ptr %i.h, align 8
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 1023                     ; 4 uses
  %i.ac = load i32, ptr @currentcolour, align 4, !tbaa !4
  %.not182 = icmp eq i32 %i.ab, %i.ac
  br i1 %.not182, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ab, ptr @currentcolour, align 4, !tbaa !4
  %.not183 = icmp eq i32 %i.ab, 0
  br i1 %.not183, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ae = tail call ptr @ColourCommand(i32 noundef %i.ab) #10
  %fputs = tail call i32 @fputs(ptr %i.ae, ptr %i.ad) ; 0 uses
  %i.af = load i32, ptr @wordcount, align 4, !tbaa !4 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @wordcount, align 4, !tbaa !4
  %i.ah = icmp sgt i32 %i.af, 3
  %i.ai = load ptr, ptr @out_fp, align 8, !tbaa !8 ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ai) ; 0 uses
  store i32 0, ptr @wordcount, align 4, !tbaa !4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call i32 @putc(i32 noundef 32, ptr noundef %i.ai) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.e
  %i.al = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.am = load i32, ptr %i.h, align 8
  %i.an = and i32 %i.am, 4095
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre = load i8, ptr %i.as, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  %i.at = phi i8 [ %.pre, %bb.j ], [ %i.by, %.loopexit ] ; 2 uses
  %.0162 = phi ptr [ %i.as, %bb.j ], [ %.1163, %.loopexit ] ; 2 uses
  %.0161 = phi ptr [ %i.as, %bb.j ], [ %i.av, %.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0162, i64 1 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0161, i64 1 ; 2 uses
  store i8 %i.at, ptr %.0161, align 1, !tbaa !19
  %i.aw = zext i8 %i.at to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %switch = icmp ult i8 %i.ay, 2
  br i1 %switch, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load i8, ptr %.0162, align 1, !tbaa !19 ; 3 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 256 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %i.bh = icmp eq i8 %i.bg, %i.az
  br i1 %i.bh, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.l
  %i.bi = load i8, ptr %i.au, align 1, !tbaa !19  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph241, %.preheader223.preheader
  %.0158240 = phi ptr [ %i.bf, %.lr.ph241 ], [ %i.bv, %.preheader223.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0158240, i64 1 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !19  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, %i.bi
  br i1 %i.bl, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.bm = phi i8 [ %i.bo, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
  %.0157233 = phi ptr [ %i.bp, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %.1159232 = phi ptr [ %i.bn, %bb.n ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1159232, i64 1 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19  ; 4 uses
  %.not185 = icmp eq i8 %i.bo, 0
  %.not186 = icmp eq i8 %i.bm, 0
  %or.cond = or i1 %.not186, %.not185
  br i1 %or.cond, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.0157233, i64 1 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %bb.n, %.lr.ph, %bb.m
  %.1159.lcssa = phi ptr [ %i.bj, %bb.m ], [ %.1159232, %.lr.ph ], [ %i.bn, %bb.n ] ; 2 uses
  %.0157.lcssa = phi ptr [ %i.au, %bb.m ], [ %.0157233, %.lr.ph ], [ %i.bp, %bb.n ]
  %.lcssa230 = phi i8 [ %i.bk, %bb.m ], [ %i.bm, %.lr.ph ], [ %i.bo, %bb.n ]
  %i.bs = getelementptr i8, ptr %.1159.lcssa, i64 1 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %.preheader223.preheader

.preheader223.preheader:                          ; preds = %.critedge
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.bs)
  %scevgep256 = getelementptr i8, ptr %.1159.lcssa, i64 %strlen
  %i.bv = getelementptr inbounds nuw i8, ptr %scevgep256, i64 2 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19
  %i.bx = icmp eq i8 %i.bw, %i.az
  br i1 %i.bx, label %bb.m, label %.loopexit, !llvm.loop !51

bb.o:                                             ; preds = %.critedge
  store i8 %.lcssa230, ptr %.0161, align 1, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader223.preheader, %bb.l, %bb.k, %bb.o
  %.1163 = phi ptr [ %i.au, %bb.k ], [ %.0157.lcssa, %bb.o ], [ %i.au, %bb.l ], [ %i.au, %.preheader223.preheader ] ; 2 uses
  %i.by = load i8, ptr %.1163, align 1, !tbaa !19 ; 2 uses
  %.not188 = icmp eq i8 %i.by, 0
  br i1 %.not188, label %bb.p, label %bb.k, !llvm.loop !52

bb.p:                                             ; preds = %.loopexit
  store i8 0, ptr %i.av, align 1, !tbaa !19
  %i.bz = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.ca = load i32, ptr %i.h, align 8
  %i.cb = and i32 %i.ca, 4095
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [96 x i8], ptr %i.bz, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54 ; 4 uses
  %i.ci = load i16, ptr @currentxheight2, align 2, !tbaa !18
  %i.cj = sext i16 %i.ci to i32
  %i.ck = sub nsw i32 %2, %i.cj                   ; 2 uses
  %i.cl = load i32, ptr @cpexists, align 4, !tbaa !4
  %.not189 = icmp ne i32 %i.cl, 0
  %i.cm = load i32, ptr @currenty, align 4
  %i.cn = icmp eq i32 %i.cm, %i.ck
  %or.cond210 = select i1 %.not189, i1 %i.cn, i1 false
  br i1 %or.cond210, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.co = icmp sgt i32 %1, -1
  br i1 %i.co, label %.preheader335, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = sub nsw i32 0, %1
  %i.cq = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.cr = tail call i32 @putc(i32 noundef 45, ptr noundef %i.cq) ; 0 uses
  br label %.preheader335

.preheader335:                                    ; preds = %bb.q, %bb.r
  %.1151.ph = phi i32 [ %i.cp, %bb.r ], [ %1, %bb.q ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader335, %bb.s
  %indvars.iv274 = phi i32 [ %indvars.iv.next275, %bb.s ], [ 1, %.preheader335 ] ; 2 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.s ], [ 0, %.preheader335 ] ; 2 uses
  %.1151 = phi i32 [ %i.cw, %bb.s ], [ %.1151.ph, %.preheader335 ] ; 3 uses
  %i.cs = urem i32 %.1151, 10
  %i.ct = trunc nuw nsw i32 %i.cs to i8
  %i.cu = or disjoint i8 %i.ct, 48
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !19
  %i.cw = udiv i32 %.1151, 10
  %.not195 = icmp samesign ult i32 %.1151, 10
  %indvars.iv.next275 = add nuw i32 %indvars.iv274, 1
  br i1 %.not195, label %.preheader220.preheader, label %bb.s, !llvm.loop !55

.preheader220.preheader:                          ; preds = %bb.s
  %3 = sext i32 %indvars.iv274 to i64
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.preheader, %.preheader220
  %indvars.iv276 = phi i64 [ %3, %.preheader220.preheader ], [ %indvars.iv.next277, %.preheader220 ]
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next277
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !19
  %i.cz = sext i8 %i.cy to i32
  %i.da = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.db = tail call i32 @putc(i32 noundef %i.cz, ptr noundef %i.da) ; 0 uses
  %.not196 = icmp eq i64 %indvars.iv.next277, 0
  br i1 %.not196, label %bb.t, label %.preheader220, !llvm.loop !56

bb.t:                                             ; preds = %.preheader220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dc = load i32, ptr %i.h, align 8
  %i.dd = and i32 %i.dc, 4194304
  %.not197 = icmp eq i32 %i.dd, 0
  %i.de = select i1 %.not197, ptr @.str.177, ptr @.str.176
  br label %bb.ab

bb.u:                                             ; preds = %bb.p
  store i32 %i.ck, ptr @currenty, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.df = icmp sgt i32 %1, -1
  br i1 %i.df, label %.preheader337, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = sub nsw i32 0, %1
  %i.dh = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.di = tail call i32 @putc(i32 noundef 45, ptr noundef %i.dh) ; 0 uses
  br label %.preheader337

.preheader337:                                    ; preds = %bb.u, %bb.v
  %.1147.ph = phi i32 [ %i.dg, %bb.v ], [ %1, %bb.u ]
  br label %bb.w

bb.w:                                             ; preds = %.preheader337, %bb.w
  %indvars.iv258 = phi i32 [ %indvars.iv.next259, %bb.w ], [ 1, %.preheader337 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.preheader337 ] ; 2 uses
  %.1147 = phi i32 [ %i.dn, %bb.w ], [ %.1147.ph, %.preheader337 ] ; 3 uses
  %i.dj = urem i32 %.1147, 10
  %i.dk = trunc nuw nsw i32 %i.dj to i8
  %i.dl = or disjoint i8 %i.dk, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !19
  %i.dn = udiv i32 %.1147, 10
  %.not190 = icmp samesign ult i32 %.1147, 10
  %indvars.iv.next259 = add nuw i32 %indvars.iv258, 1
  br i1 %.not190, label %.preheader222.preheader, label %bb.w, !llvm.loop !57

.preheader222.preheader:                          ; preds = %bb.w
  %4 = sext i32 %indvars.iv258 to i64
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.preheader, %.preheader222
  %indvars.iv260 = phi i64 [ %4, %.preheader222.preheader ], [ %indvars.iv.next261, %.preheader222 ]
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, -1 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next261
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19
  %i.dq = sext i8 %i.dp to i32
  %i.dr = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ds = tail call i32 @putc(i32 noundef %i.dq, ptr noundef %i.dr) ; 0 uses
  %.not191 = icmp eq i64 %indvars.iv.next261, 0
  br i1 %.not191, label %bb.x, label %.preheader222, !llvm.loop !58

bb.x:                                             ; preds = %.preheader222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.dt = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.du = tail call i32 @putc(i32 noundef 32, ptr noundef %i.dt) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.dv = load i32, ptr @currenty, align 4, !tbaa !4 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, -1
  br i1 %i.dw, label %.preheader336, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = sub nsw i32 0, %i.dv
  %i.dy = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.dz = tail call i32 @putc(i32 noundef 45, ptr noundef %i.dy) ; 0 uses
  br label %.preheader336

.preheader336:                                    ; preds = %bb.x, %bb.y
  %.1143.ph = phi i32 [ %i.dx, %bb.y ], [ %i.dv, %bb.x ]
  br label %bb.z

bb.z:                                             ; preds = %.preheader336, %bb.z
  %indvars.iv266 = phi i32 [ %indvars.iv.next267, %bb.z ], [ 1, %.preheader336 ] ; 2 uses
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %bb.z ], [ 0, %.preheader336 ] ; 2 uses
  %.1143 = phi i32 [ %i.ee, %bb.z ], [ %.1143.ph, %.preheader336 ] ; 3 uses
  %i.ea = urem i32 %.1143, 10
  %i.eb = trunc nuw nsw i32 %i.ea to i8
  %i.ec = or disjoint i8 %i.eb, 48
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv263
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !19
  %i.ee = udiv i32 %.1143, 10
  %.not192 = icmp samesign ult i32 %.1143, 10
  %indvars.iv.next267 = add nuw i32 %indvars.iv266, 1
  br i1 %.not192, label %.preheader221.preheader, label %bb.z, !llvm.loop !59

.preheader221.preheader:                          ; preds = %bb.z
  %5 = sext i32 %indvars.iv266 to i64
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.preheader, %.preheader221
  %indvars.iv268 = phi i64 [ %5, %.preheader221.preheader ], [ %indvars.iv.next269, %.preheader221 ]
  %indvars.iv.next269 = add nsw i64 %indvars.iv268, -1 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next269
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !19
  %i.eh = sext i8 %i.eg to i32
  %i.ei = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ej = tail call i32 @putc(i32 noundef %i.eh, ptr noundef %i.ei) ; 0 uses
  %.not193 = icmp eq i64 %indvars.iv.next269, 0
  br i1 %.not193, label %bb.aa, label %.preheader221, !llvm.loop !60

bb.aa:                                            ; preds = %.preheader221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.ek = load i32, ptr %i.h, align 8
  %i.el = and i32 %i.ek, 4194304
  %.not194 = icmp eq i32 %i.el, 0
  %i.em = select i1 %.not194, ptr @.str.179, ptr @.str.178
  store i32 1, ptr @cpexists, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.0154 = phi ptr [ %i.de, %bb.t ], [ %i.em, %bb.aa ] ; 2 uses
  %i.en = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.eo = tail call i32 @putc(i32 noundef 40, ptr noundef %i.en) ; 0 uses
  %i.ep = load i8, ptr %i.as, align 8, !tbaa !19
  %i.eq = zext i8 %i.ep to i64                    ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !18
  %.not198 = icmp eq i16 %i.es, 0
  br i1 %.not198, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.180, ptr noundef nonnull %.0154) #10 ; 0 uses
  %i.ev = load i8, ptr %i.as, align 8, !tbaa !19
  %i.ew = zext i8 %i.ev to i64                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !18
  %i.ez = zext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.ez ; 2 uses
  %i.fb = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.fc = load i8, ptr %i.fa, align 2, !tbaa !61  ; 2 uses
  %.not8.i = icmp eq i8 %i.fc, 0
  br i1 %.not8.i, label %PrintComposite.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.fd = load i32, ptr %i.h, align 8
  %i.fe = and i32 %i.fd, 4194304
  %.not7.i = icmp eq i32 %i.fe, 0
  %i.ff = select i1 %.not7.i, ptr @.str.189, ptr @.str.188
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i
  %i.fg = phi i8 [ %i.fc, %.lr.ph.i ], [ %i.fq, %bb.ad ]
  %.09.i = phi ptr [ %i.fa, %.lr.ph.i ], [ %i.fp, %bb.ad ] ; 3 uses
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !63
  %i.fk = sext i16 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !64
  %i.fn = sext i16 %i.fm to i32
  %i.fo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.187, i32 noundef %i.fk, i32 noundef %i.fn, i32 noundef %i.fh, ptr noundef nonnull %i.ff) #10 ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.09.i, i64 6 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !61  ; 2 uses
  %.not.i = icmp eq i8 %i.fq, 0
  br i1 %.not.i, label %PrintComposite.exit.loopexit, label %bb.ad, !llvm.loop !65

PrintComposite.exit.loopexit:                     ; preds = %bb.ad
  %.pre298 = load i8, ptr %i.as, align 8, !tbaa !19
  %.pre305 = zext i8 %.pre298 to i64
  br label %PrintComposite.exit

PrintComposite.exit:                              ; preds = %PrintComposite.exit.loopexit, %bb.ac
  %.pre-phi306 = phi i64 [ %.pre305, %PrintComposite.exit.loopexit ], [ %i.ew, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.fr = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.fs = load i32, ptr %i.h, align 8
  %i.ft = and i32 %i.fs, 4095
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [96 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !66
  %i.fx = getelementptr inbounds nuw [10 x i8], ptr %i.fw, i64 %.pre-phi306
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 6
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !67 ; 2 uses
  %i.ga = sext i16 %i.fz to i32                   ; 2 uses
  %i.gb = icmp sgt i16 %i.fz, -1
  br i1 %i.gb, label %.preheader334, label %bb.ae

bb.ae:                                            ; preds = %PrintComposite.exit
  %i.gc = sub nsw i32 0, %i.ga
  %i.gd = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ge = tail call i32 @putc(i32 noundef 45, ptr noundef %i.gd) ; 0 uses
  br label %.preheader334

.preheader334:                                    ; preds = %PrintComposite.exit, %bb.ae
  %.1139.ph = phi i32 [ %i.gc, %bb.ae ], [ %i.ga, %PrintComposite.exit ]
  br label %bb.af

bb.af:                                            ; preds = %.preheader334, %bb.af
  %indvars.iv282 = phi i32 [ %indvars.iv.next283, %bb.af ], [ 1, %.preheader334 ] ; 2 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %bb.af ], [ 0, %.preheader334 ] ; 2 uses
  %.1139 = phi i32 [ %i.gj, %bb.af ], [ %.1139.ph, %.preheader334 ] ; 3 uses
  %i.gf = urem i32 %.1139, 10
  %i.gg = trunc nuw nsw i32 %i.gf to i8
  %i.gh = or disjoint i8 %i.gg, 48
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv279
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !19
  %i.gj = udiv i32 %.1139, 10
  %.not199 = icmp ult i32 %.1139, 10
  %indvars.iv.next283 = add nuw i32 %indvars.iv282, 1
  br i1 %.not199, label %.preheader219.preheader, label %bb.af, !llvm.loop !69

.preheader219.preheader:                          ; preds = %bb.af
  %6 = sext i32 %indvars.iv282 to i64
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %.preheader219
  %indvars.iv284 = phi i64 [ %6, %.preheader219.preheader ], [ %indvars.iv.next285, %.preheader219 ]
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, -1 ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next285
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !19
  %i.gm = sext i8 %i.gl to i32
  %i.gn = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.go = tail call i32 @putc(i32 noundef %i.gm, ptr noundef %i.gn) ; 0 uses
  %.not200 = icmp eq i64 %indvars.iv.next285, 0
  br i1 %.not200, label %bb.ag, label %.preheader219, !llvm.loop !70

bb.ag:                                            ; preds = %.preheader219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.gp = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.gq = tail call i32 @putc(i32 noundef 40, ptr noundef %i.gp) ; 0 uses
  %i.gr = load i32, ptr %i.h, align 8             ; 2 uses
  %i.gs = and i32 %i.gr, 4194304
  %.not201 = icmp eq i32 %i.gs, 0
  %i.gt = select i1 %.not201, ptr @.str.182, ptr @.str.181
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr @EightBitToPrintForm, i64 %i.eq
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !36
  %i.gw = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.gx = tail call i32 @fputs(ptr noundef %i.gv, ptr noundef %i.gw) ; 0 uses
  %.pre299 = load i32, ptr %i.h, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gy = phi i32 [ %i.gr, %bb.ag ], [ %.pre299, %bb.ah ]
  %.1155 = phi ptr [ %i.gt, %bb.ag ], [ %.0154, %bb.ah ] ; 2 uses
  %i.gz = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.ha = and i32 %i.gy, 4095
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !71
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 60
  %i.hg = load i8, ptr %i.hf, align 4
  %i.hh = and i8 %i.hg, 127
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @MapTable, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2945 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !19  ; 2 uses
  %.not202242 = icmp eq i8 %i.hn, 0
  br i1 %.not202242, label %._crit_edge, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.ai, %bb.au
  %i.ho = phi i8 [ %i.lp, %bb.au ], [ %i.hn, %bb.ai ]
  %.2244 = phi ptr [ %.4, %bb.au ], [ %.1155, %bb.ai ] ; 4 uses
  %.2164243 = phi ptr [ %i.lo, %bb.au ], [ %i.hm, %bb.ai ] ; 5 uses
  %i.hp = getelementptr inbounds i8, ptr %.2164243, i64 -1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !19
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !19
  %i.hu = zext i8 %i.ho to i64                    ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !19  ; 2 uses
  %i.hx = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.hy = load i32, ptr %i.h, align 8
  %i.hz = and i32 %i.hy, 4095
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [96 x i8], ptr %i.hx, i64 %i.ia ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !72
  %i.ie = zext i8 %i.ht to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !18 ; 2 uses
  %i.ih = icmp eq i16 %i.ig, 0
  br i1 %i.ih, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph245
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !73
  %i.ik = zext i16 %i.ig to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %bb.ak ], [ %i.ik, %bb.aj ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv287
  %i.im = load i8, ptr %i.il, align 1, !tbaa !19  ; 2 uses
  %i.in = icmp ugt i8 %i.im, %i.hw
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  br i1 %i.in, label %bb.ak, label %bb.al, !llvm.loop !74

bb.al:                                            ; preds = %bb.ak
  %i.io = icmp eq i8 %i.im, %i.hw
  br i1 %i.io, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !75
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !76
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %indvars.iv287
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !19
  %i.iv = zext i8 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !18 ; 2 uses
  %.not203 = icmp eq i16 %i.ix, 0
  br i1 %.not203, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = sext i16 %i.ix to i32
  %i.iz = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ja = sub nsw i32 0, %i.iy
  %i.jb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.183, ptr noundef %.2244, i32 noundef %i.ja) #10 ; 0 uses
  %i.jc = load i32, ptr @wordcount, align 4, !tbaa !4
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr @wordcount, align 4, !tbaa !4
  %i.je = load i32, ptr %i.h, align 8
  %i.jf = and i32 %i.je, 4194304
  %.not204 = icmp eq i32 %i.jf, 0
  %i.jg = select i1 %.not204, ptr @.str.185, ptr @.str.184
  %.pre300 = load i8, ptr %.2164243, align 1, !tbaa !19
  %.pre302 = zext i8 %.pre300 to i64
  br label %.thread

.thread:                                          ; preds = %bb.al, %.lr.ph245, %bb.an, %bb.am
  %.pre-phi = phi i64 [ %i.hu, %bb.al ], [ %i.hu, %.lr.ph245 ], [ %.pre302, %bb.an ], [ %i.hu, %bb.am ] ; 2 uses
  %.3 = phi ptr [ %.2244, %bb.al ], [ %.2244, %.lr.ph245 ], [ %i.jg, %bb.an ], [ %.2244, %bb.am ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %.pre-phi
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !18
  %.not205 = icmp eq i16 %i.ji, 0
  br i1 %.not205, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.jj = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.jk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.180, ptr noundef %.3) #10 ; 0 uses
  %i.jl = load i8, ptr %.2164243, align 1, !tbaa !19
  %i.jm = zext i8 %i.jl to i64                    ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !18
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.jp ; 2 uses
  %i.jr = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.js = load i8, ptr %i.jq, align 2, !tbaa !61  ; 2 uses
  %.not8.i211 = icmp eq i8 %i.js, 0
  br i1 %.not8.i211, label %PrintComposite.exit216, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %bb.ao
  %i.jt = load i32, ptr %i.h, align 8
  %i.ju = and i32 %i.jt, 4194304
  %.not7.i213 = icmp eq i32 %i.ju, 0
  %i.jv = select i1 %.not7.i213, ptr @.str.189, ptr @.str.188
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i212
  %i.jw = phi i8 [ %i.js, %.lr.ph.i212 ], [ %i.kg, %bb.ap ]
  %.09.i214 = phi ptr [ %i.jq, %.lr.ph.i212 ], [ %i.kf, %bb.ap ] ; 3 uses
  %i.jx = zext i8 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %.09.i214, i64 2
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !63
  %i.ka = sext i16 %i.jz to i32
  %i.kb = getelementptr inbounds nuw i8, ptr %.09.i214, i64 4
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !64
  %i.kd = sext i16 %i.kc to i32
  %i.ke = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.187, i32 noundef %i.ka, i32 noundef %i.kd, i32 noundef %i.jx, ptr noundef nonnull %i.jv) #10 ; 0 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.09.i214, i64 6 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !61  ; 2 uses
  %.not.i215 = icmp eq i8 %i.kg, 0
  br i1 %.not.i215, label %PrintComposite.exit216.loopexit, label %bb.ap, !llvm.loop !65

PrintComposite.exit216.loopexit:                  ; preds = %bb.ap
  %.pre301 = load i8, ptr %.2164243, align 1, !tbaa !19
  %.pre303 = zext i8 %.pre301 to i64
  br label %PrintComposite.exit216

PrintComposite.exit216:                           ; preds = %PrintComposite.exit216.loopexit, %bb.ao
  %.pre-phi304 = phi i64 [ %.pre303, %PrintComposite.exit216.loopexit ], [ %i.jm, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.kh = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.ki = load i32, ptr %i.h, align 8
  %i.kj = and i32 %i.ki, 4095
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [96 x i8], ptr %i.kh, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !66
  %i.kn = getelementptr inbounds nuw [10 x i8], ptr %i.km, i64 %.pre-phi304
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 6
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !67 ; 2 uses
  %i.kq = sext i16 %i.kp to i32                   ; 2 uses
  %i.kr = icmp sgt i16 %i.kp, -1
  br i1 %i.kr, label %.preheader333, label %bb.aq

bb.aq:                                            ; preds = %PrintComposite.exit216
  %i.ks = sub nsw i32 0, %i.kq
  %i.kt = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ku = tail call i32 @putc(i32 noundef 45, ptr noundef %i.kt) ; 0 uses
  br label %.preheader333

.preheader333:                                    ; preds = %PrintComposite.exit216, %bb.aq
  %.1.ph = phi i32 [ %i.ks, %bb.aq ], [ %i.kq, %PrintComposite.exit216 ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader333, %bb.ar
  %indvars.iv293 = phi i32 [ %indvars.iv.next294, %bb.ar ], [ 1, %.preheader333 ] ; 2 uses
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.ar ], [ 0, %.preheader333 ] ; 2 uses
  %.1 = phi i32 [ %i.kz, %bb.ar ], [ %.1.ph, %.preheader333 ] ; 3 uses
  %i.kv = urem i32 %.1, 10
  %i.kw = trunc nuw nsw i32 %i.kv to i8
  %i.kx = or disjoint i8 %i.kw, 48
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv290
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !19
  %i.kz = udiv i32 %.1, 10
  %.not206 = icmp ult i32 %.1, 10
  %indvars.iv.next294 = add nuw i32 %indvars.iv293, 1
  br i1 %.not206, label %.preheader.preheader, label %bb.ar, !llvm.loop !77

.preheader.preheader:                             ; preds = %bb.ar
  %7 = sext i32 %indvars.iv293 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv295 = phi i64 [ %7, %.preheader.preheader ], [ %indvars.iv.next296, %.preheader ]
  %indvars.iv.next296 = add nsw i64 %indvars.iv295, -1 ; 3 uses
  %i.la = getelementptr inbounds i8, ptr %i.e, i64 %indvars.iv.next296
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !19
  %i.lc = sext i8 %i.lb to i32
  %i.ld = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.le = tail call i32 @putc(i32 noundef %i.lc, ptr noundef %i.ld) ; 0 uses
  %.not207 = icmp eq i64 %indvars.iv.next296, 0
  br i1 %.not207, label %bb.as, label %.preheader, !llvm.loop !78

bb.as:                                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %i.lf = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.lg = tail call i32 @putc(i32 noundef 40, ptr noundef %i.lf) ; 0 uses
  %i.lh = load i32, ptr %i.h, align 8
  %i.li = and i32 %i.lh, 4194304
  %.not208 = icmp eq i32 %i.li, 0
  %i.lj = select i1 %.not208, ptr @.str.182, ptr @.str.181
  br label %bb.au

bb.at:                                            ; preds = %.thread
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr @EightBitToPrintForm, i64 %.pre-phi
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !36
  %i.lm = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ln = tail call i32 @fputs(ptr noundef %i.ll, ptr noundef %i.lm) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.4 = phi ptr [ %i.lj, %bb.as ], [ %.3, %bb.at ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.2164243, i64 1 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19  ; 2 uses
  %.not202 = icmp eq i8 %i.lp, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph245, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.au, %bb.ai
  %.2.lcssa = phi ptr [ %.1155, %bb.ai ], [ %.4, %bb.au ] ; 2 uses
  %i.lq = load i32, ptr @wordcount, align 4, !tbaa !4 ; 2 uses
  %i.lr = add nsw i32 %i.lq, 1
  store i32 %i.lr, ptr @wordcount, align 4, !tbaa !4
  %i.ls = icmp sgt i32 %i.lq, 3
  %i.lt = load ptr, ptr @out_fp, align 8, !tbaa !8 ; 2 uses
  br i1 %i.ls, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  %i.lu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lt, ptr noundef nonnull @.str.186, ptr noundef %.2.lcssa) #10 ; 0 uses
  store i32 0, ptr @wordcount, align 4, !tbaa !4
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %i.lv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lt, ptr noundef nonnull @.str.180, ptr noundef %.2.lcssa) #10 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPlainGraphic(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !22
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.190) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintUnderline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = load i32, ptr @currentcolour, align 4, !tbaa !4
  %.not = icmp eq i32 %1, %i.a
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr @currentcolour, align 4, !tbaa !4
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.c = tail call ptr @ColourCommand(i32 noundef %1) #10
  %fputs = tail call i32 @fputs(ptr %i.c, ptr %i.b) ; 0 uses
  %i.d = load i32, ptr @wordcount, align 4, !tbaa !4 ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @wordcount, align 4, !tbaa !4
  %i.f = icmp sgt i32 %i.d, 3
  %i.g = load ptr, ptr @out_fp, align 8, !tbaa !8 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @putc(i32 noundef 10, ptr noundef %i.g) ; 0 uses
  store i32 0, ptr @wordcount, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @putc(i32 noundef 32, ptr noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %i.j = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.k = load ptr, ptr @finfo, align 8, !tbaa !43
  %i.l = zext i32 %0 to i64
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i16, ptr %i.n, align 8, !tbaa !80
  %i.p = sext i16 %i.o to i32
  %i.q = sub nsw i32 %4, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.s = load i16, ptr %i.r, align 2, !tbaa !81
  %i.t = sext i16 %i.s to i32
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.191, i32 noundef %2, i32 noundef %3, i32 noundef %i.q, i32 noundef %i.t) #10 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @PS_CoordRotate(i32 noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.b = sitofp i32 %0 to float
  %i.c = fmul nnan float %i.b, 7.812500e-03
  %i.d = fpext float %i.c to double
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.192, double noundef %i.d) #10 ; 0 uses
  store i32 0, ptr @cpexists, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkSource(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = load ptr, ptr @out_fp, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @ConvertToPDFName.buff, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false) #10
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ConvertToPDFName.buff) #11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.016.ptr28.i = getelementptr inbounds nuw i8, ptr @ConvertToPDFName.buff, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %.not29.i = icmp eq i8 %i.d, 0
  br i1 %.not29.i, label %ConvertToPDFName.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.f = phi i8 [ %i.d, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.016.ptr32.i = phi ptr [ %.016.ptr28.i, %.lr.ph.i ], [ %.016.ptr.i, %bb.d ]
  %.031.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %.016.idx30.i = phi i64 [ %i.b, %.lr.ph.i ], [ %.1.idx.i, %bb.d ] ; 2 uses
  %.not20.i = icmp slt i64 %.016.idx30.i, 199
  br i1 %.not20.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 49, i32 noundef 12, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #10 ; 0 uses
  %.pre.i = load i8, ptr %.031.i, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i8 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.i = and i8 %i.h, -33
  %i.j = add i8 %i.i, -65
  %or.cond26.i = icmp ult i8 %i.j, 26
  %i.k = add i8 %i.h, -48
  %or.cond25.i = icmp ult i8 %i.k, 10
  %or.cond27.i = or i1 %or.cond25.i, %or.cond26.i
  %storemerge.i = select i1 %or.cond27.i, i8 %i.h, i8 95
  %.1.idx.i = add nuw nsw i64 %.016.idx30.i, 1    ; 2 uses
  store i8 %storemerge.i, ptr %.016.ptr32.i, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %.016.ptr.i = getelementptr inbounds nuw i8, ptr @ConvertToPDFName.buff, i64 %.1.idx.i ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %ConvertToPDFName.exit, label %bb.b, !llvm.loop !26

ConvertToPDFName.exit:                            ; preds = %bb.d, %bb.a
  %.016.ptr.lcssa.i = phi ptr [ %.016.ptr28.i, %bb.a ], [ %.016.ptr.i, %bb.d ]
  store i8 0, ptr %.016.ptr.lcssa.i, align 1, !tbaa !19
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.193, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @ConvertToPDFName.buff) #10 ; 0 uses
  %i.o = load i8, ptr @zz_lengths, align 1, !tbaa !19 ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  store i32 %i.p, ptr @zz_size, align 4, !tbaa !4
  %i.q = zext i8 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ConvertToPDFName.exit
  %i.u = load ptr, ptr @no_fpos, align 8, !tbaa !22
  %i.v = tail call ptr @GetMemory(i32 noundef %i.p, ptr noundef %i.u) #10
  br label %bb.g

bb.f:                                             ; preds = %ConvertToPDFName.exit
  store ptr %i.s, ptr @zz_hold, align 8, !tbaa !24
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !19
  store ptr %i.w, ptr %i.r, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.s, %bb.f ] ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
end_hunk_0
