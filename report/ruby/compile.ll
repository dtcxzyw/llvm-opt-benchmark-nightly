Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 112
begin_hunk_0_@iseq_compile_pattern_set_eqq_errmsg:nd_line.exit
  %i.al = lshr i64 %i.ak, 15
  %i.am = trunc i64 %i.al to i32
  br label %nd_line.exit113

nd_line.exit113:                                  ; preds = %new_label_body.exit, %bb.c
  %.0.i70 = phi i32 [ %i.am, %bb.c ], [ -1, %new_label_body.exit ]
  %i.an = getelementptr i8, ptr %i.y, i64 40      ; 2 uses
  %i.ao = getelementptr i8, ptr %2, i64 24        ; 15 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.aq = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i70, i32 noundef %i.ap, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ar = getelementptr i8, ptr %1, i64 24        ; 30 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !62
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !42
  %i.av = load i64, ptr %2, align 8, !tbaa !172
  %i.aw = lshr i64 %i.av, 15
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.az = ptrtoint ptr %i.y to i64
  %i.ba = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef 73, i32 noundef 1, i64 noundef %i.az) ; 3 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !61
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !62
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !42
  %i.be = load i32, ptr %i.an, align 8, !tbaa !240
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.an, align 8, !tbaa !240
  %i.bg = load i64, ptr %2, align 8, !tbaa !172
  %i.bh = lshr i64 %i.bg, 15
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.bk = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !61
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !62
  store ptr %i.bk, ptr %i.ar, align 8, !tbaa !42
  %i.bo = load i64, ptr %2, align 8, !tbaa !172
  %i.bp = lshr i64 %i.bo, 15
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.bs = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.129, i64 noundef 30) #37
  %i.bt = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef 19, i32 noundef 1, i64 noundef %i.bs) ; 3 uses
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !61
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !62
  store ptr %i.bt, ptr %i.ar, align 8, !tbaa !42
  %i.bx = load i64, ptr %2, align 8, !tbaa !172
  %i.by = lshr i64 %i.bx, 15
  %i.bz = trunc i64 %i.by to i32
  %i.ca = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.cb = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef 44, i32 noundef 1, i64 noundef 7) ; 3 uses
  %i.cc = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !61
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !62
  store ptr %i.cb, ptr %i.ar, align 8, !tbaa !42
  %i.cf = load i64, ptr %2, align 8, !tbaa !172
  %i.cg = lshr i64 %i.cf, 15
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.cj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.ci, i32 noundef 44, i32 noundef 1, i64 noundef 11) ; 3 uses
  %i.ck = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !61
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !62
  store ptr %i.cj, ptr %i.ar, align 8, !tbaa !42
  %i.cn = load i64, ptr %2, align 8, !tbaa !172
  %i.co = lshr i64 %i.cn, 15
  %i.cp = trunc i64 %i.co to i32
  %i.cq = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.cr = tail call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %i.cq, i64 noundef 170, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !62
  store ptr %i.cr, ptr %i.ar, align 8, !tbaa !42
  %i.cv = load i64, ptr %2, align 8, !tbaa !172
  %i.cw = lshr i64 %i.cv, 15
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.cz = add i32 %3, 2
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 1
  %i.dc = or disjoint i64 %i.db, 1
  %i.dd = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.cx, i32 noundef %i.cy, i32 noundef 45, i32 noundef 1, i64 noundef %i.dc) ; 3 uses
  %i.de = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  store ptr %i.de, ptr %i.df, align 8, !tbaa !61
  %i.dg = getelementptr i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !62
  store ptr %i.dd, ptr %i.ar, align 8, !tbaa !42
  %i.dh = load i64, ptr %2, align 8, !tbaa !172
  %i.di = lshr i64 %i.dh, 15
  %i.dj = trunc i64 %i.di to i32
  %i.dk = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.dl = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %i.dk, i32 noundef 19, i32 noundef 1, i64 noundef 0) ; 3 uses
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !61
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !62
  store ptr %i.dl, ptr %i.ar, align 8, !tbaa !42
  %i.dp = load i64, ptr %2, align 8, !tbaa !172
  %i.dq = lshr i64 %i.dp, 15
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.dt = add i32 %3, 4
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef 45, i32 noundef 1, i64 noundef %i.dw) ; 3 uses
  %i.dy = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dx, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !61
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !62
  store ptr %i.dx, ptr %i.ar, align 8, !tbaa !42
  %i.eb = load i64, ptr %2, align 8, !tbaa !172
  %i.ec = lshr i64 %i.eb, 15
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.ef = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.ee, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.eg = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 16
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !61
  %i.ei = getelementptr i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !62
  store ptr %i.ef, ptr %i.ar, align 8, !tbaa !42
  %i.ej = load i64, ptr %2, align 8, !tbaa !172
  %i.ek = lshr i64 %i.ej, 15
  %i.el = trunc i64 %i.ek to i32
  %i.em = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.en = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.el, i32 noundef %i.em, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 16
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !61
  %i.eq = getelementptr i8, ptr %i.eo, i64 8
  store ptr %i.en, ptr %i.eq, align 8, !tbaa !62
  %i.er = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.en, ptr %i.er, align 8, !tbaa !61
  %i.es = getelementptr i8, ptr %i.en, i64 8
  store ptr %i.y, ptr %i.es, align 8, !tbaa !62
  store ptr %i.y, ptr %i.ar, align 8, !tbaa !42
  %i.et = load i64, ptr %2, align 8, !tbaa !172
  %i.eu = lshr i64 %i.et, 15
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.ex = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef 45, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.ey = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 16
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !61
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  store ptr %i.ex, ptr %i.fa, align 8, !tbaa !62
  store ptr %i.ex, ptr %i.ar, align 8, !tbaa !42
  %i.fb = load i64, ptr %2, align 8, !tbaa !172
  %i.fc = lshr i64 %i.fb, 15
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.ff = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fg = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 16
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !61
  %i.fi = getelementptr i8, ptr %i.fg, i64 8
  store ptr %i.ff, ptr %i.fi, align 8, !tbaa !62
  store ptr %i.ff, ptr %i.ar, align 8, !tbaa !42
  %i.fj = load i64, ptr %2, align 8, !tbaa !172
  %i.fk = lshr i64 %i.fj, 15
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = load i32, ptr %i.ao, align 8, !tbaa !243
  %i.fn = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fo = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fn, i64 16
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !61
  %i.fq = getelementptr i8, ptr %i.fo, i64 8
  store ptr %i.fn, ptr %i.fq, align 8, !tbaa !62
  store ptr %i.fn, ptr %i.ar, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @add_ensure_iseq(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit:
  %3 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 6 uses
  %4 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 24         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %3, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.d, null
  br i1 %.not51, label %ISEQ_COMPILE_DATA.exit44.thread, label %.lr.ph

ISEQ_COMPILE_DATA.exit44.thread:                  ; preds = %ISEQ_COMPILE_DATA.exit
  %5 = getelementptr i8, ptr %i.b, i64 80
  store ptr %i.d, ptr %5, align 8, !tbaa !530
  br label %APPEND_LIST.exit46

.lr.ph:                                           ; preds = %ISEQ_COMPILE_DATA.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.not21 = icmp eq i32 %2, 0
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.m
  %.052 = phi ptr [ %i.d, %.lr.ph ], [ %i.ec, %bb.m ] ; 4 uses
  %i.i = getelementptr i8, ptr %.052, i64 16      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !532
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %4, ptr %i.g, align 8, !tbaa !42
  %.val13.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.k = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, 48
  %i.q = getelementptr i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37   ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i64 %i.p, %i.s
  br i1 %i.t, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.b
  %i.u = icmp ult i32 %i.r, 48
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.w, %bb.d ], [ %i.r, %.preheader.i.i.i.i ] ; 3 uses
  %i.v = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.x = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.y = zext nneg i32 %i.w to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.r, %.preheader.i.i.i.i ], [ %i.w, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.s, %.preheader.i.i.i.i ], [ %i.y, %._crit_edge.i.i.loopexit.i.i ]
  %i.z = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.aa = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.z, i64 noundef 1) #39 ; 6 uses
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !64
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !64
  store ptr null, ptr %i.aa, align 8, !tbaa !64
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store i32 0, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr i8, ptr %i.aa, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ac, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.b, %._crit_edge.i.i.i.i
  %i.ad = phi i32 [ %i.n, %bb.b ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.aa, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.af = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag  ; 10 uses
  %i.ai = add i32 %i.ad, 48
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !37
  store i32 1, ptr %i.ah, align 8, !tbaa !182
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !183
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.al = getelementptr i8, ptr %i.ak, i64 132    ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !184 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !184
  %i.ao = getelementptr i8, ptr %i.ah, i64 24
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !111
  %i.ap = getelementptr i8, ptr %i.ah, i64 44     ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, -16
  store i8 %i.ar, ptr %i.ap, align 4
  %i.as = getelementptr i8, ptr %i.ah, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.as, align 4, !tbaa !37
  %.val13.i23 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.at = getelementptr i8, ptr %.val13.i23, i64 96 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !37 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 48
  %i.az = getelementptr i8, ptr %i.au, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37 ; 4 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, %i.bb
  br i1 %i.bc, label %.preheader.i.i.i.i26, label %new_label_body.exit35

.preheader.i.i.i.i26:                             ; preds = %new_label_body.exit
  %i.bd = icmp ult i32 %i.ba, 48
  br i1 %i.bd, label %.lr.ph.i.i.i.i32, label %._crit_edge.i.i.i.i27

.lr.ph.i.i.i.i32:                                 ; preds = %.preheader.i.i.i.i26, %bb.f
  %.027.i.i.i.i33 = phi i32 [ %i.bf, %bb.f ], [ %i.ba, %.preheader.i.i.i.i26 ] ; 3 uses
  %i.be = icmp samesign ugt i32 %.027.i.i.i.i33, 1073741822
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i32
  call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.bf = shl nuw nsw i32 %.027.i.i.i.i33, 1      ; 3 uses
  %i.bg = icmp samesign ult i32 %.027.i.i.i.i33, 24
  br i1 %i.bg, label %.lr.ph.i.i.i.i32, label %._crit_edge.i.i.loopexit.i.i34, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i34:                   ; preds = %bb.f
  %i.bh = zext nneg i32 %i.bf to i64
  br label %._crit_edge.i.i.i.i27

._crit_edge.i.i.i.i27:                            ; preds = %._crit_edge.i.i.loopexit.i.i34, %.preheader.i.i.i.i26
  %.0.lcssa.i.i.i.i28 = phi i32 [ %i.ba, %.preheader.i.i.i.i26 ], [ %i.bf, %._crit_edge.i.i.loopexit.i.i34 ]
  %.lcssa.i.i.i.i29 = phi i64 [ %i.bb, %.preheader.i.i.i.i26 ], [ %i.bh, %._crit_edge.i.i.loopexit.i.i34 ]
  %i.bi = add nuw nsw i64 %.lcssa.i.i.i.i29, 16
  %i.bj = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bi, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bj, ptr %i.au, align 8, !tbaa !64
  store ptr %i.bj, ptr %i.at, align 8, !tbaa !64
  store ptr null, ptr %i.bj, align 8, !tbaa !64
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store i32 0, ptr %i.bk, align 8, !tbaa !37
  %i.bl = getelementptr i8, ptr %i.bj, i64 12
  store i32 %.0.lcssa.i.i.i.i28, ptr %i.bl, align 4, !tbaa !37
  br label %new_label_body.exit35

new_label_body.exit35:                            ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i27
  %i.bm = phi i32 [ %i.aw, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i27 ] ; 2 uses
  %.022.i.i.i.i25 = phi ptr [ %i.au, %new_label_body.exit ], [ %i.bj, %._crit_edge.i.i.i.i27 ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.022.i.i.i.i25, i64 16
  %i.bo = getelementptr i8, ptr %.022.i.i.i.i25, i64 8
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bp  ; 9 uses
  %i.br = add i32 %i.bm, 48
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !37
  store i32 1, ptr %i.bq, align 8, !tbaa !182
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  store ptr null, ptr %i.bs, align 8, !tbaa !183
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.bu = getelementptr i8, ptr %i.bt, i64 132    ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !184 ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !184
  %i.bx = getelementptr i8, ptr %i.bq, i64 24
  store i32 %i.bv, ptr %i.bx, align 8, !tbaa !111
  %i.by = getelementptr i8, ptr %i.bq, i64 44     ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = and i8 %i.bz, -16
  store i8 %i.ca, ptr %i.by, align 4
  %i.cb = getelementptr i8, ptr %i.bq, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cb, align 4, !tbaa !37
  store ptr %4, ptr %i.g, align 8, !tbaa !42
  store ptr null, ptr %i.h, align 8, !tbaa !62
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !532
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.cd = getelementptr i8, ptr %.val22, i64 96   ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !37 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 24
  %i.cj = getelementptr i8, ptr %i.ce, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !37 ; 4 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp samesign ugt i64 %i.ci, %i.cl
  br i1 %i.cm, label %.preheader.i.i.i, label %compile_data_alloc.exit.i

.preheader.i.i.i:                                 ; preds = %new_label_body.exit35
  %i.cn = icmp ult i32 %i.ck, 24
  br i1 %i.cn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.027.i.i.i = phi i32 [ %i.cp, %bb.h ], [ %i.ck, %.preheader.i.i.i ] ; 3 uses
  %i.co = icmp samesign ugt i32 %.027.i.i.i, 1073741822
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = shl nuw nsw i32 %.027.i.i.i, 1          ; 3 uses
  %i.cq = icmp samesign ult i32 %.027.i.i.i, 12
  br i1 %i.cq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.loopexit.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.h
  %i.cr = zext nneg i32 %i.cp to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.loopexit.i, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.ck, %.preheader.i.i.i ], [ %i.cp, %._crit_edge.i.i.loopexit.i ]
  %.lcssa.i.i.i = phi i64 [ %i.cl, %.preheader.i.i.i ], [ %i.cr, %._crit_edge.i.i.loopexit.i ]
  %i.cs = add nuw nsw i64 %.lcssa.i.i.i, 16
  %i.ct = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cs, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ct, ptr %i.ce, align 8, !tbaa !64
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !64
  store ptr null, ptr %i.ct, align 8, !tbaa !64
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.cu, align 8, !tbaa !37
  %i.cv = getelementptr i8, ptr %i.ct, i64 12
  store i32 %.0.lcssa.i.i.i, ptr %i.cv, align 4, !tbaa !37
  br label %compile_data_alloc.exit.i

compile_data_alloc.exit.i:                        ; preds = %._crit_edge.i.i.i, %new_label_body.exit35
  %i.cw = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.cg, %new_label_body.exit35 ] ; 2 uses
  %.022.i.i.i = phi ptr [ %i.ct, %._crit_edge.i.i.i ], [ %i.ce, %new_label_body.exit35 ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.022.i.i.i, i64 8
  %i.cy = add i32 %i.cw, 24
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %compile_data_alloc.exit.i
  %.0.i36 = phi ptr [ %i.cc, %compile_data_alloc.exit.i ], [ %i.da, %bb.i ] ; 3 uses
  %i.cz = getelementptr i8, ptr %.0.i36, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !541 ; 2 uses
  %.not.i37 = icmp eq ptr %i.da, null
  br i1 %.not.i37, label %add_ensure_range.exit, label %bb.i, !llvm.loop !18

add_ensure_range.exit:                            ; preds = %bb.i
  %i.db = getelementptr i8, ptr %.0.i36, i64 16
  %i.dc = getelementptr i8, ptr %.022.i.i.i, i64 16
  %i.dd = zext i32 %i.cw to i64
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.dd  ; 4 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store ptr null, ptr %i.df, align 8, !tbaa !541
  store ptr %i.bq, ptr %i.de, align 8, !tbaa !539
  %i.dg = getelementptr i8, ptr %.0.i36, i64 8    ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !540
  %i.di = getelementptr i8, ptr %i.de, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !540
  store ptr %i.ah, ptr %i.dg, align 8, !tbaa !540
  store ptr %i.de, ptr %i.db, align 8, !tbaa !541
  %i.dj = getelementptr i8, ptr %.052, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !531
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.dm = getelementptr i8, ptr %i.dl, i64 80
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !530
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.do = getelementptr i8, ptr %i.ah, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !61
  %i.dp = getelementptr i8, ptr %i.dn, i64 8
  store ptr %i.ah, ptr %i.dp, align 8, !tbaa !62
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !42
  %i.dq = load ptr, ptr %.052, align 8, !tbaa !529 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %iseq_compile_each.exit, label %bb.j

bb.j:                                             ; preds = %add_ensure_range.exit
  %i.ds = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %i.dq, i32 noundef 1), !inline_history !169 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %add_ensure_range.exit, %bb.j
  %i.dt = phi ptr [ %i.ah, %add_ensure_range.exit ], [ %.pre, %bb.j ] ; 2 uses
  %i.du = getelementptr i8, ptr %i.bq, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !61
  %i.dv = getelementptr i8, ptr %i.dt, i64 8
  store ptr %i.bq, ptr %i.dv, align 8, !tbaa !62
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %.not.i41 = icmp eq ptr %i.dw, null
  br i1 %.not.i41, label %APPEND_LIST.exit, label %bb.k

