Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_parse?download=true
inline.NumInlined: 342
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fs_finish:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !58   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %.not.i = icmp ugt i32 %i.h, %i.j
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = add i32 %i.h, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76
  %trunc46.i = trunc i32 %i.p to i8
  switch i8 %trunc46.i, label %bb.c [
    i8 76, label %bc_isret_or_tail.exit.thread.i
    i8 75, label %bc_isret_or_tail.exit.thread.i
    i8 74, label %bc_isret_or_tail.exit.thread.i
    i8 73, label %bc_isret_or_tail.exit.thread.i
    i8 68, label %bc_isret_or_tail.exit.thread.i
    i8 67, label %bc_isret_or_tail.exit.thread.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  %i.t = load i8, ptr %i.s, align 1, !tbaa !69
  %i.u = and i8 %i.t, 8
  %.not36.i = icmp eq i8 %i.u, 0
  br i1 %.not36.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef -2147483598) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef 65611) ; 0 uses
  br label %bc_isret_or_tail.exit.thread.i

bc_isret_or_tail.exit.thread.i:                   ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 13 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
  %i.ab = or i8 %i.aa, 16
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !69
  tail call fastcc void @fscope_end(ptr noundef nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !63
  %i.ae = and i8 %i.ad, 64
  %.not37.i = icmp ne i8 %i.ae, 0
  %.not3843.i = icmp ugt i32 %i.h, 1
  %or.cond.i = and i1 %.not3843.i, %.not37.i
  br i1 %or.cond.i, label %.lr.ph.i, label %fs_fixup_ret.exit

.lr.ph.i:                                         ; preds = %bc_isret_or_tail.exit.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %wide.trip.count.i = zext i32 %i.h to i64
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.ag = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.az, %.critedge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !76 ; 2 uses
  %trunc.i = trunc i32 %i.ai to i8
  switch i8 %trunc.i, label %.critedge.i [
    i8 67, label %bb.g
    i8 68, label %bb.g
    i8 73, label %bb.g
    i8 74, label %bb.g
    i8 75, label %bb.g
    i8 76, label %bb.g
    i8 51, label %fs_fixup_ret.exit
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.aj = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %i.c, i32 noundef %i.ai) ; 2 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !74 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !84
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !84
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = sub i32 %i.aj, %i.ar
  %i.at = add i32 %i.as, 32767                    ; 2 uses
  %i.au = icmp ugt i32 %i.at, 65535
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.aw, i32 noundef 2615) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = shl nuw i32 %i.at, 16
  %i.ay = or disjoint i32 %i.ax, 50
  store i32 %i.ay, ptr %i.al, align 4, !tbaa !76
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %bb.f
  %i.az = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fs_fixup_ret.exit, label %bb.f, !llvm.loop !141

fs_fixup_ret.exit:                                ; preds = %bb.f, %.critedge.i, %bc_isret_or_tail.exit.thread.i
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !107
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bc, 108
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bi, 68719476728              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !108
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3                ; 3 uses
  %i.bo = add nuw nsw i64 %i.bj, %i.bn            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 91 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !61  ; 2 uses
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = add nuw nsw i64 %i.bs, 2
  %i.bu = and i64 %i.bt, 1020                     ; 3 uses
  %i.bv = add nuw nsw i64 %i.bu, %i.bo            ; 2 uses
  %i.bw = add i32 %i.ba, -1
  %i.bx = icmp slt i32 %i.f, 256                  ; 2 uses
  %i.by = icmp samesign ult i32 %i.f, 65536       ; 2 uses
  %i.bz = select i1 %i.by, i32 1, i32 2
  %i.ca = select i1 %i.bx, i32 0, i32 %i.bz
  %i.cb = shl i32 %i.bw, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.cc            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167 ; 4 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !168
  %.not65.i = icmp eq i8 %i.bq, 0
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %fs_fixup_ret.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.j

