Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/bitap?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@bitap:bb.a
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str, ptr noundef nonnull @Progname) #13 ; 0 uses
  tail call void @exit(i32 noundef 2) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp slt i32 %3, 16
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @re(i32 noundef %2, i32 noundef %3, i32 noundef %4) #11
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  tail call void @re1(i32 noundef %2, i32 noundef %3, i32 noundef %4) #11
  br label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.o = icmp sgt i32 %4, 0                       ; 2 uses
  %i.p = load i32, ptr @JUMP, align 4
  %i.q = icmp eq i32 %i.p, 1
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @asearch1(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %4) #11
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @asearch(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %4) #11
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.r = load i32, ptr @I, align 4, !tbaa !8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.n, label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.m
  %.pre187 = load i32, ptr @Init1, align 4, !tbaa !8
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -1, ptr @Init1, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge186, %bb.n
  %i.t = phi i32 [ %.pre187, %._crit_edge186 ], [ -1, %bb.n ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 49151
  %i.v = load i32, ptr @Init, align 4, !tbaa !8
  %i.w = load i32, ptr @D_endpos, align 4, !tbaa !8 ; 5 uses
  store i8 10, ptr %i.u, align 1, !tbaa !16
  %i.x = icmp ugt i32 %.lcssa152, 1
  br i1 %i.x, label %.lr.ph157.preheader, label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %bb.o
  %i.y = add i32 %.lcssa152, -1                   ; 2 uses
  %i.z = add i32 %.lcssa152, -2
  %xtraiter = and i32 %i.y, 7                     ; 3 uses
  %i.aa = icmp ult i32 %i.z, 7
  br i1 %i.aa, label %.lr.ph157.epil.preheader, label %.lr.ph157.preheader.new

.lr.ph157.preheader.new:                          ; preds = %.lr.ph157.preheader
  %unroll_iter = and i32 %i.y, -8
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157, %.lr.ph157.preheader.new
  %.0113155 = phi i32 [ %i.w, %.lr.ph157.preheader.new ], [ %i.aq, %.lr.ph157 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph157.preheader.new ], [ %niter.next.7, %.lr.ph157 ]
  %i.ab = shl i32 %.0113155, 1
  %i.ac = or i32 %i.ab, %.0113155                 ; 2 uses
  %i.ad = shl i32 %i.ac, 1
  %i.ae = or i32 %i.ad, %i.ac                     ; 2 uses
  %i.af = shl i32 %i.ae, 1
  %i.ag = or i32 %i.af, %i.ae                     ; 2 uses
  %i.ah = shl i32 %i.ag, 1
  %i.ai = or i32 %i.ah, %i.ag                     ; 2 uses
  %i.aj = shl i32 %i.ai, 1
  %i.ak = or i32 %i.aj, %i.ai                     ; 2 uses
  %i.al = shl i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak                     ; 2 uses
  %i.an = shl i32 %i.am, 1
  %i.ao = or i32 %i.an, %i.am                     ; 2 uses
  %i.ap = shl i32 %i.ao, 1
  %i.aq = or i32 %i.ap, %i.ao                     ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge158.loopexit.unr-lcssa, label %.lr.ph157, !llvm.loop !11

._crit_edge158.loopexit.unr-lcssa:                ; preds = %.lr.ph157
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge158, label %.lr.ph157.epil.preheader

.lr.ph157.epil.preheader:                         ; preds = %._crit_edge158.loopexit.unr-lcssa, %.lr.ph157.preheader
  %.0113155.epil.init = phi i32 [ %i.w, %.lr.ph157.preheader ], [ %i.aq, %._crit_edge158.loopexit.unr-lcssa ]
  %lcmp.mod217 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph157.epil

.lr.ph157.epil:                                   ; preds = %.lr.ph157.epil, %.lr.ph157.epil.preheader
  %.0113155.epil = phi i32 [ %i.as, %.lr.ph157.epil ], [ %.0113155.epil.init, %.lr.ph157.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph157.epil ], [ 0, %.lr.ph157.epil.preheader ]
  %i.ar = shl i32 %.0113155.epil, 1
  %i.as = or i32 %i.ar, %.0113155.epil            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge158, label %.lr.ph157.epil, !llvm.loop !12

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit.unr-lcssa, %.lr.ph157.epil, %bb.o
  %.0113.lcssa = phi i32 [ %i.w, %bb.o ], [ %i.aq, %._crit_edge158.loopexit.unr-lcssa ], [ %i.as, %.lr.ph157.epil ]
  %i.at = xor i32 %.0113.lcssa, -1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 49152 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.am, %._crit_edge158
  %.0119 = phi i32 [ %i.v, %._crit_edge158 ], [ %.1120.lcssa, %bb.am ] ; 2 uses
  %.not131 = phi i1 [ false, %._crit_edge158 ], [ true, %bb.am ]
  %.0106 = phi i32 [ 49152, %._crit_edge158 ], [ %i.ev, %bb.am ] ; 2 uses
  %.0105 = phi i32 [ 0, %._crit_edge158 ], [ %.3.lcssa, %bb.am ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.p
  %.09.i = phi i32 [ %i.az, %.lr.ph.i ], [ 0, %bb.p ] ; 2 uses
  %i.av = sext i32 %.09.i to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = call i64 @read(i32 noundef %2, ptr noundef nonnull %i.aw, i64 noundef 4096) #11
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = add nsw i32 %.09.i, %i.ay               ; 6 uses
  %i.ba = icmp slt i32 %i.az, 49152               ; 2 uses
  %i.bb = icmp sgt i32 %i.ay, 0
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph.i, label %fill_buf.exit, !llvm.loop !0

fill_buf.exit:                                    ; preds = %.lr.ph.i
  %i.bd = icmp sgt i32 %i.az, 0
  br i1 %i.bd, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %fill_buf.exit
  %i.be = add nuw nsw i32 %i.az, 49152            ; 3 uses
  br i1 %.not131, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load i32, ptr @DELIMITER, align 4, !tbaa !8
  %.not132 = icmp eq i32 %i.bf, 0
  br i1 %.not132, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bg = load i32, ptr @D_length, align 4, !tbaa !8 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %._crit_edge162, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bg to i64
  br label %.lr.ph161

bb.s:                                             ; preds = %.lr.ph161
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count
  br i1 %exitcond185.not, label %._crit_edge162, label %.lr.ph161, !llvm.loop !13

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %bb.s
  %indvars.iv182 = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next183, %bb.s ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv182
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv182
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 49152
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %.not133 = icmp eq i8 %i.bj, %i.bm
  br i1 %.not133, label %bb.s, label %._crit_edge162

._crit_edge162:                                   ; preds = %bb.s, %.lr.ph161, %.preheader
  %.lcssa145 = phi i32 [ -1, %.preheader ], [ 0, %.lr.ph161 ], [ -1, %bb.s ]
  %spec.select = add nsw i32 %.lcssa145, %.0105
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge162, %bb.r, %bb.q
  %.2117 = phi i32 [ 49152, %bb.q ], [ 49151, %bb.r ], [ 49151, %._crit_edge162 ] ; 2 uses
  %.2 = phi i32 [ %.0105, %bb.q ], [ %.0105, %bb.r ], [ %spec.select, %._crit_edge162 ] ; 2 uses
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bn = zext nneg i32 %i.az to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bn
  %i.bp = load i32, ptr @D_length, align 4, !tbaa !8 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = call ptr @strncpy(ptr noundef nonnull %i.bo, ptr noundef nonnull %0, i64 noundef %i.bq) #11 ; 0 uses
  %i.bs = add i32 %i.bp, %i.be                    ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0114 = phi i32 [ %i.bs, %bb.u ], [ %i.be, %bb.t ] ; 2 uses
  %i.bv = icmp ult i32 %.2117, %.0114
  br i1 %i.bv, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %bb.v
  %i.bw = add nuw nsw i32 %i.az, 49151            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph171, %bb.ak
  %.3169 = phi i32 [ %.2, %.lr.ph171 ], [ %.5, %bb.ak ] ; 2 uses
  %.1107168.a = phi i32 [ %.0106, %.lr.ph171 ], [ %.3109, %bb.ak ] ; 3 uses
  %.3118167 = phi i32 [ %.2117, %.lr.ph171 ], [ %7, %bb.ak ] ; 4 uses
  %.1120166 = phi i32 [ %.0119, %.lr.ph171 ], [ %.2121, %bb.ak ] ; 2 uses
  %5 = add nuw i32 %.3118167, 1                   ; 2 uses
  %6 = zext i32 %.3118167 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = sext i8 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = and i32 %.1120166, %i.t
  %i.cd = lshr i32 %.1120166, 1
  %i.ce = and i32 %i.cb, %i.cd
  %i.cf = or i32 %i.ce, %i.cc                     ; 3 uses
  %i.cg = and i32 %i.cf, %i.w
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = add nsw i32 %.3169, 1                   ; 2 uses
  %i.ci = load i32, ptr @AND, align 4, !tbaa !8   ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1
  %.pre188 = load i32, ptr @endposition, align 4  ; 2 uses
  %i.ck = and i32 %.pre188, %i.cf                 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, %.pre188
  %or.cond208 = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond208, label %bb.y, label %._crit_edge190

._crit_edge190:                                   ; preds = %bb.x
  %i.cm = icmp eq i32 %i.ci, 0
  %i.cn = icmp ne i32 %i.ck, 0
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  %i.cp = zext i1 %i.co to i32
  %i.cq = load i32, ptr @INVERSE, align 4, !tbaa !8
  %.not136 = icmp eq i32 %i.cq, %i.cp
  br i1 %.not136, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge190
  %i.cr = load i32, ptr @FILENAMEONLY, align 4, !tbaa !8
  %.not137 = icmp eq i32 %i.cr, 0
  br i1 %.not137, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = load i32, ptr @num_of_matched, align 4, !tbaa !8
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr @num_of_matched, align 4, !tbaa !8
  %puts143 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %.not138 = icmp slt i32 %.1107168.a, %i.bw
  br i1 %.not138, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load i32, ptr @D_length, align 4, !tbaa !8
  %i.cv = sub i32 %.3118167, %i.cu
  call void @output(ptr noundef nonnull %i.a, i32 noundef %.1107168.a, i32 noundef %i.cv, i32 noundef %i.ch) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %._crit_edge190
  %i.cw = load i32, ptr @D_length, align 4, !tbaa !8
  %i.cx = sub i32 %5, %i.cw
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !8
  %i.cy = load i32, ptr @Init, align 4, !tbaa !8  ; 2 uses
  %i.cz = and i32 %i.cy, %i.t
  %i.da = lshr i32 %i.cy, 1
  %i.db = and i32 %i.da, %i.cb
  %i.dc = or i32 %i.db, %i.cz
  %i.dd = and i32 %i.dc, %i.at
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.w
  %.0122 = phi i32 [ %i.dd, %bb.ac ], [ %i.cf, %bb.w ] ; 2 uses
  %.2108 = phi i32 [ %i.cx, %bb.ac ], [ %.1107168.a, %bb.w ] ; 3 uses
  %.4 = phi i32 [ %i.ch, %bb.ac ], [ %.3169, %bb.w ] ; 2 uses
  %7 = add i32 %.3118167, 2                       ; 4 uses
  %8 = zext i32 %5 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %8
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = sext i8 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr @Mask, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8  ; 2 uses
  %i.dj = and i32 %.0122, %i.t
  %i.dk = lshr i32 %.0122, 1
  %i.dl = and i32 %i.di, %i.dk
  %i.dm = or i32 %i.dl, %i.dj                     ; 3 uses
  %i.dn = and i32 %i.dm, %i.w
  %.not139 = icmp eq i32 %i.dn, 0
  br i1 %.not139, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.do = add nsw i32 %.4, 1                      ; 2 uses
  %i.dp = load i32, ptr @AND, align 4, !tbaa !8   ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 1
  %.pre189 = load i32, ptr @endposition, align 4  ; 2 uses
  %i.dr = and i32 %.pre189, %i.dm                 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %.pre189
  %or.cond209 = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond209, label %bb.af, label %._crit_edge191

._crit_edge191:                                   ; preds = %bb.ae
  %i.dt = icmp eq i32 %i.dp, 0
  %i.du = icmp ne i32 %i.dr, 0
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  %i.dw = zext i1 %i.dv to i32
  %i.dx = load i32, ptr @INVERSE, align 4, !tbaa !8
  %.not140 = icmp eq i32 %i.dx, %i.dw
  br i1 %.not140, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge191
  %i.dy = load i32, ptr @FILENAMEONLY, align 4, !tbaa !8
  %.not141 = icmp eq i32 %i.dy, 0
  br i1 %.not141, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr @num_of_matched, align 4, !tbaa !8
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr @num_of_matched, align 4, !tbaa !8
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %.not142 = icmp slt i32 %.2108, %i.bw
  br i1 %.not142, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i32, ptr @D_length, align 4, !tbaa !8
  %i.ec = xor i32 %i.eb, -1
  %i.ed = add i32 %7, %i.ec
  call void @output(ptr noundef nonnull %i.a, i32 noundef %.2108, i32 noundef %i.ed, i32 noundef %i.do) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge191
  %i.ee = load i32, ptr @D_length, align 4, !tbaa !8
  %i.ef = sub i32 %7, %i.ee
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !8
  %i.eg = load i32, ptr @Init, align 4, !tbaa !8  ; 2 uses
  %i.eh = and i32 %i.eg, %i.t
  %i.ei = lshr i32 %i.eg, 1
  %i.ej = and i32 %i.ei, %i.di
  %i.ek = or i32 %i.ej, %i.eh
  %i.el = and i32 %i.ek, %i.at
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %.2121 = phi i32 [ %i.el, %bb.aj ], [ %i.dm, %bb.ad ] ; 2 uses
  %.3109 = phi i32 [ %i.ef, %bb.aj ], [ %.2108, %bb.ad ] ; 2 uses
  %.5 = phi i32 [ %i.do, %bb.aj ], [ %.4, %bb.ad ] ; 2 uses
  %i.em = icmp ult i32 %7, %.0114
  br i1 %i.em, label %bb.w, label %._crit_edge172, !llvm.loop !14

._crit_edge172:                                   ; preds = %bb.ak, %bb.v
  %.1120.lcssa = phi i32 [ %.0119, %bb.v ], [ %.2121, %bb.ak ]
  %.1107.lcssa = phi i32 [ %.0106, %bb.v ], [ %.3109, %bb.ak ] ; 2 uses
  %.3.lcssa = phi i32 [ %.2, %bb.v ], [ %.5, %bb.ak ]
  %i.en = sub nsw i32 %i.be, %.1107.lcssa         ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 49152
  br i1 %i.eo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge172
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge172
  %.0112 = phi i32 [ 49152, %bb.al ], [ %i.en, %._crit_edge172 ] ; 2 uses
  %i.ep = sext i32 %.0112 to i64                  ; 2 uses
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.au, i64 %i.eq
  %i.es = sext i32 %.1107.lcssa to i64
  %i.et = getelementptr inbounds i8, ptr %i.a, i64 %i.es
  %i.eu = call ptr @strncpy(ptr noundef nonnull %i.er, ptr noundef nonnull %i.et, i64 noundef %i.ep) #11 ; 0 uses
  %i.ev = sub nsw i32 49152, %.0112
  br label %bb.p, !llvm.loop !15

.loopexit:                                        ; preds = %fill_buf.exit, %bb.ag, %bb.z, %bb.l, %bb.j, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @re(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @re1(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @asearch1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @asearch(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fill_buf(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.b = sext i32 %.09 to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = tail call i64 @read(i32 noundef %0, ptr noundef %i.c, i64 noundef 4096) #11
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add nsw i32 %.09, %i.e                   ; 3 uses
  %i.g = icmp slt i32 %i.f, %2
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = and i1 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare void @output(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{!6, !6, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