bb.k:                                             ; preds = %iseq_compile_each.exit
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !62
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !61
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %iseq_compile_each.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  br i1 %.not21, label %ISEQ_COMPILE_DATA.exit44, label %bb.m

bb.m:                                             ; preds = %bb.l, %APPEND_LIST.exit
  %i.eb = getelementptr i8, ptr %.052, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !531 ; 2 uses
  %.not = icmp eq ptr %i.ec, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit44, label %bb.a, !llvm.loop !1208

ISEQ_COMPILE_DATA.exit44:                         ; preds = %bb.m, %bb.l
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !47
  %.pre58 = load ptr, ptr %i.f, align 8, !tbaa !87 ; 2 uses
  %i.ed = getelementptr i8, ptr %.pre57, i64 80
  store ptr %i.d, ptr %i.ed, align 8, !tbaa !530
  %.not.i45 = icmp eq ptr %.pre58, null
  br i1 %.not.i45, label %APPEND_LIST.exit46, label %bb.n

bb.n:                                             ; preds = %ISEQ_COMPILE_DATA.exit44
  %i.ee = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !42 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  store ptr %.pre58, ptr %i.eg, align 8, !tbaa !62
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !61
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.ej, ptr %i.ee, align 8, !tbaa !42
  br label %APPEND_LIST.exit46

