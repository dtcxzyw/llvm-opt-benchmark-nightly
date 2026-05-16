inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0_@pm_static_literal_inspect_node:bb.a
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !61 ; 2 uses
  %i.as = and i16 %i.ar, 16
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef 1) #10
  %.pre = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.at = phi i16 [ %.pre, %bb.ab ], [ %i.ar, %bb.aa ] ; 2 uses
  %i.au = and i16 %i.at, 4
  %.not79 = icmp eq i16 %i.au, 0
  br i1 %.not79, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 1) #10
  %.pre88 = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.av = phi i16 [ %.pre88, %bb.ad ], [ %i.at, %bb.ac ] ; 2 uses
  %i.aw = and i16 %i.av, 8
  %.not80 = icmp eq i16 %i.aw, 0
  br i1 %.not80, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef 1) #10
  %.pre89 = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ax = phi i16 [ %.pre89, %bb.af ], [ %i.av, %bb.ae ]
  %i.ay = and i16 %i.ax, 128
  %.not81 = icmp eq i16 %i.ay, 0
  br i1 %.not81, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 1) #10
  br label %bb.ap

bb.ai:                                            ; preds = %bb.a
  %i.az = getelementptr i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.ba) #10
  br label %bb.ap

bb.aj:                                            ; preds = %bb.a
  %i.bb = getelementptr i8, ptr %2, i64 24        ; 2 uses
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 34) #10
  %i.bc = tail call ptr @pm_string_source(ptr noundef %i.bb) #10
  %i.bd = tail call i64 @pm_string_length(ptr noundef %i.bb) #10
  tail call void @pm_buffer_append_source(ptr noundef %0, ptr noundef %i.bc, i64 noundef %i.bd, i32 noundef 0) #10
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 34) #10
  br label %bb.ap

bb.ak:                                            ; preds = %bb.a
  %i.be = load ptr, ptr %1, align 8, !tbaa !17
  %i.bf = getelementptr i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = getelementptr i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19
  %i.bj = tail call i64 @pm_newline_list_line_column(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef %i.bi) #10
  %.sroa.0.0.extract.trunc = trunc i64 %i.bj to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %.sroa.0.0.extract.trunc) #10
  br label %bb.ap

bb.al:                                            ; preds = %bb.a
  %i.bk = getelementptr i8, ptr %2, i64 72        ; 2 uses
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 34) #10
  %i.bl = tail call ptr @pm_string_source(ptr noundef %i.bk) #10
  %i.bm = tail call i64 @pm_string_length(ptr noundef %i.bk) #10
  tail call void @pm_buffer_append_source(ptr noundef %0, ptr noundef %i.bl, i64 noundef %i.bm, i32 noundef 0) #10
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 34) #10
  br label %bb.ap

bb.am:                                            ; preds = %bb.a
  %i.bn = getelementptr i8, ptr %2, i64 72        ; 2 uses
  tail call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 58) #10
  %i.bo = tail call ptr @pm_string_source(ptr noundef %i.bn) #10
  %i.bp = tail call i64 @pm_string_length(ptr noundef %i.bn) #10
  tail call void @pm_buffer_append_source(ptr noundef %0, ptr noundef %i.bo, i64 noundef %i.bp, i32 noundef 0) #10
  br label %bb.ap

bb.an:                                            ; preds = %bb.a
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef 4) #10
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 598, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_static_literal_inspect_node) #11
  unreachable

bb.ap:                                            ; preds = %bb.ag, %bb.ah, %bb.f, %bb.k, %bb.n, %bb.j, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.z, %bb.y, %bb.x, %bb.w, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @node_hash(ptr noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !11
  switch i16 %i.a, label %bb.l [
    i16 82, label %bb.b
    i16 138, label %.lr.ph.i
    i16 54, label %.lr.ph.i35
    i16 123, label %bb.d
    i16 68, label %bb.g
    i16 141, label %bb.h
    i16 137, label %bb.i
    i16 125, label %bb.j
    i16 143, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.lr.ph.i7.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 5 uses
  %i.f = and i64 %i.e, 4611686018427387903        ; 2 uses
  %.not29.i.i = icmp eq i64 %i.f, 0
  br i1 %.not29.i.i, label %murmur_hash.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %xtraiter227 = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter231 = and i64 %i.e, 4611686018427387902
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.02631.i.i = phi i32 [ -1756908916, %.lr.ph.i.i.preheader.new ], [ %i.ac, %.lr.ph.i.i ]
  %.02730.i.i = phi ptr [ %i.c, %.lr.ph.i.i.preheader.new ], [ %i.t, %.lr.ph.i.i ] ; 3 uses
  %niter232 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter232.next.1, %.lr.ph.i.i ]
  %i.h = load i32, ptr %.02730.i.i, align 1       ; 2 uses
  %i.i = getelementptr i8, ptr %.02730.i.i, i64 4
  %i.j = mul i32 %i.h, -862048943
  %i.k = mul i32 %i.h, 380141568
  %i.l = lshr i32 %i.j, 17
  %i.m = or disjoint i32 %i.l, %i.k
  %i.n = mul i32 %i.m, 461845907
  %i.o = xor i32 %i.n, %.02631.i.i                ; 2 uses
  %i.p = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 13)
  %i.q = mul i32 %i.p, 5
  %i.r = add i32 %i.q, -430675100
  %i.s = load i32, ptr %i.i, align 1              ; 2 uses
  %i.t = getelementptr i8, ptr %.02730.i.i, i64 8 ; 2 uses
  %i.u = mul i32 %i.s, -862048943
  %i.v = mul i32 %i.s, 380141568
  %i.w = lshr i32 %i.u, 17
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = mul i32 %i.x, 461845907
  %i.z = xor i32 %i.y, %i.r                       ; 2 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 13)
  %i.ab = mul i32 %i.aa, 5
  %i.ac = add i32 %i.ab, -430675100               ; 3 uses
  %niter232.next.1 = add i64 %niter232, 2         ; 2 uses
  %niter232.ncmp.1 = icmp eq i64 %niter232.next.1, %unroll_iter231
  br i1 %niter232.ncmp.1, label %murmur_hash.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !63

