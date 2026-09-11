Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@parse_qmark:bb.a
  br i1 %.not101, label %escaped_control_code.exit, label %.critedge141.preheader

.critedge141.preheader:                           ; preds = %is_identchar.exit118.thread
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !324
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !180
  %i.cq = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.c, ptr noundef %i.co, ptr noundef %i.cp) #31 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %parser_precise_mbclen.exit121

parser_precise_mbclen.exit121:                    ; preds = %.critedge141.backedge, %.critedge141.preheader
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !180
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %.val.i119 = load ptr, ptr %i.ct, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.806, ptr noundef %.val.i119)
  br label %.critedge109

.lr.ph:                                           ; preds = %.critedge141.preheader, %.critedge141.backedge
  %i.cu = phi i32 [ %i.dj, %.critedge141.backedge ], [ %i.cq, %.critedge141.preheader ]
  %.0142 = phi ptr [ %i.cw, %.critedge141.backedge ], [ %i.c, %.critedge141.preheader ]
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %.0142, i64 %i.cv ; 6 uses
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !324
  %.not102 = icmp ult ptr %i.cw, %i.cx
  br i1 %.not102, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.lr.ph
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !180 ; 2 uses
  %i.cz = load i8, ptr %i.cw, align 1, !tbaa !31
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr i8, ptr %i.cy, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !391
  %i.dd = tail call i32 %i.dc(i32 noundef range(i32 -1, 256) %i.da, i32 noundef 13, ptr noundef %i.cy) #31, !inline_history !13
  %.not.i122 = icmp eq i32 %i.dd, 0
  br i1 %.not.i122, label %is_identchar.exit124, label %.critedge141.backedge

is_identchar.exit124:                             ; preds = %bb.z
  %i.de = load i8, ptr %i.cw, align 1, !tbaa !31  ; 2 uses
  %i.df = icmp ne i8 %i.de, 95
  %i.dg = icmp sgt i8 %i.de, -1
  %spec.select = and i1 %i.df, %i.dg
  br i1 %spec.select, label %.critedge, label %.critedge141.backedge

.critedge141.backedge:                            ; preds = %is_identchar.exit124, %bb.z
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !324
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !180
  %i.dj = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.cw, ptr noundef %i.dh, ptr noundef %i.di) #31 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph, label %parser_precise_mbclen.exit121, !llvm.loop !629

.critedge:                                        ; preds = %.lr.ph, %is_identchar.exit124
  %i.dl = getelementptr i8, ptr %0, i64 200
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97
  %i.dn = getelementptr i8, ptr %0, i64 196
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !63
  %i.dp = ptrtoint ptr %i.cw to i64
  %i.dq = ptrtoint ptr %i.c to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = trunc i64 %i.dr to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.dm, i32 noundef %i.do, ptr noundef nonnull @.str.841, i32 noundef %i.ds, ptr noundef nonnull %i.c) #31
  br label %escaped_control_code.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %is_identchar.exit.thread
  %i.dt = icmp eq i32 %.011.i.ph, 92
  br i1 %i.dt, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !192 ; 3 uses
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !324
  %.not104 = icmp ult ptr %i.du, %i.dv
  br i1 %.not104, label %bb.ac, label %.thread137

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !31  ; 3 uses
  %i.dx = icmp eq i8 %i.dw, 117
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dy = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  %i.dz = tail call nonnull ptr @rb_utf8_encoding() #31
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !386
  call fastcc void @tokadd_utf8(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef -1, i32 noundef 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !386
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ea = icmp slt i8 %i.dw, 0
  br i1 %i.ea, label %bb.af, label %.thread137

bb.af:                                            ; preds = %bb.ae
  %i.eb = zext i8 %i.dw to i32
  %i.ec = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  %i.ed = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %i.eb)
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %.critedge109, label %bb.ah

.thread137:                                       ; preds = %bb.ab, %bb.ae
  %i.ef = getelementptr i8, ptr %i.du, i64 -2
  %i.eg = tail call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.ef)
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef %i.eg)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.eh = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %.critedge109, label %bb.ah

bb.ah:                                            ; preds = %.thread137, %bb.af, %bb.ad, %bb.ag
  %i.ej = phi ptr [ %i.bp, %.thread137 ], [ %i.bp, %bb.af ], [ %.pre, %bb.ad ], [ %i.bp, %bb.ag ]
  %i.ek = load ptr, ptr %i.bg, align 8, !tbaa !362
  %i.el = load i32, ptr %i.bf, align 8, !tbaa !388
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr i8, ptr %i.ek, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !31
  %i.eo = load ptr, ptr %i.bg, align 8, !tbaa !362
  %i.ep = load i32, ptr %i.bf, align 8, !tbaa !388
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !180
  %i.es = tail call fastcc ptr @parser_str_new(ptr noundef %i.eo, i64 noundef %i.eq, ptr noundef %i.ej, i32 noundef 0, ptr noundef %i.er)
  %i.et = getelementptr i8, ptr %0, i64 196
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !63 ; 3 uses
  %i.ev = getelementptr i8, ptr %0, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !64
  %i.ex = getelementptr i8, ptr %0, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.fa
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.fh, align 8, !tbaa !138
  %i.fi = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.fi, i32 noundef range(i32 0, 115) 63) #31
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  store i32 %i.eu, ptr %i.fj, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.fi, i64 12
  store i32 %i.fc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.fi, i64 16
  store i32 %i.eu, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.fi, i64 20
  store i32 %i.fg, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !26
  %i.fk = sext i32 %i.eu to i64
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !83
  %i.fm = and i64 %i.fl, 32767
  %i.fn = shl nsw i64 %i.fk, 15
  %i.fo = or disjoint i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !83
  %i.fp = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !211 ; 2 uses
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !211
  %i.fs = getelementptr i8, ptr %i.fi, i64 24
  store i32 %i.fq, ptr %i.fs, align 8, !tbaa !212
  %i.ft = getelementptr i8, ptr %i.fi, i64 32
  store ptr %i.es, ptr %i.ft, align 8, !tbaa !331
  %i.fu = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.fi, ptr %i.fu, align 8, !tbaa !31
  %i.fv = getelementptr i8, ptr %0, i64 360
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = and i32 %i.fw, 32
  %.not.i125 = icmp eq i32 %i.fx, 0
  br i1 %.not.i125, label %parser_set_lex_state.exit126, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = load i32, ptr %i.d, align 8, !tbaa !80
  %i.fz = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fy, i32 noundef 2, i32 noundef 10007) ; 0 uses
  br label %parser_set_lex_state.exit126

parser_set_lex_state.exit126:                     ; preds = %bb.ah, %bb.ai
  store i32 2, ptr %i.d, align 8, !tbaa !80
  br label %.critedge109

.critedge109:                                     ; preds = %parser_precise_mbclen.exit121, %bb.ag, %bb.af, %parser_set_lex_state.exit126, %parser_set_lex_state.exit112, %nextc0.exit, %parser_set_lex_state.exit
  %.2 = phi i32 [ 63, %parser_set_lex_state.exit ], [ 0, %nextc0.exit ], [ 63, %parser_set_lex_state.exit112 ], [ 0, %bb.ag ], [ 318, %parser_set_lex_state.exit126 ], [ 0, %bb.af ], [ -1, %parser_precise_mbclen.exit121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 314, 318) i32 @parse_numeric(ptr noundef %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 360        ; 27 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80
  %i.f = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 9711) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 104
  store i32 2, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr i8, ptr %0, i64 136        ; 47 uses
  store i32 0, ptr %i.h, align 8, !tbaa !388
  %i.i = getelementptr i8, ptr %0, i64 160        ; 39 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !362  ; 2 uses
  %.not.i319 = icmp eq ptr %i.j, null
  br i1 %.not.i319, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_set_lex_state.exit
  %i.k = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.k, align 4, !tbaa !365
  %i.l = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !362
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %parser_set_lex_state.exit
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.j, %parser_set_lex_state.exit ] ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 140        ; 20 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !365
  %i.p = icmp sgt i32 %i.o, 4096
  br i1 %i.p, label %bb.e, label %newtok.exit

bb.e:                                             ; preds = %bb.d
  store i32 60, ptr %i.n, align 4, !tbaa !365
  %i.q = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.m, i64 noundef 60, i64 noundef 1) #38 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !362
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  switch i32 %1, label %nextc0.exit [
    i32 45, label %bb.f
    i32 43, label %bb.f
  ]

bb.f:                                             ; preds = %newtok.exit, %newtok.exit
  %i.s = trunc nuw nsw i32 %1 to i8
  %i.t = load i32, ptr %i.h, align 8, !tbaa !388  ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.h, align 8, !tbaa !388
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v
  store i8 %i.s, ptr %i.w, align 1, !tbaa !31
  %i.x = load i32, ptr %i.h, align 8, !tbaa !388
  %i.y = load i32, ptr %i.n, align 4, !tbaa !365  ; 2 uses
  %.not.i320 = icmp slt i32 %i.x, %i.y
  br i1 %.not.i320, label %tokadd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !365
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.ab = sext i32 %i.z to i64
  %i.ac = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.aa, i64 noundef %i.ab, i64 noundef 1) #38
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !362
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.f, %bb.g
  %i.ad = getelementptr i8, ptr %0, i64 80        ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !324
  %.not.i321 = icmp ult ptr %i.ae, %i.ag
  br i1 %.not.i321, label %bb.h, label %.critedge.i, !prof !374

bb.h:                                             ; preds = %tokadd.exit
  %i.ah = load i32, ptr %i.a, align 8
  %i.ai = and i32 %i.ah, 8
  %.not13.i = icmp eq i32 %i.ai, 0
  br i1 %.not13.i, label %bb.i, label %.critedge.i, !prof !374

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !375
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 1 to ptr)
  br i1 %i.al, label %.critedge.i, label %bb.j, !prof !207

.critedge.i:                                      ; preds = %bb.i, %bb.h, %tokadd.exit
  %i.am = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.am, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !192
  br label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge.i, %bb.i
  %i.an = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 1      ; 3 uses
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !192
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !31  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 13
  br i1 %i.ar, label %bb.k, label %nextc0.exit, !prof !207

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.ao, %i.as
  br i1 %.not.i.i, label %bb.l, label %nextc0.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !31
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.m, label %nextc0.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.an, i64 2
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !192
  br label %nextc0.exit.thread

nextc0.exit:                                      ; preds = %bb.j, %newtok.exit
  %.0249 = phi i32 [ %1, %newtok.exit ], [ %i.aq, %bb.j ] ; 2 uses
  %i.aw = icmp eq i32 %.0249, 48
  br i1 %i.aw, label %bb.n, label %nextc0.exit.thread

bb.n:                                             ; preds = %nextc0.exit
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !388 ; 8 uses
  %i.ay = getelementptr i8, ptr %0, i64 80        ; 32 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 88        ; 16 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i322 = icmp ult ptr %i.az, %i.bb
  br i1 %.not.i322, label %bb.o, label %.critedge.i323, !prof !374

bb.o:                                             ; preds = %bb.n
  %i.bc = load i32, ptr %i.a, align 8
  %i.bd = and i32 %i.bc, 8
  %.not13.i329 = icmp eq i32 %i.bd, 0
  br i1 %.not13.i329, label %bb.p, label %.critedge.i323, !prof !374

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !375
  %i.bg = icmp ugt ptr %i.bf, inttoptr (i64 1 to ptr)
  br i1 %i.bg, label %.critedge.i323, label %bb.q, !prof !207

.critedge.i323:                                   ; preds = %bb.p, %bb.o, %bb.n
  %i.bh = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i324 = icmp eq i32 %i.bh, 0
  br i1 %.not14.i324, label %.critedge._crit_edge.i326, label %.thread540

.critedge._crit_edge.i326:                        ; preds = %.critedge.i323
  %.pre.i327 = load ptr, ptr %i.ay, align 8, !tbaa !192
  br label %bb.q

bb.q:                                             ; preds = %.critedge._crit_edge.i326, %bb.p
  %i.bi = phi ptr [ %.pre.i327, %.critedge._crit_edge.i326 ], [ %i.az, %bb.p ] ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1      ; 9 uses
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !192
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !31  ; 3 uses
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = icmp eq i8 %i.bk, 13
  br i1 %i.bm, label %bb.r, label %nextc0.exit330, !prof !207

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i.i328 = icmp ult ptr %i.bj, %i.bn
  br i1 %.not.i.i328, label %bb.s, label %.thread540

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !31
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.t, label %.thread540

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr i8, ptr %i.bi, i64 2
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !192
  br label %.thread540

.thread540:                                       ; preds = %bb.s, %bb.t, %bb.r, %.critedge.i323
  %.011.i325.ph = phi i32 [ 13, %bb.s ], [ 10, %bb.t ], [ 13, %bb.r ], [ -1, %.critedge.i323 ] ; 2 uses
  %i.br = and i32 %.011.i325.ph, -33
  br label %bb.ci

nextc0.exit330:                                   ; preds = %bb.q
  %i.bs = and i32 %i.bl, 223                      ; 2 uses
  %trunc = trunc nuw i32 %i.bs to i8
  switch i8 %trunc, label %bb.ch [
    i8 88, label %bb.u
    i8 66, label %bb.aq
    i8 68, label %bb.bl
  ]

bb.u:                                             ; preds = %nextc0.exit330
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i331 = icmp ult ptr %i.bj, %i.bt
  br i1 %.not.i331, label %bb.v, label %.critedge.i332, !prof !374

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.a, align 8
  %i.bv = and i32 %i.bu, 8
  %.not13.i338 = icmp eq i32 %i.bv, 0
  br i1 %.not13.i338, label %bb.w, label %.critedge.i332, !prof !374

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !375
  %i.by = icmp ugt ptr %i.bx, inttoptr (i64 1 to ptr)
  br i1 %i.by, label %.critedge.i332, label %bb.x, !prof !207

.critedge.i332:                                   ; preds = %bb.w, %bb.v, %bb.u
  %i.bz = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i333 = icmp eq i32 %i.bz, 0
  br i1 %.not14.i333, label %.critedge._crit_edge.i335, label %pushback.exit.thread

.critedge._crit_edge.i335:                        ; preds = %.critedge.i332
  %.pre.i336 = load ptr, ptr %i.ay, align 8, !tbaa !192
  br label %bb.x

bb.x:                                             ; preds = %.critedge._crit_edge.i335, %bb.w
  %i.ca = phi ptr [ %.pre.i336, %.critedge._crit_edge.i335 ], [ %i.bj, %bb.w ] ; 3 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 1      ; 7 uses
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !192
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !31
  %.fr = freeze i8 %i.cc                          ; 4 uses
  %i.cd = icmp eq i8 %.fr, 13
  br i1 %i.cd, label %bb.y, label %bb.aa, !prof !207

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i.i337 = icmp ult ptr %i.cb, %i.ce
  br i1 %.not.i.i337, label %bb.z, label %.loopexit587

bb.z:                                             ; preds = %bb.y
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cg = icmp eq i8 %i.cf, 10
  %i.ch = getelementptr i8, ptr %i.ca, i64 2
  %spec.select = select i1 %i.cg, ptr %i.ch, ptr %i.cb
  br label %.loopexit587

bb.aa:                                            ; preds = %bb.x
  %i.ci = add i8 %.fr, -58
  %i.cj = icmp ult i8 %i.ci, -10
  br i1 %i.cj, label %switch.early.test, label %.preheader

switch.early.test:                                ; preds = %bb.aa
  switch i8 %.fr, label %.loopexit587 [
    i8 102, label %.preheader
    i8 101, label %.preheader
    i8 100, label %.preheader
    i8 99, label %.preheader
    i8 98, label %.preheader
    i8 97, label %.preheader
    i8 70, label %.preheader
    i8 69, label %.preheader
    i8 68, label %.preheader
    i8 67, label %.preheader
    i8 66, label %.preheader
    i8 65, label %.preheader
  ]

.preheader:                                       ; preds = %bb.aa, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  %i.ck = getelementptr i8, ptr %0, i64 64
  br label %nextc0.exit353

nextc0.exit353:                                   ; preds = %nextc0.exit353.backedge, %.preheader
  %i.cl = phi ptr [ %i.cb, %.preheader ], [ %.be, %nextc0.exit353.backedge ] ; 2 uses
  %.1250.shrunk = phi i8 [ %.fr, %.preheader ], [ %.1250.shrunk.be, %nextc0.exit353.backedge ]
  %.0235 = phi i32 [ 0, %.preheader ], [ %.1236, %nextc0.exit353.backedge ] ; 3 uses
  %.1250.shrunk.fr = freeze i8 %.1250.shrunk      ; 4 uses
  %i.cm = icmp eq i8 %.1250.shrunk.fr, 95
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %nextc0.exit353
  %.not306 = icmp eq i32 %.0235, 0
  br i1 %.not306, label %tokadd.exit344, label %.loopexit587

bb.ac:                                            ; preds = %nextc0.exit353
  %i.cn = add i8 %.1250.shrunk.fr, -58
  %i.co = icmp ult i8 %i.cn, -10
  br i1 %i.co, label %switch.early.test586, label %bb.ad

switch.early.test586:                             ; preds = %bb.ac
  switch i8 %.1250.shrunk.fr, label %.loopexit587 [
    i8 102, label %bb.ad
    i8 101, label %bb.ad
    i8 100, label %bb.ad
    i8 99, label %bb.ad
    i8 98, label %bb.ad
    i8 97, label %bb.ad
    i8 70, label %bb.ad
    i8 69, label %bb.ad
    i8 68, label %bb.ad
    i8 67, label %bb.ad
    i8 66, label %bb.ad
    i8 65, label %bb.ad
  ]

bb.ad:                                            ; preds = %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %switch.early.test586, %bb.ac
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.cq = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.h, align 8, !tbaa !388
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr i8, ptr %i.cp, i64 %i.cs
  store i8 %.1250.shrunk.fr, ptr %i.ct, align 1, !tbaa !31
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !388
  %i.cv = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i343 = icmp slt i32 %i.cu, %i.cv
  br i1 %.not.i343, label %tokadd.exit344, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = shl i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cw, ptr %i.n, align 4, !tbaa !365
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.cy = sext i32 %i.cw to i64
  %i.cz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.cx, i64 noundef %i.cy, i64 noundef 1) #38
  store ptr %i.cz, ptr %i.i, align 8, !tbaa !362
  br label %tokadd.exit344

tokadd.exit344:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.1236 = phi i32 [ 95, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ae ] ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i345 = icmp ult ptr %i.da, %i.db
  br i1 %.not.i345, label %bb.af, label %.critedge.i346, !prof !374

end_hunk_0
begin_hunk_1_@parse_numeric:bb.a
  %i.hr = getelementptr i8, ptr %0, i64 64
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !375
  %i.ht = icmp ugt ptr %i.hs, inttoptr (i64 1 to ptr)
  br i1 %i.ht, label %.critedge.i376, label %bb.bo, !prof !207

.critedge.i376:                                   ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.hu = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i377 = icmp eq i32 %i.hu, 0
  br i1 %.not14.i377, label %.critedge._crit_edge.i379, label %pushback.exit395.thread

.critedge._crit_edge.i379:                        ; preds = %.critedge.i376
  %.pre.i380 = load ptr, ptr %i.ay, align 8, !tbaa !192
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge._crit_edge.i379, %bb.bn
  %i.hv = phi ptr [ %.pre.i380, %.critedge._crit_edge.i379 ], [ %i.bj, %bb.bn ] ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 1      ; 7 uses
  store ptr %i.hw, ptr %i.ay, align 8, !tbaa !192
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !31  ; 3 uses
  %i.hy = icmp eq i8 %i.hx, 13
  br i1 %i.hy, label %bb.bp, label %bb.br, !prof !207

bb.bp:                                            ; preds = %bb.bo
  %i.hz = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i.i381 = icmp ult ptr %i.hw, %i.hz
  br i1 %.not.i.i381, label %bb.bq, label %.thread516

bb.bq:                                            ; preds = %bb.bp
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !31
  %i.ib = icmp eq i8 %i.ia, 10
  %i.ic = getelementptr i8, ptr %i.hv, i64 2
  %spec.select839 = select i1 %i.ib, ptr %i.ic, ptr %i.hw
  br label %.thread516

bb.br:                                            ; preds = %bb.bo
  %i.id = add i8 %i.hx, -58
  %i.ie = icmp ult i8 %i.id, -10
  br i1 %i.ie, label %.thread516, label %.preheader589

.preheader589:                                    ; preds = %bb.br
  %i.if = getelementptr i8, ptr %0, i64 64
  br label %nextc0.exit394

nextc0.exit394:                                   ; preds = %nextc0.exit394.backedge, %.preheader589
  %i.ig = phi ptr [ %i.hw, %.preheader589 ], [ %.be949, %nextc0.exit394.backedge ] ; 2 uses
  %.5254.shrunk = phi i8 [ %i.hx, %.preheader589 ], [ %.5254.shrunk.be, %nextc0.exit394.backedge ] ; 3 uses
  %.6 = phi i32 [ 0, %.preheader589 ], [ %.7, %nextc0.exit394.backedge ] ; 3 uses
  %i.ih = icmp eq i8 %.5254.shrunk, 95
  br i1 %i.ih, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %nextc0.exit394
  %.not297 = icmp eq i32 %.6, 0
  br i1 %.not297, label %tokadd.exit385, label %.thread516

bb.bt:                                            ; preds = %nextc0.exit394
  %i.ii = add i8 %.5254.shrunk, -58
  %i.ij = icmp ult i8 %i.ii, -10
  br i1 %i.ij, label %.thread516, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ik = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.il = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.h, align 8, !tbaa !388
  %i.in = sext i32 %i.il to i64
  %i.io = getelementptr i8, ptr %i.ik, i64 %i.in
  store i8 %.5254.shrunk, ptr %i.io, align 1, !tbaa !31
  %i.ip = load i32, ptr %i.h, align 8, !tbaa !388
  %i.iq = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i384 = icmp slt i32 %i.ip, %i.iq
  br i1 %.not.i384, label %tokadd.exit385, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ir = shl i32 %i.iq, 1                        ; 2 uses
  store i32 %i.ir, ptr %i.n, align 4, !tbaa !365
  %i.is = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.it = sext i32 %i.ir to i64
  %i.iu = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.is, i64 noundef %i.it, i64 noundef 1) #38
  store ptr %i.iu, ptr %i.i, align 8, !tbaa !362
  br label %tokadd.exit385

tokadd.exit385:                                   ; preds = %bb.bv, %bb.bu, %bb.bs
  %.7 = phi i32 [ 95, %bb.bs ], [ 0, %bb.bu ], [ 0, %bb.bv ] ; 2 uses
  %i.iv = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.iw = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i386 = icmp ult ptr %i.iv, %i.iw
  br i1 %.not.i386, label %bb.bw, label %.critedge.i387, !prof !374

bb.bw:                                            ; preds = %tokadd.exit385
  %i.ix = load i32, ptr %i.a, align 8
  %i.iy = and i32 %i.ix, 8
  %.not13.i393 = icmp eq i32 %i.iy, 0
  br i1 %.not13.i393, label %bb.bx, label %.critedge.i387, !prof !374

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load ptr, ptr %i.if, align 8, !tbaa !375
  %i.ja = icmp ugt ptr %i.iz, inttoptr (i64 1 to ptr)
  br i1 %i.ja, label %.critedge.i387, label %bb.by, !prof !207

.critedge.i387:                                   ; preds = %bb.bx, %bb.bw, %tokadd.exit385
  %i.jb = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i388 = icmp eq i32 %i.jb, 0
  br i1 %.not14.i388, label %.critedge._crit_edge.i390, label %pushback.exit395

.critedge._crit_edge.i390:                        ; preds = %.critedge.i387
  %.pre.i391 = load ptr, ptr %i.ay, align 8, !tbaa !192
  br label %bb.by

bb.by:                                            ; preds = %.critedge._crit_edge.i390, %bb.bx
  %i.jc = phi ptr [ %.pre.i391, %.critedge._crit_edge.i390 ], [ %i.iv, %bb.bx ] ; 3 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 1      ; 6 uses
  store ptr %i.jd, ptr %i.ay, align 8, !tbaa !192
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !31  ; 2 uses
  %i.jf = icmp eq i8 %i.je, 13
  br i1 %i.jf, label %bb.bz, label %nextc0.exit394.backedge, !prof !207

nextc0.exit394.backedge:                          ; preds = %bb.by, %bb.bz, %bb.ca, %bb.cb
  %.be949 = phi ptr [ %i.jd, %bb.ca ], [ %i.jd, %bb.by ], [ %i.jd, %bb.bz ], [ %i.jj, %bb.cb ]
  %.5254.shrunk.be = phi i8 [ 13, %bb.ca ], [ %i.je, %bb.by ], [ 13, %bb.bz ], [ 10, %bb.cb ]
  br label %nextc0.exit394, !llvm.loop !632

bb.bz:                                            ; preds = %bb.by
  %i.jg = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i.i392 = icmp ult ptr %i.jd, %i.jg
  br i1 %.not.i.i392, label %bb.ca, label %nextc0.exit394.backedge

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load i8, ptr %i.jd, align 1, !tbaa !31
  %i.ji = icmp eq i8 %i.jh, 10
  br i1 %i.ji, label %bb.cb, label %nextc0.exit394.backedge

bb.cb:                                            ; preds = %bb.ca
  %i.jj = getelementptr i8, ptr %i.jc, i64 2      ; 2 uses
  store ptr %i.jj, ptr %i.ay, align 8, !tbaa !192
  br label %nextc0.exit394.backedge

.thread516:                                       ; preds = %bb.bs, %bb.bt, %bb.bq, %bb.bp, %bb.br
  %i.jk = phi ptr [ %spec.select839, %bb.bq ], [ %i.hw, %bb.br ], [ %i.hw, %bb.bp ], [ %i.ig, %bb.bt ], [ %i.ig, %bb.bs ] ; 2 uses
  %.8.ph = phi i32 [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bp ], [ %.6, %bb.bt ], [ %.6, %bb.bs ] ; 4 uses
  %i.jl = load i32, ptr %i.a, align 8
  %i.jm = and i32 %i.jl, -9
  store i32 %i.jm, ptr %i.a, align 8
  %i.jn = getelementptr i8, ptr %i.jk, i64 -1     ; 3 uses
  store ptr %i.jn, ptr %i.ay, align 8, !tbaa !192
  %i.jo = getelementptr i8, ptr %0, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !65
  %i.jq = icmp ugt ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.cc, label %pushback.exit395

bb.cc:                                            ; preds = %.thread516
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !31
  %i.js = icmp eq i8 %i.jr, 10
  br i1 %i.js, label %bb.cd, label %pushback.exit395

bb.cd:                                            ; preds = %bb.cc
  %i.jt = getelementptr i8, ptr %i.jk, i64 -2     ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !31
  %i.jv = icmp eq i8 %i.ju, 13
  br i1 %i.jv, label %bb.ce, label %pushback.exit395

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.jt, ptr %i.ay, align 8, !tbaa !192
  br label %pushback.exit395

pushback.exit395:                                 ; preds = %.critedge.i387, %.thread516, %bb.cc, %bb.cd, %bb.ce
  %.8528 = phi i32 [ %.8.ph, %bb.ce ], [ %.8.ph, %.thread516 ], [ %.8.ph, %bb.cc ], [ %.8.ph, %bb.cd ], [ %.7, %.critedge.i387 ] ; 2 uses
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.jx = load i32, ptr %i.h, align 8, !tbaa !388
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr i8, ptr %i.jw, i64 %i.jy
  store i8 0, ptr %i.jz, align 1, !tbaa !31
  %i.ka = load i32, ptr %i.h, align 8, !tbaa !388
  %i.kb = icmp eq i32 %i.ka, %i.ax
  br i1 %i.kb, label %bb.cf, label %bb.cg

pushback.exit395.thread:                          ; preds = %.critedge.i376
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.kd = load i32, ptr %i.h, align 8, !tbaa !388
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr %i.kc, i64 %i.ke
  store i8 0, ptr %i.kf, align 1, !tbaa !31
  %i.kg = load i32, ptr %i.h, align 8, !tbaa !388
  %i.kh = icmp eq i32 %i.kg, %i.ax
  br i1 %i.kh, label %bb.cf, label %.thread535

bb.cf:                                            ; preds = %pushback.exit395.thread, %pushback.exit395
  %i.ki = tail call fastcc i32 @no_digits(ptr noundef nonnull %0)
  br label %.thread546

bb.cg:                                            ; preds = %pushback.exit395
  %.not299 = icmp eq i32 %.8528, 0
  br i1 %.not299, label %.thread535, label %.thread552

.thread535:                                       ; preds = %pushback.exit395.thread, %bb.cg
  %i.kj = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.kk = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.kj, i32 noundef 10, i32 noundef 0)
  br label %.thread546

bb.ch:                                            ; preds = %nextc0.exit330
  %i.kl = icmp eq i8 %i.bk, 95
  br i1 %i.kl, label %nextc0.exit406.a, label %bb.ci

bb.ci:                                            ; preds = %.thread540, %bb.ch
  %.011.i325452479511542 = phi i32 [ %.011.i325.ph, %.thread540 ], [ %i.bl, %bb.ch ]
  %i.km = phi i32 [ %i.br, %.thread540 ], [ %i.bs, %bb.ch ]
  %or.cond13 = icmp eq i32 %i.km, 79
  br i1 %or.cond13, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.kn = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  switch i32 %i.kn, label %bb.ck [
    i32 -1, label %bb.cl
    i32 95, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.ko = add nsw i32 %i.kn, -58
  %i.kp = icmp ult i32 %i.ko, -10
  br i1 %i.kp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.cj, %bb.ck
  %i.kq = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.kr = load i32, ptr %i.h, align 8, !tbaa !388
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr i8, ptr %i.kq, i64 %i.ks
  store i8 0, ptr %i.kt, align 1, !tbaa !31
  %i.ku = tail call fastcc i32 @no_digits(ptr noundef nonnull %0)
  br label %.thread546

bb.cm:                                            ; preds = %bb.ck, %bb.ci
  %.7256 = phi i32 [ %i.kn, %bb.ck ], [ %.011.i325452479511542, %bb.ci ] ; 3 uses
  %i.kv = and i32 %.7256, -8
  %or.cond17 = icmp eq i32 %i.kv, 48
  br i1 %or.cond17, label %nextc0.exit406.a, label %bb.cy

nextc0.exit406.a:                                 ; preds = %bb.cm, %bb.ch
  %.9258 = phi i32 [ 95, %bb.ch ], [ %.7256, %bb.cm ] ; 2 uses
  %3 = getelementptr i8, ptr %0, i64 64
  %4 = icmp ne i32 %.9258, 95                     ; 2 uses
  br i1 %4, label %bb.cn, label %tokadd.exit397

bb.cn:                                            ; preds = %nextc0.exit406, %nextc0.exit406.a
  %.9258.lcssa = phi i32 [ %.9258, %nextc0.exit406.a ], [ %.011.i401, %nextc0.exit406 ] ; 3 uses
  %.9.lcssa = phi i32 [ 0, %nextc0.exit406.a ], [ 95, %nextc0.exit406 ] ; 2 uses
  %i.kw = add nsw i32 %.9258.lcssa, -58
  %or.cond19 = icmp ult i32 %i.kw, -10
  br i1 %or.cond19, label %nextc0.exit406.thread, label %.loopexit

tokadd.exit397:                                   ; preds = %nextc0.exit406.a
  %i.kx = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.ky = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i398 = icmp ult ptr %i.kx, %i.ky
  br i1 %.not.i398, label %bb.co, label %.critedge.i399, !prof !374

bb.co:                                            ; preds = %tokadd.exit397
  %i.kz = load i32, ptr %i.a, align 8
  %i.la = and i32 %i.kz, 8
  %.not13.i405 = icmp eq i32 %i.la, 0
  br i1 %.not13.i405, label %bb.cp, label %.critedge.i399, !prof !374

bb.cp:                                            ; preds = %bb.co
  %i.lb = load ptr, ptr %3, align 8, !tbaa !375
  %i.lc = icmp ugt ptr %i.lb, inttoptr (i64 1 to ptr)
  br i1 %i.lc, label %.critedge.i399, label %bb.cq, !prof !207

.critedge.i399:                                   ; preds = %bb.cp, %bb.co, %tokadd.exit397
  %i.ld = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i400 = icmp eq i32 %i.ld, 0
  br i1 %.not14.i400, label %.critedge._crit_edge.i402, label %nextc0.exit406.thread.thread

.critedge._crit_edge.i402:                        ; preds = %.critedge.i399
  %.pre.i403 = load ptr, ptr %i.ay, align 8, !tbaa !192
  br label %bb.cq

bb.cq:                                            ; preds = %.critedge._crit_edge.i402, %bb.cp
  %i.le = phi ptr [ %.pre.i403, %.critedge._crit_edge.i402 ], [ %i.kx, %bb.cp ] ; 3 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 1      ; 3 uses
  store ptr %i.lf, ptr %i.ay, align 8, !tbaa !192
  %i.lg = load i8, ptr %i.le, align 1, !tbaa !31  ; 2 uses
  %i.lh = zext i8 %i.lg to i32
  %i.li = icmp eq i8 %i.lg, 13
  br i1 %i.li, label %bb.cr, label %nextc0.exit406, !prof !207

bb.cr:                                            ; preds = %bb.cq
  %i.lj = load ptr, ptr %i.ba, align 8, !tbaa !324
  %.not.i.i404 = icmp ult ptr %i.lf, %i.lj
  br i1 %.not.i.i404, label %bb.cs, label %nextc0.exit406

bb.cs:                                            ; preds = %bb.cr
  %i.lk = load i8, ptr %i.lf, align 1, !tbaa !31
  %i.ll = icmp eq i8 %i.lk, 10
  br i1 %i.ll, label %bb.ct, label %nextc0.exit406

bb.ct:                                            ; preds = %bb.cs
  %i.lm = getelementptr i8, ptr %i.le, i64 2
  store ptr %i.lm, ptr %i.ay, align 8, !tbaa !192
  br label %nextc0.exit406

nextc0.exit406:                                   ; preds = %bb.cq, %bb.cr, %bb.cs, %bb.ct
  %.011.i401 = phi i32 [ 13, %bb.cs ], [ %i.lh, %bb.cq ], [ 13, %bb.cr ], [ 10, %bb.ct ] ; 3 uses
  %5 = icmp eq i32 %.011.i401, 95
  br i1 %5, label %nextc0.exit406.thread, label %bb.cn

nextc0.exit406.thread:                            ; preds = %nextc0.exit406, %bb.cn
  %.9258920 = phi i32 [ %.9258.lcssa, %bb.cn ], [ %.011.i401, %nextc0.exit406 ] ; 3 uses
  %.not290917 = phi i1 [ %4, %bb.cn ], [ false, %nextc0.exit406 ]
  %.9914 = phi i32 [ %.9.lcssa, %bb.cn ], [ 95, %nextc0.exit406 ] ; 2 uses
  %i.ln = load i32, ptr %i.h, align 8, !tbaa !388
  %i.lo = icmp sgt i32 %i.ln, %i.ax
  br i1 %i.lo, label %bb.cu, label %bb.cw

nextc0.exit406.thread.thread:                     ; preds = %.critedge.i399
  %6 = load i32, ptr %i.h, align 8, !tbaa !388
  %7 = icmp sgt i32 %6, %i.ax
  br i1 %7, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %nextc0.exit406.thread.thread, %nextc0.exit406.thread
  %.11789 = phi i32 [ 95, %nextc0.exit406.thread.thread ], [ %.9914, %nextc0.exit406.thread ] ; 2 uses
  %.10259787 = phi i32 [ -1, %nextc0.exit406.thread.thread ], [ %.9258920, %nextc0.exit406.thread ]
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.10259787)
  %i.lp = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.lq = load i32, ptr %i.h, align 8, !tbaa !388
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr i8, ptr %i.lp, i64 %i.lr
  store i8 0, ptr %i.ls, align 1, !tbaa !31
  %.not293 = icmp eq i32 %.11789, 0
  br i1 %.not293, label %bb.cv, label %.thread552

bb.cv:                                            ; preds = %bb.cu
  %i.lt = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.lu = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.lt, i32 noundef 8, i32 noundef 0)
  br label %.thread546

bb.cw:                                            ; preds = %nextc0.exit406.thread
  br i1 %.not290917, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %nextc0.exit406.thread.thread, %bb.cw
  %.10259788796 = phi i32 [ %.9258920, %bb.cw ], [ -1, %nextc0.exit406.thread.thread ]
  %.11790795 = phi i32 [ %.9914, %bb.cw ], [ 95, %nextc0.exit406.thread.thread ]
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.10259788796)
  br label %.thread552

bb.cy:                                            ; preds = %bb.cw, %bb.cm
  %.11260 = phi i32 [ %.9258920, %bb.cw ], [ %.7256, %bb.cm ] ; 5 uses
  %i.lv = and i32 %.11260, -2
  %or.cond21 = icmp eq i32 %i.lv, 56
  br i1 %or.cond21, label %.loopexit, label %bb.cz

.loopexit:                                        ; preds = %bb.cn, %bb.cy
  %.12261 = phi i32 [ %.11260, %bb.cy ], [ %.9258.lcssa, %bb.cn ]
  %.13 = phi i32 [ 0, %bb.cy ], [ %.9.lcssa, %bb.cn ]
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.844)
  br label %nextc0.exit.thread

bb.cz:                                            ; preds = %bb.cy
  switch i32 %.11260, label %bb.db [
    i32 101, label %bb.da
    i32 69, label %bb.da
    i32 46, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 48)
  br label %nextc0.exit.thread

bb.db:                                            ; preds = %bb.cz
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.11260)
  %i.lw = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.lx = load i32, ptr %i.h, align 8, !tbaa !388
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr i8, ptr %i.lw, i64 %i.ly
  store i8 0, ptr %i.lz, align 1, !tbaa !31
  %i.ma = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.mb = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.ma, i32 noundef 10, i32 noundef 0)
  br label %.thread546

nextc0.exit.thread:                               ; preds = %bb.l, %bb.m, %bb.k, %.critedge.i, %bb.da, %.loopexit, %nextc0.exit
  %.15264 = phi i32 [ %.11260, %bb.da ], [ %.0249, %nextc0.exit ], [ %.12261, %.loopexit ], [ 13, %bb.l ], [ 10, %bb.m ], [ 13, %bb.k ], [ -1, %.critedge.i ]
  %.16 = phi i32 [ 0, %bb.da ], [ 0, %nextc0.exit ], [ %.13, %.loopexit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %.critedge.i ]
  %i.mc = getelementptr i8, ptr %0, i64 80        ; 17 uses
  %i.md = getelementptr i8, ptr %0, i64 88        ; 6 uses
  %i.me = getelementptr i8, ptr %0, i64 64        ; 3 uses
  br label %nextc0.exit446

nextc0.exit446:                                   ; preds = %nextc0.exit446.backedge, %nextc0.exit.thread
  %.16265 = phi i32 [ %.15264, %nextc0.exit.thread ], [ %.16265.be, %nextc0.exit446.backedge ] ; 3 uses
  %.0245 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1246, %nextc0.exit446.backedge ] ; 8 uses
  %.0241 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1242, %nextc0.exit446.backedge ] ; 18 uses
  %.0237 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1238, %nextc0.exit446.backedge ] ; 13 uses
  %.17 = phi i32 [ %.16, %nextc0.exit.thread ], [ %.18, %nextc0.exit446.backedge ] ; 6 uses
  switch i32 %.16265, label %pushback.exit423.thread.loopexit [
    i32 48, label %bb.dc
    i32 49, label %bb.dc
    i32 50, label %bb.dc
    i32 51, label %bb.dc
    i32 52, label %bb.dc
    i32 53, label %bb.dc
    i32 54, label %bb.dc
    i32 55, label %bb.dc
    i32 56, label %bb.dc
    i32 57, label %bb.dc
    i32 46, label %bb.de
    i32 101, label %bb.dr
    i32 69, label %bb.dr
    i32 95, label %bb.eh
    i32 -1, label %pushback.exit447
  ]

bb.dc:                                            ; preds = %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446, %nextc0.exit446
  %i.mf = trunc nuw nsw i32 %.16265 to i8
  %i.mg = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.mh = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.mi = add i32 %i.mh, 1
  store i32 %i.mi, ptr %i.h, align 8, !tbaa !388
  %i.mj = sext i32 %i.mh to i64
  %i.mk = getelementptr i8, ptr %i.mg, i64 %i.mj
  store i8 %i.mf, ptr %i.mk, align 1, !tbaa !31
  %i.ml = load i32, ptr %i.h, align 8, !tbaa !388
  %i.mm = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i407 = icmp slt i32 %i.ml, %i.mm
  br i1 %.not.i407, label %tokadd.exit408, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mn = shl i32 %i.mm, 1                        ; 2 uses
  store i32 %i.mn, ptr %i.n, align 4, !tbaa !365
  %i.mo = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.mp = sext i32 %i.mn to i64
  %i.mq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.mo, i64 noundef %i.mp, i64 noundef 1) #38
  store ptr %i.mq, ptr %i.i, align 8, !tbaa !362
  br label %tokadd.exit408

bb.de:                                            ; preds = %nextc0.exit446
  %.not313 = icmp eq i32 %.17, 0
  br i1 %.not313, label %bb.df, label %.thread552

bb.df:                                            ; preds = %bb.de
  %i.mr = icmp ne i32 %.0241, 0
  %i.ms = icmp ne i32 %.0237, 0
  %or.cond27 = select i1 %i.mr, i1 true, i1 %i.ms
  br i1 %or.cond27, label %pushback.exit423.thread.loopexit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mt = load ptr, ptr %i.mc, align 8, !tbaa !192 ; 2 uses
  %i.mu = load ptr, ptr %i.md, align 8, !tbaa !324
  %.not.i409 = icmp ult ptr %i.mt, %i.mu
  br i1 %.not.i409, label %bb.dh, label %.critedge.i410, !prof !374

bb.dh:                                            ; preds = %bb.dg
  %i.mv = load i32, ptr %i.a, align 8
  %i.mw = and i32 %i.mv, 8
  %.not13.i416 = icmp eq i32 %i.mw, 0
  br i1 %.not13.i416, label %bb.di, label %.critedge.i410, !prof !374

bb.di:                                            ; preds = %bb.dh
  %i.mx = load ptr, ptr %i.me, align 8, !tbaa !375
  %i.my = icmp ugt ptr %i.mx, inttoptr (i64 1 to ptr)
  br i1 %i.my, label %.critedge.i410, label %bb.dj, !prof !207

.critedge.i410:                                   ; preds = %bb.di, %bb.dh, %bb.dg
  %i.mz = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i411 = icmp eq i32 %i.mz, 0
  br i1 %.not14.i411, label %.critedge._crit_edge.i413, label %pushback.exit423.thread.loopexit

.critedge._crit_edge.i413:                        ; preds = %.critedge.i410
  %.pre.i414 = load ptr, ptr %i.mc, align 8, !tbaa !192
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge._crit_edge.i413, %bb.di
  %i.na = phi ptr [ %.pre.i414, %.critedge._crit_edge.i413 ], [ %i.mt, %bb.di ] ; 5 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 1
  store ptr %i.nb, ptr %i.mc, align 8, !tbaa !192
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !31  ; 3 uses
  %i.nd = icmp eq i8 %i.nc, 13
  br i1 %i.nd, label %bb.dk, label %bb.dm, !prof !207

bb.dk:                                            ; preds = %bb.dj
  %i.ne = getelementptr i8, ptr %i.na, i64 1      ; 4 uses
  %i.nf = load ptr, ptr %i.md, align 8, !tbaa !324
  %.not.i.i415 = icmp ult ptr %i.ne, %i.nf
  br i1 %.not.i.i415, label %bb.dl, label %.split271

bb.dl:                                            ; preds = %bb.dk
  %i.ng = load i8, ptr %i.ne, align 1, !tbaa !31
  %i.nh = icmp eq i8 %i.ng, 10
  %i.ni = getelementptr i8, ptr %i.na, i64 2
  %spec.select840 = select i1 %i.nh, ptr %i.ni, ptr %i.ne
  br label %.split271

bb.dm:                                            ; preds = %bb.dj
  %i.nj = add i8 %i.nc, -58
  %i.nk = icmp ult i8 %i.nj, -10
  br i1 %i.nk, label %.split271.loopexit, label %.split

.split271.loopexit:                               ; preds = %bb.dm
  %i.nl = getelementptr i8, ptr %i.na, i64 1
  br label %.split271

.split271:                                        ; preds = %bb.dl, %.split271.loopexit, %bb.dk
  %i.nm = phi ptr [ %spec.select840, %bb.dl ], [ %i.ne, %bb.dk ], [ %i.nl, %.split271.loopexit ] ; 2 uses
  %i.nn = load i32, ptr %i.a, align 8
  %i.no = and i32 %i.nn, -9                       ; 4 uses
  store i32 %i.no, ptr %i.a, align 8
  %i.np = getelementptr i8, ptr %i.nm, i64 -1     ; 6 uses
  store ptr %i.np, ptr %i.mc, align 8, !tbaa !192
  %i.nq = getelementptr i8, ptr %0, i64 72
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !65 ; 4 uses
  %i.ns = icmp ugt ptr %i.np, %i.nr
  br i1 %i.ns, label %bb.dn, label %pushback.exit423.thread

bb.dn:                                            ; preds = %.split271
  %i.nt = load i8, ptr %i.np, align 1, !tbaa !31
  %i.nu = icmp eq i8 %i.nt, 10
  br i1 %i.nu, label %bb.do, label %pushback.exit423.thread

bb.do:                                            ; preds = %bb.dn
  %i.nv = getelementptr i8, ptr %i.nm, i64 -2     ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !31
  %i.nx = icmp eq i8 %i.nw, 13
  %spec.select841 = select i1 %i.nx, ptr %i.nv, ptr %i.np
  br label %pushback.exit423.thread

.split:                                           ; preds = %bb.dm
  %i.ny = load i32, ptr %i.h, align 8, !tbaa !388 ; 3 uses
  %i.nz = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.oa = add i32 %i.ny, 1
  store i32 %i.oa, ptr %i.h, align 8, !tbaa !388
  %i.ob = sext i32 %i.ny to i64
  %i.oc = getelementptr i8, ptr %i.nz, i64 %i.ob
  store i8 46, ptr %i.oc, align 1, !tbaa !31
  %i.od = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.oe = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i419 = icmp slt i32 %i.od, %i.oe
  %.pre702 = load ptr, ptr %i.i, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i419, label %tokadd.exit420, label %bb.dp

bb.dp:                                            ; preds = %.split
  %i.of = shl i32 %i.oe, 1                        ; 2 uses
  store i32 %i.of, ptr %i.n, align 4, !tbaa !365
  %i.og = sext i32 %i.of to i64
  %i.oh = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre702, i64 noundef %i.og, i64 noundef 1) #38 ; 2 uses
  store ptr %i.oh, ptr %i.i, align 8, !tbaa !362
  %.pre703.a = load i32, ptr %i.h, align 8, !tbaa !388
  br label %tokadd.exit420

tokadd.exit420:                                   ; preds = %.split, %bb.dp
  %i.oi = phi i32 [ %i.od, %.split ], [ %.pre703.a, %bb.dp ] ; 2 uses
  %i.oj = phi ptr [ %.pre702, %.split ], [ %i.oh, %bb.dp ]
  %i.ok = add i32 %i.oi, 1
  store i32 %i.ok, ptr %i.h, align 8, !tbaa !388
  %i.ol = sext i32 %i.oi to i64
  %i.om = getelementptr i8, ptr %i.oj, i64 %i.ol
end_hunk_1
begin_hunk_2_@parse_numeric:bb.a
  %i.pv = getelementptr i8, ptr %i.pn, i64 2
  %spec.select843 = select i1 %i.pu, ptr %i.pv, ptr %i.pr
  br label %.thread575

nextc0.exit432.thread:                            ; preds = %bb.dz
  %i.pw = add i8 %i.pp, -58
  %i.px = icmp ult i8 %i.pw, -10
  br i1 %i.px, label %.thread575.loopexit, label %bb.ee

.thread575.loopexit:                              ; preds = %nextc0.exit432.thread
  %i.py = getelementptr i8, ptr %i.pn, i64 1
  br label %.thread575

.thread575:                                       ; preds = %bb.eb, %.thread575.loopexit, %bb.ea
  %i.pz = phi ptr [ %i.pr, %bb.ea ], [ %spec.select843, %bb.eb ], [ %i.py, %.thread575.loopexit ] ; 2 uses
  %i.qa = load i32, ptr %i.a, align 8
  %i.qb = and i32 %i.qa, -9                       ; 4 uses
  store i32 %i.qb, ptr %i.a, align 8
  %i.qc = getelementptr i8, ptr %i.pz, i64 -1     ; 6 uses
  store ptr %i.qc, ptr %i.mc, align 8, !tbaa !192
  %i.qd = getelementptr i8, ptr %0, i64 72
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !65 ; 4 uses
  %i.qf = icmp ugt ptr %i.qc, %i.qe
  br i1 %i.qf, label %bb.ec, label %pushback.exit423.thread

bb.ec:                                            ; preds = %.thread575
  %i.qg = load i8, ptr %i.qc, align 1, !tbaa !31
  %i.qh = icmp eq i8 %i.qg, 10
  br i1 %i.qh, label %bb.ed, label %pushback.exit423.thread

bb.ed:                                            ; preds = %bb.ec
  %i.qi = getelementptr i8, ptr %i.pz, i64 -2     ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !31
  %i.qk = icmp eq i8 %i.qj, 13
  %spec.select844 = select i1 %i.qk, ptr %i.qi, ptr %i.qc
  br label %pushback.exit423.thread

bb.ee:                                            ; preds = %bb.dz, %bb.dz, %nextc0.exit432.thread
  %i.ql = trunc nuw nsw i32 %.16265 to i8
  %i.qm = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.qn = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr %i.h, align 8, !tbaa !388
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr i8, ptr %i.qm, i64 %i.qp
  store i8 %i.ql, ptr %i.qq, align 1, !tbaa !31
  %i.qr = load i32, ptr %i.h, align 8, !tbaa !388 ; 2 uses
  %i.qs = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i434 = icmp slt i32 %i.qr, %i.qs
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i434, label %tokadd.exit435, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qt = shl i32 %i.qs, 1                        ; 2 uses
  store i32 %i.qt, ptr %i.n, align 4, !tbaa !365
  %i.qu = sext i32 %i.qt to i64
  %i.qv = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.qu, i64 noundef 1) #38 ; 2 uses
  store ptr %i.qv, ptr %i.i, align 8, !tbaa !362
  %.pre701 = load i32, ptr %i.h, align 8, !tbaa !388
  br label %tokadd.exit435

tokadd.exit435:                                   ; preds = %bb.ee, %bb.ef
  %i.qw = phi i32 [ %i.qr, %bb.ee ], [ %.pre701, %bb.ef ] ; 2 uses
  %i.qx = phi ptr [ %.pre, %bb.ee ], [ %i.qv, %bb.ef ]
  %i.qy = add i32 %.0245, 1
  %i.qz = add i32 %i.qw, 1
  store i32 %i.qz, ptr %i.h, align 8, !tbaa !388
  %i.ra = sext i32 %i.qw to i64
  %i.rb = getelementptr i8, ptr %i.qx, i64 %i.ra
  store i8 %i.pp, ptr %i.rb, align 1, !tbaa !31
  %i.rc = load i32, ptr %i.h, align 8, !tbaa !388
  %i.rd = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i436 = icmp slt i32 %i.rc, %i.rd
  br i1 %.not.i436, label %tokadd.exit437, label %bb.eg

bb.eg:                                            ; preds = %tokadd.exit435
  %i.re = shl i32 %i.rd, 1                        ; 2 uses
  store i32 %i.re, ptr %i.n, align 4, !tbaa !365
  %i.rf = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.rg = sext i32 %i.re to i64
  %i.rh = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.rf, i64 noundef %i.rg, i64 noundef 1) #38
  store ptr %i.rh, ptr %i.i, align 8, !tbaa !362
  br label %tokadd.exit437

tokadd.exit437:                                   ; preds = %tokadd.exit435, %bb.eg
  %i.ri = icmp eq i8 %i.pp, 45
  %i.rj = icmp eq i8 %i.pp, 43
  %or.cond31 = or i1 %i.ri, %i.rj
  %i.rk = select i1 %or.cond31, i32 %i.pq, i32 0
  br label %tokadd.exit408

bb.eh:                                            ; preds = %nextc0.exit446
  %.not309 = icmp eq i32 %.17, 0
  br i1 %.not309, label %tokadd.exit408, label %pushback.exit423.thread.loopexit

tokadd.exit408:                                   ; preds = %bb.dd, %bb.dc, %bb.eh, %tokadd.exit437, %tokadd.exit422
  %.1246 = phi i32 [ %.0245, %bb.eh ], [ %i.ot, %tokadd.exit422 ], [ %i.qy, %tokadd.exit437 ], [ %.0245, %bb.dc ], [ %.0245, %bb.dd ]
  %.1242 = phi i32 [ %.0241, %bb.eh ], [ %i.ny, %tokadd.exit422 ], [ %.0241, %tokadd.exit437 ], [ %.0241, %bb.dc ], [ %.0241, %bb.dd ]
  %.1238 = phi i32 [ %.0237, %bb.eh ], [ 0, %tokadd.exit422 ], [ 1, %tokadd.exit437 ], [ %.0237, %bb.dc ], [ %.0237, %bb.dd ]
  %.18 = phi i32 [ 95, %bb.eh ], [ 0, %tokadd.exit422 ], [ %i.rk, %tokadd.exit437 ], [ 0, %bb.dc ], [ 0, %bb.dd ]
  %i.rl = load ptr, ptr %i.mc, align 8, !tbaa !192 ; 2 uses
  %i.rm = load ptr, ptr %i.md, align 8, !tbaa !324
  %.not.i438 = icmp ult ptr %i.rl, %i.rm
  br i1 %.not.i438, label %bb.ei, label %.critedge.i439, !prof !374

bb.ei:                                            ; preds = %tokadd.exit408
  %i.rn = load i32, ptr %i.a, align 8
  %i.ro = and i32 %i.rn, 8
  %.not13.i445 = icmp eq i32 %i.ro, 0
  br i1 %.not13.i445, label %bb.ej, label %.critedge.i439, !prof !374

bb.ej:                                            ; preds = %bb.ei
  %i.rp = load ptr, ptr %i.me, align 8, !tbaa !375
  %i.rq = icmp ugt ptr %i.rp, inttoptr (i64 1 to ptr)
  br i1 %i.rq, label %.critedge.i439, label %bb.ek, !prof !207

.critedge.i439:                                   ; preds = %bb.ej, %bb.ei, %tokadd.exit408
  %i.rr = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i440 = icmp eq i32 %i.rr, 0
  br i1 %.not14.i440, label %.critedge._crit_edge.i442, label %nextc0.exit446.backedge

nextc0.exit446.backedge:                          ; preds = %.critedge.i439, %bb.ek, %bb.el, %bb.em, %bb.en
  %.16265.be = phi i32 [ -1, %.critedge.i439 ], [ %i.rv, %bb.ek ], [ 13, %bb.el ], [ 10, %bb.en ], [ 13, %bb.em ]
  br label %nextc0.exit446

.critedge._crit_edge.i442:                        ; preds = %.critedge.i439
  %.pre.i443 = load ptr, ptr %i.mc, align 8, !tbaa !192
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge._crit_edge.i442, %bb.ej
  %i.rs = phi ptr [ %.pre.i443, %.critedge._crit_edge.i442 ], [ %i.rl, %bb.ej ] ; 3 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 1      ; 3 uses
  store ptr %i.rt, ptr %i.mc, align 8, !tbaa !192
  %i.ru = load i8, ptr %i.rs, align 1, !tbaa !31  ; 2 uses
  %i.rv = zext i8 %i.ru to i32
  %i.rw = icmp eq i8 %i.ru, 13
  br i1 %i.rw, label %bb.el, label %nextc0.exit446.backedge, !prof !207

bb.el:                                            ; preds = %bb.ek
  %i.rx = load ptr, ptr %i.md, align 8, !tbaa !324
  %.not.i.i444 = icmp ult ptr %i.rt, %i.rx
  br i1 %.not.i.i444, label %bb.em, label %nextc0.exit446.backedge

bb.em:                                            ; preds = %bb.el
  %i.ry = load i8, ptr %i.rt, align 1, !tbaa !31
  %i.rz = icmp eq i8 %i.ry, 10
  br i1 %i.rz, label %bb.en, label %nextc0.exit446.backedge

bb.en:                                            ; preds = %bb.em
  %i.sa = getelementptr i8, ptr %i.rs, i64 2
  store ptr %i.sa, ptr %i.mc, align 8, !tbaa !192
  br label %nextc0.exit446.backedge

pushback.exit423.thread.loopexit:                 ; preds = %bb.df, %bb.eh, %bb.dv, %.critedge.i410, %.critedge.i425, %nextc0.exit446
  %.0241.lcssa = phi i32 [ %.0241, %bb.df ], [ %.0241, %bb.eh ], [ %.0241, %bb.dv ], [ 0, %.critedge.i410 ], [ %.0241, %.critedge.i425 ], [ %.0241, %nextc0.exit446 ]
  %.0237.lcssa = phi i32 [ %.0237, %bb.df ], [ %.0237, %bb.eh ], [ 1, %bb.dv ], [ 0, %.critedge.i410 ], [ 0, %.critedge.i425 ], [ %.0237, %nextc0.exit446 ]
  %.pre704 = load i32, ptr %i.a, align 8
  %.pre705 = load ptr, ptr %i.mc, align 8, !tbaa !192
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 72
  %.pre706 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65
  %i.sb = and i32 %.pre704, -9
  br label %pushback.exit423.thread

pushback.exit423.thread:                          ; preds = %bb.ed, %bb.du, %bb.do, %pushback.exit423.thread.loopexit, %bb.dn, %.split271, %bb.ec, %.thread575, %bb.dt, %bb.ds
  %i.sc = phi ptr [ %i.nr, %bb.dn ], [ %i.nr, %.split271 ], [ %i.nr, %bb.do ], [ %i.qe, %bb.ec ], [ %i.qe, %.thread575 ], [ %.pre706, %pushback.exit423.thread.loopexit ], [ %i.oz, %bb.du ], [ %i.oz, %bb.dt ], [ %i.oz, %bb.ds ], [ %i.qe, %bb.ed ]
  %i.sd = phi ptr [ %i.np, %bb.dn ], [ %i.np, %.split271 ], [ %spec.select841, %bb.do ], [ %i.qc, %bb.ec ], [ %i.qc, %.thread575 ], [ %.pre705, %pushback.exit423.thread.loopexit ], [ %spec.select842, %bb.du ], [ %i.ox, %bb.dt ], [ %i.ox, %bb.ds ], [ %spec.select844, %bb.ed ] ; 2 uses
  %i.se = phi i32 [ %i.no, %bb.dn ], [ %i.no, %.split271 ], [ %i.no, %bb.do ], [ %i.qb, %bb.ec ], [ %i.qb, %.thread575 ], [ %i.sb, %pushback.exit423.thread.loopexit ], [ %i.ov, %bb.du ], [ %i.ov, %bb.dt ], [ %i.ov, %bb.ds ], [ %i.qb, %bb.ed ]
  %.0241680 = phi i32 [ 0, %bb.dn ], [ 0, %.split271 ], [ 0, %bb.do ], [ %.0241, %bb.ec ], [ %.0241, %.thread575 ], [ %.0241.lcssa, %pushback.exit423.thread.loopexit ], [ %.0241, %bb.du ], [ %.0241, %bb.dt ], [ %.0241, %bb.ds ], [ %.0241, %bb.ed ] ; 4 uses
  %.0237669 = phi i32 [ 0, %bb.dn ], [ 0, %.split271 ], [ 0, %bb.do ], [ 0, %bb.ec ], [ 0, %.thread575 ], [ %.0237.lcssa, %pushback.exit423.thread.loopexit ], [ %.0237, %bb.du ], [ %.0237, %bb.dt ], [ %.0237, %bb.ds ], [ 0, %bb.ed ] ; 4 uses
  store i32 %i.se, ptr %i.a, align 8
  %i.sf = getelementptr i8, ptr %i.sd, i64 -1     ; 3 uses
  store ptr %i.sf, ptr %i.mc, align 8, !tbaa !192
  %i.sg = icmp ugt ptr %i.sf, %i.sc
  br i1 %i.sg, label %bb.eo, label %pushback.exit447

bb.eo:                                            ; preds = %pushback.exit423.thread
  %i.sh = load i8, ptr %i.sf, align 1, !tbaa !31
  %i.si = icmp eq i8 %i.sh, 10
  br i1 %i.si, label %bb.ep, label %pushback.exit447

bb.ep:                                            ; preds = %bb.eo
  %i.sj = getelementptr i8, ptr %i.sd, i64 -2     ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !31
  %i.sl = icmp eq i8 %i.sk, 13
  br i1 %i.sl, label %bb.eq, label %pushback.exit447

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.sj, ptr %i.mc, align 8, !tbaa !192
  br label %pushback.exit447

pushback.exit447:                                 ; preds = %nextc0.exit446, %pushback.exit423.thread, %bb.eo, %bb.ep, %bb.eq
  %.0241679 = phi i32 [ %.0241680, %bb.eq ], [ %.0241680, %pushback.exit423.thread ], [ %.0241680, %bb.eo ], [ %.0241680, %bb.ep ], [ %.0241, %nextc0.exit446 ] ; 2 uses
  %.0237668 = phi i32 [ %.0237669, %bb.eq ], [ %.0237669, %pushback.exit423.thread ], [ %.0237669, %bb.eo ], [ %.0237669, %bb.ep ], [ %.0237, %nextc0.exit446 ] ; 2 uses
  %.not315 = icmp eq i32 %.17, 0
  br i1 %.not315, label %parser_show_error_line.exit, label %.thread552

.thread552:                                       ; preds = %bb.de, %bb.cu, %bb.cx, %bb.ap, %bb.cg, %bb.bk, %pushback.exit447
  %.2247 = phi i32 [ %.0245, %pushback.exit447 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0245, %bb.de ] ; 2 uses
  %.2243 = phi i32 [ %.0241679, %pushback.exit447 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0241, %bb.de ] ; 2 uses
  %.2239 = phi i32 [ %.0237668, %pushback.exit447 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0237, %bb.de ] ; 2 uses
  %.20 = phi i32 [ %.17, %pushback.exit447 ], [ %.11789, %bb.cu ], [ %.5490, %bb.bk ], [ %.8528, %bb.cg ], [ %.2465, %bb.ap ], [ %.11790795, %bb.cx ], [ %.17, %bb.de ]
  %i.sm = getelementptr i8, ptr %0, i64 80
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !192 ; 2 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 -1     ; 2 uses
  %i.sp = getelementptr i8, ptr %0, i64 96
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !64
  %i.sq = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !63 ; 4 uses
  store i32 %i.sr, ptr %2, align 4, !tbaa !372
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.st = getelementptr i8, ptr %0, i64 72
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !65
  %i.sv = ptrtoint ptr %i.so to i64
  %i.sw = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = trunc i64 %i.sx to i32
  store i32 %i.sy, ptr %i.ss, align 4, !tbaa !373
  %i.sz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.sr, ptr %i.sz, align 4, !tbaa !372
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.tb = ptrtoint ptr %i.sn to i64
  %i.tc = sub i64 %i.tb, %i.sw
  %i.td = trunc i64 %i.tc to i32
  store i32 %i.td, ptr %i.ta, align 4, !tbaa !373
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.845, i32 noundef %.20)
  %i.te = load i32, ptr %i.sq, align 4, !tbaa !63
  %i.tf = icmp eq i32 %i.sr, %i.te
  br i1 %i.tf, label %bb.er, label %parser_show_error_line.exit

bb.er:                                            ; preds = %.thread552
  %i.tg = getelementptr i8, ptr %0, i64 56
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !193
  %i.ti = getelementptr i8, ptr %0, i64 368
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.tj, ptr noundef nonnull readonly %2, i32 noundef %i.sr, ptr noundef %i.th)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.er, %.thread552, %pushback.exit447
  %.3248 = phi i32 [ %.0245, %pushback.exit447 ], [ %.2247, %.thread552 ], [ %.2247, %bb.er ]
  %.3244 = phi i32 [ %.0241679, %pushback.exit447 ], [ %.2243, %.thread552 ], [ %.2243, %bb.er ]
  %.3240 = phi i32 [ %.0237668, %pushback.exit447 ], [ %.2239, %.thread552 ], [ %.2239, %bb.er ]
  %i.tk = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.tl = load i32, ptr %i.h, align 8, !tbaa !388
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr i8, ptr %i.tk, i64 %i.tm
  store i8 0, ptr %i.tn, align 1, !tbaa !31
  %.not316 = icmp eq i32 %.3248, 0
  br i1 %.not316, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %parser_show_error_line.exit
  %.not317 = icmp eq i32 %.3240, 0
  %i.to = select i1 %.not317, i32 3, i32 2
  %i.tp = call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef %i.to) ; 2 uses
  %i.tq = and i32 %i.tp, 1
  %.not318 = icmp eq i32 %i.tq, 0
  br i1 %.not318, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.tr = load ptr, ptr %i.i, align 8, !tbaa !362
  %i.ts = call double @ruby_strtod(ptr noundef %i.tr, ptr noundef null) #31 ; 0 uses
  %i.tt = call ptr @rb_errno_ptr() #31
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !26
  %i.tv = icmp eq i32 %i.tu, 34
  br i1 %i.tv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.tw = getelementptr i8, ptr %0, i64 200
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !97
  %i.ty = getelementptr i8, ptr %0, i64 196
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !63
  %i.ua = load ptr, ptr %i.i, align 8, !tbaa !362
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.tx, i32 noundef %i.tz, ptr noundef nonnull @.str.846, ptr noundef %i.ua) #31
  %i.ub = call ptr @rb_errno_ptr() #31
  store i32 0, ptr %i.ub, align 4, !tbaa !26
  br label %bb.ev

bb.ev:                                            ; preds = %bb.es, %bb.et, %bb.eu
  %.0 = phi i32 [ 315, %bb.et ], [ 315, %bb.eu ], [ 316, %bb.es ]
  %i.uc = call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %i.tp, i32 noundef 0, i32 noundef %.3244)
  br label %.thread546

bb.ew:                                            ; preds = %parser_show_error_line.exit
  %i.ud = call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.ue = call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.ud, i32 noundef 10, i32 noundef 0)
  br label %.thread546

.thread546:                                       ; preds = %bb.db, %bb.cv, %.thread535, %bb.cf, %.thread503, %bb.bj, %.thread, %bb.cl, %bb.ao, %bb.ew, %bb.ev
  %.2270 = phi i32 [ %i.ue, %bb.ew ], [ %i.uc, %bb.ev ], [ %i.mb, %bb.db ], [ %i.lu, %bb.cv ], [ %i.kk, %.thread535 ], [ %i.ki, %bb.cf ], [ %i.hn, %.thread503 ], [ %i.hl, %bb.bj ], [ %i.ep, %.thread ], [ %i.ku, %bb.cl ], [ %i.en, %bb.ao ]
  ret i32 %.2270
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 345) i32 @parse_percent(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 104        ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = and i32 %i.e, 577
  %.not = icmp ne i32 %i.f, 0
  %i.g = and i32 %i.e, 2064
  %i.h = icmp eq i32 %i.g, 2064
  %or.cond105 = or i1 %.not, %i.h
  %i.i = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.c, %i.j               ; 2 uses
  br i1 %or.cond105, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 360
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 8
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !374

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !375
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !207

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread134

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.c, %bb.d ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !192
  %i.t = load i8, ptr %i.r, align 1, !tbaa !31    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit.thread, !prof !207

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !31
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.b, align 8, !tbaa !192
  br label %nextc0.exit.thread

nextc0.exit.thread:                               ; preds = %bb.aw, %bb.g, %bb.h, %bb.f, %bb.e, %bb.ax
  %.093133 = phi i32 [ %.011.i119139, %bb.aw ], [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.u, %bb.e ], [ 115, %bb.ax ] ; 5 uses
  %i.aa = and i32 %.093133, -33
  %i.ab = add i32 %i.aa, -91
  %narrow.i.i = icmp ult i32 %i.ab, -26
  %i.ac = add nsw i32 %.093133, -58
  %i.ad = icmp ult i32 %i.ac, -10
  %narrow.i.not = and i1 %i.ad, %narrow.i.i
  br i1 %narrow.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nextc0.exit.thread
  %i.ae = icmp samesign ugt i32 %.093133, 127
  br i1 %i.ae, label %..thread_crit_edge, label %bb.w

..thread_crit_edge:                               ; preds = %bb.i
  %.pre146 = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %.thread

bb.j:                                             ; preds = %nextc0.exit.thread
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !324
  %.not.i106 = icmp ult ptr %i.af, %i.ah
  br i1 %.not.i106, label %bb.k, label %.critedge.i107, !prof !374

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %0, i64 360
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = and i32 %i.aj, 8
  %.not13.i113 = icmp eq i32 %i.ak, 0
  br i1 %.not13.i113, label %bb.l, label %.critedge.i107, !prof !374

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !375
  %i.an = icmp ugt ptr %i.am, inttoptr (i64 1 to ptr)
  br i1 %i.an, label %.critedge.i107, label %bb.m, !prof !207

.critedge.i107:                                   ; preds = %bb.l, %bb.k, %bb.j
  %i.ao = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i108 = icmp eq i32 %i.ao, 0
  br i1 %.not14.i108, label %.critedge._crit_edge.i110, label %nextc0.exit114

.critedge._crit_edge.i110:                        ; preds = %.critedge.i107
  %.pre.i111 = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.m

bb.m:                                             ; preds = %.critedge._crit_edge.i110, %bb.l
  %i.ap = phi ptr [ %.pre.i111, %.critedge._crit_edge.i110 ], [ %i.af, %bb.l ] ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 1      ; 3 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !192
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !31  ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = icmp eq i8 %i.ar, 13
  br i1 %i.at, label %bb.n, label %nextc0.exit114, !prof !207

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !324
  %.not.i.i112 = icmp ult ptr %i.aq, %i.au
  br i1 %.not.i.i112, label %bb.o, label %nextc0.exit114

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !31
  %i.aw = icmp eq i8 %i.av, 10
  br i1 %i.aw, label %bb.p, label %nextc0.exit114

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr i8, ptr %i.ap, i64 2
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !192
  br label %nextc0.exit114

nextc0.exit114:                                   ; preds = %.critedge.i107, %bb.m, %bb.n, %bb.o, %bb.p
  %.011.i109 = phi i32 [ -1, %.critedge.i107 ], [ %i.as, %bb.m ], [ 13, %bb.n ], [ 10, %bb.p ], [ 13, %bb.o ] ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !180 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !391
  %i.bc = tail call i32 %i.bb(i32 noundef range(i32 -1, 256) %.011.i109, i32 noundef 13, ptr noundef %i.az) #31, !inline_history !633
  %.not145 = icmp eq i32 %i.bc, 0
  %.pre147.pre = load ptr, ptr %i.b, align 8, !tbaa !192 ; 3 uses
  br i1 %.not145, label %bb.q, label %bb.r

bb.q:                                             ; preds = %nextc0.exit114
  %i.bd = getelementptr i8, ptr %.pre147.pre, i64 -1
  %.val.val = load i8, ptr %i.bd, align 1, !tbaa !31
  %i.be = icmp slt i8 %.val.val, 0
  br i1 %i.be, label %bb.r, label %bb.w

bb.r:                                             ; preds = %nextc0.exit114, %bb.q
  %i.bf = icmp eq i32 %.011.i109, -1
  br i1 %i.bf, label %pushback.exit, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.r
  %i.bg = phi ptr [ %.pre146, %..thread_crit_edge ], [ %.pre147.pre, %bb.r ] ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, -9
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr i8, ptr %i.bg, i64 -1     ; 6 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !192
  %i.bl = getelementptr i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  %i.bn = icmp ugt ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.s, label %pushback.exit

bb.s:                                             ; preds = %.thread
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !31
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.t, label %pushback.exit

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr i8, ptr %i.bg, i64 -2     ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = icmp eq i8 %i.br, 13
  br i1 %i.bs, label %bb.u, label %pushback.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !192
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.r, %.thread, %bb.s, %bb.t, %bb.u
  %i.bt = phi ptr [ %i.bq, %bb.u ], [ %i.bk, %.thread ], [ %i.bk, %bb.s ], [ %i.bk, %bb.t ], [ %.pre147.pre, %bb.r ]
  %i.bu = getelementptr i8, ptr %0, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !324
  %i.bw = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !180
  %i.by = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx) #31 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %parser_precise_mbclen.exit, label %parser_precise_mbclen.exit.thread

parser_precise_mbclen.exit.thread:                ; preds = %pushback.exit
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !180
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val.i = load ptr, ptr %i.cb, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.806, ptr noundef %.val.i)
  br label %switch.lookup

parser_precise_mbclen.exit:                       ; preds = %pushback.exit
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd  ; 2 uses
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.cf = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !63 ; 4 uses
  %i.ch = getelementptr i8, ptr %0, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64
  %i.cj = getelementptr i8, ptr %0, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !65
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32
  %i.cp = ptrtoint ptr %i.ce to i64
  %i.cq = sub i64 %i.cp, %i.cm
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cg, ptr %3, align 4, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cg, ptr %i.ct, align 4, !tbaa !70
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.849)
  %i.cv = load i32, ptr %i.cf, align 4, !tbaa !63
  %i.cw = icmp eq i32 %i.cg, %i.cv
  br i1 %i.cw, label %bb.v, label %parser_yyerror0.exit

bb.v:                                             ; preds = %parser_precise_mbclen.exit
  %i.cx = getelementptr i8, ptr %0, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !193
  %i.cz = getelementptr i8, ptr %0, i64 368
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.da, ptr noundef nonnull readonly %3, i32 noundef %i.cg, ptr noundef %i.cy)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %parser_precise_mbclen.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %switch.lookup

bb.w:                                             ; preds = %bb.i, %bb.q
  %.194 = phi i32 [ %.093133, %bb.q ], [ 81, %bb.i ]
  %.1 = phi i32 [ %.011.i109, %bb.q ], [ %.093133, %bb.i ] ; 6 uses
  switch i32 %.1, label %bb.aa [
    i32 -1, label %nextc0.exit.thread134
    i32 40, label %bb.ab
    i32 91, label %bb.x
    i32 123, label %bb.y
    i32 60, label %bb.z
  ]

nextc0.exit.thread134:                            ; preds = %bb.aw, %.critedge.i, %bb.w
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.850)
  br label %switch.lookup

bb.x:                                             ; preds = %bb.w
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.z, %bb.aa, %bb.y
  %.2 = phi i32 [ %.1, %bb.aa ], [ 93, %bb.x ], [ 125, %bb.y ], [ 62, %bb.z ], [ 41, %bb.w ] ; 9 uses
  %.0 = phi i32 [ 0, %bb.aa ], [ %.1, %bb.x ], [ %.1, %bb.y ], [ %.1, %bb.z ], [ %.1, %bb.w ] ; 9 uses
  %i.db = getelementptr i8, ptr %i.c, i64 -1
  %i.dc = getelementptr i8, ptr %0, i64 96
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !64
  switch i32 %.194, label %bb.am [
    i32 81, label %bb.ac
    i32 113, label %bb.ad
    i32 87, label %bb.ae
    i32 119, label %bb.af
    i32 73, label %bb.ag
    i32 105, label %bb.ah
    i32 120, label %bb.ai
    i32 114, label %bb.aj
    i32 115, label %bb.ak
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dd = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 2, ptr %i.de, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i32 %.2, ptr %i.df, align 8, !tbaa !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  store i32 %.0, ptr %i.dg, align 4, !tbaa !31
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !182
  br label %switch.lookup

bb.ad:                                            ; preds = %bb.ab
  %i.dh = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 0, ptr %i.di, align 8, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %.2, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %.0, ptr %i.dk, align 4, !tbaa !31
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !182
  br label %switch.lookup

bb.ae:                                            ; preds = %bb.ab
  %i.dl = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 16394, ptr %i.dm, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 %.2, ptr %i.dn, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store i32 %.0, ptr %i.do, align 4, !tbaa !31
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !182
  br label %switch.lookup

bb.af:                                            ; preds = %bb.ab
  %i.dp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 16392, ptr %i.dq, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %.2, ptr %i.dr, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 %.0, ptr %i.ds, align 4, !tbaa !31
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !182
  br label %switch.lookup

bb.ag:                                            ; preds = %bb.ab
  %i.dt = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 16394, ptr %i.du, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %.2, ptr %i.dv, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %.0, ptr %i.dw, align 4, !tbaa !31
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !182
end_hunk_2
begin_hunk_3_@parse_gvar:bb.a
  %i.fc = getelementptr i8, ptr %0, i64 216
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !180
  %i.fe = tail call i64 @rb_intern3(ptr noundef %i.ez, i64 noundef %i.fb, ptr noundef %i.fd) #31
  %i.ff = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !31
  br label %pushback.exit

bb.ak:                                            ; preds = %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit
  %i.fg = and i32 %1, 128
  %.not86 = icmp eq i32 %i.fg, 0
  br i1 %.not86, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.fi = load i32, ptr %i.n, align 8, !tbaa !388 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.n, align 8, !tbaa !388
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr i8, ptr %i.fh, i64 %i.fk
  store i8 36, ptr %i.fl, align 1, !tbaa !31
  %i.fm = load i32, ptr %i.n, align 8, !tbaa !388 ; 2 uses
  %i.fn = load i32, ptr %i.t, align 4, !tbaa !365 ; 2 uses
  %.not.i125 = icmp slt i32 %i.fm, %i.fn
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i125, label %tokadd.exit126, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fo = shl i32 %i.fn, 1                        ; 2 uses
  store i32 %i.fo, ptr %i.t, align 4, !tbaa !365
  %i.fp = sext i32 %i.fo to i64
  %i.fq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.fp, i64 noundef 1) #38 ; 2 uses
  store ptr %i.fq, ptr %i.o, align 8, !tbaa !362
  %.pre181 = load i32, ptr %i.n, align 8, !tbaa !388
  br label %tokadd.exit126

tokadd.exit126:                                   ; preds = %bb.al, %bb.am
  %i.fr = phi i32 [ %i.fm, %bb.al ], [ %.pre181, %bb.am ] ; 2 uses
  %i.fs = phi ptr [ %.pre, %bb.al ], [ %i.fq, %bb.am ]
  %i.ft = add i32 %i.fr, 1
  store i32 %i.ft, ptr %i.n, align 8, !tbaa !388
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr i8, ptr %i.fs, i64 %i.fu
  store i8 %i.ai, ptr %i.fv, align 1, !tbaa !31
  %i.fw = load i32, ptr %i.n, align 8, !tbaa !388
  %i.fx = load i32, ptr %i.t, align 4, !tbaa !365 ; 2 uses
  %.not.i127 = icmp slt i32 %i.fw, %i.fx
  %.pre187 = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i127, label %tokadd.exit107, label %bb.an

bb.an:                                            ; preds = %tokadd.exit126
  %i.fy = shl i32 %i.fx, 1                        ; 2 uses
  store i32 %i.fy, ptr %i.t, align 4, !tbaa !365
  %i.fz = sext i32 %i.fy to i64
  %i.ga = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre187, i64 noundef %i.fz, i64 noundef 1) #38 ; 2 uses
  store ptr %i.ga, ptr %i.o, align 8, !tbaa !362
  br label %tokadd.exit107

bb.ao:                                            ; preds = %bb.ak
  %i.gb = getelementptr i8, ptr %0, i64 196
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !63 ; 3 uses
  %i.gd = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.ge = getelementptr i8, ptr %0, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65
  %i.gg = ptrtoint ptr %i.gd to i64
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = ptrtoint ptr %i.ah to i64
  %i.gl = sub i64 %i.gk, %i.gh
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = zext nneg i8 %i.ai to i64
  %i.go = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.go, align 8, !tbaa !138
  %i.gp = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 55, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.gp, i32 noundef range(i32 0, 115) 55) #31
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  store i32 %i.gc, ptr %i.gq, align 8, !tbaa !26
  %.sroa.5153.0..sroa_idx = getelementptr i8, ptr %i.gp, i64 12
  store i32 %i.gj, ptr %.sroa.5153.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6154.0..sroa_idx = getelementptr i8, ptr %i.gp, i64 16
  store i32 %i.gc, ptr %.sroa.6154.0..sroa_idx, align 8, !tbaa !26
  %.sroa.7155.0..sroa_idx = getelementptr i8, ptr %i.gp, i64 20
  store i32 %i.gm, ptr %.sroa.7155.0..sroa_idx, align 4, !tbaa !26
  %i.gr = sext i32 %i.gc to i64
  %i.gs = load i64, ptr %i.gp, align 8, !tbaa !83
  %i.gt = and i64 %i.gs, 32767
  %i.gu = shl nsw i64 %i.gr, 15
  %i.gv = or disjoint i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gp, align 8, !tbaa !83
  %i.gw = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !211 ; 2 uses
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gw, align 8, !tbaa !211
  %i.gz = getelementptr i8, ptr %i.gp, i64 24
  store i32 %i.gx, ptr %i.gz, align 8, !tbaa !212
  %i.ha = getelementptr i8, ptr %i.gp, i64 32
  store i64 %i.gn, ptr %i.ha, align 8, !tbaa !93
  %i.hb = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.gp, ptr %i.hb, align 8, !tbaa !31
  br label %pushback.exit

bb.ap:                                            ; preds = %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit
  %i.hc = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.hd = load i32, ptr %i.n, align 8, !tbaa !388 ; 2 uses
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.n, align 8, !tbaa !388
  %i.hf = sext i32 %i.hd to i64
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.hf
  store i8 36, ptr %i.hg, align 1, !tbaa !31
  %i.hh = load i32, ptr %i.n, align 8, !tbaa !388
  %i.hi = load i32, ptr %i.t, align 4, !tbaa !365 ; 2 uses
  %.not.i129 = icmp slt i32 %i.hh, %i.hi
  br i1 %.not.i129, label %tokadd.exit130, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = shl i32 %i.hi, 1                        ; 2 uses
  store i32 %i.hj, ptr %i.t, align 4, !tbaa !365
  %i.hk = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.hl = sext i32 %i.hj to i64
  %i.hm = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hk, i64 noundef %i.hl, i64 noundef 1) #38
  store ptr %i.hm, ptr %i.o, align 8, !tbaa !362
  br label %tokadd.exit130

tokadd.exit130:                                   ; preds = %bb.ap, %bb.aq
  %i.hn = getelementptr i8, ptr %0, i64 64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ay, %tokadd.exit130
  %.1 = phi i8 [ %i.ai, %tokadd.exit130 ], [ %i.ii, %bb.ay ]
  %i.ho = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.hp = load i32, ptr %i.n, align 8, !tbaa !388 ; 2 uses
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.n, align 8, !tbaa !388
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr i8, ptr %i.ho, i64 %i.hr
  store i8 %.1, ptr %i.hs, align 1, !tbaa !31
  %i.ht = load i32, ptr %i.n, align 8, !tbaa !388
  %i.hu = load i32, ptr %i.t, align 4, !tbaa !365 ; 2 uses
  %.not.i131 = icmp slt i32 %i.ht, %i.hu
  br i1 %.not.i131, label %tokadd.exit132, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hv = shl i32 %i.hu, 1                        ; 2 uses
  store i32 %i.hv, ptr %i.t, align 4, !tbaa !365
  %i.hw = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.hx = sext i32 %i.hv to i64
  %i.hy = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hw, i64 noundef %i.hx, i64 noundef 1) #38
  store ptr %i.hy, ptr %i.o, align 8, !tbaa !362
  br label %tokadd.exit132

tokadd.exit132:                                   ; preds = %bb.ar, %bb.as
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !192 ; 2 uses
  %i.ia = load ptr, ptr %i.y, align 8, !tbaa !324
  %.not.i133 = icmp ult ptr %i.hz, %i.ia
  br i1 %.not.i133, label %bb.at, label %.critedge.i134, !prof !374

bb.at:                                            ; preds = %tokadd.exit132
  %i.ib = load i32, ptr %i.e, align 8
  %i.ic = and i32 %i.ib, 8
  %.not13.i140 = icmp eq i32 %i.ic, 0
  br i1 %.not13.i140, label %bb.au, label %.critedge.i134, !prof !374

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.hn, align 8, !tbaa !375
  %i.ie = icmp ugt ptr %i.id, inttoptr (i64 1 to ptr)
  br i1 %i.ie, label %.critedge.i134, label %bb.av, !prof !207

.critedge.i134:                                   ; preds = %bb.au, %bb.at, %tokadd.exit132
  %i.if = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i135 = icmp eq i32 %i.if, 0
  br i1 %.not14.i135, label %.critedge._crit_edge.i137, label %.critedge

.critedge._crit_edge.i137:                        ; preds = %.critedge.i134
  %.pre.i138 = load ptr, ptr %i.c, align 8, !tbaa !192
  br label %bb.av

bb.av:                                            ; preds = %.critedge._crit_edge.i137, %bb.au
  %i.ig = phi ptr [ %.pre.i138, %.critedge._crit_edge.i137 ], [ %i.hz, %bb.au ] ; 5 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.c, align 8, !tbaa !192
  %i.ii = load i8, ptr %i.ig, align 1, !tbaa !31  ; 3 uses
  %i.ij = icmp eq i8 %i.ii, 13
  br i1 %i.ij, label %bb.aw, label %bb.ay, !prof !207

bb.aw:                                            ; preds = %bb.av
  %i.ik = getelementptr i8, ptr %i.ig, i64 1      ; 4 uses
  %i.il = load ptr, ptr %i.y, align 8, !tbaa !324
  %.not.i.i139 = icmp ult ptr %i.ik, %i.il
  br i1 %.not.i.i139, label %bb.ax, label %.split

bb.ax:                                            ; preds = %bb.aw
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !31
  %i.in = icmp eq i8 %i.im, 10
  %i.io = getelementptr i8, ptr %i.ig, i64 2
  %spec.select = select i1 %i.in, ptr %i.io, ptr %i.ik
  br label %.split

bb.ay:                                            ; preds = %bb.av
  %i.ip = add i8 %i.ii, -58
  %i.iq = icmp ult i8 %i.ip, -10
  br i1 %i.iq, label %.split.loopexit, label %bb.ar, !llvm.loop !634

.split.loopexit:                                  ; preds = %bb.ay
  %i.ir = getelementptr i8, ptr %i.ig, i64 1
  br label %.split

.split:                                           ; preds = %bb.ax, %.split.loopexit, %bb.aw
  %i.is = phi ptr [ %spec.select, %bb.ax ], [ %i.ik, %bb.aw ], [ %i.ir, %.split.loopexit ] ; 2 uses
  %i.it = load i32, ptr %i.e, align 8
  %i.iu = and i32 %i.it, -9
  store i32 %i.iu, ptr %i.e, align 8
  %i.iv = getelementptr i8, ptr %i.is, i64 -1     ; 3 uses
  store ptr %i.iv, ptr %i.c, align 8, !tbaa !192
  %i.iw = getelementptr i8, ptr %0, i64 72
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !65
  %i.iy = icmp ugt ptr %i.iv, %i.ix
  br i1 %i.iy, label %bb.az, label %.critedge, !llvm.loop !634

bb.az:                                            ; preds = %.split
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !31
  %i.ja = icmp eq i8 %i.iz, 10
  br i1 %i.ja, label %bb.ba, label %.critedge, !llvm.loop !634

bb.ba:                                            ; preds = %bb.az
  %i.jb = getelementptr i8, ptr %i.is, i64 -2     ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !31
  %i.jd = icmp eq i8 %i.jc, 13
  br i1 %i.jd, label %bb.bb, label %.critedge, !llvm.loop !634

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.jb, ptr %i.c, align 8, !tbaa !192
  br label %.critedge, !llvm.loop !634

.critedge:                                        ; preds = %.critedge.i134, %bb.bb, %bb.ba, %bb.az, %.split
  %i.je = and i32 %1, 128
  %.not85 = icmp eq i32 %i.je, 0
  %.pre189 = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  br i1 %.not85, label %bb.bc, label %tokadd.exit107

bb.bc:                                            ; preds = %.critedge
  %i.jf = load i32, ptr %i.n, align 8, !tbaa !388
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr i8, ptr %.pre189, i64 %i.jg
  store i8 0, ptr %i.jh, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ji = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.jj = getelementptr i8, ptr %i.ji, i64 1
  %i.jk = load i32, ptr %i.n, align 8, !tbaa !388
  %i.jl = add i32 %i.jk, -1
  %i.jm = sext i32 %i.jl to i64
  %i.jn = call i64 @ruby_scan_digits(ptr noundef %i.jj, i64 noundef %i.jm, i32 noundef 10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #31 ; 2 uses
  %i.jo = load i32, ptr %i.b, align 4, !tbaa !26
  %i.jp = icmp ne i32 %i.jo, 0
  %i.jq = icmp ugt i64 %i.jn, 1073741823
  %or.cond.i = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %or.cond.i, label %bb.bd, label %parse_numvar.exit

bb.bd:                                            ; preds = %bb.bc
  %i.jr = getelementptr i8, ptr %0, i64 200
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !97
  %i.jt = getelementptr i8, ptr %0, i64 196
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !63
  %i.jv = load ptr, ptr %i.o, align 8, !tbaa !362
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.js, i32 noundef %i.ju, ptr noundef nonnull @.str.856, ptr noundef %i.jv) #31
  br label %parse_numvar.exit

parse_numvar.exit:                                ; preds = %bb.bc, %bb.bd
  %.0.i = phi i64 [ 0, %bb.bd ], [ %i.jn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.jw = getelementptr i8, ptr %0, i64 196
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !63 ; 3 uses
  %i.jy = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.jz = getelementptr i8, ptr %0, i64 72
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !65
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = sub i64 %i.kg, %i.kc
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = getelementptr i8, ptr %0, i64 288
  %.val.i.i143 = load ptr, ptr %i.kj, align 8, !tbaa !138
  %i.kk = call ptr @rb_ast_newnode(ptr noundef %.val.i.i143, i32 noundef range(i32 0, 115) 54, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 10 uses
  call void @rb_node_init(ptr noundef %i.kk, i32 noundef range(i32 0, 115) 54) #31
  %i.kl = getelementptr i8, ptr %i.kk, i64 8
  store i32 %i.jx, ptr %i.kl, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.kk, i64 12
  store i32 %i.ke, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.kk, i64 16
  store i32 %i.jx, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.kk, i64 20
  store i32 %i.ki, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !26
  %i.km = sext i32 %i.jx to i64
  %i.kn = load i64, ptr %i.kk, align 8, !tbaa !83
  %i.ko = and i64 %i.kn, 32767
  %i.kp = shl nsw i64 %i.km, 15
  %i.kq = or disjoint i64 %i.ko, %i.kp
  store i64 %i.kq, ptr %i.kk, align 8, !tbaa !83
  %i.kr = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !211 ; 2 uses
  %i.kt = add i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kr, align 8, !tbaa !211
  %i.ku = getelementptr i8, ptr %i.kk, i64 24
  store i32 %i.ks, ptr %i.ku, align 8, !tbaa !212
  %i.kv = getelementptr i8, ptr %i.kk, i64 32
  store i64 %.0.i, ptr %i.kv, align 8, !tbaa !371
  %i.kw = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %i.kk, ptr %i.kw, align 8, !tbaa !31
  br label %pushback.exit

nextc0.exit.thread:                               ; preds = %bb.i, %bb.j, %bb.h, %.critedge.i, %nextc0.exit
  %.pre191 = phi ptr [ %i.ah, %nextc0.exit ], [ %i.ah, %bb.i ], [ %i.an, %bb.j ], [ %i.ah, %bb.h ], [ %.pre191.pre, %.critedge.i ] ; 2 uses
  %.011.i157 = phi i32 [ %i.ao, %nextc0.exit ], [ 13, %bb.i ], [ 10, %bb.j ], [ 13, %bb.h ], [ -1, %.critedge.i ] ; 5 uses
  %i.kx = load i32, ptr %i.e, align 8
  %i.ky = and i32 %i.kx, 8
  %.not.i144 = icmp eq i32 %i.ky, 0
  br i1 %.not.i144, label %bb.be, label %parser_is_identchar.exit147.thread171

bb.be:                                            ; preds = %nextc0.exit.thread
  %i.kz = getelementptr i8, ptr %.pre191, i64 -1  ; 2 uses
  %i.la = getelementptr i8, ptr %0, i64 216
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !180 ; 2 uses
  %i.lc = load i8, ptr %i.kz, align 1, !tbaa !31
  %i.ld = zext i8 %i.lc to i32
  %i.le = getelementptr i8, ptr %i.lb, i64 88
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !391
  %i.lg = tail call i32 %i.lf(i32 noundef range(i32 -1, 256) %i.ld, i32 noundef 13, ptr noundef %i.lb) #31, !inline_history !14
  %.not.i.i145 = icmp eq i32 %i.lg, 0
  br i1 %.not.i.i145, label %bb.bf, label %parser_is_identchar.exit147.thread

bb.bf:                                            ; preds = %bb.be
  %i.lh = load i8, ptr %i.kz, align 1, !tbaa !31  ; 2 uses
  %i.li = icmp ne i8 %i.lh, 95
  %.not89 = icmp sgt i8 %i.lh, -1
  %or.cond175 = and i1 %i.li, %.not89
  br i1 %or.cond175, label %.parser_is_identchar.exit147.thread171_crit_edge, label %parser_is_identchar.exit147.thread

.parser_is_identchar.exit147.thread171_crit_edge: ; preds = %bb.bf
  %.pre190 = load ptr, ptr %i.c, align 8, !tbaa !192
  br label %parser_is_identchar.exit147.thread171

parser_is_identchar.exit147.thread171:            ; preds = %.parser_is_identchar.exit147.thread171_crit_edge, %nextc0.exit.thread
  %i.lj = phi ptr [ %.pre190, %.parser_is_identchar.exit147.thread171_crit_edge ], [ %.pre191, %nextc0.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.lk = getelementptr i8, ptr %0, i64 196
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !63 ; 2 uses
  store i32 %i.ll, ptr %2, align 4, !tbaa !372
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ln = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.lo = getelementptr i8, ptr %0, i64 72
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !65
  %i.lq = ptrtoint ptr %i.ln to i64
  %i.lr = ptrtoint ptr %i.lp to i64               ; 2 uses
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = trunc i64 %i.ls to i32
  store i32 %i.lt, ptr %i.lm, align 4, !tbaa !373
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ll, ptr %i.lu, align 4, !tbaa !372
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.lw = ptrtoint ptr %i.lj to i64
  %i.lx = sub i64 %i.lw, %i.lr
  %i.ly = trunc i64 %i.lx to i32
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !373
  switch i32 %.011.i157, label %bb.bh [
    i32 -1, label %bb.bg
    i32 32, label %bb.bg
    i32 13, label %bb.bg
    i32 12, label %bb.bg
    i32 11, label %bb.bg
    i32 10, label %bb.bg
    i32 9, label %bb.bg
  ]

bb.bg:                                            ; preds = %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171, %parser_is_identchar.exit147.thread171
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.853)
  br label %bb.bi

bb.bh:                                            ; preds = %parser_is_identchar.exit147.thread171
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i157)
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.854, i32 noundef %.011.i157)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call fastcc void @parser_show_error_line(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.lz = load ptr, ptr %0, align 8, !tbaa !76
  store i64 289, ptr %i.lz, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %pushback.exit

parser_is_identchar.exit147.thread:               ; preds = %bb.be, %bb.bf, %nextc0.exit
  %.011.i158 = phi i32 [ %.011.i157, %bb.be ], [ 48, %nextc0.exit ], [ %.011.i157, %bb.bf ] ; 2 uses
  %i.ma = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.mb = load i32, ptr %i.n, align 8, !tbaa !388 ; 2 uses
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.n, align 8, !tbaa !388
  %i.md = sext i32 %i.mb to i64
  %i.me = getelementptr i8, ptr %i.ma, i64 %i.md
  store i8 36, ptr %i.me, align 1, !tbaa !31
  %i.mf = load i32, ptr %i.n, align 8, !tbaa !388
  %i.mg = load i32, ptr %i.t, align 4, !tbaa !365 ; 2 uses
  %.not.i148 = icmp slt i32 %i.mf, %i.mg
  br i1 %.not.i148, label %tokadd.exit149, label %bb.bj

bb.bj:                                            ; preds = %parser_is_identchar.exit147.thread
  %i.mh = shl i32 %i.mg, 1                        ; 2 uses
  store i32 %i.mh, ptr %i.t, align 4, !tbaa !365
  %i.mi = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.mj = sext i32 %i.mh to i64
  %i.mk = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.mi, i64 noundef %i.mj, i64 noundef 1) #38
  store ptr %i.mk, ptr %i.o, align 8, !tbaa !362
  br label %tokadd.exit149

tokadd.exit149:                                   ; preds = %bb.bj, %parser_is_identchar.exit147.thread, %parser_is_identchar.exit.thread
  %.2 = phi i32 [ %.011.i97, %parser_is_identchar.exit.thread ], [ %.011.i158, %parser_is_identchar.exit147.thread ], [ %.011.i158, %bb.bj ]
  %i.ml = tail call fastcc i32 @tokadd_ident(ptr noundef nonnull %0, i32 noundef %.2)
  %.not91 = icmp eq i32 %i.ml, 0
  br i1 %.not91, label %bb.bk, label %pushback.exit

bb.bk:                                            ; preds = %tokadd.exit149
  %i.mm = load i32, ptr %i.e, align 8
  %i.mn = and i32 %i.mm, 32
  %.not.i150 = icmp eq i32 %i.mn, 0
  br i1 %.not.i150, label %parser_set_lex_state.exit151, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mo = load i32, ptr %i.k, align 8, !tbaa !80
  %i.mp = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.mo, i32 noundef 2, i32 noundef 10256) ; 0 uses
  br label %parser_set_lex_state.exit151
end_hunk_3
begin_hunk_4_@whole_match_p:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt ptr %i.f, %.72.val
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.88.val, i64 -2   ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !31
  %i.l = icmp eq i8 %i.k, 13
  %spec.select = select i1 %i.l, ptr %i.j, ptr %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %i.m = ptrtoint ptr %.0 to i64
  %i.n = sub i64 %i.m, %i.b
  %i.o = icmp slt i64 %i.n, %1
  br i1 %i.o, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %.1 = phi ptr [ %.0, %bb.f ], [ %.88.val, %bb.c ], [ %.88.val, %bb.b ] ; 2 uses
  %.16 = ptrtoaddr ptr %.1 to i64
  %i.p = sub nsw i64 0, %1
  %i.q = getelementptr i8, ptr %.1, i64 %i.p      ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #35
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not35 = icmp ne i32 %2, 0
  %i.s = icmp ult ptr %.72.val, %i.q
  %or.cond = and i1 %.not35, %i.s
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.t = add i64 %1, %i.b
  %i.u = sub i64 %.16, %i.t
  %scevgep = getelementptr i8, ptr %.72.val, i64 %i.u ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0263 = phi ptr [ %i.aa, %bb.i ], [ %.72.val, %.lr.ph.preheader ] ; 3 uses
  %i.v = load i8, ptr %.0263, align 1, !tbaa !31  ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 32
  %i.y = add nsw i32 %i.w, -14
  %i.z = icmp ult i32 %i.y, -5
  %narrow.i.not = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.0263, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !12

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.ab = icmp eq ptr %.127, %i.q
  %i.ac = zext i1 %i.ab to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.a, %.critedge
  %.028 = phi i32 [ %i.ac, %.critedge ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.028
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @newtok(ptr nofree noundef captures(none) initializes((136, 140)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136
  store i32 0, ptr %i.a, align 8, !tbaa !388
  %i.b = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.d, align 4, !tbaa !365
  %i.e = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !362
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = getelementptr i8, ptr %0, i64 140        ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !365
  %i.i = icmp sgt i32 %i.h, 4096
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 60, ptr %i.g, align 4, !tbaa !365
  %i.j = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.f, i64 noundef 60, i64 noundef 1) #38
  store ptr %i.j, ptr %i.b, align 8, !tbaa !362
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -32768, 32768) i32 @parse_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104        ; 12 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.thread239, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp ult i32 %1, 128
  %i.f = getelementptr i8, ptr %0, i64 80         ; 15 uses
  %i.g = getelementptr i8, ptr %0, i64 88         ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 360        ; 18 uses
  %i.i = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 216        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %spec.select253 = phi i1 [ %i.e, %.lr.ph ], [ %spec.select, %.critedge.backedge ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !192  ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.h, align 8
  %i.n = and i32 %i.m, 8
  %.not13.i = icmp eq i32 %i.n, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !374

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !375
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !207

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1        ; 3 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !192
  %i.t = load i8, ptr %i.r, align 1, !tbaa !31    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit, !prof !207

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !31
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !192
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i32, ptr %i.h, align 8
  %i.ab = and i32 %i.aa, 8
  %.not.i188 = icmp eq i32 %i.ab, 0
  br i1 %.not.i188, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !192
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !180 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !31
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !391
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #31, !inline_history !14
  %.not.i.i189 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i189, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !31  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select247 = and i1 %i.al, %i.am
  br i1 %spec.select247, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select253, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread239, label %bb.b, !llvm.loop !635

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread232_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre256.pre = load ptr, ptr %i.f, align 8, !tbaa !192
  br label %bb.o

parser_is_identchar.exit.thread..thread232_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !192
  br label %.thread232

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !192 ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !324
  %.not155 = icmp ult ptr %i.as, %i.at
  br i1 %.not155, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !31
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !362
  %i.az = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !388 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !388
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr i8, ptr %i.ay, i64 %i.bc
  store i8 %i.aw, ptr %i.bd, align 1, !tbaa !31
  %i.be = load i32, ptr %i.az, align 8, !tbaa !388
  %i.bf = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !365 ; 2 uses
  %.not.i190 = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i190, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !365
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !362
  %i.bj = sext i32 %i.bh to i64
  %i.bk = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef 1) #38
  store ptr %i.bk, ptr %i.ax, align 8, !tbaa !362
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %.011.i, 61
  br i1 %i.bl, label %bb.o, label %.thread232

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre256 = phi ptr [ %.pre256.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.as, %bb.n ] ; 8 uses
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !80
  %i.bn = and i32 %i.bm, 128
  %.not156 = icmp eq i32 %i.bn, 0
  br i1 %.not156, label %.thread232, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !324 ; 2 uses
  %.not157 = icmp ult ptr %.pre256, %i.bo
  br i1 %.not157, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bp = load i8, ptr %.pre256, align 1, !tbaa !31
  switch i8 %i.bp, label %bb.t [
    i8 126, label %.thread232
    i8 62, label %.thread232
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %.pre256, i64 1   ; 2 uses
  %.not160 = icmp ult ptr %i.bq, %i.bo
  br i1 %.not160, label %bb.s, label %.thread232

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = icmp eq i8 %i.br, 62
  br i1 %i.bs, label %bb.t, label %.thread232

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.bt = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !362
  %i.bv = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !388 ; 2 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !388
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr i8, ptr %i.bu, i64 %i.by
  store i8 61, ptr %i.bz, align 1, !tbaa !31
  %i.ca = load i32, ptr %i.bv, align 8, !tbaa !388
  %i.cb = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !365 ; 2 uses
  %.not.i191 = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i191, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = shl i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !365
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !362
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #38
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !362
  br label %tokadd.exit

.thread232:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread232_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.ch = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread232_crit_edge ], [ %i.as, %bb.n ], [ %.pre256, %bb.o ], [ %.pre256, %bb.q ], [ %.pre256, %bb.q ], [ %.pre256, %bb.r ], [ %.pre256, %bb.s ] ; 2 uses
  %i.ci = load i32, ptr %i.h, align 8
  %i.cj = and i32 %i.ci, -9
  store i32 %i.cj, ptr %i.h, align 8
  %i.ck = getelementptr i8, ptr %i.ch, i64 -1     ; 3 uses
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !192
  %i.cl = getelementptr i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !65
  %i.cn = icmp ugt ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread232
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !31
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr i8, ptr %i.ch, i64 -2     ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !31
  %i.cs = icmp eq i8 %i.cr, 13
  br i1 %i.cs, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.cq, ptr %i.f, align 8, !tbaa !192
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread232, %bb.u, %bb.t, %bb.m, %bb.l
  %i.ct = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread232 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0136 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread232 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cu = getelementptr i8, ptr %0, i64 160       ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !362
  %i.cw = getelementptr i8, ptr %0, i64 136       ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !388
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !31
  %i.da = load i32, ptr %i.a, align 8, !tbaa !80  ; 5 uses
  %i.db = and i32 %i.da, 1032
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp ne i32 %2, 0                       ; 2 uses
  %or.cond3 = or i1 %i.dd, %i.dc
  %i.de = and i32 %i.da, 48
  %.not161 = icmp eq i32 %i.de, 0
  %or.cond = and i1 %.not161, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !192 ; 4 uses
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !324 ; 3 uses
  %.not162 = icmp ult ptr %i.df, %i.dg
  br i1 %.not162, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !31
  %i.di = icmp eq i8 %i.dh, 58
  br i1 %i.di, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr i8, ptr %i.df, i64 1      ; 2 uses
  %.not163 = icmp ult ptr %i.dj, %i.dg
  br i1 %.not163, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !31
  %i.dl = icmp eq i8 %i.dk, 58
  br i1 %i.dl, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = load i32, ptr %i.h, align 8
  %i.dn = and i32 %i.dm, 32
  %.not.i193 = icmp eq i32 %i.dn, 0
  br i1 %.not.i193, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef 2064, i32 noundef 10371) ; 0 uses
  %.pre257 = load ptr, ptr %i.f, align 8, !tbaa !192
  %.pre258 = load ptr, ptr %i.g, align 8, !tbaa !324
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.dp = phi ptr [ %i.dg, %bb.ac ], [ %.pre258, %bb.ad ]
  %i.dq = phi ptr [ %i.df, %bb.ac ], [ %.pre257, %bb.ad ] ; 2 uses
  store i32 2064, ptr %i.a, align 8, !tbaa !80
  %.not.i194 = icmp ult ptr %i.dq, %i.dp
end_hunk_4
begin_hunk_5_@parse_ident:bb.a
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.861, i32 noundef %i.fa, i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew)
  %.pr.pre.pre262.pre = load i32, ptr %i.a, align 8, !tbaa !80
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pr.pre.pre262 = phi i32 [ %.pr.pre.pre262.pre, %bb.am ], [ %i.da, %bb.al ] ; 8 uses
  %i.fb = getelementptr i8, ptr %0, i64 196
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !63
  %i.fd = icmp sle i32 %i.fc, %i.eu
  %.not166 = icmp slt i32 %i.ew, %i.es
  %or.cond183 = select i1 %i.fd, i1 true, i1 %.not166
  %i.fe = and i32 %.pr.pre.pre262, 256
  %.not167 = icmp eq i32 %i.fe, 0
  %or.cond285 = select i1 %or.cond183, i1 true, i1 %.not167
  br i1 %or.cond285, label %reserved_word.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load ptr, ptr %i.cu, align 8, !tbaa !362 ; 4 uses
  %i.fg = load i32, ptr %i.cw, align 8, !tbaa !388 ; 3 uses
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = add nsw i64 %i.fh, -2
  %or.cond.i = icmp ult i64 %i.fi, 11
  br i1 %or.cond.i, label %bb.ap, label %reserved_word.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %switch.i.i = icmp ult i32 %i.fg, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr i8, ptr %i.ff, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !31
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr i8, ptr @hash.asso_values, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !31
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fg, %i.fo
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.fp, %bb.aq ], [ 2, %bb.ap ]
  %i.fq = load i8, ptr %i.ff, align 1, !tbaa !31  ; 2 uses
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr i8, ptr @hash.asso_values, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !31
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %.0.i.i, %i.fu
  %i.fw = getelementptr i8, ptr %i.ff, i64 %i.fh
  %i.fx = getelementptr i8, ptr %i.fw, i64 -1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !31
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr i8, ptr @hash.asso_values, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !31
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.fv, %i.gc            ; 3 uses
  %i.ge = icmp samesign ult i32 %i.gd, 51
  br i1 %i.ge, label %bb.ar, label %reserved_word.exit.thread

bb.ar:                                            ; preds = %hash.exit.i
  %i.gf = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gg = shl nuw nsw i64 1, %i.gf
  %i.gh = and i64 %i.gg, 1407374883553024
  %.not.i203 = icmp eq i64 %i.gh, 0
  br i1 %.not.i203, label %reserved_word.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.gf
  %i.gj = load i16, ptr %i.gi, align 8, !tbaa !358
  %i.gk = sext i16 %i.gj to i64
  %i.gl = getelementptr i8, ptr @stringpool_contents, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !31
  %i.gn = icmp eq i8 %i.fq, %i.gm
  br i1 %i.gn, label %bb.at, label %reserved_word.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.go = getelementptr i8, ptr %i.ff, i64 1
  %i.gp = getelementptr i8, ptr %i.gl, i64 1
  %i.gq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.go, ptr noundef nonnull dereferenceable(1) %i.gp) #35
  %.not24.i.not = icmp eq i32 %i.gq, 0
  %i.gr = icmp eq i32 %i.gd, 12
  %or.cond248 = and i1 %i.gr, %.not24.i.not
  br i1 %or.cond248, label %bb.au, label %reserved_word.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.gs = load i32, ptr %i.h, align 8
  %i.gt = and i32 %i.gs, 32
  %.not169 = icmp eq i32 %i.gt, 0
  br i1 %.not169, label %reserved_word.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.862)
  %.pr.pre.pre = load i32, ptr %i.a, align 8, !tbaa !80
  br label %reserved_word.exit.thread

reserved_word.exit.thread:                        ; preds = %hash.exit.i, %bb.ar, %bb.as, %bb.at, %bb.ao, %bb.an, %bb.au, %bb.av, %bb.ak
  %.pr.pre = phi i32 [ %i.da, %bb.ak ], [ %.pr.pre.pre262, %bb.an ], [ %.pr.pre.pre262, %bb.as ], [ %.pr.pre.pre262, %bb.ar ], [ %.pr.pre.pre262, %hash.exit.i ], [ %.pr.pre.pre, %bb.av ], [ %.pr.pre.pre262, %bb.au ], [ %.pr.pre.pre262, %bb.ao ], [ %.pr.pre.pre262, %bb.at ] ; 11 uses
  %.2 = phi i1 [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.as ], [ false, %bb.ar ], [ false, %hash.exit.i ], [ true, %bb.av ], [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.at ]
  br i1 %spec.select253, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %reserved_word.exit.thread
  %i.gu = and i32 %.pr.pre, 256
  %i.gv = icmp eq i32 %i.gu, 0
  %or.cond7 = or i1 %.2, %i.gv
  br i1 %or.cond7, label %bb.ax, label %thread-pre-split

bb.ax:                                            ; preds = %bb.aw
  %i.gw = load ptr, ptr %i.cu, align 8, !tbaa !362 ; 5 uses
  %i.gx = load i32, ptr %i.cw, align 8, !tbaa !388 ; 3 uses
  %i.gy = sext i32 %i.gx to i64                   ; 3 uses
  %i.gz = add nsw i64 %i.gy, -2
  %or.cond.i204 = icmp ult i64 %i.gz, 11
  br i1 %or.cond.i204, label %bb.ay, label %thread-pre-split

bb.ay:                                            ; preds = %bb.ax
  %switch.i.i206 = icmp ult i32 %i.gx, 3
  br i1 %switch.i.i206, label %hash.exit.i207, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ha = getelementptr i8, ptr %i.gw, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !31
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr i8, ptr @hash.asso_values, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !31
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nuw nsw i32 %i.gx, %i.hf
  br label %hash.exit.i207

hash.exit.i207:                                   ; preds = %bb.az, %bb.ay
  %.0.i.i208 = phi i32 [ %i.hg, %bb.az ], [ 2, %bb.ay ]
  %i.hh = load i8, ptr %i.gw, align 1, !tbaa !31  ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr i8, ptr @hash.asso_values, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !31
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %.0.i.i208, %i.hl
  %i.hn = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !31
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr i8, ptr @hash.asso_values, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !31
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.hm, %i.ht            ; 3 uses
  %i.hv = icmp samesign ult i32 %i.hu, 51
  br i1 %i.hv, label %bb.ba, label %thread-pre-split

bb.ba:                                            ; preds = %hash.exit.i207
  %i.hw = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.hw ; 5 uses
  %i.hy = shl nuw nsw i64 1, %i.hw                ; 2 uses
  %i.hz = and i64 %i.hy, 1407374883553024
  %.not.i210 = icmp eq i64 %i.hz, 0
  br i1 %.not.i210, label %thread-pre-split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = load i16, ptr %i.hx, align 8, !tbaa !358
  %i.ib = sext i16 %i.ia to i64
  %i.ic = getelementptr i8, ptr @stringpool_contents, i64 %i.ib ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !31
  %i.ie = icmp eq i8 %i.hh, %i.id
  br i1 %i.ie, label %bb.bc, label %thread-pre-split

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr i8, ptr %i.gw, i64 1
  %i.ig = getelementptr i8, ptr %i.ic, i64 1
  %i.ih = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.if, ptr noundef nonnull dereferenceable(1) %i.ig) #35
  %.not24.i211.not = icmp eq i32 %i.ih, 0
  br i1 %.not24.i211.not, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %bb.bc
  %i.ii = and i32 %.pr.pre, 128
  %.not171 = icmp eq i32 %i.ii, 0
  br i1 %.not171, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = load i32, ptr %i.h, align 8
  %i.ik = and i32 %i.ij, 32
  %.not.i213 = icmp eq i32 %i.ik, 0
  br i1 %.not.i213, label %parser_set_lex_state.exit214, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.il = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 8, i32 noundef 10412) ; 0 uses
  %.pre259 = load ptr, ptr %i.cu, align 8, !tbaa !362
  %.pre260 = load i32, ptr %i.cw, align 8, !tbaa !388
  %.pre265 = sext i32 %.pre260 to i64
  br label %parser_set_lex_state.exit214

parser_set_lex_state.exit214:                     ; preds = %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %i.gy, %bb.be ], [ %.pre265, %bb.bf ]
  %i.im = phi ptr [ %i.gw, %bb.be ], [ %.pre259, %bb.bf ]
  store i32 8, ptr %i.a, align 8, !tbaa !80
  %i.in = tail call i64 @rb_intern2(ptr noundef %i.im, i64 noundef %.pre-phi) #31
  %i.io = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %i.in, ptr %i.io, align 8, !tbaa !31
  %i.ip = getelementptr i8, ptr %i.hx, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !74
  %i.ir = sext i16 %i.iq to i32
  br label %.thread239

bb.bg:                                            ; preds = %bb.bd
  %i.is = getelementptr i8, ptr %i.hx, i64 6
  %i.it = load i16, ptr %i.is, align 2, !tbaa !636
  %i.iu = sext i16 %i.it to i32                   ; 3 uses
  %i.iv = load i32, ptr %i.h, align 8
  %i.iw = and i32 %i.iv, 32
  %.not.i215 = icmp eq i32 %i.iw, 0
  br i1 %.not.i215, label %parser_set_lex_state.exit216, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ix = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef %i.iu, i32 noundef 10416) ; 0 uses
  br label %parser_set_lex_state.exit216

parser_set_lex_state.exit216:                     ; preds = %bb.bg, %bb.bh
  store i32 %i.iu, ptr %i.a, align 8, !tbaa !80
  %i.iy = and i64 %i.hy, 1125045557384703
  %.not172.not = icmp eq i64 %i.iy, 0
  br i1 %.not172.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %parser_set_lex_state.exit216
  %i.iz = load i32, ptr %i.h, align 8
  %i.ja = or i32 %i.iz, 4
  store i32 %i.ja, ptr %i.h, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %parser_set_lex_state.exit216
  %i.jb = getelementptr i8, ptr %i.hx, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !74 ; 2 uses
  %i.jd = icmp eq i32 %i.hu, 25
  br i1 %i.jd, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.je = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !170
  %i.jg = getelementptr i8, ptr %0, i64 108
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !185
  %i.ji = icmp eq i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 -1, ptr %i.je, align 8, !tbaa !170
  br label %.thread239

bb.bm:                                            ; preds = %bb.bk
  %i.jj = load i32, ptr %i.h, align 8
  %i.jk = and i32 %i.jj, 32
  %.not175 = icmp eq i32 %i.jk, 0
  br i1 %.not175, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = getelementptr i8, ptr %0, i64 120
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !120
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.jm, ptr noundef nonnull @.str.863, i32 noundef 10425)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.jn = getelementptr i8, ptr %0, i64 120
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !120
  %i.jp = and i64 %i.jo, 1
  %.not176 = icmp eq i64 %i.jp, 0
  br i1 %.not176, label %bb.bp, label %.thread239

bb.bp:                                            ; preds = %bb.bo
  %i.jq = load i32, ptr %i.h, align 8
  %i.jr = and i32 %i.jq, 32
  %.not177 = icmp eq i32 %i.jr, 0
  br i1 %.not177, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = getelementptr i8, ptr %0, i64 128
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !130
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.jt, ptr noundef nonnull @.str.864, i32 noundef 10426)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ju = getelementptr i8, ptr %0, i64 128
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !130
  %.not178 = trunc i64 %i.jv to i1
  %i.jw = and i32 %.pr.pre, 32
  %.not179 = icmp eq i32 %i.jw, 0
  %or.cond184 = and i1 %.not179, %.not178
  %spec.select186 = select i1 %or.cond184, i32 283, i32 281
  br label %.thread239

bb.bs:                                            ; preds = %bb.bj
  %i.jx = sext i16 %i.jc to i32
  %i.jy = and i32 %.pr.pre, 2561
  %.not173 = icmp eq i32 %i.jy, 0
  br i1 %.not173, label %bb.bt, label %.thread239

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr i8, ptr %i.hx, i64 4
  %i.ka = load i16, ptr %i.jz, align 4, !tbaa !74 ; 2 uses
  %.not174 = icmp eq i16 %i.jc, %i.ka
  br i1 %.not174, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kb = load i32, ptr %i.h, align 8
  %i.kc = and i32 %i.kb, 32
  %.not.i217 = icmp eq i32 %i.kc, 0
  br i1 %.not.i217, label %parser_set_lex_state.exit218, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kd = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.iu, i32 noundef 1025, i32 noundef 10434) ; 0 uses
  br label %parser_set_lex_state.exit218

parser_set_lex_state.exit218:                     ; preds = %bb.bu, %bb.bv
  store i32 1025, ptr %i.a, align 8, !tbaa !80
  br label %bb.bw

bb.bw:                                            ; preds = %parser_set_lex_state.exit218, %bb.bt
  %i.ke = sext i16 %i.ka to i32
  br label %.thread239

thread-pre-split:                                 ; preds = %reserved_word.exit.thread, %bb.ax, %bb.bc, %bb.bb, %bb.ba, %hash.exit.i207, %bb.aw
  %i.kf = and i32 %.pr.pre, 881
  %.not180 = icmp eq i32 %i.kf, 0
  br i1 %.not180, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %thread-pre-split
  %i.kg = load i32, ptr %i.h, align 8
  %i.kh = and i32 %i.kg, 32
  %.not.i219 = icmp eq i32 %i.kh, 0               ; 2 uses
  br i1 %i.dd, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  br i1 %.not.i219, label %parser_set_lex_state.exit220, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ki = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 32, i32 noundef 10442) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not.i219, label %parser_set_lex_state.exit220, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 16, i32 noundef 10445) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.cc:                                            ; preds = %thread-pre-split
  %i.kk = icmp eq i32 %.pr.pre, 128
  %i.kl = load i32, ptr %i.h, align 8
  %i.km = and i32 %i.kl, 32
  %.not.i223 = icmp eq i32 %i.km, 0               ; 2 uses
  br i1 %i.kk, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i223, label %parser_set_lex_state.exit220, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef 128, i32 noundef 8, i32 noundef 10449) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.i223, label %parser_set_lex_state.exit220, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ko = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 2, i32 noundef 10452) ; 0 uses
  br label %parser_set_lex_state.exit220

parser_set_lex_state.exit220:                     ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.sink = phi i32 [ 16, %bb.cb ], [ 8, %bb.ce ], [ 32, %bb.bz ], [ 32, %bb.by ], [ 16, %bb.ca ], [ 8, %bb.cd ], [ 2, %bb.cf ], [ 2, %bb.cg ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !80
  %i.kp = load ptr, ptr %i.cu, align 8, !tbaa !362
  %i.kq = load i32, ptr %i.cw, align 8, !tbaa !388
  %i.kr = sext i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.kt = tail call i64 @rb_intern3(ptr noundef %i.kp, i64 noundef %i.kr, ptr noundef %i.ks) #31 ; 7 uses
  %i.ku = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !31
  br i1 %i.ct, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %parser_set_lex_state.exit220
  %i.kv = icmp ugt i64 %i.kt, 171
  %i.kw = and i64 %i.kt, 14
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = and i1 %i.kv, %i.kx
  %spec.select185 = select i1 %i.ky, i32 307, i32 311
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %parser_set_lex_state.exit220
  %.1137 = phi i32 [ %.0136, %parser_set_lex_state.exit220 ], [ %spec.select185, %bb.ch ] ; 2 uses
  %i.kz = and i32 %i.b, 384
  %i.la = icmp eq i32 %i.kz, 0
  %i.lb = icmp eq i32 %.1137, 307
  %or.cond9 = and i1 %i.la, %i.lb
  br i1 %or.cond9, label %bb.cj, label %.thread239

bb.cj:                                            ; preds = %bb.ci
  %i.lc = tail call fastcc i32 @lvar_defined(ptr noundef nonnull %0, i64 noundef %i.kt)
  %.not181 = icmp eq i32 %i.lc, 0
  br i1 %.not181, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ld = and i64 %i.kt, 14
  %i.le = icmp ne i64 %i.ld, 0
  %i.lf = icmp ult i64 %i.kt, 3776
  %i.lg = lshr i64 %i.kt, 4
  %i.lh = trunc i64 %i.lg to i32
  %i.li = add i32 %i.lh, -245
  %i.lj = icmp ult i32 %i.li, -9
  %.not246 = or i1 %i.le, %i.lj
  %narrow.i.not = or i1 %i.lf, %.not246
end_hunk_5
begin_hunk_6_@tokadd_string:bb.a
  br i1 %i.ao, label %bb.e, label %bb.h, !prof !207

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.al, %i.ap
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !31
  %i.ar = icmp eq i8 %i.aq, 10
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.ak, i64 2      ; 2 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !192
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  %i.at = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.g ], [ %i.al, %bb.e ], [ %i.al, %bb.d ] ; 9 uses
  %.011.i.ph = phi i32 [ 13, %bb.f ], [ 10, %bb.g ], [ 13, %bb.e ], [ %i.an, %bb.d ] ; 12 uses
  %i.au = load i32, ptr %i.f, align 4, !tbaa !181 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %parser_update_heredoc_indent.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !184 ; 5 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp eq i32 %.011.i.ph, 10
  br i1 %i.ay, label %.sink.split.i, label %parser_update_heredoc_indent.exit

bb.k:                                             ; preds = %bb.i
  %trunc = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc, label %bb.n [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 10, label %.sink.split.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = add nuw i32 %i.aw, 1
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ba = sdiv i32 %i.aw, 8
  %i.bb = shl nsw i32 %i.ba, 3
  %i.bc = add i32 %i.bb, 8
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.k
  %i.bd = icmp sgt i32 %i.au, %i.aw
  br i1 %i.bd, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !181
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i = phi i32 [ %i.az, %bb.l ], [ -1, %bb.n ], [ 0, %bb.j ], [ %i.bc, %bb.m ], [ -1, %bb.o ], [ 0, %bb.k ]
  store i32 %.sink.i, ptr %i.g, align 8, !tbaa !184
  br label %parser_update_heredoc_indent.exit

parser_update_heredoc_indent.exit:                ; preds = %.sink.split.i, %bb.j, %bb.h
  %i.be = icmp eq i32 %.011.i.ph, %3
  %or.cond182 = and i1 %.not158, %i.be
  br i1 %or.cond182, label %bb.p, label %bb.q

bb.p:                                             ; preds = %parser_update_heredoc_indent.exit
  %i.bf = load i64, ptr %4, align 8, !tbaa !28
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %4, align 8, !tbaa !28
  br label %pushback.exit192

bb.q:                                             ; preds = %parser_update_heredoc_indent.exit
  %i.bh = icmp eq i32 %.011.i.ph, %2
  br i1 %i.bh, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  br i1 %.not176, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %4, align 8, !tbaa !28    ; 2 uses
  %.not177 = icmp eq i64 %i.bi, 0
  br i1 %.not177, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bj = load i32, ptr %i.d, align 8
  %i.bk = and i32 %i.bj, -9
  store i32 %i.bk, ptr %i.d, align 8
  %i.bl = getelementptr i8, ptr %i.at, i64 -1     ; 3 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !192
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.bn = icmp ugt ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.u, label %nextc0.exit

bb.u:                                             ; preds = %bb.t
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !31
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.v, label %nextc0.exit

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr i8, ptr %i.at, i64 -2     ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = icmp eq i8 %i.br, 13
  br i1 %i.bs, label %bb.w, label %nextc0.exit

bb.w:                                             ; preds = %bb.v
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !192
  br label %nextc0.exit

bb.x:                                             ; preds = %bb.s
  %i.bt = add i64 %i.bi, -1
  store i64 %i.bt, ptr %4, align 8, !tbaa !28
  br label %pushback.exit192

bb.y:                                             ; preds = %bb.q
  %i.bu = icmp eq i32 %.011.i.ph, 35
  %or.cond = and i1 %i.i, %i.bu
  br i1 %or.cond, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not159 = icmp ult ptr %i.at, %i.bv
  br i1 %.not159, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.bw = load i8, ptr %i.at, align 1, !tbaa !31
  switch i8 %i.bw, label %pushback.exit192.thread239 [
    i8 123, label %bb.ab
    i8 64, label %bb.ab
    i8 36, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.bx = load i32, ptr %i.d, align 8
  %i.by = and i32 %i.bx, -9
  store i32 %i.by, ptr %i.d, align 8
  %i.bz = getelementptr i8, ptr %i.at, i64 -1     ; 3 uses
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !192
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.cb = icmp ugt ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.ac, label %nextc0.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i8, ptr %i.bz, align 1, !tbaa !31
  %i.cd = icmp eq i8 %i.cc, 10
  br i1 %i.cd, label %bb.ad, label %nextc0.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr i8, ptr %i.at, i64 -2     ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !31
  %i.cg = icmp eq i8 %i.cf, 13
  br i1 %i.cg, label %bb.ae, label %nextc0.exit

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !192
  br label %nextc0.exit

bb.af:                                            ; preds = %bb.y
  %i.ch = icmp eq i32 %.011.i.ph, 92
  br i1 %i.ch, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i193 = icmp ult ptr %i.at, %i.ci
  br i1 %.not.i193, label %bb.ah, label %.critedge.i194, !prof !374

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load i32, ptr %i.d, align 8
  %i.ck = and i32 %i.cj, 8
  %.not13.i200 = icmp eq i32 %i.ck, 0
  br i1 %.not13.i200, label %bb.ai, label %.critedge.i194, !prof !374

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.cm = icmp ugt ptr %i.cl, inttoptr (i64 1 to ptr)
  br i1 %i.cm, label %.critedge.i194, label %bb.aj, !prof !207

.critedge.i194:                                   ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cn = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i195 = icmp eq i32 %i.cn, 0
  br i1 %.not14.i195, label %.critedge._crit_edge.i197, label %nextc0.exit201.thread231

.critedge._crit_edge.i197:                        ; preds = %.critedge.i194
  %.pre.i198 = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge._crit_edge.i197, %bb.ai
  %i.co = phi ptr [ %.pre.i198, %.critedge._crit_edge.i197 ], [ %i.at, %bb.ai ] ; 21 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 1      ; 3 uses
  store ptr %i.cp, ptr %i.b, align 8, !tbaa !192
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !31  ; 5 uses
  %i.cr = zext i8 %i.cq to i32                    ; 15 uses
  switch i8 %i.cq, label %bb.ba [
    i8 13, label %bb.ak
    i8 10, label %bb.am
    i8 92, label %bb.at
    i8 117, label %bb.aw
  ], !prof !638

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i.i199 = icmp ult ptr %i.cp, %i.cs
  br i1 %.not.i.i199, label %bb.al, label %.thread233

bb.al:                                            ; preds = %bb.ak
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !31
  %i.cu = icmp eq i8 %i.ct, 10
  br i1 %i.cu, label %nextc0.exit201.thread229, label %.thread233

nextc0.exit201.thread229:                         ; preds = %bb.al
  %i.cv = getelementptr i8, ptr %i.co, i64 2
  store ptr %i.cv, ptr %i.b, align 8, !tbaa !192
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %nextc0.exit201.thread229
  br i1 %.not164, label %bb.an, label %pushback.exit192.thread239

bb.an:                                            ; preds = %bb.am
  br i1 %i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %.not165, label %.backedge.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load i32, ptr %i.f, align 4, !tbaa !181
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.backedge.backedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.r, label %nextc0.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.cz = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.m, align 8, !tbaa !388
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr i8, ptr %i.cy, i64 %i.db
  store i8 92, ptr %i.dc, align 1, !tbaa !31
  %i.dd = load i32, ptr %i.m, align 8, !tbaa !388
  %i.de = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i202 = icmp slt i32 %i.dd, %i.de
  br i1 %.not.i202, label %pushback.exit192.thread239, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.df = shl i32 %i.de, 1                        ; 2 uses
  store i32 %i.df, ptr %i.n, align 4, !tbaa !365
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.dh = sext i32 %i.df to i64
  %i.di = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.dg, i64 noundef %i.dh, i64 noundef 1) #38
  store ptr %i.di, ptr %i.l, align 8, !tbaa !362
  br label %pushback.exit192.thread239

bb.at:                                            ; preds = %bb.aj
  br i1 %.not163, label %pushback.exit192.thread239, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.dk = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.m, align 8, !tbaa !388
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr i8, ptr %i.dj, i64 %i.dm
  store i8 92, ptr %i.dn, align 1, !tbaa !31
  %i.do = load i32, ptr %i.m, align 8, !tbaa !388
  %i.dp = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i203 = icmp slt i32 %i.do, %i.dp
  br i1 %.not.i203, label %pushback.exit192.thread239, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dq = shl i32 %i.dp, 1                        ; 2 uses
  store i32 %i.dq, ptr %i.n, align 4, !tbaa !365
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.ds = sext i32 %i.dq to i64
  %i.dt = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.dr, i64 noundef %i.ds, i64 noundef 1) #38
  store ptr %i.dt, ptr %i.l, align 8, !tbaa !362
  br label %pushback.exit192.thread239

bb.aw:                                            ; preds = %bb.aj
  br i1 %i.j, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.dv = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.m, align 8, !tbaa !388
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr i8, ptr %i.du, i64 %i.dx
  store i8 92, ptr %i.dy, align 1, !tbaa !31
  %i.dz = load i32, ptr %i.m, align 8, !tbaa !388
  %i.ea = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i205 = icmp slt i32 %i.dz, %i.ea
  br i1 %.not.i205, label %pushback.exit192.thread239, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eb = shl i32 %i.ea, 1                        ; 2 uses
  store i32 %i.eb, ptr %i.n, align 4, !tbaa !365
  %i.ec = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.ed = sext i32 %i.eb to i64
  %i.ee = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ec, i64 noundef %i.ed, i64 noundef 1) #38
  store ptr %i.ee, ptr %i.l, align 8, !tbaa !362
  br label %pushback.exit192.thread239

bb.az:                                            ; preds = %bb.aw
  call fastcc void @tokadd_utf8(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %2, i32 noundef %i.k)
  br label %.backedge.backedge

bb.ba:                                            ; preds = %bb.aj
  %i.ef = icmp slt i8 %i.cq, 0
  br i1 %i.ef, label %bb.bb, label %.thread233

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.j, label %bb.bc, label %tokadd.exit208

bb.bc:                                            ; preds = %bb.bb
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.m, align 8, !tbaa !388
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr i8, ptr %i.eg, i64 %i.ej
  store i8 92, ptr %i.ek, align 1, !tbaa !31
  %i.el = load i32, ptr %i.m, align 8, !tbaa !388
  %i.em = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i207 = icmp slt i32 %i.el, %i.em
  br i1 %.not.i207, label %tokadd.exit208, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.en = shl i32 %i.em, 1                        ; 2 uses
  store i32 %i.en, ptr %i.n, align 4, !tbaa !365
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.ep = sext i32 %i.en to i64
  %i.eq = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.eo, i64 noundef %i.ep, i64 noundef 1) #38
  store ptr %i.eq, ptr %i.l, align 8, !tbaa !362
  br label %tokadd.exit208

.thread233:                                       ; preds = %bb.ak, %bb.al, %bb.ba
  br i1 %.not169, label %bb.cj, label %bb.be

bb.be:                                            ; preds = %.thread233
  switch i8 %i.cq, label %bb.bk [
    i8 99, label %bb.bf
    i8 67, label %bb.bf
    i8 77, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be
  %i.er = load i32, ptr %i.d, align 8
  %i.es = and i32 %i.er, -9
  store i32 %i.es, ptr %i.d, align 8
  store ptr %i.co, ptr %i.b, align 8, !tbaa !192
  %i.et = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.eu = icmp ugt ptr %i.co, %i.et
  br i1 %i.eu, label %bb.bg, label %pushback.exit209

bb.bg:                                            ; preds = %bb.bf
  %i.ev = load i8, ptr %i.co, align 1, !tbaa !31
  %i.ew = icmp eq i8 %i.ev, 10
  br i1 %i.ew, label %bb.bh, label %pushback.exit209

bb.bh:                                            ; preds = %bb.bg
  %i.ex = getelementptr i8, ptr %i.co, i64 -1     ; 3 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !31
  %i.ez = icmp eq i8 %i.ey, 13
  br i1 %i.ez, label %bb.bi, label %pushback.exit209

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.ex, ptr %i.b, align 8, !tbaa !192
  br label %pushback.exit209

pushback.exit209:                                 ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %i.fa = phi ptr [ %i.co, %bb.bf ], [ %i.co, %bb.bg ], [ %i.co, %bb.bh ], [ %i.ex, %bb.bi ]
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1
  %i.fc = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.fb) ; 2 uses
  %i.fd = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.fe = add i32 %i.fd, 4                        ; 3 uses
  store i32 %i.fe, ptr %i.m, align 8, !tbaa !388
  %i.ff = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i210 = icmp slt i32 %i.fe, %i.ff
  br i1 %.not.i210, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %pushback.exit209
  %.pre.i211 = load ptr, ptr %i.l, align 8, !tbaa !362
  br label %tokspace.exit

.preheader.i:                                     ; preds = %pushback.exit209, %.preheader.i
  %i.fg = phi i32 [ %i.fh, %.preheader.i ], [ %i.ff, %pushback.exit209 ]
  %i.fh = shl i32 %i.fg, 1                        ; 4 uses
  %i.fi = icmp slt i32 %i.fh, %i.fe
  br i1 %i.fi, label %.preheader.i, label %bb.bj, !llvm.loop !15

bb.bj:                                            ; preds = %.preheader.i
  store i32 %i.fh, ptr %i.n, align 4, !tbaa !365
  %i.fj = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.fk = sext i32 %i.fh to i64
  %i.fl = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fj, i64 noundef %i.fk, i64 noundef 1) #38 ; 2 uses
  store ptr %i.fl, ptr %i.l, align 8, !tbaa !362
  %.pre13.i = load i32, ptr %i.m, align 8, !tbaa !388
end_hunk_6
begin_hunk_7_@tokadd_string:bb.a

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not172.old, label %pushback.exit192, label %switch.early.test

switch.early.test:                                ; preds = %bb.cr
  switch i8 %i.cq, label %bb.ct [
    i8 32, label %pushback.exit192
    i8 13, label %pushback.exit192
    i8 12, label %pushback.exit192
    i8 11, label %pushback.exit192
    i8 10, label %pushback.exit192
    i8 9, label %pushback.exit192
  ]

bb.cs:                                            ; preds = %bb.cq
  %i.mb = icmp eq i32 %3, %i.cr
  %or.cond185 = and i1 %.not158, %i.mb
  %or.cond243 = or i1 %.not172.old, %or.cond185
  br i1 %or.cond243, label %pushback.exit192, label %bb.cu

bb.ct:                                            ; preds = %switch.early.test
  %.old = icmp eq i32 %3, %i.cr
  %or.cond185.old = and i1 %.not158, %.old
  br i1 %or.cond185.old, label %pushback.exit192, label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 92)
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cr)
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.z, %bb.af
  %i.mc = getelementptr i8, ptr %i.at, i64 -1
  %.val191.val = load i8, ptr %i.mc, align 1, !tbaa !31
  %i.md = icmp slt i8 %.val191.val, 0
  br i1 %i.md, label %tokadd.exit208, label %bb.db

tokadd.exit208:                                   ; preds = %bb.bd, %bb.bc, %.thread, %bb.bb
  %.0139 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cr, %bb.bb ], [ %i.cr, %bb.bc ], [ %i.cr, %bb.bd ]
  %i.me = load ptr, ptr %6, align 8, !tbaa !386   ; 3 uses
  %.not167 = icmp eq ptr %i.me, null
  %i.mf = load ptr, ptr %5, align 8, !tbaa !386   ; 3 uses
  br i1 %.not167, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %tokadd.exit208
  store ptr %i.mf, ptr %6, align 8, !tbaa !386
  br label %bb.da

bb.cw:                                            ; preds = %tokadd.exit208
  %.not168 = icmp eq ptr %i.me, %i.mf
  br i1 %.not168, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mg = trunc nuw i8 %.0138 to i1
  br i1 %i.mg, label %.backedge.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = getelementptr i8, ptr %i.me, i64 8
  %.val187 = load ptr, ptr %i.mh, align 8, !tbaa !382
  %i.mi = getelementptr i8, ptr %i.mf, i64 8
  %.val188 = load ptr, ptr %i.mi, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.mj = load i32, ptr %i.u, align 4, !tbaa !63  ; 4 uses
  store i32 %i.mj, ptr %8, align 4, !tbaa !372
  %i.mk = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.ml = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64               ; 2 uses
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = trunc i64 %i.mo to i32
  store i32 %i.mp, ptr %i.v, align 4, !tbaa !373
  store i32 %i.mj, ptr %i.w, align 4, !tbaa !372
  %i.mq = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = sub i64 %i.mr, %i.mn
  %i.mt = trunc i64 %i.ms to i32
  store i32 %i.mt, ptr %i.x, align 4, !tbaa !373
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.807, ptr noundef %.val187, ptr noundef %.val188)
  %i.mu = load i32, ptr %i.u, align 4, !tbaa !63
  %i.mv = icmp eq i32 %i.mj, %i.mu
  br i1 %i.mv, label %bb.cz, label %parser_mixed_error.exit

bb.cz:                                            ; preds = %bb.cy
  %i.mw = load ptr, ptr %i.y, align 8, !tbaa !193
  %i.mx = load i64, ptr %i.z, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.mx, ptr noundef nonnull readonly %8, i32 noundef %i.mj, ptr noundef %i.mw)
  br label %parser_mixed_error.exit

parser_mixed_error.exit:                          ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.backedge.backedge

bb.da:                                            ; preds = %bb.cw, %bb.cv
  %i.my = call fastcc i32 @tokadd_mbchar(ptr noundef %0, i32 noundef %.0139)
  %i.mz = icmp eq i32 %i.my, -1
  br i1 %i.mz, label %nextc0.exit201.thread231, label %.backedge.backedge

bb.db:                                            ; preds = %.thread
  br i1 %.not164, label %pushback.exit192, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %trunc264 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc264, label %pushback.exit192 [
    i8 32, label %bb.dd
    i8 13, label %bb.dd
    i8 12, label %bb.dd
    i8 11, label %bb.dd
    i8 10, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc, %bb.dc
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit192:                                 ; preds = %bb.dc, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cr, %bb.ct, %bb.x, %bb.cs, %tokadd.exit218, %bb.db, %bb.p
  %.1140 = phi i32 [ %3, %bb.p ], [ %2, %bb.x ], [ %i.ma, %tokadd.exit218 ], [ %i.cr, %switch.early.test ], [ %3, %bb.ct ], [ %i.cr, %bb.cs ], [ %.011.i.ph, %bb.db ], [ %.011.i.ph, %bb.dc ], [ %2, %bb.cr ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ], [ %i.cr, %switch.early.test ] ; 4 uses
  %i.na = and i32 %.1140, 128
  %.not179 = icmp eq i32 %i.na, 0
  br i1 %.not179, label %pushback.exit192.thread239, label %bb.de

bb.de:                                            ; preds = %pushback.exit192
  %i.nb = load ptr, ptr %6, align 8, !tbaa !386   ; 3 uses
  %.not180 = icmp eq ptr %i.nb, null
  %i.nc = load ptr, ptr %5, align 8, !tbaa !386   ; 3 uses
  br i1 %.not180, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store ptr %i.nc, ptr %6, align 8, !tbaa !386
  br label %pushback.exit192.thread239

bb.dg:                                            ; preds = %bb.de
  %.not181 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not181, label %pushback.exit192.thread239, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nd = trunc nuw i8 %.0138 to i1
  br i1 %i.nd, label %.backedge.backedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ne = getelementptr i8, ptr %i.nb, i64 8
  %.val = load ptr, ptr %i.ne, align 8, !tbaa !382
  %i.nf = getelementptr i8, ptr %i.nc, i64 8
  %.val186 = load ptr, ptr %i.nf, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ng = load i32, ptr %i.u, align 4, !tbaa !63  ; 4 uses
  store i32 %i.ng, ptr %7, align 4, !tbaa !372
  %i.nh = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.ni = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64               ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  store i32 %i.nm, ptr %i.aa, align 4, !tbaa !373
  store i32 %i.ng, ptr %i.ab, align 4, !tbaa !372
  %i.nn = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = sub i64 %i.no, %i.nk
  %i.nq = trunc i64 %i.np to i32
  store i32 %i.nq, ptr %i.ac, align 4, !tbaa !373
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.807, ptr noundef %.val, ptr noundef %.val186)
  %i.nr = load i32, ptr %i.u, align 4, !tbaa !63
  %i.ns = icmp eq i32 %i.ng, %i.nr
  br i1 %i.ns, label %bb.dj, label %parser_mixed_error.exit220

bb.dj:                                            ; preds = %bb.di
  %i.nt = load ptr, ptr %i.y, align 8, !tbaa !193
  %i.nu = load i64, ptr %i.z, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.nu, ptr noundef nonnull readonly %7, i32 noundef %i.ng, ptr noundef %i.nt)
  br label %parser_mixed_error.exit220

parser_mixed_error.exit220:                       ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.backedge.backedge

pushback.exit192.thread239:                       ; preds = %bb.ay, %bb.ax, %bb.au, %bb.ar, %bb.av, %bb.at, %bb.as, %bb.aa, %bb.am, %bb.df, %bb.dg, %pushback.exit192
  %.1140242 = phi i32 [ %.1140, %pushback.exit192 ], [ %.1140, %bb.df ], [ %.1140, %bb.dg ], [ 117, %bb.ay ], [ 117, %bb.ax ], [ 92, %bb.au ], [ 10, %bb.ar ], [ 92, %bb.av ], [ 92, %bb.at ], [ 10, %bb.as ], [ 35, %bb.aa ], [ 10, %bb.am ]
  %i.nv = trunc i32 %.1140242 to i8
  %i.nw = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.nx = load i32, ptr %i.m, align 8, !tbaa !388 ; 2 uses
  %i.ny = add i32 %i.nx, 1
  store i32 %i.ny, ptr %i.m, align 8, !tbaa !388
  %i.nz = sext i32 %i.nx to i64
  %i.oa = getelementptr i8, ptr %i.nw, i64 %i.nz
  store i8 %i.nv, ptr %i.oa, align 1, !tbaa !31
  %i.ob = load i32, ptr %i.m, align 8, !tbaa !388
  %i.oc = load i32, ptr %i.n, align 4, !tbaa !365 ; 2 uses
  %.not.i221 = icmp slt i32 %i.ob, %i.oc
  br i1 %.not.i221, label %.backedge.backedge, label %bb.dk

bb.dk:                                            ; preds = %pushback.exit192.thread239
  %i.od = shl i32 %i.oc, 1                        ; 2 uses
  store i32 %i.od, ptr %i.n, align 4, !tbaa !365
  %i.oe = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.of = sext i32 %i.od to i64
  %i.og = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.oe, i64 noundef %i.of, i64 noundef 1) #38
  store ptr %i.og, ptr %i.l, align 8, !tbaa !362
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.dk, %pushback.exit192.thread239, %bb.dh, %parser_mixed_error.exit220, %bb.cx, %parser_mixed_error.exit, %bb.cg, %bb.ch, %bb.ci, %bb.ao, %bb.ap, %bb.az, %tokspace.exit, %bb.bm, %bb.cu, %bb.da
  %.0138.be = phi i8 [ 1, %bb.cx ], [ 1, %bb.dh ], [ %.0138, %bb.ao ], [ %.0138, %bb.bm ], [ %.0138, %tokspace.exit ], [ %.0138, %bb.cu ], [ %.0138, %bb.cg ], [ %.0138, %bb.da ], [ %.0138, %bb.az ], [ %.0138, %bb.ap ], [ %.0138, %bb.ch ], [ 1, %bb.ci ], [ 1, %parser_mixed_error.exit ], [ 1, %parser_mixed_error.exit220 ], [ %.0138, %pushback.exit192.thread239 ], [ %.0138, %bb.dk ]
  br label %.backedge, !llvm.loop !637

nextc0.exit:                                      ; preds = %.critedge.i, %bb.aq, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.u, %bb.t, %bb.dd
  %.2141 = phi i32 [ 35, %bb.ad ], [ 35, %bb.ae ], [ %.011.i.ph, %bb.dd ], [ %2, %bb.w ], [ %2, %bb.t ], [ %2, %bb.u ], [ %2, %bb.v ], [ 35, %bb.ab ], [ 35, %bb.ac ], [ 92, %bb.aq ], [ -1, %.critedge.i ] ; 2 uses
  %i.oh = load ptr, ptr %6, align 8, !tbaa !386   ; 2 uses
  %.not178 = icmp eq ptr %i.oh, null
  br i1 %.not178, label %nextc0.exit201.thread231, label %bb.dl

bb.dl:                                            ; preds = %nextc0.exit
  store ptr %i.oh, ptr %5, align 8, !tbaa !386
  br label %nextc0.exit201.thread231

nextc0.exit201.thread231:                         ; preds = %.critedge.i194, %bb.da, %tokadd_escape.exit, %nextc0.exit, %bb.dl
  %.0 = phi i32 [ %.2141, %bb.dl ], [ -1, %tokadd_escape.exit ], [ %.2141, %nextc0.exit ], [ -1, %bb.da ], [ -1, %.critedge.i194 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias noundef nonnull ptr @parser_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.81, i64 noundef %1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 7 uses
  %i.c = add nuw nsw i64 %1, 1
  %i.d = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.c, i64 noundef 1) #33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %0, null
  %.not.i.i.i = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %rb_parser_encoding_string_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.d, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %1, i1 noundef false) #31
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.g, align 1, !tbaa !31
  store i32 0, ptr %i.b, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8, !tbaa !41
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %rb_parser_encoding_string_new.exit
  %i.j = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %i.b)
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call nonnull ptr @rb_usascii_encoding() #31
  %i.m = icmp eq ptr %4, %i.l
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = tail call nonnull ptr @rb_utf8_encoding() #31
  %.not11 = icmp eq ptr %2, %i.n
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  store ptr %i.o, ptr %i.h, align 8, !tbaa !41
  store i32 2, ptr %i.b, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %rb_parser_encoding_string_new.exit
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_string_content(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = sub i64 0, %2
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !192
  %i.e = getelementptr i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @rb_parser_enc_cr_str_buf_cat(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.k, ptr noundef %1, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.n = getelementptr i8, ptr %0, i64 196
  %i.o = load i32, ptr %i.n, align 4, !tbaa !63
  %i.p = getelementptr i8, ptr %0, i64 280
  store i32 %i.o, ptr %i.p, align 8, !tbaa !380
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.r = getelementptr i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = add i64 %i.v, 2147483648
  %.not.i = icmp ult i64 %i.w, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.v) #32
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.c
  %i.x = trunc nsw i64 %i.v to i32
  %i.y = getelementptr i8, ptr %0, i64 284
  store i32 %i.x, ptr %i.y, align 4, !tbaa !381
  br label %bb.e

bb.e:                                             ; preds = %rb_long2int_inline.exit, %bb.b
  tail call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 8530)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !192
  store ptr %i.z, ptr %i.g, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 8533)
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.ab = getelementptr i8, ptr %i.aa, i64 %2
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !192
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tokadd_utf8(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 5) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %.not = icmp eq i32 %3, 0                       ; 4 uses
  br i1 %.not, label %tokadd.exit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362
  %i.c = getelementptr i8, ptr %0, i64 136        ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !388
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  store i8 92, ptr %i.g, align 1, !tbaa !31
  %i.h = load i32, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 140        ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !365  ; 2 uses
  %.not.i = icmp slt i32 %i.h, %i.j
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  br i1 %.not.i, label %tokadd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !365
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 1) #38 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !362
  %.pre159 = load i32, ptr %i.c, align 8, !tbaa !388
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.h, %bb.b ], [ %.pre159, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ]
  %i.p = add i32 %i.n, 1
  store i32 %i.p, ptr %i.c, align 8, !tbaa !388
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q
  store i8 117, ptr %i.r, align 1, !tbaa !31
  %i.s = load i32, ptr %i.c, align 8, !tbaa !388
  %i.t = load i32, ptr %i.i, align 4, !tbaa !365  ; 2 uses
  %.not.i115 = icmp slt i32 %i.s, %i.t
  br i1 %.not.i115, label %tokadd.exit116, label %bb.d

bb.d:                                             ; preds = %tokadd.exit
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.i, align 4, !tbaa !365
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !362
  %i.w = sext i32 %i.u to i64
  %i.x = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.v, i64 noundef %i.w, i64 noundef 1) #38
  store ptr %i.x, ptr %i.a, align 8, !tbaa !362
  br label %tokadd.exit116

tokadd.exit116:                                   ; preds = %bb.d, %tokadd.exit, %bb.a
  %i.y = getelementptr i8, ptr %0, i64 16
  %i.z = getelementptr i8, ptr %0, i64 80         ; 23 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !192 ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 88        ; 6 uses
end_hunk_7
begin_hunk_8_@tokadd_utf8:bb.a
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %0, i64 160       ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.al = getelementptr i8, ptr %0, i64 136       ; 9 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !388
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  store i8 123, ptr %i.ap, align 1, !tbaa !31
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !388
  %i.ar = getelementptr i8, ptr %0, i64 140       ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !365 ; 2 uses
  %.not.i117 = icmp slt i32 %i.aq, %i.as
  br i1 %.not.i117, label %tokadd.exit118, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = shl i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !365
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.av = sext i32 %i.at to i64
  %i.aw = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.au, i64 noundef %i.av, i64 noundef 1) #38
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !362
  br label %tokadd.exit118

tokadd.exit118:                                   ; preds = %bb.h, %bb.i
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1      ; 3 uses
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !192
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.not110142 = icmp ult ptr %i.ay, %i.az
  br i1 %.not110142, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %tokadd.exit118, %bb.q
  %i.ba = phi ptr [ %i.co, %bb.q ], [ %i.az, %tokadd.exit118 ]
  %i.bb = phi ptr [ %i.cn, %bb.q ], [ %i.ay, %tokadd.exit118 ]
  %i.bc = phi ptr [ %i.cm, %bb.q ], [ %i.ax, %tokadd.exit118 ]
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !31  ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = icmp eq i8 %i.bd, 125
  br i1 %i.bf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.bh = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.al, align 8, !tbaa !388
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr i8, ptr %i.bg, i64 %i.bj
  store i8 125, ptr %i.bk, align 1, !tbaa !31
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !388
  %i.bm = load i32, ptr %i.ar, align 4, !tbaa !365 ; 2 uses
  %.not.i119 = icmp slt i32 %i.bl, %i.bm
  br i1 %.not.i119, label %tokadd.exit120, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = shl i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.ar, align 4, !tbaa !365
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.bp = sext i32 %i.bn to i64
  %i.bq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bo, i64 noundef %i.bp, i64 noundef 1) #38
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !362
  br label %tokadd.exit120

tokadd.exit120:                                   ; preds = %bb.j, %bb.k
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.bs = getelementptr i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.z, align 8, !tbaa !192
  br label %.thread

bb.l:                                             ; preds = %.lr.ph
  %i.bt = icmp eq i32 %2, %i.be
  br i1 %i.bt, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq i8 %i.bd, 92
  br i1 %i.bu, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr i8, ptr %i.bc, i64 2
  %.not111 = icmp ult ptr %i.bv, %i.ba
  br i1 %.not111, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.bx = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.al, align 8, !tbaa !388
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr i8, ptr %i.bw, i64 %i.bz
  store i8 92, ptr %i.ca, align 1, !tbaa !31
  %i.cb = load i32, ptr %i.al, align 8, !tbaa !388
  %i.cc = load i32, ptr %i.ar, align 4, !tbaa !365 ; 2 uses
  %.not.i121 = icmp slt i32 %i.cb, %i.cc
  br i1 %.not.i121, label %tokadd.exit122, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = shl i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.ar, align 4, !tbaa !365
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !362
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #38
  store ptr %i.cg, ptr %i.aj, align 8, !tbaa !362
  br label %tokadd.exit122

tokadd.exit122:                                   ; preds = %bb.o, %bb.p
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.ci = getelementptr i8, ptr %i.ch, i64 1      ; 2 uses
  store ptr %i.ci, ptr %i.z, align 8, !tbaa !192
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !31
  %i.ck = sext i8 %i.cj to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %tokadd.exit122
  %.090 = phi i32 [ 92, %bb.n ], [ %i.ck, %tokadd.exit122 ], [ %i.be, %bb.m ]
  %i.cl = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.090) ; 0 uses
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 1      ; 3 uses
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !192
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.not110 = icmp ult ptr %i.cn, %i.co
  br i1 %.not110, label %.lr.ph, label %.thread

bb.r:                                             ; preds = %bb.f, %bb.g
  %i.cp = getelementptr i8, ptr %0, i64 360
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = and i32 %i.cq, 8
  %.not13.i = icmp eq i32 %i.cr, 0
  br i1 %.not13.i, label %bb.s, label %.critedge.i, !prof !374

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr i8, ptr %0, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !375
  %i.cu = icmp ugt ptr %i.ct, inttoptr (i64 1 to ptr)
  br i1 %i.cu, label %.critedge.i, label %.critedge._crit_edge.i, !prof !207

.critedge.i:                                      ; preds = %bb.s, %bb.r
  %i.cv = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.cv, 0
  %.pre160 = load ptr, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %.pre162.pre = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %bb.s
  %.pre162 = phi ptr [ %i.ac, %bb.s ], [ %.pre162.pre, %.critedge.i ] ; 5 uses
  %i.cw = phi ptr [ %i.aa, %bb.s ], [ %.pre160, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1      ; 6 uses
  store ptr %i.cx, ptr %i.z, align 8, !tbaa !192
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !31  ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp eq i8 %i.cy, 13
  br i1 %i.da, label %bb.t, label %nextc0.exit, !prof !207

bb.t:                                             ; preds = %.critedge._crit_edge.i
  %.not.i.i = icmp ult ptr %i.cx, %.pre162
  br i1 %.not.i.i, label %bb.u, label %nextc0.exit

bb.u:                                             ; preds = %bb.t
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !31
  %i.dc = icmp eq i8 %i.db, 10
  br i1 %i.dc, label %bb.v, label %nextc0.exit

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  store ptr %i.dd, ptr %i.z, align 8, !tbaa !192
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %.critedge._crit_edge.i, %bb.t, %bb.u, %bb.v
  %i.de = phi ptr [ %.pre162, %bb.u ], [ %.pre162, %.critedge._crit_edge.i ], [ %.pre162, %bb.t ], [ %.pre162, %bb.v ], [ %.pre162.pre, %.critedge.i ] ; 3 uses
  %.promoted = phi ptr [ %i.cx, %bb.u ], [ %i.cx, %.critedge._crit_edge.i ], [ %i.cx, %bb.t ], [ %i.dd, %bb.v ], [ %.pre160, %.critedge.i ] ; 2 uses
  %.011.i = phi i32 [ 13, %bb.u ], [ %i.cz, %.critedge._crit_edge.i ], [ 13, %bb.t ], [ 10, %bb.v ], [ -1, %.critedge.i ]
  %.not101 = icmp ult ptr %.promoted, %i.de
  br i1 %.not101, label %.preheader136, label %.critedge114

.preheader136:                                    ; preds = %nextc0.exit, %bb.x
  %i.df = phi ptr [ %i.dh, %bb.x ], [ %.promoted, %nextc0.exit ] ; 5 uses
  %.not102 = icmp ult ptr %i.df, %i.de
  br i1 %.not102, label %bb.w, label %.lr.ph149

bb.w:                                             ; preds = %.preheader136
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !31  ; 3 uses
  switch i8 %i.dg, label %.lr.ph149.split.loop.exit43 [
    i8 32, label %bb.x
    i8 13, label %bb.x
    i8 12, label %bb.x
    i8 11, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 125, label %._crit_edge.thread
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.dh = getelementptr i8, ptr %i.df, i64 1      ; 4 uses
  store ptr %i.dh, ptr %i.z, align 8, !tbaa !192
  %.not104 = icmp ult ptr %i.dh, %i.de
  br i1 %.not104, label %.preheader136, label %.lr.ph149.split.loop.exit40, !llvm.loop !639

.lr.ph149.split.loop.exit40:                      ; preds = %bb.x
  %i.di = zext i8 %i.dg to i32
  br label %.lr.ph149

.lr.ph149.split.loop.exit43:                      ; preds = %bb.w
  %i.dj = zext i8 %i.dg to i32
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136, %.lr.ph149.split.loop.exit43, %.lr.ph149.split.loop.exit40
  %i.dk = phi ptr [ %i.dh, %.lr.ph149.split.loop.exit40 ], [ %i.df, %.lr.ph149.split.loop.exit43 ], [ %i.df, %.preheader136 ] ; 2 uses
  %i.dl = phi i32 [ %i.di, %.lr.ph149.split.loop.exit40 ], [ %i.dj, %.lr.ph149.split.loop.exit43 ], [ -1, %.preheader136 ] ; 2 uses
  %i.dm = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.dn = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.do = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.dp = icmp ne i32 %2, -1                      ; 2 uses
  br i1 %.not, label %.lr.ph149.split.us, label %.lr.ph149.split

.lr.ph149.split.us:                               ; preds = %.lr.ph149, %.thread196
  %i.dq = phi ptr [ %i.du, %.thread196 ], [ %i.dk, %.lr.ph149 ]
  %.085147.us = phi i32 [ %i.dy, %.thread196 ], [ %i.dl, %.lr.ph149 ]
  %.086146.us = phi ptr [ %spec.store.select.us, %.thread196 ], [ null, %.lr.ph149 ] ; 2 uses
  %i.dr = icmp eq i32 %.085147.us, %2
  br i1 %i.dr, label %.critedge114, label %.split.us

.split.us:                                        ; preds = %.lr.ph149.split.us
  %i.ds = icmp eq ptr %.086146.us, @tokadd_utf8.multiple_codepoints
  %spec.select = select i1 %i.ds, ptr %i.dq, ptr %.086146.us ; 2 uses
  %i.dt = tail call fastcc i32 @tokadd_codepoint(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  %.not106.us = icmp eq i32 %i.dt, 0
  br i1 %.not106.us, label %.critedge114, label %.preheader.us

bb.y:                                             ; preds = %.preheader.us, %bb.aa
  %i.du = phi ptr [ %i.dw, %bb.aa ], [ %.promoted144.us, %.preheader.us ] ; 5 uses
  %.not107.us = icmp ult ptr %i.du, %i.ea
  br i1 %.not107.us, label %bb.z, label %.thread196

bb.z:                                             ; preds = %bb.y
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !31  ; 2 uses
  switch i8 %i.dv, label %.thread196.split.loop.exit49 [
    i8 32, label %bb.aa
    i8 13, label %bb.aa
    i8 12, label %bb.aa
    i8 11, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.dw = getelementptr i8, ptr %i.du, i64 1      ; 3 uses
  store ptr %i.dw, ptr %i.z, align 8, !tbaa !192
  %.not109.us = icmp ult ptr %i.dw, %i.ea
  br i1 %.not109.us, label %bb.y, label %.critedge114, !llvm.loop !640

.thread196.split.loop.exit49:                     ; preds = %bb.z
  %i.dx = zext i8 %i.dv to i32
  br label %.thread196

.thread196:                                       ; preds = %bb.y, %.thread196.split.loop.exit49
  %i.dy = phi i32 [ %i.dx, %.thread196.split.loop.exit49 ], [ -1, %bb.y ] ; 2 uses
  %i.dz = icmp ne ptr %spec.select, null
  %or.cond.us = select i1 %i.dp, i1 true, i1 %i.dz
  %spec.store.select.us = select i1 %or.cond.us, ptr %spec.select, ptr @tokadd_utf8.multiple_codepoints ; 2 uses
  %.not105.us = icmp eq i32 %i.dy, 125
  br i1 %.not105.us, label %._crit_edge, label %.lr.ph149.split.us, !llvm.loop !641

.preheader.us:                                    ; preds = %.split.us
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.promoted144.us = load ptr, ptr %i.z, align 8, !tbaa !192
  br label %bb.y

.lr.ph149.split:                                  ; preds = %.lr.ph149, %.thread197
  %i.eb = phi ptr [ %.lcssa8, %.thread197 ], [ %i.dk, %.lr.ph149 ]
  %.0148 = phi i32 [ %.1.lcssa, %.thread197 ], [ %.011.i, %.lr.ph149 ] ; 3 uses
  %.085147 = phi i32 [ %i.ew, %.thread197 ], [ %i.dl, %.lr.ph149 ]
  %.086146 = phi ptr [ %spec.store.select, %.thread197 ], [ null, %.lr.ph149 ] ; 2 uses
  %i.ec = icmp eq i32 %.085147, %2
  br i1 %i.ec, label %.critedge114, label %.split92

.split92:                                         ; preds = %.lr.ph149.split
  %i.ed = icmp eq ptr %.086146, @tokadd_utf8.multiple_codepoints
  %spec.select212 = select i1 %i.ed, ptr %i.eb, ptr %.086146 ; 2 uses
  %i.ee = trunc i32 %.0148 to i8
  %i.ef = load ptr, ptr %i.dm, align 8, !tbaa !362
  %i.eg = load i32, ptr %i.dn, align 8, !tbaa !388 ; 2 uses
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.dn, align 8, !tbaa !388
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr i8, ptr %i.ef, i64 %i.ei
  store i8 %i.ee, ptr %i.ej, align 1, !tbaa !31
  %i.ek = load i32, ptr %i.dn, align 8, !tbaa !388
  %i.el = load i32, ptr %i.do, align 4, !tbaa !365 ; 2 uses
  %.not.i124 = icmp slt i32 %i.ek, %i.el
  br i1 %.not.i124, label %tokadd.exit125, label %bb.ab

bb.ab:                                            ; preds = %.split92
  %i.em = shl i32 %i.el, 1                        ; 2 uses
  store i32 %i.em, ptr %i.do, align 4, !tbaa !365
  %i.en = load ptr, ptr %i.dm, align 8, !tbaa !362
  %i.eo = sext i32 %i.em to i64
  %i.ep = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.en, i64 noundef %i.eo, i64 noundef 1) #38
  store ptr %i.ep, ptr %i.dm, align 8, !tbaa !362
  br label %tokadd.exit125

tokadd.exit125:                                   ; preds = %.split92, %bb.ab
  %i.eq = tail call fastcc i32 @tokadd_codepoint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef null)
  %.not106 = icmp eq i32 %i.eq, 0
  br i1 %.not106, label %.critedge114, label %.preheader

.preheader:                                       ; preds = %tokadd.exit125
  %i.er = load ptr, ptr %i.ab, align 8, !tbaa !324 ; 2 uses
  %.promoted144 = load ptr, ptr %i.z, align 8, !tbaa !192 ; 3 uses
  %.not10714 = icmp ult ptr %.promoted144, %i.er
  br i1 %.not10714, label %.lr.ph16, label %.thread197

bb.ac:                                            ; preds = %bb.ad
  br label %.lr.ph16, !llvm.loop !640

.lr.ph16:                                         ; preds = %.preheader, %bb.ac
  %.115 = phi i32 [ %i.eu, %bb.ac ], [ %.0148, %.preheader ]
  %i.es = phi ptr [ %i.ev, %bb.ac ], [ %.promoted144, %.preheader ] ; 3 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !31  ; 2 uses
  %i.eu = zext i8 %i.et to i32                    ; 2 uses
  switch i8 %i.et, label %.thread197 [
    i8 32, label %bb.ad
    i8 13, label %bb.ad
    i8 12, label %bb.ad
    i8 11, label %bb.ad
    i8 10, label %bb.ad
    i8 9, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph16, %.lr.ph16, %.lr.ph16, %.lr.ph16, %.lr.ph16, %.lr.ph16
  %i.ev = getelementptr i8, ptr %i.es, i64 1      ; 3 uses
  store ptr %i.ev, ptr %i.z, align 8, !tbaa !192
  %.not109 = icmp ult ptr %i.ev, %i.er
  br i1 %.not109, label %bb.ac, label %.critedge114, !llvm.loop !640

.thread197:                                       ; preds = %.lr.ph16, %.preheader
  %.lcssa8 = phi ptr [ %.promoted144, %.preheader ], [ %i.es, %.lr.ph16 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0148, %.preheader ], [ %.115, %.lr.ph16 ]
  %i.ew = phi i32 [ -1, %.preheader ], [ %i.eu, %.lr.ph16 ] ; 2 uses
  %i.ex = icmp ne ptr %spec.select212, null
  %or.cond = select i1 %i.dp, i1 true, i1 %i.ex
  %spec.store.select = select i1 %or.cond, ptr %spec.select212, ptr @tokadd_utf8.multiple_codepoints ; 2 uses
  %.not105 = icmp eq i32 %i.ew, 125
  br i1 %.not105, label %._crit_edge, label %.lr.ph149.split, !llvm.loop !641

.critedge114:                                     ; preds = %.lr.ph149.split, %tokadd.exit125, %bb.ad, %.split.us, %.lr.ph149.split.us, %bb.aa, %nextc0.exit
  %i.ey = tail call nonnull ptr @rb_utf8_encoding() #31
  tail call fastcc void @flush_string_content(ptr noundef %0, ptr noundef nonnull %i.ey, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ez = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !63 ; 4 uses
  %i.fb = getelementptr i8, ptr %0, i64 96
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !64
  %i.fd = getelementptr i8, ptr %0, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !65
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.fk, %i.fg
  %i.fm = trunc i64 %i.fl to i32
  store i32 %i.fa, ptr %4, align 4, !tbaa !68
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.fi, ptr %i.fn, align 4, !tbaa !69
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fa, ptr %i.fo, align 4, !tbaa !70
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.794)
  %i.fq = load i32, ptr %i.ez, align 4, !tbaa !63
  %i.fr = icmp eq i32 %i.fa, %i.fq
  br i1 %i.fr, label %bb.ae, label %parser_yyerror0.exit

bb.ae:                                            ; preds = %.critedge114
  %i.fs = getelementptr i8, ptr %0, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !193
  %i.fu = getelementptr i8, ptr %0, i64 368
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.fv, ptr noundef nonnull readonly %4, i32 noundef %i.fa, ptr noundef %i.ft)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %.critedge114, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 7965)
  br label %.thread

._crit_edge:                                      ; preds = %.thread197, %.thread196
  %i.fw = phi ptr [ %i.du, %.thread196 ], [ %.lcssa8, %.thread197 ]
  %.086.lcssa = phi ptr [ %spec.store.select.us, %.thread196 ], [ %spec.store.select, %.thread197 ] ; 3 uses
  %i.fx = icmp ne ptr %.086.lcssa, null
  %i.fy = icmp ne ptr %.086.lcssa, @tokadd_utf8.multiple_codepoints
  %or.cond3 = and i1 %i.fx, %i.fy
  br i1 %or.cond3, label %bb.af, label %._crit_edge.thread

bb.af:                                            ; preds = %._crit_edge
  store ptr %.086.lcssa, ptr %i.z, align 8, !tbaa !192
  tail call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 7971)
  %i.fz = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.ga = getelementptr i8, ptr %0, i64 96        ; 2 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !64
  store ptr %i.fw, ptr %i.z, align 8, !tbaa !192
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @tokadd_utf8.multiple_codepoints)
  %i.gb = load ptr, ptr %i.z, align 8, !tbaa !192
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !64
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.af, %._crit_edge
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 125)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.thread
  %i.gc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %.thread

bb.ai:                                            ; preds = %bb.e, %tokadd.exit116
  %i.gd = getelementptr i8, ptr %i.aa, i64 -2
  %i.ge = tail call fastcc i32 @tokadd_codepoint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef %i.gd)
  %.not112 = icmp eq i32 %i.ge, 0
  br i1 %.not112, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.gg = getelementptr i8, ptr %0, i64 96
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.l, %tokadd.exit118, %tokadd.exit120, %bb.ai, %bb.ah, %parser_yyerror0.exit, %bb.aj
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @read_escape(ptr noundef %0, i32 noundef range(i32 0, 4) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr i8, ptr %0, i64 80         ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 88         ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !374

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 360
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 8
  %.not13.i = icmp eq i32 %i.h, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !375
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %.critedge.i, label %bb.d, !prof !207

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.l = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread135

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.c, %bb.c ] ; 10 uses
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 8 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !192
  %i.o = load i8, ptr %i.m, align 1, !tbaa !31    ; 3 uses
  switch i8 %i.o, label %bb.bp [
    i8 13, label %bb.e
    i8 92, label %.thread157
    i8 110, label %bb.h
    i8 116, label %bb.i
    i8 114, label %bb.j
    i8 102, label %bb.k
    i8 118, label %bb.l
    i8 97, label %bb.m
    i8 101, label %bb.n
    i8 48, label %bb.o
    i8 49, label %bb.o
    i8 50, label %bb.o
    i8 51, label %bb.o
    i8 52, label %bb.o
    i8 53, label %bb.o
    i8 54, label %bb.o
    i8 55, label %bb.o
    i8 120, label %bb.s
    i8 98, label %bb.t
    i8 115, label %bb.u
    i8 77, label %bb.v
    i8 67, label %bb.am
    i8 99, label %bb.at
  ], !prof !642

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.f, label %.thread157

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.n, align 1, !tbaa !31
  %i.r = icmp eq i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %.thread157

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.m, i64 2
  store ptr %i.s, ptr %i.b, align 8, !tbaa !192
  br label %.thread157

bb.h:                                             ; preds = %bb.d
  br label %.thread157

bb.i:                                             ; preds = %bb.d
  br label %.thread157

bb.j:                                             ; preds = %bb.d
  br label %.thread157

bb.k:                                             ; preds = %bb.d
  br label %.thread157

bb.l:                                             ; preds = %bb.d
  br label %.thread157

bb.m:                                             ; preds = %bb.d
  br label %.thread157

bb.n:                                             ; preds = %bb.d
  br label %.thread157

bb.o:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, -9
  store i32 %i.v, ptr %i.t, align 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !192
  %i.w = getelementptr i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = icmp ugt ptr %i.m, %i.x
  br i1 %i.y, label %bb.p, label %pushback.exit

bb.p:                                             ; preds = %bb.o
  %i.z = load i8, ptr %i.m, align 1, !tbaa !31
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %bb.q, label %pushback.exit

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr i8, ptr %i.m, i64 -1      ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31
  %i.ad = icmp eq i8 %i.ac, 13
  br i1 %i.ad, label %bb.r, label %pushback.exit

bb.r:                                             ; preds = %bb.q
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !192
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.ae = phi ptr [ %i.m, %bb.o ], [ %i.m, %bb.p ], [ %i.m, %bb.q ], [ %i.ab, %bb.r ]
  %i.af = call i64 @ruby_scan_oct(ptr noundef nonnull %i.ae, i64 noundef 3, ptr noundef nonnull %i.a) #39
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !192
  br label %.thread157

bb.s:                                             ; preds = %bb.d
  %i.ak = call fastcc i32 @tok_hex(ptr noundef nonnull %0, ptr noundef %i.a)
  %i.al = load i64, ptr %i.a, align 8, !tbaa !28
  %i.am = icmp eq i64 %i.al, 0
  %. = select i1 %i.am, i32 0, i32 %i.ak
  br label %.thread157

bb.t:                                             ; preds = %bb.d
  br label %.thread157

bb.u:                                             ; preds = %bb.d
  br label %.thread157

bb.v:                                             ; preds = %bb.d
  %.not96 = icmp samesign ult i32 %1, 2
  br i1 %.not96, label %bb.w, label %nextc0.exit.thread135

bb.w:                                             ; preds = %bb.v
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i106 = icmp ult ptr %i.n, %i.an
  br i1 %.not.i106, label %bb.x, label %.critedge.i107, !prof !374

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr i8, ptr %0, i64 360
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 8
  %.not13.i113 = icmp eq i32 %i.aq, 0
  br i1 %.not13.i113, label %bb.y, label %.critedge.i107, !prof !374

bb.y:                                             ; preds = %bb.x
  %i.ar = getelementptr i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !375
  %i.at = icmp ugt ptr %i.as, inttoptr (i64 1 to ptr)
  br i1 %i.at, label %.critedge.i107, label %bb.z, !prof !207

.critedge.i107:                                   ; preds = %bb.y, %bb.x, %bb.w
  %i.au = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i108 = icmp eq i32 %i.au, 0
  br i1 %.not14.i108, label %.critedge._crit_edge.i110, label %nextc0.exit.thread135

.critedge._crit_edge.i110:                        ; preds = %.critedge.i107
  %.pre.i111 = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.z

bb.z:                                             ; preds = %.critedge._crit_edge.i110, %bb.y
  %i.av = phi ptr [ %.pre.i111, %.critedge._crit_edge.i110 ], [ %i.n, %bb.y ] ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1      ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !192
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !31
  switch i8 %i.ax, label %nextc0.exit.thread135 [
    i8 13, label %bb.aa
    i8 45, label %bb.ad
  ], !prof !390

bb.aa:                                            ; preds = %bb.z
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i.i112 = icmp ult ptr %i.aw, %i.ay
  br i1 %.not.i.i112, label %bb.ab, label %nextc0.exit.thread135

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %bb.ac, label %nextc0.exit.thread135

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr i8, ptr %i.av, i64 2
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !192
  br label %nextc0.exit.thread135

bb.ad:                                            ; preds = %bb.z
  %i.bc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 8 uses
  switch i32 %i.bc, label %bb.ah [
    i32 92, label %bb.ae
    i32 -1, label %nextc0.exit.thread135
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not103 = icmp ult ptr %i.bd, %i.be
  br i1 %.not103, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !31
  switch i8 %i.bf, label %.thread [
    i8 117, label %bb.ag
    i8 85, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.bg = tail call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %nextc0.exit.thread135

.thread:                                          ; preds = %bb.ae, %bb.af
  %i.bh = or disjoint i32 %1, 2
  %i.bi = tail call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef %i.bh, ptr noundef %2)
  %i.bj = or i32 %i.bi, 128
  br label %.thread157

bb.ah:                                            ; preds = %bb.ad
  %i.bk = icmp samesign ugt i32 %i.bc, 127
  br i1 %i.bk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @tokskip_mbchar(ptr noundef nonnull %0)
  br label %nextc0.exit.thread135

bb.aj:                                            ; preds = %bb.ah
  %i.bl = tail call fastcc i32 @escaped_control_code(i32 noundef %i.bc) ; 2 uses
  %.not99 = icmp eq i32 %i.bl, 0
  br i1 %.not99, label %bb.ak, label %.sink.split

.sink.split:                                      ; preds = %bb.aj
  %i.bm = icmp samesign ult i32 %i.bc, 32
  %i.bn = icmp eq i32 %i.bc, 127
  %i.bo = or i1 %i.bm, %i.bn
  %.not102 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not102, %i.bo
  %i.bp = getelementptr i8, ptr %0, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !97
  %i.br = getelementptr i8, ptr %0, i64 196
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !63
  %.str.799..str.800 = select i1 %or.cond, ptr @.str.799, ptr @.str.800
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.bq, i32 noundef %i.bs, ptr noundef nonnull %.str.799..str.800, i32 noundef %i.bl) #31
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
end_hunk_8
begin_hunk_9_@tokadd_codepoint:bb.a
  %i.ce = icmp eq i32 %i.cd, 55296
  br i1 %i.ce, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cf = call nonnull ptr @rb_utf8_encoding() #31
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %.05880 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, i64 noundef %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ck = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !63 ; 4 uses
  %i.cm = getelementptr i8, ptr %0, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !64
  %i.co = getelementptr i8, ptr %0, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.cr
  %i.cx = trunc i64 %i.cw to i32
  store i32 %i.cl, ptr %4, align 4, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ct, ptr %i.cy, align 4, !tbaa !69
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cl, ptr %i.cz, align 4, !tbaa !70
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.cx, ptr %i.da, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.797)
  %i.db = load i32, ptr %i.ck, align 4, !tbaa !63
  %i.dc = icmp eq i32 %i.cl, %i.db
  br i1 %i.dc, label %bb.p, label %parser_yyerror0.exit73

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr i8, ptr %0, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !193
  %i.df = getelementptr i8, ptr %0, i64 368
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.dg, ptr noundef nonnull readonly %4, i32 noundef %i.cl, ptr noundef %i.de)
  br label %parser_yyerror0.exit73

parser_yyerror0.exit73:                           ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 7862)
  br label %ruby_nonempty_memcpy.exit

bb.q:                                             ; preds = %bb.n, %bb.e
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = trunc i64 %i.m to i32                   ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !388
  %i.dk = add i32 %i.dj, %i.dh                    ; 4 uses
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !388
  %i.dl = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !365 ; 2 uses
  %.not.i = icmp slt i32 %i.dk, %i.dm
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 160
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !362
  br label %tokspace.exit

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %i.dn = phi i32 [ %i.do, %.preheader.i ], [ %i.dm, %bb.r ]
  %i.do = shl i32 %i.dn, 1                        ; 4 uses
  %i.dp = icmp slt i32 %i.do, %i.dk
  br i1 %i.dp, label %.preheader.i, label %bb.s, !llvm.loop !15

bb.s:                                             ; preds = %.preheader.i
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !365
  %i.dq = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !362
  %i.ds = sext i32 %i.do to i64
  %i.dt = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.dr, i64 noundef %i.ds, i64 noundef 1) #38 ; 2 uses
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !362
  %.pre13.i = load i32, ptr %i.di, align 8, !tbaa !388
  %.pre = load i64, ptr %i.a, align 8, !tbaa !28
  br label %tokspace.exit

tokspace.exit:                                    ; preds = %._crit_edge.i, %bb.s
  %i.du = phi i64 [ %i.m, %._crit_edge.i ], [ %.pre, %bb.s ]
  %i.dv = phi i32 [ %i.dk, %._crit_edge.i ], [ %.pre13.i, %bb.s ]
  %i.dw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dt, %bb.s ]
  %sext = shl i64 %i.du, 32                       ; 2 uses
  %.not.i74 = icmp eq i64 %sext, 0
  br i1 %.not.i74, label %ruby_nonempty_memcpy.exit, label %bb.t

bb.t:                                             ; preds = %tokspace.exit
  %i.dx = ashr exact i64 %sext, 32                ; 2 uses
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.dz = sub nsw i64 0, %i.dx
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = sub i32 %i.dv, %i.dh
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr %i.dw, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ed, ptr noundef nonnull readonly align 1 %i.ea, i64 noundef range(i64 1, 0) %i.dx, i1 noundef false) #31
  br label %ruby_nonempty_memcpy.exit

bb.u:                                             ; preds = %bb.q
  %i.ee = icmp sgt i32 %i.l, 127
  br i1 %i.ee, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ef = call nonnull ptr @rb_utf8_encoding() #31 ; 5 uses
  %i.eg = load ptr, ptr %1, align 8, !tbaa !386   ; 3 uses
  %.not68 = icmp eq ptr %i.eg, null
  %.not69 = icmp eq ptr %i.ef, %i.eg
  %or.cond70 = select i1 %.not68, i1 true, i1 %.not69
  br i1 %or.cond70, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.eh = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !63 ; 4 uses
  store i32 %i.ei, ptr %7, align 4, !tbaa !372
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ek = getelementptr i8, ptr %0, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !64
  %i.em = getelementptr i8, ptr %0, i64 72
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !65
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = trunc i64 %i.eq to i32
  store i32 %i.er, ptr %i.ej, align 4, !tbaa !373
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ei, ptr %i.es, align 4, !tbaa !372
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.ev, %i.ep
  %i.ex = trunc i64 %i.ew to i32
  store i32 %i.ex, ptr %i.et, align 4, !tbaa !373
  %i.ey = getelementptr i8, ptr %i.eg, i64 8
  %.val71 = load ptr, ptr %i.ey, align 8, !tbaa !382
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.798, ptr noundef %.val71)
  %i.ez = load i32, ptr %i.eh, align 4, !tbaa !63
  %i.fa = icmp eq i32 %i.ei, %i.ez
  br i1 %i.fa, label %bb.w, label %parser_show_error_line.exit

bb.w:                                             ; preds = %.critedge
  %i.fb = getelementptr i8, ptr %0, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !193
  %i.fd = getelementptr i8, ptr %0, i64 368
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.fe, ptr noundef nonnull readonly %7, i32 noundef %i.ei, ptr noundef %i.fc)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %.critedge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %ruby_nonempty_memcpy.exit

bb.x:                                             ; preds = %bb.v
  store ptr %i.ef, ptr %1, align 8, !tbaa !386
  %i.ff = call i32 @rb_enc_codelen(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef nonnull %i.ef) #31 ; 2 uses
  %i.fg = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !388
  %i.fi = add i32 %i.fh, %i.ff                    ; 4 uses
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !388
  %i.fj = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !365 ; 2 uses
  %.not.i.i = icmp slt i32 %i.fi, %i.fk
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr i8, ptr %0, i64 160
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !362
  br label %tokaddmbc.exit

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %i.fl = phi i32 [ %i.fm, %.preheader.i.i ], [ %i.fk, %bb.x ]
  %i.fm = shl i32 %i.fl, 1                        ; 4 uses
  %i.fn = icmp slt i32 %i.fm, %i.fi
  br i1 %i.fn, label %.preheader.i.i, label %bb.y, !llvm.loop !15

bb.y:                                             ; preds = %.preheader.i.i
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !365
  %i.fo = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !362
  %i.fq = sext i32 %i.fm to i64
  %i.fr = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fp, i64 noundef %i.fq, i64 noundef 1) #38 ; 2 uses
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !362
  %.pre13.i.i = load i32, ptr %i.fg, align 8, !tbaa !388
  br label %tokaddmbc.exit

tokaddmbc.exit:                                   ; preds = %._crit_edge.i.i, %bb.y
  %i.fs = phi i32 [ %i.fi, %._crit_edge.i.i ], [ %.pre13.i.i, %bb.y ]
  %i.ft = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.fr, %bb.y ]
  %i.fu = sub i32 %i.fs, %i.ff
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr i8, ptr %i.ft, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.ef, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !644
  %i.fz = call i32 %i.fy(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef %i.fw, ptr noundef nonnull %i.ef) #31, !inline_history !643 ; 0 uses
  br label %ruby_nonempty_memcpy.exit

bb.z:                                             ; preds = %bb.u
  %i.ga = trunc i64 %i.k to i8
  %i.gb = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !362
  %i.gd = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !388 ; 2 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !388
  %i.gg = sext i32 %i.ge to i64
  %i.gh = getelementptr i8, ptr %i.gc, i64 %i.gg
  store i8 %i.ga, ptr %i.gh, align 1, !tbaa !31
  %i.gi = load i32, ptr %i.gd, align 8, !tbaa !388
  %i.gj = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !365 ; 2 uses
  %.not.i76 = icmp slt i32 %i.gi, %i.gk
  br i1 %.not.i76, label %ruby_nonempty_memcpy.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = shl i32 %i.gk, 1                        ; 2 uses
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !365
  %i.gm = load ptr, ptr %i.gb, align 8, !tbaa !362
  %i.gn = sext i32 %i.gl to i64
  %i.go = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.gm, i64 noundef %i.gn, i64 noundef 1) #38
  store ptr %i.go, ptr %i.gb, align 8, !tbaa !362
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.aa, %bb.z, %bb.t, %tokspace.exit, %tokaddmbc.exit, %parser_show_error_line.exit, %parser_yyerror0.exit73, %parser_yyerror0.exit72, %parser_yyerror0.exit
  %.1.shrunk = phi i1 [ %i.az, %parser_yyerror0.exit ], [ %.not, %parser_yyerror0.exit72 ], [ %.not, %parser_yyerror0.exit73 ], [ %.not, %parser_show_error_line.exit ], [ true, %tokaddmbc.exit ], [ true, %bb.t ], [ true, %tokspace.exit ], [ true, %bb.z ], [ true, %bb.aa ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.1
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_enc_codelen(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare i64 @ruby_scan_oct(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @tok_hex(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = tail call i64 @ruby_scan_hex(ptr noundef %i.b, i64 noundef 2, ptr noundef nonnull %1) #31
  %i.d = load i64, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.g = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63   ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.n
  %i.t = trunc i64 %i.s to i32
  store i32 %i.h, ptr %2, align 4, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.p, ptr %i.u, align 4, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.h, ptr %i.v, align 4, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.t, ptr %i.w, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.805)
  %i.x = load i32, ptr %i.g, align 4, !tbaa !63
  %i.y = icmp eq i32 %i.h, %i.x
  br i1 %i.y, label %bb.c, label %parser_yyerror0.exit

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !193
  %i.ab = getelementptr i8, ptr %0, i64 368
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ac, ptr noundef nonnull readonly %2, i32 noundef %i.h, ptr noundef %i.aa)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 7795)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = trunc i64 %i.c to i32
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.d
  store ptr %i.af, ptr %i.a, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %parser_yyerror0.exit
  %.0 = phi i32 [ %i.ad, %bb.d ], [ 0, %parser_yyerror0.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tokskip_mbchar(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !324
  %i.f = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !180
  %i.h = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g) #31 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %parser_precise_mbclen.exit

parser_precise_mbclen.exit:                       ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !180
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.806, ptr noundef %.val.i)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  store ptr %i.o, ptr %i.a, align 8, !tbaa !192
  br label %bb.c

bb.c:                                             ; preds = %parser_precise_mbclen.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc range(i32 0, 119) i32 @escaped_control_code(i32 noundef range(i32 0, 256) %0) unnamed_addr #13 {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -9            ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.escaped_control_code, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal void @magic_comment_encoding(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %comment_at_top.exit, label %comment_at_top.exit.thread

comment_at_top.exit:                              ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !376
  %i.f = and i32 %i.b, 64
  %.not4.i = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not4.i, i32 1, i32 2
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %comment_at_top.exit.thread

bb.b:                                             ; preds = %comment_at_top.exit
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %2)
  br label %comment_at_top.exit.thread

comment_at_top.exit.thread:                       ; preds = %bb.a, %comment_at_top.exit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @parser_encode_length(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 5
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, -5                       ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b       ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !31
  %i.e = icmp eq i8 %i.d, 45
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 1
  %i.g = tail call i32 @rb_memcicmp(ptr noundef %i.f, ptr noundef nonnull @.str.826, i64 noundef 4) #31
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %.thread

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %2, 5
  br i1 %i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.j = add nsw i64 %2, -4                       ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr i8, ptr %i.k, i64 1        ; 2 uses
  %i.o = tail call i32 @rb_memcicmp(ptr noundef %i.n, ptr noundef nonnull @.str.827, i64 noundef 3) #31
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @rb_memcicmp(ptr noundef %i.n, ptr noundef nonnull @.str.828, i64 noundef 3) #31
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i64 %2, 8
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @rb_memcicmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.829, i64 noundef 8) #31
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h, %.thread, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.c, %bb.i
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.b, %bb.c ], [ %2, %bb.i ], [ 4, %bb.h ], [ %i.j, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_set_frozen_string_literal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = getelementptr i8, ptr %0, i64 196
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull @.str.830, ptr noundef %1) #31
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @parser_get_bool(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8
  %i.k = and i32 %i.j, -4
  %i.l = or i32 %i.k, %i.h
  store i32 %i.l, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_set_shareable_constant_value(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02327 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.02327, align 1, !tbaa !31
  switch i8 %i.f, label %bb.c [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 35, label %._crit_edge
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.g = getelementptr i8, ptr %.02327, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !645

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.j = getelementptr i8, ptr %0, i64 196
  %i.k = load i32, ptr %i.j, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull @.str.834, ptr noundef %1) #31
  br label %bb.m

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.l = load i8, ptr %2, align 1, !tbaa !31
  switch i8 %i.l, label %bb.l [
    i8 110, label %bb.d
    i8 78, label %bb.d
    i8 108, label %bb.f
    i8 76, label %bb.f
    i8 101, label %bb.h
    i8 69, label %bb.h
  ]

bb.d:                                             ; preds = %._crit_edge, %._crit_edge
  %i.m = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.555) #35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 328        ; 2 uses
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, -193
  store i16 %i.q, ptr %i.o, align 8
  br label %bb.m

bb.f:                                             ; preds = %._crit_edge, %._crit_edge
  %i.r = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.466) #35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 328        ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, -193
  %i.w = or disjoint i16 %i.v, 64
  store i16 %i.w, ptr %i.t, align 8
  br label %bb.m

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  %i.x = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.835) #35
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 328        ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = and i16 %i.aa, -193
  %i.ac = or disjoint i16 %i.ab, 128
  store i16 %i.ac, ptr %i.z, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.836) #35
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %0, i64 328       ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = or i16 %i.ag, 192
  store i16 %i.ah, ptr %i.af, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.f, %bb.d, %._crit_edge
  %i.ai = getelementptr i8, ptr %0, i64 196
  %.val = load i32, ptr %i.ai, align 4, !tbaa !63
  %i.aj = getelementptr i8, ptr %0, i64 200
  %.val25 = load ptr, ptr %i.aj, align 8, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %.val25, i32 noundef %.val, ptr noundef nonnull @.str.833, ptr noundef %1, ptr noundef nonnull %2) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parser_set_token_info(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @parser_get_bool(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = shl nuw nsw i32 %i.a, 8
  %i.f = and i32 %i.e, 256
  %i.g = and i32 %i.d, -257
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_set_encode(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = load i8, ptr %1, align 1, !tbaa !31
  %switch.tableidx = add i8 %i.b, -69             ; 3 uses
  %i.c = icmp ult i8 %switch.tableidx, 40
  br i1 %i.c, label %switch.hole_check, label %.critedge

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 631360192659, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %switch.hole_check
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.parser_set_encode, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull %switch.load) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge

.critedge:                                        ; preds = %switch.hole_check, %bb.a, %switch.lookup
  %i.g = tail call i32 @rb_enc_find_index(ptr noundef nonnull %1) #31 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %.critedge, %rb_enc_asciicompat.exit.thread
  %.val.sink = phi ptr [ %.val, %rb_enc_asciicompat.exit.thread ], [ %1, %.critedge ], [ %1, %switch.lookup ]
  %.str.825.sink = phi ptr [ @.str.825, %rb_enc_asciicompat.exit.thread ], [ @.str.823, %.critedge ], [ @.str.823, %switch.lookup ]
  %i.i = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull %.str.825.sink, ptr noundef %.val.sink) #31
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !28
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !28
  store i64 %i.k, ptr %i.a, align 16, !tbaa !28
  %i.l = tail call i64 @rb_make_backtrace() #31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.m, align 16, !tbaa !28
  %i.n = getelementptr i8, ptr %0, i64 208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !325
  %i.p = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.824, i64 noundef %i.o, i32 noundef %i.q) #31
  %i.s = tail call i64 @rb_ary_unshift(i64 noundef %i.l, i64 noundef %i.r) #31 ; 0 uses
  %i.t = call i64 @rb_make_exception(i32 noundef 3, ptr noundef nonnull %i.a) #31 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !63   ; 3 uses
  store i32 %i.u, ptr %2, align 4, !tbaa !372
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.v, align 4, !tbaa !373
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.u, ptr %i.ae, align 4, !tbaa !372
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = getelementptr i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !192
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ab
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !373
  %i.al = getelementptr i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193
  call void @ruby_show_error_line(ptr poison, i64 noundef %i.t, ptr noundef nonnull %2, i32 noundef %i.u, ptr noundef %i.am)
  %i.an = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !138
  call void @rb_ast_free(ptr noundef %i.ao) #31
  store ptr null, ptr %i.an, align 8, !tbaa !138
  call void @rb_exc_raise(i64 noundef %i.t) #36
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.ap = tail call ptr @rb_enc_from_index(i32 noundef %i.g) #31 ; 10 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %.val.i = load i32, ptr %i.aq, align 4, !tbaa !378
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.c
  %i.ar = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ap) #35
  %.not3.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i, label %bb.d, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.c, %rb_enc_asciicompat.exit
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.val = load ptr, ptr %i.as, align 8, !tbaa !382
  br label %bb.b

bb.d:                                             ; preds = %rb_enc_asciicompat.exit
  %i.at = getelementptr i8, ptr %0, i64 216
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !180
  %i.au = getelementptr i8, ptr %0, i64 376
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369 ; 3 uses
  %.not36 = icmp eq ptr %i.av, null
  br i1 %.not36, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !285 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !283 ; 3 uses
  %xtraiter = and i64 %i.ax, 1
  %i.bb = icmp eq i64 %i.ax, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ax, 9223372036854775806
  br label %bb.e

bb.e:                                             ; preds = %rb_parser_enc_associate.exit.1, %.lr.ph.new
  %.039 = phi i64 [ 0, %.lr.ph.new ], [ %i.bn, %rb_parser_enc_associate.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %rb_parser_enc_associate.exit.1 ]
  %i.bc = getelementptr [8 x i8], ptr %i.ba, i64 %.039
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !286 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  %.val.i37 = load ptr, ptr %i.be, align 8, !tbaa !41
  %i.bf = icmp eq ptr %.val.i37, %i.ap
  br i1 %i.bf, label %rb_parser_enc_associate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val9.i = load i32, ptr %i.bd, align 8, !tbaa !40
  %i.bg = icmp eq i32 %.val9.i, 1
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.bd, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.ap, ptr %i.be, align 8, !tbaa !41
  br label %rb_parser_enc_associate.exit

rb_parser_enc_associate.exit:                     ; preds = %bb.e, %bb.h
  %i.bh = getelementptr [8 x i8], ptr %i.ba, i64 %.039
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !286 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8      ; 2 uses
  %.val.i37.1 = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.bl = icmp eq ptr %.val.i37.1, %i.ap
  br i1 %i.bl, label %rb_parser_enc_associate.exit.1, label %bb.i

bb.i:                                             ; preds = %rb_parser_enc_associate.exit
  %.val9.i.1 = load i32, ptr %i.bj, align 8, !tbaa !40
  %i.bm = icmp eq i32 %.val9.i.1, 1
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bj, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ap, ptr %i.bk, align 8, !tbaa !41
  br label %rb_parser_enc_associate.exit.1

rb_parser_enc_associate.exit.1:                   ; preds = %bb.k, %rb_parser_enc_associate.exit
  %i.bn = add nuw nsw i64 %.039, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !646

.loopexit.loopexit.unr-lcssa:                     ; preds = %rb_parser_enc_associate.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.039.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.bo = getelementptr [8 x i8], ptr %i.ba, i64 %.039.epil.init
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !286 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.val.i37.epil = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.br = icmp eq ptr %.val.i37.epil, %i.ap
  br i1 %i.br, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %.val9.i.epil = load i32, ptr %i.bp, align 8, !tbaa !40
  %i.bs = icmp eq i32 %.val9.i.epil, 1
  br i1 %i.bs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bp, align 8, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.n, %.epil.preheader, %.preheader, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #22

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #2

declare i64 @rb_make_backtrace() local_unnamed_addr #2

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_make_exception(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #20

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #2

declare i32 @rb_memcicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @parser_get_bool(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !31
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -70                    ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %bb.d [
    i32 23, label %bb.b
    i32 7, label %bb.b
    i32 16, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.831) #35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.832) #35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %0, i64 196
  %.val = load i32, ptr %i.i, align 4, !tbaa !63
  %i.j = getelementptr i8, ptr %0, i64 200
  %.val6 = load ptr, ptr %i.j, align 8, !tbaa !97
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %.val6, i32 noundef %.val, ptr noundef nonnull @.str.833, ptr noundef %1, ptr noundef nonnull %2) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 314, 318) i32 @no_digits(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 80         ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !192
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.q, align 4, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.847)
  %i.s = load i32, ptr %i.a, align 4, !tbaa !63
  %i.t = icmp eq i32 %i.b, %i.s
  br i1 %i.t, label %bb.b, label %parser_yyerror0.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !193
  %i.w = getelementptr i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.x, ptr noundef nonnull readonly %1, i32 noundef %i.b, ptr noundef %i.v)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !192  ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !324
  %.not = icmp ult ptr %i.y, %i.aa
  br i1 %.not, label %bb.c, label %nextc0.exit

bb.c:                                             ; preds = %parser_yyerror0.exit
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !31
  %i.ac = icmp eq i8 %i.ab, 95
  br i1 %i.ac, label %bb.d, label %nextc0.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 360
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 8
  %.not13.i = icmp eq i32 %i.af, 0
  br i1 %.not13.i, label %bb.e, label %.critedge.i, !prof !374

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !375
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %.critedge.i, label %bb.f, !prof !207

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %i.aj = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.aj, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !192
  br label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge.i, %bb.e
  %i.ak = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 1      ; 3 uses
  store ptr %i.al, ptr %i.k, align 8, !tbaa !192
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !31
  %i.an = icmp eq i8 %i.am, 13
  br i1 %i.an, label %bb.g, label %nextc0.exit, !prof !207

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.al, %i.ao
  br i1 %.not.i.i, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !31
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %bb.i, label %nextc0.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ak, i64 2
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !192
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %.critedge.i, %bb.c, %parser_yyerror0.exit
  %i.as = call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef 0, i32 noundef 10, i32 noundef 0)
  ret i32 %i.as
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 4) i32 @number_literal_suffix(ptr noundef %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %i.n, %.backedge.backedge ] ; 2 uses
  %.028 = phi i32 [ %1, %bb.a ], [ %.028.be, %.backedge.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 7 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.f, %i.g
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !374

bb.b:                                             ; preds = %.backedge
  %i.h = load i32, ptr %i.d, align 8
  %i.i = and i32 %i.h, 8
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %.critedge.i, label %bb.d, !prof !207

.critedge.i:                                      ; preds = %bb.c, %bb.b, %.backedge
  %i.l = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 7 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !192
  %i.o = load i8, ptr %i.m, align 1, !tbaa !31    ; 5 uses
  %i.p = icmp eq i8 %i.o, 13
  br i1 %i.p, label %bb.e, label %bb.g, !prof !207

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.n, %i.q
  br i1 %.not.i.i, label %bb.f, label %.thread44

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.n, align 1, !tbaa !31
  %i.s = icmp eq i8 %i.r, 10                      ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 2
  %spec.select = select i1 %i.s, ptr %i.t, ptr %i.n
  %spec.select80 = select i1 %i.s, i32 10, i32 13
  br label %.thread44

bb.g:                                             ; preds = %bb.d
  %i.u = and i32 %.028, 2
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp eq i8 %i.o, 105
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = or i32 %.0, 2
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.j
  %.028.be = phi i32 [ 0, %bb.h ], [ %i.ab, %bb.j ]
  %.0.be = phi i32 [ %i.x, %bb.h ], [ %i.aa, %bb.j ]
  br label %.backedge, !llvm.loop !647

bb.i:                                             ; preds = %bb.g
  %i.y = trunc i32 %.028 to i1
  %i.z = icmp eq i8 %i.o, 114
  %or.cond3 = and i1 %i.z, %i.y
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = or i32 %.0, 1
  %i.ab = and i32 %.028, -2
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.i
  %i.ac = zext nneg i8 %i.o to i32
  %i.ad = icmp slt i8 %i.o, 0
  br i1 %i.ad, label %bb.l, label %.thread44

.thread44:                                        ; preds = %bb.f, %bb.e, %bb.k
  %i.ae = phi ptr [ %i.n, %bb.k ], [ %i.n, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %.011.i.ph394347 = phi i32 [ %i.ac, %bb.k ], [ 13, %bb.e ], [ %spec.select80, %bb.f ] ; 2 uses
  %i.af = and i32 %.011.i.ph394347, 95
  %i.ag = add nsw i32 %i.af, -65
  %narrow.i = icmp ult i32 %i.ag, 26
  %i.ah = icmp eq i32 %.011.i.ph394347, 95
  %or.cond5 = or i1 %i.ah, %narrow.i
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread44, %bb.k
  store ptr %i.b, ptr %i.a, align 8, !tbaa !192
  %i.ai = getelementptr i8, ptr %0, i64 96
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !64
  br label %nextc0.exit

bb.m:                                             ; preds = %.thread44
  %i.aj = load i32, ptr %i.d, align 8
  %i.ak = and i32 %i.aj, -9
  store i32 %i.ak, ptr %i.d, align 8
  %i.al = getelementptr i8, ptr %i.ae, i64 -1     ; 3 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !192
  %i.am = getelementptr i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = icmp ugt ptr %i.al, %i.an
  br i1 %i.ao, label %bb.n, label %nextc0.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !31
  %i.aq = icmp eq i8 %i.ap, 10
  br i1 %i.aq, label %bb.o, label %nextc0.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %i.ae, i64 -2     ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31
  %i.at = icmp eq i8 %i.as, 13
  br i1 %i.at, label %bb.p, label %nextc0.exit

bb.p:                                             ; preds = %bb.o
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !192
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.029 = phi i32 [ 0, %bb.l ], [ %.0, %bb.p ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %.critedge.i ]
  ret i32 %.029
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 314, 318) i32 @set_number_literal(ptr nofree noundef captures(none) %0, i32 noundef range(i32 314, 317) %1, i32 noundef range(i32 0, 4) %2, i32 noundef range(i32 0, 17) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 %1, i32 316
  %.not29 = icmp samesign ult i32 %2, 2
  %.1 = select i1 %.not29, i32 %spec.select, i32 317 ; 2 uses
  switch i32 %.1, label %default.unreachable46 [
    i32 314, label %bb.b
    i32 315, label %bb.c
    i32 316, label %bb.d
    i32 317, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 196
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !192
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.i
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = tail call noalias nonnull ptr @ruby_strdup(ptr noundef %i.r) #31
  %i.t = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.t, align 8, !tbaa !138
  %i.u = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 59, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.u, i32 noundef range(i32 0, 115) 59) #31
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store i32 %i.c, ptr %i.v, align 8, !tbaa !26
  %.sroa.543.0..sroa_idx = getelementptr i8, ptr %i.u, i64 12
  store i32 %i.k, ptr %.sroa.543.0..sroa_idx, align 4, !tbaa !26
  %.sroa.644.0..sroa_idx = getelementptr i8, ptr %i.u, i64 16
  store i32 %i.c, ptr %.sroa.644.0..sroa_idx, align 8, !tbaa !26
  %.sroa.745.0..sroa_idx = getelementptr i8, ptr %i.u, i64 20
  store i32 %i.p, ptr %.sroa.745.0..sroa_idx, align 4, !tbaa !26
  %i.w = sext i32 %i.c to i64
  %i.x = load i64, ptr %i.u, align 8, !tbaa !83
  %i.y = and i64 %i.x, 32767
  %i.z = shl nsw i64 %i.w, 15
  %i.aa = or disjoint i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !83
  %i.ab = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !211 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !211
  %i.ae = getelementptr i8, ptr %i.u, i64 24
  store i32 %i.ac, ptr %i.ae, align 8, !tbaa !212
  %i.af = getelementptr i8, ptr %i.u, i64 32
  store ptr %i.s, ptr %i.af, align 8, !tbaa !394
  %i.ag = getelementptr i8, ptr %i.u, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !395
  %i.ah = getelementptr i8, ptr %i.u, i64 44
  store i32 %3, ptr %i.ah, align 4, !tbaa !396
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %0, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63 ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !192
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ap
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %0, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !362
  %i.az = tail call noalias nonnull ptr @ruby_strdup(ptr noundef %i.ay) #31
  %i.ba = getelementptr i8, ptr %0, i64 288
  %.val.i.i31 = load ptr, ptr %i.ba, align 8, !tbaa !138
  %i.bb = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i31, i32 noundef range(i32 0, 115) 60, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 11 uses
  tail call void @rb_node_init(ptr noundef %i.bb, i32 noundef range(i32 0, 115) 60) #31
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  store i32 %i.aj, ptr %i.bc, align 8, !tbaa !26
  %.sroa.539.0..sroa_idx = getelementptr i8, ptr %i.bb, i64 12
  store i32 %i.ar, ptr %.sroa.539.0..sroa_idx, align 4, !tbaa !26
  %.sroa.640.0..sroa_idx = getelementptr i8, ptr %i.bb, i64 16
  store i32 %i.aj, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !26
  %.sroa.741.0..sroa_idx = getelementptr i8, ptr %i.bb, i64 20
  store i32 %i.aw, ptr %.sroa.741.0..sroa_idx, align 4, !tbaa !26
  %i.bd = sext i32 %i.aj to i64
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !83
  %i.bf = and i64 %i.be, 32767
  %i.bg = shl nsw i64 %i.bd, 15
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !83
  %i.bi = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !211 ; 2 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !211
  %i.bl = getelementptr i8, ptr %i.bb, i64 24
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !212
  %i.bm = getelementptr i8, ptr %i.bb, i64 32
  store ptr %i.az, ptr %i.bm, align 8, !tbaa !398
  %i.bn = getelementptr i8, ptr %i.bb, i64 40
  store i32 0, ptr %i.bn, align 8, !tbaa !399
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.bo = getelementptr i8, ptr %0, i64 196
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63 ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !64
  %i.bs = getelementptr i8, ptr %0, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr i8, ptr %0, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !192
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bv
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = getelementptr i8, ptr %0, i64 160
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !362
  %i.cf = tail call noalias nonnull ptr @ruby_strdup(ptr noundef %i.ce) #31
  %i.cg = getelementptr i8, ptr %0, i64 288
  %.val.i.i32 = load ptr, ptr %i.cg, align 8, !tbaa !138
end_hunk_9
begin_hunk_10_@set_number_literal:bb.a
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !83
  %i.co = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !211 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !211
  %i.cr = getelementptr i8, ptr %i.ch, i64 24
  store i32 %i.cp, ptr %i.cr, align 8, !tbaa !212
  %i.cs = getelementptr i8, ptr %i.ch, i64 32
  store ptr %i.cf, ptr %i.cs, align 8, !tbaa !401
  %i.ct = getelementptr i8, ptr %i.ch, i64 40
  store i32 0, ptr %i.ct, align 8, !tbaa !402
  %i.cu = getelementptr i8, ptr %i.ch, i64 44
  store i32 %3, ptr %i.cu, align 4, !tbaa !403
  %i.cv = getelementptr i8, ptr %i.ch, i64 48
  store i32 %4, ptr %i.cv, align 8, !tbaa !404
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cw = icmp eq i32 %1, 315
  %spec.store.select = zext i1 %i.cw to i32
  %spec.select30 = select i1 %.not, i32 %spec.store.select, i32 2
  %i.cx = getelementptr i8, ptr %0, i64 196
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !63 ; 3 uses
  %i.cz = getelementptr i8, ptr %0, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr i8, ptr %0, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !65
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr i8, ptr %0, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !192
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.de
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr i8, ptr %0, i64 160
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !362
  %i.do = tail call noalias nonnull ptr @ruby_strdup(ptr noundef %i.dn) #31
  %i.dp = getelementptr i8, ptr %0, i64 288
  %.val.i.i33 = load ptr, ptr %i.dp, align 8, !tbaa !138
  %i.dq = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i33, i32 noundef range(i32 0, 115) 62, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 14 uses
  tail call void @rb_node_init(ptr noundef %i.dq, i32 noundef range(i32 0, 115) 62) #31
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store i32 %i.cy, ptr %i.dr, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 12
  store i32 %i.dg, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 16
  store i32 %i.cy, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.dq, i64 20
  store i32 %i.dl, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !26
  %i.ds = sext i32 %i.cy to i64
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !83
  %i.du = and i64 %i.dt, 32767
  %i.dv = shl nsw i64 %i.ds, 15
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dq, align 8, !tbaa !83
  %i.dx = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !211 ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !211
  %i.ea = getelementptr i8, ptr %i.dq, i64 24
  store i32 %i.dy, ptr %i.ea, align 8, !tbaa !212
  %i.eb = getelementptr i8, ptr %i.dq, i64 32
  store ptr %i.do, ptr %i.eb, align 8, !tbaa !406
  %i.ec = getelementptr i8, ptr %i.dq, i64 40
  store i32 0, ptr %i.ec, align 8, !tbaa !407
  %i.ed = getelementptr i8, ptr %i.dq, i64 44
  store i32 %3, ptr %i.ed, align 4, !tbaa !408
  %i.ee = getelementptr i8, ptr %i.dq, i64 48
  store i32 %4, ptr %i.ee, align 8, !tbaa !409
  %i.ef = getelementptr i8, ptr %i.dq, i64 52
  store i32 %spec.select30, ptr %i.ef, align 4, !tbaa !410
  br label %bb.f

default.unreachable46:                            ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.dq, %bb.e ], [ %i.ch, %bb.d ], [ %i.bb, %bb.c ], [ %i.u, %bb.b ]
  %i.eg = load ptr, ptr %0, align 8, !tbaa !76
  store ptr %.sink, ptr %i.eg, align 8, !tbaa !31
  %i.eh = getelementptr i8, ptr %0, i64 360
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = and i32 %i.ei, 32
  %.not.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ek = getelementptr i8, ptr %0, i64 104
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !80
  %i.em = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.el, i32 noundef 2, i32 noundef 9005) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.f, %bb.g
  %i.en = getelementptr i8, ptr %0, i64 104
  store i32 2, ptr %i.en, align 8, !tbaa !80
  ret i32 %.1
}

declare double @ruby_strtod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_errno_ptr() local_unnamed_addr #2

declare noalias nonnull ptr @ruby_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @tokadd_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @tokadd_mbchar(ptr noundef %0, i32 noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %pushback.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80         ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 360        ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 64
  %i.g = getelementptr i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.h, %i.i
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 8
  %i.k = and i32 %i.j, 8
  %.not13.i = icmp eq i32 %i.k, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !374

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !375
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 1 to ptr)
  br i1 %i.m, label %.critedge.i, label %bb.e, !prof !207

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.o = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !192
  %i.q = load i8, ptr %i.o, align 1, !tbaa !31    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i8 %i.q, 13
  br i1 %i.s, label %bb.f, label %nextc0.exit, !prof !207

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.p, %i.t
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.p, align 1, !tbaa !31
  %i.v = icmp eq i8 %i.u, 10
  br i1 %i.v, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.o, i64 2
  store ptr %i.w, ptr %i.c, align 8, !tbaa !192
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.r, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 2 uses
  %i.x = load i32, ptr %i.e, align 8
  %i.y = and i32 %i.x, 8
  %.not.i7 = icmp eq i32 %i.y, 0
  br i1 %.not.i7, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !180 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr i8, ptr %i.ab, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !391
  %i.ag = tail call i32 %i.af(i32 noundef range(i32 -1, 256) %i.ad, i32 noundef 13, ptr noundef %i.ab) #31, !inline_history !14
  %.not.i.i8 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i8, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !31  ; 2 uses
  %i.ai = icmp ne i8 %i.ah, 95
  %i.aj = icmp sgt i8 %i.ah, -1
  %spec.select = and i1 %i.ai, %i.aj
  br i1 %spec.select, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.ak = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %pushback.exit, label %bb.b, !llvm.loop !648

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.am = icmp eq i32 %.011.i, -1
  br i1 %i.am, label %pushback.exit, label %bb.j

bb.j:                                             ; preds = %parser_is_identchar.exit.thread
  %i.an = load i32, ptr %i.e, align 8
  %i.ao = and i32 %i.an, -9
  store i32 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !192 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1     ; 3 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !192
  %i.ar = getelementptr i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = icmp ugt ptr %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %pushback.exit

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !31
  %i.av = icmp eq i8 %i.au, 10
  br i1 %i.av, label %bb.l, label %pushback.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2     ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = icmp eq i8 %i.ax, 13
  br i1 %i.ay, label %bb.m, label %pushback.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !192
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.backedge, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %parser_is_identchar.exit.thread
  %.06 = phi i32 [ 0, %bb.m ], [ 0, %parser_is_identchar.exit.thread ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ -1, %bb.a ], [ -1, %.critedge.backedge ]
  ret i32 %.06
}

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #14

declare ptr @rb_ast_resize_latest_local_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_list_new2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 43) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !72
  %i.d = load i32, ptr %4, align 4, !tbaa !68
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !83
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !83
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !211
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !212
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !189
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store i64 %2, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !190
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 57) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !72
  %i.d = load i32, ptr %3, align 4, !tbaa !68
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !83
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !83
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !211
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !212
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !291
  %i.o = getelementptr i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !292
  %i.p = getelementptr i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !293
  ret ptr %i.b
}

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #2

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @reg_named_capture_assign_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !296
  %i.b = getelementptr i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !297
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = getelementptr i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.j = getelementptr i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !299
  %i.l = tail call i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %i.a, ptr noundef %0, i64 noundef %i.f, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_nested_p(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 2 uses
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %parser_show_error_line.exit

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 3 uses
  %i.j = select i1 %i.g, ptr @.str.874, ptr @.str.875
  %i.k = getelementptr i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !83
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.873, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i)
  %i.p = getelementptr i8, ptr %i.i, i64 8        ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63   ; 2 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %parser_show_error_line.exit, label %bb.d

bb.d:                                             ; preds = %nd_line.exit
  %i.s = load i32, ptr %i.p, align 4, !tbaa !68
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.e, label %parser_show_error_line.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !193
  %i.w = getelementptr i8, ptr %0, i64 368
  %i.x = load i64, ptr %i.w, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.x, ptr noundef nonnull readonly %i.p, i32 noundef %i.r, ptr noundef %i.v)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.e, %bb.d, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = load i64, ptr %i.d, align 8, !tbaa !83
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.876, ptr noundef %i.f, i32 noundef %i.i)
end_hunk_10
begin_hunk_11_@local_id_ref:bb.a
  br i1 %.not60, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.063 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.02962 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03061 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.03061, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.02962, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156  ; 2 uses
  %.not36 = icmp eq ptr %.063, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.063, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !6

.critedge:                                        ; preds = %.lr.ph
  %.not66 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not66, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.p) #31
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03058 = phi ptr [ %.03061, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.02956 = phi ptr [ %.02962, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.054 = phi ptr [ %.063, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.r = icmp ult ptr %.02956, inttoptr (i64 2 to ptr)
  br i1 %i.r, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge37
  %i.s = getelementptr i8, ptr %.02956, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !198  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = load ptr, ptr %.02956, align 8, !tbaa !200
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.critedge37
  %i.z = icmp ult ptr %.03058, inttoptr (i64 2 to ptr)
  br i1 %i.z, label %vtable_included.exit, label %.preheader.i38

.preheader.i38:                                   ; preds = %vtable_included.exit.thread
  %i.aa = getelementptr i8, ptr %.03058, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !198 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i40, label %vtable_included.exit

.lr.ph.i40:                                       ; preds = %.preheader.i38
  %i.ad = load ptr, ptr %.03058, align 8, !tbaa !200
  %wide.trip.count.i41 = zext nneg i32 %i.ab to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i43, %bb.i ] ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv.i42
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %vtable_included.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i41
  br i1 %exitcond.not.i44, label %vtable_included.exit, label %bb.h, !llvm.loop !2

vtable_included.exit45:                           ; preds = %bb.h
  %i.ah = icmp ne ptr %.054, null
  %i.ai = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.ai, %i.ah
  br i1 %or.cond3, label %bb.j, label %vtable_included.exit

bb.j:                                             ; preds = %vtable_included.exit45
  %i.aj = load ptr, ptr %.054, align 8, !tbaa !200
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i42
  store ptr %i.ak, ptr %2, align 8, !tbaa !43
  br label %vtable_included.exit

vtable_included.exit:                             ; preds = %bb.f, %bb.i, %vtable_included.exit45, %bb.j, %vtable_included.exit.thread, %.preheader.i38, %bb.e
  %.031 = phi i32 [ %i.q, %bb.e ], [ 0, %bb.i ], [ 1, %vtable_included.exit45 ], [ 1, %bb.j ], [ 0, %vtable_included.exit.thread ], [ 0, %.preheader.i38 ], [ 1, %bb.f ]
  ret i32 %.031
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 7 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 312        ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.870)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr i8, ptr %i.d, i64 8        ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !198  ; 2 uses
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr i8, ptr %0, i64 360
  %i.o = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vtable_add_gen.exit
  %i.p = phi i32 [ %i.l, %.lr.ph ], [ %i.ae, %vtable_add_gen.exit ] ; 2 uses
  %i.q = shl i32 %i.p, 4
  %i.r = add i32 %i.q, 3777
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = load i32, ptr %i.n, align 8
  %i.u = and i32 %i.t, 32
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @rb_id2name(i64 noundef %i.s) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 10284, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.d, ptr noundef %i.v)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !198
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ %.pre, %bb.j ], [ %i.p, %bb.i ] ; 3 uses
  %i.x = load i32, ptr %i.o, align 4, !tbaa !199
  %i.y = icmp eq i32 %i.w, %i.x
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !200 ; 2 uses
  br i1 %i.y, label %bb.l, label %vtable_add_gen.exit

bb.l:                                             ; preds = %bb.k
  %i.z = shl i32 %i.w, 1                          ; 2 uses
  store i32 %i.z, ptr %i.o, align 4, !tbaa !199
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.aa, i64 noundef 8) #38 ; 2 uses
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !200
  %.pre21.i = load i32, ptr %i.k, align 8, !tbaa !198
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.l, %bb.k
  %i.ac = phi i32 [ %.pre21.i, %bb.l ], [ %i.w, %bb.k ] ; 2 uses
  %i.ad = phi ptr [ %i.ab, %bb.l ], [ %.pre.i, %bb.k ]
  %i.ae = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !198
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !28
  %i.ah = icmp sgt i32 %1, %i.ae
  br i1 %i.ah, label %bb.i, label %.loopexit, !llvm.loop !649

.loopexit:                                        ; preds = %vtable_add_gen.exit, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ true, %vtable_add_gen.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_used_p(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %parser_show_error_line.exit, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = load i64, ptr %i.d, align 8, !tbaa !83
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.877, ptr noundef %i.f, i32 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 196
  %i.l = load i32, ptr %i.k, align 4, !tbaa !63   ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %parser_show_error_line.exit, label %bb.b

bb.b:                                             ; preds = %nd_line.exit
  %i.m = load i32, ptr %i.j, align 8, !tbaa !68
  %i.n = icmp eq i32 %i.m, %i.l
  br i1 %i.n, label %bb.c, label %parser_show_error_line.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193
  %i.q = getelementptr i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.r, ptr noundef nonnull readonly %i.j, i32 noundef %i.l, ptr noundef %i.p)
  br label %parser_show_error_line.exit

parser_show_error_line.exit:                      ; preds = %bb.c, %bb.b, %nd_line.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %nd_line.exit ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtable_add_gen(ptr nofree noundef captures(none) %0, i32 noundef range(i32 10284, 14995) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_id2name(i64 noundef %4) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %3)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !198  ; 3 uses
  %i.h = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !199
  %i.j = icmp eq i32 %i.g, %i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !200   ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.k, ptr %i.h, align 4, !tbaa !199
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 8) #38 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !200
  %.pre21 = load i32, ptr %i.f, align 8, !tbaa !198
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pre21, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %i.o = phi ptr [ %i.m, %bb.f ], [ %.pre, %bb.e ]
  %i.p = add i32 %i.n, 1
  store i32 %i.p, ptr %i.f, align 8, !tbaa !198
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr [8 x i8], ptr %i.o, i64 %i.q
  store i64 %4, ptr %i.r, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_vcall_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 39, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 39) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !72
  %i.d = load i32, ptr %2, align 4, !tbaa !68
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !83
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !83
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !211
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !212
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !651
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @str_to_sym_node(ptr nofree noundef captures(none) %0, ptr %.32.val, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef %.32.val)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.881)
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !63   ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !68
  %i.f = icmp eq i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %parser_yyerror.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193
  %i.i = getelementptr i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.j, ptr noundef nonnull readonly %1, i32 noundef %i.d, ptr noundef %i.h)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180
  %i.m = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %i.l) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.n = tail call i64 @rb_str_new_parser_string(ptr noundef %.32.val) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %parser_yyerror.exit
  %.0 = phi i64 [ %i.m, %parser_yyerror.exit ], [ %i.n, %bb.d ]
  %i.o = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.p = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.p, i32 noundef range(i32 0, 115) 101) #31
  %i.q = getelementptr i8, ptr %i.p, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !72
  %i.r = load i32, ptr %1, align 4, !tbaa !68
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr %i.p, align 8, !tbaa !83
  %i.u = and i64 %i.t, 32767
  %i.v = shl nsw i64 %i.s, 15
  %i.w = or disjoint i64 %i.u, %i.v
  store i64 %i.w, ptr %i.p, align 8, !tbaa !83
  %i.x = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !211  ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !211
  %i.aa = getelementptr i8, ptr %i.p, i64 24
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !212
  %i.ab = tail call ptr @rb_str_to_parser_string(ptr poison, i64 noundef %.0)
  %i.ac = getelementptr i8, ptr %i.p, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !279
  ret ptr %i.p
}

declare i64 @rb_str_new_parser_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reg_compile(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_errinfo() #31
  %i.b = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %parser_reg_compile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.882, i32 noundef range(i32 1, 256) %i.b, ptr noundef %.val.val.i.i)
  br label %parser_reg_compile.exit

parser_reg_compile.exit:                          ; preds = %bb.a, %bb.b
  %i.e = tail call i64 @rb_str_new_parser_string(ptr noundef %1) #31
  %i.f = and i32 %2, 255
  %i.g = getelementptr i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr i8, ptr %0, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63
  %i.k = tail call i64 @rb_reg_compile(i64 noundef %i.e, i32 noundef %i.f, ptr noundef %i.h, i32 noundef %i.j) #31
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_reg_compile.exit
  %i.m = tail call i64 @rb_errinfo() #31
  %i.n = tail call i64 @rb_attr_get(i64 noundef %i.m, i64 noundef 3489) #31
  tail call void @rb_set_errinfo(i64 noundef %i.a) #31
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.556, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %parser_reg_compile.exit, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dregex_fragment_setenc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %reg_fragment_setenc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %reg_fragment_setenc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.e, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.882, i32 noundef range(i32 1, 256) %i.c, ptr noundef %.val.val.i)
  br label %reg_fragment_setenc.exit

reg_fragment_setenc.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %.0.in22 = getelementptr i8, ptr %1, i64 48
  %.023 = load ptr, ptr %.0.in22, align 8, !tbaa !286 ; 2 uses
  %.not1624 = icmp eq ptr %.023, null
  br i1 %.not1624, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %reg_fragment_setenc.exit21, %reg_fragment_setenc.exit
  ret void

.lr.ph:                                           ; preds = %reg_fragment_setenc.exit, %reg_fragment_setenc.exit21
  %.025 = phi ptr [ %.0, %reg_fragment_setenc.exit21 ], [ %.023, %reg_fragment_setenc.exit ] ; 2 uses
  %i.f = getelementptr i8, ptr %.025, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !189  ; 3 uses
  %.val17 = load i64, ptr %i.g, align 8, !tbaa !83
  %i.h = trunc i64 %.val17 to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 127
  switch i32 %i.j, label %reg_fragment_setenc.exit21 [
    i32 63, label %bb.d
    i32 64, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !331  ; 2 uses
  %i.m = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef %i.l, i32 noundef %2) ; 2 uses
  %.not.i18 = icmp eq i32 %i.m, 0
  br i1 %.not.i18, label %reg_fragment_setenc.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val.i19 = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr i8, ptr %.val.i19, i64 8
  %.val.val.i20 = load ptr, ptr %i.o, align 8, !tbaa !382
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.882, i32 noundef range(i32 1, 256) %i.m, ptr noundef %.val.val.i20)
  br label %reg_fragment_setenc.exit21

bb.f:                                             ; preds = %.lr.ph
  tail call fastcc void @dregex_fragment_setenc(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %2)
  br label %reg_fragment_setenc.exit21

reg_fragment_setenc.exit21:                       ; preds = %.lr.ph, %bb.e, %bb.d, %bb.f
  %.0.in = getelementptr i8, ptr %.025, i64 48
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !286 ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !652
}

declare i64 @rb_errinfo() local_unnamed_addr #2

declare ptr @rb_st_init_table(ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 2) i32 @literal_cmp(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %node_integer_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 22 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 22 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !83
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 127                        ; 4 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !83
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.j, 127
  %.not = icmp eq i32 %i.g, %i.k
  br i1 %.not, label %bb.c, label %node_integer_cmp.exit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.g, label %bb.ag [
    i32 59, label %bb.d
    i32 60, label %bb.g
    i32 61, label %bb.i
    i32 62, label %bb.m
    i32 63, label %bb.r
    i32 101, label %bb.u
    i32 68, label %bb.x
    i32 109, label %bb.ab
    i32 110, label %bb.ac
    i32 111, label %bb.af
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !395
  %i.n = getelementptr i8, ptr %i.c, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !395
  %.not.i = icmp eq i32 %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %node_integer_cmp.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.b, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !396
  %i.r = getelementptr i8, ptr %i.c, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !396
  %.not6.i = icmp eq i32 %i.q, %i.s
  br i1 %.not6.i, label %bb.f, label %node_integer_cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !394
  %i.v = getelementptr i8, ptr %i.c, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !394
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.w) #35
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  br label %node_integer_cmp.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.b, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !399
  %i.ac = getelementptr i8, ptr %i.c, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !399
  %.not.i35 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not.i35, label %bb.h, label %node_integer_cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.b, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !398
  %i.ag = getelementptr i8, ptr %i.c, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !398
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.ah) #35
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  br label %node_integer_cmp.exit

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.b, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !402
  %i.an = getelementptr i8, ptr %i.c, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !402
  %.not.i36 = icmp eq i32 %i.am, %i.ao
  br i1 %.not.i36, label %bb.j, label %node_integer_cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.b, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !403
  %i.ar = getelementptr i8, ptr %i.c, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !403
  %.not8.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not8.i, label %bb.k, label %node_integer_cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.b, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !404
  %i.av = getelementptr i8, ptr %i.c, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !404
  %.not9.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not9.i, label %bb.l, label %node_integer_cmp.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.b, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !401
  %i.az = getelementptr i8, ptr %i.c, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !401
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.ba) #35
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  br label %node_integer_cmp.exit

bb.m:                                             ; preds = %bb.c
  %i.be = getelementptr i8, ptr %i.b, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !407
  %i.bg = getelementptr i8, ptr %i.c, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !407
  %.not.i37 = icmp eq i32 %i.bf, %i.bh
  br i1 %.not.i37, label %bb.n, label %node_integer_cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %i.b, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !408
  %i.bk = getelementptr i8, ptr %i.c, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !408
  %.not10.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not10.i, label %bb.o, label %node_integer_cmp.exit

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %i.b, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !409
  %i.bo = getelementptr i8, ptr %i.c, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !409
  %.not11.i = icmp eq i32 %i.bn, %i.bp
  br i1 %.not11.i, label %bb.p, label %node_integer_cmp.exit

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %i.b, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !410
  %i.bs = getelementptr i8, ptr %i.c, i64 52
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !410
  %.not12.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not12.i, label %bb.q, label %node_integer_cmp.exit

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %i.b, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !406
  %i.bw = getelementptr i8, ptr %i.c, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !406
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) %i.bx) #35
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  br label %node_integer_cmp.exit

bb.r:                                             ; preds = %bb.c
  %i.cb = getelementptr i8, ptr %i.b, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !331 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.c, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !331 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cc, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !38
  %i.ch = getelementptr i8, ptr %i.cc, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ce, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.cl = getelementptr i8, ptr %i.ce, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !39
  %.not.i38 = icmp eq i64 %i.ci, %i.cm
  br i1 %.not.i38, label %bb.s, label %node_integer_cmp.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %i.ce, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.cp = getelementptr i8, ptr %i.cc, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %.not12.i39 = icmp eq ptr %i.cq, %i.co
  br i1 %.not12.i39, label %bb.t, label %node_integer_cmp.exit

bb.t:                                             ; preds = %bb.s
  %bcmp.i = tail call i32 @bcmp(ptr %i.cg, ptr %i.ck, i64 %i.ci)
  %i.cr = icmp ne i32 %bcmp.i, 0
  %i.cs = zext i1 %i.cr to i32
  br label %node_integer_cmp.exit

bb.u:                                             ; preds = %bb.c
  %i.ct = getelementptr i8, ptr %i.b, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !279 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.c, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !279 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !38
  %i.cz = getelementptr i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !39 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !38
  %i.dd = getelementptr i8, ptr %i.cw, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !39
  %.not.i40 = icmp eq i64 %i.da, %i.de
  br i1 %.not.i40, label %bb.v, label %node_integer_cmp.exit

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.cw, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41
  %i.dh = getelementptr i8, ptr %i.cu, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !41
  %.not12.i41 = icmp eq ptr %i.di, %i.dg
  br i1 %.not12.i41, label %bb.w, label %node_integer_cmp.exit

bb.w:                                             ; preds = %bb.v
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.cy, ptr %i.dc, i64 %i.da)
  %i.dj = icmp ne i32 %bcmp.i42, 0
  %i.dk = zext i1 %i.dj to i32
  br label %node_integer_cmp.exit

bb.x:                                             ; preds = %bb.c
  %i.dl = getelementptr i8, ptr %i.b, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !345
  %i.dn = getelementptr i8, ptr %i.c, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !345
  %.not.i44 = icmp eq i32 %i.dm, %i.do
  br i1 %.not.i44, label %bb.y, label %node_integer_cmp.exit

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr i8, ptr %i.b, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !344 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.c, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !344 ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dq, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38
  %i.dv = getelementptr i8, ptr %i.dq, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !39 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !38
  %i.dz = getelementptr i8, ptr %i.ds, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !39
  %.not.i.i = icmp eq i64 %i.dw, %i.ea
  br i1 %.not.i.i, label %bb.z, label %node_integer_cmp.exit

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr i8, ptr %i.ds, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !41
  %i.ed = getelementptr i8, ptr %i.dq, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !41
  %.not12.i.i = icmp eq ptr %i.ee, %i.ec
  br i1 %.not12.i.i, label %bb.aa, label %node_integer_cmp.exit

bb.aa:                                            ; preds = %bb.z
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.du, ptr %i.dy, i64 %i.dw)
  %i.ef = icmp ne i32 %bcmp.i.i, 0
  %i.eg = zext i1 %i.ef to i32
  br label %node_integer_cmp.exit

bb.ab:                                            ; preds = %bb.c
  %i.eh = getelementptr i8, ptr %i.b, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !221
  %i.ej = getelementptr i8, ptr %i.c, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !221
  %i.el = icmp ne i32 %i.ei, %i.ek
  %i.em = zext i1 %i.el to i32
  br label %node_integer_cmp.exit

bb.ac:                                            ; preds = %bb.c
  %i.en = getelementptr i8, ptr %i.b, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !337 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.c, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !337 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.et = getelementptr i8, ptr %i.eo, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !39 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eq, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !38
  %i.ex = getelementptr i8, ptr %i.eq, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !39
  %.not.i45 = icmp eq i64 %i.eu, %i.ey
  br i1 %.not.i45, label %bb.ad, label %node_integer_cmp.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr i8, ptr %i.eq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !41
  %i.fb = getelementptr i8, ptr %i.eo, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !41
  %.not12.i46 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not12.i46, label %bb.ae, label %node_integer_cmp.exit

bb.ae:                                            ; preds = %bb.ad
  %bcmp.i47 = tail call i32 @bcmp(ptr %i.es, ptr %i.ew, i64 %i.eu)
  %i.fd = icmp ne i32 %bcmp.i47, 0
  %i.fe = zext i1 %i.fd to i32
  br label %node_integer_cmp.exit

bb.af:                                            ; preds = %bb.c
  %i.ff = getelementptr i8, ptr %i.b, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !339
  %i.fh = getelementptr i8, ptr %i.c, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !339
  %i.fj = icmp ne ptr %i.fg, %i.fi
  %i.fk = zext i1 %i.fj to i32
  br label %node_integer_cmp.exit

bb.ag:                                            ; preds = %bb.c
  %i.fl = tail call ptr @ruby_node_name(i32 noundef %i.g) #31
  %i.fm = tail call ptr @ruby_node_name(i32 noundef %i.g) #31
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.884, ptr noundef %i.fl, ptr noundef %i.fm) #32
  unreachable

node_integer_cmp.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.ab, %bb.af, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.fk, %bb.af ], [ -1, %bb.b ], [ %i.z, %bb.f ], [ %i.ak, %bb.h ], [ %i.bd, %bb.l ], [ %i.ca, %bb.q ], [ %i.cs, %bb.t ], [ %i.dk, %bb.w ], [ %i.em, %bb.ab ], [ %i.eg, %bb.aa ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.x ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ %i.fe, %bb.ae ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @literal_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 127                        ; 2 uses
  switch i32 %i.e, label %bb.l [
    i32 59, label %bb.b
    i32 60, label %bb.c
    i32 61, label %bb.d
    i32 62, label %bb.e
    i32 63, label %bb.f
    i32 101, label %bb.g
    i32 68, label %bb.h
    i32 109, label %bb.i
    i32 110, label %bb.j
    i32 111, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !394  ; 6 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #35 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter187 = and i64 %i.h, 3                  ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter192 = and i64 %i.h, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i ] ; 5 uses
  %.078.i.i.i = phi i64 [ 5381, %.lr.ph.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i ]
  %niter193 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter193.next.3, %.lr.ph.i.i.i ]
  %i.j = mul i64 %.078.i.i.i, 33
  %i.k = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31
  %i.m = zext i8 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, 33
  %i.p = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s
  %i.u = mul i64 %i.t, 33
  %i.v = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31
  %i.y = zext i8 %i.x to i64
  %i.z = add i64 %i.u, %i.y
  %i.aa = mul i64 %i.z, 33
  %i.ab = getelementptr i8, ptr %i.g, i64 %.09.i.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  %i.ae = zext i8 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae                    ; 3 uses
  %i.ag = add nuw i64 %.09.i.i.i, 4               ; 2 uses
  %niter193.next.3 = add nuw i64 %niter193, 4     ; 2 uses
  %niter193.ncmp.3 = icmp eq i64 %niter193.next.3, %unroll_iter192
  br i1 %niter193.ncmp.3, label %rb_char_p_hash.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !653

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !398 ; 6 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ai) #35 ; 4 uses
  %.not.i.i.i21 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i21, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.preheader

.lr.ph.i.i.i22.preheader:                         ; preds = %bb.c
  %xtraiter180 = and i64 %i.aj, 3                 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 4
  br i1 %i.ak, label %.lr.ph.i.i.i22.epil.preheader, label %.lr.ph.i.i.i22.preheader.new

.lr.ph.i.i.i22.preheader.new:                     ; preds = %.lr.ph.i.i.i22.preheader
  %unroll_iter185 = and i64 %i.aj, -4
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22, %.lr.ph.i.i.i22.preheader.new
  %.09.i.i.i23 = phi i64 [ 0, %.lr.ph.i.i.i22.preheader.new ], [ %i.bi, %.lr.ph.i.i.i22 ] ; 5 uses
  %.078.i.i.i24 = phi i64 [ 5381, %.lr.ph.i.i.i22.preheader.new ], [ %i.bh, %.lr.ph.i.i.i22 ]
  %niter186 = phi i64 [ 0, %.lr.ph.i.i.i22.preheader.new ], [ %niter186.next.3, %.lr.ph.i.i.i22 ]
  %i.al = mul i64 %.078.i.i.i24, 33
  %i.am = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %i.al, %i.ao
  %i.aq = mul i64 %i.ap, 33
  %i.ar = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  %i.au = zext i8 %i.at to i64
  %i.av = add i64 %i.aq, %i.au
  %i.aw = mul i64 %i.av, 33
  %i.ax = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.ay = getelementptr i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i64
  %i.bb = add i64 %i.aw, %i.ba
  %i.bc = mul i64 %i.bb, 33
  %i.bd = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.be = getelementptr i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !31
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 3 uses
  %i.bi = add nuw i64 %.09.i.i.i23, 4             ; 2 uses
  %niter186.next.3 = add nuw i64 %niter186, 4     ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %rb_char_p_hash.exit.loopexit129.unr-lcssa, label %.lr.ph.i.i.i22, !llvm.loop !653

bb.d:                                             ; preds = %bb.a
  %i.bj = getelementptr i8, ptr %i.a, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !401 ; 6 uses
  %i.bl = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bk) #35 ; 4 uses
  %.not.i.i.i28 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i28, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %bb.d
  %xtraiter173 = and i64 %i.bl, 3                 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 4
  br i1 %i.bm, label %.lr.ph.i.i.i29.epil.preheader, label %.lr.ph.i.i.i29.preheader.new

.lr.ph.i.i.i29.preheader.new:                     ; preds = %.lr.ph.i.i.i29.preheader
  %unroll_iter178 = and i64 %i.bl, -4
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29, %.lr.ph.i.i.i29.preheader.new
  %.09.i.i.i30 = phi i64 [ 0, %.lr.ph.i.i.i29.preheader.new ], [ %i.ck, %.lr.ph.i.i.i29 ] ; 5 uses
  %.078.i.i.i31 = phi i64 [ 5381, %.lr.ph.i.i.i29.preheader.new ], [ %i.cj, %.lr.ph.i.i.i29 ]
  %niter179 = phi i64 [ 0, %.lr.ph.i.i.i29.preheader.new ], [ %niter179.next.3, %.lr.ph.i.i.i29 ]
  %i.bn = mul i64 %.078.i.i.i31, 33
  %i.bo = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !31
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bn, %i.bq
  %i.bs = mul i64 %i.br, 33
  %i.bt = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !31
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %i.bs, %i.bw
  %i.by = mul i64 %i.bx, 33
  %i.bz = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !31
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add i64 %i.by, %i.cc
  %i.ce = mul i64 %i.cd, 33
  %i.cf = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.cg = getelementptr i8, ptr %i.cf, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !31
  %i.ci = zext i8 %i.ch to i64
  %i.cj = add i64 %i.ce, %i.ci                    ; 3 uses
  %i.ck = add nuw i64 %.09.i.i.i30, 4             ; 2 uses
  %niter179.next.3 = add nuw i64 %niter179, 4     ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %rb_char_p_hash.exit.loopexit131.unr-lcssa, label %.lr.ph.i.i.i29, !llvm.loop !653

bb.e:                                             ; preds = %bb.a
  %i.cl = getelementptr i8, ptr %i.a, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !406 ; 6 uses
  %i.cn = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cm) #35 ; 4 uses
  %.not.i.i.i35 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i35, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.preheader

.lr.ph.i.i.i36.preheader:                         ; preds = %bb.e
  %xtraiter166 = and i64 %i.cn, 3                 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 4
  br i1 %i.co, label %.lr.ph.i.i.i36.epil.preheader, label %.lr.ph.i.i.i36.preheader.new

.lr.ph.i.i.i36.preheader.new:                     ; preds = %.lr.ph.i.i.i36.preheader
  %unroll_iter171 = and i64 %i.cn, -4
  br label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %.lr.ph.i.i.i36, %.lr.ph.i.i.i36.preheader.new
  %.09.i.i.i37 = phi i64 [ 0, %.lr.ph.i.i.i36.preheader.new ], [ %i.dm, %.lr.ph.i.i.i36 ] ; 5 uses
  %.078.i.i.i38 = phi i64 [ 5381, %.lr.ph.i.i.i36.preheader.new ], [ %i.dl, %.lr.ph.i.i.i36 ]
  %niter172 = phi i64 [ 0, %.lr.ph.i.i.i36.preheader.new ], [ %niter172.next.3, %.lr.ph.i.i.i36 ]
  %i.cp = mul i64 %.078.i.i.i38, 33
  %i.cq = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !31
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, 33
  %i.cv = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !31
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = mul i64 %i.cz, 33
  %i.db = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.dc = getelementptr i8, ptr %i.db, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !31
  %i.de = zext i8 %i.dd to i64
  %i.df = add i64 %i.da, %i.de
  %i.dg = mul i64 %i.df, 33
  %i.dh = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !31
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add nuw i64 %.09.i.i.i37, 4             ; 2 uses
  %niter172.next.3 = add nuw i64 %niter172, 4     ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %rb_char_p_hash.exit.loopexit133.unr-lcssa, label %.lr.ph.i.i.i36, !llvm.loop !653

bb.f:                                             ; preds = %bb.a
  %i.dn = getelementptr i8, ptr %i.a, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !331 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val19 = load i64, ptr %i.dp, align 8, !tbaa !39 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 24
  %.val20 = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 5 uses
  %.not.i.i.i42 = icmp eq i64 %.val19, 0
  br i1 %.not.i.i.i42, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.preheader

.lr.ph.i.i.i43.preheader:                         ; preds = %bb.f
  %xtraiter159 = and i64 %.val19, 3               ; 3 uses
  %i.dr = icmp ult i64 %.val19, 4
  br i1 %i.dr, label %.lr.ph.i.i.i43.epil.preheader, label %.lr.ph.i.i.i43.preheader.new

.lr.ph.i.i.i43.preheader.new:                     ; preds = %.lr.ph.i.i.i43.preheader
  %unroll_iter164 = and i64 %.val19, -4
  br label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %.lr.ph.i.i.i43, %.lr.ph.i.i.i43.preheader.new
  %.09.i.i.i44 = phi i64 [ 0, %.lr.ph.i.i.i43.preheader.new ], [ %i.ep, %.lr.ph.i.i.i43 ] ; 5 uses
  %.078.i.i.i45 = phi i64 [ 5381, %.lr.ph.i.i.i43.preheader.new ], [ %i.eo, %.lr.ph.i.i.i43 ]
  %niter165 = phi i64 [ 0, %.lr.ph.i.i.i43.preheader.new ], [ %niter165.next.3, %.lr.ph.i.i.i43 ]
  %i.ds = mul i64 %.078.i.i.i45, 33
  %i.dt = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !31
  %i.dv = zext i8 %i.du to i64
  %i.dw = add i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 33
  %i.dy = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !31
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add i64 %i.dx, %i.eb
  %i.ed = mul i64 %i.ec, 33
  %i.ee = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.ef = getelementptr i8, ptr %i.ee, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !31
  %i.eh = zext i8 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = mul i64 %i.ei, 33
  %i.ek = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44
  %i.el = getelementptr i8, ptr %i.ek, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !31
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %i.ej, %i.en                    ; 3 uses
  %i.ep = add nuw i64 %.09.i.i.i44, 4             ; 2 uses
  %niter165.next.3 = add nuw i64 %niter165, 4     ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %rb_char_p_hash.exit.loopexit135.unr-lcssa, label %.lr.ph.i.i.i43, !llvm.loop !653

bb.g:                                             ; preds = %bb.a
  %i.eq = getelementptr i8, ptr %i.a, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !279 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %.val17 = load i64, ptr %i.es, align 8, !tbaa !39 ; 4 uses
  %i.et = getelementptr i8, ptr %i.er, i64 24
  %.val18 = load ptr, ptr %i.et, align 8, !tbaa !38 ; 5 uses
  %.not.i.i.i48 = icmp eq i64 %.val17, 0
  br i1 %.not.i.i.i48, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.preheader

.lr.ph.i.i.i49.preheader:                         ; preds = %bb.g
  %xtraiter152 = and i64 %.val17, 3               ; 3 uses
  %i.eu = icmp ult i64 %.val17, 4
  br i1 %i.eu, label %.lr.ph.i.i.i49.epil.preheader, label %.lr.ph.i.i.i49.preheader.new

.lr.ph.i.i.i49.preheader.new:                     ; preds = %.lr.ph.i.i.i49.preheader
  %unroll_iter157 = and i64 %.val17, -4
  br label %.lr.ph.i.i.i49

.lr.ph.i.i.i49:                                   ; preds = %.lr.ph.i.i.i49, %.lr.ph.i.i.i49.preheader.new
  %.09.i.i.i50 = phi i64 [ 0, %.lr.ph.i.i.i49.preheader.new ], [ %i.fs, %.lr.ph.i.i.i49 ] ; 5 uses
  %.078.i.i.i51 = phi i64 [ 5381, %.lr.ph.i.i.i49.preheader.new ], [ %i.fr, %.lr.ph.i.i.i49 ]
  %niter158 = phi i64 [ 0, %.lr.ph.i.i.i49.preheader.new ], [ %niter158.next.3, %.lr.ph.i.i.i49 ]
  %i.ev = mul i64 %.078.i.i.i51, 33
  %i.ew = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !31
  %i.ey = zext i8 %i.ex to i64
  %i.ez = add i64 %i.ev, %i.ey
  %i.fa = mul i64 %i.ez, 33
  %i.fb = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fc = getelementptr i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !31
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add i64 %i.fa, %i.fe
  %i.fg = mul i64 %i.ff, 33
  %i.fh = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fi = getelementptr i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !31
  %i.fk = zext i8 %i.fj to i64
  %i.fl = add i64 %i.fg, %i.fk
  %i.fm = mul i64 %i.fl, 33
  %i.fn = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fo = getelementptr i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !31
  %i.fq = zext i8 %i.fp to i64
  %i.fr = add i64 %i.fm, %i.fq                    ; 3 uses
  %i.fs = add nuw i64 %.09.i.i.i50, 4             ; 2 uses
  %niter158.next.3 = add nuw i64 %niter158, 4     ; 2 uses
  %niter158.ncmp.3 = icmp eq i64 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %rb_char_p_hash.exit.loopexit137.unr-lcssa, label %.lr.ph.i.i.i49, !llvm.loop !653

bb.h:                                             ; preds = %bb.a
  %i.ft = getelementptr i8, ptr %i.a, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !344 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %.val15 = load i64, ptr %i.fv, align 8, !tbaa !39 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 24
  %.val16 = load ptr, ptr %i.fw, align 8, !tbaa !38 ; 5 uses
  %.not.i.i.i55 = icmp eq i64 %.val15, 0
  br i1 %.not.i.i.i55, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.preheader

.lr.ph.i.i.i56.preheader:                         ; preds = %bb.h
  %xtraiter145 = and i64 %.val15, 3               ; 3 uses
  %i.fx = icmp ult i64 %.val15, 4
  br i1 %i.fx, label %.lr.ph.i.i.i56.epil.preheader, label %.lr.ph.i.i.i56.preheader.new

.lr.ph.i.i.i56.preheader.new:                     ; preds = %.lr.ph.i.i.i56.preheader
  %unroll_iter150 = and i64 %.val15, -4
  br label %.lr.ph.i.i.i56

.lr.ph.i.i.i56:                                   ; preds = %.lr.ph.i.i.i56, %.lr.ph.i.i.i56.preheader.new
  %.09.i.i.i57 = phi i64 [ 0, %.lr.ph.i.i.i56.preheader.new ], [ %i.gv, %.lr.ph.i.i.i56 ] ; 5 uses
  %.078.i.i.i58 = phi i64 [ 5381, %.lr.ph.i.i.i56.preheader.new ], [ %i.gu, %.lr.ph.i.i.i56 ]
  %niter151 = phi i64 [ 0, %.lr.ph.i.i.i56.preheader.new ], [ %niter151.next.3, %.lr.ph.i.i.i56 ]
  %i.fy = mul i64 %.078.i.i.i58, 33
  %i.fz = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !31
  %i.gb = zext i8 %i.ga to i64
  %i.gc = add i64 %i.fy, %i.gb
  %i.gd = mul i64 %i.gc, 33
  %i.ge = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !31
  %i.gh = zext i8 %i.gg to i64
  %i.gi = add i64 %i.gd, %i.gh
  %i.gj = mul i64 %i.gi, 33
  %i.gk = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gl = getelementptr i8, ptr %i.gk, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !31
  %i.gn = zext i8 %i.gm to i64
  %i.go = add i64 %i.gj, %i.gn
  %i.gp = mul i64 %i.go, 33
  %i.gq = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gr = getelementptr i8, ptr %i.gq, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !31
  %i.gt = zext i8 %i.gs to i64
  %i.gu = add i64 %i.gp, %i.gt                    ; 3 uses
  %i.gv = add nuw i64 %.09.i.i.i57, 4             ; 2 uses
  %niter151.next.3 = add nuw i64 %niter151, 4     ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %rb_char_p_hash.exit.loopexit139.unr-lcssa, label %.lr.ph.i.i.i56, !llvm.loop !653

bb.i:                                             ; preds = %bb.a
  %i.gw = getelementptr i8, ptr %i.a, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !221
  %i.gy = sext i32 %i.gx to i64
  br label %rb_char_p_hash.exit

bb.j:                                             ; preds = %bb.a
  %i.gz = getelementptr i8, ptr %i.a, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !337 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %.val = load i64, ptr %i.hb, align 8, !tbaa !39 ; 4 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 24
  %.val14 = load ptr, ptr %i.hc, align 8, !tbaa !38 ; 5 uses
  %.not.i.i.i62 = icmp eq i64 %.val, 0
  br i1 %.not.i.i.i62, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.preheader

.lr.ph.i.i.i63.preheader:                         ; preds = %bb.j
  %xtraiter = and i64 %.val, 3                    ; 3 uses
  %i.hd = icmp ult i64 %.val, 4
  br i1 %i.hd, label %.lr.ph.i.i.i63.epil.preheader, label %.lr.ph.i.i.i63.preheader.new

.lr.ph.i.i.i63.preheader.new:                     ; preds = %.lr.ph.i.i.i63.preheader
  %unroll_iter = and i64 %.val, -4
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63, %.lr.ph.i.i.i63.preheader.new
  %.09.i.i.i64 = phi i64 [ 0, %.lr.ph.i.i.i63.preheader.new ], [ %i.ib, %.lr.ph.i.i.i63 ] ; 5 uses
  %.078.i.i.i65 = phi i64 [ 5381, %.lr.ph.i.i.i63.preheader.new ], [ %i.ia, %.lr.ph.i.i.i63 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i63.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i63 ]
  %i.he = mul i64 %.078.i.i.i65, 33
  %i.hf = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !31
  %i.hh = zext i8 %i.hg to i64
  %i.hi = add i64 %i.he, %i.hh
  %i.hj = mul i64 %i.hi, 33
  %i.hk = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hl = getelementptr i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !31
  %i.hn = zext i8 %i.hm to i64
  %i.ho = add i64 %i.hj, %i.hn
  %i.hp = mul i64 %i.ho, 33
  %i.hq = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hr = getelementptr i8, ptr %i.hq, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !31
  %i.ht = zext i8 %i.hs to i64
  %i.hu = add i64 %i.hp, %i.ht
  %i.hv = mul i64 %i.hu, 33
  %i.hw = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hx = getelementptr i8, ptr %i.hw, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !31
  %i.hz = zext i8 %i.hy to i64
  %i.ia = add i64 %i.hv, %i.hz                    ; 3 uses
  %i.ib = add nuw i64 %.09.i.i.i64, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rb_char_p_hash.exit.loopexit141.unr-lcssa, label %.lr.ph.i.i.i63, !llvm.loop !653

bb.k:                                             ; preds = %bb.a
  %i.ic = getelementptr i8, ptr %i.a, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !339
  %i.ie = ptrtoint ptr %i.id to i64
  br label %rb_char_p_hash.exit

bb.l:                                             ; preds = %bb.a
  %i.if = tail call ptr @ruby_node_name(i32 noundef %i.e) #31
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.885, ptr noundef %i.if) #32
  unreachable

rb_char_p_hash.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i
  %lcmp.mod189.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod189.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %rb_char_p_hash.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ag, %rb_char_p_hash.exit.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i.preheader ], [ %i.af, %rb_char_p_hash.exit.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter187, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.il, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.ik, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter188 = phi i64 [ %epil.iter188.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ig = mul i64 %.078.i.i.i.epil, 33
  %i.ih = getelementptr i8, ptr %i.g, i64 %.09.i.i.i.epil
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !31
  %i.ij = zext i8 %i.ii to i64
  %i.ik = add i64 %i.ig, %i.ij                    ; 2 uses
  %i.il = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter188.next = add i64 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i64 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !654

rb_char_p_hash.exit.loopexit129.unr-lcssa:        ; preds = %.lr.ph.i.i.i22
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.epil.preheader

.lr.ph.i.i.i22.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit129.unr-lcssa, %.lr.ph.i.i.i22.preheader
  %.09.i.i.i23.epil.init = phi i64 [ 0, %.lr.ph.i.i.i22.preheader ], [ %i.bi, %rb_char_p_hash.exit.loopexit129.unr-lcssa ]
  %.078.i.i.i24.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i22.preheader ], [ %i.bh, %rb_char_p_hash.exit.loopexit129.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i.i.i22.epil

.lr.ph.i.i.i22.epil:                              ; preds = %.lr.ph.i.i.i22.epil, %.lr.ph.i.i.i22.epil.preheader
  %.09.i.i.i23.epil = phi i64 [ %i.ir, %.lr.ph.i.i.i22.epil ], [ %.09.i.i.i23.epil.init, %.lr.ph.i.i.i22.epil.preheader ] ; 2 uses
  %.078.i.i.i24.epil = phi i64 [ %i.iq, %.lr.ph.i.i.i22.epil ], [ %.078.i.i.i24.epil.init, %.lr.ph.i.i.i22.epil.preheader ]
  %epil.iter181 = phi i64 [ %epil.iter181.next, %.lr.ph.i.i.i22.epil ], [ 0, %.lr.ph.i.i.i22.epil.preheader ]
  %i.im = mul i64 %.078.i.i.i24.epil, 33
  %i.in = getelementptr i8, ptr %i.ai, i64 %.09.i.i.i23.epil
  %i.io = load i8, ptr %i.in, align 1, !tbaa !31
  %i.ip = zext i8 %i.io to i64
  %i.iq = add i64 %i.im, %i.ip                    ; 2 uses
  %i.ir = add nuw i64 %.09.i.i.i23.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.epil, !llvm.loop !655

rb_char_p_hash.exit.loopexit131.unr-lcssa:        ; preds = %.lr.ph.i.i.i29
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.epil.preheader

.lr.ph.i.i.i29.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit131.unr-lcssa, %.lr.ph.i.i.i29.preheader
  %.09.i.i.i30.epil.init = phi i64 [ 0, %.lr.ph.i.i.i29.preheader ], [ %i.ck, %rb_char_p_hash.exit.loopexit131.unr-lcssa ]
  %.078.i.i.i31.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i29.preheader ], [ %i.cj, %rb_char_p_hash.exit.loopexit131.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter173, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i29.epil

.lr.ph.i.i.i29.epil:                              ; preds = %.lr.ph.i.i.i29.epil, %.lr.ph.i.i.i29.epil.preheader
  %.09.i.i.i30.epil = phi i64 [ %i.ix, %.lr.ph.i.i.i29.epil ], [ %.09.i.i.i30.epil.init, %.lr.ph.i.i.i29.epil.preheader ] ; 2 uses
  %.078.i.i.i31.epil = phi i64 [ %i.iw, %.lr.ph.i.i.i29.epil ], [ %.078.i.i.i31.epil.init, %.lr.ph.i.i.i29.epil.preheader ]
  %epil.iter174 = phi i64 [ %epil.iter174.next, %.lr.ph.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i29.epil.preheader ]
  %i.is = mul i64 %.078.i.i.i31.epil, 33
  %i.it = getelementptr i8, ptr %i.bk, i64 %.09.i.i.i30.epil
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !31
  %i.iv = zext i8 %i.iu to i64
  %i.iw = add i64 %i.is, %i.iv                    ; 2 uses
  %i.ix = add nuw i64 %.09.i.i.i30.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.epil, !llvm.loop !656

rb_char_p_hash.exit.loopexit133.unr-lcssa:        ; preds = %.lr.ph.i.i.i36
  %lcmp.mod168.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod168.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.epil.preheader

.lr.ph.i.i.i36.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit133.unr-lcssa, %.lr.ph.i.i.i36.preheader
  %.09.i.i.i37.epil.init = phi i64 [ 0, %.lr.ph.i.i.i36.preheader ], [ %i.dm, %rb_char_p_hash.exit.loopexit133.unr-lcssa ]
  %.078.i.i.i38.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i36.preheader ], [ %i.dl, %rb_char_p_hash.exit.loopexit133.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter166, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.i.i36.epil

.lr.ph.i.i.i36.epil:                              ; preds = %.lr.ph.i.i.i36.epil, %.lr.ph.i.i.i36.epil.preheader
  %.09.i.i.i37.epil = phi i64 [ %i.jd, %.lr.ph.i.i.i36.epil ], [ %.09.i.i.i37.epil.init, %.lr.ph.i.i.i36.epil.preheader ] ; 2 uses
  %.078.i.i.i38.epil = phi i64 [ %i.jc, %.lr.ph.i.i.i36.epil ], [ %.078.i.i.i38.epil.init, %.lr.ph.i.i.i36.epil.preheader ]
  %epil.iter167 = phi i64 [ %epil.iter167.next, %.lr.ph.i.i.i36.epil ], [ 0, %.lr.ph.i.i.i36.epil.preheader ]
  %i.iy = mul i64 %.078.i.i.i38.epil, 33
  %i.iz = getelementptr i8, ptr %i.cm, i64 %.09.i.i.i37.epil
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !31
  %i.jb = zext i8 %i.ja to i64
  %i.jc = add i64 %i.iy, %i.jb                    ; 2 uses
  %i.jd = add nuw i64 %.09.i.i.i37.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.epil, !llvm.loop !657

rb_char_p_hash.exit.loopexit135.unr-lcssa:        ; preds = %.lr.ph.i.i.i43
  %lcmp.mod161.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.epil.preheader

.lr.ph.i.i.i43.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit135.unr-lcssa, %.lr.ph.i.i.i43.preheader
  %.09.i.i.i44.epil.init = phi i64 [ 0, %.lr.ph.i.i.i43.preheader ], [ %i.ep, %rb_char_p_hash.exit.loopexit135.unr-lcssa ]
  %.078.i.i.i45.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i43.preheader ], [ %i.eo, %rb_char_p_hash.exit.loopexit135.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i.i.i43.epil

.lr.ph.i.i.i43.epil:                              ; preds = %.lr.ph.i.i.i43.epil, %.lr.ph.i.i.i43.epil.preheader
  %.09.i.i.i44.epil = phi i64 [ %i.jj, %.lr.ph.i.i.i43.epil ], [ %.09.i.i.i44.epil.init, %.lr.ph.i.i.i43.epil.preheader ] ; 2 uses
  %.078.i.i.i45.epil = phi i64 [ %i.ji, %.lr.ph.i.i.i43.epil ], [ %.078.i.i.i45.epil.init, %.lr.ph.i.i.i43.epil.preheader ]
  %epil.iter160 = phi i64 [ %epil.iter160.next, %.lr.ph.i.i.i43.epil ], [ 0, %.lr.ph.i.i.i43.epil.preheader ]
  %i.je = mul i64 %.078.i.i.i45.epil, 33
  %i.jf = getelementptr i8, ptr %.val20, i64 %.09.i.i.i44.epil
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !31
  %i.jh = zext i8 %i.jg to i64
  %i.ji = add i64 %i.je, %i.jh                    ; 2 uses
  %i.jj = add nuw i64 %.09.i.i.i44.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.epil, !llvm.loop !658

rb_char_p_hash.exit.loopexit137.unr-lcssa:        ; preds = %.lr.ph.i.i.i49
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil.preheader

.lr.ph.i.i.i49.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit137.unr-lcssa, %.lr.ph.i.i.i49.preheader
  %.09.i.i.i50.epil.init = phi i64 [ 0, %.lr.ph.i.i.i49.preheader ], [ %i.fs, %rb_char_p_hash.exit.loopexit137.unr-lcssa ]
  %.078.i.i.i51.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i49.preheader ], [ %i.fr, %rb_char_p_hash.exit.loopexit137.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter152, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.i.i49.epil

.lr.ph.i.i.i49.epil:                              ; preds = %.lr.ph.i.i.i49.epil, %.lr.ph.i.i.i49.epil.preheader
  %.09.i.i.i50.epil = phi i64 [ %i.jp, %.lr.ph.i.i.i49.epil ], [ %.09.i.i.i50.epil.init, %.lr.ph.i.i.i49.epil.preheader ] ; 2 uses
  %.078.i.i.i51.epil = phi i64 [ %i.jo, %.lr.ph.i.i.i49.epil ], [ %.078.i.i.i51.epil.init, %.lr.ph.i.i.i49.epil.preheader ]
  %epil.iter153 = phi i64 [ %epil.iter153.next, %.lr.ph.i.i.i49.epil ], [ 0, %.lr.ph.i.i.i49.epil.preheader ]
  %i.jk = mul i64 %.078.i.i.i51.epil, 33
  %i.jl = getelementptr i8, ptr %.val18, i64 %.09.i.i.i50.epil
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !31
  %i.jn = zext i8 %i.jm to i64
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = add nuw i64 %.09.i.i.i50.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil, !llvm.loop !659

rb_char_p_hash.exit.loopexit139.unr-lcssa:        ; preds = %.lr.ph.i.i.i56
  %lcmp.mod147.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil.preheader

.lr.ph.i.i.i56.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.preheader
  %.09.i.i.i57.epil.init = phi i64 [ 0, %.lr.ph.i.i.i56.preheader ], [ %i.gv, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %.078.i.i.i58.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i56.preheader ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter145, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.i.i56.epil

.lr.ph.i.i.i56.epil:                              ; preds = %.lr.ph.i.i.i56.epil, %.lr.ph.i.i.i56.epil.preheader
  %.09.i.i.i57.epil = phi i64 [ %i.jv, %.lr.ph.i.i.i56.epil ], [ %.09.i.i.i57.epil.init, %.lr.ph.i.i.i56.epil.preheader ] ; 2 uses
  %.078.i.i.i58.epil = phi i64 [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %.078.i.i.i58.epil.init, %.lr.ph.i.i.i56.epil.preheader ]
  %epil.iter146 = phi i64 [ %epil.iter146.next, %.lr.ph.i.i.i56.epil ], [ 0, %.lr.ph.i.i.i56.epil.preheader ]
  %i.jq = mul i64 %.078.i.i.i58.epil, 33
  %i.jr = getelementptr i8, ptr %.val16, i64 %.09.i.i.i57.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !31
  %i.jt = zext i8 %i.js to i64
  %i.ju = add i64 %i.jq, %i.jt                    ; 2 uses
  %i.jv = add nuw i64 %.09.i.i.i57.epil, 1
  %epil.iter146.next = add i64 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i64 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil, !llvm.loop !660

rb_char_p_hash.exit.loopexit141.unr-lcssa:        ; preds = %.lr.ph.i.i.i63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil.preheader

.lr.ph.i.i.i63.epil.preheader:                    ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.preheader
  %.09.i.i.i64.epil.init = phi i64 [ 0, %.lr.ph.i.i.i63.preheader ], [ %i.ib, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %.078.i.i.i65.epil.init = phi i64 [ 5381, %.lr.ph.i.i.i63.preheader ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i.i.i63.epil

.lr.ph.i.i.i63.epil:                              ; preds = %.lr.ph.i.i.i63.epil, %.lr.ph.i.i.i63.epil.preheader
  %.09.i.i.i64.epil = phi i64 [ %i.kb, %.lr.ph.i.i.i63.epil ], [ %.09.i.i.i64.epil.init, %.lr.ph.i.i.i63.epil.preheader ] ; 2 uses
  %.078.i.i.i65.epil = phi i64 [ %i.ka, %.lr.ph.i.i.i63.epil ], [ %.078.i.i.i65.epil.init, %.lr.ph.i.i.i63.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i63.epil ], [ 0, %.lr.ph.i.i.i63.epil.preheader ]
  %i.jw = mul i64 %.078.i.i.i65.epil, 33
  %i.jx = getelementptr i8, ptr %.val14, i64 %.09.i.i.i64.epil
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !31
  %i.jz = zext i8 %i.jy to i64
  %i.ka = add i64 %i.jw, %i.jz                    ; 2 uses
  %i.kb = add nuw i64 %.09.i.i.i64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil, !llvm.loop !661

rb_char_p_hash.exit:                              ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.epil, %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.epil, %rb_char_p_hash.exit.loopexit137.unr-lcssa, %.lr.ph.i.i.i49.epil, %rb_char_p_hash.exit.loopexit135.unr-lcssa, %.lr.ph.i.i.i43.epil, %rb_char_p_hash.exit.loopexit133.unr-lcssa, %.lr.ph.i.i.i36.epil, %rb_char_p_hash.exit.loopexit131.unr-lcssa, %.lr.ph.i.i.i29.epil, %rb_char_p_hash.exit.loopexit129.unr-lcssa, %.lr.ph.i.i.i22.epil, %rb_char_p_hash.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i
  %.0 = phi i64 [ %i.ie, %bb.k ], [ %i.ji, %.lr.ph.i.i.i43.epil ], [ %i.jo, %.lr.ph.i.i.i49.epil ], [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %i.ik, %.lr.ph.i.i.i.epil ], [ %i.iq, %.lr.ph.i.i.i22.epil ], [ %i.iw, %.lr.ph.i.i.i29.epil ], [ %i.gy, %bb.i ], [ %i.jc, %.lr.ph.i.i.i36.epil ], [ 5381, %bb.b ], [ 5381, %bb.c ], [ 5381, %bb.d ], [ 5381, %bb.e ], [ 5381, %bb.f ], [ 5381, %bb.g ], [ 5381, %bb.h ], [ 5381, %bb.j ], [ %i.af, %rb_char_p_hash.exit.loopexit.unr-lcssa ], [ %i.bh, %rb_char_p_hash.exit.loopexit129.unr-lcssa ], [ %i.cj, %rb_char_p_hash.exit.loopexit131.unr-lcssa ], [ %i.dl, %rb_char_p_hash.exit.loopexit133.unr-lcssa ], [ %i.eo, %rb_char_p_hash.exit.loopexit135.unr-lcssa ], [ %i.fr, %rb_char_p_hash.exit.loopexit137.unr-lcssa ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ], [ %i.ka, %.lr.ph.i.i.i63.epil ]
  ret i64 %.0
}

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_io_puts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dvar_curr(ptr nofree readonly captures(none) %.168.val, i64 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %.168.val, align 8, !tbaa !201 ; 3 uses
  %i.b = icmp ult ptr %i.a, inttoptr (i64 2 to ptr)
  br i1 %i.b, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !198  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !200
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %vtable_included.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.b, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.c, %.preheader.i, %bb.a
  %i.j = getelementptr i8, ptr %.168.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154  ; 3 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %vtable_included.exit, label %.preheader.i3

.preheader.i3:                                    ; preds = %vtable_included.exit.thread
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !198  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i5, label %vtable_included.exit

.lr.ph.i5:                                        ; preds = %.preheader.i3
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !200
  %wide.trip.count.i6 = zext nneg i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i5
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i8, %bb.e ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i7
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = icmp eq i64 %i.r, %0
  br i1 %i.s, label %vtable_included.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %indvars.iv.next.i8, %wide.trip.count.i6
  br i1 %exitcond.not.i9, label %vtable_included.exit, label %bb.d, !llvm.loop !2

vtable_included.exit:                             ; preds = %bb.b, %bb.e, %bb.d, %.preheader.i3, %vtable_included.exit.thread
  %i.t = phi i32 [ 0, %bb.e ], [ 0, %.preheader.i3 ], [ 0, %vtable_included.exit.thread ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dvar_defined(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 3 uses
  %i.e = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.a, %vtable_included.exit43.thread.us.i
  %.02560.us.i.in = phi ptr [ %i.u, %vtable_included.exit43.thread.us.i ], [ %i.b, %bb.a ]
  %.02659.us.i = phi ptr [ %i.w, %vtable_included.exit43.thread.us.i ], [ %i.d, %bb.a ] ; 3 uses
  %.02560.us.i = load ptr, ptr %.02560.us.i.in, align 8, !tbaa !308 ; 4 uses
  %i.f = icmp ult ptr %.02560.us.i, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %vtable_included.exit.thread.us.i, label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i
  %i.g = getelementptr i8, ptr %.02560.us.i, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !198  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.us.i, label %vtable_included.exit.thread.us.i

.lr.ph.i.us.i:                                    ; preds = %.preheader.i.us.i
  %i.j = load ptr, ptr %.02560.us.i, align 8, !tbaa !200
  %wide.trip.count.i.us.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.c ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i.us.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %rb_parser_dvar_defined_ref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %vtable_included.exit.thread.us.i, label %bb.b, !llvm.loop !2

vtable_included.exit.thread.us.i:                 ; preds = %bb.c, %.preheader.i.us.i, %.lr.ph.split.us.i
  %i.n = getelementptr i8, ptr %.02659.us.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !198  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i38.us.i, label %vtable_included.exit43.thread.us.i

.lr.ph.i38.us.i:                                  ; preds = %vtable_included.exit.thread.us.i
  %i.q = load ptr, ptr %.02659.us.i, align 8, !tbaa !200
  %wide.trip.count.i39.us.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us.i
  %indvars.iv.i40.us.i = phi i64 [ 0, %.lr.ph.i38.us.i ], [ %indvars.iv.next.i41.us.i, %bb.e ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i40.us.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %rb_parser_dvar_defined_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us.i = add nuw nsw i64 %indvars.iv.i40.us.i, 1 ; 2 uses
  %exitcond.not.i42.us.i = icmp eq i64 %indvars.iv.next.i41.us.i, %wide.trip.count.i39.us.i
  br i1 %exitcond.not.i42.us.i, label %vtable_included.exit43.thread.us.i, label %bb.d, !llvm.loop !2

vtable_included.exit43.thread.us.i:               ; preds = %bb.e, %vtable_included.exit.thread.us.i
  %i.u = getelementptr i8, ptr %.02560.us.i, i64 16
  %i.v = getelementptr i8, ptr %.02659.us.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156  ; 3 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %vtable_included.exit43.thread.us.i, %bb.a
  %.026.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.w, %vtable_included.exit43.thread.us.i ]
  %.not48.i = icmp eq ptr %.026.lcssa.i, inttoptr (i64 1 to ptr)
  br i1 %.not48.i, label %bb.f, label %rb_parser_dvar_defined_ref.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.y = and i64 %1, 14
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult i64 %1, 3776
  %i.ab = lshr i64 %1, 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -245
  %i.ae = icmp ult i32 %i.ad, -9
  %.not53.i = or i1 %i.z, %i.ae
  %narrow.i.not.i = or i1 %i.aa, %.not53.i
  br i1 %narrow.i.not.i, label %bb.g, label %rb_parser_dvar_defined_ref.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.ag) #31
  br label %rb_parser_dvar_defined_ref.exit

rb_parser_dvar_defined_ref.exit:                  ; preds = %bb.b, %bb.d, %._crit_edge.i, %bb.f, %bb.g
  %.027.i = phi i32 [ %i.ah, %bb.g ], [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.027.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @local_id(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not60.i = icmp eq ptr %i.d, null
  br i1 %.not60.i, label %.critedge37.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02962.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.03061.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.03061.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156  ; 4 uses
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %.02962.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !156  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.c, label %.critedge37.i
end_hunk_11
begin_hunk_12_@shadowing_lvar_0:bb.a
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i.i.i55, label %vtable_included.exit.thread.i.i47

.lr.ph.i.i.i55:                                   ; preds = %.preheader.i.i.i46
  %i.fq = load ptr, ptr %.02956.i.i45, align 8, !tbaa !200
  %wide.trip.count.i.i.i56 = zext nneg i32 %i.fo to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i.i.i55
  %indvars.iv.i.i.i57 = phi i64 [ 0, %.lr.ph.i.i.i55 ], [ %indvars.iv.next.i.i.i58, %bb.aj ] ; 2 uses
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv.i.i.i57
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !28
  %i.ft = icmp eq i64 %i.fs, %1
  br i1 %i.ft, label %local_id.exit62.thread91, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next.i.i.i58 = add nuw nsw i64 %indvars.iv.i.i.i57, 1 ; 2 uses
  %exitcond.not.i.i.i59 = icmp eq i64 %indvars.iv.next.i.i.i58, %wide.trip.count.i.i.i56
  br i1 %exitcond.not.i.i.i59, label %vtable_included.exit.thread.i.i47, label %bb.ai, !llvm.loop !2

vtable_included.exit.thread.i.i47:                ; preds = %bb.aj, %.preheader.i.i.i46, %.critedge37.i.i43
  %i.fu = icmp ult ptr %.03058.i.i44, inttoptr (i64 2 to ptr)
  br i1 %i.fu, label %vtable_add_gen.exit37, label %.preheader.i38.i.i48

.preheader.i38.i.i48:                             ; preds = %vtable_included.exit.thread.i.i47
  %i.fv = getelementptr i8, ptr %.03058.i.i44, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !198 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i40.i.i50, label %vtable_add_gen.exit37

.lr.ph.i40.i.i50:                                 ; preds = %.preheader.i38.i.i48
  %i.fy = load ptr, ptr %.03058.i.i44, align 8, !tbaa !200
  %wide.trip.count.i41.i.i51 = zext nneg i32 %i.fw to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i40.i.i50
  %indvars.iv.i42.i.i52 = phi i64 [ 0, %.lr.ph.i40.i.i50 ], [ %indvars.iv.next.i43.i.i53, %bb.al ] ; 2 uses
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %indvars.iv.i42.i.i52
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !28
  %i.gb = icmp eq i64 %i.ga, %1
  br i1 %i.gb, label %local_id.exit62.thread91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next.i43.i.i53 = add nuw nsw i64 %indvars.iv.i42.i.i52, 1 ; 2 uses
  %exitcond.not.i44.i.i54 = icmp eq i64 %indvars.iv.next.i43.i.i53, %wide.trip.count.i41.i.i51
  br i1 %exitcond.not.i44.i.i54, label %vtable_add_gen.exit37, label %bb.ak, !llvm.loop !2

local_id.exit62:                                  ; preds = %.critedge.i.i60
  %i.gc = getelementptr i8, ptr %0, i64 352
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !81
  %i.ge = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.gd) #31
  %.not23 = icmp eq i32 %i.ge, 0
  %i.gf = icmp eq i64 %1, 3761
  %or.cond = or i1 %i.gf, %.not23
  br i1 %or.cond, label %vtable_add_gen.exit37, label %bb.am

local_id.exit62.thread91:                         ; preds = %bb.ai, %bb.ak
  %.old = icmp eq i64 %1, 3761
  br i1 %.old, label %vtable_add_gen.exit37, label %bb.am

bb.am:                                            ; preds = %local_id.exit62, %local_id.exit62.thread91
  %i.gg = icmp ugt i64 %1, 171
  %i.gh = and i64 %1, 14
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = and i1 %i.gg, %i.gi
  br i1 %i.gj, label %bb.an, label %is_private_local_id.exit67.thread

bb.an:                                            ; preds = %bb.am
  %i.gk = tail call i64 @rb_id2str(i64 noundef %1) #31 ; 2 uses
  %.not.i64 = icmp eq i64 %i.gk, 0
  br i1 %.not.i64, label %is_private_local_id.exit67.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !30
  %i.gn = and i64 %i.gm, 8192
  %.not.i.i65 = icmp eq i64 %i.gn, 0
  %i.go = getelementptr i8, ptr %i.gl, i64 24     ; 2 uses
  br i1 %.not.i.i65, label %is_private_local_id.exit67, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !31
  br label %is_private_local_id.exit67

is_private_local_id.exit67:                       ; preds = %bb.ao, %bb.ap
  %i.gq = phi ptr [ %i.gp, %bb.ap ], [ %i.go, %bb.ao ]
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !31
  %.not100 = icmp eq i8 %i.gr, 95
  br i1 %.not100, label %vtable_add_gen.exit37, label %is_private_local_id.exit67.thread

is_private_local_id.exit67.thread:                ; preds = %bb.an, %bb.am, %is_private_local_id.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.gs = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !63 ; 4 uses
  %i.gu = getelementptr i8, ptr %0, i64 96
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !64
  %i.gw = getelementptr i8, ptr %0, i64 72
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !65
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = getelementptr i8, ptr %0, i64 80
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !192
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.gz
  %i.hg = trunc i64 %i.hf to i32
  store i32 %i.gt, ptr %2, align 4, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.hb, ptr %i.hh, align 4, !tbaa !69
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gt, ptr %i.hi, align 4, !tbaa !70
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.900)
  %i.hk = load i32, ptr %i.gs, align 4, !tbaa !63
  %i.hl = icmp eq i32 %i.gt, %i.hk
  br i1 %i.hl, label %bb.aq, label %parser_yyerror0.exit68

bb.aq:                                            ; preds = %is_private_local_id.exit67.thread
  %i.hm = getelementptr i8, ptr %0, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !193
  %i.ho = getelementptr i8, ptr %0, i64 368
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.hp, ptr noundef nonnull readonly %2, i32 noundef %i.gt, ptr noundef %i.hn)
  br label %parser_yyerror0.exit68

parser_yyerror0.exit68:                           ; preds = %is_private_local_id.exit67.thread, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %vtable_add_gen.exit37

vtable_add_gen.exit37:                            ; preds = %bb.t, %bb.al, %local_id.exit62.thread91, %.preheader.i38.i.i48, %vtable_included.exit.thread.i.i47, %.preheader.i38.i.i, %vtable_included.exit.thread.i.i, %dvar_curr.exit, %bb.ag, %bb.ad, %local_id.exit, %parser_yyerror0.exit, %parser_yyerror0.exit68, %local_id.exit62, %is_private_local_id.exit67, %vtable_add_gen.exit, %is_private_local_id.exit
  %.0 = phi i32 [ 0, %vtable_add_gen.exit ], [ 1, %is_private_local_id.exit67 ], [ 1, %is_private_local_id.exit ], [ 1, %dvar_curr.exit ], [ 1, %local_id.exit62 ], [ 1, %parser_yyerror0.exit68 ], [ 1, %parser_yyerror0.exit ], [ 1, %local_id.exit ], [ 1, %local_id.exit62.thread91 ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 1, %bb.al ], [ 1, %vtable_included.exit.thread.i.i ], [ 1, %.preheader.i38.i.i ], [ 1, %vtable_included.exit.thread.i.i47 ], [ 1, %.preheader.i38.i.i48 ], [ 1, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @aryset_check(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %parser_yyerror.exit35, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !83    ; 2 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 20224
  br i1 %i.b, label %bb.c, label %.thread40

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 3 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %parser_yyerror.exit, label %..thread40_crit_edge

..thread40_crit_edge:                             ; preds = %bb.c
  %.025.val.pre = load i64, ptr %i.f, align 8, !tbaa !83
  br label %.thread40

.thread40:                                        ; preds = %..thread40_crit_edge, %bb.b
  %.025.val = phi i64 [ %.025.val.pre, %..thread40_crit_edge ], [ %.val, %bb.b ] ; 2 uses
  %.02445 = phi ptr [ %i.d, %..thread40_crit_edge ], [ null, %bb.b ] ; 6 uses
  %.02544 = phi ptr [ %i.f, %..thread40_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.g = and i64 %.025.val, 32512
  %i.h = icmp eq i64 %i.g, 19456
  br i1 %i.h, label %bb.d, label %.thread53

bb.d:                                             ; preds = %.thread40
  %i.i = getelementptr i8, ptr %.02544, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303  ; 3 uses
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %parser_yyerror.exit, label %..thread53_crit_edge

..thread53_crit_edge:                             ; preds = %bb.d
  %.126.val.pre = load i64, ptr %i.j, align 8, !tbaa !83
  br label %.thread53

.thread53:                                        ; preds = %..thread53_crit_edge, %.thread40
  %.126.val = phi i64 [ %.126.val.pre, %..thread53_crit_edge ], [ %.025.val, %.thread40 ]
  %.12658 = phi ptr [ %i.j, %..thread53_crit_edge ], [ %.02544, %.thread40 ] ; 3 uses
  %i.k = and i64 %.126.val, 32512
  %i.l = icmp eq i64 %i.k, 19712
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread53
  %.0.val80 = load i64, ptr %.12658, align 8, !tbaa !83
  %i.m = and i64 %.0.val80, 32512
  %i.n = icmp eq i64 %i.m, 11008
  br i1 %i.n, label %.lr.ph82, label %.critedge

bb.e:                                             ; preds = %.thread53
  %i.o = getelementptr i8, ptr %.12658, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !301
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph82
  %.0.val = load i64, ptr %i.t, align 8, !tbaa !83
  %i.q = and i64 %.0.val, 32512
  %i.r = icmp eq i64 %i.q, 11008
  br i1 %i.r, label %.lr.ph82, label %.critedge.loopexit, !llvm.loop !662

.lr.ph82:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.06181 = phi ptr [ %i.t, %.lr.ph ], [ %.12658, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr i8, ptr %.06181, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !190  ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !662

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph82
  %i.u = getelementptr i8, ptr %.06181, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !189
  br label %.critedge, !llvm.loop !662

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %.06181, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.e
  %.1 = phi ptr [ %i.p, %bb.e ], [ null, %.lr.ph.preheader ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.x, %.critedge.loopexit ] ; 4 uses
  %.not32 = icmp eq ptr %.1, null
  br i1 %.not32, label %parser_yyerror.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.1.val = load i64, ptr %.1, align 8, !tbaa !83
  %i.y = and i64 %.1.val, 32512
  %i.z = icmp eq i64 %i.y, 11520
  br i1 %i.z, label %bb.g, label %parser_yyerror.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %.1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !136
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.h, label %parser_yyerror.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %.1, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.902)
  %i.ad = getelementptr i8, ptr %0, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !63 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !68
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %bb.i, label %parser_yyerror.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr i8, ptr %0, i64 368
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ak, ptr noundef nonnull readonly %i.ac, i32 noundef %i.ae, ptr noundef %i.ai)
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.d, %bb.c, %bb.i, %bb.h, %bb.g, %bb.f, %.critedge
  %.024395077 = phi ptr [ %.02445, %.critedge ], [ %.02445, %bb.i ], [ %.02445, %bb.h ], [ %.02445, %bb.g ], [ %.02445, %bb.f ], [ %.02445, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.not34 = icmp eq ptr %.024395077, null
  br i1 %.not34, label %parser_yyerror.exit35, label %bb.j

bb.j:                                             ; preds = %parser_yyerror.exit
  %i.al = getelementptr i8, ptr %.024395077, i64 8 ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.al, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.903)
  %i.am = getelementptr i8, ptr %0, i64 196
  %i.an = load i32, ptr %i.am, align 4, !tbaa !63 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !68
  %i.ap = icmp eq i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %parser_yyerror.exit35

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.as = getelementptr i8, ptr %0, i64 368
  %i.at = load i64, ptr %i.as, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.at, ptr noundef nonnull readonly %i.al, i32 noundef %i.an, ptr noundef %i.ar)
  br label %parser_yyerror.exit35

parser_yyerror.exit35:                            ; preds = %bb.a, %bb.k, %bb.j, %parser_yyerror.exit
  ret void
}

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @arg_concat(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !83
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %bb.p [
    i32 79, label %bb.c
    i32 77, label %bb.g
    i32 76, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @arg_concat(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.i = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.i, i32 noundef range(i32 0, 115) 43) #31
  %i.j = getelementptr i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !72
  %i.k = load i32, ptr %3, align 4, !tbaa !68
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr %i.i, align 8, !tbaa !83
  %i.n = and i64 %i.m, 32767
  %i.o = shl nsw i64 %i.l, 15
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.i, align 8, !tbaa !83
  %i.q = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !211  ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !211
  %i.t = getelementptr i8, ptr %i.i, i64 24
  store i32 %i.r, ptr %i.t, align 8, !tbaa !212
  %i.u = getelementptr i8, ptr %i.i, i64 32
  store ptr %2, ptr %i.u, align 8, !tbaa !189
  %i.v = getelementptr i8, ptr %i.i, i64 40
  store i64 1, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr i8, ptr %i.i, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !190
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !235
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %.val37 = load i64, ptr %2, align 8, !tbaa !83
  %i.x = and i64 %.val37, 32512
  %i.y = icmp eq i64 %i.x, 11008
  br i1 %i.y, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !301
  %i.ab = getelementptr i8, ptr %0, i64 288
  %.val.i.i38 = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ac = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i38, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ac, i32 noundef range(i32 0, 115) 43) #31
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !72
  %i.ae = load i32, ptr %3, align 4, !tbaa !68
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !83
  %i.ah = and i64 %i.ag, 32767
  %i.ai = shl nsw i64 %i.af, 15
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !83
  %i.ak = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !211 ; 2 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !211
  %i.an = getelementptr i8, ptr %i.ac, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !212
  %i.ao = getelementptr i8, ptr %i.ac, i64 32
  store ptr %i.aa, ptr %i.ao, align 8, !tbaa !189
  %i.ap = getelementptr i8, ptr %i.ac, i64 40     ; 2 uses
  store i64 1, ptr %i.ap, align 8, !tbaa !31
  %i.aq = getelementptr i8, ptr %i.ac, i64 48     ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !190
  %i.ar = getelementptr i8, ptr %2, i64 40        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !31
  store ptr %2, ptr %i.aq, align 8, !tbaa !190
  %i.au = getelementptr i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !190 ; 2 uses
  %.not17.i = icmp eq ptr %i.av, null
  br i1 %.not17.i, label %list_concat.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  br label %list_concat.exit

list_concat.exit:                                 ; preds = %bb.h, %bb.i
  %.sink.i = phi ptr [ %i.ax, %bb.i ], [ %2, %bb.h ]
  store ptr %.sink.i, ptr %i.ar, align 8, !tbaa !31
  %i.ay = getelementptr i8, ptr %i.ac, i64 16
  %i.az = getelementptr i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !301
  %i.bb = tail call i64 @rb_node_set_type(ptr noundef nonnull %1, i32 noundef 76) #31 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %.val36 = load i64, ptr %2, align 8, !tbaa !83
  %i.bc = and i64 %.val36, 32512
  %i.bd = icmp eq i64 %i.bc, 11008
  br i1 %i.bd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !303 ; 6 uses
  %.val = load i64, ptr %i.bf, align 8, !tbaa !83
  %i.bg = and i64 %.val, 32512
  %i.bh = icmp eq i64 %i.bg, 11008
  br i1 %i.bh, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.bf, i64 48     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !190 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bj, null
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i40 = phi ptr [ %i.bl, %bb.m ], [ %i.bf, %bb.l ]
  %i.bm = getelementptr i8, ptr %2, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr i8, ptr %i.bf, i64 40     ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !31
  %i.bq = add i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !31
  %i.br = getelementptr i8, ptr %.0.i40, i64 48
  store ptr %2, ptr %i.br, align 8, !tbaa !190
  %i.bs = getelementptr i8, ptr %2, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !190 ; 2 uses
  %.not17.i41 = icmp eq ptr %i.bt, null
  br i1 %.not17.i41, label %list_concat.exit43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  br label %list_concat.exit43

list_concat.exit43:                               ; preds = %bb.n, %bb.o
  %.sink.i42 = phi ptr [ %i.bv, %bb.o ], [ %2, %bb.n ]
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !190
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  store ptr %.sink.i42, ptr %i.bx, align 8, !tbaa !31
  %i.by = getelementptr i8, ptr %i.bf, i64 16
  %i.bz = getelementptr i8, ptr %2, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %i.by, align 8
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !303
  br label %bb.q

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.b
  %i.cb = getelementptr i8, ptr %0, i64 288
  %.val.i.i44 = load ptr, ptr %i.cb, align 8, !tbaa !138
  %i.cc = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i44, i32 noundef range(i32 0, 115) 76, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.cc, i32 noundef range(i32 0, 115) 76) #31
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !72
  %i.ce = load i32, ptr %3, align 4, !tbaa !68
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !83
  %i.ch = and i64 %i.cg, 32767
  %i.ci = shl nsw i64 %i.cf, 15
  %i.cj = or disjoint i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !83
  %i.ck = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !211 ; 2 uses
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !211
  %i.cn = getelementptr i8, ptr %i.cc, i64 24
  store i32 %i.cl, ptr %i.cn, align 8, !tbaa !212
  %i.co = getelementptr i8, ptr %i.cc, i64 32
  store ptr %1, ptr %i.co, align 8, !tbaa !663
  %i.cp = getelementptr i8, ptr %i.cc, i64 40
  store ptr %2, ptr %i.cp, align 8, !tbaa !303
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %list_concat.exit43, %list_concat.exit, %bb.f
  %.0 = phi ptr [ %i.cc, %bb.p ], [ %1, %bb.f ], [ %1, %list_concat.exit ], [ %1, %list_concat.exit43 ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @value_expr_check(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #0 {
bb.a:
  %cond = icmp eq ptr %1, null
  br i1 %cond, label %bb.b, label %.lr.ph110

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.b, i32 noundef %i.d, ptr noundef nonnull @.str.908) #31
  br label %.loopexit

.lr.ph110:                                        ; preds = %bb.a, %bb.w
  %.052108 = phi ptr [ %.6, %bb.w ], [ null, %bb.a ] ; 11 uses
  %.053107 = phi ptr [ %.255, %bb.w ], [ %1, %bb.a ] ; 19 uses
  %i.e = load i64, ptr %.053107, align 8, !tbaa !83
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i32 %i.f, 8
  %i.h = and i32 %i.g, 127
  switch i32 %i.h, label %.loopexit [
    i32 21, label %bb.c
    i32 19, label %bb.e
    i32 46, label %.loopexit91
    i32 14, label %.loopexit91
    i32 15, label %.loopexit91
    i32 16, label %.loopexit91
    i32 17, label %.loopexit91
    i32 6, label %bb.k
    i32 1, label %.preheader
    i32 18, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.q
    i32 22, label %bb.u
    i32 23, label %bb.u
    i32 25, label %bb.v
    i32 26, label %bb.v
    i32 24, label %bb.v
  ]

bb.c:                                             ; preds = %.lr.ph110
  %i.i = getelementptr i8, ptr %.053107, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  %i.k = getelementptr i8, ptr %.053107, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224  ; 3 uses
  %.not84 = icmp eq ptr %i.j, null
  br i1 %.not84, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.j)
  %.not85 = icmp eq ptr %i.m, null
  br i1 %.not85, label %bb.w, label %.loopexit91

bb.e:                                             ; preds = %.lr.ph110
  %i.n = getelementptr i8, ptr %.053107, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !218  ; 2 uses
  %.not78 = icmp eq ptr %i.o, null
  br i1 %.not78, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.o) ; 2 uses
  %.not79 = icmp eq ptr %i.p, null
  br i1 %.not79, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not80 = icmp eq ptr %.052108, null
  %spec.select = select i1 %.not80, ptr %i.p, ptr %.052108 ; 2 uses
  %i.q = getelementptr i8, ptr %.053107, i64 40
  %.0101 = load ptr, ptr %i.q, align 8, !tbaa !235 ; 2 uses
  %.not81102 = icmp eq ptr %.0101, null
  br i1 %.not81102, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %.0103, i64 56
  %.0 = load ptr, ptr %i.r, align 8, !tbaa !235   ; 2 uses
  %.not81 = icmp eq ptr %.0, null
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !664

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0103 = phi ptr [ %.0, %bb.h ], [ %.0101, %bb.g ] ; 3 uses
  %.0.val = load i64, ptr %.0103, align 8, !tbaa !83
  %i.s = and i64 %.0.val, 32512
  %i.t = icmp eq i64 %i.s, 5120
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.0103, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !233
  %i.w = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %i.v)
  %.not82 = icmp eq ptr %i.w, null
  br i1 %.not82, label %._crit_edge, label %bb.h

bb.j:                                             ; preds = %.lr.ph
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.569)
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.4.ph = phi ptr [ %spec.select, %bb.g ], [ %spec.select, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = getelementptr i8, ptr %.053107, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220  ; 2 uses
  %.not83 = icmp eq ptr %i.y, null
  br i1 %.not83, label %.loopexit, label %bb.w

bb.k:                                             ; preds = %.lr.ph110
  %i.z = getelementptr i8, ptr %.053107, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !268 ; 3 uses
  %.not76 = icmp eq ptr %i.aa, null
  br i1 %.not76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val = load i64, ptr %i.aa, align 8, !tbaa !83
  %i.ab = and i64 %.val, 32512
  %i.ac = icmp eq i64 %i.ab, 2048
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.569)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.aa, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270
  %.not77 = icmp eq ptr %i.ae, null
  br i1 %.not77, label %.loopexit91, label %.loopexit

.preheader:                                       ; preds = %.lr.ph110, %.preheader
  %.154 = phi ptr [ %i.ag, %.preheader ], [ %.053107, %.lr.ph110 ] ; 2 uses
  %i.af = getelementptr i8, ptr %.154, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %.not75 = icmp eq ptr %i.ag, null
  br i1 %.not75, label %bb.o, label %.preheader, !llvm.loop !665

bb.o:                                             ; preds = %.preheader
  %i.ah = getelementptr i8, ptr %.154, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !86
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph110
  %i.aj = getelementptr i8, ptr %.053107, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  br label %bb.w

bb.q:                                             ; preds = %.lr.ph110, %.lr.ph110
  %i.al = getelementptr i8, ptr %.053107, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !226 ; 2 uses
  %.not71 = icmp eq ptr %i.am, null
  br i1 %.not71, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %.053107, i64 48  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !227
  %.not72 = icmp eq ptr %i.ao, null
  br i1 %.not72, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.am) ; 2 uses
  %.not73 = icmp eq ptr %i.ap, null
  br i1 %.not73, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not74 = icmp eq ptr %.052108, null
  %spec.select87 = select i1 %.not74, ptr %i.ap, ptr %.052108
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !227
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph110, %.lr.ph110
  %i.ar = getelementptr i8, ptr %.053107, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph110, %.lr.ph110, %.lr.ph110
  tail call fastcc void @mark_lvar_used(ptr noundef %0, ptr noundef nonnull %.053107)
  br label %.loopexit

bb.w:                                             ; preds = %._crit_edge, %bb.c, %bb.d, %bb.u, %bb.t, %bb.p, %bb.o
  %.255 = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.y, %._crit_edge ], [ %i.ai, %bb.o ], [ %i.ak, %bb.p ], [ %i.aq, %bb.t ], [ %i.as, %bb.u ] ; 2 uses
  %.6 = phi ptr [ %.052108, %bb.d ], [ %.052108, %bb.c ], [ %.4.ph, %._crit_edge ], [ %.052108, %bb.o ], [ %.052108, %bb.p ], [ %spec.select87, %bb.t ], [ %.052108, %bb.u ]
  %.not70 = icmp eq ptr %.255, null
  br i1 %.not70, label %.loopexit, label %.lr.ph110, !llvm.loop !666

.loopexit91:                                      ; preds = %.lr.ph110, %.lr.ph110, %.lr.ph110, %.lr.ph110, %.lr.ph110, %bb.d, %bb.n
  %.356 = phi ptr [ %.053107, %bb.n ], [ %.053107, %.lr.ph110 ], [ %.053107, %.lr.ph110 ], [ %.053107, %.lr.ph110 ], [ %.053107, %.lr.ph110 ], [ %.053107, %.lr.ph110 ], [ %i.l, %bb.d ]
  %.not86 = icmp eq ptr %.052108, null
  %i.at = select i1 %.not86, ptr %.356, ptr %.052108
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.q, %bb.r, %bb.s, %.lr.ph110, %bb.w, %bb.b, %bb.j, %bb.n, %.loopexit91, %bb.v, %bb.m
  %.360 = phi ptr [ null, %bb.v ], [ %i.at, %.loopexit91 ], [ null, %bb.m ], [ null, %bb.j ], [ null, %bb.n ], [ null, %bb.b ], [ null, %.lr.ph110 ], [ %.4.ph, %._crit_edge ], [ null, %bb.q ], [ null, %bb.e ], [ null, %bb.s ], [ null, %bb.f ], [ null, %bb.r ], [ null, %bb.w ]
  ret ptr %.360
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @cond0(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 3) %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %common.ret107, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val86 = load i64, ptr %1, align 8, !tbaa !83  ; 2 uses
  %i.b = and i64 %.val86, 32512
  %i.c = icmp eq i64 %i.b, 17920
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !204  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %common.ret107, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.e, align 8, !tbaa !83
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i64 [ %.pre, %..thread_crit_edge ], [ %.val86, %bb.b ]
  %i.g = phi ptr [ %i.e, %..thread_crit_edge ], [ %1, %bb.b ] ; 32 uses
  %i.h = trunc i64 %i.f to i32
  %i.i = lshr i32 %i.h, 8                         ; 4 uses
  %i.j = and i32 %i.i, 127
  %.off.i = add nsw i32 %i.j, -24
  %switch.i = icmp ult i32 %.off.i, 7
  br i1 %switch.i, label %get_nd_value.exit.i, label %assign_in_cond.exit

get_nd_value.exit.i:                              ; preds = %.thread
  %.0.i.in.i = getelementptr i8, ptr %i.g, i64 40
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !235 ; 3 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %assign_in_cond.exit, label %get_nd_value.exit12.i

get_nd_value.exit12.i:                            ; preds = %get_nd_value.exit.i
  %i.k = tail call fastcc i32 @is_static_content(ptr noundef nonnull %.0.i.i)
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %assign_in_cond.exit, label %get_nd_value.exit16.i

get_nd_value.exit16.i:                            ; preds = %get_nd_value.exit12.i
  %i.l = getelementptr i8, ptr %0, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = load i64, ptr %.0.i.i, align 8, !tbaa !83
  %i.o = lshr i64 %i.n, 15
  %i.p = trunc i64 %i.o to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.m, i32 noundef %i.p, ptr noundef nonnull @.str.926) #31
  %.pre98 = load i64, ptr %i.g, align 8, !tbaa !83
  %.pre99 = trunc i64 %.pre98 to i32
  %.pre100 = lshr i32 %.pre99, 8
  br label %assign_in_cond.exit

assign_in_cond.exit:                              ; preds = %.thread, %get_nd_value.exit.i, %get_nd_value.exit12.i, %get_nd_value.exit16.i
  %.pre-phi101 = phi i32 [ %i.i, %.thread ], [ %i.i, %get_nd_value.exit.i ], [ %i.i, %get_nd_value.exit12.i ], [ %.pre100, %get_nd_value.exit16.i ]
  %i.q = and i32 %.pre-phi101, 127
  switch i32 %i.q, label %common.ret107 [
    i32 18, label %bb.d
    i32 64, label %bb.e
    i32 67, label %bb.e
    i32 63, label %bb.e
    i32 110, label %bb.e
    i32 68, label %bb.h
    i32 69, label %bb.k
    i32 1, label %bb.n
    i32 22, label %bb.o
    i32 23, label %bb.o
    i32 90, label %bb.p
    i32 91, label %bb.p
    i32 101, label %bb.t
    i32 102, label %bb.t
    i32 109, label %bb.w
    i32 111, label %bb.w
    i32 59, label %bb.w
    i32 60, label %bb.w
    i32 61, label %bb.w
    i32 62, label %bb.w
  ]

common.ret107:                                    ; preds = %bb.j, %bb.e, %bb.f, %bb.g, %bb.p, %bb.s, %bb.r, %bb.q, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %assign_in_cond.exit, %bb.c, %bb.a, %bb.m, %bb.o, %bb.n, %bb.d
  %common.ret107.op = phi ptr [ %i.g, %bb.o ], [ %i.g, %bb.d ], [ %i.g, %bb.n ], [ %i.g, %bb.j ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ null, %bb.a ], [ null, %bb.c ], [ %i.au, %bb.m ], [ %i.g, %assign_in_cond.exit ], [ %i.g, %bb.y ], [ %i.g, %bb.x ], [ %i.g, %bb.w ], [ %i.g, %bb.v ], [ %i.g, %bb.u ], [ %i.g, %bb.t ], [ %i.g, %bb.q ], [ %i.g, %bb.r ], [ %i.g, %bb.s ], [ %i.g, %bb.p ], [ %i.g, %bb.g ]
  ret ptr %common.ret107.op

bb.d:                                             ; preds = %assign_in_cond.exit
  %i.r = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.t = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.s, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  store ptr %i.t, ptr %i.r, align 8, !tbaa !88
  br label %common.ret107

bb.e:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret107 [
    i32 2, label %bb.g
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = getelementptr i8, ptr %0, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.v, i32 noundef %i.x, ptr noundef nonnull @.str.918) #31
  br label %common.ret107

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %0, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr i8, ptr %0, i64 196
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull @.str.919) #31
  br label %common.ret107

bb.h:                                             ; preds = %assign_in_cond.exit
  %i.ac = getelementptr i8, ptr %0, i64 200
  %.val85 = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 4 uses
  %i.ad = load i8, ptr %.val85, align 1
  %.not.i87 = icmp eq i8 %i.ad, 45
  br i1 %.not.i87, label %sub_1.i, label %e_option_supplied.exit.thread

sub_1.i:                                          ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.val85, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %.not1.i = icmp eq i8 %i.af, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %e_option_supplied.exit.thread

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val85, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %.not97 = icmp eq i8 %i.ah, 0
  br i1 %.not97, label %bb.j, label %e_option_supplied.exit.thread

e_option_supplied.exit.thread:                    ; preds = %sub_1.i, %bb.h, %e_option_supplied.exit
  switch i32 %2, label %bb.j [
    i32 2, label %bb.i
    i32 1, label %.sink.split
  ]

bb.i:                                             ; preds = %e_option_supplied.exit.thread
  br label %.sink.split

.sink.split:                                      ; preds = %e_option_supplied.exit.thread, %bb.i
  %.str.921.sink = phi ptr [ @.str.921, %bb.i ], [ @.str.920, %e_option_supplied.exit.thread ]
  %i.ai = getelementptr i8, ptr %0, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef nonnull %.val85, i32 noundef %i.aj, ptr noundef nonnull %.str.921.sink) #31
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %e_option_supplied.exit.thread, %e_option_supplied.exit
  %i.ak = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 56) #31 ; 0 uses
  br label %common.ret107

bb.k:                                             ; preds = %assign_in_cond.exit
  %i.al = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.al, align 8, !tbaa !97 ; 4 uses
  %i.am = load i8, ptr %.val, align 1
  %.not.i88 = icmp eq i8 %i.am, 45
  br i1 %.not.i88, label %sub_1.i89, label %e_option_supplied.exit92.thread

sub_1.i89:                                        ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %.not1.i90 = icmp eq i8 %i.ao, 101
  br i1 %.not1.i90, label %e_option_supplied.exit92, label %e_option_supplied.exit92.thread

e_option_supplied.exit92:                         ; preds = %sub_1.i89
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.aq = load i8, ptr %i.ap, align 1
  %.not96 = icmp eq i8 %i.aq, 0
  br i1 %.not96, label %bb.m, label %e_option_supplied.exit92.thread

e_option_supplied.exit92.thread:                  ; preds = %sub_1.i89, %bb.k, %e_option_supplied.exit92
  switch i32 %2, label %bb.m [
    i32 2, label %bb.l
    i32 1, label %.sink.split104
  ]

bb.l:                                             ; preds = %e_option_supplied.exit92.thread
  br label %.sink.split104

.sink.split104:                                   ; preds = %e_option_supplied.exit92.thread, %bb.l
  %.str.921.sink105 = phi ptr [ @.str.921, %bb.l ], [ @.str.920, %e_option_supplied.exit92.thread ]
  %i.ar = getelementptr i8, ptr %0, i64 196
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !63
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef nonnull %.val, i32 noundef %i.as, ptr noundef nonnull %.str.921.sink105) #31
  br label %bb.m

end_hunk_12
begin_hunk_13_@range_op:bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !83
  %i.c = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull readonly %1) ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %value_expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.d, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.907)
  %i.e = getelementptr i8, ptr %0, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !63   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !68
  %i.h = icmp eq i32 %i.g, %i.f
  br i1 %i.h, label %bb.d, label %value_expr.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.k = getelementptr i8, ptr %0, i64 368
  %i.l = load i64, ptr %i.k, align 8, !tbaa !194
  tail call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.l, ptr noundef nonnull readonly %i.d, i32 noundef %i.f, ptr noundef %i.j)
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.m = and i64 %i.b, 32512
  %i.n = icmp eq i64 %i.m, 15104
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %value_expr.exit
  %i.o = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.o, align 8, !tbaa !97  ; 4 uses
  %i.p = load i8, ptr %.val, align 1
  %.not.i21 = icmp eq i8 %i.p, 45
  br i1 %.not.i21, label %sub_1.i, label %nd_line.exit

sub_1.i:                                          ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not1.i = icmp eq i8 %i.r, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %nd_line.exit

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.f, label %nd_line.exit

nd_line.exit:                                     ; preds = %sub_1.i, %bb.e, %e_option_supplied.exit
  %i.u = load i64, ptr %1, align 8, !tbaa !83
  %i.v = lshr i64 %i.u, 15
  %i.w = trunc i64 %i.v to i32
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef nonnull %.val, i32 noundef %i.w, ptr noundef nonnull @.str.928) #31
  br label %bb.f

bb.f:                                             ; preds = %nd_line.exit, %e_option_supplied.exit
  %.pr.i = load i64, ptr @range_op.rbimpl_id, align 8, !tbaa !28 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.929, i64 noundef 2) #31 ; 3 uses
  store i64 %i.x, ptr @range_op.rbimpl_id, align 8, !tbaa !28
  %.not.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.i24, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !10

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.f
  %.lcssa.i = phi i64 [ %.pr.i, %bb.f ], [ %i.x, %.lr.ph.i ]
  %i.y = getelementptr i8, ptr %0, i64 288        ; 3 uses
  %.val.i.i = load ptr, ptr %i.y, align 8, !tbaa !138
  %i.z = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.z, i32 noundef range(i32 0, 115) 50) #31
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !72
  %i.ab = load i32, ptr %2, align 4, !tbaa !68
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !83
  %i.ae = and i64 %i.ad, 32767
  %i.af = shl nsw i64 %i.ac, 15
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !83
  %i.ah = getelementptr i8, ptr %0, i64 296       ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !211 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !211
  %i.ak = getelementptr i8, ptr %i.z, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !212
  %i.al = getelementptr i8, ptr %i.z, i64 32
  store i64 %.lcssa.i, ptr %i.al, align 8, !tbaa !341
  %.val.i.i25 = load ptr, ptr %i.y, align 8, !tbaa !138
  %i.am = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i25, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.am, i32 noundef range(i32 0, 115) 43) #31
  %i.an = getelementptr i8, ptr %i.am, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !72
  %i.ao = load i32, ptr %2, align 4, !tbaa !68
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !83
  %i.ar = and i64 %i.aq, 32767
  %i.as = shl nsw i64 %i.ap, 15
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !83
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !211 ; 2 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.ah, align 8, !tbaa !211
  %i.aw = getelementptr i8, ptr %i.am, i64 24
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !212
  %i.ax = getelementptr i8, ptr %i.am, i64 32
  store ptr %i.z, ptr %i.ax, align 8, !tbaa !189
  %i.ay = getelementptr i8, ptr %i.am, i64 40
  store i64 1, ptr %i.ay, align 8, !tbaa !31
  %i.az = getelementptr i8, ptr %i.am, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !190
  %.val.i.i26 = load ptr, ptr %i.y, align 8, !tbaa !138
  %i.ba = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i26, i32 noundef range(i32 0, 115) 36, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ba, i32 noundef range(i32 0, 115) 36) #31
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !72
  %i.bc = load i32, ptr %2, align 4, !tbaa !68
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !83
  %i.bf = and i64 %i.be, 32767
  %i.bg = shl nsw i64 %i.bd, 15
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !83
  %i.bi = load i32, ptr %i.ah, align 8, !tbaa !211 ; 2 uses
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.ah, align 8, !tbaa !211
  %i.bk = getelementptr i8, ptr %i.ba, i64 24
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !212
  %i.bl = getelementptr i8, ptr %i.ba, i64 32
  store ptr %1, ptr %i.bl, align 8, !tbaa !257
  %i.bm = getelementptr i8, ptr %i.ba, i64 40
  store i64 140, ptr %i.bm, align 8, !tbaa !258
  %i.bn = getelementptr i8, ptr %i.ba, i64 48
  store ptr %i.am, ptr %i.bn, align 8, !tbaa !259
  br label %bb.h

bb.g:                                             ; preds = %value_expr.exit
  %i.bo = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %2, i1 noundef zeroext true)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %rbimpl_intern_const.exit
  %.0 = phi ptr [ %i.bo, %bb.g ], [ %i.ba, %rbimpl_intern_const.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #27 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !83
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %.loopexit [
    i32 45, label %bb.c
    i32 43, label %.preheader
    i32 101, label %.loopexit12
    i32 68, label %.loopexit12
    i32 109, label %.loopexit12
    i32 110, label %.loopexit12
    i32 111, label %.loopexit12
    i32 59, label %.loopexit12
    i32 60, label %.loopexit12
    i32 61, label %.loopexit12
    i32 62, label %.loopexit12
    i32 63, label %.loopexit12
    i32 95, label %.loopexit12
    i32 96, label %.loopexit12
    i32 97, label %.loopexit12
    i32 44, label %.loopexit12
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191  ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.1.ph = phi ptr [ %0, %bb.b ], [ %i.f, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.1 = phi ptr [ %i.k, %bb.e ], [ %.1.ph, %.preheader ] ; 2 uses
  %i.g = getelementptr i8, ptr %.1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = tail call fastcc i32 @is_static_content(ptr noundef %i.h)
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190  ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.loopexit12, label %bb.d, !llvm.loop !667

.loopexit12:                                      ; preds = %bb.e, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %.loopexit12
  %.05 = phi i32 [ 0, %bb.b ], [ 1, %.loopexit12 ], [ 1, %bb.a ], [ 0, %bb.d ]
  ret i32 %.05
}

declare ptr @rb_st_init_table_with_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_str_string_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_line_lineno_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_encoding_val(ptr noundef) local_unnamed_addr #2

declare i64 @rb_node_file_path_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @warn_unused_var(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !198  ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !198
  %.not23 = icmp eq i32 %i.d, %i.h
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef %0, ptr noundef nonnull @.str.940)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !154
  %.pre35 = load ptr, ptr %i.a, align 8, !tbaa !202
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre35, %bb.c ], [ %i.b, %bb.b ]
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !200
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 200
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %is_private_local_id.exit.thread29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %is_private_local_id.exit.thread29 ] ; 3 uses
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28   ; 5 uses
  %.not24 = icmp eq i64 %i.p, 0
  br i1 %.not24, label %is_private_local_id.exit.thread29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %.not25 = icmp slt i64 %i.r, 0
  %i.s = icmp eq i64 %i.p, 3761
  %or.cond = or i1 %i.s, %.not25
  br i1 %or.cond, label %is_private_local_id.exit.thread29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.p, 171
  %i.u = and i64 %i.p, 14
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %bb.h, label %is_private_local_id.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i64 @rb_id2str(i64 noundef %i.p) #31 ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %is_private_local_id.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !30
  %i.aa = and i64 %i.z, 8192
  %.not.i.i = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  br i1 %.not.i.i, label %is_private_local_id.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  br label %is_private_local_id.exit

is_private_local_id.exit:                         ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.ac, %bb.j ], [ %i.ab, %bb.i ]
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  %.not32 = icmp eq i8 %i.ae, 95
  br i1 %.not32, label %is_private_local_id.exit.thread29, label %is_private_local_id.exit.thread

is_private_local_id.exit.thread:                  ; preds = %bb.h, %bb.g, %is_private_local_id.exit
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !28
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !28
  %i.aj = tail call i64 @rb_id2str(i64 noundef %i.ai) #31
  tail call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.af, i32 noundef %i.ah, ptr noundef nonnull @.str.941, i64 noundef %i.aj) #31
  br label %is_private_local_id.exit.thread29

is_private_local_id.exit.thread29:                ; preds = %is_private_local_id.exit, %bb.e, %bb.f, %is_private_local_id.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !668

.loopexit:                                        ; preds = %is_private_local_id.exit.thread29, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dyna_pop_1(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202  ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %vtable_free_gen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @warn_unused_var(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  store ptr %i.i, ptr %i.f, align 8, !tbaa !202
  %i.j = getelementptr i8, ptr %0, i64 360
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 32
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 15175, ptr noundef nonnull @.str.946, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.m, label %vtable_free_gen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !200  ; 2 uses
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #31
  br label %vtable_free_gen.exit

vtable_free_gen.exit:                             ; preds = %bb.g, %bb.d, %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !308  ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  store ptr %i.r, ptr %i.o, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 32
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vtable_free_gen.exit
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 15164, ptr noundef nonnull @.str.946, ptr noundef nonnull %i.p)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %vtable_free_gen.exit
  %i.v = icmp ult ptr %i.p, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %dyna_pop_vtable.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !200  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.w, null
  br i1 %.not12.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.w) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.p) #31
  br label %dyna_pop_vtable.exit

dyna_pop_vtable.exit:                             ; preds = %bb.i, %bb.l
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.y = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !308  ; 5 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !308
  %i.ac = load i32, ptr %i.s, align 8
  %i.ad = and i32 %i.ac, 32
  %.not.i.i11 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dyna_pop_vtable.exit
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 15164, ptr noundef nonnull @.str.946, ptr noundef nonnull %i.z)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %dyna_pop_vtable.exit
  %i.ae = icmp ult ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %i.ae, label %dyna_pop_vtable.exit13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !200 ; 2 uses
  %.not12.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not12.i.i12, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @ruby_xfree(ptr noundef nonnull %i.af) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @ruby_xfree(ptr noundef nonnull %i.z) #31
  br label %dyna_pop_vtable.exit13

dyna_pop_vtable.exit13:                           ; preds = %bb.n, %bb.q
  ret void
}

declare i64 @rb_io_flush(i64 noundef) local_unnamed_addr #2

declare i64 @rb_syntax_error_append(i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias readonly captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind allocsize(1,2) }
attributes #39 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !75}
end_hunk_13
begin_hunk_14_@llvm.assume
!433 = !{!431, !58, i64 40}
!434 = !{!"RNode_VALIAS", !82, i64 0, !27, i64 32, !27, i64 40, !67, i64 48}
!435 = !{!434, !27, i64 32}
!436 = !{!434, !27, i64 40}
!437 = !{!225, !58, i64 32}
!438 = !{!"RNode_UNLESS", !82, i64 0, !58, i64 32, !58, i64 40, !58, i64 48, !67, i64 56, !67, i64 72, !67, i64 88}
!439 = !{!438, !58, i64 32}
!440 = !{!438, !58, i64 40}
!441 = !{!438, !58, i64 48}
!442 = !{!232, !58, i64 32}
!443 = !{!232, !58, i64 40}
!444 = !{!"RNode_POSTEXE", !82, i64 0, !58, i64 32, !67, i64 40, !67, i64 56, !67, i64 72}
!445 = !{!444, !58, i64 32}
!446 = !{!"RNode_OP_ASGN_OR", !82, i64 0, !58, i64 32, !58, i64 40}
!447 = !{!446, !58, i64 32}
!448 = !{!446, !58, i64 40}
!449 = !{!"RNode_OP_ASGN_AND", !82, i64 0, !58, i64 32, !58, i64 40}
!450 = !{!449, !58, i64 32}
!451 = !{!449, !58, i64 40}
!452 = !{!"RNode_OP_ASGN1", !82, i64 0, !58, i64 32, !27, i64 40, !58, i64 48, !58, i64 56, !67, i64 64, !67, i64 80, !67, i64 96, !67, i64 112}
!453 = !{!452, !58, i64 32}
!454 = !{!452, !27, i64 40}
!455 = !{!452, !58, i64 48}
!456 = !{!452, !58, i64 56}
!457 = !{!"RNode_OP_ASGN2", !82, i64 0, !58, i64 32, !58, i64 40, !27, i64 48, !27, i64 56, !260, i64 64, !67, i64 68, !67, i64 84, !67, i64 100}
!458 = !{!457, !58, i64 32}
!459 = !{!457, !58, i64 40}
!460 = !{!457, !27, i64 48}
!461 = !{!457, !27, i64 56}
!462 = !{!457, !260, i64 64}
!463 = !{!"RNode_OP_CDECL", !82, i64 0, !58, i64 32, !58, i64 40, !27, i64 48, !25, i64 56}
!464 = !{!463, !58, i64 32}
!465 = !{!463, !58, i64 40}
!466 = !{!463, !27, i64 48}
!467 = !{!463, !25, i64 56}
!468 = !{!"RNode_COLON2", !82, i64 0, !58, i64 32, !27, i64 40, !67, i64 48, !67, i64 64}
!469 = !{!468, !58, i64 32}
!470 = !{!468, !27, i64 40}
!471 = !{!"RNode_COLON3", !82, i64 0, !27, i64 32, !67, i64 40, !67, i64 56}
!472 = !{!471, !27, i64 32}
!473 = distinct !{!473, !75}
!474 = !{!267, !58, i64 32}
!475 = !{!269, !58, i64 32}
!476 = !{!269, !58, i64 48}
!477 = !{!104, !27, i64 32}
!478 = !{!106, !58, i64 32}
!479 = !{!106, !27, i64 40}
!480 = !{!"RNode_YIELD", !82, i64 0, !58, i64 32, !67, i64 40, !67, i64 56, !67, i64 72}
!481 = !{!480, !58, i64 32}
!482 = !{!"RNode_RETURN", !82, i64 0, !58, i64 32, !67, i64 40}
!483 = !{!482, !58, i64 32}
!484 = !{!186, !58, i64 32}
!485 = !{!186, !58, i64 48}
!486 = !{!"RNode_POSTARG", !82, i64 0, !58, i64 32, !58, i64 40}
!487 = !{!486, !58, i64 32}
!488 = !{!486, !58, i64 40}
!489 = distinct !{!489, !210}
!490 = !{!295, !58, i64 16}
!491 = !{!"p1 _ZTS17re_pattern_buffer", !34, i64 0}
!492 = !{!"RRegexp", !29, i64 0, !491, i64 16, !27, i64 24, !27, i64 32}
!493 = !{!492, !491, i64 16}
!494 = !{!"RNode_MATCH3", !82, i64 0, !58, i64 32, !58, i64 40}
!495 = !{!494, !58, i64 32}
!496 = !{!494, !58, i64 40}
!497 = distinct !{!497, !75}
!498 = !{!"RNode_DEFINED", !82, i64 0, !58, i64 32, !67, i64 40}
!499 = !{!498, !58, i64 32}
!500 = !{!300, !58, i64 32}
!501 = distinct !{!501, !75}
!502 = distinct !{!502, !75}
!503 = !{!"RNode_QCALL", !82, i64 0, !58, i64 32, !27, i64 40, !58, i64 48}
!504 = !{!503, !58, i64 48}
!505 = !{!"RNode_CASE", !82, i64 0, !58, i64 32, !58, i64 40, !67, i64 48, !67, i64 64}
!506 = !{!505, !58, i64 32}
!507 = !{!505, !58, i64 40}
!508 = !{!"RNode_CASE2", !82, i64 0, !58, i64 32, !58, i64 40, !67, i64 48, !67, i64 64}
!509 = !{!508, !58, i64 32}
!510 = !{!508, !58, i64 40}
!511 = !{!"RNode_FOR_MASGN", !82, i64 0, !58, i64 32}
!512 = !{!511, !58, i64 32}
!513 = distinct !{!513, !75}
!514 = distinct !{!514, !75}
!515 = !{!"RNode_FOR", !82, i64 0, !58, i64 32, !58, i64 40, !67, i64 48, !67, i64 64, !67, i64 80, !67, i64 96}
!516 = !{!515, !58, i64 32}
!517 = !{!515, !58, i64 40}
!518 = !{!142, !58, i64 32}
!519 = !{!142, !58, i64 48}
!520 = !{!144, !58, i64 32}
!521 = !{!146, !58, i64 32}
!522 = !{!158, !58, i64 32}
!523 = !{!"RNode_ARGS", !82, i64 0, !161, i64 32}
!524 = !{!523, !25, i64 48}
!525 = distinct !{!525, !75}
!526 = !{!326, !58, i64 32}
!527 = !{!176, !58, i64 48}
!528 = !{!176, !58, i64 56}
!529 = !{!178, !58, i64 40}
!530 = !{!178, !58, i64 48}
!531 = !{!174, !58, i64 40}
!532 = !{!174, !58, i64 48}
!533 = !{!174, !58, i64 56}
!534 = !{!"RNode_IVAR", !82, i64 0, !27, i64 32}
!535 = !{!534, !27, i64 32}
!536 = !{!"RNode_CONST", !82, i64 0, !27, i64 32}
!537 = !{!536, !27, i64 32}
!538 = !{!"RNode_CVAR", !82, i64 0, !27, i64 32}
!539 = !{!538, !27, i64 32}
!540 = distinct !{!540, !75}
!541 = distinct !{!541, !75}
!542 = distinct !{!542, !75}
!543 = distinct !{!543, !75}
!544 = distinct !{!544, !75}
!545 = distinct !{!545, !75}
!546 = distinct !{!546, !75}
!547 = distinct !{!547, !75}
!548 = distinct !{!548, !75, !208, !209}
!549 = distinct !{!549, !75, !208, !209}
!550 = distinct !{!550, !75, !208}
!551 = distinct !{!551, !75}
!552 = !{i64 2157090738}
!553 = distinct !{!553, !75}
!554 = distinct !{!554, !75}
!555 = distinct !{!555, !75}
!556 = distinct !{!556, !75}
!557 = distinct !{!557, !75}
!558 = distinct !{!558, !75}
!559 = !{!62, !47, i64 40}
!560 = distinct !{!560, !75}
!561 = distinct !{!561, !75}
!562 = !{!51, !51, i64 0}
!563 = distinct !{!563, !75}
!564 = distinct !{!564, !75}
!565 = !{!61, !61, i64 0}
!566 = !{!"p1 _ZTS18node_buffer_struct", !34, i64 0}
!567 = !{!"rb_ast_body_struct", !58, i64 0, !60, i64 8, !25, i64 16, !25, i64 20, !25, i64 20}
!568 = !{!"rb_ast_struct", !566, i64 0, !567, i64 8}
!569 = !{!568, !60, i64 16}
!570 = !{!568, !566, i64 0}
!571 = !{!"p1 _ZTS23node_buffer_elem_struct", !34, i64 0}
!572 = !{!"", !571, i64 0, !571, i64 8}
!573 = !{!"p1 _ZTS23rb_ast_local_table_link", !34, i64 0}
!574 = !{!"node_buffer_struct", !572, i64 0, !573, i64 16, !60, i64 24}
!575 = !{!574, !60, i64 24}
!576 = !{!568, !58, i64 8}
!577 = !{!568, !25, i64 24}
!578 = distinct !{null}
!579 = distinct !{!579, !210}
!580 = !{!62, !25, i64 272}
!581 = !{!62, !25, i64 276}
!582 = distinct !{!582, !210}
!583 = distinct !{!583, !75}
!584 = distinct !{!584, !75}
!585 = distinct !{null, null}
!586 = !{!360, !25, i64 0}
!587 = !{!360, !36, i64 8}
!588 = !{!377, !34, i64 32}
!589 = !{!360, !25, i64 24}
!590 = !{!360, !25, i64 28}
!591 = !{!360, !25, i64 32}
!592 = !{!360, !25, i64 36}
!593 = distinct !{!593, !75}
!594 = distinct !{!594, !75}
!595 = distinct !{!595, !75}
!596 = distinct !{!596, !75}
!597 = distinct !{!597, !75}
!598 = distinct !{!598, !75}
!599 = distinct !{!599, !75}
!600 = distinct !{!600, !75}
!601 = distinct !{!601, !75}
!602 = distinct !{!602, !75}
!603 = distinct !{!603, !75}
!604 = distinct !{!604, !75}
!605 = distinct !{!605, !75}
!606 = distinct !{!606, !75}
!607 = distinct !{!607, !75, !208, !209}
!608 = distinct !{!608, !75, !208, !209}
!609 = distinct !{!609, !75, !208}
!610 = distinct !{null}
!611 = distinct !{!611, !75}
!612 = distinct !{!612, !75}
!613 = distinct !{!613, !626}
!614 = distinct !{!614, !626}
!615 = !{!"branch_weights", i32 4000000, i32 4001}
!616 = !{!"rb_strterm_literal_struct", !27, i64 0, !25, i64 8, !25, i64 12, !25, i64 16}
!617 = !{!616, !25, i64 8}
!618 = !{!616, !25, i64 16}
!619 = !{!616, !25, i64 12}
!620 = !{!616, !27, i64 0}
!621 = !{!"branch_weights", i32 2000, i32 51, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!622 = !{!"branch_weights", i32 2000, i32 6, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!623 = !{!"magic_comment", !36, i64 0, !34, i64 8, !34, i64 16}
!624 = !{!623, !34, i64 16}
!625 = !{!623, !34, i64 8}
!626 = !{!"llvm.loop.peeled.count", i32 1}
!627 = distinct !{!627, !75}
!628 = distinct !{null}
!629 = distinct !{!629, !75}
!630 = distinct !{!630, !75}
!631 = distinct !{!631, !75}
!632 = distinct !{!632, !75}
!633 = distinct !{null}
!634 = distinct !{!634, !75}
!635 = distinct !{!635, !75}
!636 = !{!357, !73, i64 6}
!637 = distinct !{!637, !75}
!638 = !{!"branch_weights", i32 2000, i32 4, i32 2000, i32 2000, i32 2000}
!639 = distinct !{!639, !75}
!640 = distinct !{!640, !75}
!641 = distinct !{!641, !75}
!642 = !{!"branch_weights", i32 2000, i32 23, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!643 = distinct !{null, null}
!644 = !{!377, !34, i64 48}
!645 = distinct !{!645, !75}
!646 = distinct !{!646, !75}
!647 = distinct !{!647, !75}
!648 = distinct !{!648, !75}
!649 = distinct !{!649, !75}
!650 = !{!"RNode_VCALL", !82, i64 0, !27, i64 32}
!651 = !{!650, !27, i64 32}
!652 = distinct !{!652, !75}
!653 = distinct !{!653, !75}
!654 = distinct !{!654, !210}
!655 = distinct !{!655, !210}
!656 = distinct !{!656, !210}
!657 = distinct !{!657, !210}
!658 = distinct !{!658, !210}
!659 = distinct !{!659, !210}
!660 = distinct !{!660, !210}
!661 = distinct !{!661, !210}
!662 = distinct !{!662, !75}
!663 = !{!302, !58, i64 32}
!664 = distinct !{!664, !75}
!665 = distinct !{!665, !75}
!666 = distinct !{!666, !75}
!667 = distinct !{!667, !75}
!668 = distinct !{!668, !75}
end_hunk_14