APPEND_LIST.exit46:                               ; preds = %ISEQ_COMPILE_DATA.exit44.thread, %ISEQ_COMPILE_DATA.exit44, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_massign0(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6, i32 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 2 uses
  %i.c = getelementptr i8, ptr %5, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !543  ; 8 uses
  %i.e = getelementptr i8, ptr %5, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !545  ; 3 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.d, inttoptr (i64 -1 to ptr)
  %i.i = and i1 %i.g, %i.h                        ; 2 uses
  %i.j = zext i1 %i.i to i32
  %.not109 = icmp eq ptr %i.f, null
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph115:                                        ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %6, i64 16
  %i.l = add i32 %i.m, %i.j
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.085111 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.086110 = phi ptr [ %i.o, %.lr.ph ], [ %i.f, %bb.a ]
  %i.m = add i32 %.085111, 1                      ; 3 uses
  %i.n = getelementptr i8, ptr %.086110, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !524  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.lr.ph115, label %.lr.ph, !llvm.loop !1209

bb.b:                                             ; preds = %.lr.ph115, %bb.c
  %.084114 = phi i32 [ 0, %.lr.ph115 ], [ %i.v, %bb.c ] ; 2 uses
  %.087113 = phi ptr [ %i.f, %.lr.ph115 ], [ %i.x, %bb.c ] ; 2 uses
  %i.p = getelementptr i8, ptr %.087113, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !523
  %i.r = load i32, ptr %i.k, align 8, !tbaa !548
  %i.s = sub i32 %i.l, %.084114
  %i.t = add i32 %i.s, %i.r
  %i.u = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.q, ptr noundef %6, i32 noundef %i.t)
  %.not98 = icmp eq i32 %i.u, 0
  br i1 %.not98, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add i32 %.084114, 1
  %i.w = getelementptr i8, ptr %.087113, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !524  ; 2 uses
  %.not91 = icmp eq ptr %i.x, null
  br i1 %.not91, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1210

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.y = sext i32 %i.m to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.085.lcssa131 = phi i64 [ 1, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %magicptr = ptrtoint ptr %i.d to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.val = load i64, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  %i.ab = and i64 %.val, 32512
  %i.ac = icmp eq i64 %i.ab, 19200
  br i1 %i.ac, label %nd_line.exit, label %bb.h

nd_line.exit:                                     ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.d, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1213 ; 2 uses
  %i.af = getelementptr i8, ptr %i.d, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1214 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not93.not = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr) ; 2 uses
  %i.ak = lshr i64 %.val, 15
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr i8, ptr %i.d, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !243
  %sext = shl i64 %i.ai, 32
  %i.ao = ashr exact i64 %sext, 31
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = select i1 %.not93.not, i64 5, i64 7
  %i.ar = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.an, i32 noundef 31, i32 noundef 2, i64 noundef %i.ap, i64 noundef %i.aq) ; 3 uses
  %i.as = getelementptr i8, ptr %3, i64 24        ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !62
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !42
  br i1 %.not93.not, label %.lr.ph120, label %bb.e