murmur_hash.exit.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %murmur_hash.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %murmur_hash.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.02631.i.i.epil.init = phi i32 [ -1756908916, %.lr.ph.i.i.preheader ], [ %i.ac, %murmur_hash.exit.i.loopexit.unr-lcssa ]
  %.02730.i.i.epil.init = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.t, %murmur_hash.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod230 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %i.ad = load i32, ptr %.02730.i.i.epil.init, align 1 ; 2 uses
  %i.ae = mul i32 %i.ad, -862048943
  %i.af = mul i32 %i.ad, 380141568
  %i.ag = lshr i32 %i.ae, 17
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = mul i32 %i.ah, 461845907
  %i.aj = xor i32 %i.ai, %.02631.i.i.epil.init    ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.al = mul i32 %i.ak, 5
  %i.am = add i32 %i.al, -430675100
  br label %murmur_hash.exit.i

murmur_hash.exit.i:                               ; preds = %.lr.ph.i.i.epil.preheader, %murmur_hash.exit.i.loopexit.unr-lcssa, %bb.c
  %.026.lcssa.i.i = phi i32 [ -1756908916, %bb.c ], [ %i.ac, %murmur_hash.exit.i.loopexit.unr-lcssa ], [ %i.am, %.lr.ph.i.i.epil.preheader ]
  %.tr.i = trunc i64 %i.e to i32
  %i.an = shl i32 %.tr.i, 2
  %i.ao = xor i32 %.026.lcssa.i.i, %i.an          ; 2 uses
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = xor i32 %i.ap, %i.ao
  br label %integer_hash.exit

.lr.ph.i7.i:                                      ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %1, i64 40
  %i.as = load i32, ptr %i.ar, align 1            ; 2 uses
  %i.at = mul i32 %i.as, -862048943
  %i.au = mul i32 %i.as, 380141568
  %i.av = lshr i32 %i.at, 17
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, 461845907
  %i.ay = xor i32 %i.ax, -1756908916              ; 2 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 13)
  %i.ba = mul i32 %i.az, 5
  %i.bb = add i32 %i.ba, -430675100               ; 2 uses
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = xor i32 %i.bb, %i.bc
  %i.be = xor i32 %i.bd, 4
  br label %integer_hash.exit

integer_hash.exit:                                ; preds = %murmur_hash.exit.i, %.lr.ph.i7.i
  %.sink27.i = phi i32 [ %i.be, %.lr.ph.i7.i ], [ %i.aq, %murmur_hash.exit.i ]
  %i.bf = mul i32 %.sink27.i, -2048144789         ; 2 uses
  %i.bg = lshr i32 %i.bf, 13
  %i.bh = xor i32 %i.bg, %i.bf
  %i.bi = mul i32 %i.bh, -1028477387              ; 2 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = xor i32 %i.bj, %i.bi                    ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 44
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !45, !range !46, !noundef !47
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = xor i32 %i.bk, -1017931171
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 %i.bk
  br label %common.ret247