bb.j:                                             ; preds = %lj_buf_more.exit58.i, %.lr.ph.i77
  %i.cl = phi ptr [ %i.ci, %.lr.ph.i77 ], [ %i.de, %lj_buf_more.exit58.i ] ; 2 uses
  %indvars.iv.i79 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i80, %lj_buf_more.exit58.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.i79
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !78
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !93
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !100
  %i.cu = add i32 %i.ct, 1                        ; 3 uses
  %i.cv = load ptr, ptr %i.ck, align 8, !tbaa !169
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cl to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = icmp ugt i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.k, label %lj_buf_more.exit58.i, !prof !170

bb.k:                                             ; preds = %bb.j
  %i.db = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef %i.cu) #12
  br label %lj_buf_more.exit58.i

lj_buf_more.exit58.i:                             ; preds = %bb.k, %bb.j
  %.0.i57.i = phi ptr [ %i.db, %bb.k ], [ %i.cl, %bb.j ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dd = zext i32 %i.cu to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i57.i, ptr nonnull align 4 %i.dc, i64 %i.dd, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i57.i, i64 %i.dd ; 3 uses
  store ptr %i.de, ptr %i.cg, align 8, !tbaa !171
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %i.br
  br i1 %exitcond.not.i81, label %._crit_edge.loopexit.i, label %bb.j, !llvm.loop !142

._crit_edge.loopexit.i:                           ; preds = %lj_buf_more.exit58.i
  %.pre.i82 = load ptr, ptr %i.ch, align 8, !tbaa !172
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %fs_fixup_ret.exit
  %i.df = phi ptr [ %.pre.i82, %._crit_edge.loopexit.i ], [ %i.ci, %fs_fixup_ret.exit ]
  %i.dg = phi ptr [ %i.de, %._crit_edge.loopexit.i ], [ %i.ci, %fs_fixup_ret.exit ] ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !55 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !56 ; 2 uses
  %i.dr = icmp ult i32 %i.dq, %i.dm
  br i1 %i.dr, label %.lr.ph63.i, label %._crit_edge64.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph63.i
  %i.dv = phi ptr [ %i.dg, %.lr.ph63.i ], [ %i.fh, %bb.s ] ; 5 uses
  %.061.i = phi ptr [ %i.dt, %.lr.ph63.i ], [ %i.fi, %bb.s ] ; 5 uses
  %.05360.i = phi i32 [ 0, %.lr.ph63.i ], [ %.1.i, %bb.s ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.061.i, i64 17
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !96
  %i.dy = and i8 %i.dx, 6
  %.not.i83 = icmp eq i8 %i.dy, 0
  br i1 %.not.i83, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.dz = load i64, ptr %.061.i, align 8, !tbaa !93 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 7
  br i1 %i.ea, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dv to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = icmp ult i32 %i.ef, 11
  br i1 %i.eg, label %bb.o, label %lj_buf_more.exit56.i, !prof !170

bb.o:                                             ; preds = %bb.n
  %i.eh = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 11) #12
  br label %lj_buf_more.exit56.i

lj_buf_more.exit56.i:                             ; preds = %bb.o, %bb.n
  %.0.i55.i = phi ptr [ %i.eh, %bb.o ], [ %i.dv, %bb.n ] ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.dz to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i55.i, i64 1
  store i8 %i.ei, ptr %.0.i55.i, align 1, !tbaa !33
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ek = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !100 ; 2 uses
  %i.en = add i32 %i.em, 1
  %i.eo = add i32 %i.em, 11                       ; 2 uses
  %i.ep = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.dv to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.eo, %i.et
  br i1 %i.eu, label %bb.q, label %lj_buf_more.exit.i, !prof !170

bb.q:                                             ; preds = %bb.p
  %i.ev = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef %i.eo) #12
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.q, %bb.p
  %.0.i.i = phi ptr [ %i.ev, %bb.q ], [ %i.dv, %bb.p ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ex = zext i32 %i.en to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull align 4 %i.ew, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ex
  br label %bb.r

bb.r:                                             ; preds = %lj_buf_more.exit.i, %lj_buf_more.exit56.i
  %.051.i = phi ptr [ %i.ej, %lj_buf_more.exit56.i ], [ %i.ey, %lj_buf_more.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.061.i, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !94 ; 3 uses
  %i.fb = sub i32 %i.fa, %.05360.i
  %i.fc = tail call ptr @lj_strfmt_wuleb128(ptr noundef %.051.i, i32 noundef %i.fb) #12
  %i.fd = getelementptr inbounds nuw i8, ptr %.061.i, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !109
  %i.ff = sub i32 %i.fe, %i.fa
  %i.fg = tail call ptr @lj_strfmt_wuleb128(ptr noundef %i.fc, i32 noundef %i.ff) #12 ; 2 uses
  store ptr %i.fg, ptr %i.cg, align 8, !tbaa !171
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.fh = phi ptr [ %i.dv, %bb.l ], [ %i.fg, %bb.r ] ; 2 uses
  %.1.i = phi i32 [ %.05360.i, %bb.l ], [ %i.fa, %bb.r ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.061.i, i64 24 ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %i.do
  br i1 %i.fj, label %bb.l, label %._crit_edge64.i, !llvm.loop !143

._crit_edge64.i:                                  ; preds = %bb.s, %._crit_edge.i
  %2 = phi ptr [ %i.dg, %._crit_edge.i ], [ %i.fh, %bb.s ] ; 2 uses
  %.pre-phi = ptrtoint ptr %2 to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !169
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %.pre-phi
  %i.fo = and i64 %i.fn, 4294967295
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.t, label %fs_prep_var.exit, !prof !170

bb.t:                                             ; preds = %._crit_edge64.i
  %i.fq = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 1) #12
  br label %fs_prep_var.exit

fs_prep_var.exit:                                 ; preds = %._crit_edge64.i, %bb.t
  %.0.i.i.i = phi ptr [ %i.fq, %bb.t ], [ %2, %._crit_edge64.i ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  store i8 0, ptr %.0.i.i.i, align 1, !tbaa !33
  store ptr %i.fr, ptr %i.cg, align 8, !tbaa !168
  %i.fs = load ptr, ptr %i.ch, align 8, !tbaa !172
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = add i64 %i.fv, %i.cd                    ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = and i64 %i.fw, 4294967295
  %i.fz = tail call ptr @lj_mem_newgco(ptr noundef %i.b, i64 noundef %i.fy) #12 ; 31 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 9
  store i8 7, ptr %i.ga, align 1, !tbaa !174
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  store i32 %i.fx, ptr %i.gb, align 8, !tbaa !175
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 62
  store i16 0, ptr %i.gc, align 2, !tbaa !176
  %i.gd = load i8, ptr %i.ac, align 8, !tbaa !63  ; 2 uses
  %i.ge = and i8 %i.gd, -97
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 61
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !177
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 10
  store i8 %i.gh, ptr %i.gi, align 2, !tbaa !178
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !64  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 11
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !179
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !49
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !180
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.bj ; 5 uses
  %i.gr = load i32, ptr %i.bd, align 8, !tbaa !107
  %i.gs = add i32 %i.gr, 1
  %i.gt = zext i32 %i.gs to i64
  %.neg = mul nsw i64 %i.gt, -8
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 %.neg
  store i32 0, ptr %i.gu, align 4, !tbaa !88
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fz, i64 104 ; 7 uses
  %i.gw = load i32, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !74 ; 9 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 %i.gw, ptr %i.gz, align 4, !tbaa !181
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !54
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 180
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !99
  %.not.i84 = icmp eq i32 %i.hd, 1
  %i.he = and i8 %i.gd, 2
  %.not15.i = icmp eq i8 %i.he, 0
  %..i = select i1 %.not15.i, i32 96, i32 99
  %.0.i = select i1 %.not.i84, i32 %..i, i32 19
  %i.hf = zext i8 %i.gk to i32
  %i.hg = shl nuw nsw i32 %i.hf, 8
  %i.hh = or disjoint i32 %.0.i, %i.hg
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !88
  %i.hi = icmp ugt i32 %i.gw, 1
  br i1 %i.hi, label %.lr.ph.preheader.i, label %fs_fixup_bc.exit

.lr.ph.preheader.i:                               ; preds = %fs_prep_var.exit
  %wide.trip.count.i86 = zext i32 %i.gw to i64    ; 6 uses
  %i.hj = add nsw i64 %wide.trip.count.i86, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.gw, 22
  br i1 %min.iters.check, label %.lr.ph.i87.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.hk = getelementptr i8, ptr %i.fz, i64 108
  %i.hl = shl nuw nsw i64 %wide.trip.count.i86, 2
  %i.hm = getelementptr i8, ptr %i.fz, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 104
  %i.ho = getelementptr i8, ptr %i.gy, i64 8
  %i.hp = shl nuw nsw i64 %wide.trip.count.i86, 3
  %i.hq = getelementptr i8, ptr %i.gy, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4
  %bound0 = icmp ult ptr %i.hk, %i.hr
  %bound1 = icmp ult ptr %i.ho, %i.hn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i87.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hs = and i64 %i.hj, 7                        ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  %i.hu = select i1 %i.ht, i64 8, i64 %i.hs
  %n.vec = sub nsw i64 %i.hj, %i.hu               ; 2 uses
  %i.hv = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = or disjoint i64 %index, 1               ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %index
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %wide.vec = load <8 x i32>, ptr %i.hx, align 4, !tbaa !76, !alias.scope !182
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec130 = load <8 x i32>, ptr %i.hz, align 4, !tbaa !76, !alias.scope !182
  %strided.vec131 = shufflevector <8 x i32> %wide.vec130, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.hw ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <4 x i32> %strided.vec, ptr %i.ia, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  store <4 x i32> %strided.vec131, ptr %i.ib, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %.lr.ph.i87.preheader, label %vector.body, !llvm.loop !147

.lr.ph.i87.preheader:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader.i
  %indvars.iv.i88.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i ], [ %i.hv, %vector.body ] ; 4 uses
  %i.id = sub nsw i64 %wide.trip.count.i86, %indvars.iv.i88.ph
  %xtraiter = and i64 %i.id, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol

.lr.ph.i87.prol:                                  ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87.prol
  %indvars.iv.i88.prol = phi i64 [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i87.prol ], [ 0, %.lr.ph.i87.preheader ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.i88.prol
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !76
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i88.prol
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !88
  %indvars.iv.next.i89.prol = add nuw nsw i64 %indvars.iv.i88.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol, !llvm.loop !148

.lr.ph.i87.prol.loopexit:                         ; preds = %.lr.ph.i87.prol, %.lr.ph.i87.preheader
  %indvars.iv.i88.unr = phi i64 [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ], [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ]
  %i.ih = sub nsw i64 %indvars.iv.i88.ph, %wide.trip.count.i86
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %fs_fixup_bc.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.3, %.lr.ph.i87 ], [ %indvars.iv.i88.unr, %.lr.ph.i87.prol.loopexit ] ; 6 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.i88
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !76
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i88
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !88
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i89
  %i.in = load i32, ptr %i.im, align 4, !tbaa !76
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next.i89
  store i32 %i.in, ptr %i.io, align 4, !tbaa !88
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i89.1
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !76
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next.i89.1
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !88
  %indvars.iv.next.i89.2 = add nuw nsw i64 %indvars.iv.i88, 3 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i89.2
  %i.it = load i32, ptr %i.is, align 4, !tbaa !76
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next.i89.2
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !88
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %exitcond.not.i90.3 = icmp eq i64 %indvars.iv.next.i89.3, %wide.trip.count.i86
  br i1 %exitcond.not.i90.3, label %fs_fixup_bc.exit, label %.lr.ph.i87, !llvm.loop !149

fs_fixup_bc.exit:                                 ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87, %fs_prep_var.exit
  %i.iv = load i32, ptr %i.bk, align 4, !tbaa !108 ; 2 uses
  %i.iw = icmp ugt i32 %i.iv, 65536
  br i1 %i.iw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %fs_fixup_bc.exit
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.v:                                             ; preds = %fs_fixup_bc.exit
  %i.ix = load i32, ptr %i.bd, align 8, !tbaa !107 ; 2 uses
  %i.iy = icmp ugt i32 %i.ix, 65536
  br i1 %i.iy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.iz = ptrtoint ptr %i.gq to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !187
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fz, i64 52
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !188
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  store i32 %i.ix, ptr %i.jc, align 8, !tbaa !189
  %i.jd = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
end_hunk_0