bb.e:                                             ; preds = %nd_line.exit
  %i.aw = add i32 %i.aj, 1
  %i.ax = getelementptr i8, ptr %6, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !548
  %i.az = add i32 %i.aw, %i.ay
  %i.ba = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.ag, ptr noundef %6, i32 noundef %i.az)
  %.not94 = icmp eq i32 %i.ba, 0
  br i1 %.not94, label %.critedge, label %.lr.ph120

.lr.ph120:                                        ; preds = %nd_line.exit, %bb.e
  %i.bb = getelementptr i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.g
  %.0118 = phi i32 [ 0, %.lr.ph120 ], [ %i.bi, %bb.g ] ; 2 uses
  %.082117 = phi ptr [ %i.ae, %.lr.ph120 ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bc = getelementptr i8, ptr %.082117, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !523
  %i.be = sub i32 %i.aj, %.0118
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !548
  %i.bg = add i32 %i.be, %i.bf
  %i.bh = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %i.bd, ptr noundef %6, i32 noundef %i.bg)
  %.not96 = icmp eq i32 %i.bh, 0
  br i1 %.not96, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = add i32 %.0118, 1
  %i.bj = getelementptr i8, ptr %.082117, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !524 ; 2 uses
  %.not95 = icmp eq ptr %i.bk, null
  br i1 %.not95, label %.loopexit, label %bb.f, !llvm.loop !1211