.lr.ph.i:                                         ; preds = %bb.a
  %i.bp = load ptr, ptr %0, align 8, !tbaa !17
  %i.bq = getelementptr i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.bu = tail call i64 @pm_newline_list_line_column(ptr noundef %i.bp, ptr noundef %i.br, i32 noundef %i.bt) #10
  %.sroa.0.0.extract.trunc = trunc i64 %i.bu to i32 ; 2 uses
  %i.bv = mul i32 %.sroa.0.0.extract.trunc, -862048943
  %i.bw = mul i32 %.sroa.0.0.extract.trunc, 380141568
  %i.bx = lshr i32 %i.bv, 17
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = mul i32 %i.by, 461845907
  %i.ca = xor i32 %i.bz, -1756908916              ; 2 uses
  %i.cb = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 13)
  %i.cc = mul i32 %i.cb, 5
  %i.cd = add i32 %i.cc, -430675100               ; 2 uses
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = xor i32 %i.cd, %i.ce
  %i.cg = xor i32 %i.cf, 4
  %i.ch = mul i32 %i.cg, -2048144789              ; 2 uses
  %i.ci = lshr i32 %i.ch, 13
  %i.cj = xor i32 %i.ci, %i.ch
  %i.ck = mul i32 %i.cj, -1028477387              ; 2 uses
  %i.cl = lshr i32 %i.ck, 16
  %i.cm = xor i32 %i.cl, %i.ck
  br label %common.ret247

.lr.ph.i35:                                       ; preds = %bb.a
  %i.cn = getelementptr i8, ptr %1, i64 24
  %i.co = load i32, ptr %i.cn, align 1            ; 2 uses
  %i.cp = getelementptr i8, ptr %1, i64 28
  %i.cq = mul i32 %i.co, -862048943
  %i.cr = mul i32 %i.co, 380141568
  %i.cs = lshr i32 %i.cq, 17
  %i.ct = or disjoint i32 %i.cs, %i.cr
  %i.cu = mul i32 %i.ct, 461845907
  %i.cv = xor i32 %i.cu, -1756908916              ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 13)
  %i.cx = mul i32 %i.cw, 5
  %i.cy = add i32 %i.cx, -430675100
  %i.cz = load i32, ptr %i.cp, align 1            ; 2 uses
  %i.da = mul i32 %i.cz, -862048943
  %i.db = mul i32 %i.cz, 380141568
  %i.dc = lshr i32 %i.da, 17
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = mul i32 %i.dd, 461845907
  %i.df = xor i32 %i.de, %i.cy                    ; 2 uses
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.df, i32 %i.df, i32 13)
  %i.dh = mul i32 %i.dg, 5
  %i.di = add i32 %i.dh, -430675100               ; 2 uses
  %i.dj = lshr i32 %i.di, 16
  %i.dk = xor i32 %i.di, %i.dj
  %i.dl = xor i32 %i.dk, 8
  %i.dm = mul i32 %i.dl, -2048144789              ; 2 uses
  %i.dn = lshr i32 %i.dm, 13
  %i.do = xor i32 %i.dn, %i.dm
  %i.dp = mul i32 %i.do, -1028477387              ; 2 uses
  %i.dq = lshr i32 %i.dp, 16
  %i.dr = xor i32 %i.dq, %i.dp
  br label %common.ret247

bb.d:                                             ; preds = %bb.a
  %i.ds = getelementptr i8, ptr %1, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40 ; 3 uses
  %.not.i42 = icmp eq ptr %i.dt, null
  br i1 %.not.i42, label %.lr.ph.i7.i54, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.du = getelementptr i8, ptr %1, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !62 ; 5 uses
  %i.dw = and i64 %i.dv, 4611686018427387903      ; 2 uses
  %.not29.i.i43 = icmp eq i64 %i.dw, 0
  br i1 %.not29.i.i43, label %murmur_hash.exit.i49, label %.lr.ph.i.i44.preheader

.lr.ph.i.i44.preheader:                           ; preds = %bb.e
  %xtraiter215 = and i64 %i.dv, 1
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %.lr.ph.i.i44.epil.preheader, label %.lr.ph.i.i44.preheader.new

.lr.ph.i.i44.preheader.new:                       ; preds = %.lr.ph.i.i44.preheader
  %unroll_iter219 = and i64 %i.dv, 4611686018427387902
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44, %.lr.ph.i.i44.preheader.new
  %.02631.i.i46 = phi i32 [ -1756908916, %.lr.ph.i.i44.preheader.new ], [ %i.et, %.lr.ph.i.i44 ]
  %.02730.i.i47 = phi ptr [ %i.dt, %.lr.ph.i.i44.preheader.new ], [ %i.ek, %.lr.ph.i.i44 ] ; 3 uses
  %niter220 = phi i64 [ 0, %.lr.ph.i.i44.preheader.new ], [ %niter220.next.1, %.lr.ph.i.i44 ]
  %i.dy = load i32, ptr %.02730.i.i47, align 1    ; 2 uses
  %i.dz = getelementptr i8, ptr %.02730.i.i47, i64 4
  %i.ea = mul i32 %i.dy, -862048943
  %i.eb = mul i32 %i.dy, 380141568
  %i.ec = lshr i32 %i.ea, 17
  %i.ed = or disjoint i32 %i.ec, %i.eb
  %i.ee = mul i32 %i.ed, 461845907
  %i.ef = xor i32 %i.ee, %.02631.i.i46            ; 2 uses
  %i.eg = tail call i32 @llvm.fshl.i32(i32 %i.ef, i32 %i.ef, i32 13)
  %i.eh = mul i32 %i.eg, 5
  %i.ei = add i32 %i.eh, -430675100
  %i.ej = load i32, ptr %i.dz, align 1            ; 2 uses
  %i.ek = getelementptr i8, ptr %.02730.i.i47, i64 8 ; 2 uses
  %i.el = mul i32 %i.ej, -862048943
  %i.em = mul i32 %i.ej, 380141568
  %i.en = lshr i32 %i.el, 17
  %i.eo = or disjoint i32 %i.en, %i.em
  %i.ep = mul i32 %i.eo, 461845907
  %i.eq = xor i32 %i.ep, %i.ei                    ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 13)
  %i.es = mul i32 %i.er, 5
  %i.et = add i32 %i.es, -430675100               ; 3 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %murmur_hash.exit.i49.loopexit.unr-lcssa, label %.lr.ph.i.i44, !llvm.loop !63