bb.h:                                             ; preds = %bb.d
  %i.bl = getelementptr i8, ptr %6, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !548
  %i.bn = add i32 %i.bm, 1
  %i.bo = tail call fastcc i32 @compile_massign_lhs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %i.d, ptr noundef %6, i32 noundef %i.bn)
  %.not92 = icmp eq i32 %i.bo, 0
  br i1 %.not92, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %._crit_edge, %bb.h
  %i.bp = getelementptr i8, ptr %6, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !549, !range !151, !noundef !152
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %iseq_compile_each.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bs = icmp eq ptr %i.b, null
  br i1 %i.bs, label %ISEQ_COMPILE_DATA.exit.i, label %bb.l

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.i
  %i.bt = getelementptr i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = getelementptr i8, ptr %i.bu, i64 128
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !60 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.by = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.bz = tail call i64 @rb_fix2int(i64 noundef %i.by) #37, !inline_history !169
  %i.ca = trunc i64 %i.bz to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %ISEQ_COMPILE_DATA.exit.i
  %.0.i99 = phi i32 [ %i.ca, %bb.j ], [ %i.bw, %ISEQ_COMPILE_DATA.exit.i ]
  %i.cb = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i99, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.cc = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !61
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !62
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !42
  br label %iseq_compile_each.exit

bb.l:                                             ; preds = %bb.i
  %i.cg = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef 0), !inline_history !169 ; 0 uses
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %bb.l, %bb.k, %.loopexit
  %.not97 = icmp eq i32 %7, 0
  %.not.i100 = icmp eq ptr %5, null               ; 2 uses
  br i1 %.not97, label %bb.m, label %bb.o

bb.m:                                             ; preds = %iseq_compile_each.exit
  br i1 %.not.i100, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i64, ptr %5, align 8, !tbaa !172
  %i.ci = lshr i64 %i.ch, 15
  %i.cj = trunc i64 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m
  %.0.i101 = phi i32 [ %i.cj, %bb.n ], [ -1, %bb.m ]
  %i.ck = getelementptr i8, ptr %5, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !243
  %i.cm = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %.0.i101, i32 noundef %i.cl, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cn = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
end_hunk_0
begin_hunk_1_@pm_compile_loop:ISEQ_COMPILE_DATA.exit172
; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_yield_node(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = load i32, ptr %i.h, align 8, !tbaa !86
  switch i32 %i.i, label %bb.c [
    i32 0, label %bb.b
    i32 7, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull @.str.192)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr null, ptr %i.b, align 8, !tbaa !566
  %i.k = getelementptr i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1499 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call fastcc i32 @pm_setup_args(ptr noundef nonnull %i.l, ptr noundef null, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %5, ptr noundef %2) ; 2 uses
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !566  ; 3 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not.i.not = icmp eq ptr %.pr, null
  br i1 %.not.i.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = or i32 %i.n, 32
  %i.p = load i32, ptr %.pr, align 8, !tbaa !37
  %i.q = add i32 %i.p, %i.m
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %.not.i38 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.r = phi ptr [ %.pr, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %.015.i = phi i32 [ %i.o, %bb.e ], [ %i.n, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.m, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.s = and i32 %.015.i, 8291
  %or.cond.not.i = icmp eq i32 %i.s, 0
  %i.t = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.not.i, i32 %i.t, i32 %.015.i ; 3 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.v = getelementptr i8, ptr %i.u, i64 260      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !121
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !121
  %i.y = icmp ugt i32 %spec.select.i, 65535
  %i.z = icmp ugt i32 %.0.i, 32767
  %or.cond.i.i = or i1 %.not.i38, %i.z
  %or.cond.i = select i1 %i.y, i1 true, i1 %or.cond.i.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.aa = shl nuw i32 %spec.select.i, 16
  %i.ab = shl nuw nsw i32 %.0.i, 1
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = inttoptr i64 %i.ae to ptr
  br label %vm_ci_new_.exit.i

bb.g:                                             ; preds = %.thread
  %i.ag = tail call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i, i32 noundef %.0.i, ptr noundef %i.r) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ah = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.ai = icmp eq ptr %.0.i.i, null
  %i.aj = and i64 %i.ah, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %new_callinfo.exit, label %bb.h

bb.h:                                             ; preds = %vm_ci_new_.exit.i
  %i.am = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.am, i64 noundef %i.ah) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.h
  %i.an = load i32, ptr %2, align 4, !tbaa !370
  %i.ao = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !372
  %i.aq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 69, i32 noundef 1, i64 noundef %i.ah) ; 3 uses
  %i.ar = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !62
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !42
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.aw = getelementptr i8, ptr %i.av, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !242
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %i.az = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %i.ba = load i16, ptr %i.az, align 8            ; 2 uses
  %i.bb = and i16 %i.ba, 4096
  %.not.i34 = icmp eq i16 %i.bb, 0
  br i1 %.not.i34, label %bb.i, label %iseq_set_use_block.exit

bb.i:                                             ; preds = %new_callinfo.exit
  %i.bc = or disjoint i16 %i.ba, 4096
  store i16 %i.bc, ptr %i.az, align 8
  %i.bd = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !206
  %i.be = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.be, label %iseq_set_use_block.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %.val, i64 80
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !207
  %i.bh = tail call i64 @rb_intern_str(i64 noundef %i.bg) #37
  %i.bi = getelementptr i8, ptr %i.bd, i64 1304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !231
  %i.bk = tail call i32 @rb_set_insert(ptr noundef %i.bj, i64 noundef %i.bh) #37 ; 0 uses
  br label %iseq_set_use_block.exit

iseq_set_use_block.exit:                          ; preds = %new_callinfo.exit, %bb.i, %bb.j
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %iseq_set_use_block.exit
  %i.bl = load i32, ptr %2, align 4, !tbaa !370
  %i.bm = load i32, ptr %i.ao, align 4, !tbaa !372
  %i.bn = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !62
  store ptr %i.bn, ptr %i.ar, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %iseq_set_use_block.exit
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.bs = getelementptr i8, ptr %i.br, i64 176
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !242 ; 2 uses
  %.not3339 = icmp eq ptr %0, %i.bt
  br i1 %.not3339, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.bu = icmp ult i32 %.03140, 2147483647
  br i1 %i.bu, label %bb.m, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.03041 = phi ptr [ %i.by, %.lr.ph ], [ %0, %bb.l ]
  %.03140 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.03041, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70
  %i.bx = getelementptr i8, ptr %i.bw, i64 168
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !168 ; 2 uses
  %i.bz = add i32 %.03140, 1                      ; 2 uses
  %.not33 = icmp eq ptr %i.by, %i.bt
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1497

bb.m:                                             ; preds = %._crit_edge
  %.pr.i = load i64, ptr @pm_compile_yield_node.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.ca = tail call i64 @rb_intern2(ptr noundef nonnull @.str.71, i64 noundef 5) #37 ; 3 uses
  store i64 %i.ca, ptr @pm_compile_yield_node.rbimpl_id, align 8, !tbaa !63
  %.not.i35 = icmp eq i64 %i.ca, 0
  br i1 %.not.i35, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.m
  %.lcssa.i = phi i64 [ %.pr.i, %bb.m ], [ %i.ca, %.lr.ph.i ]
  tail call fastcc void @access_outer_variables(ptr noundef nonnull %0, i32 noundef %i.bz, i64 noundef %.lcssa.i, i1 noundef zeroext true)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %rbimpl_intern_const.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_add_ensure_iseq(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit:
  %4 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 7 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 24         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !530  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %4, ptr %i.e, align 8, !tbaa !42
  %.not53 = icmp eq ptr %i.d, null
  br i1 %.not53, label %ISEQ_COMPILE_DATA.exit46.thread, label %.lr.ph

ISEQ_COMPILE_DATA.exit46.thread:                  ; preds = %ISEQ_COMPILE_DATA.exit
  %6 = getelementptr i8, ptr %i.b, i64 80
  store ptr %i.d, ptr %6, align 8, !tbaa !530
  br label %APPEND_LIST.exit48

.lr.ph:                                           ; preds = %ISEQ_COMPILE_DATA.exit
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not23 = icmp eq i32 %2, 0
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.l
  %.054 = phi ptr [ %i.d, %.lr.ph ], [ %i.dz, %bb.l ] ; 4 uses
  %i.h = getelementptr i8, ptr %.054, i64 16      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !532
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.f, align 8, !tbaa !42
  %.val13.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.j = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 48
  %i.p = getelementptr i8, ptr %i.k, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp samesign ugt i64 %i.o, %i.r
  br i1 %i.s, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.b
  %i.t = icmp ult i32 %i.q, 48
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.v, %bb.d ], [ %i.q, %.preheader.i.i.i.i ] ; 3 uses
  %i.u = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.w = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.x = zext nneg i32 %i.v to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.q, %.preheader.i.i.i.i ], [ %i.v, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.r, %.preheader.i.i.i.i ], [ %i.x, %._crit_edge.i.i.loopexit.i.i ]
  %i.y = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.z = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.y, i64 noundef 1) #39 ; 6 uses
  store ptr %i.z, ptr %i.k, align 8, !tbaa !64
  store ptr %i.z, ptr %i.j, align 8, !tbaa !64
  store ptr null, ptr %i.z, align 8, !tbaa !64
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr i8, ptr %i.z, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.ab, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.b, %._crit_edge.i.i.i.i
  %i.ac = phi i32 [ %i.m, %bb.b ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.z, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.ae = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af  ; 9 uses
  %i.ah = add i32 %i.ac, 48
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !37
  store i32 1, ptr %i.ag, align 8, !tbaa !182
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !183
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.aj, i64 132    ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !184 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !184
  %i.an = getelementptr i8, ptr %i.ag, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !111
  %i.ao = getelementptr i8, ptr %i.ag, i64 44     ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -16
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr i8, ptr %i.ag, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ar, align 4, !tbaa !37
  %.val13.i25 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.as = getelementptr i8, ptr %.val13.i25, i64 96 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64 ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 48
  %i.ay = getelementptr i8, ptr %i.at, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37 ; 4 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ax, %i.ba
  br i1 %i.bb, label %.preheader.i.i.i.i28, label %new_label_body.exit37

.preheader.i.i.i.i28:                             ; preds = %new_label_body.exit
  %i.bc = icmp ult i32 %i.az, 48
  br i1 %i.bc, label %.lr.ph.i.i.i.i34, label %._crit_edge.i.i.i.i29

.lr.ph.i.i.i.i34:                                 ; preds = %.preheader.i.i.i.i28, %bb.f
  %.027.i.i.i.i35 = phi i32 [ %i.be, %bb.f ], [ %i.az, %.preheader.i.i.i.i28 ] ; 3 uses
  %i.bd = icmp samesign ugt i32 %.027.i.i.i.i35, 1073741822
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i34
  call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i34
  %i.be = shl nuw nsw i32 %.027.i.i.i.i35, 1      ; 3 uses
  %i.bf = icmp samesign ult i32 %.027.i.i.i.i35, 24
  br i1 %i.bf, label %.lr.ph.i.i.i.i34, label %._crit_edge.i.i.loopexit.i.i36, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i36:                   ; preds = %bb.f
  %i.bg = zext nneg i32 %i.be to i64
  br label %._crit_edge.i.i.i.i29

._crit_edge.i.i.i.i29:                            ; preds = %._crit_edge.i.i.loopexit.i.i36, %.preheader.i.i.i.i28
  %.0.lcssa.i.i.i.i30 = phi i32 [ %i.az, %.preheader.i.i.i.i28 ], [ %i.be, %._crit_edge.i.i.loopexit.i.i36 ]
  %.lcssa.i.i.i.i31 = phi i64 [ %i.ba, %.preheader.i.i.i.i28 ], [ %i.bg, %._crit_edge.i.i.loopexit.i.i36 ]
  %i.bh = add nuw nsw i64 %.lcssa.i.i.i.i31, 16
  %i.bi = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bh, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bi, ptr %i.at, align 8, !tbaa !64
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !64
  store ptr null, ptr %i.bi, align 8, !tbaa !64
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !37
  %i.bk = getelementptr i8, ptr %i.bi, i64 12
  store i32 %.0.lcssa.i.i.i.i30, ptr %i.bk, align 4, !tbaa !37
  br label %new_label_body.exit37

new_label_body.exit37:                            ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i29
  %i.bl = phi i32 [ %i.av, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i29 ] ; 2 uses
  %.022.i.i.i.i27 = phi ptr [ %i.at, %new_label_body.exit ], [ %i.bi, %._crit_edge.i.i.i.i29 ] ; 2 uses
  %i.bm = getelementptr i8, ptr %.022.i.i.i.i27, i64 16
  %i.bn = getelementptr i8, ptr %.022.i.i.i.i27, i64 8
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.bo  ; 9 uses
  %i.bq = add i32 %i.bl, 48
  store i32 %i.bq, ptr %i.bn, align 8, !tbaa !37
  store i32 1, ptr %i.bp, align 8, !tbaa !182
  %i.br = getelementptr i8, ptr %i.bp, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !183
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.bt = getelementptr i8, ptr %i.bs, i64 132    ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !184 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !184
  %i.bw = getelementptr i8, ptr %i.bp, i64 24
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !111
  %i.bx = getelementptr i8, ptr %i.bp, i64 44     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = and i8 %i.by, -16
  store i8 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr i8, ptr %i.bp, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ca, align 4, !tbaa !37
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !532
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.cc = getelementptr i8, ptr %.val24, i64 96   ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !37 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nuw nsw i64 %i.cg, 24
  %i.ci = getelementptr i8, ptr %i.cd, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37 ; 4 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp samesign ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %.preheader.i.i.i, label %compile_data_alloc.exit.i

.preheader.i.i.i:                                 ; preds = %new_label_body.exit37
  %i.cm = icmp ult i32 %i.cj, 24
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
  %.027.i.i.i = phi i32 [ %i.co, %bb.h ], [ %i.cj, %.preheader.i.i.i ] ; 3 uses
  %i.cn = icmp samesign ugt i32 %.027.i.i.i, 1073741822
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.co = shl nuw nsw i32 %.027.i.i.i, 1          ; 3 uses
  %i.cp = icmp samesign ult i32 %.027.i.i.i, 12
  br i1 %i.cp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.loopexit.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.h
  %i.cq = zext nneg i32 %i.co to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.loopexit.i, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.cj, %.preheader.i.i.i ], [ %i.co, %._crit_edge.i.i.loopexit.i ]
  %.lcssa.i.i.i = phi i64 [ %i.ck, %.preheader.i.i.i ], [ %i.cq, %._crit_edge.i.i.loopexit.i ]
  %i.cr = add nuw nsw i64 %.lcssa.i.i.i, 16
  %i.cs = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cr, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cs, ptr %i.cd, align 8, !tbaa !64
  store ptr %i.cs, ptr %i.cc, align 8, !tbaa !64
  store ptr null, ptr %i.cs, align 8, !tbaa !64
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  store i32 0, ptr %i.ct, align 8, !tbaa !37
  %i.cu = getelementptr i8, ptr %i.cs, i64 12
  store i32 %.0.lcssa.i.i.i, ptr %i.cu, align 4, !tbaa !37
  br label %compile_data_alloc.exit.i