murmur_hash.exit.i49.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i44
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %murmur_hash.exit.i49, label %.lr.ph.i.i44.epil.preheader

.lr.ph.i.i44.epil.preheader:                      ; preds = %murmur_hash.exit.i49.loopexit.unr-lcssa, %.lr.ph.i.i44.preheader
  %.02631.i.i46.epil.init = phi i32 [ -1756908916, %.lr.ph.i.i44.preheader ], [ %i.et, %murmur_hash.exit.i49.loopexit.unr-lcssa ]
  %.02730.i.i47.epil.init = phi ptr [ %i.dt, %.lr.ph.i.i44.preheader ], [ %i.ek, %murmur_hash.exit.i49.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i64 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.eu = load i32, ptr %.02730.i.i47.epil.init, align 1 ; 2 uses
  %i.ev = mul i32 %i.eu, -862048943
  %i.ew = mul i32 %i.eu, 380141568
  %i.ex = lshr i32 %i.ev, 17
  %i.ey = or disjoint i32 %i.ex, %i.ew
  %i.ez = mul i32 %i.ey, 461845907
  %i.fa = xor i32 %i.ez, %.02631.i.i46.epil.init  ; 2 uses
  %i.fb = tail call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 13)
  %i.fc = mul i32 %i.fb, 5
  %i.fd = add i32 %i.fc, -430675100
  br label %murmur_hash.exit.i49

murmur_hash.exit.i49:                             ; preds = %.lr.ph.i.i44.epil.preheader, %murmur_hash.exit.i49.loopexit.unr-lcssa, %bb.e
  %.026.lcssa.i.i50 = phi i32 [ -1756908916, %bb.e ], [ %i.et, %murmur_hash.exit.i49.loopexit.unr-lcssa ], [ %i.fd, %.lr.ph.i.i44.epil.preheader ]
  %.tr.i51 = trunc i64 %i.dv to i32
  %i.fe = shl i32 %.tr.i51, 2
  %i.ff = xor i32 %.026.lcssa.i.i50, %i.fe        ; 2 uses
  %i.fg = lshr i32 %i.ff, 16
  %i.fh = xor i32 %i.fg, %i.ff
  br label %integer_hash.exit55

.lr.ph.i7.i54:                                    ; preds = %bb.d
  %i.fi = getelementptr i8, ptr %1, i64 40
  %i.fj = load i32, ptr %i.fi, align 1            ; 2 uses
  %i.fk = mul i32 %i.fj, -862048943
  %i.fl = mul i32 %i.fj, 380141568
  %i.fm = lshr i32 %i.fk, 17
  %i.fn = or disjoint i32 %i.fm, %i.fl
  %i.fo = mul i32 %i.fn, 461845907
  %i.fp = xor i32 %i.fo, -1756908916              ; 2 uses
  %i.fq = tail call i32 @llvm.fshl.i32(i32 %i.fp, i32 %i.fp, i32 13)
  %i.fr = mul i32 %i.fq, 5
  %i.fs = add i32 %i.fr, -430675100               ; 2 uses
  %i.ft = lshr i32 %i.fs, 16
  %i.fu = xor i32 %i.fs, %i.ft
  %i.fv = xor i32 %i.fu, 4
  br label %integer_hash.exit55

integer_hash.exit55:                              ; preds = %murmur_hash.exit.i49, %.lr.ph.i7.i54
  %.sink27.i52 = phi i32 [ %i.fv, %.lr.ph.i7.i54 ], [ %i.fh, %murmur_hash.exit.i49 ]
  %i.fw = mul i32 %.sink27.i52, -2048144789       ; 2 uses
  %i.fx = lshr i32 %i.fw, 13
  %i.fy = xor i32 %i.fx, %i.fw
  %i.fz = mul i32 %i.fy, -1028477387              ; 2 uses
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = getelementptr i8, ptr %1, i64 44
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !45, !range !46, !noundef !47
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = getelementptr i8, ptr %1, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !40 ; 3 uses
  %.not.i56 = icmp eq ptr %i.gf, null
  br i1 %.not.i56, label %.lr.ph.i7.i68, label %bb.f

bb.f:                                             ; preds = %integer_hash.exit55
  %i.gg = getelementptr i8, ptr %1, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !62 ; 5 uses
  %i.gi = and i64 %i.gh, 4611686018427387903      ; 2 uses
  %.not29.i.i57 = icmp eq i64 %i.gi, 0
  br i1 %.not29.i.i57, label %murmur_hash.exit.i63, label %.lr.ph.i.i58.preheader

.lr.ph.i.i58.preheader:                           ; preds = %bb.f
  %xtraiter221 = and i64 %i.gh, 1
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %.lr.ph.i.i58.epil.preheader, label %.lr.ph.i.i58.preheader.new

.lr.ph.i.i58.preheader.new:                       ; preds = %.lr.ph.i.i58.preheader
  %unroll_iter225 = and i64 %i.gh, 4611686018427387902
  br label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.preheader.new
  %.02631.i.i60 = phi i32 [ -1756908916, %.lr.ph.i.i58.preheader.new ], [ %i.hf, %.lr.ph.i.i58 ]
  %.02730.i.i61 = phi ptr [ %i.gf, %.lr.ph.i.i58.preheader.new ], [ %i.gw, %.lr.ph.i.i58 ] ; 3 uses
  %niter226 = phi i64 [ 0, %.lr.ph.i.i58.preheader.new ], [ %niter226.next.1, %.lr.ph.i.i58 ]
  %i.gk = load i32, ptr %.02730.i.i61, align 1    ; 2 uses
  %i.gl = getelementptr i8, ptr %.02730.i.i61, i64 4
  %i.gm = mul i32 %i.gk, -862048943
  %i.gn = mul i32 %i.gk, 380141568
  %i.go = lshr i32 %i.gm, 17
  %i.gp = or disjoint i32 %i.go, %i.gn
  %i.gq = mul i32 %i.gp, 461845907
  %i.gr = xor i32 %i.gq, %.02631.i.i60            ; 2 uses
  %i.gs = tail call i32 @llvm.fshl.i32(i32 %i.gr, i32 %i.gr, i32 13)
  %i.gt = mul i32 %i.gs, 5
  %i.gu = add i32 %i.gt, -430675100
  %i.gv = load i32, ptr %i.gl, align 1            ; 2 uses
  %i.gw = getelementptr i8, ptr %.02730.i.i61, i64 8 ; 2 uses
  %i.gx = mul i32 %i.gv, -862048943
  %i.gy = mul i32 %i.gv, 380141568
  %i.gz = lshr i32 %i.gx, 17
  %i.ha = or disjoint i32 %i.gz, %i.gy
  %i.hb = mul i32 %i.ha, 461845907
  %i.hc = xor i32 %i.hb, %i.gu                    ; 2 uses
  %i.hd = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hc, i32 13)
  %i.he = mul i32 %i.hd, 5
  %i.hf = add i32 %i.he, -430675100               ; 3 uses
  %niter226.next.1 = add i64 %niter226, 2         ; 2 uses
  %niter226.ncmp.1 = icmp eq i64 %niter226.next.1, %unroll_iter225
  br i1 %niter226.ncmp.1, label %murmur_hash.exit.i63.loopexit.unr-lcssa, label %.lr.ph.i.i58, !llvm.loop !63

murmur_hash.exit.i63.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i58
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %murmur_hash.exit.i63, label %.lr.ph.i.i58.epil.preheader

.lr.ph.i.i58.epil.preheader:                      ; preds = %murmur_hash.exit.i63.loopexit.unr-lcssa, %.lr.ph.i.i58.preheader
  %.02631.i.i60.epil.init = phi i32 [ -1756908916, %.lr.ph.i.i58.preheader ], [ %i.hf, %murmur_hash.exit.i63.loopexit.unr-lcssa ]
  %.02730.i.i61.epil.init = phi ptr [ %i.gf, %.lr.ph.i.i58.preheader ], [ %i.gw, %murmur_hash.exit.i63.loopexit.unr-lcssa ]
  %lcmp.mod224 = trunc i64 %i.gh to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.hg = load i32, ptr %.02730.i.i61.epil.init, align 1 ; 2 uses
  %i.hh = mul i32 %i.hg, -862048943
  %i.hi = mul i32 %i.hg, 380141568
  %i.hj = lshr i32 %i.hh, 17
  %i.hk = or disjoint i32 %i.hj, %i.hi
  %i.hl = mul i32 %i.hk, 461845907
  %i.hm = xor i32 %i.hl, %.02631.i.i60.epil.init  ; 2 uses
  %i.hn = tail call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hm, i32 13)
  %i.ho = mul i32 %i.hn, 5
  %i.hp = add i32 %i.ho, -430675100
  br label %murmur_hash.exit.i63