compile_data_alloc.exit.i:                        ; preds = %._crit_edge.i.i.i, %new_label_body.exit37
  %i.cv = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.cf, %new_label_body.exit37 ] ; 2 uses
  %.022.i.i.i = phi ptr [ %i.cs, %._crit_edge.i.i.i ], [ %i.cd, %new_label_body.exit37 ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.022.i.i.i, i64 8
  %i.cx = add i32 %i.cv, 24
  store i32 %i.cx, ptr %i.cw, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %compile_data_alloc.exit.i
  %.0.i38 = phi ptr [ %i.cb, %compile_data_alloc.exit.i ], [ %i.cz, %bb.i ] ; 3 uses
  %i.cy = getelementptr i8, ptr %.0.i38, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !541 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cz, null
  br i1 %.not.i39, label %add_ensure_range.exit, label %bb.i, !llvm.loop !18

add_ensure_range.exit:                            ; preds = %bb.i
  %i.da = getelementptr i8, ptr %.0.i38, i64 16
  %i.db = getelementptr i8, ptr %.022.i.i.i, i64 16
  %i.dc = zext i32 %i.cv to i64
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc  ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  store ptr null, ptr %i.de, align 8, !tbaa !541
  store ptr %i.bp, ptr %i.dd, align 8, !tbaa !539
  %i.df = getelementptr i8, ptr %.0.i38, i64 8    ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !540
  %i.dh = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !540
  store ptr %i.ag, ptr %i.df, align 8, !tbaa !540
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !541
  %i.di = getelementptr i8, ptr %.054, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !531
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.dl = getelementptr i8, ptr %i.dk, i64 80
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !530
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ag, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !61
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  store ptr %i.ag, ptr %i.do, align 8, !tbaa !62
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !42
  %i.dp = load ptr, ptr %.054, align 8, !tbaa !529
  call fastcc void @pm_compile_node(ptr noundef nonnull %1, ptr noundef %i.dp, ptr noundef %5, i1 noundef zeroext true, ptr noundef %3)
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.dr = getelementptr i8, ptr %i.bp, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !61
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  store ptr %i.bp, ptr %i.ds, align 8, !tbaa !62
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %.not.i43 = icmp eq ptr %i.dt, null
  br i1 %.not.i43, label %APPEND_LIST.exit, label %bb.j

bb.j:                                             ; preds = %add_ensure_range.exit
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !62
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !61
  store ptr %i.bp, ptr %i.e, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %add_ensure_range.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  br i1 %.not23, label %ISEQ_COMPILE_DATA.exit46, label %bb.l

bb.l:                                             ; preds = %bb.k, %APPEND_LIST.exit
  %i.dy = getelementptr i8, ptr %.054, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !531 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %ISEQ_COMPILE_DATA.exit46, label %bb.a, !llvm.loop !1500

ISEQ_COMPILE_DATA.exit46:                         ; preds = %bb.l, %bb.k
  %.pre58 = load ptr, ptr %i.a, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !87 ; 2 uses
  %i.ea = getelementptr i8, ptr %.pre58, i64 80
  store ptr %i.d, ptr %i.ea, align 8, !tbaa !530
  %.not.i47 = icmp eq ptr %.pre59, null
  br i1 %.not.i47, label %APPEND_LIST.exit48, label %bb.m

bb.m:                                             ; preds = %ISEQ_COMPILE_DATA.exit46
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ec = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !42 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  store ptr %.pre59, ptr %i.ee, align 8, !tbaa !62
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !87
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !61
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !42
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !42
  br label %APPEND_LIST.exit48

APPEND_LIST.exit48:                               ; preds = %ISEQ_COMPILE_DATA.exit46.thread, %ISEQ_COMPILE_DATA.exit46, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pm_iseq_builtin_function_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @rb_id2name(i64 noundef %2) #37 ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @pm_iseq_builtin_function_name.prefix, ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10) #44
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.l, !prof !185

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 10
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.f = load i16, ptr %1, align 8, !tbaa !331
  switch i16 %i.f, label %bb.l [
    i16 19, label %bb.e
    i16 42, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !378
  %i.i = and i16 %i.h, 8
  %.not22 = icmp eq i16 %i.i, 0
  br i1 %.not22, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !607  ; 4 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !354
  %i.o = getelementptr i8, ptr %i.n, i64 592
  %i.p = load i32, ptr %i.o, align 8, !tbaa !465
  %i.q = icmp ugt i32 %i.k, %i.p
  br i1 %i.q, label %bb.h, label %pm_constant_id_lookup.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.k) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !329
  %i.t = add i32 %i.k, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.s, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !63
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.160, i64 noundef 9) #37
  %.not23 = icmp eq i64 %i.w, %i.x
  br i1 %.not23, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !394  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !354
  %i.ad = getelementptr i8, ptr %i.ac, i64 592
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !465
  %i.af = icmp ugt i32 %i.z, %i.ae
  br i1 %i.af, label %bb.k, label %pm_constant_id_lookup.exit25

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.z) #38
  unreachable