murmur_hash.exit.i63:                             ; preds = %.lr.ph.i.i58.epil.preheader, %murmur_hash.exit.i63.loopexit.unr-lcssa, %bb.f
  %.026.lcssa.i.i64 = phi i32 [ -1756908916, %bb.f ], [ %i.hf, %murmur_hash.exit.i63.loopexit.unr-lcssa ], [ %i.hp, %.lr.ph.i.i58.epil.preheader ]
  %.tr.i65 = trunc i64 %i.gh to i32
  %i.hq = shl i32 %.tr.i65, 2
  %i.hr = xor i32 %.026.lcssa.i.i64, %i.hq        ; 2 uses
  %i.hs = lshr i32 %i.hr, 16
  %i.ht = xor i32 %i.hs, %i.hr
  br label %integer_hash.exit69

.lr.ph.i7.i68:                                    ; preds = %integer_hash.exit55
  %i.hu = getelementptr i8, ptr %1, i64 64
  %i.hv = load i32, ptr %i.hu, align 1            ; 2 uses
  %i.hw = mul i32 %i.hv, -862048943
  %i.hx = mul i32 %i.hv, 380141568
  %i.hy = lshr i32 %i.hw, 17
  %i.hz = or disjoint i32 %i.hy, %i.hx
  %i.ia = mul i32 %i.hz, 461845907
  %i.ib = xor i32 %i.ia, -1756908916              ; 2 uses
  %i.ic = tail call i32 @llvm.fshl.i32(i32 %i.ib, i32 %i.ib, i32 13)
  %i.id = mul i32 %i.ic, 5
  %i.ie = add i32 %i.id, -430675100               ; 2 uses
  %i.if = lshr i32 %i.ie, 16
  %i.ig = xor i32 %i.ie, %i.if
  %i.ih = xor i32 %i.ig, 4
  br label %integer_hash.exit69

integer_hash.exit69:                              ; preds = %murmur_hash.exit.i63, %.lr.ph.i7.i68
  %.sink27.i66 = phi i32 [ %i.ih, %.lr.ph.i7.i68 ], [ %i.ht, %murmur_hash.exit.i63 ]
  %i.ii = mul i32 %.sink27.i66, -2048144789       ; 2 uses
  %i.ij = lshr i32 %i.ii, 13
  %i.ik = xor i32 %i.ij, %i.ii
  %i.il = mul i32 %i.ik, -1028477387              ; 2 uses
  %i.im = lshr i32 %i.il, 16
  %i.in = xor i32 %i.im, %i.il                    ; 2 uses
  %i.io = getelementptr i8, ptr %1, i64 68
  %i.ip = load i8, ptr %i.io, align 4, !tbaa !45, !range !46, !noundef !47
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = xor i32 %i.in, -1017931171
  %spec.select.i67 = select i1 %i.iq, i32 %i.ir, i32 %i.in
  %i.is = select i1 %i.gd, i32 1745082416, i32 -1420803475
  %i.it = xor i32 %i.ga, %i.is
  %i.iu = xor i32 %i.it, %spec.select.i67
  %i.iv = xor i32 %i.iu, %i.fz
  br label %common.ret247

common.ret247:                                    ; preds = %murmur_hash.exit127, %murmur_hash.exit110, %murmur_hash.exit93, %murmur_hash.exit76, %integer_hash.exit69, %.lr.ph.i35, %.lr.ph.i, %integer_hash.exit, %bb.g
  %common.ret247.op = phi i32 [ %i.jg, %bb.g ], [ %i.sk, %murmur_hash.exit110 ], [ %spec.select.i, %integer_hash.exit ], [ %i.cm, %.lr.ph.i ], [ %i.dr, %.lr.ph.i35 ], [ %i.iv, %integer_hash.exit69 ], [ %i.vo, %murmur_hash.exit127 ], [ %i.ml, %murmur_hash.exit76 ], [ %i.pg, %murmur_hash.exit93 ]
  ret i32 %common.ret247.op

bb.g:                                             ; preds = %bb.a
  %i.iw = getelementptr i8, ptr %1, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !50
  %i.iy = tail call fastcc i32 @node_hash(ptr noundef %0, ptr noundef %i.ix)
  %i.iz = load i16, ptr %1, align 8, !tbaa !11
  %i.ja = zext i16 %i.iz to i32                   ; 2 uses
  %i.jb = mul i32 %i.ja, -862048943
  %i.jc = mul i32 %i.ja, 380141568
  %i.jd = lshr i32 %i.jb, 17
  %i.je = or disjoint i32 %i.jd, %i.jc
  %i.jf = mul i32 %i.je, 461845907
  %i.jg = xor i32 %i.jf, %i.iy
  br label %common.ret247