pm_constant_id_lookup.exit25:                     ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = add i32 %i.z, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !63
  %i.am = tail call i64 @rb_intern2(ptr noundef nonnull @.str.162, i64 noundef 9) #37
  %.not = icmp eq i64 %i.al, %i.am
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.d, %pm_constant_id_lookup.exit, %bb.e, %pm_constant_id_lookup.exit25, %bb.b
  br label %bb.m

bb.m:                                             ; preds = %pm_constant_id_lookup.exit, %pm_constant_id_lookup.exit25, %bb.l, %bb.c
  %.2 = phi ptr [ %i.e, %bb.c ], [ null, %bb.l ], [ %i.a, %pm_constant_id_lookup.exit ], [ %i.a, %pm_constant_id_lookup.exit25 ]
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_compile_builtin_function_call(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef readnone captures(address_is_null) %6, ptr noundef nonnull %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %struct.pm_parameters_node, align 8 ; 6 uses
  %9 = alloca %struct.pm_def_node, align 8        ; 13 uses
  %10 = alloca %struct.pm_scope_node, align 8     ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [14 x i8], align 1                ; 4 uses
  %11 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 6 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !370
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull @.str.163)
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ar, %bb.c
  %.076 = phi i1 [ false, %bb.c ], [ %.177, %bb.ar ] ; 3 uses
  %.075 = phi ptr [ %i.g, %bb.c ], [ null, %bb.ar ] ; 5 uses
  %.074 = phi ptr [ %7, %bb.c ], [ %i.b, %bb.ar ] ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !567  ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !592
  %.not10.i = icmp eq i32 %i.m, -1
  br i1 %.not10.i, label %.loopexit105, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = add i32 %.011.i, 1                       ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [24 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !592
  %.not.i = icmp eq i32 %i.r, -1
  br i1 %.not.i, label %.loopexit105, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.p, %bb.e ], [ %i.k, %bb.d ] ; 5 uses
  %.011.i = phi i32 [ %i.n, %bb.e ], [ 0, %bb.d ]
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !316
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull readonly dereferenceable(1) %.074) #44
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %iseq_builtin_function_lookup.exit, label %bb.e

.loopexit105:                                     ; preds = %bb.e, %bb.d
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.164, ptr noundef nonnull dereferenceable(1) %.074) #44
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %.loopexit105
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.165, ptr noundef nonnull dereferenceable(1) %.074) #44
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.166, ptr noundef nonnull dereferenceable(1) %.074) #44
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.167, ptr noundef nonnull dereferenceable(1) %.074) #44
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %pm_compile_builtin_attr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.168, ptr noundef nonnull dereferenceable(1) %.074) #44
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq ptr %.075, null
  br i1 %i.ah, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %.075, i64 24     ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !646
  %.not54.i = icmp eq i64 %i.aj, 0
  br i1 %.not54.i, label %pm_compile_builtin_attr.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.preheader.i
  %i.ak = getelementptr i8, ptr %.075, i64 40
  %i.al = getelementptr i8, ptr %0, i64 16        ; 4 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %4, align 4, !tbaa !370
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull @.str.179)
  br label %pm_compile_builtin_attr.exit
end_hunk_1