bb.h:                                             ; preds = %bb.a
  %i.jh = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ji = getelementptr i8, ptr %1, i64 2
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !61
  %i.jk = and i16 %i.jj, 12
  %i.jl = tail call ptr @pm_string_source(ptr noundef %i.jh) #10 ; 4 uses
  %i.jm = tail call i64 @pm_string_length(ptr noundef %i.jh) #10 ; 5 uses
  %i.jn = lshr i64 %i.jm, 2                       ; 3 uses
  switch i64 %i.jn, label %.lr.ph.i70.preheader.new [
    i64 0, label %._crit_edge.i
    i64 1, label %.lr.ph.i70.epil.preheader
  ]

.lr.ph.i70.preheader.new:                         ; preds = %bb.h
  %unroll_iter213 = and i64 %i.jn, 4611686018427387902
  br label %.lr.ph.i70

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i70
  %i.jo = and i64 %i.jm, 4
  %lcmp.mod210.not = icmp eq i64 %i.jo, 0
  br i1 %lcmp.mod210.not, label %._crit_edge.loopexit.i, label %.lr.ph.i70.epil.preheader

.lr.ph.i70.epil.preheader:                        ; preds = %bb.h, %._crit_edge.loopexit.i.unr-lcssa
  %.02631.i72.epil.init = phi i32 [ -1756908916, %bb.h ], [ %i.kw, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02730.i73.epil.init = phi ptr [ %i.jl, %bb.h ], [ %i.kn, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod212 = trunc i64 %i.jn to i1
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.jp = load i32, ptr %.02730.i73.epil.init, align 1 ; 2 uses
  %i.jq = mul i32 %i.jp, -862048943
  %i.jr = mul i32 %i.jp, 380141568
  %i.js = lshr i32 %i.jq, 17
  %i.jt = or disjoint i32 %i.js, %i.jr
  %i.ju = mul i32 %i.jt, 461845907
  %i.jv = xor i32 %i.ju, %.02631.i72.epil.init    ; 2 uses
  %i.jw = tail call i32 @llvm.fshl.i32(i32 %i.jv, i32 %i.jv, i32 13)
  %i.jx = mul i32 %i.jw, 5
  %i.jy = add i32 %i.jx, -430675100
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i70.epil.preheader
  %.lcssa188 = phi i32 [ %i.kw, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.jy, %.lr.ph.i70.epil.preheader ]
  %i.jz = and i64 %i.jm, -4
  %scevgep.i75 = getelementptr i8, ptr %i.jl, i64 %i.jz
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %._crit_edge.loopexit.i
  %.027.lcssa.i = phi ptr [ %i.jl, %bb.h ], [ %scevgep.i75, %._crit_edge.loopexit.i ] ; 3 uses
  %.026.lcssa.i = phi i32 [ -1756908916, %bb.h ], [ %.lcssa188, %._crit_edge.loopexit.i ]
  %i.ka = and i64 %i.jm, 3                        ; 4 uses
  %.not2836.i = icmp eq i64 %i.ka, 0
  br i1 %.not2836.i, label %murmur_hash.exit76, label %.lr.ph39.i

.lr.ph.i70:                                       ; preds = %.lr.ph.i70, %.lr.ph.i70.preheader.new
  %.02631.i72 = phi i32 [ -1756908916, %.lr.ph.i70.preheader.new ], [ %i.kw, %.lr.ph.i70 ]
  %.02730.i73 = phi ptr [ %i.jl, %.lr.ph.i70.preheader.new ], [ %i.kn, %.lr.ph.i70 ] ; 3 uses
  %niter214 = phi i64 [ 0, %.lr.ph.i70.preheader.new ], [ %niter214.next.1, %.lr.ph.i70 ]
  %i.kb = load i32, ptr %.02730.i73, align 1      ; 2 uses
  %i.kc = getelementptr i8, ptr %.02730.i73, i64 4
  %i.kd = mul i32 %i.kb, -862048943
  %i.ke = mul i32 %i.kb, 380141568
  %i.kf = lshr i32 %i.kd, 17
  %i.kg = or disjoint i32 %i.kf, %i.ke
  %i.kh = mul i32 %i.kg, 461845907
  %i.ki = xor i32 %i.kh, %.02631.i72              ; 2 uses
  %i.kj = tail call i32 @llvm.fshl.i32(i32 %i.ki, i32 %i.ki, i32 13)
  %i.kk = mul i32 %i.kj, 5
  %i.kl = add i32 %i.kk, -430675100
  %i.km = load i32, ptr %i.kc, align 1            ; 2 uses
  %i.kn = getelementptr i8, ptr %.02730.i73, i64 8 ; 2 uses
  %i.ko = mul i32 %i.km, -862048943
  %i.kp = mul i32 %i.km, 380141568
  %i.kq = lshr i32 %i.ko, 17
  %i.kr = or disjoint i32 %i.kq, %i.kp
  %i.ks = mul i32 %i.kr, 461845907
  %i.kt = xor i32 %i.ks, %i.kl                    ; 2 uses
  %i.ku = tail call i32 @llvm.fshl.i32(i32 %i.kt, i32 %i.kt, i32 13)
  %i.kv = mul i32 %i.ku, 5
  %i.kw = add i32 %i.kv, -430675100               ; 3 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i70, !llvm.loop !63

.lr.ph39.i:                                       ; preds = %._crit_edge.i
  %i.kx = getelementptr i8, ptr %.027.lcssa.i, i64 %i.ka
  %i.ky = getelementptr i8, ptr %i.kx, i64 -1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !55
  %i.la = zext i8 %i.kz to i32                    ; 2 uses
  %i.lb = add nsw i64 %i.ka, -1                   ; 2 uses
  %.not28.i = icmp eq i64 %i.lb, 0
  br i1 %.not28.i, label %murmur_hash.exit76, label %.lr.ph39.i.1

.lr.ph39.i.1:                                     ; preds = %.lr.ph39.i
  %i.lc = shl nuw nsw i32 %i.la, 8
  %i.ld = getelementptr i8, ptr %.027.lcssa.i, i64 %i.lb
  %i.le = getelementptr i8, ptr %i.ld, i64 -1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !55
  %i.lg = zext i8 %i.lf to i32
  %i.lh = or disjoint i32 %i.lc, %i.lg            ; 2 uses
  %i.li = add nsw i64 %i.ka, -2                   ; 2 uses
  %.not28.i.1 = icmp eq i64 %i.li, 0
  br i1 %.not28.i.1, label %murmur_hash.exit76, label %.lr.ph39.i.2

.lr.ph39.i.2:                                     ; preds = %.lr.ph39.i.1
  %i.lj = shl nuw nsw i32 %i.lh, 8
  %i.lk = getelementptr i8, ptr %.027.lcssa.i, i64 %i.li
  %i.ll = getelementptr i8, ptr %i.lk, i64 -1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !55
  %i.ln = zext i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.lj, %i.ln
  br label %murmur_hash.exit76

murmur_hash.exit76:                               ; preds = %.lr.ph39.i, %.lr.ph39.i.1, %.lr.ph39.i.2, %._crit_edge.i
  %.0.i = phi i32 [ 0, %._crit_edge.i ], [ %i.la, %.lr.ph39.i ], [ %i.lh, %.lr.ph39.i.1 ], [ %i.lo, %.lr.ph39.i.2 ] ; 2 uses
  %i.lp = mul i32 %.0.i, -862048943
  %i.lq = mul i32 %.0.i, 380141568
  %i.lr = lshr i32 %i.lp, 17
  %i.ls = or disjoint i32 %i.lr, %i.lq
  %i.lt = mul i32 %i.ls, 461845907
  %i.lu = trunc i64 %i.jm to i32
  %i.lv = xor i32 %.026.lcssa.i, %i.lu
  %i.lw = xor i32 %i.lv, %i.lt                    ; 2 uses
  %i.lx = lshr i32 %i.lw, 16
  %i.ly = xor i32 %i.lx, %i.lw
  %i.lz = mul i32 %i.ly, -2048144789              ; 2 uses
  %i.ma = lshr i32 %i.lz, 13
  %i.mb = xor i32 %i.ma, %i.lz
  %i.mc = mul i32 %i.mb, -1028477387              ; 2 uses
  %i.md = lshr i32 %i.mc, 16
  %i.me = zext nneg i16 %i.jk to i32              ; 2 uses
  %i.mf = mul i32 %i.me, -862048943
  %i.mg = mul i32 %i.me, 380141568
  %i.mh = lshr i32 %i.mf, 17
  %i.mi = or disjoint i32 %i.mh, %i.mg
  %i.mj = mul i32 %i.mi, 461845907
  %i.mk = xor i32 %i.mj, %i.md
  %i.ml = xor i32 %i.mk, %i.mc
  br label %common.ret247

bb.i:                                             ; preds = %bb.a
  %i.mm = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.mn = tail call ptr @pm_string_source(ptr noundef %i.mm) #10 ; 4 uses
  %i.mo = tail call i64 @pm_string_length(ptr noundef %i.mm) #10 ; 5 uses
  %i.mp = lshr i64 %i.mo, 2                       ; 3 uses
  switch i64 %i.mp, label %.lr.ph.i78.preheader.new [
    i64 0, label %._crit_edge.i85
    i64 1, label %.lr.ph.i78.epil.preheader
  ]

.lr.ph.i78.preheader.new:                         ; preds = %bb.i
end_hunk_0
