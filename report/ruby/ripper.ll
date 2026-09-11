Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@parse_qmark:bb.a
  br label %.critedge117

.lr.ph:                                           ; preds = %.critedge152.preheader, %.critedge152.backedge
  %i.cv = phi i32 [ %i.dk, %.critedge152.backedge ], [ %i.cr, %.critedge152.preheader ]
  %.0153 = phi ptr [ %i.cx, %.critedge152.backedge ], [ %i.c, %.critedge152.preheader ]
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0153, i64 %i.cw ; 6 uses
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !304
  %.not110 = icmp ult ptr %i.cx, %i.cy
  br i1 %.not110, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.lr.ph
  %i.cz = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.da = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !372
  %i.de = tail call i32 %i.dd(i32 noundef range(i32 -1, 256) %i.db, i32 noundef 13, ptr noundef %i.cz) #29, !inline_history !7
  %.not.i132 = icmp eq i32 %i.de, 0
  br i1 %.not.i132, label %is_identchar.exit134, label %.critedge152.backedge

is_identchar.exit134:                             ; preds = %bb.z
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !20  ; 2 uses
  %i.dg = icmp ne i8 %i.df, 95
  %i.dh = icmp sgt i8 %i.df, -1
  %spec.select = and i1 %i.dg, %i.dh
  br i1 %spec.select, label %.critedge, label %.critedge152.backedge

.critedge152.backedge:                            ; preds = %is_identchar.exit134, %bb.z
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !304
  %i.dj = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.dk = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.cx, ptr noundef %i.di, ptr noundef %i.dj) #29 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph, label %parser_precise_mbclen.exit131, !llvm.loop !579

.critedge:                                        ; preds = %.lr.ph, %is_identchar.exit134
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !55
  %i.do = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.dp = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.655, i64 noundef 91) #29
  %i.dq = ptrtoint ptr %i.cx to i64
  %i.dr = ptrtoint ptr %i.c to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %sext = shl i64 %i.ds, 32
  %i.dt = ashr exact i64 %sext, 31
  %i.du = or disjoint i64 %i.dt, 1
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.dw = tail call i64 @rb_enc_str_new(ptr noundef nonnull %i.c, i64 noundef %i.ds, ptr noundef %i.dv) #29
  %i.dx = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dn, i64 noundef %i.do, i32 noundef 3, i64 noundef %i.dp, i64 noundef %i.du, i64 noundef %i.dw) #29 ; 0 uses
  br label %escaped_control_code.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %is_identchar.exit.thread
  %i.dy = icmp eq i32 %.011.i.ph, 92
  br i1 %i.dy, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !57  ; 3 uses
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !304
  %.not112 = icmp ult ptr %i.dz, %i.ea
  br i1 %.not112, label %bb.ac, label %.thread148

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load i8, ptr %i.dz, align 1, !tbaa !20  ; 3 uses
  %i.ec = icmp eq i8 %i.eb, 117
  br i1 %i.ec, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  %i.ee = tail call nonnull ptr @rb_utf8_encoding() #29
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !357
  call fastcc void @tokadd_utf8(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef -1, i32 noundef 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !357
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp slt i8 %i.eb, 0
  br i1 %i.ef, label %bb.af, label %.thread148

bb.af:                                            ; preds = %bb.ae
  %i.eg = zext i8 %i.eb to i32
  %i.eh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  %i.ei = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %i.eg)
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %.critedge117, label %bb.ah

.thread148:                                       ; preds = %bb.ab, %bb.ae
  %i.ek = getelementptr inbounds i8, ptr %i.dz, i64 -2
  %i.el = tail call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.ek)
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef %i.el)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.em = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %.critedge117, label %bb.ah

bb.ah:                                            ; preds = %.thread148, %bb.af, %bb.ad, %bb.ag
  %i.eo = phi ptr [ %i.bq, %.thread148 ], [ %i.bq, %bb.af ], [ %.pre, %bb.ad ], [ %i.bq, %bb.ag ]
  %i.ep = load ptr, ptr %i.bh, align 8, !tbaa !338
  %i.eq = load i32, ptr %i.bg, align 8, !tbaa !367
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.er
  store i8 0, ptr %i.es, align 1, !tbaa !20
  %i.et = load ptr, ptr %i.bh, align 8, !tbaa !338
  %i.eu = load i32, ptr %i.bg, align 8, !tbaa !367
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ex = tail call fastcc ptr @parser_str_new(ptr noundef %i.et, i64 noundef %i.ev, ptr noundef %i.eo, i32 noundef 0, ptr noundef %i.ew) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ey = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %i.ez = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.ez, align 8, !tbaa !124
  %i.fa = call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 63, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.fa, i32 noundef range(i32 0, 115) 63) #29
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.fc = load i32, ptr %2, align 4, !tbaa !62
  %i.fd = sext i32 %i.fc to i64
  %i.fe = load i64, ptr %i.fa, align 8, !tbaa !70
  %i.ff = and i64 %i.fe, 32767
  %i.fg = shl nsw i64 %i.fd, 15
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.fa, align 8, !tbaa !70
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !194 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !194
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !195
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.ex, ptr %i.fm, align 8, !tbaa !312
  %i.fn = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.fa, ptr %i.fn, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !50 ; 2 uses
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.fv = call i64 @rb_enc_str_new(ptr noundef %i.fp, i64 noundef %i.ft, ptr noundef %i.fu) #29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.fx = call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.ex) #29
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !56
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fz = load i16, ptr %i.fy, align 8
  %i.ga = and i16 %i.fz, 32
  %.not.i135 = icmp eq i16 %i.ga, 0
  br i1 %.not.i135, label %parser_set_lex_state.exit137, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gb = load i32, ptr %i.d, align 8, !tbaa !68
  %i.gc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.gb, i32 noundef 2, i32 noundef 10007) #29
  br label %parser_set_lex_state.exit137

parser_set_lex_state.exit137:                     ; preds = %bb.ah, %bb.ai
  %.0.i136 = phi i32 [ %i.gc, %bb.ai ], [ 2, %bb.ah ]
  store i32 %.0.i136, ptr %i.d, align 8, !tbaa !68
  br label %.critedge117

.critedge117:                                     ; preds = %parser_precise_mbclen.exit131, %bb.ag, %bb.af, %parser_set_lex_state.exit137, %parser_set_lex_state.exit122, %nextc0.exit, %parser_set_lex_state.exit
  %.2 = phi i32 [ 63, %parser_set_lex_state.exit ], [ 0, %nextc0.exit ], [ 63, %parser_set_lex_state.exit122 ], [ 0, %bb.ag ], [ 318, %parser_set_lex_state.exit137 ], [ 0, %bb.af ], [ -1, %parser_precise_mbclen.exit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arg_ambiguous(ptr nofree noundef readonly captures(none) %0, i8 noundef signext range(i8 43, 48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !20
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 48), align 8, !tbaa !580
  %i.c = call i64 @rb_usascii_str_new(ptr noundef nonnull %i.a, i64 noundef 1) #29
  %i.d = getelementptr i8, ptr %0, i64 368
  %.val = load i64, ptr %i.d, align 8, !tbaa !55
  %i.e = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val, i64 noundef %i.b, i32 noundef 1, i64 noundef %i.c) #29 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 314, 318) i32 @parse_numeric(ptr noundef %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 27 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 32
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
  %i.f = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef 2, i32 noundef 9711) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ 2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 47 uses
  store i32 0, ptr %i.h, align 8, !tbaa !367
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 39 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !338  ; 2 uses
  %.not.i318 = icmp eq ptr %i.j, null
  br i1 %.not.i318, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_set_lex_state.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.k, align 4, !tbaa !341
  %i.l = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %parser_set_lex_state.exit
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.j, %parser_set_lex_state.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 20 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !341
  %i.p = icmp sgt i32 %i.o, 4096
  br i1 %i.p, label %bb.e, label %newtok.exit

bb.e:                                             ; preds = %bb.d
  store i32 60, ptr %i.n, align 4, !tbaa !341
  %i.q = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.m, i64 noundef 60, i64 noundef 1) #36 ; 2 uses
  store ptr %i.q, ptr %i.i, align 8, !tbaa !338
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  switch i32 %1, label %nextc0.exit [
    i32 45, label %bb.f
    i32 43, label %bb.f
  ]

bb.f:                                             ; preds = %newtok.exit, %newtok.exit
  %i.s = trunc nuw nsw i32 %1 to i8
  %i.t = load i32, ptr %i.h, align 8, !tbaa !367  ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.h, align 8, !tbaa !367
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store i8 %i.s, ptr %i.w, align 1, !tbaa !20
  %i.x = load i32, ptr %i.h, align 8, !tbaa !367
  %i.y = load i32, ptr %i.n, align 4, !tbaa !341  ; 2 uses
  %.not.i319 = icmp slt i32 %i.x, %i.y
  br i1 %.not.i319, label %tokadd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nsw i32 %i.y, 1                      ; 2 uses
  store i32 %i.z, ptr %i.n, align 4, !tbaa !341
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.ab = sext i32 %i.z to i64
  %i.ac = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.aa, i64 noundef %i.ab, i64 noundef 1) #36
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !338
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.f, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !304
  %.not.i320 = icmp ult ptr %i.ae, %i.ag
  br i1 %.not.i320, label %bb.h, label %.critedge.i, !prof !345

bb.h:                                             ; preds = %tokadd.exit
  %i.ah = load i16, ptr %i.a, align 8
  %i.ai = and i16 %i.ah, 8
  %.not13.i = icmp eq i16 %i.ai, 0
  br i1 %.not13.i, label %bb.i, label %.critedge.i, !prof !345

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !346
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 1 to ptr)
  br i1 %i.al, label %.critedge.i, label %bb.j, !prof !190

.critedge.i:                                      ; preds = %bb.i, %bb.h, %tokadd.exit
  %i.am = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.am, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge.i, %bb.i
  %i.an = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !57
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !20  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp eq i8 %i.ap, 13
  br i1 %i.ar, label %bb.k, label %nextc0.exit, !prof !190

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.ao, %i.as
  br i1 %.not.i.i, label %bb.l, label %nextc0.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %bb.m, label %nextc0.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !57
  br label %nextc0.exit.thread

nextc0.exit:                                      ; preds = %bb.j, %newtok.exit
  %.0248 = phi i32 [ %1, %newtok.exit ], [ %i.aq, %bb.j ] ; 2 uses
  %i.aw = icmp eq i32 %.0248, 48
  br i1 %i.aw, label %bb.n, label %nextc0.exit.thread

bb.n:                                             ; preds = %nextc0.exit
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !367 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 32 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 16 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i321 = icmp ult ptr %i.az, %i.bb
  br i1 %.not.i321, label %bb.o, label %.critedge.i322, !prof !345

bb.o:                                             ; preds = %bb.n
  %i.bc = load i16, ptr %i.a, align 8
  %i.bd = and i16 %i.bc, 8
  %.not13.i328 = icmp eq i16 %i.bd, 0
  br i1 %.not13.i328, label %bb.p, label %.critedge.i322, !prof !345

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !346
  %i.bg = icmp ugt ptr %i.bf, inttoptr (i64 1 to ptr)
  br i1 %i.bg, label %.critedge.i322, label %bb.q, !prof !190

.critedge.i322:                                   ; preds = %bb.p, %bb.o, %bb.n
  %i.bh = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i323 = icmp eq i32 %i.bh, 0
  br i1 %.not14.i323, label %.critedge._crit_edge.i325, label %.thread538

.critedge._crit_edge.i325:                        ; preds = %.critedge.i322
  %.pre.i326 = load ptr, ptr %i.ay, align 8, !tbaa !57
  br label %bb.q

bb.q:                                             ; preds = %.critedge._crit_edge.i325, %bb.p
  %i.bi = phi ptr [ %.pre.i326, %.critedge._crit_edge.i325 ], [ %i.az, %bb.p ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 9 uses
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !57
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !20  ; 3 uses
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = icmp eq i8 %i.bk, 13
  br i1 %i.bm, label %bb.r, label %nextc0.exit329, !prof !190

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i.i327 = icmp ult ptr %i.bj, %i.bn
  br i1 %.not.i.i327, label %bb.s, label %.thread538

bb.s:                                             ; preds = %bb.r
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.t, label %.thread538

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store ptr %i.bq, ptr %i.ay, align 8, !tbaa !57
  br label %.thread538

.thread538:                                       ; preds = %bb.s, %bb.t, %bb.r, %.critedge.i322
  %.011.i324.ph = phi i32 [ 13, %bb.s ], [ 10, %bb.t ], [ 13, %bb.r ], [ -1, %.critedge.i322 ] ; 2 uses
  %i.br = and i32 %.011.i324.ph, -33
  br label %bb.ci

nextc0.exit329:                                   ; preds = %bb.q
  %i.bs = and i32 %i.bl, 223                      ; 2 uses
  %trunc = trunc nuw i32 %i.bs to i8
  switch i8 %trunc, label %bb.ch [
    i8 88, label %bb.u
    i8 66, label %bb.aq
    i8 68, label %bb.bl
  ]

bb.u:                                             ; preds = %nextc0.exit329
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i330 = icmp ult ptr %i.bj, %i.bt
  br i1 %.not.i330, label %bb.v, label %.critedge.i331, !prof !345

bb.v:                                             ; preds = %bb.u
  %i.bu = load i16, ptr %i.a, align 8
  %i.bv = and i16 %i.bu, 8
  %.not13.i337 = icmp eq i16 %i.bv, 0
  br i1 %.not13.i337, label %bb.w, label %.critedge.i331, !prof !345

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !346
  %i.by = icmp ugt ptr %i.bx, inttoptr (i64 1 to ptr)
  br i1 %i.by, label %.critedge.i331, label %bb.x, !prof !190

.critedge.i331:                                   ; preds = %bb.w, %bb.v, %bb.u
  %i.bz = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i332 = icmp eq i32 %i.bz, 0
  br i1 %.not14.i332, label %.critedge._crit_edge.i334, label %pushback.exit.thread

.critedge._crit_edge.i334:                        ; preds = %.critedge.i331
  %.pre.i335 = load ptr, ptr %i.ay, align 8, !tbaa !57
  br label %bb.x

bb.x:                                             ; preds = %.critedge._crit_edge.i334, %bb.w
  %i.ca = phi ptr [ %.pre.i335, %.critedge._crit_edge.i334 ], [ %i.bj, %bb.w ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 7 uses
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !57
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !20
  %.fr = freeze i8 %i.cc                          ; 4 uses
  %i.cd = icmp eq i8 %.fr, 13
  br i1 %i.cd, label %bb.y, label %bb.aa, !prof !190

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i.i336 = icmp ult ptr %i.cb, %i.ce
  br i1 %.not.i.i336, label %bb.z, label %.loopexit585

bb.z:                                             ; preds = %bb.y
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.cg = icmp eq i8 %i.cf, 10
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %spec.select = select i1 %i.cg, ptr %i.ch, ptr %i.cb
  br label %.loopexit585

bb.aa:                                            ; preds = %bb.x
  %i.ci = add i8 %.fr, -58
  %i.cj = icmp ult i8 %i.ci, -10
  br i1 %i.cj, label %switch.early.test, label %.preheader

switch.early.test:                                ; preds = %bb.aa
  switch i8 %.fr, label %.loopexit585 [
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
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %nextc0.exit352

nextc0.exit352:                                   ; preds = %nextc0.exit352.backedge, %.preheader
  %i.cl = phi ptr [ %i.cb, %.preheader ], [ %.be, %nextc0.exit352.backedge ] ; 2 uses
  %.1249.shrunk = phi i8 [ %.fr, %.preheader ], [ %.1249.shrunk.be, %nextc0.exit352.backedge ]
  %.0234 = phi i32 [ 0, %.preheader ], [ %.1235, %nextc0.exit352.backedge ] ; 3 uses
  %.1249.shrunk.fr = freeze i8 %.1249.shrunk      ; 4 uses
  %i.cm = icmp eq i8 %.1249.shrunk.fr, 95
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %nextc0.exit352
  %.not305 = icmp eq i32 %.0234, 0
  br i1 %.not305, label %tokadd.exit343, label %.loopexit585

bb.ac:                                            ; preds = %nextc0.exit352
  %i.cn = add i8 %.1249.shrunk.fr, -58
  %i.co = icmp ult i8 %i.cn, -10
  br i1 %i.co, label %switch.early.test584, label %bb.ad

switch.early.test584:                             ; preds = %bb.ac
  switch i8 %.1249.shrunk.fr, label %.loopexit585 [
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

bb.ad:                                            ; preds = %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %switch.early.test584, %bb.ac
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.cq = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.h, align 8, !tbaa !367
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  store i8 %.1249.shrunk.fr, ptr %i.ct, align 1, !tbaa !20
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !367
  %i.cv = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i342 = icmp slt i32 %i.cu, %i.cv
  br i1 %.not.i342, label %tokadd.exit343, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = shl nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.n, align 4, !tbaa !341
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.cy = sext i32 %i.cw to i64
  %i.cz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.cx, i64 noundef %i.cy, i64 noundef 1) #36
  store ptr %i.cz, ptr %i.i, align 8, !tbaa !338
  br label %tokadd.exit343

tokadd.exit343:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.1235 = phi i32 [ 95, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ae ] ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i344 = icmp ult ptr %i.da, %i.db
  br i1 %.not.i344, label %bb.af, label %.critedge.i345, !prof !345

end_hunk_0
begin_hunk_1_@parse_numeric:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !346
  %i.ht = icmp ugt ptr %i.hs, inttoptr (i64 1 to ptr)
  br i1 %i.ht, label %.critedge.i375, label %bb.bo, !prof !190

.critedge.i375:                                   ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.hu = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i376 = icmp eq i32 %i.hu, 0
  br i1 %.not14.i376, label %.critedge._crit_edge.i378, label %pushback.exit394.thread

.critedge._crit_edge.i378:                        ; preds = %.critedge.i375
  %.pre.i379 = load ptr, ptr %i.ay, align 8, !tbaa !57
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge._crit_edge.i378, %bb.bn
  %i.hv = phi ptr [ %.pre.i379, %.critedge._crit_edge.i378 ], [ %i.bj, %bb.bn ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 7 uses
  store ptr %i.hw, ptr %i.ay, align 8, !tbaa !57
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !20  ; 3 uses
  %i.hy = icmp eq i8 %i.hx, 13
  br i1 %i.hy, label %bb.bp, label %bb.br, !prof !190

bb.bp:                                            ; preds = %bb.bo
  %i.hz = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i.i380 = icmp ult ptr %i.hw, %i.hz
  br i1 %.not.i.i380, label %bb.bq, label %.thread514

bb.bq:                                            ; preds = %bb.bp
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !20
  %i.ib = icmp eq i8 %i.ia, 10
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %spec.select836 = select i1 %i.ib, ptr %i.ic, ptr %i.hw
  br label %.thread514

bb.br:                                            ; preds = %bb.bo
  %i.id = add i8 %i.hx, -58
  %i.ie = icmp ult i8 %i.id, -10
  br i1 %i.ie, label %.thread514, label %.preheader587

.preheader587:                                    ; preds = %bb.br
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %nextc0.exit393

nextc0.exit393:                                   ; preds = %nextc0.exit393.backedge, %.preheader587
  %i.ig = phi ptr [ %i.hw, %.preheader587 ], [ %.be946, %nextc0.exit393.backedge ] ; 2 uses
  %.5253.shrunk = phi i8 [ %i.hx, %.preheader587 ], [ %.5253.shrunk.be, %nextc0.exit393.backedge ] ; 3 uses
  %.6 = phi i32 [ 0, %.preheader587 ], [ %.7, %nextc0.exit393.backedge ] ; 3 uses
  %i.ih = icmp eq i8 %.5253.shrunk, 95
  br i1 %i.ih, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %nextc0.exit393
  %.not296 = icmp eq i32 %.6, 0
  br i1 %.not296, label %tokadd.exit384, label %.thread514

bb.bt:                                            ; preds = %nextc0.exit393
  %i.ii = add i8 %.5253.shrunk, -58
  %i.ij = icmp ult i8 %i.ii, -10
  br i1 %i.ij, label %.thread514, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ik = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.il = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.im = add nsw i32 %i.il, 1
  store i32 %i.im, ptr %i.h, align 8, !tbaa !367
  %i.in = sext i32 %i.il to i64
  %i.io = getelementptr inbounds i8, ptr %i.ik, i64 %i.in
  store i8 %.5253.shrunk, ptr %i.io, align 1, !tbaa !20
  %i.ip = load i32, ptr %i.h, align 8, !tbaa !367
  %i.iq = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i383 = icmp slt i32 %i.ip, %i.iq
  br i1 %.not.i383, label %tokadd.exit384, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ir = shl nsw i32 %i.iq, 1                    ; 2 uses
  store i32 %i.ir, ptr %i.n, align 4, !tbaa !341
  %i.is = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.it = sext i32 %i.ir to i64
  %i.iu = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.is, i64 noundef %i.it, i64 noundef 1) #36
  store ptr %i.iu, ptr %i.i, align 8, !tbaa !338
  br label %tokadd.exit384

tokadd.exit384:                                   ; preds = %bb.bv, %bb.bu, %bb.bs
  %.7 = phi i32 [ 95, %bb.bs ], [ 0, %bb.bu ], [ 0, %bb.bv ] ; 2 uses
  %i.iv = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.iw = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i385 = icmp ult ptr %i.iv, %i.iw
  br i1 %.not.i385, label %bb.bw, label %.critedge.i386, !prof !345

bb.bw:                                            ; preds = %tokadd.exit384
  %i.ix = load i16, ptr %i.a, align 8
  %i.iy = and i16 %i.ix, 8
  %.not13.i392 = icmp eq i16 %i.iy, 0
  br i1 %.not13.i392, label %bb.bx, label %.critedge.i386, !prof !345

bb.bx:                                            ; preds = %bb.bw
  %i.iz = load ptr, ptr %i.if, align 8, !tbaa !346
  %i.ja = icmp ugt ptr %i.iz, inttoptr (i64 1 to ptr)
  br i1 %i.ja, label %.critedge.i386, label %bb.by, !prof !190

.critedge.i386:                                   ; preds = %bb.bx, %bb.bw, %tokadd.exit384
  %i.jb = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i387 = icmp eq i32 %i.jb, 0
  br i1 %.not14.i387, label %.critedge._crit_edge.i389, label %pushback.exit394

.critedge._crit_edge.i389:                        ; preds = %.critedge.i386
  %.pre.i390 = load ptr, ptr %i.ay, align 8, !tbaa !57
  br label %bb.by

bb.by:                                            ; preds = %.critedge._crit_edge.i389, %bb.bx
  %i.jc = phi ptr [ %.pre.i390, %.critedge._crit_edge.i389 ], [ %i.iv, %bb.bx ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1 ; 6 uses
  store ptr %i.jd, ptr %i.ay, align 8, !tbaa !57
  %i.je = load i8, ptr %i.jc, align 1, !tbaa !20  ; 2 uses
  %i.jf = icmp eq i8 %i.je, 13
  br i1 %i.jf, label %bb.bz, label %nextc0.exit393.backedge, !prof !190

nextc0.exit393.backedge:                          ; preds = %bb.by, %bb.bz, %bb.ca, %bb.cb
  %.be946 = phi ptr [ %i.jd, %bb.ca ], [ %i.jd, %bb.by ], [ %i.jd, %bb.bz ], [ %i.jj, %bb.cb ]
  %.5253.shrunk.be = phi i8 [ 13, %bb.ca ], [ %i.je, %bb.by ], [ 13, %bb.bz ], [ 10, %bb.cb ]
  br label %nextc0.exit393, !llvm.loop !583

bb.bz:                                            ; preds = %bb.by
  %i.jg = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i.i391 = icmp ult ptr %i.jd, %i.jg
  br i1 %.not.i.i391, label %bb.ca, label %nextc0.exit393.backedge

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load i8, ptr %i.jd, align 1, !tbaa !20
  %i.ji = icmp eq i8 %i.jh, 10
  br i1 %i.ji, label %bb.cb, label %nextc0.exit393.backedge

bb.cb:                                            ; preds = %bb.ca
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 2 uses
  store ptr %i.jj, ptr %i.ay, align 8, !tbaa !57
  br label %nextc0.exit393.backedge

.thread514:                                       ; preds = %bb.bs, %bb.bt, %bb.bq, %bb.bp, %bb.br
  %i.jk = phi ptr [ %spec.select836, %bb.bq ], [ %i.hw, %bb.br ], [ %i.hw, %bb.bp ], [ %i.ig, %bb.bt ], [ %i.ig, %bb.bs ] ; 2 uses
  %.8.ph = phi i32 [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bp ], [ %.6, %bb.bt ], [ %.6, %bb.bs ] ; 4 uses
  %i.jl = load i16, ptr %i.a, align 8
  %i.jm = and i16 %i.jl, -9
  store i16 %i.jm, ptr %i.a, align 8
  %i.jn = getelementptr inbounds i8, ptr %i.jk, i64 -1 ; 3 uses
  store ptr %i.jn, ptr %i.ay, align 8, !tbaa !57
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !53
  %i.jq = icmp ugt ptr %i.jn, %i.jp
  br i1 %i.jq, label %bb.cc, label %pushback.exit394

bb.cc:                                            ; preds = %.thread514
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !20
  %i.js = icmp eq i8 %i.jr, 10
  br i1 %i.js, label %bb.cd, label %pushback.exit394

bb.cd:                                            ; preds = %bb.cc
  %i.jt = getelementptr inbounds i8, ptr %i.jk, i64 -2 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !20
  %i.jv = icmp eq i8 %i.ju, 13
  br i1 %i.jv, label %bb.ce, label %pushback.exit394

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.jt, ptr %i.ay, align 8, !tbaa !57
  br label %pushback.exit394

pushback.exit394:                                 ; preds = %.critedge.i386, %.thread514, %bb.cc, %bb.cd, %bb.ce
  %.8526 = phi i32 [ %.8.ph, %bb.ce ], [ %.8.ph, %.thread514 ], [ %.8.ph, %bb.cc ], [ %.8.ph, %bb.cd ], [ %.7, %.critedge.i386 ] ; 2 uses
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.jx = load i32, ptr %i.h, align 8, !tbaa !367
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %i.jw, i64 %i.jy
  store i8 0, ptr %i.jz, align 1, !tbaa !20
  %i.ka = load i32, ptr %i.h, align 8, !tbaa !367
  %i.kb = icmp eq i32 %i.ka, %i.ax
  br i1 %i.kb, label %bb.cf, label %bb.cg

pushback.exit394.thread:                          ; preds = %.critedge.i375
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.kd = load i32, ptr %i.h, align 8, !tbaa !367
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds i8, ptr %i.kc, i64 %i.ke
  store i8 0, ptr %i.kf, align 1, !tbaa !20
  %i.kg = load i32, ptr %i.h, align 8, !tbaa !367
  %i.kh = icmp eq i32 %i.kg, %i.ax
  br i1 %i.kh, label %bb.cf, label %.thread533

bb.cf:                                            ; preds = %pushback.exit394.thread, %pushback.exit394
  %i.ki = tail call fastcc i32 @no_digits(ptr noundef nonnull %0)
  br label %.thread544

bb.cg:                                            ; preds = %pushback.exit394
  %.not298 = icmp eq i32 %.8526, 0
  br i1 %.not298, label %.thread533, label %.thread550

.thread533:                                       ; preds = %pushback.exit394.thread, %bb.cg
  %i.kj = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.kk = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.kj, i32 noundef 10, i32 noundef 0)
  br label %.thread544

bb.ch:                                            ; preds = %nextc0.exit329
  %i.kl = icmp eq i8 %i.bk, 95
  br i1 %i.kl, label %nextc0.exit405.a, label %bb.ci

bb.ci:                                            ; preds = %.thread538, %bb.ch
  %.011.i324450477509540 = phi i32 [ %.011.i324.ph, %.thread538 ], [ %i.bl, %bb.ch ]
  %i.km = phi i32 [ %i.br, %.thread538 ], [ %i.bs, %bb.ch ]
  %or.cond13 = icmp eq i32 %i.km, 79
  br i1 %or.cond13, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.kn = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  switch i32 %i.kn, label %bb.ck [
    i32 -1, label %bb.cl
    i32 95, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.ko = add nsw i32 %i.kn, -58
  %i.kp = icmp ult i32 %i.ko, -10
  br i1 %i.kp, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.cj, %bb.ck
  %i.kq = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.kr = load i32, ptr %i.h, align 8, !tbaa !367
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %i.kq, i64 %i.ks
  store i8 0, ptr %i.kt, align 1, !tbaa !20
  %i.ku = tail call fastcc i32 @no_digits(ptr noundef nonnull %0)
  br label %.thread544

bb.cm:                                            ; preds = %bb.ck, %bb.ci
  %.7255 = phi i32 [ %i.kn, %bb.ck ], [ %.011.i324450477509540, %bb.ci ] ; 3 uses
  %i.kv = and i32 %.7255, -8
  %or.cond17 = icmp eq i32 %i.kv, 48
  br i1 %or.cond17, label %nextc0.exit405.a, label %bb.cy

nextc0.exit405.a:                                 ; preds = %bb.cm, %bb.ch
  %.9257 = phi i32 [ 95, %bb.ch ], [ %.7255, %bb.cm ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %3 = icmp ne i32 %.9257, 95                     ; 2 uses
  br i1 %3, label %bb.cn, label %tokadd.exit396

bb.cn:                                            ; preds = %nextc0.exit405, %nextc0.exit405.a
  %.9257.lcssa = phi i32 [ %.9257, %nextc0.exit405.a ], [ %.011.i400, %nextc0.exit405 ] ; 3 uses
  %.9.lcssa = phi i32 [ 0, %nextc0.exit405.a ], [ 95, %nextc0.exit405 ] ; 2 uses
  %i.kw = add nsw i32 %.9257.lcssa, -58
  %or.cond19 = icmp ult i32 %i.kw, -10
  br i1 %or.cond19, label %nextc0.exit405.thread, label %.loopexit

tokadd.exit396:                                   ; preds = %nextc0.exit405.a
  %i.kx = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ky = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i397 = icmp ult ptr %i.kx, %i.ky
  br i1 %.not.i397, label %bb.co, label %.critedge.i398, !prof !345

bb.co:                                            ; preds = %tokadd.exit396
  %i.kz = load i16, ptr %i.a, align 8
  %i.la = and i16 %i.kz, 8
  %.not13.i404 = icmp eq i16 %i.la, 0
  br i1 %.not13.i404, label %bb.cp, label %.critedge.i398, !prof !345

bb.cp:                                            ; preds = %bb.co
  %i.lb = load ptr, ptr %2, align 8, !tbaa !346
  %i.lc = icmp ugt ptr %i.lb, inttoptr (i64 1 to ptr)
  br i1 %i.lc, label %.critedge.i398, label %bb.cq, !prof !190

.critedge.i398:                                   ; preds = %bb.cp, %bb.co, %tokadd.exit396
  %i.ld = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i399 = icmp eq i32 %i.ld, 0
  br i1 %.not14.i399, label %.critedge._crit_edge.i401, label %nextc0.exit405.thread.thread

.critedge._crit_edge.i401:                        ; preds = %.critedge.i398
  %.pre.i402 = load ptr, ptr %i.ay, align 8, !tbaa !57
  br label %bb.cq

bb.cq:                                            ; preds = %.critedge._crit_edge.i401, %bb.cp
  %i.le = phi ptr [ %.pre.i402, %.critedge._crit_edge.i401 ], [ %i.kx, %bb.cp ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 3 uses
  store ptr %i.lf, ptr %i.ay, align 8, !tbaa !57
  %i.lg = load i8, ptr %i.le, align 1, !tbaa !20  ; 2 uses
  %i.lh = zext i8 %i.lg to i32
  %i.li = icmp eq i8 %i.lg, 13
  br i1 %i.li, label %bb.cr, label %nextc0.exit405, !prof !190

bb.cr:                                            ; preds = %bb.cq
  %i.lj = load ptr, ptr %i.ba, align 8, !tbaa !304
  %.not.i.i403 = icmp ult ptr %i.lf, %i.lj
  br i1 %.not.i.i403, label %bb.cs, label %nextc0.exit405

bb.cs:                                            ; preds = %bb.cr
  %i.lk = load i8, ptr %i.lf, align 1, !tbaa !20
  %i.ll = icmp eq i8 %i.lk, 10
  br i1 %i.ll, label %bb.ct, label %nextc0.exit405

bb.ct:                                            ; preds = %bb.cs
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  store ptr %i.lm, ptr %i.ay, align 8, !tbaa !57
  br label %nextc0.exit405

nextc0.exit405:                                   ; preds = %bb.cq, %bb.cr, %bb.cs, %bb.ct
  %.011.i400 = phi i32 [ 13, %bb.cs ], [ %i.lh, %bb.cq ], [ 13, %bb.cr ], [ 10, %bb.ct ] ; 3 uses
  %4 = icmp eq i32 %.011.i400, 95
  br i1 %4, label %nextc0.exit405.thread, label %bb.cn

nextc0.exit405.thread:                            ; preds = %nextc0.exit405, %bb.cn
  %.9257917 = phi i32 [ %.9257.lcssa, %bb.cn ], [ %.011.i400, %nextc0.exit405 ] ; 3 uses
  %.not289914 = phi i1 [ %3, %bb.cn ], [ false, %nextc0.exit405 ]
  %.9911 = phi i32 [ %.9.lcssa, %bb.cn ], [ 95, %nextc0.exit405 ] ; 2 uses
  %i.ln = load i32, ptr %i.h, align 8, !tbaa !367
  %i.lo = icmp sgt i32 %i.ln, %i.ax
  br i1 %i.lo, label %bb.cu, label %bb.cw

nextc0.exit405.thread.thread:                     ; preds = %.critedge.i398
  %5 = load i32, ptr %i.h, align 8, !tbaa !367
  %6 = icmp sgt i32 %5, %i.ax
  br i1 %6, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %nextc0.exit405.thread.thread, %nextc0.exit405.thread
  %.11786 = phi i32 [ 95, %nextc0.exit405.thread.thread ], [ %.9911, %nextc0.exit405.thread ] ; 2 uses
  %.10258784 = phi i32 [ -1, %nextc0.exit405.thread.thread ], [ %.9257917, %nextc0.exit405.thread ]
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.10258784)
  %i.lp = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.lq = load i32, ptr %i.h, align 8, !tbaa !367
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds i8, ptr %i.lp, i64 %i.lr
  store i8 0, ptr %i.ls, align 1, !tbaa !20
  %.not292 = icmp eq i32 %.11786, 0
  br i1 %.not292, label %bb.cv, label %.thread550

bb.cv:                                            ; preds = %bb.cu
  %i.lt = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.lu = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.lt, i32 noundef 8, i32 noundef 0)
  br label %.thread544

bb.cw:                                            ; preds = %nextc0.exit405.thread
  br i1 %.not289914, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %nextc0.exit405.thread.thread, %bb.cw
  %.10258785793 = phi i32 [ %.9257917, %bb.cw ], [ -1, %nextc0.exit405.thread.thread ]
  %.11787792 = phi i32 [ %.9911, %bb.cw ], [ 95, %nextc0.exit405.thread.thread ]
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.10258785793)
  br label %.thread550

bb.cy:                                            ; preds = %bb.cw, %bb.cm
  %.11259 = phi i32 [ %.9257917, %bb.cw ], [ %.7255, %bb.cm ] ; 5 uses
  %i.lv = and i32 %.11259, -2
  %or.cond21 = icmp eq i32 %i.lv, 56
  br i1 %or.cond21, label %.loopexit, label %bb.cz

.loopexit:                                        ; preds = %bb.cn, %bb.cy
  %.12260 = phi i32 [ %.11259, %bb.cy ], [ %.9257.lcssa, %bb.cn ]
  %.13 = phi i32 [ 0, %bb.cy ], [ %.9.lcssa, %bb.cn ]
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.656)
  br label %nextc0.exit.thread

bb.cz:                                            ; preds = %bb.cy
  switch i32 %.11259, label %bb.db [
    i32 101, label %bb.da
    i32 69, label %bb.da
    i32 46, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 48)
  br label %nextc0.exit.thread

bb.db:                                            ; preds = %bb.cz
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.11259)
  %i.lw = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.lx = load i32, ptr %i.h, align 8, !tbaa !367
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds i8, ptr %i.lw, i64 %i.ly
  store i8 0, ptr %i.lz, align 1, !tbaa !20
  %i.ma = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.mb = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.ma, i32 noundef 10, i32 noundef 0)
  br label %.thread544

nextc0.exit.thread:                               ; preds = %bb.l, %bb.m, %bb.k, %.critedge.i, %bb.da, %.loopexit, %nextc0.exit
  %.15263 = phi i32 [ %.11259, %bb.da ], [ %.0248, %nextc0.exit ], [ %.12260, %.loopexit ], [ 13, %bb.l ], [ 10, %bb.m ], [ 13, %bb.k ], [ -1, %.critedge.i ]
  %.16 = phi i32 [ 0, %bb.da ], [ 0, %nextc0.exit ], [ %.13, %.loopexit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %.critedge.i ]
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 17 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %nextc0.exit445

nextc0.exit445:                                   ; preds = %nextc0.exit445.backedge, %nextc0.exit.thread
  %.16264 = phi i32 [ %.15263, %nextc0.exit.thread ], [ %.16264.be, %nextc0.exit445.backedge ] ; 3 uses
  %.0244 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1245, %nextc0.exit445.backedge ] ; 8 uses
  %.0240 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1241, %nextc0.exit445.backedge ] ; 18 uses
  %.0236 = phi i32 [ 0, %nextc0.exit.thread ], [ %.1237, %nextc0.exit445.backedge ] ; 13 uses
  %.17 = phi i32 [ %.16, %nextc0.exit.thread ], [ %.18, %nextc0.exit445.backedge ] ; 6 uses
  switch i32 %.16264, label %pushback.exit422.thread.loopexit [
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
    i32 -1, label %pushback.exit446
  ]

bb.dc:                                            ; preds = %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445, %nextc0.exit445
  %i.mf = trunc nuw nsw i32 %.16264 to i8
  %i.mg = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.mh = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.h, align 8, !tbaa !367
  %i.mj = sext i32 %i.mh to i64
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.mj
  store i8 %i.mf, ptr %i.mk, align 1, !tbaa !20
  %i.ml = load i32, ptr %i.h, align 8, !tbaa !367
  %i.mm = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i406 = icmp slt i32 %i.ml, %i.mm
  br i1 %.not.i406, label %tokadd.exit407, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mn = shl nsw i32 %i.mm, 1                    ; 2 uses
  store i32 %i.mn, ptr %i.n, align 4, !tbaa !341
  %i.mo = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.mp = sext i32 %i.mn to i64
  %i.mq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.mo, i64 noundef %i.mp, i64 noundef 1) #36
  store ptr %i.mq, ptr %i.i, align 8, !tbaa !338
  br label %tokadd.exit407

bb.de:                                            ; preds = %nextc0.exit445
  %.not312 = icmp eq i32 %.17, 0
  br i1 %.not312, label %bb.df, label %.thread550

bb.df:                                            ; preds = %bb.de
  %i.mr = icmp ne i32 %.0240, 0
  %i.ms = icmp ne i32 %.0236, 0
  %or.cond27 = select i1 %i.mr, i1 true, i1 %i.ms
  br i1 %or.cond27, label %pushback.exit422.thread.loopexit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mt = load ptr, ptr %i.mc, align 8, !tbaa !57 ; 2 uses
  %i.mu = load ptr, ptr %i.md, align 8, !tbaa !304
  %.not.i408 = icmp ult ptr %i.mt, %i.mu
  br i1 %.not.i408, label %bb.dh, label %.critedge.i409, !prof !345

bb.dh:                                            ; preds = %bb.dg
  %i.mv = load i16, ptr %i.a, align 8
  %i.mw = and i16 %i.mv, 8
  %.not13.i415 = icmp eq i16 %i.mw, 0
  br i1 %.not13.i415, label %bb.di, label %.critedge.i409, !prof !345

bb.di:                                            ; preds = %bb.dh
  %i.mx = load ptr, ptr %i.me, align 8, !tbaa !346
  %i.my = icmp ugt ptr %i.mx, inttoptr (i64 1 to ptr)
  br i1 %i.my, label %.critedge.i409, label %bb.dj, !prof !190

.critedge.i409:                                   ; preds = %bb.di, %bb.dh, %bb.dg
  %i.mz = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i410 = icmp eq i32 %i.mz, 0
  br i1 %.not14.i410, label %.critedge._crit_edge.i412, label %pushback.exit422.thread.loopexit

.critedge._crit_edge.i412:                        ; preds = %.critedge.i409
  %.pre.i413 = load ptr, ptr %i.mc, align 8, !tbaa !57
  br label %bb.dj

bb.dj:                                            ; preds = %.critedge._crit_edge.i412, %bb.di
  %i.na = phi ptr [ %.pre.i413, %.critedge._crit_edge.i412 ], [ %i.mt, %bb.di ] ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store ptr %i.nb, ptr %i.mc, align 8, !tbaa !57
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !20  ; 3 uses
  %i.nd = icmp eq i8 %i.nc, 13
  br i1 %i.nd, label %bb.dk, label %bb.dm, !prof !190

bb.dk:                                            ; preds = %bb.dj
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 1 ; 4 uses
  %i.nf = load ptr, ptr %i.md, align 8, !tbaa !304
  %.not.i.i414 = icmp ult ptr %i.ne, %i.nf
  br i1 %.not.i.i414, label %bb.dl, label %.split270

bb.dl:                                            ; preds = %bb.dk
  %i.ng = load i8, ptr %i.ne, align 1, !tbaa !20
  %i.nh = icmp eq i8 %i.ng, 10
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %spec.select837 = select i1 %i.nh, ptr %i.ni, ptr %i.ne
  br label %.split270

bb.dm:                                            ; preds = %bb.dj
  %i.nj = add i8 %i.nc, -58
  %i.nk = icmp ult i8 %i.nj, -10
  br i1 %i.nk, label %.split270.loopexit, label %.split

.split270.loopexit:                               ; preds = %bb.dm
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  br label %.split270

.split270:                                        ; preds = %bb.dl, %.split270.loopexit, %bb.dk
  %i.nm = phi ptr [ %spec.select837, %bb.dl ], [ %i.ne, %bb.dk ], [ %i.nl, %.split270.loopexit ] ; 2 uses
  %i.nn = load i16, ptr %i.a, align 8
  %i.no = and i16 %i.nn, -9                       ; 4 uses
  store i16 %i.no, ptr %i.a, align 8
  %i.np = getelementptr inbounds i8, ptr %i.nm, i64 -1 ; 6 uses
  store ptr %i.np, ptr %i.mc, align 8, !tbaa !57
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !53 ; 4 uses
  %i.ns = icmp ugt ptr %i.np, %i.nr
  br i1 %i.ns, label %bb.dn, label %pushback.exit422.thread

bb.dn:                                            ; preds = %.split270
  %i.nt = load i8, ptr %i.np, align 1, !tbaa !20
  %i.nu = icmp eq i8 %i.nt, 10
  br i1 %i.nu, label %bb.do, label %pushback.exit422.thread

bb.do:                                            ; preds = %bb.dn
  %i.nv = getelementptr inbounds i8, ptr %i.nm, i64 -2 ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !20
  %i.nx = icmp eq i8 %i.nw, 13
  %spec.select838 = select i1 %i.nx, ptr %i.nv, ptr %i.np
  br label %pushback.exit422.thread

.split:                                           ; preds = %bb.dm
  %i.ny = load i32, ptr %i.h, align 8, !tbaa !367 ; 3 uses
  %i.nz = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.oa = add nsw i32 %i.ny, 1
  store i32 %i.oa, ptr %i.h, align 8, !tbaa !367
  %i.ob = sext i32 %i.ny to i64
  %i.oc = getelementptr inbounds i8, ptr %i.nz, i64 %i.ob
  store i8 46, ptr %i.oc, align 1, !tbaa !20
  %i.od = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.oe = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i418 = icmp slt i32 %i.od, %i.oe
  %.pre700 = load ptr, ptr %i.i, align 8, !tbaa !338 ; 2 uses
  br i1 %.not.i418, label %tokadd.exit419, label %bb.dp

bb.dp:                                            ; preds = %.split
  %i.of = shl nsw i32 %i.oe, 1                    ; 2 uses
  store i32 %i.of, ptr %i.n, align 4, !tbaa !341
  %i.og = sext i32 %i.of to i64
  %i.oh = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre700, i64 noundef %i.og, i64 noundef 1) #36 ; 2 uses
  store ptr %i.oh, ptr %i.i, align 8, !tbaa !338
  %.pre701.a = load i32, ptr %i.h, align 8, !tbaa !367
  br label %tokadd.exit419

tokadd.exit419:                                   ; preds = %.split, %bb.dp
  %i.oi = phi i32 [ %i.od, %.split ], [ %.pre701.a, %bb.dp ] ; 2 uses
  %i.oj = phi ptr [ %.pre700, %.split ], [ %i.oh, %bb.dp ]
  %i.ok = add nsw i32 %i.oi, 1
  store i32 %i.ok, ptr %i.h, align 8, !tbaa !367
  %i.ol = sext i32 %i.oi to i64
  %i.om = getelementptr inbounds i8, ptr %i.oj, i64 %i.ol
end_hunk_1
begin_hunk_2_@parse_numeric:bb.a
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %spec.select840 = select i1 %i.pu, ptr %i.pv, ptr %i.pr
  br label %.thread573

nextc0.exit431.thread:                            ; preds = %bb.dz
  %i.pw = add i8 %i.pp, -58
  %i.px = icmp ult i8 %i.pw, -10
  br i1 %i.px, label %.thread573.loopexit, label %bb.ee

.thread573.loopexit:                              ; preds = %nextc0.exit431.thread
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  br label %.thread573

.thread573:                                       ; preds = %bb.eb, %.thread573.loopexit, %bb.ea
  %i.pz = phi ptr [ %i.pr, %bb.ea ], [ %spec.select840, %bb.eb ], [ %i.py, %.thread573.loopexit ] ; 2 uses
  %i.qa = load i16, ptr %i.a, align 8
  %i.qb = and i16 %i.qa, -9                       ; 4 uses
  store i16 %i.qb, ptr %i.a, align 8
  %i.qc = getelementptr inbounds i8, ptr %i.pz, i64 -1 ; 6 uses
  store ptr %i.qc, ptr %i.mc, align 8, !tbaa !57
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !53 ; 4 uses
  %i.qf = icmp ugt ptr %i.qc, %i.qe
  br i1 %i.qf, label %bb.ec, label %pushback.exit422.thread

bb.ec:                                            ; preds = %.thread573
  %i.qg = load i8, ptr %i.qc, align 1, !tbaa !20
  %i.qh = icmp eq i8 %i.qg, 10
  br i1 %i.qh, label %bb.ed, label %pushback.exit422.thread

bb.ed:                                            ; preds = %bb.ec
  %i.qi = getelementptr inbounds i8, ptr %i.pz, i64 -2 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !20
  %i.qk = icmp eq i8 %i.qj, 13
  %spec.select841 = select i1 %i.qk, ptr %i.qi, ptr %i.qc
  br label %pushback.exit422.thread

bb.ee:                                            ; preds = %bb.dz, %bb.dz, %nextc0.exit431.thread
  %i.ql = trunc nuw nsw i32 %.16264 to i8
  %i.qm = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.qn = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.qo = add nsw i32 %i.qn, 1
  store i32 %i.qo, ptr %i.h, align 8, !tbaa !367
  %i.qp = sext i32 %i.qn to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qm, i64 %i.qp
  store i8 %i.ql, ptr %i.qq, align 1, !tbaa !20
  %i.qr = load i32, ptr %i.h, align 8, !tbaa !367 ; 2 uses
  %i.qs = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i433 = icmp slt i32 %i.qr, %i.qs
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !338 ; 2 uses
  br i1 %.not.i433, label %tokadd.exit434, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.qt = shl nsw i32 %i.qs, 1                    ; 2 uses
  store i32 %i.qt, ptr %i.n, align 4, !tbaa !341
  %i.qu = sext i32 %i.qt to i64
  %i.qv = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.qu, i64 noundef 1) #36 ; 2 uses
  store ptr %i.qv, ptr %i.i, align 8, !tbaa !338
  %.pre699 = load i32, ptr %i.h, align 8, !tbaa !367
  br label %tokadd.exit434

tokadd.exit434:                                   ; preds = %bb.ee, %bb.ef
  %i.qw = phi i32 [ %i.qr, %bb.ee ], [ %.pre699, %bb.ef ] ; 2 uses
  %i.qx = phi ptr [ %.pre, %bb.ee ], [ %i.qv, %bb.ef ]
  %i.qy = add nsw i32 %.0244, 1
  %i.qz = add nsw i32 %i.qw, 1
  store i32 %i.qz, ptr %i.h, align 8, !tbaa !367
  %i.ra = sext i32 %i.qw to i64
  %i.rb = getelementptr inbounds i8, ptr %i.qx, i64 %i.ra
  store i8 %i.pp, ptr %i.rb, align 1, !tbaa !20
  %i.rc = load i32, ptr %i.h, align 8, !tbaa !367
  %i.rd = load i32, ptr %i.n, align 4, !tbaa !341 ; 2 uses
  %.not.i435 = icmp slt i32 %i.rc, %i.rd
  br i1 %.not.i435, label %tokadd.exit436, label %bb.eg

bb.eg:                                            ; preds = %tokadd.exit434
  %i.re = shl nsw i32 %i.rd, 1                    ; 2 uses
  store i32 %i.re, ptr %i.n, align 4, !tbaa !341
  %i.rf = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.rg = sext i32 %i.re to i64
  %i.rh = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.rf, i64 noundef %i.rg, i64 noundef 1) #36
  store ptr %i.rh, ptr %i.i, align 8, !tbaa !338
  br label %tokadd.exit436

tokadd.exit436:                                   ; preds = %tokadd.exit434, %bb.eg
  %i.ri = icmp eq i8 %i.pp, 45
  %i.rj = icmp eq i8 %i.pp, 43
  %or.cond31 = or i1 %i.ri, %i.rj
  %i.rk = select i1 %or.cond31, i32 %i.pq, i32 0
  br label %tokadd.exit407

bb.eh:                                            ; preds = %nextc0.exit445
  %.not308 = icmp eq i32 %.17, 0
  br i1 %.not308, label %tokadd.exit407, label %pushback.exit422.thread.loopexit

tokadd.exit407:                                   ; preds = %bb.dd, %bb.dc, %bb.eh, %tokadd.exit436, %tokadd.exit421
  %.1245 = phi i32 [ %.0244, %bb.eh ], [ %i.ot, %tokadd.exit421 ], [ %i.qy, %tokadd.exit436 ], [ %.0244, %bb.dc ], [ %.0244, %bb.dd ]
  %.1241 = phi i32 [ %.0240, %bb.eh ], [ %i.ny, %tokadd.exit421 ], [ %.0240, %tokadd.exit436 ], [ %.0240, %bb.dc ], [ %.0240, %bb.dd ]
  %.1237 = phi i32 [ %.0236, %bb.eh ], [ 0, %tokadd.exit421 ], [ 1, %tokadd.exit436 ], [ %.0236, %bb.dc ], [ %.0236, %bb.dd ]
  %.18 = phi i32 [ 95, %bb.eh ], [ 0, %tokadd.exit421 ], [ %i.rk, %tokadd.exit436 ], [ 0, %bb.dc ], [ 0, %bb.dd ]
  %i.rl = load ptr, ptr %i.mc, align 8, !tbaa !57 ; 2 uses
  %i.rm = load ptr, ptr %i.md, align 8, !tbaa !304
  %.not.i437 = icmp ult ptr %i.rl, %i.rm
  br i1 %.not.i437, label %bb.ei, label %.critedge.i438, !prof !345

bb.ei:                                            ; preds = %tokadd.exit407
  %i.rn = load i16, ptr %i.a, align 8
  %i.ro = and i16 %i.rn, 8
  %.not13.i444 = icmp eq i16 %i.ro, 0
  br i1 %.not13.i444, label %bb.ej, label %.critedge.i438, !prof !345

bb.ej:                                            ; preds = %bb.ei
  %i.rp = load ptr, ptr %i.me, align 8, !tbaa !346
  %i.rq = icmp ugt ptr %i.rp, inttoptr (i64 1 to ptr)
  br i1 %i.rq, label %.critedge.i438, label %bb.ek, !prof !190

.critedge.i438:                                   ; preds = %bb.ej, %bb.ei, %tokadd.exit407
  %i.rr = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i439 = icmp eq i32 %i.rr, 0
  br i1 %.not14.i439, label %.critedge._crit_edge.i441, label %nextc0.exit445.backedge

nextc0.exit445.backedge:                          ; preds = %.critedge.i438, %bb.ek, %bb.el, %bb.em, %bb.en
  %.16264.be = phi i32 [ -1, %.critedge.i438 ], [ %i.rv, %bb.ek ], [ 13, %bb.el ], [ 10, %bb.en ], [ 13, %bb.em ]
  br label %nextc0.exit445

.critedge._crit_edge.i441:                        ; preds = %.critedge.i438
  %.pre.i442 = load ptr, ptr %i.mc, align 8, !tbaa !57
  br label %bb.ek

bb.ek:                                            ; preds = %.critedge._crit_edge.i441, %bb.ej
  %i.rs = phi ptr [ %.pre.i442, %.critedge._crit_edge.i441 ], [ %i.rl, %bb.ej ] ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1 ; 3 uses
  store ptr %i.rt, ptr %i.mc, align 8, !tbaa !57
  %i.ru = load i8, ptr %i.rs, align 1, !tbaa !20  ; 2 uses
  %i.rv = zext i8 %i.ru to i32
  %i.rw = icmp eq i8 %i.ru, 13
  br i1 %i.rw, label %bb.el, label %nextc0.exit445.backedge, !prof !190

bb.el:                                            ; preds = %bb.ek
  %i.rx = load ptr, ptr %i.md, align 8, !tbaa !304
  %.not.i.i443 = icmp ult ptr %i.rt, %i.rx
  br i1 %.not.i.i443, label %bb.em, label %nextc0.exit445.backedge

bb.em:                                            ; preds = %bb.el
  %i.ry = load i8, ptr %i.rt, align 1, !tbaa !20
  %i.rz = icmp eq i8 %i.ry, 10
  br i1 %i.rz, label %bb.en, label %nextc0.exit445.backedge

bb.en:                                            ; preds = %bb.em
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 2
  store ptr %i.sa, ptr %i.mc, align 8, !tbaa !57
  br label %nextc0.exit445.backedge

pushback.exit422.thread.loopexit:                 ; preds = %bb.df, %bb.eh, %bb.dv, %.critedge.i409, %.critedge.i424, %nextc0.exit445
  %.0240.lcssa = phi i32 [ %.0240, %bb.df ], [ %.0240, %bb.eh ], [ %.0240, %bb.dv ], [ 0, %.critedge.i409 ], [ %.0240, %.critedge.i424 ], [ %.0240, %nextc0.exit445 ]
  %.0236.lcssa = phi i32 [ %.0236, %bb.df ], [ %.0236, %bb.eh ], [ 1, %bb.dv ], [ 0, %.critedge.i409 ], [ 0, %.critedge.i424 ], [ %.0236, %nextc0.exit445 ]
  %.pre702 = load i16, ptr %i.a, align 8
  %.pre703 = load ptr, ptr %i.mc, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre704 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53
  %i.sb = and i16 %.pre702, -9
  br label %pushback.exit422.thread

pushback.exit422.thread:                          ; preds = %bb.ed, %bb.du, %bb.do, %pushback.exit422.thread.loopexit, %bb.dn, %.split270, %bb.ec, %.thread573, %bb.dt, %bb.ds
  %i.sc = phi ptr [ %i.nr, %bb.dn ], [ %i.nr, %.split270 ], [ %i.nr, %bb.do ], [ %i.qe, %bb.ec ], [ %i.qe, %.thread573 ], [ %.pre704, %pushback.exit422.thread.loopexit ], [ %i.oz, %bb.du ], [ %i.oz, %bb.dt ], [ %i.oz, %bb.ds ], [ %i.qe, %bb.ed ]
  %i.sd = phi ptr [ %i.np, %bb.dn ], [ %i.np, %.split270 ], [ %spec.select838, %bb.do ], [ %i.qc, %bb.ec ], [ %i.qc, %.thread573 ], [ %.pre703, %pushback.exit422.thread.loopexit ], [ %spec.select839, %bb.du ], [ %i.ox, %bb.dt ], [ %i.ox, %bb.ds ], [ %spec.select841, %bb.ed ] ; 2 uses
  %i.se = phi i16 [ %i.no, %bb.dn ], [ %i.no, %.split270 ], [ %i.no, %bb.do ], [ %i.qb, %bb.ec ], [ %i.qb, %.thread573 ], [ %i.sb, %pushback.exit422.thread.loopexit ], [ %i.ov, %bb.du ], [ %i.ov, %bb.dt ], [ %i.ov, %bb.ds ], [ %i.qb, %bb.ed ]
  %.0240678 = phi i32 [ 0, %bb.dn ], [ 0, %.split270 ], [ 0, %bb.do ], [ %.0240, %bb.ec ], [ %.0240, %.thread573 ], [ %.0240.lcssa, %pushback.exit422.thread.loopexit ], [ %.0240, %bb.du ], [ %.0240, %bb.dt ], [ %.0240, %bb.ds ], [ %.0240, %bb.ed ] ; 4 uses
  %.0236667 = phi i32 [ 0, %bb.dn ], [ 0, %.split270 ], [ 0, %bb.do ], [ 0, %bb.ec ], [ 0, %.thread573 ], [ %.0236.lcssa, %pushback.exit422.thread.loopexit ], [ %.0236, %bb.du ], [ %.0236, %bb.dt ], [ %.0236, %bb.ds ], [ 0, %bb.ed ] ; 4 uses
  store i16 %i.se, ptr %i.a, align 8
  %i.sf = getelementptr inbounds i8, ptr %i.sd, i64 -1 ; 3 uses
  store ptr %i.sf, ptr %i.mc, align 8, !tbaa !57
  %i.sg = icmp ugt ptr %i.sf, %i.sc
  br i1 %i.sg, label %bb.eo, label %pushback.exit446

bb.eo:                                            ; preds = %pushback.exit422.thread
  %i.sh = load i8, ptr %i.sf, align 1, !tbaa !20
  %i.si = icmp eq i8 %i.sh, 10
  br i1 %i.si, label %bb.ep, label %pushback.exit446

bb.ep:                                            ; preds = %bb.eo
  %i.sj = getelementptr inbounds i8, ptr %i.sd, i64 -2 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !20
  %i.sl = icmp eq i8 %i.sk, 13
  br i1 %i.sl, label %bb.eq, label %pushback.exit446

bb.eq:                                            ; preds = %bb.ep
  store ptr %i.sj, ptr %i.mc, align 8, !tbaa !57
  br label %pushback.exit446

pushback.exit446:                                 ; preds = %nextc0.exit445, %pushback.exit422.thread, %bb.eo, %bb.ep, %bb.eq
  %.0240677 = phi i32 [ %.0240678, %bb.eq ], [ %.0240678, %pushback.exit422.thread ], [ %.0240678, %bb.eo ], [ %.0240678, %bb.ep ], [ %.0240, %nextc0.exit445 ] ; 2 uses
  %.0236666 = phi i32 [ %.0236667, %bb.eq ], [ %.0236667, %pushback.exit422.thread ], [ %.0236667, %bb.eo ], [ %.0236667, %bb.ep ], [ %.0236, %nextc0.exit445 ] ; 2 uses
  %.not314 = icmp eq i32 %.17, 0
  br i1 %.not314, label %bb.er, label %.thread550

.thread550:                                       ; preds = %bb.de, %bb.cu, %bb.cx, %bb.ap, %bb.cg, %bb.bk, %pushback.exit446
  %.2246 = phi i32 [ %.0244, %pushback.exit446 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0244, %bb.de ]
  %.2242 = phi i32 [ %.0240677, %pushback.exit446 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0240, %bb.de ]
  %.2238 = phi i32 [ %.0236666, %pushback.exit446 ], [ 0, %bb.cu ], [ 0, %bb.bk ], [ 0, %bb.cg ], [ 0, %bb.ap ], [ 0, %bb.cx ], [ %.0236, %bb.de ]
  %.20 = phi i32 [ %.17, %pushback.exit446 ], [ %.11786, %bb.cu ], [ %.5488, %bb.bk ], [ %.8526, %bb.cg ], [ %.2463, %bb.ap ], [ %.11787792, %bb.cx ], [ %.17, %bb.de ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.657, i32 noundef %.20) #29
  br label %bb.er

bb.er:                                            ; preds = %.thread550, %pushback.exit446
  %.3247 = phi i32 [ %.2246, %.thread550 ], [ %.0244, %pushback.exit446 ]
  %.3243 = phi i32 [ %.2242, %.thread550 ], [ %.0240677, %pushback.exit446 ]
  %.3239 = phi i32 [ %.2238, %.thread550 ], [ %.0236666, %pushback.exit446 ]
  %i.sm = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.sn = load i32, ptr %i.h, align 8, !tbaa !367
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds i8, ptr %i.sm, i64 %i.so
  store i8 0, ptr %i.sp, align 1, !tbaa !20
  %.not315 = icmp eq i32 %.3247, 0
  br i1 %.not315, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not316 = icmp eq i32 %.3239, 0
  %i.sq = select i1 %.not316, i32 3, i32 2
  %i.sr = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef %i.sq) ; 2 uses
  %i.ss = and i32 %i.sr, 1
  %.not317 = icmp eq i32 %i.ss, 0
  br i1 %.not317, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.st = load ptr, ptr %i.i, align 8, !tbaa !338
  %i.su = tail call double @ruby_strtod(ptr noundef %i.st, ptr noundef null) #29 ; 0 uses
  %i.sv = tail call ptr @rb_errno_ptr() #29
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !19
  %i.sx = icmp eq i32 %i.sw, 34
  br i1 %i.sx, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !55
  %i.ta = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.tb = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.658, i64 noundef 21) #29
  %i.tc = load ptr, ptr %i.i, align 8, !tbaa !338 ; 2 uses
  %i.td = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tc) #32
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !58
  %i.tg = tail call i64 @rb_enc_str_new(ptr noundef nonnull %i.tc, i64 noundef %i.td, ptr noundef %i.tf) #29
  %i.th = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.sz, i64 noundef %i.ta, i32 noundef 2, i64 noundef %i.tb, i64 noundef %i.tg) #29 ; 0 uses
  %i.ti = tail call ptr @rb_errno_ptr() #29
  store i32 0, ptr %i.ti, align 4, !tbaa !19
  br label %bb.ev

bb.ev:                                            ; preds = %bb.es, %bb.et, %bb.eu
  %.0 = phi i32 [ 315, %bb.et ], [ 315, %bb.eu ], [ 316, %bb.es ]
  %i.tj = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %i.sr, i32 noundef 0, i32 noundef %.3243)
  br label %.thread544

bb.ew:                                            ; preds = %bb.er
  %i.tk = tail call fastcc i32 @number_literal_suffix(ptr noundef nonnull %0, i32 noundef 3)
  %i.tl = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef %i.tk, i32 noundef 10, i32 noundef 0)
  br label %.thread544

.thread544:                                       ; preds = %bb.db, %bb.cv, %.thread533, %bb.cf, %.thread501, %bb.bj, %.thread, %bb.cl, %bb.ao, %bb.ew, %bb.ev
  %.2269 = phi i32 [ %i.tl, %bb.ew ], [ %i.tj, %bb.ev ], [ %i.mb, %bb.db ], [ %i.lu, %bb.cv ], [ %i.kk, %.thread533 ], [ %i.ki, %bb.cf ], [ %i.hn, %.thread501 ], [ %i.hl, %bb.bj ], [ %i.ep, %.thread ], [ %i.ku, %bb.cl ], [ %i.en, %bb.ao ]
  ret i32 %.2269
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 345) i32 @parse_percent(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = and i32 %i.e, 577
  %.not = icmp ne i32 %i.f, 0
  %i.g = and i32 %i.e, 2064
  %i.h = icmp eq i32 %i.g, 2064
  %or.cond102 = or i1 %.not, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !304
  %.not.i = icmp ult ptr %i.c, %i.j               ; 2 uses
  br i1 %or.cond102, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !345

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 8
  %.not13.i = icmp eq i16 %i.m, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !345

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !346
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !190

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread136

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.c, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !57
  %i.t = load i8, ptr %i.r, align 1, !tbaa !20    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit.thread, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !20
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.b, align 8, !tbaa !57
  br label %nextc0.exit.thread

nextc0.exit.thread:                               ; preds = %bb.av, %bb.g, %bb.h, %bb.f, %bb.e, %bb.aw
  %.090135 = phi i32 [ %.011.i119141, %bb.av ], [ 13, %bb.g ], [ 10, %bb.h ], [ 13, %bb.f ], [ %i.u, %bb.e ], [ 115, %bb.aw ] ; 5 uses
  %i.aa = and i32 %.090135, -33
  %i.ab = add i32 %i.aa, -91
  %narrow.i.i = icmp ult i32 %i.ab, -26
  %i.ac = add nsw i32 %.090135, -58
  %i.ad = icmp ult i32 %i.ac, -10
  %narrow.i.not = and i1 %i.ad, %narrow.i.i
  br i1 %narrow.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nextc0.exit.thread
  %i.ae = icmp samesign ugt i32 %.090135, 127
  br i1 %i.ae, label %..thread_crit_edge, label %bb.v

..thread_crit_edge:                               ; preds = %bb.i
  %.pre148 = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %.thread

bb.j:                                             ; preds = %nextc0.exit.thread
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !304
  %.not.i104 = icmp ult ptr %i.af, %i.ah
  br i1 %.not.i104, label %bb.k, label %.critedge.i105, !prof !345

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = and i16 %i.aj, 8
  %.not13.i111 = icmp eq i16 %i.ak, 0
  br i1 %.not13.i111, label %bb.l, label %.critedge.i105, !prof !345

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !346
  %i.an = icmp ugt ptr %i.am, inttoptr (i64 1 to ptr)
  br i1 %i.an, label %.critedge.i105, label %bb.m, !prof !190

.critedge.i105:                                   ; preds = %bb.l, %bb.k, %bb.j
  %i.ao = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i106 = icmp eq i32 %i.ao, 0
  br i1 %.not14.i106, label %.critedge._crit_edge.i108, label %nextc0.exit112

.critedge._crit_edge.i108:                        ; preds = %.critedge.i105
  %.pre.i109 = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %.critedge._crit_edge.i108, %bb.l
  %i.ap = phi ptr [ %.pre.i109, %.critedge._crit_edge.i108 ], [ %i.af, %bb.l ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !57
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !20  ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = icmp eq i8 %i.ar, 13
  br i1 %i.at, label %bb.n, label %nextc0.exit112, !prof !190

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !304
  %.not.i.i110 = icmp ult ptr %i.aq, %i.au
  br i1 %.not.i.i110, label %bb.o, label %nextc0.exit112

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.aw = icmp eq i8 %i.av, 10
  br i1 %i.aw, label %bb.p, label %nextc0.exit112

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !57
  br label %nextc0.exit112

nextc0.exit112:                                   ; preds = %.critedge.i105, %bb.m, %bb.n, %bb.o, %bb.p
  %.011.i107 = phi i32 [ -1, %.critedge.i105 ], [ %i.as, %bb.m ], [ 13, %bb.n ], [ 10, %bb.p ], [ 13, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !372
  %i.bc = tail call i32 %i.bb(i32 noundef range(i32 -1, 256) %.011.i107, i32 noundef 13, ptr noundef %i.az) #29, !inline_history !584
  %.not147 = icmp eq i32 %i.bc, 0
  %.pre149.pre = load ptr, ptr %i.b, align 8, !tbaa !57 ; 3 uses
  br i1 %.not147, label %bb.q, label %bb.r

bb.q:                                             ; preds = %nextc0.exit112
  %i.bd = getelementptr i8, ptr %.pre149.pre, i64 -1
  %.val.val = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.be = icmp slt i8 %.val.val, 0
  br i1 %i.be, label %bb.r, label %bb.v

bb.r:                                             ; preds = %nextc0.exit112, %bb.q
  %i.bf = icmp eq i32 %.011.i107, -1
  br i1 %i.bf, label %pushback.exit, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.r
  %i.bg = phi ptr [ %.pre148, %..thread_crit_edge ], [ %.pre149.pre, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = and i16 %i.bi, -9
  store i16 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -1 ; 6 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bn = icmp ugt ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.s, label %pushback.exit

bb.s:                                             ; preds = %.thread
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !20
  %i.bp = icmp eq i8 %i.bo, 10
  br i1 %i.bp, label %bb.t, label %pushback.exit

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds i8, ptr %i.bg, i64 -2 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = icmp eq i8 %i.br, 13
  br i1 %i.bs, label %bb.u, label %pushback.exit

bb.u:                                             ; preds = %bb.t
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.r, %.thread, %bb.s, %bb.t, %bb.u
  %i.bt = phi ptr [ %i.bq, %bb.u ], [ %i.bk, %.thread ], [ %i.bk, %bb.s ], [ %i.bk, %bb.t ], [ %.pre149.pre, %bb.r ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !304
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !58
  %i.by = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.bt, ptr noundef %i.bv, ptr noundef %i.bx) #29 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %parser_precise_mbclen.exit, label %parser_precise_mbclen.exit.thread

parser_precise_mbclen.exit.thread:                ; preds = %pushback.exit
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !58
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val.i = load ptr, ptr %i.cb, align 8, !tbaa !353
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.618, ptr noundef %.val.i) #29
  br label %switch.lookup

parser_precise_mbclen.exit:                       ; preds = %pushback.exit
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !57
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !58
  %i.ch = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.661, i64 noundef 23, ptr noundef %i.cg) #29
  %i.ci = getelementptr i8, ptr %0, i64 368
  %.val.i113 = load i64, ptr %i.ci, align 8, !tbaa !55
  %i.cj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i113, i64 noundef %i.cf, i32 noundef 1, i64 noundef %i.ch) #29 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 8
  %i.cm = or i16 %i.cl, 512
  store i16 %i.cm, ptr %i.ck, align 8
  br label %switch.lookup

bb.v:                                             ; preds = %bb.i, %bb.q
  %.191 = phi i32 [ %.090135, %bb.q ], [ 81, %bb.i ]
  %.1 = phi i32 [ %.011.i107, %bb.q ], [ %.090135, %bb.i ] ; 6 uses
  switch i32 %.1, label %bb.z [
    i32 -1, label %nextc0.exit.thread136
    i32 40, label %bb.aa
    i32 91, label %bb.w
    i32 123, label %bb.x
    i32 60, label %bb.y
  ]

nextc0.exit.thread136:                            ; preds = %bb.av, %.critedge.i, %bb.v
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.662) #29
  br label %switch.lookup

bb.w:                                             ; preds = %bb.v
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.y, %bb.z, %bb.x
  %.2 = phi i32 [ %.1, %bb.z ], [ 93, %bb.w ], [ 125, %bb.x ], [ 62, %bb.y ], [ 41, %bb.v ] ; 9 uses
  %.0 = phi i32 [ 0, %bb.z ], [ %.1, %bb.w ], [ %.1, %bb.x ], [ %.1, %bb.y ], [ %.1, %bb.v ] ; 9 uses
  %i.cn = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !50
  switch i32 %.191, label %bb.al [
    i32 81, label %bb.ab
    i32 113, label %bb.ac
    i32 87, label %bb.ad
    i32 119, label %bb.ae
    i32 73, label %bb.af
    i32 105, label %bb.ag
    i32 120, label %bb.ah
    i32 114, label %bb.ai
    i32 115, label %bb.aj
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 2, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i32 %.2, ptr %i.cr, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i32 %.0, ptr %i.cs, align 4, !tbaa !20
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ac:                                            ; preds = %bb.aa
  %i.ct = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 %.2, ptr %i.cv, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %.0, ptr %i.cw, align 4, !tbaa !20
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ad:                                            ; preds = %bb.aa
  %i.cx = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 16394, ptr %i.cy, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 %.2, ptr %i.cz, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 %.0, ptr %i.da, align 4, !tbaa !20
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ae:                                            ; preds = %bb.aa
  %i.db = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 16392, ptr %i.dc, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %.2, ptr %i.dd, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  store i32 %.0, ptr %i.de, align 4, !tbaa !20
  store ptr %i.db, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.af:                                            ; preds = %bb.aa
  %i.df = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i32 16394, ptr %i.dg, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 %.2, ptr %i.dh, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i32 %.0, ptr %i.di, align 4, !tbaa !20
  store ptr %i.df, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ag:                                            ; preds = %bb.aa
  %i.dj = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 16392, ptr %i.dk, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i32 %.2, ptr %i.dl, align 8, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 %.0, ptr %i.dm, align 4, !tbaa !20
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ah:                                            ; preds = %bb.aa
  %i.dn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 2, ptr %i.do, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %.2, ptr %i.dp, align 8, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %.0, ptr %i.dq, align 4, !tbaa !20
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !168
  br label %switch.lookup

bb.ai:                                            ; preds = %bb.aa
  %i.dr = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
end_hunk_2
begin_hunk_3_@parse_gvar:bb.a
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !58
  %i.fe = tail call i64 @rb_intern3(ptr noundef %i.ez, i64 noundef %i.fb, ptr noundef %i.fd) #29 ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !47
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !20
  %i.fg = tail call i64 @rb_id2sym(i64 noundef %i.fe) #29
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !56
  br label %pushback.exit

bb.al:                                            ; preds = %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit
  %i.fi = and i32 %1, 128
  %.not96 = icmp eq i32 %i.fi, 0
  br i1 %.not96, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.fk = load i32, ptr %i.n, align 8, !tbaa !367 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.n, align 8, !tbaa !367
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  store i8 36, ptr %i.fn, align 1, !tbaa !20
  %i.fo = load i32, ptr %i.n, align 8, !tbaa !367 ; 2 uses
  %i.fp = load i32, ptr %i.t, align 4, !tbaa !341 ; 2 uses
  %.not.i135 = icmp slt i32 %i.fo, %i.fp
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !338 ; 2 uses
  br i1 %.not.i135, label %tokadd.exit136, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = shl nsw i32 %i.fp, 1                    ; 2 uses
  store i32 %i.fq, ptr %i.t, align 4, !tbaa !341
  %i.fr = sext i32 %i.fq to i64
  %i.fs = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.fr, i64 noundef 1) #36 ; 2 uses
  store ptr %i.fs, ptr %i.o, align 8, !tbaa !338
  %.pre190 = load i32, ptr %i.n, align 8, !tbaa !367
  br label %tokadd.exit136

tokadd.exit136:                                   ; preds = %bb.am, %bb.an
  %i.ft = phi i32 [ %i.fo, %bb.am ], [ %.pre190, %bb.an ] ; 2 uses
  %i.fu = phi ptr [ %.pre, %bb.am ], [ %i.fs, %bb.an ]
  %i.fv = add nsw i32 %i.ft, 1
  store i32 %i.fv, ptr %i.n, align 8, !tbaa !367
  %i.fw = sext i32 %i.ft to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fw
  store i8 %i.ai, ptr %i.fx, align 1, !tbaa !20
  %i.fy = load i32, ptr %i.n, align 8, !tbaa !367
  %i.fz = load i32, ptr %i.t, align 4, !tbaa !341 ; 2 uses
  %.not.i137 = icmp slt i32 %i.fy, %i.fz
  %.pre196 = load ptr, ptr %i.o, align 8, !tbaa !338 ; 2 uses
  br i1 %.not.i137, label %tokadd.exit117, label %bb.ao

bb.ao:                                            ; preds = %tokadd.exit136
  %i.ga = shl nsw i32 %i.fz, 1                    ; 2 uses
  store i32 %i.ga, ptr %i.t, align 4, !tbaa !341
  %i.gb = sext i32 %i.ga to i64
  %i.gc = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre196, i64 noundef %i.gb, i64 noundef 1) #36 ; 2 uses
  store ptr %i.gc, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit117

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.gd = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %2) #29 ; 0 uses
  %i.ge = zext nneg i8 %i.ai to i64
  %i.gf = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gg = call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 55, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.gg, i32 noundef range(i32 0, 115) 55) #29
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.gi = load i32, ptr %2, align 4, !tbaa !62
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load i64, ptr %i.gg, align 8, !tbaa !70
  %i.gl = and i64 %i.gk, 32767
  %i.gm = shl nsw i64 %i.gj, 15
  %i.gn = or disjoint i64 %i.gl, %i.gm
  store i64 %i.gn, ptr %i.gg, align 8, !tbaa !70
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !194 ; 2 uses
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !194
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store i32 %i.gp, ptr %i.gr, align 8, !tbaa !195
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store i64 %i.ge, ptr %i.gs, align 8, !tbaa !79
  %i.gt = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.gg, ptr %i.gt, align 8, !tbaa !20
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %i.gv = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !58
  %i.hb = call i64 @rb_enc_str_new(ptr noundef %i.gu, i64 noundef %i.gy, ptr noundef %i.ha) #29
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %pushback.exit

bb.aq:                                            ; preds = %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit, %nextc0.exit
  %i.hd = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.he = load i32, ptr %i.n, align 8, !tbaa !367 ; 2 uses
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.n, align 8, !tbaa !367
  %i.hg = sext i32 %i.he to i64
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 %i.hg
  store i8 36, ptr %i.hh, align 1, !tbaa !20
  %i.hi = load i32, ptr %i.n, align 8, !tbaa !367
  %i.hj = load i32, ptr %i.t, align 4, !tbaa !341 ; 2 uses
  %.not.i139 = icmp slt i32 %i.hi, %i.hj
  br i1 %.not.i139, label %tokadd.exit140, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = shl nsw i32 %i.hj, 1                    ; 2 uses
  store i32 %i.hk, ptr %i.t, align 4, !tbaa !341
  %i.hl = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.hm = sext i32 %i.hk to i64
  %i.hn = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hl, i64 noundef %i.hm, i64 noundef 1) #36
  store ptr %i.hn, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit140

tokadd.exit140:                                   ; preds = %bb.aq, %bb.ar
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.as

bb.as:                                            ; preds = %bb.az, %tokadd.exit140
  %.1 = phi i8 [ %i.ai, %tokadd.exit140 ], [ %i.ij, %bb.az ]
  %i.hp = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.hq = load i32, ptr %i.n, align 8, !tbaa !367 ; 2 uses
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.n, align 8, !tbaa !367
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 %i.hs
  store i8 %.1, ptr %i.ht, align 1, !tbaa !20
  %i.hu = load i32, ptr %i.n, align 8, !tbaa !367
  %i.hv = load i32, ptr %i.t, align 4, !tbaa !341 ; 2 uses
  %.not.i141 = icmp slt i32 %i.hu, %i.hv
  br i1 %.not.i141, label %tokadd.exit142, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hw = shl nsw i32 %i.hv, 1                    ; 2 uses
  store i32 %i.hw, ptr %i.t, align 4, !tbaa !341
  %i.hx = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.hy = sext i32 %i.hw to i64
  %i.hz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.hx, i64 noundef %i.hy, i64 noundef 1) #36
  store ptr %i.hz, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit142

tokadd.exit142:                                   ; preds = %bb.as, %bb.at
  %i.ia = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %i.ib = load ptr, ptr %i.y, align 8, !tbaa !304
  %.not.i143 = icmp ult ptr %i.ia, %i.ib
  br i1 %.not.i143, label %bb.au, label %.critedge.i144, !prof !345

bb.au:                                            ; preds = %tokadd.exit142
  %i.ic = load i16, ptr %i.e, align 8
  %i.id = and i16 %i.ic, 8
  %.not13.i150 = icmp eq i16 %i.id, 0
  br i1 %.not13.i150, label %bb.av, label %.critedge.i144, !prof !345

bb.av:                                            ; preds = %bb.au
  %i.ie = load ptr, ptr %i.ho, align 8, !tbaa !346
  %i.if = icmp ugt ptr %i.ie, inttoptr (i64 1 to ptr)
  br i1 %i.if, label %.critedge.i144, label %bb.aw, !prof !190

.critedge.i144:                                   ; preds = %bb.av, %bb.au, %tokadd.exit142
  %i.ig = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i145 = icmp eq i32 %i.ig, 0
  br i1 %.not14.i145, label %.critedge._crit_edge.i147, label %.critedge

.critedge._crit_edge.i147:                        ; preds = %.critedge.i144
  %.pre.i148 = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge._crit_edge.i147, %bb.av
  %i.ih = phi ptr [ %.pre.i148, %.critedge._crit_edge.i147 ], [ %i.ia, %bb.av ] ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.c, align 8, !tbaa !57
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !20  ; 3 uses
  %i.ik = icmp eq i8 %i.ij, 13
  br i1 %i.ik, label %bb.ax, label %bb.az, !prof !190

bb.ax:                                            ; preds = %bb.aw
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 1 ; 4 uses
  %i.im = load ptr, ptr %i.y, align 8, !tbaa !304
  %.not.i.i149 = icmp ult ptr %i.il, %i.im
  br i1 %.not.i.i149, label %bb.ay, label %.split

bb.ay:                                            ; preds = %bb.ax
  %i.in = load i8, ptr %i.il, align 1, !tbaa !20
  %i.io = icmp eq i8 %i.in, 10
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %spec.select = select i1 %i.io, ptr %i.ip, ptr %i.il
  br label %.split

bb.az:                                            ; preds = %bb.aw
  %i.iq = add i8 %i.ij, -58
  %i.ir = icmp ult i8 %i.iq, -10
  br i1 %i.ir, label %.split.loopexit, label %bb.as, !llvm.loop !585

.split.loopexit:                                  ; preds = %bb.az
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  br label %.split

.split:                                           ; preds = %bb.ay, %.split.loopexit, %bb.ax
  %i.it = phi ptr [ %spec.select, %bb.ay ], [ %i.il, %bb.ax ], [ %i.is, %.split.loopexit ] ; 2 uses
  %i.iu = load i16, ptr %i.e, align 8
  %i.iv = and i16 %i.iu, -9
  store i16 %i.iv, ptr %i.e, align 8
  %i.iw = getelementptr inbounds i8, ptr %i.it, i64 -1 ; 3 uses
  store ptr %i.iw, ptr %i.c, align 8, !tbaa !57
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !53
  %i.iz = icmp ugt ptr %i.iw, %i.iy
  br i1 %i.iz, label %bb.ba, label %.critedge, !llvm.loop !585

bb.ba:                                            ; preds = %.split
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !20
  %i.jb = icmp eq i8 %i.ja, 10
  br i1 %i.jb, label %bb.bb, label %.critedge, !llvm.loop !585

bb.bb:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds i8, ptr %i.it, i64 -2 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !20
  %i.je = icmp eq i8 %i.jd, 13
  br i1 %i.je, label %bb.bc, label %.critedge, !llvm.loop !585

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.jc, ptr %i.c, align 8, !tbaa !57
  br label %.critedge, !llvm.loop !585

.critedge:                                        ; preds = %.critedge.i144, %bb.bc, %bb.bb, %bb.ba, %.split
  %i.jf = and i32 %1, 128
  %.not95 = icmp eq i32 %i.jf, 0
  %.pre198 = load ptr, ptr %i.o, align 8, !tbaa !338 ; 2 uses
  br i1 %.not95, label %bb.bd, label %tokadd.exit117

bb.bd:                                            ; preds = %.critedge
  %i.jg = load i32, ptr %i.n, align 8, !tbaa !367
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %.pre198, i64 %i.jh
  store i8 0, ptr %i.ji, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.jj = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %i.jl = load i32, ptr %i.n, align 8, !tbaa !367
  %i.jm = add nsw i32 %i.jl, -1
  %i.jn = sext i32 %i.jm to i64
  %i.jo = call i64 @ruby_scan_digits(ptr noundef nonnull %i.jk, i64 noundef %i.jn, i32 noundef 10, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #29 ; 2 uses
  %i.jp = load i32, ptr %i.b, align 4, !tbaa !19
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = icmp ugt i64 %i.jo, 1073741823
  %or.cond.i153 = select i1 %i.jq, i1 true, i1 %i.jr
  br i1 %or.cond.i153, label %bb.be, label %parse_numvar.exit

bb.be:                                            ; preds = %bb.bd
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !55
  %i.ju = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.jv = call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.667, i64 noundef 49) #29
  %i.jw = load ptr, ptr %i.o, align 8, !tbaa !338 ; 2 uses
  %i.jx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jw) #32
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !58
  %i.ka = call i64 @rb_enc_str_new(ptr noundef nonnull %i.jw, i64 noundef %i.jx, ptr noundef %i.jz) #29
  %i.kb = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.jt, i64 noundef %i.ju, i32 noundef 2, i64 noundef %i.jv, i64 noundef %i.ka) #29 ; 0 uses
  br label %parse_numvar.exit

parse_numvar.exit:                                ; preds = %bb.bd, %bb.be
  %.0.i154 = phi i64 [ 0, %bb.be ], [ %i.jo, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.kc = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef nonnull %3) #29 ; 0 uses
  %i.kd = getelementptr i8, ptr %0, i64 288
  %.val.i.i155 = load ptr, ptr %i.kd, align 8, !tbaa !124
  %i.ke = call ptr @rb_ast_newnode(ptr noundef %.val.i.i155, i32 noundef range(i32 0, 115) 54, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  call void @rb_node_init(ptr noundef %i.ke, i32 noundef range(i32 0, 115) 54) #29
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.kg = load i32, ptr %3, align 4, !tbaa !62
  %i.kh = sext i32 %i.kg to i64
  %i.ki = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.kj = and i64 %i.ki, 32767
  %i.kk = shl nsw i64 %i.kh, 15
  %i.kl = or disjoint i64 %i.kj, %i.kk
  store i64 %i.kl, ptr %i.ke, align 8, !tbaa !70
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !194 ; 2 uses
  %i.ko = add nsw i32 %i.kn, 1
  store i32 %i.ko, ptr %i.km, align 8, !tbaa !194
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i32 %i.kn, ptr %i.kp, align 8, !tbaa !195
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  store i64 %.0.i154, ptr %i.kq, align 8, !tbaa !351
  %i.kr = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.ke, ptr %i.kr, align 8, !tbaa !20
  %i.ks = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %i.kt = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !58
  %i.kz = call i64 @rb_enc_str_new(ptr noundef %i.ks, i64 noundef %i.kw, ptr noundef %i.ky) #29
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %pushback.exit

nextc0.exit.thread:                               ; preds = %bb.j, %bb.k, %bb.i, %.critedge.i, %nextc0.exit
  %.011.i166 = phi i32 [ %i.ao, %nextc0.exit ], [ 13, %bb.j ], [ 10, %bb.k ], [ 13, %bb.i ], [ -1, %.critedge.i ] ; 5 uses
  %i.lb = load i16, ptr %i.e, align 8
  %i.lc = and i16 %i.lb, 8
  %.not.i156 = icmp eq i16 %i.lc, 0
  br i1 %.not.i156, label %bb.bf, label %parser_is_identchar.exit159.thread180

bb.bf:                                            ; preds = %nextc0.exit.thread
  %i.ld = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -1 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !58 ; 2 uses
  %i.lh = load i8, ptr %i.le, align 1, !tbaa !20
  %i.li = zext i8 %i.lh to i32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 88
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !372
  %i.ll = tail call i32 %i.lk(i32 noundef range(i32 -1, 256) %i.li, i32 noundef 13, ptr noundef %i.lg) #29, !inline_history !8
  %.not.i.i157 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i157, label %bb.bg, label %parser_is_identchar.exit159.thread

bb.bg:                                            ; preds = %bb.bf
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !20  ; 2 uses
  %i.ln = icmp ne i8 %i.lm, 95
  %.not99 = icmp sgt i8 %i.lm, -1
  %or.cond184 = and i1 %i.ln, %.not99
  br i1 %or.cond184, label %parser_is_identchar.exit159.thread180, label %parser_is_identchar.exit159.thread

parser_is_identchar.exit159.thread180:            ; preds = %bb.bg, %nextc0.exit.thread
  switch i32 %.011.i166, label %bb.bi [
    i32 -1, label %bb.bh
    i32 32, label %bb.bh
    i32 13, label %bb.bh
    i32 12, label %bb.bh
    i32 11, label %bb.bh
    i32 10, label %bb.bh
    i32 9, label %bb.bh
  ]

bb.bh:                                            ; preds = %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180, %parser_is_identchar.exit159.thread180
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.664) #29
  br label %bb.bj

bb.bi:                                            ; preds = %parser_is_identchar.exit159.thread180
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i166)
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.665, i32 noundef %.011.i166) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lo = load ptr, ptr %0, align 8, !tbaa !47
  store i64 289, ptr %i.lo, align 8, !tbaa !20
  br label %pushback.exit

parser_is_identchar.exit159.thread:               ; preds = %bb.bf, %bb.bg, %nextc0.exit
  %.011.i167 = phi i32 [ %.011.i166, %bb.bf ], [ 48, %nextc0.exit ], [ %.011.i166, %bb.bg ] ; 2 uses
  %i.lp = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.lq = load i32, ptr %i.n, align 8, !tbaa !367 ; 2 uses
  %i.lr = add nsw i32 %i.lq, 1
  store i32 %i.lr, ptr %i.n, align 8, !tbaa !367
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 %i.ls
  store i8 36, ptr %i.lt, align 1, !tbaa !20
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !367
  %i.lv = load i32, ptr %i.t, align 4, !tbaa !341 ; 2 uses
  %.not.i160 = icmp slt i32 %i.lu, %i.lv
  br i1 %.not.i160, label %tokadd.exit161, label %bb.bk

bb.bk:                                            ; preds = %parser_is_identchar.exit159.thread
  %i.lw = shl nsw i32 %i.lv, 1                    ; 2 uses
  store i32 %i.lw, ptr %i.t, align 4, !tbaa !341
  %i.lx = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.ly = sext i32 %i.lw to i64
  %i.lz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.lx, i64 noundef %i.ly, i64 noundef 1) #36
  store ptr %i.lz, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit161

tokadd.exit161:                                   ; preds = %bb.bk, %parser_is_identchar.exit159.thread, %parser_is_identchar.exit.thread
  %.2 = phi i32 [ %.011.i107, %parser_is_identchar.exit.thread ], [ %.011.i167, %parser_is_identchar.exit159.thread ], [ %.011.i167, %bb.bk ]
  %i.ma = tail call fastcc i32 @tokadd_ident(ptr noundef nonnull %0, i32 noundef %.2)
  %.not101 = icmp eq i32 %i.ma, 0
  br i1 %.not101, label %bb.bl, label %pushback.exit

bb.bl:                                            ; preds = %tokadd.exit161
  %i.mb = load i16, ptr %i.e, align 8
  %i.mc = and i16 %i.mb, 32
  %.not.i162 = icmp eq i16 %i.mc, 0
  br i1 %.not.i162, label %parser_set_lex_state.exit164, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.md = load i32, ptr %i.k, align 8, !tbaa !68
  %i.me = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.md, i32 noundef 2, i32 noundef 10256) #29
  br label %parser_set_lex_state.exit164

parser_set_lex_state.exit164:                     ; preds = %bb.bl, %bb.bm
  %.0.i163 = phi i32 [ %i.me, %bb.bm ], [ 2, %bb.bl ]
  store i32 %.0.i163, ptr %i.k, align 8, !tbaa !68
  %i.mf = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.mg = load i32, ptr %i.n, align 8, !tbaa !367
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !58
  %i.mk = tail call i32 @rb_enc_symname_type(ptr noundef %i.mf, i64 noundef %i.mh, ptr noundef %i.mj, i32 noundef 64) #29
  %i.ml = icmp eq i32 %i.mk, 6
  br i1 %i.ml, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %parser_set_lex_state.exit164
  tail call fastcc void @tokenize_ident(ptr noundef nonnull %0)
  br label %pushback.exit

bb.bo:                                            ; preds = %parser_set_lex_state.exit164
  %i.mm = load i32, ptr %i.n, align 8, !tbaa !367
  %i.mn = load ptr, ptr %i.o, align 8, !tbaa !338
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.666, i32 noundef %i.mm, ptr noundef %i.mn) #29
  %i.mo = load ptr, ptr %0, align 8, !tbaa !47
  store i64 289, ptr %i.mo, align 8, !tbaa !20
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %parser_is_identchar.exit134.thread172, %bb.bn, %bb.bo, %tokadd.exit161, %parser_is_identchar.exit134.thread, %bb.bj, %parse_numvar.exit, %bb.ap, %tokadd.exit117
  %.089 = phi i32 [ 0, %parser_is_identchar.exit134.thread ], [ 0, %tokadd.exit161 ], [ 309, %bb.bj ], [ 309, %tokadd.exit117 ], [ 319, %parse_numvar.exit ], [ 309, %bb.bn ], [ 320, %bb.ap ], [ 309, %bb.bo ], [ 36, %parser_is_identchar.exit134.thread172 ], [ 36, %bb.ai ], [ 36, %bb.aj ], [ 36, %bb.ak ]
  ret i32 %.089
end_hunk_3
begin_hunk_4_@whole_match_p:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt ptr %i.f, %.72.val
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %.88.val, i64 -2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
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
  %i.q = getelementptr inbounds i8, ptr %.1, i64 %i.p ; 3 uses
  %i.r = tail call i32 @strncmp(ptr noundef %0, ptr noundef %i.q, i64 noundef %1) #32
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
  %i.v = load i8, ptr %.0263, align 1, !tbaa !20  ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 32
  %i.y = add nsw i32 %i.w, -14
  %i.z = icmp ult i32 %i.y, -5
  %narrow.i.not = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.0263, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !6

.critedge:                                        ; preds = %bb.i, %.lr.ph, %bb.h
  %.127 = phi ptr [ %.72.val, %bb.h ], [ %.0263, %.lr.ph ], [ %scevgep, %bb.i ]
  %i.ab = icmp eq ptr %.127, %i.q
  %i.ac = zext i1 %i.ab to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.a, %.critedge
  %.028 = phi i32 [ %i.ac, %.critedge ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define internal fastcc void @newtok(ptr nofree noundef captures(none) initializes((136, 140)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.a, align 8, !tbaa !367
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.d, align 4, !tbaa !341
  %i.e = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !338
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !341
  %i.i = icmp sgt i32 %i.h, 4096
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 60, ptr %i.g, align 4, !tbaa !341
  %i.j = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.f, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.j, ptr %i.b, align 8, !tbaa !338
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -32768, 32768) i32 @parse_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %.thread204, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp ult i32 %1, 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %spec.select228 = phi i1 [ %i.e, %.lr.ph ], [ %spec.select, %.critedge.backedge ] ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !304
  %.not.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !345

bb.c:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.h, align 8
  %i.n = and i16 %i.m, 8
  %.not13.i = icmp eq i16 %i.n, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !345

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !346
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %.critedge.i, label %bb.e, !prof !190

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.q = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.s, ptr %i.f, align 8, !tbaa !57
  %i.t = load i8, ptr %i.r, align 1, !tbaa !20    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 13
  br i1 %i.v, label %bb.f, label %nextc0.exit, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !20
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !57
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i16, ptr %i.h, align 8
  %i.ab = and i16 %i.aa, 8
  %.not.i156 = icmp eq i16 %i.ab, 0
  br i1 %.not.i156, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !58  ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !372
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #29, !inline_history !8
  %.not.i.i157 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i157, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !20  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select217 = and i1 %i.al, %i.am
  br i1 %spec.select217, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select228, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread204, label %bb.b, !llvm.loop !586

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread202_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre236.pre = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %bb.o

parser_is_identchar.exit.thread..thread202_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %.thread202

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !57  ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !304
  %.not131 = icmp ult ptr %i.as, %i.at
  br i1 %.not131, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !20
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !367 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !367
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  store i8 %i.aw, ptr %i.bd, align 1, !tbaa !20
  %i.be = load i32, ptr %i.az, align 8, !tbaa !367
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !341 ; 2 uses
  %.not.i158 = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i158, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = shl nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !341
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !338
  %i.bj = sext i32 %i.bh to i64
  %i.bk = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef 1) #36
  store ptr %i.bk, ptr %i.ax, align 8, !tbaa !338
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %.011.i, 61
  br i1 %i.bl, label %bb.o, label %.thread202

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre236 = phi ptr [ %.pre236.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.as, %bb.n ] ; 8 uses
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !68
  %i.bn = and i32 %i.bm, 128
  %.not132 = icmp eq i32 %i.bn, 0
  br i1 %.not132, label %.thread202, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !304 ; 2 uses
  %.not133 = icmp ult ptr %.pre236, %i.bo
  br i1 %.not133, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bp = load i8, ptr %.pre236, align 1, !tbaa !20
  switch i8 %i.bp, label %bb.t [
    i8 126, label %.thread202
    i8 62, label %.thread202
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre236, i64 1 ; 2 uses
  %.not136 = icmp ult ptr %i.bq, %i.bo
  br i1 %.not136, label %bb.s, label %.thread202

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !20
  %i.bs = icmp eq i8 %i.br, 62
  br i1 %i.bs, label %bb.t, label %.thread202

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !338
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !367 ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !367
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.by
  store i8 61, ptr %i.bz, align 1, !tbaa !20
  %i.ca = load i32, ptr %i.bv, align 8, !tbaa !367
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !341 ; 2 uses
  %.not.i159 = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i159, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = shl nsw i32 %i.cc, 1                    ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !341
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !338
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #36
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !338
  br label %tokadd.exit

.thread202:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread202_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.ch = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread202_crit_edge ], [ %i.as, %bb.n ], [ %.pre236, %bb.o ], [ %.pre236, %bb.q ], [ %.pre236, %bb.q ], [ %.pre236, %bb.r ], [ %.pre236, %bb.s ] ; 2 uses
  %i.ci = load i16, ptr %i.h, align 8
  %i.cj = and i16 %i.ci, -9
  store i16 %i.cj, ptr %i.h, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -1 ; 3 uses
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %i.cn = icmp ugt ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread202
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds i8, ptr %i.ch, i64 -2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cs = icmp eq i8 %i.cr, 13
  br i1 %i.cs, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.cq, ptr %i.f, align 8, !tbaa !57
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread202, %bb.u, %bb.t, %bb.m, %bb.l
  %i.ct = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread202 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0115 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread202 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !20
  %i.da = load i32, ptr %i.a, align 8, !tbaa !68  ; 5 uses
  %i.db = and i32 %i.da, 1032
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp ne i32 %2, 0                       ; 2 uses
  %or.cond3 = or i1 %i.dd, %i.dc
  %i.de = and i32 %i.da, 48
  %.not137 = icmp eq i32 %i.de, 0
  %or.cond = and i1 %.not137, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !57  ; 4 uses
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !304 ; 3 uses
  %.not138 = icmp ult ptr %i.df, %i.dg
  br i1 %.not138, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !20
  %i.di = icmp eq i8 %i.dh, 58
  br i1 %i.di, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %.not139 = icmp ult ptr %i.dj, %i.dg
  br i1 %.not139, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !20
  %i.dl = icmp eq i8 %i.dk, 58
  br i1 %i.dl, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = load i16, ptr %i.h, align 8
  %i.dn = and i16 %i.dm, 32
  %.not.i161 = icmp eq i16 %i.dn, 0
  br i1 %.not.i161, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef 2064, i32 noundef 10371) #29
  %.pre237 = load ptr, ptr %i.f, align 8, !tbaa !57
  %.pre238 = load ptr, ptr %i.g, align 8, !tbaa !304
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.dp = phi ptr [ %.pre238, %bb.ad ], [ %i.dg, %bb.ac ]
  %i.dq = phi ptr [ %.pre237, %bb.ad ], [ %i.df, %bb.ac ] ; 2 uses
  %.0.i = phi i32 [ %i.do, %bb.ad ], [ 2064, %bb.ac ]
  store i32 %.0.i, ptr %i.a, align 8, !tbaa !68
  %.not.i162 = icmp ult ptr %i.dq, %i.dp
  br i1 %.not.i162, label %bb.ae, label %.critedge.i163, !prof !345

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.dr = load i16, ptr %i.h, align 8
  %i.ds = and i16 %i.dr, 8
  %.not13.i169 = icmp eq i16 %i.ds, 0
  br i1 %.not13.i169, label %bb.af, label %.critedge.i163, !prof !345

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !346
  %i.du = icmp ugt ptr %i.dt, inttoptr (i64 1 to ptr)
  br i1 %i.du, label %.critedge.i163, label %bb.ag, !prof !190

.critedge.i163:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.dv = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i164 = icmp eq i32 %i.dv, 0
  br i1 %.not14.i164, label %.critedge._crit_edge.i166, label %nextc0.exit170

.critedge._crit_edge.i166:                        ; preds = %.critedge.i163
  %.pre.i167 = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i166, %bb.af
  %i.dw = phi ptr [ %.pre.i167, %.critedge._crit_edge.i166 ], [ %i.dq, %bb.af ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !57
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !20
  %i.dz = icmp eq i8 %i.dy, 13
  br i1 %i.dz, label %bb.ah, label %nextc0.exit170, !prof !190

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !304
  %.not.i.i168 = icmp ult ptr %i.dx, %i.ea
  br i1 %.not.i.i168, label %bb.ai, label %nextc0.exit170

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %bb.aj, label %nextc0.exit170

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  store ptr %i.ed, ptr %i.f, align 8, !tbaa !57
  br label %nextc0.exit170

nextc0.exit170:                                   ; preds = %.critedge.i163, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ee = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.ef = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.ei = tail call i64 @rb_intern3(ptr noundef %i.ee, i64 noundef %i.eg, ptr noundef %i.eh) #29 ; 2 uses
  %i.ej = load ptr, ptr %0, align 8, !tbaa !47
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !20
  %i.ek = tail call i64 @rb_id2sym(i64 noundef %i.ei) #29
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !56
  br label %.thread204

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.em = and i32 %i.da, 256
  %i.en = icmp eq i32 %i.em, 0
  %or.cond211 = and i1 %spec.select228, %i.en
  br i1 %or.cond211, label %bb.al, label %bb.bf

bb.al:                                            ; preds = %bb.ak
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.ep = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.eq = tail call ptr @rb_reserved_word(ptr noundef %i.eo, i32 noundef %i.ep) #29 ; 5 uses
  %.not140 = icmp eq ptr %i.eq, null
  %.pre240 = load i32, ptr %i.a, align 8, !tbaa !68 ; 6 uses
  br i1 %.not140, label %bb.bf, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.er = and i32 %.pre240, 128
  %.not141 = icmp eq i32 %i.er, 0
  br i1 %.not141, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = load i16, ptr %i.h, align 8
  %i.et = and i16 %i.es, 32
  %.not.i171 = icmp eq i16 %i.et, 0
  br i1 %.not.i171, label %parser_set_lex_state.exit173, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef 8, i32 noundef 10412) #29
  br label %parser_set_lex_state.exit173

parser_set_lex_state.exit173:                     ; preds = %bb.an, %bb.ao
  %.0.i172 = phi i32 [ %i.eu, %bb.ao ], [ 8, %bb.an ]
  store i32 %.0.i172, ptr %i.a, align 8, !tbaa !68
  %i.ev = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.ew = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.ex = sext i32 %i.ew to i64
  %i.ey = tail call i64 @rb_intern2(ptr noundef %i.ev, i64 noundef %i.ex) #29
  %i.ez = load ptr, ptr %0, align 8, !tbaa !47
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !20
  %i.fa = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.fb = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.fc = sext i32 %i.fb to i64
  %i.fd = tail call i64 @rb_intern2(ptr noundef %i.fa, i64 noundef %i.fc) #29
  %i.fe = tail call i64 @rb_id2sym(i64 noundef %i.fd) #29
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !25
  %i.fi = sext i16 %i.fh to i32
  br label %.thread204

bb.ap:                                            ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !588
  %i.fl = sext i16 %i.fk to i32                   ; 2 uses
  %i.fm = load i16, ptr %i.h, align 8
  %i.fn = and i16 %i.fm, 32
  %.not.i174 = icmp eq i16 %i.fn, 0
  br i1 %.not.i174, label %parser_set_lex_state.exit176, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef %i.fl, i32 noundef 10416) #29
  br label %parser_set_lex_state.exit176

parser_set_lex_state.exit176:                     ; preds = %bb.ap, %bb.aq
  %.0.i175 = phi i32 [ %i.fo, %bb.aq ], [ %i.fl, %bb.ap ] ; 3 uses
  store i32 %.0.i175, ptr %i.a, align 8, !tbaa !68
  %i.fp = and i32 %.0.i175, 1
  %.not142 = icmp eq i32 %i.fp, 0
  br i1 %.not142, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %parser_set_lex_state.exit176
  %i.fq = load i16, ptr %i.h, align 8
  %i.fr = or i16 %i.fq, 4
  store i16 %i.fr, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %parser_set_lex_state.exit176
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !25 ; 3 uses
  %i.fu = icmp eq i16 %i.ft, 281
  br i1 %i.fu, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !171
  %i.fz = icmp eq i32 %i.fw, %i.fy
  br i1 %i.fz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 -1, ptr %i.fv, align 8, !tbaa !157
  br label %.thread204

bb.av:                                            ; preds = %bb.at
  %i.ga = load i16, ptr %i.h, align 8
  %i.gb = and i16 %i.ga, 32
  %.not145 = icmp eq i16 %i.gb, 0
  br i1 %.not145, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !105
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.gd, ptr noundef nonnull @.str.672, i32 noundef 10425) #29
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !105
  %i.gg = and i64 %i.gf, 1
  %.not146 = icmp eq i64 %i.gg, 0
  br i1 %.not146, label %bb.ay, label %.thread204

bb.ay:                                            ; preds = %bb.ax
  %i.gh = load i16, ptr %i.h, align 8
  %i.gi = and i16 %i.gh, 32
  %.not147 = icmp eq i16 %i.gi, 0
  br i1 %.not147, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !116
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.gk, ptr noundef nonnull @.str.673, i32 noundef 10426) #29
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !116
  %.not148 = trunc i64 %i.gm to i1
  %i.gn = and i32 %.pre240, 32
  %.not149 = icmp eq i32 %i.gn, 0
  %or.cond153 = and i1 %.not149, %.not148
  %spec.select155 = select i1 %or.cond153, i32 283, i32 281
  br label %.thread204

bb.bb:                                            ; preds = %bb.as
  %i.go = sext i16 %i.ft to i32                   ; 2 uses
  %i.gp = and i32 %.pre240, 2561
  %.not143 = icmp eq i32 %i.gp, 0
  br i1 %.not143, label %bb.bc, label %.thread204

bb.bc:                                            ; preds = %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !25 ; 2 uses
  %.not144 = icmp eq i16 %i.ft, %i.gr
  br i1 %.not144, label %.thread204, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gs = load i16, ptr %i.h, align 8
  %i.gt = and i16 %i.gs, 32
  %.not.i177 = icmp eq i16 %i.gt, 0
  br i1 %.not.i177, label %parser_set_lex_state.exit179, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.0.i175, i32 noundef 1025, i32 noundef 10434) #29
  %.pre239.pre = load i16, ptr %i.gq, align 2, !tbaa !25
  br label %parser_set_lex_state.exit179

parser_set_lex_state.exit179:                     ; preds = %bb.bd, %bb.be
  %.pre239 = phi i16 [ %.pre239.pre, %bb.be ], [ %i.gr, %bb.bd ]
  %.0.i178 = phi i32 [ %i.gu, %bb.be ], [ 1025, %bb.bd ]
  store i32 %.0.i178, ptr %i.a, align 8, !tbaa !68
  %.pre243 = sext i16 %.pre239 to i32
  br label %.thread204

bb.bf:                                            ; preds = %bb.al, %bb.ak
  %i.gv = phi i32 [ %.pre240, %bb.al ], [ %i.da, %bb.ak ] ; 5 uses
  %i.gw = and i32 %i.gv, 881
  %.not150 = icmp eq i32 %i.gw, 0
  br i1 %.not150, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gx = load i16, ptr %i.h, align 8
  %i.gy = and i16 %i.gx, 32
  %.not.i180 = icmp eq i16 %i.gy, 0               ; 2 uses
  br i1 %i.dd, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i180, label %parser_set_lex_state.exit182, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.gv, i32 noundef 32, i32 noundef 10442) #29
  br label %parser_set_lex_state.exit182

bb.bj:                                            ; preds = %bb.bg
  br i1 %.not.i180, label %parser_set_lex_state.exit182, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.gv, i32 noundef 16, i32 noundef 10445) #29
  br label %parser_set_lex_state.exit182

bb.bl:                                            ; preds = %bb.bf
  %i.hb = icmp eq i32 %i.gv, 128
  %i.hc = load i16, ptr %i.h, align 8
  %i.hd = and i16 %i.hc, 32
  %.not.i186 = icmp eq i16 %i.hd, 0               ; 2 uses
  br i1 %i.hb, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not.i186, label %parser_set_lex_state.exit182, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.he = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef 128, i32 noundef 8, i32 noundef 10449) #29
  br label %parser_set_lex_state.exit182

bb.bo:                                            ; preds = %bb.bl
  br i1 %.not.i186, label %parser_set_lex_state.exit182, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hf = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.gv, i32 noundef 2, i32 noundef 10452) #29
  br label %parser_set_lex_state.exit182

parser_set_lex_state.exit182:                     ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.0.i187.sink = phi i32 [ 16, %bb.bj ], [ 8, %bb.bm ], [ 32, %bb.bh ], [ %i.gz, %bb.bi ], [ %i.ha, %bb.bk ], [ %i.he, %bb.bn ], [ %i.hf, %bb.bp ], [ 2, %bb.bo ]
  store i32 %.0.i187.sink, ptr %i.a, align 8, !tbaa !68
  %i.hg = load ptr, ptr %i.cu, align 8, !tbaa !338
  %i.hh = load i32, ptr %i.cw, align 8, !tbaa !367
  %i.hi = sext i32 %i.hh to i64
  %i.hj = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.hk = tail call i64 @rb_intern3(ptr noundef %i.hg, i64 noundef %i.hi, ptr noundef %i.hj) #29 ; 11 uses
  %i.hl = load ptr, ptr %0, align 8, !tbaa !47
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !20
  %i.hm = tail call i64 @rb_id2sym(i64 noundef %i.hk) #29
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !56
  br i1 %i.ct, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %parser_set_lex_state.exit182
  %i.ho = icmp ugt i64 %i.hk, 171
  %i.hp = and i64 %i.hk, 14
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = and i1 %i.ho, %i.hq
  %spec.select154 = select i1 %i.hr, i32 307, i32 311
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %parser_set_lex_state.exit182
  %.1116 = phi i32 [ %.0115, %parser_set_lex_state.exit182 ], [ %spec.select154, %bb.bq ] ; 2 uses
  %i.hs = and i32 %i.b, 384
  %i.ht = icmp eq i32 %i.hs, 0
  %i.hu = icmp eq i32 %.1116, 307
  %or.cond7 = and i1 %i.ht, %i.hu
  br i1 %or.cond7, label %bb.bs, label %.thread204

bb.bs:                                            ; preds = %bb.br
  %i.hv = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %.val.i = load ptr, ptr %i.hv, align 8, !tbaa !95 ; 3 uses
  %i.hw = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.hw, align 8, !tbaa !140 ; 4 uses
  %switch.i.i = icmp ult ptr %.val.val.i, inttoptr (i64 2 to ptr)
  br i1 %switch.i.i, label %dyna_in_block.exit.thread.i, label %dyna_in_block.exit.i

dyna_in_block.exit.i:                             ; preds = %bb.bs
  %i.hx = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 16
end_hunk_4
begin_hunk_5_@tokadd_string:bb.a
  %trunc = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc, label %bb.n [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 10, label %.sink.split.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = add nuw nsw i32 %i.ar, 1
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.av = sdiv i32 %i.ar, 8
  %i.aw = shl nsw i32 %i.av, 3
  %i.ax = add i32 %i.aw, 8
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.k
  %i.ay = icmp sgt i32 %i.ap, %i.ar
  br i1 %i.ay, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.ar, ptr %i.i, align 4, !tbaa !167
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i = phi i32 [ %i.au, %bb.l ], [ -1, %bb.n ], [ 0, %bb.j ], [ %i.ax, %bb.m ], [ -1, %bb.o ], [ 0, %bb.k ]
  store i32 %.sink.i, ptr %i.j, align 8, !tbaa !170
  br label %parser_update_heredoc_indent.exit

parser_update_heredoc_indent.exit:                ; preds = %.sink.split.i, %bb.j, %bb.h
  %.not169 = icmp eq i32 %.0146, 0
  br i1 %.not169, label %bb.u, label %bb.p

bb.p:                                             ; preds = %parser_update_heredoc_indent.exit
  %i.az = load i32, ptr %i.k, align 4, !tbaa !51
  %i.ba = icmp eq i32 %spec.select, %i.az
  br i1 %i.ba, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bb = load i16, ptr %i.g, align 8
  %i.bc = and i16 %i.bb, -9
  store i16 %i.bc, ptr %i.g, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 3 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !57
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.bf = icmp ugt ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.r, label %nextc0.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bh = icmp eq i8 %i.bg, 10
  br i1 %i.bh, label %bb.s, label %nextc0.exit

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds i8, ptr %i.ao, i64 -2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20
  %i.bk = icmp eq i8 %i.bj, 13
  br i1 %i.bk, label %bb.t, label %nextc0.exit

bb.t:                                             ; preds = %bb.s
  store ptr %i.bi, ptr %i.e, align 8, !tbaa !57
  br label %nextc0.exit

bb.u:                                             ; preds = %bb.p, %parser_update_heredoc_indent.exit
  %i.bl = icmp eq i32 %.011.i.ph, %3
  %or.cond194 = and i1 %.not170, %i.bl
  br i1 %or.cond194, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bm = load i64, ptr %4, align 8, !tbaa !22
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %4, align 8, !tbaa !22
  br label %pushback.exit205

bb.w:                                             ; preds = %bb.u
  %i.bo = icmp eq i32 %.011.i.ph, %2
  br i1 %i.bo, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  br i1 %.not188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = load i64, ptr %4, align 8, !tbaa !22    ; 2 uses
  %.not189 = icmp eq i64 %i.bp, 0
  br i1 %.not189, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bq = load i16, ptr %i.g, align 8
  %i.br = and i16 %i.bq, -9
  store i16 %i.br, ptr %i.g, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 3 uses
  store ptr %i.bs, ptr %i.e, align 8, !tbaa !57
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.bu = icmp ugt ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.aa, label %nextc0.exit

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !20
  %i.bw = icmp eq i8 %i.bv, 10
  br i1 %i.bw, label %bb.ab, label %nextc0.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds i8, ptr %i.ao, i64 -2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20
  %i.bz = icmp eq i8 %i.by, 13
  br i1 %i.bz, label %bb.ac, label %nextc0.exit

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !57
  br label %nextc0.exit

bb.ad:                                            ; preds = %bb.y
  %i.ca = add nsw i64 %i.bp, -1
  store i64 %i.ca, ptr %4, align 8, !tbaa !22
  br label %pushback.exit205

bb.ae:                                            ; preds = %bb.w
  %i.cb = icmp eq i32 %.011.i.ph, 35
  %or.cond = and i1 %i.m, %i.cb
  br i1 %or.cond, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !304
  %.not171 = icmp ult ptr %i.ao, %i.cc
  br i1 %.not171, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.cd = load i8, ptr %i.ao, align 1, !tbaa !20
  switch i8 %i.cd, label %pushback.exit205.thread251 [
    i8 123, label %bb.ah
    i8 64, label %bb.ah
    i8 36, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag
  %i.ce = load i16, ptr %i.g, align 8
  %i.cf = and i16 %i.ce, -9
  store i16 %i.cf, ptr %i.g, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 3 uses
  store ptr %i.cg, ptr %i.e, align 8, !tbaa !57
  %i.ch = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ci = icmp ugt ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.ai, label %nextc0.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ck = icmp eq i8 %i.cj, 10
  br i1 %i.ck, label %bb.aj, label %nextc0.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cl = getelementptr inbounds i8, ptr %i.ao, i64 -2 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20
  %i.cn = icmp eq i8 %i.cm, 13
  br i1 %i.cn, label %bb.ak, label %nextc0.exit

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !57
  br label %nextc0.exit

bb.al:                                            ; preds = %bb.ae
  %i.co = icmp eq i32 %.011.i.ph, 92
  br i1 %i.co, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !304
  %.not.i206 = icmp ult ptr %i.ao, %i.cp
  br i1 %.not.i206, label %bb.an, label %.critedge.i207, !prof !345

bb.an:                                            ; preds = %bb.am
  %i.cq = load i16, ptr %i.g, align 8
  %i.cr = and i16 %i.cq, 8
  %.not13.i213 = icmp eq i16 %i.cr, 0
  br i1 %.not13.i213, label %bb.ao, label %.critedge.i207, !prof !345

bb.ao:                                            ; preds = %bb.an
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !346
  %i.ct = icmp ugt ptr %i.cs, inttoptr (i64 1 to ptr)
  br i1 %i.ct, label %.critedge.i207, label %bb.ap, !prof !190

.critedge.i207:                                   ; preds = %bb.ao, %bb.an, %bb.am
  %i.cu = call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i208 = icmp eq i32 %i.cu, 0
  br i1 %.not14.i208, label %.critedge._crit_edge.i210, label %nextc0.exit214.thread243

.critedge._crit_edge.i210:                        ; preds = %.critedge.i207
  %.pre.i211 = load ptr, ptr %i.e, align 8, !tbaa !57
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge._crit_edge.i210, %bb.ao
  %i.cv = phi ptr [ %.pre.i211, %.critedge._crit_edge.i210 ], [ %i.ao, %bb.ao ] ; 21 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.cw, ptr %i.e, align 8, !tbaa !57
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !20  ; 5 uses
  %i.cy = zext i8 %i.cx to i32                    ; 15 uses
  switch i8 %i.cx, label %bb.bg [
    i8 13, label %bb.aq
    i8 10, label %bb.as
    i8 92, label %bb.az
    i8 117, label %bb.bc
  ], !prof !590

bb.aq:                                            ; preds = %bb.ap
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !304
  %.not.i.i212 = icmp ult ptr %i.cw, %i.cz
  br i1 %.not.i.i212, label %bb.ar, label %.thread245

bb.ar:                                            ; preds = %bb.aq
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.db = icmp eq i8 %i.da, 10
  br i1 %i.db, label %nextc0.exit214.thread241, label %.thread245

nextc0.exit214.thread241:                         ; preds = %bb.ar
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.dc, ptr %i.e, align 8, !tbaa !57
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %nextc0.exit214.thread241
  br i1 %.not176, label %bb.at, label %pushback.exit205.thread251

bb.at:                                            ; preds = %bb.as
  br i1 %i.m, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %.not177, label %.backedge.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = load i32, ptr %i.i, align 4, !tbaa !167
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.backedge.backedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.v, label %nextc0.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.dg = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.q, align 8, !tbaa !367
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  store i8 92, ptr %i.dj, align 1, !tbaa !20
  %i.dk = load i32, ptr %i.q, align 8, !tbaa !367
  %i.dl = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i215 = icmp slt i32 %i.dk, %i.dl
  br i1 %.not.i215, label %pushback.exit205.thread251, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dm = shl nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.dm, ptr %i.r, align 4, !tbaa !341
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.do = sext i32 %i.dm to i64
  %i.dp = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.dn, i64 noundef %i.do, i64 noundef 1) #36
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !338
  br label %pushback.exit205.thread251

bb.az:                                            ; preds = %bb.ap
  br i1 %.not175, label %pushback.exit205.thread251, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.dr = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.q, align 8, !tbaa !367
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  store i8 92, ptr %i.du, align 1, !tbaa !20
  %i.dv = load i32, ptr %i.q, align 8, !tbaa !367
  %i.dw = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i216 = icmp slt i32 %i.dv, %i.dw
  br i1 %.not.i216, label %pushback.exit205.thread251, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dx = shl nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.dx, ptr %i.r, align 4, !tbaa !341
  %i.dy = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.dz = sext i32 %i.dx to i64
  %i.ea = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.dy, i64 noundef %i.dz, i64 noundef 1) #36
  store ptr %i.ea, ptr %i.p, align 8, !tbaa !338
  br label %pushback.exit205.thread251

bb.bc:                                            ; preds = %bb.ap
  br i1 %i.n, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.ec = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.q, align 8, !tbaa !367
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  store i8 92, ptr %i.ef, align 1, !tbaa !20
  %i.eg = load i32, ptr %i.q, align 8, !tbaa !367
  %i.eh = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i218 = icmp slt i32 %i.eg, %i.eh
  br i1 %.not.i218, label %pushback.exit205.thread251, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ei = shl nsw i32 %i.eh, 1                    ; 2 uses
  store i32 %i.ei, ptr %i.r, align 4, !tbaa !341
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.ek = sext i32 %i.ei to i64
  %i.el = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ej, i64 noundef %i.ek, i64 noundef 1) #36
  store ptr %i.el, ptr %i.p, align 8, !tbaa !338
  br label %pushback.exit205.thread251

bb.bf:                                            ; preds = %bb.bc
  call fastcc void @tokadd_utf8(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %2, i32 noundef %i.o)
  br label %.backedge.backedge

bb.bg:                                            ; preds = %bb.ap
  %i.em = icmp slt i8 %i.cx, 0
  br i1 %i.em, label %bb.bh, label %.thread245

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.n, label %bb.bi, label %tokadd.exit221

bb.bi:                                            ; preds = %bb.bh
  %i.en = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.eo = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.q, align 8, !tbaa !367
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  store i8 92, ptr %i.er, align 1, !tbaa !20
  %i.es = load i32, ptr %i.q, align 8, !tbaa !367
  %i.et = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i220 = icmp slt i32 %i.es, %i.et
  br i1 %.not.i220, label %tokadd.exit221, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eu = shl nsw i32 %i.et, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.r, align 4, !tbaa !341
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.ew = sext i32 %i.eu to i64
  %i.ex = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ev, i64 noundef %i.ew, i64 noundef 1) #36
  store ptr %i.ex, ptr %i.p, align 8, !tbaa !338
  br label %tokadd.exit221

.thread245:                                       ; preds = %bb.aq, %bb.ar, %bb.bg
  br i1 %.not181, label %bb.co, label %bb.bk

bb.bk:                                            ; preds = %.thread245
  switch i8 %i.cx, label %bb.bq [
    i8 99, label %bb.bl
    i8 67, label %bb.bl
    i8 77, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk
  %i.ey = load i16, ptr %i.g, align 8
  %i.ez = and i16 %i.ey, -9
  store i16 %i.ez, ptr %i.g, align 8
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !57
  %i.fa = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.fb = icmp ugt ptr %i.cv, %i.fa
  br i1 %i.fb, label %bb.bm, label %pushback.exit222

bb.bm:                                            ; preds = %bb.bl
  %i.fc = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.fd = icmp eq i8 %i.fc, 10
  br i1 %i.fd, label %bb.bn, label %pushback.exit222

bb.bn:                                            ; preds = %bb.bm
  %i.fe = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !20
  %i.fg = icmp eq i8 %i.ff, 13
  br i1 %i.fg, label %bb.bo, label %pushback.exit222

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.fe, ptr %i.e, align 8, !tbaa !57
  br label %pushback.exit222

pushback.exit222:                                 ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %i.fh = phi ptr [ %i.cv, %bb.bl ], [ %i.cv, %bb.bm ], [ %i.cv, %bb.bn ], [ %i.fe, %bb.bo ]
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -1
  %i.fj = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.fi) ; 2 uses
  %i.fk = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 4                    ; 3 uses
  store i32 %i.fl, ptr %i.q, align 8, !tbaa !367
  %i.fm = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i223 = icmp slt i32 %i.fl, %i.fm
  br i1 %.not.i223, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %pushback.exit222
  %.pre.i224 = load ptr, ptr %i.p, align 8, !tbaa !338
  br label %tokspace.exit

.preheader.i:                                     ; preds = %pushback.exit222, %.preheader.i
  %i.fn = phi i32 [ %i.fo, %.preheader.i ], [ %i.fm, %pushback.exit222 ]
  %i.fo = shl nsw i32 %i.fn, 1                    ; 4 uses
  %i.fp = icmp slt i32 %i.fo, %i.fl
  br i1 %i.fp, label %.preheader.i, label %bb.bp, !llvm.loop !9

bb.bp:                                            ; preds = %.preheader.i
  store i32 %i.fo, ptr %i.r, align 4, !tbaa !341
  %i.fq = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.fr = sext i32 %i.fo to i64
  %i.fs = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fq, i64 noundef %i.fr, i64 noundef 1) #36 ; 2 uses
  store ptr %i.fs, ptr %i.p, align 8, !tbaa !338
  %.pre13.i = load i32, ptr %i.q, align 8, !tbaa !367
end_hunk_5
begin_hunk_6_@tokadd_string:bb.a
bb.cl:                                            ; preds = %bb.ci, %bb.ce, %nextc0.exit.thread39.i, %bb.by, %tokspace.exit.i, %tokspace.exit31.i, %tokadd.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ks = load ptr, ptr %6, align 8, !tbaa !357   ; 3 uses
  %.not187 = icmp eq ptr %i.ks, null
  br i1 %.not187, label %.backedge.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kt = load ptr, ptr %5, align 8, !tbaa !357   ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  %i.kv = trunc nuw i8 %.0147 to i1
  %or.cond9 = or i1 %i.ku, %i.kv
  br i1 %or.cond9, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kw = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.ky = getelementptr i8, ptr %i.ks, i64 8
  %.val201 = load ptr, ptr %i.ky, align 8, !tbaa !353
  %i.kz = getelementptr i8, ptr %i.kt, i64 8
  %.val202 = load ptr, ptr %i.kz, align 8, !tbaa !353
  %i.la = load ptr, ptr %i.e, align 8, !tbaa !57
  store ptr %i.kx, ptr %i.e, align 8, !tbaa !57
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val201, ptr noundef %.val202) #29
  store ptr %i.la, ptr %i.e, align 8, !tbaa !57
  br label %.backedge.backedge

bb.co:                                            ; preds = %.thread245
  br i1 %i.m, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  %i.lb = load i16, ptr %i.g, align 8
  %i.lc = and i16 %i.lb, -9
  store i16 %i.lc, ptr %i.g, align 8
  store ptr %i.cv, ptr %i.e, align 8, !tbaa !57
  %i.ld = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.le = icmp ugt ptr %i.cv, %i.ld
  br i1 %i.le, label %bb.cq, label %pushback.exit229

bb.cq:                                            ; preds = %bb.cp
  %i.lf = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.lg = icmp eq i8 %i.lf, 10
  br i1 %i.lg, label %bb.cr, label %pushback.exit229

bb.cr:                                            ; preds = %bb.cq
  %i.lh = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !20
  %i.lj = icmp eq i8 %i.li, 13
  br i1 %i.lj, label %bb.cs, label %pushback.exit229

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.lh, ptr %i.e, align 8, !tbaa !57
  br label %pushback.exit229

pushback.exit229:                                 ; preds = %bb.cp, %bb.cq, %bb.cr, %bb.cs
  br i1 %.not175, label %tokadd.exit231, label %bb.ct

bb.ct:                                            ; preds = %pushback.exit229
  %i.lk = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.ll = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.lm = add nsw i32 %i.ll, 1
  store i32 %i.lm, ptr %i.q, align 8, !tbaa !367
  %i.ln = sext i32 %i.ll to i64
  %i.lo = getelementptr inbounds i8, ptr %i.lk, i64 %i.ln
  store i8 92, ptr %i.lo, align 1, !tbaa !20
  %i.lp = load i32, ptr %i.q, align 8, !tbaa !367
  %i.lq = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i230 = icmp slt i32 %i.lp, %i.lq
  br i1 %.not.i230, label %tokadd.exit231, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lr = shl nsw i32 %i.lq, 1                    ; 2 uses
  store i32 %i.lr, ptr %i.r, align 4, !tbaa !341
  %i.ls = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.lt = sext i32 %i.lr to i64
  %i.lu = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ls, i64 noundef %i.lt, i64 noundef 1) #36
  store ptr %i.lu, ptr %i.p, align 8, !tbaa !338
  br label %tokadd.exit231

tokadd.exit231:                                   ; preds = %bb.cu, %bb.ct, %pushback.exit229
  %i.lv = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -1
  %i.lx = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.lw)
  br label %pushback.exit205

bb.cv:                                            ; preds = %bb.co
  %.not184.old = icmp eq i32 %2, %i.cy            ; 2 uses
  br i1 %.not176, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not184.old, label %pushback.exit205, label %switch.early.test

switch.early.test:                                ; preds = %bb.cw
  switch i8 %i.cx, label %bb.cy [
    i8 32, label %pushback.exit205
    i8 13, label %pushback.exit205
    i8 12, label %pushback.exit205
    i8 11, label %pushback.exit205
    i8 10, label %pushback.exit205
    i8 9, label %pushback.exit205
  ]

bb.cx:                                            ; preds = %bb.cv
  %i.ly = icmp eq i32 %3, %i.cy
  %or.cond197 = and i1 %.not170, %i.ly
  %or.cond255 = or i1 %.not184.old, %or.cond197
  br i1 %or.cond255, label %pushback.exit205, label %bb.cz

bb.cy:                                            ; preds = %switch.early.test
  %.old = icmp eq i32 %3, %i.cy
  %or.cond197.old = and i1 %.not170, %.old
  br i1 %or.cond197.old, label %pushback.exit205, label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 92)
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cy)
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.af, %bb.al
  %i.lz = getelementptr i8, ptr %i.ao, i64 -1
  %.val203.val = load i8, ptr %i.lz, align 1, !tbaa !20
  %i.ma = icmp slt i8 %.val203.val, 0
  br i1 %i.ma, label %tokadd.exit221, label %bb.df

tokadd.exit221:                                   ; preds = %bb.bj, %bb.bi, %.thread, %bb.bh
  %.0148 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cy, %bb.bh ], [ %i.cy, %bb.bi ], [ %i.cy, %bb.bj ]
  %i.mb = load ptr, ptr %6, align 8, !tbaa !357   ; 3 uses
  %.not179 = icmp eq ptr %i.mb, null
  %i.mc = load ptr, ptr %5, align 8, !tbaa !357   ; 3 uses
  br i1 %.not179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %tokadd.exit221
  store ptr %i.mc, ptr %6, align 8, !tbaa !357
  br label %bb.de

bb.db:                                            ; preds = %tokadd.exit221
  %.not180 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not180, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.md = trunc nuw i8 %.0147 to i1
  br i1 %i.md, label %.backedge.backedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.me = getelementptr i8, ptr %i.mb, i64 8
  %.val199 = load ptr, ptr %i.me, align 8, !tbaa !353
  %i.mf = getelementptr i8, ptr %i.mc, i64 8
  %.val200 = load ptr, ptr %i.mf, align 8, !tbaa !353
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val199, ptr noundef %.val200) #29
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.db, %bb.da
  %i.mg = call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.0148)
  %i.mh = icmp eq i32 %i.mg, -1
  br i1 %i.mh, label %nextc0.exit214.thread243, label %.backedge.backedge

bb.df:                                            ; preds = %.thread
  br i1 %.not176, label %pushback.exit205, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %trunc279 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc279, label %pushback.exit205 [
    i8 32, label %bb.dh
    i8 13, label %bb.dh
    i8 12, label %bb.dh
    i8 11, label %bb.dh
    i8 10, label %bb.dh
    i8 9, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit205:                                 ; preds = %bb.dg, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cw, %bb.cy, %bb.ad, %bb.cx, %tokadd.exit231, %bb.df, %bb.v
  %.1149 = phi i32 [ %3, %bb.v ], [ %2, %bb.ad ], [ %i.lx, %tokadd.exit231 ], [ %i.cy, %switch.early.test ], [ %3, %bb.cy ], [ %i.cy, %bb.cx ], [ %.011.i.ph, %bb.df ], [ %.011.i.ph, %bb.dg ], [ %2, %bb.cw ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ], [ %i.cy, %switch.early.test ] ; 4 uses
  %i.mi = and i32 %.1149, 128
  %.not190 = icmp eq i32 %i.mi, 0
  br i1 %.not190, label %pushback.exit205.thread251, label %bb.di

bb.di:                                            ; preds = %pushback.exit205
  %i.mj = load ptr, ptr %6, align 8, !tbaa !357   ; 3 uses
  %.not191 = icmp eq ptr %i.mj, null
  %i.mk = load ptr, ptr %5, align 8, !tbaa !357   ; 3 uses
  br i1 %.not191, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store ptr %i.mk, ptr %6, align 8, !tbaa !357
  br label %pushback.exit205.thread251

bb.dk:                                            ; preds = %bb.di
  %.not192 = icmp eq ptr %i.mj, %i.mk
  br i1 %.not192, label %pushback.exit205.thread251, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ml = trunc nuw i8 %.0147 to i1
  br i1 %i.ml, label %.backedge.backedge, label %bb.dm

.backedge.backedge:                               ; preds = %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.cl, %bb.cm, %bb.cn, %bb.au, %bb.av, %bb.bf, %tokspace.exit, %bb.bs, %bb.cz, %tokadd.exit234, %bb.de
  %.0147.be = phi i8 [ 1, %bb.dc ], [ %.0147, %tokadd.exit234 ], [ %.0147, %bb.au ], [ %.0147, %bb.bs ], [ %.0147, %tokspace.exit ], [ %.0147, %bb.cz ], [ %.0147, %bb.cl ], [ %.0147, %bb.de ], [ %.0147, %bb.bf ], [ %.0147, %bb.av ], [ %.0147, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.dd ], [ 1, %bb.dm ], [ 1, %bb.dl ]
  %.0146.be = phi i32 [ %.0146, %bb.dc ], [ %i.nb, %tokadd.exit234 ], [ %.0146, %bb.au ], [ %.0146, %bb.bs ], [ %.0146, %tokspace.exit ], [ %.0146, %bb.cz ], [ %.0146, %bb.cl ], [ %.0146, %bb.de ], [ %.0146, %bb.bf ], [ %.0146, %bb.av ], [ %.0146, %bb.cm ], [ %.0146, %bb.cn ], [ %.0146, %bb.dd ], [ %.0146, %bb.dm ], [ %.0146, %bb.dl ]
  br label %.backedge, !llvm.loop !589

bb.dm:                                            ; preds = %bb.dl
  %i.mm = getelementptr i8, ptr %i.mj, i64 8
  %.val = load ptr, ptr %i.mm, align 8, !tbaa !353
  %i.mn = getelementptr i8, ptr %i.mk, i64 8
  %.val198 = load ptr, ptr %i.mn, align 8, !tbaa !353
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val, ptr noundef %.val198) #29
  br label %.backedge.backedge

pushback.exit205.thread251:                       ; preds = %bb.be, %bb.bd, %bb.ba, %bb.ax, %bb.bb, %bb.az, %bb.ay, %bb.ag, %bb.as, %bb.dj, %bb.dk, %pushback.exit205
  %.1149254 = phi i32 [ %.1149, %pushback.exit205 ], [ %.1149, %bb.dj ], [ %.1149, %bb.dk ], [ 117, %bb.be ], [ 117, %bb.bd ], [ 92, %bb.ba ], [ 10, %bb.ax ], [ 92, %bb.bb ], [ 92, %bb.az ], [ 10, %bb.ay ], [ 35, %bb.ag ], [ 10, %bb.as ] ; 2 uses
  %i.mo = trunc i32 %.1149254 to i8
  %i.mp = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.mq = load i32, ptr %i.q, align 8, !tbaa !367 ; 2 uses
  %i.mr = add nsw i32 %i.mq, 1
  store i32 %i.mr, ptr %i.q, align 8, !tbaa !367
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds i8, ptr %i.mp, i64 %i.ms
  store i8 %i.mo, ptr %i.mt, align 1, !tbaa !20
  %i.mu = load i32, ptr %i.q, align 8, !tbaa !367
  %i.mv = load i32, ptr %i.r, align 4, !tbaa !341 ; 2 uses
  %.not.i233 = icmp slt i32 %i.mu, %i.mv
  br i1 %.not.i233, label %tokadd.exit234, label %bb.dn

bb.dn:                                            ; preds = %pushback.exit205.thread251
  %i.mw = shl nsw i32 %i.mv, 1                    ; 2 uses
  store i32 %i.mw, ptr %i.r, align 4, !tbaa !341
  %i.mx = load ptr, ptr %i.p, align 8, !tbaa !338
  %i.my = sext i32 %i.mw to i64
  %i.mz = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.mx, i64 noundef %i.my, i64 noundef 1) #36
  store ptr %i.mz, ptr %i.p, align 8, !tbaa !338
  br label %tokadd.exit234

tokadd.exit234:                                   ; preds = %pushback.exit205.thread251, %bb.dn
  %i.na = icmp eq i32 %.1149254, 10
  %i.nb = zext i1 %i.na to i32
  br label %.backedge.backedge

nextc0.exit:                                      ; preds = %.critedge.i, %bb.aw, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.t, %bb.s, %bb.r, %bb.q, %bb.dh
  %.2150 = phi i32 [ 35, %bb.aj ], [ %.011.i.ph, %bb.t ], [ 35, %bb.ak ], [ %.011.i.ph, %bb.dh ], [ %2, %bb.ac ], [ %.011.i.ph, %bb.q ], [ %.011.i.ph, %bb.r ], [ %.011.i.ph, %bb.s ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ 35, %bb.ah ], [ 35, %bb.ai ], [ 92, %bb.aw ], [ -1, %.critedge.i ] ; 2 uses
  %i.nc = load ptr, ptr %6, align 8, !tbaa !357   ; 2 uses
  %.not193 = icmp eq ptr %i.nc, null
  br i1 %.not193, label %nextc0.exit214.thread243, label %bb.do

bb.do:                                            ; preds = %nextc0.exit
  store ptr %i.nc, ptr %5, align 8, !tbaa !357
  br label %nextc0.exit214.thread243

nextc0.exit214.thread243:                         ; preds = %.critedge.i207, %bb.de, %tokadd_escape.exit, %nextc0.exit, %bb.do
  %.0 = phi i32 [ %.2150, %bb.do ], [ -1, %tokadd_escape.exit ], [ %.2150, %nextc0.exit ], [ -1, %bb.de ], [ -1, %.critedge.i207 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef nonnull ptr @parser_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.567, i64 noundef %1) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 7 uses
  %i.c = add nuw nsw i64 %1, 1
  %i.d = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.c, i64 noundef 1) #33 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %0, null
  %.not.i.i.i = icmp eq i64 %1, 0
  %or.cond.i.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %rb_parser_encoding_string_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !326
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.g, align 1, !tbaa !20
  store i32 0, ptr %i.b, align 8, !tbaa !327
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8, !tbaa !328
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %rb_parser_encoding_string_new.exit
  %i.j = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %i.b)
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call nonnull ptr @rb_usascii_encoding() #29
  %i.m = icmp eq ptr %4, %i.l
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = tail call nonnull ptr @rb_utf8_encoding() #29
  %.not11 = icmp eq ptr %2, %i.n
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call nonnull ptr @rb_ascii8bit_encoding() #29
  store ptr %i.o, ptr %i.h, align 8, !tbaa !328
  store i32 2, ptr %i.b, align 8, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %rb_parser_encoding_string_new.exit
  ret ptr %i.b
}

declare i64 @rb_str_new_mutable_parser_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_string_content(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = sub i64 0, %2
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 6 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 96 ; 3 uses
  %.val3.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 6 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %.val3.i.pre to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc ptr @rb_parser_enc_cr_str_buf_cat(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %.val3.i.pre, i64 noundef range(i64 1, -9223372036854775808) %i.i, ptr noundef %1, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.m, ptr %i.n, align 8, !tbaa !363
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.t) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = trunc nsw i64 %i.t to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.v, ptr %i.w, align 4, !tbaa !374
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %.not.i22 = icmp eq ptr %.pre, null
  br i1 %.not.i22, label %ripper_has_scan_event.exit.i.thread, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.f, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !52
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  store ptr %i.ah, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.ai = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.x) #29
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.aj) #29
  %i.ak = tail call i64 @ripper_token2eventid(i32 noundef 321) #29
  %i.al = getelementptr i8, ptr %0, i64 368
  %.val.i = load i64, ptr %i.al, align 8, !tbaa !55
  %i.am = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.ak, i32 noundef 1, i64 noundef %i.ai) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.am, ptr %i.an, align 8, !tbaa !56
  store ptr null, ptr %i.e, align 8, !tbaa !49
  store i32 %i.z, ptr %i.y, align 4, !tbaa !51
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %ripper_has_scan_event.exit.i.thread

ripper_has_scan_event.exit.i.thread:              ; preds = %bb.e, %.thread
  %i.ao = phi ptr [ %i.o, %bb.e ], [ %.pre25, %.thread ] ; 2 uses
  store ptr %i.ao, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %ripper_dispatch_scan_event.exit

end_hunk_6
begin_hunk_7_@tokadd_utf8:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !367 ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !367
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  store i8 123, ptr %i.ap, align 1, !tbaa !20
  %i.aq = load i32, ptr %i.al, align 8, !tbaa !367
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !341 ; 2 uses
  %.not.i117 = icmp slt i32 %i.aq, %i.as
  br i1 %.not.i117, label %tokadd.exit118, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !341
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.av = sext i32 %i.at to i64
  %i.aw = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.au, i64 noundef %i.av, i64 noundef 1) #36
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !338
  br label %tokadd.exit118

tokadd.exit118:                                   ; preds = %bb.h, %bb.i
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  store ptr %i.ay, ptr %i.z, align 8, !tbaa !57
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %.not110144 = icmp ult ptr %i.ay, %i.az
  br i1 %.not110144, label %.lr.ph, label %ripper_dispatch_scan_event.exit

.lr.ph:                                           ; preds = %tokadd.exit118, %bb.q
  %i.ba = phi ptr [ %i.co, %bb.q ], [ %i.az, %tokadd.exit118 ]
  %i.bb = phi ptr [ %i.cn, %bb.q ], [ %i.ay, %tokadd.exit118 ]
  %i.bc = phi ptr [ %i.cm, %bb.q ], [ %i.ax, %tokadd.exit118 ]
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !20  ; 3 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = icmp eq i8 %i.bd, 125
  br i1 %i.bf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.bh = load i32, ptr %i.al, align 8, !tbaa !367 ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.al, align 8, !tbaa !367
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  store i8 125, ptr %i.bk, align 1, !tbaa !20
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !367
  %i.bm = load i32, ptr %i.ar, align 4, !tbaa !341 ; 2 uses
  %.not.i119 = icmp slt i32 %i.bl, %i.bm
  br i1 %.not.i119, label %tokadd.exit120, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = shl nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.bn, ptr %i.ar, align 4, !tbaa !341
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.bp = sext i32 %i.bn to i64
  %i.bq = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bo, i64 noundef %i.bp, i64 noundef 1) #36
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !338
  br label %tokadd.exit120

tokadd.exit120:                                   ; preds = %bb.j, %bb.k
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bs, ptr %i.z, align 8, !tbaa !57
  br label %ripper_dispatch_scan_event.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bt = icmp eq i32 %2, %i.be
  br i1 %i.bt, label %ripper_dispatch_scan_event.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq i8 %i.bd, 92
  br i1 %i.bu, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %.not111 = icmp ult ptr %i.bv, %i.ba
  br i1 %.not111, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.bx = load i32, ptr %i.al, align 8, !tbaa !367 ; 2 uses
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.al, align 8, !tbaa !367
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  store i8 92, ptr %i.ca, align 1, !tbaa !20
  %i.cb = load i32, ptr %i.al, align 8, !tbaa !367
  %i.cc = load i32, ptr %i.ar, align 4, !tbaa !341 ; 2 uses
  %.not.i121 = icmp slt i32 %i.cb, %i.cc
  br i1 %.not.i121, label %tokadd.exit122, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = shl nsw i32 %i.cc, 1                    ; 2 uses
  store i32 %i.cd, ptr %i.ar, align 4, !tbaa !341
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !338
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #36
  store ptr %i.cg, ptr %i.aj, align 8, !tbaa !338
  br label %tokadd.exit122

tokadd.exit122:                                   ; preds = %bb.o, %bb.p
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  store ptr %i.ci, ptr %i.z, align 8, !tbaa !57
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20
  %i.ck = sext i8 %i.cj to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %tokadd.exit122
  %.090 = phi i32 [ 92, %bb.n ], [ %i.ck, %tokadd.exit122 ], [ %i.be, %bb.m ]
  %i.cl = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.090) ; 0 uses
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.cn, ptr %i.z, align 8, !tbaa !57
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %.not110 = icmp ult ptr %i.cn, %i.co
  br i1 %.not110, label %.lr.ph, label %ripper_dispatch_scan_event.exit

bb.r:                                             ; preds = %bb.f, %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = and i16 %i.cq, 8
  %.not13.i = icmp eq i16 %i.cr, 0
  br i1 %.not13.i, label %bb.s, label %.critedge.i, !prof !345

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !346
  %i.cu = icmp ugt ptr %i.ct, inttoptr (i64 1 to ptr)
  br i1 %i.cu, label %.critedge.i, label %.critedge._crit_edge.i, !prof !190

.critedge.i:                                      ; preds = %bb.s, %bb.r
  %i.cv = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.cv, 0
  %.pre162 = load ptr, ptr %i.z, align 8, !tbaa !57 ; 2 uses
  %.pre164.pre = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %bb.s
  %.pre164 = phi ptr [ %i.ac, %bb.s ], [ %.pre164.pre, %.critedge.i ] ; 5 uses
  %i.cw = phi ptr [ %i.aa, %bb.s ], [ %.pre162, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 6 uses
  store ptr %i.cx, ptr %i.z, align 8, !tbaa !57
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !20  ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp eq i8 %i.cy, 13
  br i1 %i.da, label %bb.t, label %nextc0.exit, !prof !190

bb.t:                                             ; preds = %.critedge._crit_edge.i
  %.not.i.i = icmp ult ptr %i.cx, %.pre164
  br i1 %.not.i.i, label %bb.u, label %nextc0.exit

bb.u:                                             ; preds = %bb.t
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.dc = icmp eq i8 %i.db, 10
  br i1 %i.dc, label %bb.v, label %nextc0.exit

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 2 uses
  store ptr %i.dd, ptr %i.z, align 8, !tbaa !57
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %.critedge._crit_edge.i, %bb.t, %bb.u, %bb.v
  %i.de = phi ptr [ %.pre164, %bb.u ], [ %.pre164, %.critedge._crit_edge.i ], [ %.pre164, %bb.t ], [ %.pre164, %bb.v ], [ %.pre164.pre, %.critedge.i ] ; 3 uses
  %.promoted = phi ptr [ %i.cx, %bb.u ], [ %i.cx, %.critedge._crit_edge.i ], [ %i.cx, %bb.t ], [ %i.dd, %bb.v ], [ %.pre162, %.critedge.i ] ; 2 uses
  %.011.i = phi i32 [ 13, %bb.u ], [ %i.cz, %.critedge._crit_edge.i ], [ 13, %bb.t ], [ 10, %bb.v ], [ -1, %.critedge.i ]
  %.not101 = icmp ult ptr %.promoted, %i.de
  br i1 %.not101, label %.preheader138, label %.critedge114

.preheader138:                                    ; preds = %nextc0.exit, %bb.x
  %i.df = phi ptr [ %i.dh, %bb.x ], [ %.promoted, %nextc0.exit ] ; 5 uses
  %.not102 = icmp ult ptr %i.df, %i.de
  br i1 %.not102, label %bb.w, label %.lr.ph151

bb.w:                                             ; preds = %.preheader138
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !20  ; 3 uses
  switch i8 %i.dg, label %.lr.ph151.split.loop.exit43 [
    i8 32, label %bb.x
    i8 13, label %bb.x
    i8 12, label %bb.x
    i8 11, label %bb.x
    i8 10, label %bb.x
    i8 9, label %bb.x
    i8 125, label %._crit_edge.thread
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 4 uses
  store ptr %i.dh, ptr %i.z, align 8, !tbaa !57
  %.not104 = icmp ult ptr %i.dh, %i.de
  br i1 %.not104, label %.preheader138, label %.lr.ph151.split.loop.exit40, !llvm.loop !591

.lr.ph151.split.loop.exit40:                      ; preds = %bb.x
  %i.di = zext i8 %i.dg to i32
  br label %.lr.ph151

.lr.ph151.split.loop.exit43:                      ; preds = %bb.w
  %i.dj = zext i8 %i.dg to i32
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader138, %.lr.ph151.split.loop.exit43, %.lr.ph151.split.loop.exit40
  %i.dk = phi ptr [ %i.dh, %.lr.ph151.split.loop.exit40 ], [ %i.df, %.lr.ph151.split.loop.exit43 ], [ %i.df, %.preheader138 ] ; 2 uses
  %i.dl = phi i32 [ %i.di, %.lr.ph151.split.loop.exit40 ], [ %i.dj, %.lr.ph151.split.loop.exit43 ], [ -1, %.preheader138 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dp = icmp ne i32 %2, -1                      ; 2 uses
  br i1 %.not, label %.lr.ph151.split.us, label %.lr.ph151.split

.lr.ph151.split.us:                               ; preds = %.lr.ph151, %.thread196
  %i.dq = phi ptr [ %i.du, %.thread196 ], [ %i.dk, %.lr.ph151 ]
  %.085149.us = phi i32 [ %i.dy, %.thread196 ], [ %i.dl, %.lr.ph151 ]
  %.086148.us = phi ptr [ %spec.store.select.us, %.thread196 ], [ null, %.lr.ph151 ] ; 2 uses
  %i.dr = icmp eq i32 %.085149.us, %2
  br i1 %i.dr, label %.critedge114, label %.split.us

.split.us:                                        ; preds = %.lr.ph151.split.us
  %i.ds = icmp eq ptr %.086148.us, @tokadd_utf8.multiple_codepoints
  %spec.select = select i1 %i.ds, ptr %i.dq, ptr %.086148.us ; 2 uses
  %i.dt = tail call fastcc i32 @tokadd_codepoint(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  %.not106.us = icmp eq i32 %i.dt, 0
  br i1 %.not106.us, label %.critedge114, label %.preheader.us

bb.y:                                             ; preds = %.preheader.us, %bb.aa
  %i.du = phi ptr [ %i.dw, %bb.aa ], [ %.promoted146.us, %.preheader.us ] ; 5 uses
  %.not107.us = icmp ult ptr %i.du, %i.ea
  br i1 %.not107.us, label %bb.z, label %.thread196

bb.z:                                             ; preds = %bb.y
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20  ; 2 uses
  switch i8 %i.dv, label %.thread196.split.loop.exit49 [
    i8 32, label %bb.aa
    i8 13, label %bb.aa
    i8 12, label %bb.aa
    i8 11, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 3 uses
  store ptr %i.dw, ptr %i.z, align 8, !tbaa !57
  %.not109.us = icmp ult ptr %i.dw, %i.ea
  br i1 %.not109.us, label %bb.y, label %.critedge114, !llvm.loop !592

.thread196.split.loop.exit49:                     ; preds = %bb.z
  %i.dx = zext i8 %i.dv to i32
  br label %.thread196

.thread196:                                       ; preds = %bb.y, %.thread196.split.loop.exit49
  %i.dy = phi i32 [ %i.dx, %.thread196.split.loop.exit49 ], [ -1, %bb.y ] ; 2 uses
  %i.dz = icmp ne ptr %spec.select, null
  %or.cond.us = select i1 %i.dp, i1 true, i1 %i.dz
  %spec.store.select.us = select i1 %or.cond.us, ptr %spec.select, ptr @tokadd_utf8.multiple_codepoints ; 2 uses
  %.not105.us = icmp eq i32 %i.dy, 125
  br i1 %.not105.us, label %._crit_edge, label %.lr.ph151.split.us, !llvm.loop !593

.preheader.us:                                    ; preds = %.split.us
  %i.ea = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %.promoted146.us = load ptr, ptr %i.z, align 8, !tbaa !57
  br label %bb.y

.lr.ph151.split:                                  ; preds = %.lr.ph151, %.thread197
  %i.eb = phi ptr [ %.lcssa8, %.thread197 ], [ %i.dk, %.lr.ph151 ]
  %.0150 = phi i32 [ %.1.lcssa, %.thread197 ], [ %.011.i, %.lr.ph151 ] ; 3 uses
  %.085149 = phi i32 [ %i.ew, %.thread197 ], [ %i.dl, %.lr.ph151 ]
  %.086148 = phi ptr [ %spec.store.select, %.thread197 ], [ null, %.lr.ph151 ] ; 2 uses
  %i.ec = icmp eq i32 %.085149, %2
  br i1 %i.ec, label %.critedge114, label %.split92

.split92:                                         ; preds = %.lr.ph151.split
  %i.ed = icmp eq ptr %.086148, @tokadd_utf8.multiple_codepoints
  %spec.select212 = select i1 %i.ed, ptr %i.eb, ptr %.086148 ; 2 uses
  %i.ee = trunc i32 %.0150 to i8
  %i.ef = load ptr, ptr %i.dm, align 8, !tbaa !338
  %i.eg = load i32, ptr %i.dn, align 8, !tbaa !367 ; 2 uses
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.dn, align 8, !tbaa !367
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  store i8 %i.ee, ptr %i.ej, align 1, !tbaa !20
  %i.ek = load i32, ptr %i.dn, align 8, !tbaa !367
  %i.el = load i32, ptr %i.do, align 4, !tbaa !341 ; 2 uses
  %.not.i124 = icmp slt i32 %i.ek, %i.el
  br i1 %.not.i124, label %tokadd.exit125, label %bb.ab

bb.ab:                                            ; preds = %.split92
  %i.em = shl nsw i32 %i.el, 1                    ; 2 uses
  store i32 %i.em, ptr %i.do, align 4, !tbaa !341
  %i.en = load ptr, ptr %i.dm, align 8, !tbaa !338
  %i.eo = sext i32 %i.em to i64
  %i.ep = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.en, i64 noundef %i.eo, i64 noundef 1) #36
  store ptr %i.ep, ptr %i.dm, align 8, !tbaa !338
  br label %tokadd.exit125

tokadd.exit125:                                   ; preds = %.split92, %bb.ab
  %i.eq = tail call fastcc i32 @tokadd_codepoint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef null)
  %.not106 = icmp eq i32 %i.eq, 0
  br i1 %.not106, label %.critedge114, label %.preheader

.preheader:                                       ; preds = %tokadd.exit125
  %i.er = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %.promoted146 = load ptr, ptr %i.z, align 8, !tbaa !57 ; 3 uses
  %.not10714 = icmp ult ptr %.promoted146, %i.er
  br i1 %.not10714, label %.lr.ph16, label %.thread197

bb.ac:                                            ; preds = %bb.ad
  br label %.lr.ph16, !llvm.loop !592

.lr.ph16:                                         ; preds = %.preheader, %bb.ac
  %.115 = phi i32 [ %i.eu, %bb.ac ], [ %.0150, %.preheader ]
  %i.es = phi ptr [ %i.ev, %bb.ac ], [ %.promoted146, %.preheader ] ; 3 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20  ; 2 uses
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
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 3 uses
  store ptr %i.ev, ptr %i.z, align 8, !tbaa !57
  %.not109 = icmp ult ptr %i.ev, %i.er
  br i1 %.not109, label %bb.ac, label %.critedge114, !llvm.loop !592

.thread197:                                       ; preds = %.lr.ph16, %.preheader
  %.lcssa8 = phi ptr [ %.promoted146, %.preheader ], [ %i.es, %.lr.ph16 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0150, %.preheader ], [ %.115, %.lr.ph16 ]
  %i.ew = phi i32 [ -1, %.preheader ], [ %i.eu, %.lr.ph16 ] ; 2 uses
  %i.ex = icmp ne ptr %spec.select212, null
  %or.cond = select i1 %i.dp, i1 true, i1 %i.ex
  %spec.store.select = select i1 %or.cond, ptr %spec.select212, ptr @tokadd_utf8.multiple_codepoints ; 2 uses
  %.not105 = icmp eq i32 %i.ew, 125
  br i1 %.not105, label %._crit_edge, label %.lr.ph151.split, !llvm.loop !593

.critedge114:                                     ; preds = %.lr.ph151.split, %tokadd.exit125, %bb.ad, %.split.us, %.lr.ph151.split.us, %bb.aa, %nextc0.exit
  %i.ey = tail call nonnull ptr @rb_utf8_encoding() #29
  tail call fastcc void @flush_string_content(ptr noundef %0, ptr noundef nonnull %i.ey, i64 noundef 0)
  %i.ez = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fc = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.606, i64 noundef 27, ptr noundef %i.fb) #29
  %i.fd = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i = load i64, ptr %i.fd, align 8, !tbaa !55
  %i.fe = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.ez, i32 noundef 1, i64 noundef %i.fc) #29 ; 0 uses
  %i.ff = load i16, ptr %i.cp, align 8
  %i.fg = or i16 %i.ff, 512
  store i16 %i.fg, ptr %i.cp, align 8
  %.val.i127 = load ptr, ptr %i.z, align 8, !tbaa !57 ; 3 uses
  %i.fh = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i = load ptr, ptr %i.fh, align 8, !tbaa !50 ; 4 uses
  %i.fi = icmp ult ptr %.val.i127, %.val3.i
  br i1 %i.fi, label %bb.ae, label %ripper_has_scan_event.exit.i

bb.ae:                                            ; preds = %.critedge114
  %i.fj = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fj, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %.critedge114
  %.not.i128 = icmp ugt ptr %.val.i127, %.val3.i
  br i1 %.not.i128, label %bb.af, label %ripper_dispatch_scan_event.exit

bb.af:                                            ; preds = %ripper_has_scan_event.exit.i
  %i.fk = ptrtoint ptr %.val.i127 to i64
  %i.fl = ptrtoint ptr %.val3.i to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fo = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.fm, ptr noundef %i.fn) #29
  %i.fp = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i = load i64, ptr %i.fd, align 8, !tbaa !55
  %i.fq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.fp, i32 noundef 1, i64 noundef %i.fo) #29
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !48
  %i.ft = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.fs) #29 ; 0 uses
  %i.fu = load ptr, ptr %i.z, align 8, !tbaa !57
  store ptr %i.fu, ptr %i.fh, align 8, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fq, ptr %i.fv, align 8, !tbaa !56
  br label %ripper_dispatch_scan_event.exit

._crit_edge:                                      ; preds = %.thread197, %.thread196
  %i.fw = phi ptr [ %i.du, %.thread196 ], [ %.lcssa8, %.thread197 ]
  %.086.lcssa = phi ptr [ %spec.store.select.us, %.thread196 ], [ %spec.store.select, %.thread197 ] ; 3 uses
  %i.fx = icmp ne ptr %.086.lcssa, null
  %i.fy = icmp ne ptr %.086.lcssa, @tokadd_utf8.multiple_codepoints
  %or.cond3 = and i1 %i.fx, %i.fy
  br i1 %or.cond3, label %bb.ag, label %._crit_edge.thread

bb.ag:                                            ; preds = %._crit_edge
  store ptr %.086.lcssa, ptr %i.z, align 8, !tbaa !57
  tail call fastcc void @ripper_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 321)
  %i.fz = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !50
  store ptr %i.fw, ptr %i.z, align 8, !tbaa !57
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @tokadd_utf8.multiple_codepoints)
  %i.gb = load ptr, ptr %i.z, align 8, !tbaa !57
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !50
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.w, %bb.ag, %._crit_edge
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.thread
  tail call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 125)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.thread
  %i.gc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  br label %ripper_dispatch_scan_event.exit

bb.aj:                                            ; preds = %bb.e, %tokadd.exit116
  %i.gd = getelementptr inbounds i8, ptr %i.aa, i64 -2
  %i.ge = tail call fastcc i32 @tokadd_codepoint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %i.gd)
  %.not112 = icmp eq i32 %i.ge, 0
  br i1 %.not112, label %bb.ak, label %ripper_dispatch_scan_event.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gf = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !50
  br label %ripper_dispatch_scan_event.exit

ripper_dispatch_scan_event.exit:                  ; preds = %bb.q, %bb.l, %tokadd.exit118, %tokadd.exit120, %bb.af, %ripper_has_scan_event.exit.i, %bb.aj, %bb.ai, %bb.ak
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_escape(ptr noundef %0, i32 noundef range(i32 0, 4) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 21 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i = icmp ult ptr %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !345

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 8
  %.not13.i = icmp eq i16 %i.h, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !345

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !346
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %.critedge.i, label %bb.d, !prof !190

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.l = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread131

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.c, %bb.c ] ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 8 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !57
  %i.o = load i8, ptr %i.m, align 1, !tbaa !20    ; 3 uses
  switch i8 %i.o, label %bb.bt [
    i8 13, label %bb.e
    i8 92, label %ripper_dispatch_scan_event.exit
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
    i8 67, label %bb.ap
    i8 99, label %bb.aw
  ], !prof !594

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.f, label %ripper_dispatch_scan_event.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.n, align 1, !tbaa !20
  %i.r = icmp eq i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %ripper_dispatch_scan_event.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store ptr %i.s, ptr %i.b, align 8, !tbaa !57
  br label %ripper_dispatch_scan_event.exit

bb.h:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.i:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.j:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.k:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.l:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.m:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.n:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.o:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, -9
  store i16 %i.v, ptr %i.t, align 8
  store ptr %i.m, ptr %i.b, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = icmp ugt ptr %i.m, %i.x
  br i1 %i.y, label %bb.p, label %pushback.exit

bb.p:                                             ; preds = %bb.o
  %i.z = load i8, ptr %i.m, align 1, !tbaa !20
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %bb.q, label %pushback.exit

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 13
  br i1 %i.ad, label %bb.r, label %pushback.exit

bb.r:                                             ; preds = %bb.q
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.ae = phi ptr [ %i.m, %bb.o ], [ %i.m, %bb.p ], [ %i.m, %bb.q ], [ %i.ab, %bb.r ]
  %i.af = call i64 @ruby_scan_oct(ptr noundef nonnull %i.ae, i64 noundef 3, ptr noundef nonnull %i.a) #37
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !57
  br label %ripper_dispatch_scan_event.exit

bb.s:                                             ; preds = %bb.d
  %i.ak = call fastcc i32 @tok_hex(ptr noundef nonnull %0, ptr noundef %i.a)
  %i.al = load i64, ptr %i.a, align 8, !tbaa !22
  %i.am = icmp eq i64 %i.al, 0
  %. = select i1 %i.am, i32 0, i32 %i.ak
  br label %ripper_dispatch_scan_event.exit

bb.t:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.u:                                             ; preds = %bb.d
  br label %ripper_dispatch_scan_event.exit

bb.v:                                             ; preds = %bb.d
  %.not90 = icmp samesign ult i32 %1, 2
  br i1 %.not90, label %bb.w, label %nextc0.exit.thread131

bb.w:                                             ; preds = %bb.v
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i100 = icmp ult ptr %i.n, %i.an
  br i1 %.not.i100, label %bb.x, label %.critedge.i101, !prof !345

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 8
  %.not13.i107 = icmp eq i16 %i.aq, 0
  br i1 %.not13.i107, label %bb.y, label %.critedge.i101, !prof !345

bb.y:                                             ; preds = %bb.x
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !346
  %i.at = icmp ugt ptr %i.as, inttoptr (i64 1 to ptr)
  br i1 %i.at, label %.critedge.i101, label %bb.z, !prof !190

.critedge.i101:                                   ; preds = %bb.y, %bb.x, %bb.w
  %i.au = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i102 = icmp eq i32 %i.au, 0
  br i1 %.not14.i102, label %.critedge._crit_edge.i104, label %nextc0.exit.thread131

.critedge._crit_edge.i104:                        ; preds = %.critedge.i101
  %.pre.i105 = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.z

bb.z:                                             ; preds = %.critedge._crit_edge.i104, %bb.y
  %i.av = phi ptr [ %.pre.i105, %.critedge._crit_edge.i104 ], [ %i.n, %bb.y ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !57
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !20
  switch i8 %i.ax, label %nextc0.exit.thread131 [
    i8 13, label %bb.aa
    i8 45, label %bb.ad
  ], !prof !371

bb.aa:                                            ; preds = %bb.z
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i.i106 = icmp ult ptr %i.aw, %i.ay
  br i1 %.not.i.i106, label %bb.ab, label %nextc0.exit.thread131

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %bb.ac, label %nextc0.exit.thread131

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !57
  br label %nextc0.exit.thread131

bb.ad:                                            ; preds = %bb.z
  %i.bc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 8 uses
  switch i32 %i.bc, label %bb.ah [
    i32 92, label %bb.ae
    i32 -1, label %nextc0.exit.thread131
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not97 = icmp ult ptr %i.bd, %i.be
  br i1 %.not97, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !20
  switch i8 %i.bf, label %.thread [
    i8 117, label %bb.ag
    i8 85, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.bg = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 0 uses
  br label %nextc0.exit.thread131

.thread:                                          ; preds = %bb.ae, %bb.af
  %i.bh = or disjoint i32 %1, 2
  %i.bi = tail call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef %i.bh, ptr noundef %2)
  %i.bj = or i32 %i.bi, 128
  br label %ripper_dispatch_scan_event.exit

bb.ah:                                            ; preds = %bb.ad
  %i.bk = icmp samesign ugt i32 %i.bc, 127
  br i1 %i.bk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @tokskip_mbchar(ptr noundef nonnull %0)
  br label %nextc0.exit.thread131

bb.aj:                                            ; preds = %bb.ah
  %i.bl = tail call fastcc i32 @escaped_control_code(i32 noundef %i.bc) ; 2 uses
  %.not93 = icmp eq i32 %i.bl, 0
  br i1 %.not93, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bm = icmp samesign ult i32 %i.bc, 32
  %i.bn = icmp eq i32 %i.bc, 127
  %i.bo = or i1 %i.bm, %i.bn
  %.not96 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not96, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !55
  %i.br = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.bs = shl nuw nsw i32 %i.bl, 1
  %i.bt = or disjoint i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
end_hunk_7
begin_hunk_8_@tokadd_codepoint:bb.a
  %i.br = icmp ult ptr %.val.i74, %.val3.i75
  br i1 %i.br, label %bb.n, label %ripper_has_scan_event.exit.i76

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i76:                   ; preds = %bb.m
  %.not.i77 = icmp ugt ptr %.val.i74, %.val3.i75
  br i1 %.not.i77, label %bb.o, label %ripper_dispatch_scan_event.exit79

bb.o:                                             ; preds = %ripper_has_scan_event.exit.i76
  %i.bt = ptrtoint ptr %.val.i74 to i64
  %i.bu = ptrtoint ptr %.val3.i75 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bx = call i64 @rb_enc_str_new(ptr noundef %.val3.i75, i64 noundef %i.bv, ptr noundef %i.bw) #29
  %i.by = call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i78 = load i64, ptr %i.bl, align 8, !tbaa !55
  %i.bz = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i78, i64 noundef %i.by, i32 noundef 1, i64 noundef %i.bx) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48
  %i.cc = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.cb) #29 ; 0 uses
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !57
  store ptr %i.cd, ptr %i.bq, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.bz, ptr %i.ce, align 8, !tbaa !56
  br label %ripper_dispatch_scan_event.exit79

bb.p:                                             ; preds = %bb.l
  %i.cf = and i32 %i.l, -2048
  %i.cg = icmp eq i32 %i.cf, 55296
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ch = call nonnull ptr @rb_utf8_encoding() #29
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %.05893 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef nonnull %i.ch, i64 noundef %i.cl)
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cp = call i64 @rb_enc_str_new(ptr noundef nonnull @.str.609, i64 noundef 25, ptr noundef %i.co) #29
  %i.cq = getelementptr i8, ptr %0, i64 368       ; 2 uses
  %.val.i80 = load i64, ptr %i.cq, align 8, !tbaa !55
  %i.cr = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i80, i64 noundef %i.cm, i32 noundef 1, i64 noundef %i.cp) #29 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = or i16 %i.ct, 512
  store i16 %i.cu, ptr %i.cs, align 8
  %.val.i81 = load ptr, ptr %i.c, align 8, !tbaa !57 ; 3 uses
  %i.cv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val3.i82 = load ptr, ptr %i.cv, align 8, !tbaa !50 ; 4 uses
  %i.cw = icmp ult ptr %.val.i81, %.val3.i82
  br i1 %i.cw, label %bb.r, label %ripper_has_scan_event.exit.i83

bb.r:                                             ; preds = %bb.q
  %i.cx = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cx, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i83:                   ; preds = %bb.q
  %.not.i84 = icmp ugt ptr %.val.i81, %.val3.i82
  br i1 %.not.i84, label %bb.s, label %ripper_dispatch_scan_event.exit79

bb.s:                                             ; preds = %ripper_has_scan_event.exit.i83
  %i.cy = ptrtoint ptr %.val.i81 to i64
  %i.cz = ptrtoint ptr %.val3.i82 to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.dc = call i64 @rb_enc_str_new(ptr noundef %.val3.i82, i64 noundef %i.da, ptr noundef %i.db) #29
  %i.dd = call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i85 = load i64, ptr %i.cq, align 8, !tbaa !55
  %i.de = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i85, i64 noundef %i.dd, i32 noundef 1, i64 noundef %i.dc) #29
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.dh = call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.dg) #29 ; 0 uses
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !57
  store ptr %i.di, ptr %i.cv, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.de, ptr %i.dj, align 8, !tbaa !56
  br label %ripper_dispatch_scan_event.exit79

bb.t:                                             ; preds = %bb.p, %bb.e
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = trunc i64 %i.m to i32                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !367
  %i.dn = add nsw i32 %i.dm, %i.dk                ; 4 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !367
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !341 ; 2 uses
  %.not.i87 = icmp slt i32 %i.dn, %i.dp
  br i1 %.not.i87, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.u
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !338
  br label %tokspace.exit

.preheader.i:                                     ; preds = %bb.u, %.preheader.i
  %i.dq = phi i32 [ %i.dr, %.preheader.i ], [ %i.dp, %bb.u ]
  %i.dr = shl nsw i32 %i.dq, 1                    ; 4 uses
  %i.ds = icmp slt i32 %i.dr, %i.dn
  br i1 %i.ds, label %.preheader.i, label %bb.v, !llvm.loop !9

bb.v:                                             ; preds = %.preheader.i
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !341
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !338
  %i.dv = sext i32 %i.dr to i64
  %i.dw = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.du, i64 noundef %i.dv, i64 noundef 1) #36 ; 2 uses
  store ptr %i.dw, ptr %i.dt, align 8, !tbaa !338
  %.pre13.i = load i32, ptr %i.dl, align 8, !tbaa !367
  %.pre = load i64, ptr %i.a, align 8, !tbaa !22
  br label %tokspace.exit

tokspace.exit:                                    ; preds = %._crit_edge.i, %bb.v
  %i.dx = phi i64 [ %i.m, %._crit_edge.i ], [ %.pre, %bb.v ]
  %i.dy = phi i32 [ %i.dn, %._crit_edge.i ], [ %.pre13.i, %bb.v ]
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dw, %bb.v ]
  %sext = shl i64 %i.dx, 32                       ; 2 uses
  %.not.i88 = icmp eq i64 %sext, 0
  br i1 %.not.i88, label %ripper_dispatch_scan_event.exit79, label %bb.w

bb.w:                                             ; preds = %tokspace.exit
  %i.ea = ashr exact i64 %sext, 32                ; 2 uses
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ec = sub nsw i64 0, %i.ea
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = sub nsw i32 %i.dy, %i.dk
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dz, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %i.ed, i64 %i.ea, i1 false)
  br label %ripper_dispatch_scan_event.exit79

bb.x:                                             ; preds = %bb.t
  %i.eh = icmp sgt i32 %i.l, 127
  br i1 %i.eh, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ei = call nonnull ptr @rb_utf8_encoding() #29 ; 5 uses
  %i.ej = load ptr, ptr %1, align 8, !tbaa !357   ; 3 uses
  %.not68 = icmp eq ptr %i.ej, null
  %.not69 = icmp eq ptr %i.ei, %i.ej
  %or.cond70 = select i1 %.not68, i1 true, i1 %.not69
  br i1 %or.cond70, label %bb.z, label %.critedge

.critedge:                                        ; preds = %bb.y
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val71 = load ptr, ptr %i.ek, align 8, !tbaa !353
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.610, ptr noundef %.val71) #29
  br label %ripper_dispatch_scan_event.exit79

bb.z:                                             ; preds = %bb.y
  store ptr %i.ei, ptr %1, align 8, !tbaa !357
  %i.el = call i32 @rb_enc_codelen(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef nonnull %i.ei) #29 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !367
  %i.eo = add nsw i32 %i.en, %i.el                ; 4 uses
  store i32 %i.eo, ptr %i.em, align 8, !tbaa !367
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !341 ; 2 uses
  %.not.i.i = icmp slt i32 %i.eo, %i.eq
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !338
  br label %tokaddmbc.exit

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %i.er = phi i32 [ %i.es, %.preheader.i.i ], [ %i.eq, %bb.z ]
  %i.es = shl nsw i32 %i.er, 1                    ; 4 uses
  %i.et = icmp slt i32 %i.es, %i.eo
  br i1 %i.et, label %.preheader.i.i, label %bb.aa, !llvm.loop !9

bb.aa:                                            ; preds = %.preheader.i.i
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !341
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !338
  %i.ew = sext i32 %i.es to i64
  %i.ex = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ev, i64 noundef %i.ew, i64 noundef 1) #36 ; 2 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !338
  %.pre13.i.i = load i32, ptr %i.em, align 8, !tbaa !367
  br label %tokaddmbc.exit

tokaddmbc.exit:                                   ; preds = %._crit_edge.i.i, %bb.aa
  %i.ey = phi i32 [ %i.eo, %._crit_edge.i.i ], [ %.pre13.i.i, %bb.aa ]
  %i.ez = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ex, %bb.aa ]
  %i.fa = sub nsw i32 %i.ey, %i.el
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !596
  %i.ff = call i32 %i.fe(i32 noundef range(i32 128, -2147483648) %i.l, ptr noundef %i.fc, ptr noundef nonnull %i.ei) #29, !inline_history !595 ; 0 uses
  br label %ripper_dispatch_scan_event.exit79

bb.ab:                                            ; preds = %bb.x
  %i.fg = trunc i64 %i.k to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !338
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !367 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !367
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  store i8 %i.fg, ptr %i.fn, align 1, !tbaa !20
  %i.fo = load i32, ptr %i.fj, align 8, !tbaa !367
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !341 ; 2 uses
  %.not.i89 = icmp slt i32 %i.fo, %i.fq
  br i1 %.not.i89, label %ripper_dispatch_scan_event.exit79, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = shl nsw i32 %i.fq, 1                    ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !341
  %i.fs = load ptr, ptr %i.fh, align 8, !tbaa !338
  %i.ft = sext i32 %i.fr to i64
  %i.fu = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fs, i64 noundef %i.ft, i64 noundef 1) #36
  store ptr %i.fu, ptr %i.fh, align 8, !tbaa !338
  br label %ripper_dispatch_scan_event.exit79

ripper_dispatch_scan_event.exit79:                ; preds = %bb.ac, %bb.ab, %bb.w, %tokspace.exit, %bb.s, %ripper_has_scan_event.exit.i83, %bb.o, %ripper_has_scan_event.exit.i76, %tokaddmbc.exit, %.critedge, %ripper_dispatch_scan_event.exit
  %.1.shrunk = phi i1 [ %i.ba, %ripper_dispatch_scan_event.exit ], [ %.not, %bb.s ], [ %.not, %bb.o ], [ %.not, %.critedge ], [ true, %tokaddmbc.exit ], [ true, %bb.w ], [ %.not, %ripper_has_scan_event.exit.i76 ], [ %.not, %ripper_has_scan_event.exit.i83 ], [ true, %tokspace.exit ], [ true, %bb.ab ], [ true, %bb.ac ]
  %.1 = zext i1 %.1.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.1
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_enc_codelen(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare i64 @ruby_scan_oct(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tok_hex(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = tail call i64 @ruby_scan_hex(ptr noundef %i.b, i64 noundef 2, ptr noundef nonnull %1) #29
  %i.d = load i64, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  tail call fastcc void @flush_string_content(ptr noundef nonnull %0, ptr noundef %i.f, i64 noundef 2)
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.i = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.617, i64 noundef 18, ptr noundef %i.h) #29
  %i.j = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !55
  %i.k = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.g, i32 noundef 1, i64 noundef %i.i) #29 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = or i16 %i.m, 512
  store i16 %i.n, ptr %i.l, align 8
  %.val.i11 = load ptr, ptr %i.a, align 8, !tbaa !57 ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %.val3.i = load ptr, ptr %i.o, align 8, !tbaa !50 ; 4 uses
  %i.p = icmp ult ptr %.val.i11, %.val3.i
  br i1 %i.p, label %bb.c, label %ripper_has_scan_event.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %bb.b
  %.not.i = icmp ugt ptr %.val.i11, %.val3.i
  br i1 %.not.i, label %bb.d, label %ripper_dispatch_scan_event.exit

bb.d:                                             ; preds = %ripper_has_scan_event.exit.i
  %i.r = ptrtoint ptr %.val.i11 to i64
  %i.s = ptrtoint ptr %.val3.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.v = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i, i64 noundef %i.t, ptr noundef %i.u) #29
  %i.w = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %.val.i.i = load i64, ptr %i.j, align 8, !tbaa !55
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.w, i32 noundef 1, i64 noundef %i.v) #29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.aa = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.z) #29 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.x, ptr %i.ac, align 8, !tbaa !56
  br label %ripper_dispatch_scan_event.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = trunc i64 %i.c to i32
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.d
  store ptr %i.af, ptr %i.a, align 8, !tbaa !57
  br label %ripper_dispatch_scan_event.exit

ripper_dispatch_scan_event.exit:                  ; preds = %bb.d, %ripper_has_scan_event.exit.i, %bb.e
  %.0 = phi i32 [ %i.ad, %bb.e ], [ 0, %ripper_has_scan_event.exit.i ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tokskip_mbchar(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef %i.g) #29 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %parser_precise_mbclen.exit

parser_precise_mbclen.exit:                       ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !353
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.618, ptr noundef %.val.i) #29
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  store ptr %i.o, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %parser_precise_mbclen.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 119) i32 @escaped_control_code(i32 noundef range(i32 0, 256) %0) unnamed_addr #23 {
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

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc void @parser_add_delayed_token(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 7680, 8663) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 32
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.o
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.623, i32 noundef %3, i32 noundef %i.i, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.t) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = icmp ult ptr %1, %2
  br i1 %i.u, label %bb.d, label %bb.p
end_hunk_8
begin_hunk_9_@parser_add_delayed_token:bb.a

.thread66:                                        ; preds = %rb_parser_enc_associate.exit
  %i.cf = trunc nsw i64 %i.cd to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !54
  %i.ch = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ci = sub i64 %i.ch, %i.cb
  store i32 0, ptr %i.bn, align 8, !tbaa !327
  br label %ruby_nonempty_memcpy.exit.i

bb.m:                                             ; preds = %bb.h
  %i.cj = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.ck = sub i64 %i.cj, %i.aw                    ; 2 uses
  store i32 0, ptr %i.w, align 8, !tbaa !327
  %i.cl = sub nsw i64 9223372036854775807, %i.ck
  %i.cm = icmp sgt i64 %i.y, %i.cl
  br i1 %i.cm, label %bb.n, label %ruby_nonempty_memcpy.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.582) #29
  br label %rb_parser_str_buf_cat.exit

ruby_nonempty_memcpy.exit.i:                      ; preds = %.thread66, %bb.m
  %i.cn = phi i64 [ %i.ci, %.thread66 ], [ %i.ck, %bb.m ] ; 2 uses
  %i.co = phi i64 [ %i.ch, %.thread66 ], [ %i.cj, %bb.m ]
  %i.cp = phi ptr [ %i.bn, %.thread66 ], [ %i.w, %bb.m ] ; 2 uses
  %i.cq = phi i64 [ 0, %.thread66 ], [ %i.y, %bb.m ] ; 3 uses
  %.pre-phi68 = phi i64 [ %i.cb, %.thread66 ], [ %i.aw, %bb.m ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !325 ; 4 uses
  %.not.i57 = icmp ult ptr %1, %i.ct
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cq
  %.not40.i = icmp ugt ptr %1, %i.cu
  %or.cond.i = select i1 %.not.i57, i1 true, i1 %.not40.i
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %.pre-phi68, %i.cv
  %.0.i = select i1 %or.cond.i, i64 -1, i64 %i.cw ; 2 uses
  %i.cx = add nsw i64 %i.cq, %i.cn                ; 4 uses
  %i.cy = add i64 %i.cx, 1
  %i.cz = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ct, i64 noundef %i.cy, i64 noundef 1) #36 ; 3 uses
  store ptr %i.cz, ptr %i.cs, align 8, !tbaa !325
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !326
  %.not41.i = icmp eq i64 %.0.i, -1
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %.0.i
  %spec.select.i = select i1 %.not41.i, ptr %1, ptr %i.da
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr readonly align 1 %spec.select.i, i64 %i.cn, i1 false)
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !326
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !325
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cx
  store i8 0, ptr %i.dd, align 1, !tbaa !20
  br label %rb_parser_str_buf_cat.exit

rb_parser_str_buf_cat.exit:                       ; preds = %bb.n, %ruby_nonempty_memcpy.exit.i
  %i.de = phi i64 [ %i.cj, %bb.n ], [ %i.co, %ruby_nonempty_memcpy.exit.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !363
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.de, %i.dk                    ; 3 uses
  %i.dm = add i64 %i.dl, 2147483648
  %.not.i58 = icmp ult i64 %i.dm, 4294967296
  br i1 %.not.i58, label %rb_long2int_inline.exit59, label %bb.o

bb.o:                                             ; preds = %rb_parser_str_buf_cat.exit
  tail call void @rb_out_of_int(i64 noundef %i.dl) #34
  unreachable

rb_long2int_inline.exit59:                        ; preds = %rb_parser_str_buf_cat.exit
  %i.dn = trunc nsw i64 %i.dl to i32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !374
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.dp, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %rb_long2int_inline.exit59, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 131072) i32 @regx_options(ptr noundef initializes((136, 140)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !367
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.d, align 4, !tbaa !341
  %i.e = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !338
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !341
  %i.i = icmp sgt i32 %i.h, 4096
  br i1 %i.i, label %bb.d, label %newtok.exit

bb.d:                                             ; preds = %bb.c
  store i32 60, ptr %i.g, align 4, !tbaa !341
  %i.j = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.f, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.j, ptr %i.b, align 8, !tbaa !338
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %tokadd.exit.outer

tokadd.exit.outer:                                ; preds = %.thread58, %newtok.exit
  %.031.ph = phi i32 [ %i.y, %.thread58 ], [ 0, %newtok.exit ]
  %.029.ph = phi i32 [ 16, %.thread58 ], [ 0, %newtok.exit ]
  %.0.ph = phi i32 [ %.0.ph144, %.thread58 ], [ 0, %newtok.exit ]
  br label %tokadd.exit.outer140

tokadd.exit.outer140:                             ; preds = %bb.j, %tokadd.exit.outer
  %.029.ph141 = phi i32 [ %.029.ph, %tokadd.exit.outer ], [ 32, %bb.j ]
  %.0.ph142 = phi i32 [ %.0.ph, %tokadd.exit.outer ], [ %.0.ph144, %bb.j ]
  br label %tokadd.exit.outer143

tokadd.exit.outer143:                             ; preds = %tokadd.exit.outer143.backedge, %tokadd.exit.outer140
  %.0.ph144 = phi i32 [ %.0.ph142, %tokadd.exit.outer140 ], [ %.0.ph144.be, %tokadd.exit.outer143.backedge ] ; 5 uses
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %tokadd.exit.backedge, %tokadd.exit.outer143
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !304
  %.not.i38 = icmp ult ptr %i.o, %i.p
  br i1 %.not.i38, label %bb.e, label %.critedge.i, !prof !345

bb.e:                                             ; preds = %tokadd.exit
  %i.q = load i16, ptr %i.m, align 8
  %i.r = and i16 %i.q, 8
  %.not13.i = icmp eq i16 %i.r, 0
  br i1 %.not13.i, label %bb.f, label %.critedge.i, !prof !345

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !346
  %i.t = icmp ugt ptr %i.s, inttoptr (i64 1 to ptr)
  br i1 %i.t, label %.critedge.i, label %bb.g, !prof !190

.critedge.i:                                      ; preds = %bb.f, %bb.e, %tokadd.exit
  %i.u = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %pushback.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %.critedge._crit_edge.i, %bb.f
  %i.v = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.o, %bb.f ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.k, align 8, !tbaa !57
  %i.x = load i8, ptr %i.v, align 1, !tbaa !20    ; 4 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = icmp eq i8 %i.x, 13
  br i1 %i.z, label %bb.h, label %nextc0.exit, !prof !190

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 4 uses
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.aa, %i.ab
  br i1 %.not.i.i, label %bb.i, label %.thread63

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %spec.select = select i1 %i.ad, ptr %i.ae, ptr %i.aa
  br label %.thread63

nextc0.exit:                                      ; preds = %bb.g
  %i.af = and i32 %i.y, 223
  %i.ag = add nsw i32 %i.af, -91
  %narrow.i = icmp ult i32 %i.ag, -26
  br i1 %narrow.i, label %.thread63.loopexit, label %bb.j

bb.j:                                             ; preds = %nextc0.exit
  switch i8 %i.x, label %char_to_option_kcode.exit [
    i8 111, label %bb.k
    i8 110, label %tokadd.exit.outer140
    i8 101, label %.thread58
    i8 115, label %.thread58
    i8 117, label %.thread58
    i8 105, label %.loopexit
    i8 120, label %bb.m
    i8 109, label %bb.l
  ], !llvm.loop !597

bb.k:                                             ; preds = %bb.j
  %i.ah = or i32 %.0.ph144, 65536
  br label %tokadd.exit.outer143.backedge

tokadd.exit.outer143.backedge:                    ; preds = %bb.k, %bb.m
  %.0.ph144.be = phi i32 [ %i.ai, %bb.m ], [ %i.ah, %bb.k ]
  br label %tokadd.exit.outer143, !llvm.loop !597

bb.l:                                             ; preds = %bb.j
  br label %bb.m

.thread58:                                        ; preds = %bb.j, %bb.j, %bb.j
  br label %tokadd.exit.outer, !llvm.loop !597

.loopexit:                                        ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.loopexit, %bb.l
  %.sink11.i.ph = phi i32 [ 1, %.loopexit ], [ 4, %bb.l ], [ 2, %bb.j ]
  %i.ai = or i32 %.sink11.i.ph, %.0.ph144
  br label %tokadd.exit.outer143.backedge

char_to_option_kcode.exit:                        ; preds = %bb.j
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !367
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  store i8 %i.x, ptr %i.an, align 1, !tbaa !20
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !367
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !341 ; 2 uses
  %.not.i39 = icmp slt i32 %i.ao, %i.ap
  br i1 %.not.i39, label %tokadd.exit.backedge, label %bb.n

bb.n:                                             ; preds = %char_to_option_kcode.exit
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !341
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.as = sext i32 %i.aq to i64
  %i.at = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ar, i64 noundef %i.as, i64 noundef 1) #36
  store ptr %i.at, ptr %i.b, align 8, !tbaa !338
  br label %tokadd.exit.backedge

tokadd.exit.backedge:                             ; preds = %bb.n, %char_to_option_kcode.exit
  br label %tokadd.exit, !llvm.loop !597

.thread63.loopexit:                               ; preds = %nextc0.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  br label %.thread63

.thread63:                                        ; preds = %bb.i, %.thread63.loopexit, %bb.h
  %i.av = phi ptr [ %spec.select, %bb.i ], [ %i.aa, %bb.h ], [ %i.au, %.thread63.loopexit ] ; 2 uses
  %i.aw = load i16, ptr %i.m, align 8
  %i.ax = and i16 %i.aw, -9
  store i16 %i.ax, ptr %i.m, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -1 ; 3 uses
  store ptr %i.ay, ptr %i.k, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.o, label %pushback.exit

bb.o:                                             ; preds = %.thread63
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.bd = icmp eq i8 %i.bc, 10
  br i1 %i.bd, label %bb.p, label %pushback.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.av, i64 -2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = icmp eq i8 %i.bf, 13
  br i1 %i.bg, label %bb.q, label %pushback.exit

bb.q:                                             ; preds = %bb.p
  store ptr %i.be, ptr %i.k, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.i, %.thread63, %bb.o, %bb.p, %bb.q
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %.not35 = icmp eq i32 %i.bh, 0
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %pushback.exit
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  %i.bn = select i1 %i.bm, ptr @.str.625, ptr @.str.22
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !338
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.624, ptr noundef nonnull %i.bn, i32 noundef %i.bl, ptr noundef %i.bo) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %pushback.exit
  %i.bp = shl nuw nsw i32 %.031.ph, 8
  %i.bq = or disjoint i32 %i.bp, %.029.ph141
  %i.br = or i32 %i.bq, %.0.ph144
  ret i32 %i.br
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @nextline(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !346
  %magicptr = ptrtoint ptr %i.b to i64
  switch i64 %magicptr, label %bb.i [
    i64 0, label %bb.b
    i64 1, label %lex_getline.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8
  %.not31 = icmp eq i16 %i.e, 0
  br i1 %.not31, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304  ; 2 uses
  %.not32 = icmp ult ptr %i.g, %i.i
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %.not33 = icmp eq i8 %i.k, 10
  br i1 %.not33, label %bb.e, label %lex_getline.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !343  ; 2 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %lex_getline.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !368
  %i.r = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %i.q) #29, !inline_history !598 ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %lex_getline.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.p, align 8, !tbaa !368
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.p, align 8, !tbaa !368
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !349  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp slt i64 %i.x, %i.z
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !348 ; 2 uses
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre17.i.i = load i64, ptr %.phi.trans.insert16.i.i, align 8, !tbaa !22
  br label %string_buffer_append.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aa = shl nsw i64 %i.z, 1
  %i.ab = shl i64 %i.z, 4
  %i.ac = add i64 %i.ab, 24
  %i.ad = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ac) #30 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !22
  store ptr null, ptr %i.ad, align 8, !tbaa !339
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !348
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !339
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !348
  br label %string_buffer_append.exit.i

string_buffer_append.exit.i:                      ; preds = %bb.h, %._crit_edge.i.i
  %i.ai = phi i64 [ %.pre17.i.i, %._crit_edge.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = add nsw i64 %i.ai, 1
  store i64 %i.am, ptr %i.al, align 8, !tbaa !22
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.r, ptr %i.an, align 8, !tbaa !340
  %i.ao = getelementptr i8, ptr %i.r, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !328 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val.i, i64 20
  %.val.i.i.i = load i32, ptr %i.ap, align 4, !tbaa !375
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 1
  br i1 %.not.i.i.i, label %rb_enc_asciicompat.exit.i.i, label %rb_enc_asciicompat.exit.thread.i.i

rb_enc_asciicompat.exit.i.i:                      ; preds = %string_buffer_append.exit.i
  %i.aq = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.val.i) #32
  %.not3.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not3.i.i.i, label %lex_getline.exit, label %rb_enc_asciicompat.exit.thread.i.i

rb_enc_asciicompat.exit.thread.i.i:               ; preds = %rb_enc_asciicompat.exit.i.i, %string_buffer_append.exit.i
  %i.ar = load i64, ptr @rb_eArgError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.626) #31
  unreachable

lex_getline.exit.thread:                          ; preds = %bb.f, %bb.a, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8
  %i.au = or i16 %i.at, 8
  store i16 %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !304
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !57
  br label %bb.l

lex_getline.exit:                                 ; preds = %rb_enc_asciicompat.exit.i.i
  %i.ay = load i16, ptr %i.c, align 8
  %i.az = and i16 %i.ay, -1025
  store i16 %i.az, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %lex_getline.exit
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.r, %lex_getline.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !304
  tail call fastcc void @parser_add_delayed_token(ptr noundef nonnull %0, ptr noundef %i.bb, ptr noundef %i.bd, i32 noundef 7680)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !365 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.be, align 8, !tbaa !365
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bh = phi i32 [ %.pre, %._crit_edge ], [ %i.bf, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bj = add nsw i32 %i.bh, 1
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !325 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !326
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store ptr %i.bq, ptr %i.bc, align 8, !tbaa !304
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0, ptr %i.br, align 8, !tbaa !347
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %lex_getline.exit.thread
  %.026 = phi i32 [ -1, %lex_getline.exit.thread ], [ 0, %bb.k ], [ -1, %bb.b ]
  ret i32 %.026
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #5

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @magic_comment_encoding(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 128
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %comment_at_top.exit, label %comment_at_top.exit.thread

comment_at_top.exit:                              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368
  %i.f = and i16 %i.b, 64
  %.not4.i = icmp eq i16 %i.f, 0
  %i.g = select i1 %.not4.i, i32 1, i32 2
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %comment_at_top.exit.thread

bb.b:                                             ; preds = %comment_at_top.exit
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %2)
  br label %comment_at_top.exit.thread

comment_at_top.exit.thread:                       ; preds = %bb.a, %comment_at_top.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @parser_encode_length(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 5
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, -5                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = icmp eq i8 %i.d, 45
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.640, i64 noundef 4) #29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %.thread

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %2, 5
  br i1 %i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.j = add nsw i64 %2, -4                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.641, i64 noundef 3) #29
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.642, i64 noundef 3) #29
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i64 %2, 8
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @rb_memcicmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.643, i64 noundef 8) #29
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h, %.thread, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.c, %bb.i
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.b, %bb.c ], [ %2, %bb.i ], [ 4, %bb.h ], [ %i.j, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal void @parser_set_frozen_string_literal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55
  %i.f = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.g = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.644, i64 noundef 32) #29
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = tail call i64 @rb_enc_str_new(ptr noundef nonnull %1, i64 noundef %i.h, ptr noundef %i.j) #29
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef %i.f, i32 noundef 2, i64 noundef %i.g, i64 noundef %i.k) #29 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = tail call fastcc i32 @parser_get_bool(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i32 %i.m to i16
  %i.p = load i16, ptr %i.a, align 8
  %i.q = and i16 %i.p, -4
  %i.r = or i16 %i.q, %i.o
  store i16 %i.r, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parser_set_shareable_constant_value(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02427 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.02427, align 1, !tbaa !20
  switch i8 %i.f, label %bb.c [
    i8 32, label %bb.b
    i8 9, label %bb.b
    i8 35, label %._crit_edge
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.02427, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !599

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55
  %i.j = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.k = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.648, i64 noundef 43) #29
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = tail call i64 @rb_enc_str_new(ptr noundef nonnull %1, i64 noundef %i.l, ptr noundef %i.n) #29
  %i.p = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.i, i64 noundef %i.j, i32 noundef 2, i64 noundef %i.k, i64 noundef %i.o) #29 ; 0 uses
  br label %bb.m

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.q = load i8, ptr %2, align 1, !tbaa !20
  switch i8 %i.q, label %bb.l [
    i8 110, label %bb.d
    i8 78, label %bb.d
    i8 108, label %bb.f
    i8 76, label %bb.f
    i8 101, label %bb.h
    i8 69, label %bb.h
  ]

bb.d:                                             ; preds = %._crit_edge, %._crit_edge
  %i.r = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.543) #32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, -193
  store i16 %i.v, ptr %i.t, align 8
  br label %bb.m

bb.f:                                             ; preds = %._crit_edge, %._crit_edge
  %i.w = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.454) #32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, -193
  %i.ab = or disjoint i16 %i.aa, 64
  store i16 %i.ab, ptr %i.y, align 8
  br label %bb.m

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  %i.ac = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.649) #32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = and i16 %i.af, -193
  %i.ah = or disjoint i16 %i.ag, 128
  store i16 %i.ah, ptr %i.ae, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.650) #32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = or i16 %i.al, 192
  store i16 %i.am, ptr %i.ak, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.f, %bb.d, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !55
  %i.ap = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.aq = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.647, i64 noundef 24) #29
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = tail call i64 @rb_enc_str_new(ptr noundef nonnull %1, i64 noundef %i.ar, ptr noundef %i.at) #29
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.ax = tail call i64 @rb_enc_str_new(ptr noundef nonnull %2, i64 noundef %i.av, ptr noundef %i.aw) #29
  %i.ay = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef %i.ap, i32 noundef 3, i64 noundef %i.aq, i64 noundef %i.au, i64 noundef %i.ax) #29 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parser_set_token_info(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @parser_get_bool(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.d = trunc nuw nsw i32 %i.a to i16
  %i.e = load i16, ptr %i.c, align 8
  %i.f = shl nuw nsw i16 %i.d, 8
  %i.g = and i16 %i.f, 256
  %i.h = and i16 %i.e, -257
  %i.i = or disjoint i16 %i.h, %i.g
  store i16 %i.i, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parser_set_encode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i8, ptr %1, align 1, !tbaa !20
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
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull %switch.load) #32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge

.critedge:                                        ; preds = %switch.hole_check, %bb.a, %switch.lookup
  %i.g = tail call i32 @rb_enc_find_index(ptr noundef nonnull %1) #29 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %.critedge, %rb_enc_asciicompat.exit.thread
  %.val.sink = phi ptr [ %.val, %rb_enc_asciicompat.exit.thread ], [ %1, %.critedge ], [ %1, %switch.lookup ]
  %.str.639.sink = phi ptr [ @.str.639, %rb_enc_asciicompat.exit.thread ], [ @.str.637, %.critedge ], [ @.str.637, %switch.lookup ]
  %i.i = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull %.str.639.sink, ptr noundef %.val.sink) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !22
  store i64 %i.k, ptr %i.a, align 16, !tbaa !22
  %i.l = tail call i64 @rb_make_backtrace() #29   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.m, align 16, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !317
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  %i.r = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.638, i64 noundef %i.o, i32 noundef %i.q) #29
  %i.s = tail call i64 @rb_ary_unshift(i64 noundef %i.l, i64 noundef %i.r) #29 ; 0 uses
  %i.t = call i64 @rb_make_exception(i32 noundef 3, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !51   ; 3 uses
  store i32 %i.u, ptr %2, align 4, !tbaa !600
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.v, align 4, !tbaa !601
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.u, ptr %i.ae, align 4, !tbaa !600
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ab
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !601
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !347
  call void @ruby_show_error_line(ptr noundef %0, i64 noundef %i.t, ptr noundef nonnull %2, i32 noundef %i.u, ptr noundef %i.am) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !124
  call void @rb_ast_free(ptr noundef %i.ao) #29
  store ptr null, ptr %i.an, align 8, !tbaa !124
  call void @rb_exc_raise(i64 noundef %i.t) #31
  unreachable

bb.c:                                             ; preds = %.critedge
  %i.ap = tail call ptr @rb_enc_from_index(i32 noundef %i.g) #29 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %.val.i = load i32, ptr %i.aq, align 4, !tbaa !375
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.c
  %i.ar = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ap) #32
  %.not3.i = icmp eq i32 %i.ar, 0
  br i1 %.not3.i, label %bb.d, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.c, %rb_enc_asciicompat.exit
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.val = load ptr, ptr %i.as, align 8, !tbaa !353
  br label %bb.b

bb.d:                                             ; preds = %rb_enc_asciicompat.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #2

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_make_backtrace() local_unnamed_addr #2

declare i64 @rb_make_exception(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ruby_show_error_line(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #24

declare ptr @rb_enc_from_index(i32 noundef) local_unnamed_addr #2

declare i32 @rb_memcicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @parser_get_bool(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !20
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
  %i.e = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.645) #32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.g = tail call i32 @rb_parser_st_locale_insensitive_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.646) #32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.l = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.647, i64 noundef 24) #29
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = tail call i64 @rb_enc_str_new(ptr noundef nonnull %1, i64 noundef %i.m, ptr noundef %i.o) #29
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.s = tail call i64 @rb_enc_str_new(ptr noundef nonnull %2, i64 noundef %i.q, ptr noundef %i.r) #29
  %i.t = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef %i.k, i32 noundef 3, i64 noundef %i.l, i64 noundef %i.p, i64 noundef %i.s) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #24

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 314, 318) i32 @no_digits(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.659, i64 noundef 30, ptr noundef %i.c) #29
  %i.e = getelementptr i8, ptr %0, i64 368
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !55
  %i.f = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.a, i32 noundef 1, i64 noundef %i.d) #29 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = or i16 %i.h, 512
  store i16 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304
  %.not = icmp ult ptr %i.k, %i.m
  br i1 %.not, label %bb.b, label %nextc0.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load i8, ptr %i.k, align 1, !tbaa !20
  %i.o = icmp eq i8 %i.n, 95
  br i1 %i.o, label %bb.c, label %nextc0.exit

bb.c:                                             ; preds = %bb.b
  %i.p = and i16 %i.h, 8
  %.not13.i = icmp eq i16 %i.p, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !345

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !346
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 1 to ptr)
  br i1 %i.s, label %.critedge.i, label %bb.e, !prof !190

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.t = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.t, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.u = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !57
  %i.w = load i8, ptr %i.u, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 13
  br i1 %i.x, label %bb.f, label %nextc0.exit, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.v, %i.y
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.v, align 1, !tbaa !20
  %i.aa = icmp eq i8 %i.z, 10
  br i1 %i.aa, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !57
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.critedge.i, %bb.b, %bb.a
  %i.ac = tail call fastcc i32 @set_number_literal(ptr noundef nonnull %0, i32 noundef 314, i32 noundef 0, i32 noundef 10, i32 noundef 0)
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @number_literal_suffix(ptr noundef %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %i.n, %.backedge.backedge ] ; 2 uses
  %.026 = phi i32 [ %1, %bb.a ], [ %.026.be, %.backedge.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 7 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !304
  %.not.i = icmp ult ptr %i.f, %i.g
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !345

bb.b:                                             ; preds = %.backedge
  %i.h = load i16, ptr %i.d, align 8
  %i.i = and i16 %i.h, 8
  %.not13.i = icmp eq i16 %i.i, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !345

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !346
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %.critedge.i, label %bb.d, !prof !190

.critedge.i:                                      ; preds = %bb.c, %bb.b, %.backedge
  %i.l = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.l, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.m = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 7 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !57
  %i.o = load i8, ptr %i.m, align 1, !tbaa !20    ; 5 uses
  %i.p = icmp eq i8 %i.o, 13
  br i1 %i.p, label %bb.e, label %bb.g, !prof !190

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.n, %i.q
  br i1 %.not.i.i, label %bb.f, label %.thread42

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.n, align 1, !tbaa !20
  %i.s = icmp eq i8 %i.r, 10                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %spec.select = select i1 %i.s, ptr %i.t, ptr %i.n
  %spec.select78 = select i1 %i.s, i32 10, i32 13
  br label %.thread42

bb.g:                                             ; preds = %bb.d
  %i.u = and i32 %.026, 2
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp eq i8 %i.o, 105
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = or i32 %.0, 2
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.j
  %.026.be = phi i32 [ 0, %bb.h ], [ %i.ab, %bb.j ]
  %.0.be = phi i32 [ %i.x, %bb.h ], [ %i.aa, %bb.j ]
  br label %.backedge, !llvm.loop !602

bb.i:                                             ; preds = %bb.g
  %i.y = trunc i32 %.026 to i1
  %i.z = icmp eq i8 %i.o, 114
  %or.cond3 = and i1 %i.z, %i.y
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = or i32 %.0, 1
  %i.ab = and i32 %.026, -2
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.i
  %i.ac = zext nneg i8 %i.o to i32
  %i.ad = icmp slt i8 %i.o, 0
  br i1 %i.ad, label %nextc0.exit.sink.split, label %.thread42

.thread42:                                        ; preds = %bb.f, %bb.e, %bb.k
  %i.ae = phi ptr [ %i.n, %bb.k ], [ %i.n, %bb.e ], [ %spec.select, %bb.f ] ; 2 uses
  %.011.i.ph374145 = phi i32 [ %i.ac, %bb.k ], [ 13, %bb.e ], [ %spec.select78, %bb.f ] ; 2 uses
  %i.af = and i32 %.011.i.ph374145, 95
  %i.ag = add nsw i32 %i.af, -65
  %narrow.i = icmp ult i32 %i.ag, 26
  %i.ah = icmp eq i32 %.011.i.ph374145, 95
  %or.cond5 = or i1 %i.ah, %narrow.i
  br i1 %or.cond5, label %nextc0.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %.thread42
  %i.ai = load i16, ptr %i.d, align 8
  %i.aj = and i16 %i.ai, -9
  store i16 %i.aj, ptr %i.d, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 3 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = icmp ugt ptr %i.ak, %i.am
  br i1 %i.an, label %bb.m, label %nextc0.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !20
  %i.ap = icmp eq i8 %i.ao, 10
  br i1 %i.ap, label %bb.n, label %nextc0.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -2 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = icmp eq i8 %i.ar, 13
  br i1 %i.as, label %nextc0.exit.sink.split, label %nextc0.exit

nextc0.exit.sink.split:                           ; preds = %bb.n, %bb.k, %.thread42
  %.sink = phi ptr [ %i.b, %bb.k ], [ %i.b, %.thread42 ], [ %i.aq, %bb.n ]
  %.027.ph = phi i32 [ 0, %bb.k ], [ 0, %.thread42 ], [ %.0, %bb.n ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !57
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %nextc0.exit.sink.split, %bb.n, %bb.m, %bb.l
  %.027 = phi i32 [ %.0, %bb.n ], [ %.027.ph, %nextc0.exit.sink.split ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %.critedge.i ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 314, 318) i32 @set_number_literal(ptr noundef %0, i32 noundef range(i32 314, 317) %1, i32 noundef range(i32 0, 4) %2, i32 noundef range(i32 0, 17) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %6 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %7 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %8 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %i.a = and i32 %2, 1
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 %1, i32 316
  %.not49 = icmp samesign ult i32 %2, 2
  %.1 = select i1 %.not49, i32 %spec.select, i32 317 ; 2 uses
  switch i32 %.1, label %default.unreachable54 [
    i32 314, label %bb.b
    i32 315, label %bb.c
    i32 316, label %bb.d
    i32 317, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = call ptr @rb_parser_set_location(ptr noundef %0, ptr noundef nonnull %5) #29 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338
  %i.e = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.d) #29
  %i.f = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !124
  %i.g = call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 59, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 9 uses
  call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) 59) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !23
  %i.i = load i32, ptr %5, align 4, !tbaa !62
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr %i.g, align 8, !tbaa !70
  %i.l = and i64 %i.k, 32767
  %i.m = shl nsw i64 %i.j, 15
  %i.n = or disjoint i64 %i.l, %i.m
  store i64 %i.n, ptr %i.g, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !194  ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !194
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.p, ptr %i.r, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.e, ptr %i.s, align 8, !tbaa !377
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !378
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %3, ptr %i.u, align 4, !tbaa !379
  %i.v = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.g, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.af = call i64 @rb_enc_str_new(ptr noundef %i.x, i64 noundef %i.ac, ptr noundef %i.ae) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ah = call ptr @rb_parser_set_location(ptr noundef %0, ptr noundef nonnull %6) #29 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !338
  %i.ak = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.aj) #29
  %i.al = getelementptr i8, ptr %0, i64 288
  %.val.i.i51 = load ptr, ptr %i.al, align 8, !tbaa !124
  %i.am = call ptr @rb_ast_newnode(ptr noundef %.val.i.i51, i32 noundef range(i32 0, 115) 60, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  call void @rb_node_init(ptr noundef %i.am, i32 noundef range(i32 0, 115) 60) #29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !23
  %i.ao = load i32, ptr %6, align 4, !tbaa !62
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !70
  %i.ar = and i64 %i.aq, 32767
  %i.as = shl nsw i64 %i.ap, 15
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !194
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !195
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ak, ptr %i.ay, align 8, !tbaa !381
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.az, align 8, !tbaa !382
  %i.ba = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !50 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bk = call i64 @rb_enc_str_new(ptr noundef %i.bc, i64 noundef %i.bh, ptr noundef %i.bj) #29
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bm = call ptr @rb_parser_set_location(ptr noundef %0, ptr noundef nonnull %7) #29 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !338
  %i.bp = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.bo) #29
  %i.bq = getelementptr i8, ptr %0, i64 288
  %.val.i.i52 = load ptr, ptr %i.bq, align 8, !tbaa !124
  %i.br = call ptr @rb_ast_newnode(ptr noundef %.val.i.i52, i32 noundef range(i32 0, 115) 61, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  call void @rb_node_init(ptr noundef %i.br, i32 noundef range(i32 0, 115) 61) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  %i.bt = load i32, ptr %7, align 4, !tbaa !62
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !70
  %i.bw = and i64 %i.bv, 32767
  %i.bx = shl nsw i64 %i.bu, 15
  %i.by = or disjoint i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.br, align 8, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !194 ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !194
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i32 %i.ca, ptr %i.cc, align 8, !tbaa !195
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.bp, ptr %i.cd, align 8, !tbaa !384
end_hunk_9
begin_hunk_10_@set_number_literal:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ct = icmp eq i32 %1, 315
  %spec.store.select = zext i1 %i.ct to i32
  %spec.select50 = select i1 %.not, i32 %spec.store.select, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cu = call ptr @rb_parser_set_location(ptr noundef %0, ptr noundef nonnull %8) #29 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !338
  %i.cx = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.cw) #29
  %i.cy = getelementptr i8, ptr %0, i64 288
  %.val.i.i53 = load ptr, ptr %i.cy, align 8, !tbaa !124
  %i.cz = call ptr @rb_ast_newnode(ptr noundef %.val.i.i53, i32 noundef range(i32 0, 115) 62, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 11 uses
  call void @rb_node_init(ptr noundef %i.cz, i32 noundef range(i32 0, 115) 62) #29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull readonly align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !23
  %i.db = load i32, ptr %8, align 4, !tbaa !62
  %i.dc = sext i32 %i.db to i64
  %i.dd = load i64, ptr %i.cz, align 8, !tbaa !70
  %i.de = and i64 %i.dd, 32767
  %i.df = shl nsw i64 %i.dc, 15
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.cz, align 8, !tbaa !70
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !194 ; 2 uses
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 8, !tbaa !194
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store i32 %i.di, ptr %i.dk, align 8, !tbaa !195
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %i.cx, ptr %i.dl, align 8, !tbaa !389
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store i32 0, ptr %i.dm, align 8, !tbaa !390
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  store i32 %3, ptr %i.dn, align 4, !tbaa !391
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i32 %4, ptr %i.do, align 8, !tbaa !392
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 52
  store i32 %spec.select50, ptr %i.dp, align 4, !tbaa !393
  %i.dq = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %i.cz, ptr %i.dq, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !57
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !58
  %i.ea = call i64 @rb_enc_str_new(ptr noundef %i.ds, i64 noundef %i.dx, ptr noundef %i.dz) #29
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.f

default.unreachable54:                            ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ed = load i16, ptr %i.ec, align 8
  %i.ee = and i16 %i.ed, 32
  %.not.i = icmp eq i16 %i.ee, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !68
  %i.eh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.eg, i32 noundef 2, i32 noundef 9005) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.eh, %bb.g ], [ 2, %bb.f ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i, ptr %i.ei, align 8, !tbaa !68
  ret i32 %.1
}

declare double @ruby_strtod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_errno_ptr() local_unnamed_addr #2

declare noalias nonnull ptr @ruby_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tokenize_ident(ptr nofree noundef captures(none) initializes((392, 400)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !367
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = tail call i64 @rb_intern3(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %i.g) #29 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !47
  store i64 %i.h, ptr %i.i, align 8, !tbaa !20
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.h) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.j, ptr %i.k, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @tokadd_ident(ptr noundef %0, i32 noundef range(i32 -1, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @tokadd_mbchar(ptr noundef %0, i32 noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %pushback.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i = icmp ult ptr %i.h, %i.i
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !345

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.e, align 8
  %i.k = and i16 %i.j, 8
  %.not13.i = icmp eq i16 %i.k, 0
  br i1 %.not13.i, label %bb.d, label %.critedge.i, !prof !345

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 1 to ptr)
  br i1 %i.m, label %.critedge.i, label %bb.e, !prof !190

.critedge.i:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge.i, %bb.d
  %i.o = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !57
  %i.q = load i8, ptr %i.o, align 1, !tbaa !20    ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i8 %i.q, 13
  br i1 %i.s, label %bb.f, label %nextc0.exit, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !304
  %.not.i.i = icmp ult ptr %i.p, %i.t
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.p, align 1, !tbaa !20
  %i.v = icmp eq i8 %i.u, 10
  br i1 %i.v, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store ptr %i.w, ptr %i.c, align 8, !tbaa !57
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.r, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 2 uses
  %i.x = load i16, ptr %i.e, align 8
  %i.y = and i16 %i.x, 8
  %.not.i7 = icmp eq i16 %i.y, 0
  br i1 %.not.i7, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !58  ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !372
  %i.ag = tail call i32 %i.af(i32 noundef range(i32 -1, 256) %i.ad, i32 noundef 13, ptr noundef %i.ab) #29, !inline_history !8
  %.not.i.i8 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i8, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !20  ; 2 uses
  %i.ai = icmp ne i8 %i.ah, 95
  %i.aj = icmp sgt i8 %i.ah, -1
  %spec.select = and i1 %i.ai, %i.aj
  br i1 %spec.select, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.ak = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %pushback.exit, label %bb.b, !llvm.loop !603

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.am = icmp eq i32 %.011.i, -1
  br i1 %i.am, label %pushback.exit, label %bb.j

bb.j:                                             ; preds = %parser_is_identchar.exit.thread
  %i.an = load i16, ptr %i.e, align 8
  %i.ao = and i16 %i.an, -9
  store i16 %i.ao, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 3 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = icmp ugt ptr %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %pushback.exit

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.av = icmp eq i8 %i.au, 10
  br i1 %i.av, label %bb.l, label %pushback.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 -2 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !20
  %i.ay = icmp eq i8 %i.ax, 13
  br i1 %i.ay, label %bb.m, label %pushback.exit

bb.m:                                             ; preds = %bb.l
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.backedge, %bb.a, %bb.m, %bb.l, %bb.k, %bb.j, %parser_is_identchar.exit.thread
  %.06 = phi i32 [ 0, %bb.m ], [ 0, %parser_is_identchar.exit.thread ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ -1, %bb.a ], [ -1, %.critedge.backedge ]
  ret i32 %.06
}

declare i32 @rb_enc_symname_type(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_intern3(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #13

declare ptr @rb_reserved_word(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @local_id(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %.not60.i = icmp eq ptr %i.d, null
  br i1 %.not60.i, label %.critedge37.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.02962.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.03061.i = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.03061.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.h = icmp ult ptr %i.g, inttoptr (i64 2 to ptr)
  br i1 %i.h, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02962.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.critedge37.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %.lr.ph.i
  %.not66.i = icmp eq ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %.not66.i, label %bb.c, label %.critedge37.i

bb.c:                                             ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !289
  %i.m = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.l) #29
  br label %local_id_ref.exit

.critedge37.i:                                    ; preds = %bb.b, %.critedge.i, %bb.a
  %.03058.i = phi ptr [ %.03061.i, %.critedge.i ], [ null, %bb.a ], [ null, %bb.b ] ; 3 uses
  %.02956.i = phi ptr [ %.02962.i, %.critedge.i ], [ %i.e, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.n = icmp ult ptr %.02956.i, inttoptr (i64 2 to ptr)
  br i1 %i.n, label %vtable_included.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge37.i
  %i.o = getelementptr inbounds nuw i8, ptr %.02956.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !181  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %vtable_included.exit.thread.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %.02956.i, align 8, !tbaa !183
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = icmp eq i64 %i.t, %1
  br i1 %i.u, label %local_id_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %vtable_included.exit.thread.i, label %bb.d, !llvm.loop !2

vtable_included.exit.thread.i:                    ; preds = %bb.e, %.preheader.i.i, %.critedge37.i
  %i.v = icmp ult ptr %.03058.i, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %local_id_ref.exit, label %.preheader.i38.i

.preheader.i38.i:                                 ; preds = %vtable_included.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03058.i, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !181  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i40.i, label %local_id_ref.exit

.lr.ph.i40.i:                                     ; preds = %.preheader.i38.i
  %i.z = load ptr, ptr %.03058.i, align 8, !tbaa !183
  %wide.trip.count.i41.i = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i40.i
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %indvars.iv.next.i43.i, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i42.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp eq i64 %i.ab, %1
  br i1 %i.ac, label %local_id_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, %wide.trip.count.i41.i
  br i1 %exitcond.not.i44.i, label %local_id_ref.exit, label %bb.f, !llvm.loop !2

local_id_ref.exit:                                ; preds = %bb.d, %bb.f, %bb.g, %bb.c, %vtable_included.exit.thread.i, %.preheader.i38.i
  %.031.i = phi i32 [ %i.m, %bb.c ], [ 0, %vtable_included.exit.thread.i ], [ 0, %.preheader.i38.i ], [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ]
  ret i32 %.031.i
}

declare i32 @rb_parser_dvar_defined_ref(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @local_id_ref(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !185  ; 2 uses
  %.not60 = icmp eq ptr %i.d, null
  br i1 %.not60, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.063 = phi ptr [ %.1, %bb.d ], [ %i.g, %bb.a ] ; 3 uses
  %.02962 = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %.03061 = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.03061, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 4 uses
  %i.j = icmp ult ptr %i.i, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.02962, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 2 uses
  %.not36 = icmp eq ptr %.063, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge37, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph
  %.not66 = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  br i1 %.not66, label %bb.e, label %.critedge37

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.q = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.p) #29
  br label %vtable_included.exit

.critedge37:                                      ; preds = %bb.d, %bb.a, %.critedge
  %.03058 = phi ptr [ %.03061, %.critedge ], [ null, %bb.a ], [ null, %bb.d ] ; 3 uses
  %.02956 = phi ptr [ %.02962, %.critedge ], [ %i.e, %bb.a ], [ %i.l, %bb.d ] ; 3 uses
  %.054 = phi ptr [ %.063, %.critedge ], [ %i.g, %bb.a ], [ %.1, %bb.d ] ; 2 uses
end_hunk_10
begin_hunk_11_@rb_node_list_new2:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !176
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_match2_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 57, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 57) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %3, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !274
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !275
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !276
  ret ptr %i.b
}

declare i64 @rb_node_regx_string_val(ptr noundef) local_unnamed_addr #2

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #2

declare i32 @onig_foreach_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @reg_named_capture_assign_iter(ptr noundef %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !279
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !281
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !282
  %i.l = tail call i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %i.a, ptr noundef %0, i64 noundef %i.f, ptr noundef %i.c, ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef %i.k) #29
  ret i32 %i.l
}

declare i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_nested_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = icmp ne ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %i.g, ptr %i.d, ptr %i.f       ; 2 uses
  %i.j = select i1 %i.g, ptr @.str.682, ptr @.str.683
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !344
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nd_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !tbaa !70
  %i.n = lshr i64 %i.m, 15
  %i.o = trunc i64 %i.n to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.o, %bb.c ], [ -1, %bb.b ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.681, ptr noundef nonnull %i.j, ptr noundef %i.l, i32 noundef %.0.i) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @it_used_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.g = load i64, ptr %i.d, align 8, !tbaa !70
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.684, ptr noundef %i.f, i32 noundef %i.i) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @parser_numbered_param(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 6 uses
  %switch = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %switch, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %switch23 = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %switch23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.678) #29
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp slt i32 %i.h, %1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %1, ptr %i.g, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !181  ; 2 uses
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %.pre.i.pre = load ptr, ptr %i.d, align 8, !tbaa !183
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %vtable_add_gen.exit
  %.pre.i = phi ptr [ %.pre.i.pre, %.lr.ph ], [ %.pre.i24, %vtable_add_gen.exit ] ; 2 uses
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.y, %vtable_add_gen.exit ] ; 4 uses
  %i.p = shl i32 %i.o, 4
  %i.q = add i32 %i.p, 3777
  %i.r = sext i32 %i.q to i64
  %i.s = load i32, ptr %i.n, align 4, !tbaa !182
  %i.t = icmp eq i32 %i.o, %i.s
  br i1 %i.t, label %bb.j, label %vtable_add_gen.exit

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.u, ptr %i.n, align 4, !tbaa !182
  %i.v = sext i32 %i.u to i64
  %i.w = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.v, i64 noundef 8) #36 ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !183
  %.pre1.i = load i32, ptr %i.k, align 8, !tbaa !181
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.j, %bb.i
  %.pre.i24 = phi ptr [ %i.w, %bb.j ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.x = phi i32 [ %.pre1.i, %bb.j ], [ %i.o, %bb.i ] ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  store i32 %i.y, ptr %i.k, align 8, !tbaa !181
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.pre.i24, i64 %i.z
  store i64 %i.r, ptr %i.aa, align 8, !tbaa !22
  %i.ab = icmp sgt i32 %1, %i.y
  br i1 %i.ab, label %bb.i, label %.loopexit, !llvm.loop !604

.loopexit:                                        ; preds = %vtable_add_gen.exit, %bb.h, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.h ], [ true, %vtable_add_gen.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @numparam_used_p(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.g = load i64, ptr %i.d, align 8, !tbaa !70
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.685, ptr noundef %i.f, i32 noundef %i.i) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %nd_line.exit
  %.0 = phi i32 [ 1, %nd_line.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vtable_add_gen(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult ptr %1, inttoptr (i64 2 to ptr)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef %0, ptr noundef nonnull @.str.686, ptr noundef %1) #29
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !181  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !182
  %i.f = icmp eq i32 %i.c, %i.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !183   ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = shl nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !182
  %i.h = sext i32 %i.g to i64
  %i.i = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.h, i64 noundef 8) #36 ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !183
  %.pre1 = load i32, ptr %i.b, align 8, !tbaa !181
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre1, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %i.i, %bb.d ], [ %.pre, %bb.c ]
  %i.l = add nsw i32 %i.j, 1
  store i32 %i.l, ptr %i.b, align 8, !tbaa !181
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m
  store i64 %2, ptr %i.n, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_vcall_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 39, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 39) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !606
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_gvar_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 50) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !323
  ret ptr %i.b
}

declare void @rb_parser_fatal(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @str_to_sym_node(ptr noundef %0, ptr %.32.val, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef %.32.val)
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51   ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !62
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r
  store ptr %i.s, ptr %i.l, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 %i.v
  store ptr %i.w, ptr %i.j, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.019.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.688, i64 noundef 14, ptr noundef %i.z) #29
  %i.ab = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ac = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.x, i32 noundef 1, i64 noundef %i.aa) #29 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = or i16 %i.ae, 512
  store i16 %i.af, ptr %i.ad, align 8
  %.not.i = icmp eq ptr %.019.i, null
  br i1 %.not.i, label %parser_yyerror.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i, ptr %i.ah, align 8, !tbaa !57
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.e, %bb.f
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aj = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %i.ai) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ak = tail call i64 @rb_str_new_parser_string(ptr noundef %.32.val) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %parser_yyerror.exit
  %.0 = phi i64 [ %i.aj, %parser_yyerror.exit ], [ %i.ak, %bb.g ]
  %i.al = getelementptr i8, ptr %0, i64 288
  %.val.i.i9 = load ptr, ptr %i.al, align 8, !tbaa !124
  %i.am = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i9, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.am, i32 noundef range(i32 0, 115) 101) #29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %i.ao = load i32, ptr %1, align 4, !tbaa !62
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !70
  %i.ar = and i64 %i.aq, 32767
  %i.as = shl nsw i64 %i.ap, 15
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !194
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !195
  %i.ay = tail call ptr @rb_str_to_parser_string(ptr noundef %0, i64 noundef %.0) #29
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !262
  ret ptr %i.am
}

declare i64 @rb_str_new_parser_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @reg_compile(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_errinfo() #29
  %i.b = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %parser_reg_compile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !328
  %i.d = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !353
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.689, i32 noundef range(i32 1, 0) %i.b, ptr noundef %.val.val.i.i) #29
  br label %parser_reg_compile.exit

parser_reg_compile.exit:                          ; preds = %bb.a, %bb.b
  %i.e = tail call i64 @rb_str_new_parser_string(ptr noundef %1) #29
  %i.f = tail call i64 @rb_parser_reg_compile(ptr noundef %0, i64 noundef %i.e, i32 noundef %2) #29
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_reg_compile.exit
  %i.h = tail call i64 @rb_errinfo() #29
  %i.i = tail call i64 @rb_attr_get(i64 noundef %i.h, i64 noundef 3489) #29
  tail call void @rb_set_errinfo(i64 noundef %i.a) #29
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.544, i64 noundef %i.i) #29
  br label %bb.d

bb.d:                                             ; preds = %parser_reg_compile.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dregex_fragment_setenc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %reg_fragment_setenc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %2) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %reg_fragment_setenc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.e = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.e, align 8, !tbaa !353
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.689, i32 noundef range(i32 1, 0) %i.c, ptr noundef %.val.val.i) #29
  br label %reg_fragment_setenc.exit

reg_fragment_setenc.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  %.0.in22 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.023 = load ptr, ptr %.0.in22, align 8, !tbaa !269 ; 2 uses
  %.not1624 = icmp eq ptr %.023, null
  br i1 %.not1624, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %reg_fragment_setenc.exit21, %reg_fragment_setenc.exit
  ret void

.lr.ph:                                           ; preds = %reg_fragment_setenc.exit, %reg_fragment_setenc.exit21
  %.025 = phi ptr [ %.0, %reg_fragment_setenc.exit21 ], [ %.023, %reg_fragment_setenc.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %.val17 = load i64, ptr %i.g, align 8, !tbaa !70
  %i.h = trunc i64 %.val17 to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 127
  switch i32 %i.j, label %reg_fragment_setenc.exit21 [
    i32 63, label %bb.d
    i32 64, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !312  ; 2 uses
  %i.m = tail call i32 @rb_reg_fragment_setenc(ptr noundef %0, ptr noundef %i.l, i32 noundef %2) #29 ; 2 uses
  %.not.i18 = icmp eq i32 %i.m, 0
  br i1 %.not.i18, label %reg_fragment_setenc.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val.i19 = load ptr, ptr %i.n, align 8, !tbaa !328
  %i.o = getelementptr i8, ptr %.val.i19, i64 8
  %.val.val.i20 = load ptr, ptr %i.o, align 8, !tbaa !353
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.689, i32 noundef range(i32 1, 0) %i.m, ptr noundef %.val.val.i20) #29
  br label %reg_fragment_setenc.exit21

bb.f:                                             ; preds = %.lr.ph
  tail call fastcc void @dregex_fragment_setenc(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %2)
  br label %reg_fragment_setenc.exit21

reg_fragment_setenc.exit21:                       ; preds = %.lr.ph, %bb.e, %bb.d, %bb.f
  %.0.in = getelementptr inbounds nuw i8, ptr %.025, i64 48
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !269 ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !607
}

declare i64 @rb_errinfo() local_unnamed_addr #2

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_set_errinfo(i64 noundef) local_unnamed_addr #2

declare i64 @rb_parser_reg_compile(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_reg_fragment_setenc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @rb_st_init_table(ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @literal_cmp(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %node_integer_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 22 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 22 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !70
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 127                        ; 4 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !70
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !378
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !378
  %.not.i = icmp eq i32 %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %node_integer_cmp.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !379
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !379
  %.not6.i = icmp eq i32 %i.q, %i.s
  br i1 %.not6.i, label %bb.f, label %node_integer_cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !377
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !377
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.w) #32
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  br label %node_integer_cmp.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !382
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !382
  %.not.i35 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not.i35, label %bb.h, label %node_integer_cmp.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !381
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !381
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.ah) #32
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  br label %node_integer_cmp.exit

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !385
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !385
  %.not.i36 = icmp eq i32 %i.am, %i.ao
  br i1 %.not.i36, label %bb.j, label %node_integer_cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !386
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !386
  %.not8.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not8.i, label %bb.k, label %node_integer_cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !387
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !387
  %.not9.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not9.i, label %bb.l, label %node_integer_cmp.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !384
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !384
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.ba) #32
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  br label %node_integer_cmp.exit

bb.m:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !390
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !390
  %.not.i37 = icmp eq i32 %i.bf, %i.bh
  br i1 %.not.i37, label %bb.n, label %node_integer_cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !391
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !391
  %.not10.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not10.i, label %bb.o, label %node_integer_cmp.exit

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !392
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !392
  %.not11.i = icmp eq i32 %i.bn, %i.bp
  br i1 %.not11.i, label %bb.p, label %node_integer_cmp.exit

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !393
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !393
  %.not12.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not12.i, label %bb.q, label %node_integer_cmp.exit

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !389
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !389
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) %i.bx) #32
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  br label %node_integer_cmp.exit

bb.r:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !312 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !312 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !325
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !326 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !325
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !326
  %.not.i38 = icmp eq i64 %i.ci, %i.cm
  br i1 %.not.i38, label %bb.s, label %node_integer_cmp.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !328
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !328
  %.not12.i39 = icmp eq ptr %i.cq, %i.co
  br i1 %.not12.i39, label %bb.t, label %node_integer_cmp.exit

bb.t:                                             ; preds = %bb.s
  %bcmp.i = tail call i32 @bcmp(ptr %i.cg, ptr %i.ck, i64 %i.ci)
  %i.cr = icmp ne i32 %bcmp.i, 0
  %i.cs = zext i1 %i.cr to i32
  br label %node_integer_cmp.exit

bb.u:                                             ; preds = %bb.c
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !262 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !262 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !325
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !326 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !325
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !326
  %.not.i40 = icmp eq i64 %i.da, %i.de
  br i1 %.not.i40, label %bb.v, label %node_integer_cmp.exit

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !328
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !328
  %.not12.i41 = icmp eq ptr %i.di, %i.dg
  br i1 %.not12.i41, label %bb.w, label %node_integer_cmp.exit

bb.w:                                             ; preds = %bb.v
  %bcmp.i42 = tail call i32 @bcmp(ptr %i.cy, ptr %i.dc, i64 %i.da)
  %i.dj = icmp ne i32 %bcmp.i42, 0
  %i.dk = zext i1 %i.dj to i32
  br label %node_integer_cmp.exit

bb.x:                                             ; preds = %bb.c
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !332
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !332
  %.not.i44 = icmp eq i32 %i.dm, %i.do
  br i1 %.not.i44, label %bb.y, label %node_integer_cmp.exit

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !331 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !331 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !325
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !326 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !325
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !326
  %.not.i.i = icmp eq i64 %i.dw, %i.ea
  br i1 %.not.i.i, label %bb.z, label %node_integer_cmp.exit

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !328
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !328
  %.not12.i.i = icmp eq ptr %i.ee, %i.ec
  br i1 %.not12.i.i, label %bb.aa, label %node_integer_cmp.exit

bb.aa:                                            ; preds = %bb.z
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.du, ptr %i.dy, i64 %i.dw)
  %i.ef = icmp ne i32 %bcmp.i.i, 0
  %i.eg = zext i1 %i.ef to i32
  br label %node_integer_cmp.exit

bb.ab:                                            ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !204
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !204
  %i.el = icmp ne i32 %i.ei, %i.ek
  %i.em = zext i1 %i.el to i32
  br label %node_integer_cmp.exit

bb.ac:                                            ; preds = %bb.c
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !319 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !319 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !325
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !326 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !325
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !326
  %.not.i45 = icmp eq i64 %i.eu, %i.ey
  br i1 %.not.i45, label %bb.ad, label %node_integer_cmp.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !328
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !328
  %.not12.i46 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not12.i46, label %bb.ae, label %node_integer_cmp.exit

bb.ae:                                            ; preds = %bb.ad
  %bcmp.i47 = tail call i32 @bcmp(ptr %i.es, ptr %i.ew, i64 %i.eu)
  %i.fd = icmp ne i32 %bcmp.i47, 0
  %i.fe = zext i1 %i.fd to i32
  br label %node_integer_cmp.exit

bb.af:                                            ; preds = %bb.c
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !321
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !321
  %i.fj = icmp ne ptr %i.fg, %i.fi
  %i.fk = zext i1 %i.fj to i32
  br label %node_integer_cmp.exit

bb.ag:                                            ; preds = %bb.c
  %i.fl = tail call ptr @ruby_node_name(i32 noundef %i.g) #29
  %i.fm = tail call ptr @ruby_node_name(i32 noundef %i.g) #29
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.691, ptr noundef %i.fl, ptr noundef %i.fm) #34
  unreachable

node_integer_cmp.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.ab, %bb.af, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.fk, %bb.af ], [ -1, %bb.b ], [ %i.z, %bb.f ], [ %i.ak, %bb.h ], [ %i.bd, %bb.l ], [ %i.ca, %bb.q ], [ %i.cs, %bb.t ], [ %i.dk, %bb.w ], [ %i.em, %bb.ab ], [ %i.eg, %bb.aa ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.x ], [ 1, %bb.z ], [ 1, %bb.y ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ %i.fe, %bb.ae ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i64 @literal_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70
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
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !377  ; 6 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.g) #32 ; 4 uses
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
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, 33
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.o, %i.s
  %i.u = mul i64 %i.t, 33
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = zext i8 %i.x to i64
  %i.z = add i64 %i.u, %i.y
  %i.aa = mul i64 %i.z, 33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = zext i8 %i.ad to i64
  %i.af = add i64 %i.aa, %i.ae                    ; 3 uses
  %i.ag = add nuw i64 %.09.i.i.i, 4               ; 2 uses
  %niter193.next.3 = add nuw i64 %niter193, 4     ; 2 uses
  %niter193.ncmp.3 = icmp eq i64 %niter193.next.3, %unroll_iter192
  br i1 %niter193.ncmp.3, label %rb_char_p_hash.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !608

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !381 ; 6 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ai) #32 ; 4 uses
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
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %i.ao = zext i8 %i.an to i64
  %i.ap = add i64 %i.al, %i.ao
  %i.aq = mul i64 %i.ap, 33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = zext i8 %i.at to i64
  %i.av = add i64 %i.aq, %i.au
  %i.aw = mul i64 %i.av, 33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = zext i8 %i.az to i64
  %i.bb = add i64 %i.aw, %i.ba
  %i.bc = mul i64 %i.bb, 33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.09.i.i.i23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg                    ; 3 uses
  %i.bi = add nuw i64 %.09.i.i.i23, 4             ; 2 uses
  %niter186.next.3 = add nuw i64 %niter186, 4     ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %rb_char_p_hash.exit.loopexit129.unr-lcssa, label %.lr.ph.i.i.i22, !llvm.loop !608

bb.d:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !384 ; 6 uses
  %i.bl = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bk) #32 ; 4 uses
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
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bn, %i.bq
  %i.bs = mul i64 %i.br, 33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %i.bs, %i.bw
  %i.by = mul i64 %i.bx, 33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !20
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add i64 %i.by, %i.cc
  %i.ce = mul i64 %i.cd, 33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.09.i.i.i30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = zext i8 %i.ch to i64
  %i.cj = add i64 %i.ce, %i.ci                    ; 3 uses
  %i.ck = add nuw i64 %.09.i.i.i30, 4             ; 2 uses
  %niter179.next.3 = add nuw i64 %niter179, 4     ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %rb_char_p_hash.exit.loopexit131.unr-lcssa, label %.lr.ph.i.i.i29, !llvm.loop !608

bb.e:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !389 ; 6 uses
  %i.cn = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cm) #32 ; 4 uses
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
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20
  %i.cs = zext i8 %i.cr to i64
  %i.ct = add i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, 33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = zext i8 %i.cx to i64
  %i.cz = add i64 %i.cu, %i.cy
  %i.da = mul i64 %i.cz, 33
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.de = zext i8 %i.dd to i64
  %i.df = add i64 %i.da, %i.de
  %i.dg = mul i64 %i.df, 33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.i37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add nuw i64 %.09.i.i.i37, 4             ; 2 uses
  %niter172.next.3 = add nuw i64 %niter172, 4     ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %rb_char_p_hash.exit.loopexit133.unr-lcssa, label %.lr.ph.i.i.i36, !llvm.loop !608

bb.f:                                             ; preds = %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !312 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %.val19 = load i64, ptr %i.dp, align 8, !tbaa !326 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 24
  %.val20 = load ptr, ptr %i.dq, align 8, !tbaa !325 ; 5 uses
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
  %i.dt = getelementptr inbounds nuw i8, ptr %.val20, i64 %.09.i.i.i44
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = zext i8 %i.du to i64
  %i.dw = add i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 33
  %i.dy = getelementptr inbounds nuw i8, ptr %.val20, i64 %.09.i.i.i44
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !20
  %i.eb = zext i8 %i.ea to i64
  %i.ec = add i64 %i.dx, %i.eb
  %i.ed = mul i64 %i.ec, 33
  %i.ee = getelementptr inbounds nuw i8, ptr %.val20, i64 %.09.i.i.i44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !20
  %i.eh = zext i8 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = mul i64 %i.ei, 33
  %i.ek = getelementptr inbounds nuw i8, ptr %.val20, i64 %.09.i.i.i44
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 3
  %i.em = load i8, ptr %i.el, align 1, !tbaa !20
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %i.ej, %i.en                    ; 3 uses
  %i.ep = add nuw i64 %.09.i.i.i44, 4             ; 2 uses
  %niter165.next.3 = add nuw i64 %niter165, 4     ; 2 uses
  %niter165.ncmp.3 = icmp eq i64 %niter165.next.3, %unroll_iter164
  br i1 %niter165.ncmp.3, label %rb_char_p_hash.exit.loopexit135.unr-lcssa, label %.lr.ph.i.i.i43, !llvm.loop !608

bb.g:                                             ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !262 ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %.val17 = load i64, ptr %i.es, align 8, !tbaa !326 ; 4 uses
  %i.et = getelementptr i8, ptr %i.er, i64 24
  %.val18 = load ptr, ptr %i.et, align 8, !tbaa !325 ; 5 uses
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
  %i.ew = getelementptr inbounds nuw i8, ptr %.val18, i64 %.09.i.i.i50
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !20
  %i.ey = zext i8 %i.ex to i64
  %i.ez = add i64 %i.ev, %i.ey
  %i.fa = mul i64 %i.ez, 33
  %i.fb = getelementptr inbounds nuw i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !20
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add i64 %i.fa, %i.fe
  %i.fg = mul i64 %i.ff, 33
  %i.fh = getelementptr inbounds nuw i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !20
  %i.fk = zext i8 %i.fj to i64
  %i.fl = add i64 %i.fg, %i.fk
  %i.fm = mul i64 %i.fl, 33
  %i.fn = getelementptr inbounds nuw i8, ptr %.val18, i64 %.09.i.i.i50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !20
  %i.fq = zext i8 %i.fp to i64
  %i.fr = add i64 %i.fm, %i.fq                    ; 3 uses
  %i.fs = add nuw i64 %.09.i.i.i50, 4             ; 2 uses
  %niter158.next.3 = add nuw i64 %niter158, 4     ; 2 uses
  %niter158.ncmp.3 = icmp eq i64 %niter158.next.3, %unroll_iter157
  br i1 %niter158.ncmp.3, label %rb_char_p_hash.exit.loopexit137.unr-lcssa, label %.lr.ph.i.i.i49, !llvm.loop !608

bb.h:                                             ; preds = %bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !331 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %.val15 = load i64, ptr %i.fv, align 8, !tbaa !326 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 24
  %.val16 = load ptr, ptr %i.fw, align 8, !tbaa !325 ; 5 uses
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
  %i.fz = getelementptr inbounds nuw i8, ptr %.val16, i64 %.09.i.i.i57
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !20
  %i.gb = zext i8 %i.ga to i64
  %i.gc = add i64 %i.fy, %i.gb
  %i.gd = mul i64 %i.gc, 33
  %i.ge = getelementptr inbounds nuw i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !20
  %i.gh = zext i8 %i.gg to i64
  %i.gi = add i64 %i.gd, %i.gh
  %i.gj = mul i64 %i.gi, 33
  %i.gk = getelementptr inbounds nuw i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !20
  %i.gn = zext i8 %i.gm to i64
  %i.go = add i64 %i.gj, %i.gn
  %i.gp = mul i64 %i.go, 33
  %i.gq = getelementptr inbounds nuw i8, ptr %.val16, i64 %.09.i.i.i57
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20
  %i.gt = zext i8 %i.gs to i64
  %i.gu = add i64 %i.gp, %i.gt                    ; 3 uses
  %i.gv = add nuw i64 %.09.i.i.i57, 4             ; 2 uses
  %niter151.next.3 = add nuw i64 %niter151, 4     ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %rb_char_p_hash.exit.loopexit139.unr-lcssa, label %.lr.ph.i.i.i56, !llvm.loop !608

bb.i:                                             ; preds = %bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !204
  %i.gy = sext i32 %i.gx to i64
  br label %rb_char_p_hash.exit

bb.j:                                             ; preds = %bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !319 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %.val = load i64, ptr %i.hb, align 8, !tbaa !326 ; 4 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 24
  %.val14 = load ptr, ptr %i.hc, align 8, !tbaa !325 ; 5 uses
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
  %i.hf = getelementptr inbounds nuw i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !20
  %i.hh = zext i8 %i.hg to i64
  %i.hi = add i64 %i.he, %i.hh
  %i.hj = mul i64 %i.hi, 33
  %i.hk = getelementptr inbounds nuw i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !20
  %i.hn = zext i8 %i.hm to i64
  %i.ho = add i64 %i.hj, %i.hn
  %i.hp = mul i64 %i.ho, 33
  %i.hq = getelementptr inbounds nuw i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !20
  %i.ht = zext i8 %i.hs to i64
  %i.hu = add i64 %i.hp, %i.ht
  %i.hv = mul i64 %i.hu, 33
  %i.hw = getelementptr inbounds nuw i8, ptr %.val14, i64 %.09.i.i.i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 3
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20
  %i.hz = zext i8 %i.hy to i64
  %i.ia = add i64 %i.hv, %i.hz                    ; 3 uses
  %i.ib = add nuw i64 %.09.i.i.i64, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rb_char_p_hash.exit.loopexit141.unr-lcssa, label %.lr.ph.i.i.i63, !llvm.loop !608

bb.k:                                             ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !321
  %i.ie = ptrtoint ptr %i.id to i64
  br label %rb_char_p_hash.exit

bb.l:                                             ; preds = %bb.a
  %i.if = tail call ptr @ruby_node_name(i32 noundef %i.e) #29
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.692, ptr noundef %i.if) #34
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
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i.i.i.epil
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !20
  %i.ij = zext i8 %i.ii to i64
  %i.ik = add i64 %i.ig, %i.ij                    ; 2 uses
  %i.il = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter188.next = add i64 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i64 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !609

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
  %i.in = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.09.i.i.i23.epil
  %i.io = load i8, ptr %i.in, align 1, !tbaa !20
  %i.ip = zext i8 %i.io to i64
  %i.iq = add i64 %i.im, %i.ip                    ; 2 uses
  %i.ir = add nuw i64 %.09.i.i.i23.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i22.epil, !llvm.loop !610

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
  %i.it = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.09.i.i.i30.epil
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !20
  %i.iv = zext i8 %i.iu to i64
  %i.iw = add i64 %i.is, %i.iv                    ; 2 uses
  %i.ix = add nuw i64 %.09.i.i.i30.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i29.epil, !llvm.loop !611

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
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.09.i.i.i37.epil
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !20
  %i.jb = zext i8 %i.ja to i64
  %i.jc = add i64 %i.iy, %i.jb                    ; 2 uses
  %i.jd = add nuw i64 %.09.i.i.i37.epil, 1
  %epil.iter167.next = add i64 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i64 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i36.epil, !llvm.loop !612

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
  %i.jf = getelementptr inbounds nuw i8, ptr %.val20, i64 %.09.i.i.i44.epil
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !20
  %i.jh = zext i8 %i.jg to i64
  %i.ji = add i64 %i.je, %i.jh                    ; 2 uses
  %i.jj = add nuw i64 %.09.i.i.i44.epil, 1
  %epil.iter160.next = add i64 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i64 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i43.epil, !llvm.loop !613

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
  %i.jl = getelementptr inbounds nuw i8, ptr %.val18, i64 %.09.i.i.i50.epil
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !20
  %i.jn = zext i8 %i.jm to i64
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %i.jp = add nuw i64 %.09.i.i.i50.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i49.epil, !llvm.loop !614

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
  %i.jr = getelementptr inbounds nuw i8, ptr %.val16, i64 %.09.i.i.i57.epil
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !20
  %i.jt = zext i8 %i.js to i64
  %i.ju = add i64 %i.jq, %i.jt                    ; 2 uses
  %i.jv = add nuw i64 %.09.i.i.i57.epil, 1
  %epil.iter146.next = add i64 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i64 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i56.epil, !llvm.loop !615

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
  %i.jx = getelementptr inbounds nuw i8, ptr %.val14, i64 %.09.i.i.i64.epil
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !20
  %i.jz = zext i8 %i.jy to i64
  %i.ka = add i64 %i.jw, %i.jz                    ; 2 uses
  %i.kb = add nuw i64 %.09.i.i.i64.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rb_char_p_hash.exit, label %.lr.ph.i.i.i63.epil, !llvm.loop !616

rb_char_p_hash.exit:                              ; preds = %rb_char_p_hash.exit.loopexit141.unr-lcssa, %.lr.ph.i.i.i63.epil, %rb_char_p_hash.exit.loopexit139.unr-lcssa, %.lr.ph.i.i.i56.epil, %rb_char_p_hash.exit.loopexit137.unr-lcssa, %.lr.ph.i.i.i49.epil, %rb_char_p_hash.exit.loopexit135.unr-lcssa, %.lr.ph.i.i.i43.epil, %rb_char_p_hash.exit.loopexit133.unr-lcssa, %.lr.ph.i.i.i36.epil, %rb_char_p_hash.exit.loopexit131.unr-lcssa, %.lr.ph.i.i.i29.epil, %rb_char_p_hash.exit.loopexit129.unr-lcssa, %.lr.ph.i.i.i22.epil, %rb_char_p_hash.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.k, %bb.i
  %.0 = phi i64 [ %i.ie, %bb.k ], [ %i.ji, %.lr.ph.i.i.i43.epil ], [ %i.jo, %.lr.ph.i.i.i49.epil ], [ %i.ju, %.lr.ph.i.i.i56.epil ], [ %i.ik, %.lr.ph.i.i.i.epil ], [ %i.iq, %.lr.ph.i.i.i22.epil ], [ %i.iw, %.lr.ph.i.i.i29.epil ], [ %i.gy, %bb.i ], [ %i.jc, %.lr.ph.i.i.i36.epil ], [ 5381, %bb.b ], [ 5381, %bb.c ], [ 5381, %bb.d ], [ 5381, %bb.e ], [ 5381, %bb.f ], [ 5381, %bb.g ], [ 5381, %bb.h ], [ 5381, %bb.j ], [ %i.af, %rb_char_p_hash.exit.loopexit.unr-lcssa ], [ %i.bh, %rb_char_p_hash.exit.loopexit129.unr-lcssa ], [ %i.cj, %rb_char_p_hash.exit.loopexit131.unr-lcssa ], [ %i.dl, %rb_char_p_hash.exit.loopexit133.unr-lcssa ], [ %i.eo, %rb_char_p_hash.exit.loopexit135.unr-lcssa ], [ %i.fr, %rb_char_p_hash.exit.loopexit137.unr-lcssa ], [ %i.gu, %rb_char_p_hash.exit.loopexit139.unr-lcssa ], [ %i.ia, %rb_char_p_hash.exit.loopexit141.unr-lcssa ], [ %i.ka, %.lr.ph.i.i.i63.epil ]
  ret i64 %.0
}

declare i32 @rb_parser_trace_lex_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dvar_curr(ptr nofree readonly captures(none) %.168.val, i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %.168.val, align 8, !tbaa !184 ; 3 uses
  %i.b = icmp ult ptr %i.a, inttoptr (i64 2 to ptr)
  br i1 %i.b, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !183
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %vtable_included.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.b, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.c, %.preheader.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.168.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 3 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %vtable_included.exit, label %.preheader.i3

.preheader.i3:                                    ; preds = %vtable_included.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !181  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i5, label %vtable_included.exit

.lr.ph.i5:                                        ; preds = %.preheader.i3
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !183
  %wide.trip.count.i6 = zext nneg i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i5
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i8, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i7
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
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

; Function Attrs: nounwind uwtable
define internal fastcc void @local_var(ptr noundef %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 14
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp ult i64 %1, 3776
  %i.d = lshr i64 %1, 4
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -245
  %i.g = icmp ult i32 %i.f, -9
  %.not6.i = or i1 %i.b, %i.g
  %narrow.i.not.i = or i1 %i.c, %.not6.i
  br i1 %narrow.i.not.i, label %numparam_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.e, -235
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.747, i32 noundef %i.h) #29
  br label %numparam_name.exit

numparam_name.exit:                               ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140  ; 6 uses
  %i.m = icmp ult ptr %i.l, inttoptr (i64 2 to ptr)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %numparam_name.exit
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.686, ptr noundef %i.l) #29
  br label %vtable_add_gen.exit

bb.d:                                             ; preds = %numparam_name.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !181  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !182
  %i.r = icmp eq i32 %i.o, %i.q
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !183 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = shl nsw i32 %i.o, 1                      ; 2 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !182
  %i.t = sext i32 %i.s to i64
  %i.u = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.t, i64 noundef 8) #36 ; 2 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !183
  %.pre1.i = load i32, ptr %i.n, align 8, !tbaa !181
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i32 [ %.pre1.i, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.u, %bb.e ], [ %.pre.i, %bb.d ]
  %i.x = add nsw i32 %i.v, 1
  store i32 %i.x, ptr %i.n, align 8, !tbaa !181
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  store i64 %1, ptr %i.z, align 8, !tbaa !22
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.c, %bb.f
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 7 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %vtable_add_gen.exit10, label %bb.g

bb.g:                                             ; preds = %vtable_add_gen.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp ult ptr %i.ac, inttoptr (i64 2 to ptr)
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.686, ptr noundef nonnull %i.ac) #29
  br label %vtable_add_gen.exit10

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !181 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !182
  %i.al = icmp eq i32 %i.ai, %i.ak
  %.pre.i8 = load ptr, ptr %i.ac, align 8, !tbaa !183 ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = shl nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !182
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i8, i64 noundef %i.an, i64 noundef 8) #36 ; 2 uses
  store ptr %i.ao, ptr %i.ac, align 8, !tbaa !183
  %.pre1.i9 = load i32, ptr %i.ah, align 8, !tbaa !181
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = phi i32 [ %.pre1.i9, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %bb.j ], [ %.pre.i8, %bb.i ]
  %i.ar = add nsw i32 %i.ap, 1
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !181
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store i64 %i.af, ptr %i.at, align 8, !tbaa !22
  br label %vtable_add_gen.exit10

vtable_add_gen.exit10:                            ; preds = %bb.k, %bb.h, %vtable_add_gen.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !140 ; 6 uses
  %switch.i = icmp ult ptr %.val.val, inttoptr (i64 2 to ptr)
  br i1 %switch.i, label %dyna_in_block.exit.thread, label %dyna_in_block.exit

dyna_in_block.exit:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %.not91 = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %.val, align 8, !tbaa !184 ; 4 uses
  br i1 %.not91, label %.lr.ph.i.i37.preheader, label %bb.b

bb.b:                                             ; preds = %dyna_in_block.exit
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
end_hunk_11
begin_hunk_12_@shadowing_lvar_0:bb.a
.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader, %bb.z
  %.02962.i.i38 = phi ptr [ %i.dj, %bb.z ], [ %.02962.i.i38.ph, %.lr.ph.i.i37.preheader ] ; 2 uses
  %.03061.i.i39 = phi ptr [ %i.dg, %bb.z ], [ %.val.val, %.lr.ph.i.i37.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03061.i.i39, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !143 ; 4 uses
  %i.dh = icmp ult ptr %i.dg, inttoptr (i64 2 to ptr)
  br i1 %i.dh, label %.critedge.i.i58, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i37
  %i.di = getelementptr inbounds nuw i8, ptr %.02962.i.i38, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !143 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i40, label %.critedge37.i.i41, label %.lr.ph.i.i37, !llvm.loop !3

.critedge.i.i58:                                  ; preds = %.lr.ph.i.i37
  %.not66.i.i59 = icmp eq ptr %i.dg, inttoptr (i64 1 to ptr)
  br i1 %.not66.i.i59, label %local_id.exit60, label %.critedge37.i.i41

.critedge37.i.i41:                                ; preds = %bb.z, %.critedge.i.i58, %dyna_in_block.exit.thread
  %.03058.i.i42 = phi ptr [ %.03061.i.i39, %.critedge.i.i58 ], [ null, %dyna_in_block.exit.thread ], [ null, %bb.z ] ; 3 uses
  %.02956.i.i43 = phi ptr [ %.02962.i.i38, %.critedge.i.i58 ], [ %i.de, %dyna_in_block.exit.thread ], [ %i.dj, %bb.z ] ; 3 uses
  %i.dk = icmp ult ptr %.02956.i.i43, inttoptr (i64 2 to ptr)
  br i1 %i.dk, label %vtable_included.exit.thread.i.i45, label %.preheader.i.i.i44

.preheader.i.i.i44:                               ; preds = %.critedge37.i.i41
  %i.dl = getelementptr inbounds nuw i8, ptr %.02956.i.i43, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !181 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i.i53, label %vtable_included.exit.thread.i.i45

.lr.ph.i.i.i53:                                   ; preds = %.preheader.i.i.i44
  %i.do = load ptr, ptr %.02956.i.i43, align 8, !tbaa !183
  %wide.trip.count.i.i.i54 = zext nneg i32 %i.dm to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i53
  %indvars.iv.i.i.i55 = phi i64 [ 0, %.lr.ph.i.i.i53 ], [ %indvars.iv.next.i.i.i56, %bb.ab ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i.i55
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.dr = icmp eq i64 %i.dq, %1
  br i1 %i.dr, label %local_id.exit60.thread83, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i57 = icmp eq i64 %indvars.iv.next.i.i.i56, %wide.trip.count.i.i.i54
  br i1 %exitcond.not.i.i.i57, label %vtable_included.exit.thread.i.i45, label %bb.aa, !llvm.loop !2

vtable_included.exit.thread.i.i45:                ; preds = %bb.ab, %.preheader.i.i.i44, %.critedge37.i.i41
  %i.ds = icmp ult ptr %.03058.i.i42, inttoptr (i64 2 to ptr)
  br i1 %i.ds, label %vtable_add_gen.exit35, label %.preheader.i38.i.i46

.preheader.i38.i.i46:                             ; preds = %vtable_included.exit.thread.i.i45
  %i.dt = getelementptr inbounds nuw i8, ptr %.03058.i.i42, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !181 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i40.i.i48, label %vtable_add_gen.exit35

.lr.ph.i40.i.i48:                                 ; preds = %.preheader.i38.i.i46
  %i.dw = load ptr, ptr %.03058.i.i42, align 8, !tbaa !183
  %wide.trip.count.i41.i.i49 = zext nneg i32 %i.du to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i40.i.i48
  %indvars.iv.i42.i.i50 = phi i64 [ 0, %.lr.ph.i40.i.i48 ], [ %indvars.iv.next.i43.i.i51, %bb.ad ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i42.i.i50
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !22
  %i.dz = icmp eq i64 %i.dy, %1
  br i1 %i.dz, label %local_id.exit60.thread83, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i43.i.i51 = add nuw nsw i64 %indvars.iv.i42.i.i50, 1 ; 2 uses
  %exitcond.not.i44.i.i52 = icmp eq i64 %indvars.iv.next.i43.i.i51, %wide.trip.count.i41.i.i49
  br i1 %exitcond.not.i44.i.i52, label %vtable_add_gen.exit35, label %bb.ac, !llvm.loop !2

local_id.exit60:                                  ; preds = %.critedge.i.i58
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !289
  %i.ec = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.eb) #29
  %.not23 = icmp eq i32 %i.ec, 0
  %i.ed = icmp eq i64 %1, 3761
  %or.cond = or i1 %i.ed, %.not23
  br i1 %or.cond, label %vtable_add_gen.exit35, label %bb.ae

local_id.exit60.thread83:                         ; preds = %bb.aa, %bb.ac
  %.old = icmp eq i64 %1, 3761
  br i1 %.old, label %vtable_add_gen.exit35, label %bb.ae

bb.ae:                                            ; preds = %local_id.exit60, %local_id.exit60.thread83
  %i.ee = icmp ugt i64 %1, 171
  %i.ef = and i64 %1, 14
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = and i1 %i.ee, %i.eg
  br i1 %i.eh, label %bb.af, label %is_private_local_id.exit65.thread

bb.af:                                            ; preds = %bb.ae
  %i.ei = tail call i64 @rb_id2str(i64 noundef %1) #29 ; 2 uses
  %.not.i62 = icmp eq i64 %i.ei, 0
  br i1 %.not.i62, label %is_private_local_id.exit65.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !310
  %i.el = and i64 %i.ek, 8192
  %.not.i.i63 = icmp eq i64 %i.el, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br i1 %.not.i.i63, label %is_private_local_id.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  br label %is_private_local_id.exit65

is_private_local_id.exit65:                       ; preds = %bb.ag, %bb.ah
  %i.eo = phi ptr [ %i.en, %bb.ah ], [ %i.em, %bb.ag ]
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !20
  %.not92 = icmp eq i8 %i.ep, 95
  br i1 %.not92, label %vtable_add_gen.exit35, label %is_private_local_id.exit65.thread

is_private_local_id.exit65.thread:                ; preds = %bb.af, %bb.ae, %is_private_local_id.exit65
  %i.eq = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !58
  %i.et = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.705, i64 noundef 24, ptr noundef %i.es) #29
  %i.eu = getelementptr i8, ptr %0, i64 368
  %.val.i66 = load i64, ptr %i.eu, align 8, !tbaa !55
  %i.ev = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i66, i64 noundef %i.eq, i32 noundef 1, i64 noundef %i.et) #29 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 8
  %i.ey = or i16 %i.ex, 512
  store i16 %i.ey, ptr %i.ew, align 8
  br label %vtable_add_gen.exit35

vtable_add_gen.exit35:                            ; preds = %bb.p, %bb.ad, %local_id.exit60.thread83, %.preheader.i38.i.i46, %vtable_included.exit.thread.i.i45, %.preheader.i38.i.i, %vtable_included.exit.thread.i.i, %dvar_curr.exit, %bb.y, %bb.v, %local_id.exit, %is_private_local_id.exit.thread, %is_private_local_id.exit65.thread, %local_id.exit60, %is_private_local_id.exit65, %vtable_add_gen.exit, %is_private_local_id.exit
  %.0 = phi i32 [ 0, %vtable_add_gen.exit ], [ 1, %is_private_local_id.exit65 ], [ 1, %is_private_local_id.exit ], [ 1, %dvar_curr.exit ], [ 1, %local_id.exit60 ], [ 1, %is_private_local_id.exit65.thread ], [ 1, %is_private_local_id.exit.thread ], [ 1, %local_id.exit ], [ 1, %local_id.exit60.thread83 ], [ 0, %bb.v ], [ 0, %bb.y ], [ 1, %bb.ad ], [ 1, %vtable_included.exit.thread.i.i ], [ 1, %.preheader.i38.i.i ], [ 1, %vtable_included.exit.thread.i.i45 ], [ 1, %.preheader.i38.i.i46 ], [ 1, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aryset_check(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %parser_yyerror.exit39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 20224
  br i1 %i.b, label %bb.c, label %.thread44

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 3 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %parser_yyerror.exit, label %..thread44_crit_edge

..thread44_crit_edge:                             ; preds = %bb.c
  %.025.val.pre = load i64, ptr %i.f, align 8, !tbaa !70
  br label %.thread44

.thread44:                                        ; preds = %..thread44_crit_edge, %bb.b
  %.025.val = phi i64 [ %.025.val.pre, %..thread44_crit_edge ], [ %.val, %bb.b ] ; 2 uses
  %.02449 = phi ptr [ %i.d, %..thread44_crit_edge ], [ null, %bb.b ] ; 6 uses
  %.02548 = phi ptr [ %i.f, %..thread44_crit_edge ], [ %1, %bb.b ] ; 2 uses
  %i.g = and i64 %.025.val, 32512
  %i.h = icmp eq i64 %i.g, 19456
  br i1 %i.h, label %bb.d, label %.thread57

bb.d:                                             ; preds = %.thread44
  %i.i = getelementptr inbounds nuw i8, ptr %.02548, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 3 uses
  %.not30 = icmp eq ptr %i.j, null
  br i1 %.not30, label %parser_yyerror.exit, label %..thread57_crit_edge

..thread57_crit_edge:                             ; preds = %bb.d
  %.126.val.pre = load i64, ptr %i.j, align 8, !tbaa !70
  br label %.thread57

.thread57:                                        ; preds = %..thread57_crit_edge, %.thread44
  %.126.val = phi i64 [ %.126.val.pre, %..thread57_crit_edge ], [ %.025.val, %.thread44 ]
  %.12662 = phi ptr [ %i.j, %..thread57_crit_edge ], [ %.02548, %.thread44 ] ; 3 uses
  %i.k = and i64 %.126.val, 32512
  %i.l = icmp eq i64 %i.k, 19712
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread57
  %.0.val84 = load i64, ptr %.12662, align 8, !tbaa !70
  %i.m = and i64 %.0.val84, 32512
  %i.n = icmp eq i64 %i.m, 11008
  br i1 %i.n, label %.lr.ph86, label %.critedge

bb.e:                                             ; preds = %.thread57
  %i.o = getelementptr inbounds nuw i8, ptr %.12662, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !285
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph86
  %.0.val = load i64, ptr %i.t, align 8, !tbaa !70
  %i.q = and i64 %.0.val, 32512
  %i.r = icmp eq i64 %i.q, 11008
  br i1 %i.r, label %.lr.ph86, label %.critedge.loopexit, !llvm.loop !617

.lr.ph86:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.06585 = phi ptr [ %i.t, %.lr.ph ], [ %.12662, %.lr.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06585, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176  ; 3 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !617

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph86
  %i.u = getelementptr inbounds nuw i8, ptr %.06585, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175
  br label %.critedge, !llvm.loop !617

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.06585, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !175
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.e
  %.1 = phi ptr [ %i.p, %bb.e ], [ null, %.lr.ph.preheader ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.x, %.critedge.loopexit ] ; 7 uses
  %.not32 = icmp eq ptr %.1, null
  br i1 %.not32, label %parser_yyerror.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.1.val = load i64, ptr %.1, align 8, !tbaa !70
  %i.y = and i64 %.1.val, 32512
  %i.z = icmp eq i64 %i.y, 11520
  br i1 %i.z, label %bb.g, label %parser_yyerror.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !122
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.h, label %parser_yyerror.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51 ; 2 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !62
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !64
  %i.aj = icmp eq i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  store ptr %i.at, ptr %i.am, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 %i.aw
  store ptr %i.ax, ptr %i.ak, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.019.i = phi ptr [ %i.al, %bb.j ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %i.an, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bb = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.707, i64 noundef 37, ptr noundef %i.ba) #29
  %i.bc = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.bc, align 8, !tbaa !55
  %i.bd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.ay, i32 noundef 1, i64 noundef %i.bb) #29 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = or i16 %i.bf, 512
  store i16 %i.bg, ptr %i.be, align 8
  %.not.i = icmp eq ptr %.019.i, null
  br i1 %.not.i, label %parser_yyerror.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i, ptr %i.bh, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i, ptr %i.bi, align 8, !tbaa !57
  br label %parser_yyerror.exit

parser_yyerror.exit:                              ; preds = %bb.d, %bb.c, %bb.l, %bb.k, %bb.g, %bb.f, %.critedge
  %.024435481 = phi ptr [ %.02449, %.critedge ], [ %.02449, %bb.l ], [ %.02449, %bb.k ], [ %.02449, %bb.g ], [ %.02449, %bb.f ], [ %.02449, %bb.d ], [ %i.d, %bb.c ] ; 5 uses
  %.not34 = icmp eq ptr %.024435481, null
  br i1 %.not34, label %parser_yyerror.exit39, label %bb.m

bb.m:                                             ; preds = %parser_yyerror.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.024435481, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !51 ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !62
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.024435481, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !64
  %i.bq = icmp eq i32 %i.bl, %i.bp
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.024435481, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %i.bt, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw i8, ptr %.024435481, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !65
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %i.cd
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.019.i35 = phi ptr [ %i.bs, %bb.o ], [ null, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.0.i36 = phi ptr [ %i.bu, %bb.o ], [ null, %bb.n ], [ null, %bb.m ]
  %i.cf = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !58
  %i.ci = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.708, i64 noundef 35, ptr noundef %i.ch) #29
  %i.cj = getelementptr i8, ptr %0, i64 368
  %.val.i.i37 = load i64, ptr %i.cj, align 8, !tbaa !55
  %i.ck = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i37, i64 noundef %i.cf, i32 noundef 1, i64 noundef %i.ci) #29 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 8
  %i.cn = or i16 %i.cm, 512
  store i16 %i.cn, ptr %i.cl, align 8
  %.not.i38 = icmp eq ptr %.019.i35, null
  br i1 %.not.i38, label %parser_yyerror.exit39, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i36, ptr %i.co, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i35, ptr %i.cp, align 8, !tbaa !57
  br label %parser_yyerror.exit39

parser_yyerror.exit39:                            ; preds = %bb.a, %bb.q, %bb.p, %parser_yyerror.exit
  ret void
}

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @arg_concat(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !70
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %bb.p [
    i32 79, label %bb.c
    i32 77, label %bb.g
    i32 76, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @arg_concat(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.i = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.i, i32 noundef range(i32 0, 115) 43) #29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.k = load i32, ptr %3, align 4, !tbaa !62
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr %i.i, align 8, !tbaa !70
  %i.n = and i64 %i.m, 32767
  %i.o = shl nsw i64 %i.l, 15
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.i, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !194  ; 2 uses
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.r, ptr %i.t, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %2, ptr %i.u, align 8, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 1, ptr %i.v, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.w, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ]
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !218
  br label %bb.q

bb.g:                                             ; preds = %bb.b
  %.val37 = load i64, ptr %2, align 8, !tbaa !70
  %i.x = and i64 %.val37, 32512
  %i.y = icmp eq i64 %i.x, 11008
  br i1 %i.y, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !285
  %i.ab = getelementptr i8, ptr %0, i64 288
  %.val.i.i38 = load ptr, ptr %i.ab, align 8, !tbaa !124
  %i.ac = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i38, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.ac, i32 noundef range(i32 0, 115) 43) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.ae = load i32, ptr %3, align 4, !tbaa !62
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !70
  %i.ah = and i64 %i.ag, 32767
  %i.ai = shl nsw i64 %i.af, 15
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !194 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !194
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 %i.al, ptr %i.an, align 8, !tbaa !195
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.aa, ptr %i.ao, align 8, !tbaa !175
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  store i64 1, ptr %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !20
  store ptr %2, ptr %i.aq, align 8, !tbaa !176
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !176 ; 2 uses
  %.not17.i = icmp eq ptr %i.av, null
  br i1 %.not17.i, label %list_concat.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20
  br label %list_concat.exit

list_concat.exit:                                 ; preds = %bb.h, %bb.i
  %.sink.i = phi ptr [ %i.ax, %bb.i ], [ %2, %bb.h ]
  store ptr %.sink.i, ptr %i.ar, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !285
  %i.bb = tail call i64 @rb_node_set_type(ptr noundef nonnull %1, i32 noundef 76) #29 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %.val36 = load i64, ptr %2, align 8, !tbaa !70
  %i.bc = and i64 %.val36, 32512
  %i.bd = icmp eq i64 %i.bc, 11008
  br i1 %i.bd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !287 ; 6 uses
  %.val = load i64, ptr %i.bf, align 8, !tbaa !70
  %i.bg = and i64 %.val, 32512
  %i.bh = icmp eq i64 %i.bg, 11008
  br i1 %i.bh, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !176 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bj, null
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i40 = phi ptr [ %i.bl, %bb.m ], [ %i.bf, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.bq = add nsw i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i40, i64 48
  store ptr %2, ptr %i.br, align 8, !tbaa !176
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !176 ; 2 uses
  %.not17.i41 = icmp eq ptr %i.bt, null
  br i1 %.not17.i41, label %list_concat.exit43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !20
  br label %list_concat.exit43

list_concat.exit43:                               ; preds = %bb.n, %bb.o
  %.sink.i42 = phi ptr [ %i.bv, %bb.o ], [ %2, %bb.n ]
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !176
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %.sink.i42, ptr %i.bx, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %i.by, align 8
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !287
  br label %bb.q

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.b
  %i.cb = getelementptr i8, ptr %0, i64 288
  %.val.i.i44 = load ptr, ptr %i.cb, align 8, !tbaa !124
  %i.cc = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i44, i32 noundef range(i32 0, 115) 76, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.cc, i32 noundef range(i32 0, 115) 76) #29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.ce = load i32, ptr %3, align 4, !tbaa !62
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ch = and i64 %i.cg, 32767
  %i.ci = shl nsw i64 %i.cf, 15
  %i.cj = or disjoint i64 %i.ch, %i.ci
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !194 ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !194
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.cl, ptr %i.cn, align 8, !tbaa !195
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr %1, ptr %i.co, align 8, !tbaa !618
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr %2, ptr %i.cp, align 8, !tbaa !287
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %list_concat.exit43, %list_concat.exit, %bb.f
  %.0 = phi ptr [ %i.cc, %bb.p ], [ %1, %bb.f ], [ %1, %list_concat.exit ], [ %1, %list_concat.exit43 ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @value_expr_check(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #0 {
bb.a:
  %cond = icmp eq ptr %1, null
  br i1 %cond, label %bb.b, label %.lr.ph109

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.d = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.713, i64 noundef 16) #29
  %i.e = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.b, i64 noundef %i.c, i32 noundef 1, i64 noundef %i.d) #29 ; 0 uses
  br label %.loopexit

.lr.ph109:                                        ; preds = %bb.a, %bb.w
  %.051107 = phi ptr [ %.6, %bb.w ], [ null, %bb.a ] ; 11 uses
  %.052106 = phi ptr [ %.254, %bb.w ], [ %1, %bb.a ] ; 19 uses
  %i.f = load i64, ptr %.052106, align 8, !tbaa !70
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 127
  switch i32 %i.i, label %.loopexit [
    i32 21, label %bb.c
    i32 19, label %bb.e
    i32 46, label %.loopexit90
    i32 14, label %.loopexit90
    i32 15, label %.loopexit90
    i32 16, label %.loopexit90
    i32 17, label %.loopexit90
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

bb.c:                                             ; preds = %.lr.ph109
  %i.j = getelementptr inbounds nuw i8, ptr %.052106, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !206  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.052106, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %.not83 = icmp eq ptr %i.k, null
  br i1 %.not83, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.k)
  %.not84 = icmp eq ptr %i.n, null
  br i1 %.not84, label %bb.w, label %.loopexit90

bb.e:                                             ; preds = %.lr.ph109
  %i.o = getelementptr inbounds nuw i8, ptr %.052106, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !201  ; 2 uses
  %.not77 = icmp eq ptr %i.p, null
  br i1 %.not77, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.p) ; 2 uses
  %.not78 = icmp eq ptr %i.q, null
  br i1 %.not78, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not79 = icmp eq ptr %.051107, null
  %spec.select = select i1 %.not79, ptr %i.q, ptr %.051107 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.052106, i64 40
  %.0100 = load ptr, ptr %i.r, align 8, !tbaa !218 ; 2 uses
  %.not80101 = icmp eq ptr %.0100, null
  br i1 %.not80101, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0102, i64 56
  %.0 = load ptr, ptr %i.s, align 8, !tbaa !218   ; 2 uses
  %.not80 = icmp eq ptr %.0, null
  br i1 %.not80, label %._crit_edge, label %.lr.ph, !llvm.loop !619

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0102 = phi ptr [ %.0, %bb.h ], [ %.0100, %bb.g ] ; 3 uses
  %.0.val = load i64, ptr %.0102, align 8, !tbaa !70
  %i.t = and i64 %.0.val, 32512
  %i.u = icmp eq i64 %i.t, 5120
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.0102, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !216
  %i.x = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef %i.w)
  %.not81 = icmp eq ptr %i.x, null
  br i1 %.not81, label %._crit_edge, label %bb.h

bb.j:                                             ; preds = %.lr.ph
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.558) #29
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.4.ph = phi ptr [ %spec.select, %bb.g ], [ %spec.select, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.052106, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !203  ; 2 uses
  %.not82 = icmp eq ptr %i.z, null
  br i1 %.not82, label %.loopexit, label %bb.w

bb.k:                                             ; preds = %.lr.ph109
  %i.aa = getelementptr inbounds nuw i8, ptr %.052106, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !251 ; 3 uses
  %.not75 = icmp eq ptr %i.ab, null
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val = load i64, ptr %i.ab, align 8, !tbaa !70
  %i.ac = and i64 %.val, 32512
  %i.ad = icmp eq i64 %i.ac, 2048
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.558) #29
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !253
  %.not76 = icmp eq ptr %i.af, null
  br i1 %.not76, label %.loopexit90, label %.loopexit

.preheader:                                       ; preds = %.lr.ph109, %.preheader
  %.153 = phi ptr [ %i.ah, %.preheader ], [ %.052106, %.lr.ph109 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.153, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72 ; 2 uses
  %.not74 = icmp eq ptr %i.ah, null
  br i1 %.not74, label %bb.o, label %.preheader, !llvm.loop !620

bb.o:                                             ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %.153, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph109
  %i.ak = getelementptr inbounds nuw i8, ptr %.052106, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  br label %bb.w

bb.q:                                             ; preds = %.lr.ph109, %.lr.ph109
  %i.am = getelementptr inbounds nuw i8, ptr %.052106, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !209 ; 2 uses
  %.not70 = icmp eq ptr %i.an, null
  br i1 %.not70, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %.052106, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !210
  %.not71 = icmp eq ptr %i.ap, null
  br i1 %.not71, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull %i.an) ; 2 uses
  %.not72 = icmp eq ptr %i.aq, null
  br i1 %.not72, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not73 = icmp eq ptr %.051107, null
  %spec.select86 = select i1 %.not73, ptr %i.aq, ptr %.051107
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !210
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph109, %.lr.ph109
  %i.as = getelementptr inbounds nuw i8, ptr %.052106, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !249
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph109, %.lr.ph109, %.lr.ph109
  tail call fastcc void @mark_lvar_used(ptr noundef %0, ptr noundef nonnull %.052106)
  br label %.loopexit

bb.w:                                             ; preds = %._crit_edge, %bb.c, %bb.d, %bb.u, %bb.t, %bb.p, %bb.o
  %.254 = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.z, %._crit_edge ], [ %i.aj, %bb.o ], [ %i.al, %bb.p ], [ %i.ar, %bb.t ], [ %i.at, %bb.u ] ; 2 uses
  %.6 = phi ptr [ %.051107, %bb.d ], [ %.051107, %bb.c ], [ %.4.ph, %._crit_edge ], [ %.051107, %bb.o ], [ %.051107, %bb.p ], [ %spec.select86, %bb.t ], [ %.051107, %bb.u ]
  %.not69 = icmp eq ptr %.254, null
  br i1 %.not69, label %.loopexit, label %.lr.ph109, !llvm.loop !621

.loopexit90:                                      ; preds = %.lr.ph109, %.lr.ph109, %.lr.ph109, %.lr.ph109, %.lr.ph109, %bb.d, %bb.n
  %.355 = phi ptr [ %.052106, %bb.n ], [ %.052106, %.lr.ph109 ], [ %.052106, %.lr.ph109 ], [ %.052106, %.lr.ph109 ], [ %.052106, %.lr.ph109 ], [ %.052106, %.lr.ph109 ], [ %i.m, %bb.d ]
  %.not85 = icmp eq ptr %.051107, null
  %i.au = select i1 %.not85, ptr %.355, ptr %.051107
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.q, %bb.r, %bb.s, %.lr.ph109, %bb.w, %bb.b, %bb.j, %bb.n, %.loopexit90, %bb.v, %bb.m
  %.359 = phi ptr [ null, %bb.v ], [ %i.au, %.loopexit90 ], [ null, %bb.m ], [ null, %bb.j ], [ null, %bb.n ], [ null, %bb.b ], [ null, %.lr.ph109 ], [ %.4.ph, %._crit_edge ], [ null, %bb.q ], [ null, %bb.e ], [ null, %bb.s ], [ null, %bb.f ], [ null, %bb.r ], [ null, %bb.w ]
  ret ptr %.359
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #2

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cond0(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 3) %2, ptr nofree noundef nonnull readonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %common.ret101, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !70    ; 2 uses
  %i.b = and i64 %.val, 32512
  %i.c = icmp eq i64 %i.b, 17920
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %common.ret101, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.e, align 8, !tbaa !70
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i64 [ %.pre, %..thread_crit_edge ], [ %.val, %bb.b ]
  %i.g = phi ptr [ %i.e, %..thread_crit_edge ], [ %1, %bb.b ] ; 32 uses
  %i.h = trunc i64 %i.f to i32
  %i.i = lshr i32 %i.h, 8                         ; 4 uses
  %i.j = and i32 %i.i, 127
  %.off.i = add nsw i32 %i.j, -24
  %switch.i = icmp ult i32 %.off.i, 7
  br i1 %switch.i, label %get_nd_value.exit.i, label %assign_in_cond.exit

get_nd_value.exit.i:                              ; preds = %.thread
  %.0.i.in.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !218 ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %assign_in_cond.exit, label %get_nd_value.exit10.i

get_nd_value.exit10.i:                            ; preds = %get_nd_value.exit.i
  %i.k = tail call fastcc i32 @is_static_content(ptr noundef nonnull %.0.i.i)
  %.not6.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i, label %assign_in_cond.exit, label %bb.d

bb.d:                                             ; preds = %get_nd_value.exit10.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.o = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.732, i64 noundef 46) #29
  %i.p = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.m, i64 noundef %i.n, i32 noundef 1, i64 noundef %i.o) #29 ; 0 uses
  %.pre88 = load i64, ptr %i.g, align 8, !tbaa !70
  %.pre89 = trunc i64 %.pre88 to i32
  %.pre90 = lshr i32 %.pre89, 8
  br label %assign_in_cond.exit

assign_in_cond.exit:                              ; preds = %.thread, %get_nd_value.exit.i, %get_nd_value.exit10.i, %bb.d
  %.pre-phi91 = phi i32 [ %i.i, %.thread ], [ %i.i, %get_nd_value.exit.i ], [ %i.i, %get_nd_value.exit10.i ], [ %.pre90, %bb.d ]
  %i.q = and i32 %.pre-phi91, 127
  switch i32 %i.q, label %common.ret101 [
    i32 18, label %bb.e
    i32 64, label %bb.f
    i32 67, label %bb.f
    i32 63, label %bb.f
    i32 110, label %bb.f
    i32 68, label %bb.i
    i32 69, label %bb.l
    i32 1, label %bb.o
    i32 22, label %bb.p
    i32 23, label %bb.p
    i32 90, label %bb.q
    i32 91, label %bb.q
    i32 101, label %bb.u
    i32 102, label %bb.u
    i32 109, label %bb.x
    i32 111, label %bb.x
    i32 59, label %bb.x
    i32 60, label %bb.x
    i32 61, label %bb.x
    i32 62, label %bb.x
  ]

common.ret101:                                    ; preds = %bb.k, %bb.f, %bb.g, %bb.h, %bb.q, %bb.t, %bb.s, %bb.r, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %assign_in_cond.exit, %bb.c, %bb.a, %bb.n, %bb.p, %bb.o, %bb.e
  %common.ret101.op = phi ptr [ %i.g, %bb.p ], [ %i.g, %bb.e ], [ %i.g, %bb.o ], [ %i.g, %bb.k ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ null, %bb.a ], [ null, %bb.c ], [ %i.bc, %bb.n ], [ %i.g, %assign_in_cond.exit ], [ %i.g, %bb.z ], [ %i.g, %bb.y ], [ %i.g, %bb.x ], [ %i.g, %bb.w ], [ %i.g, %bb.v ], [ %i.g, %bb.u ], [ %i.g, %bb.r ], [ %i.g, %bb.s ], [ %i.g, %bb.t ], [ %i.g, %bb.q ], [ %i.g, %bb.h ]
  ret ptr %common.ret101.op

bb.e:                                             ; preds = %assign_in_cond.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.s, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  store ptr %i.t, ptr %i.r, align 8, !tbaa !75
  br label %common.ret101

bb.f:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret101 [
    i32 2, label %bb.h
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55
  %i.w = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.x = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.724, i64 noundef 27) #29
  %i.y = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.v, i64 noundef %i.w, i32 noundef 1, i64 noundef %i.x) #29 ; 0 uses
  br label %common.ret101

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55
  %i.ab = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.ac = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.725, i64 noundef 27) #29
  %i.ad = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aa, i64 noundef %i.ab, i32 noundef 1, i64 noundef %i.ac) #29 ; 0 uses
  br label %common.ret101

bb.i:                                             ; preds = %assign_in_cond.exit
  %i.ae = getelementptr i8, ptr %0, i64 200
  %.val76 = load ptr, ptr %i.ae, align 8, !tbaa !344 ; 3 uses
  %i.af = load i8, ptr %.val76, align 1
  %.not.i77 = icmp eq i8 %i.af, 45
  br i1 %.not.i77, label %sub_1.i, label %e_option_supplied.exit.thread

sub_1.i:                                          ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val76, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.not1.i = icmp eq i8 %i.ah, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %e_option_supplied.exit.thread

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val76, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %.not87 = icmp eq i8 %i.aj, 0
  br i1 %.not87, label %bb.k, label %e_option_supplied.exit.thread

e_option_supplied.exit.thread:                    ; preds = %sub_1.i, %bb.i, %e_option_supplied.exit
  switch i32 %2, label %bb.k [
    i32 2, label %bb.j
    i32 1, label %.sink.split
  ]

bb.j:                                             ; preds = %e_option_supplied.exit.thread
  br label %.sink.split

.sink.split:                                      ; preds = %e_option_supplied.exit.thread, %bb.j
  %.str.727.sink = phi ptr [ @.str.727, %bb.j ], [ @.str.726, %e_option_supplied.exit.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !55
  %i.am = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.an = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull %.str.727.sink, i64 noundef 26) #29
  %i.ao = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.al, i64 noundef %i.am, i32 noundef 1, i64 noundef %i.an) #29 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %e_option_supplied.exit.thread, %e_option_supplied.exit
  %i.ap = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 56) #29 ; 0 uses
  br label %common.ret101

bb.l:                                             ; preds = %assign_in_cond.exit
  %i.aq = getelementptr i8, ptr %0, i64 200
  %.val75 = load ptr, ptr %i.aq, align 8, !tbaa !344 ; 3 uses
  %i.ar = load i8, ptr %.val75, align 1
  %.not.i78 = icmp eq i8 %i.ar, 45
  br i1 %.not.i78, label %sub_1.i79, label %e_option_supplied.exit82.thread

sub_1.i79:                                        ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.val75, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %.not1.i80 = icmp eq i8 %i.at, 101
  br i1 %.not1.i80, label %e_option_supplied.exit82, label %e_option_supplied.exit82.thread

e_option_supplied.exit82:                         ; preds = %sub_1.i79
  %i.au = getelementptr inbounds nuw i8, ptr %.val75, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %.not86 = icmp eq i8 %i.av, 0
  br i1 %.not86, label %bb.n, label %e_option_supplied.exit82.thread

e_option_supplied.exit82.thread:                  ; preds = %sub_1.i79, %bb.l, %e_option_supplied.exit82
  switch i32 %2, label %bb.n [
    i32 2, label %bb.m
    i32 1, label %.sink.split96
  ]

bb.m:                                             ; preds = %e_option_supplied.exit82.thread
  br label %.sink.split96

.sink.split96:                                    ; preds = %e_option_supplied.exit82.thread, %bb.m
  %.str.727.sink99 = phi ptr [ @.str.727, %bb.m ], [ @.str.726, %e_option_supplied.exit82.thread ]
end_hunk_12
begin_hunk_13_@cond0:bb.a
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !218
  %i.bi = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.bh, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %spec.select)
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !218
  br label %common.ret101

bb.p:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !249
  %i.bl = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.bk, i32 noundef 1, ptr noundef %3, i1 noundef zeroext true)
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !248
  %i.bo = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef %i.bn, i32 noundef 1, ptr noundef %3, i1 noundef zeroext true)
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !248
  br label %common.ret101

bb.q:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  br i1 %4, label %bb.r, label %common.ret101

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !271
  %i.br = tail call fastcc ptr @range_op(ptr noundef %0, ptr noundef %i.bq, ptr noundef %3)
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !271
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !272
  %i.bu = tail call fastcc ptr @range_op(ptr noundef %0, ptr noundef %i.bt, ptr noundef %3)
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !272
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !70
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = lshr i32 %i.bw, 8
  %i.by = and i32 %i.bx, 127
  switch i32 %i.by, label %common.ret101 [
    i32 90, label %bb.s
    i32 91, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bz = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 92) #29 ; 0 uses
  br label %common.ret101

bb.t:                                             ; preds = %bb.r
  %i.ca = tail call i64 @rb_node_set_type(ptr noundef nonnull %i.g, i32 noundef 93) #29 ; 0 uses
  br label %common.ret101

bb.u:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret101 [
    i32 2, label %bb.w
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !55
  %i.cd = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.ce = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.728, i64 noundef 27) #29
  %i.cf = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cc, i64 noundef %i.cd, i32 noundef 1, i64 noundef %i.ce) #29 ; 0 uses
  br label %common.ret101

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !55
  %i.ci = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.cj = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.729, i64 noundef 27) #29
  %i.ck = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ch, i64 noundef %i.ci, i32 noundef 1, i64 noundef %i.cj) #29 ; 0 uses
  br label %common.ret101

bb.x:                                             ; preds = %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit, %assign_in_cond.exit
  switch i32 %2, label %common.ret101 [
    i32 2, label %bb.z
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !55
  %i.cn = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.co = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.730, i64 noundef 20) #29
  %i.cp = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cm, i64 noundef %i.cn, i32 noundef 1, i64 noundef %i.co) #29 ; 0 uses
  br label %common.ret101

bb.z:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !55
  %i.cs = load i64, ptr @id_warning, align 8, !tbaa !22
  %i.ct = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.731, i64 noundef 20) #29
  %i.cu = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cr, i64 noundef %i.cs, i32 noundef 1, i64 noundef %i.ct) #29 ; 0 uses
  br label %common.ret101
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @range_op(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !70
  %i.c = tail call fastcc ptr @value_expr_check(ptr noundef %0, ptr noundef nonnull readonly %1) ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %value_expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51   ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !62
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !64
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store ptr %i.u, ptr %i.n, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !65
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  store ptr %i.y, ptr %i.l, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.019.i.i = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 656), align 8, !tbaa !179
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ac = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.712, i64 noundef 21, ptr noundef %i.ab) #29
  %i.ad = getelementptr i8, ptr %0, i64 368
  %.val.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !55
  %i.ae = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i.i, i64 noundef %i.z, i32 noundef 1, i64 noundef %i.ac) #29 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = or i16 %i.ag, 512
  store i16 %i.ah, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %.019.i.i, null
  br i1 %.not.i.i, label %value_expr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.0.i.i, ptr %i.ai, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.019.i.i, ptr %i.aj, align 8, !tbaa !57
  br label %value_expr.exit

value_expr.exit:                                  ; preds = %bb.b, %bb.f, %bb.g
  %i.ak = and i64 %i.b, 32512
  %i.al = icmp eq i64 %i.ak, 15104
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %value_expr.exit
  %i.am = getelementptr i8, ptr %0, i64 200
  %.val = load ptr, ptr %i.am, align 8, !tbaa !344 ; 3 uses
  %i.an = load i8, ptr %.val, align 1
  %.not.i20 = icmp eq i8 %i.an, 45
  br i1 %.not.i20, label %sub_1.i, label %e_option_supplied.exit.thread

sub_1.i:                                          ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %.not1.i = icmp eq i8 %i.ap, 101
  br i1 %.not1.i, label %e_option_supplied.exit, label %e_option_supplied.exit.thread

e_option_supplied.exit:                           ; preds = %sub_1.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.i, label %e_option_supplied.exit.thread

e_option_supplied.exit.thread:                    ; preds = %sub_1.i, %bb.h, %e_option_supplied.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55
  %i.au = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.av = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.735, i64 noundef 28) #29
  %i.aw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.at, i64 noundef %i.au, i32 noundef 1, i64 noundef %i.av) #29 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %e_option_supplied.exit.thread, %e_option_supplied.exit
  %.pr.i = load i64, ptr @range_op.rbimpl_id, align 8, !tbaa !22 ; 2 uses
  %.not1.i21 = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i21, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.736, i64 noundef 2) #29 ; 3 uses
  store i64 %i.ax, ptr @range_op.rbimpl_id, align 8, !tbaa !22
  %.not.i22 = icmp eq i64 %i.ax, 0
  br i1 %.not.i22, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !622

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.i
  %.lcssa.i = phi i64 [ %.pr.i, %bb.i ], [ %i.ax, %.lr.ph.i ]
  %i.ay = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val.i.i = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.az = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 50, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.az, i32 noundef range(i32 0, 115) 50) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.bb = load i32, ptr %2, align 4, !tbaa !62
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !70
  %i.be = and i64 %i.bd, 32767
  %i.bf = shl nsw i64 %i.bc, 15
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !194 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !194
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i32 %i.bi, ptr %i.bk, align 8, !tbaa !195
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.lcssa.i, ptr %i.bl, align 8, !tbaa !323
  %.val.i.i23 = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.bm = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i23, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.bm, i32 noundef range(i32 0, 115) 43) #29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.bo = load i32, ptr %2, align 4, !tbaa !62
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !70
  %i.br = and i64 %i.bq, 32767
  %i.bs = shl nsw i64 %i.bp, 15
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !70
  %i.bu = load i32, ptr %i.bh, align 8, !tbaa !194 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bh, align 8, !tbaa !194
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.az, ptr %i.bx, align 8, !tbaa !175
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 1, ptr %i.by, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr null, ptr %i.bz, align 8, !tbaa !176
  %.val.i.i24 = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.ca = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i24, i32 noundef range(i32 0, 115) 36, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.ca, i32 noundef range(i32 0, 115) 36) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.cc = load i32, ptr %2, align 4, !tbaa !62
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !70
  %i.cf = and i64 %i.ce, 32767
  %i.cg = shl nsw i64 %i.cd, 15
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !70
  %i.ci = load i32, ptr %i.bh, align 8, !tbaa !194 ; 2 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bh, align 8, !tbaa !194
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i32 %i.ci, ptr %i.ck, align 8, !tbaa !195
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %1, ptr %i.cl, align 8, !tbaa !240
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i64 140, ptr %i.cm, align 8, !tbaa !241
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store ptr %i.bm, ptr %i.cn, align 8, !tbaa !242
  br label %bb.k

bb.j:                                             ; preds = %value_expr.exit
  %i.co = tail call fastcc ptr @cond0(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %2, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %rbimpl_intern_const.exit
  %.0 = phi ptr [ %i.co, %bb.j ], [ %i.ca, %rbimpl_intern_const.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_static_content(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !70
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
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177  ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  %.1.ph = phi ptr [ %0, %bb.b ], [ %i.f, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.1 = phi ptr [ %i.k, %bb.e ], [ %.1.ph, %.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !175
  %i.i = tail call fastcc i32 @is_static_content(ptr noundef %i.h)
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176  ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.loopexit12, label %bb.d, !llvm.loop !623

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

; Function Attrs: nounwind uwtable
define internal fastcc void @dyna_pop_1(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185  ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %vtable_free_gen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !181
  %.not4.i = icmp eq i32 %i.f, %i.j
  br i1 %.not4.i, label %warn_unused_var.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.746) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre14 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !185
  br label %warn_unused_var.exit

warn_unused_var.exit:                             ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.d, %bb.b ], [ %.pre14, %bb.c ]
  %i.l = phi ptr [ %i.b, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143
  store ptr %i.o, ptr %i.m, align 8, !tbaa !185
  %i.p = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.p, label %vtable_free_gen.exit, label %bb.d

bb.d:                                             ; preds = %warn_unused_var.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.q) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #29
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %vtable_free_gen.exit

vtable_free_gen.exit:                             ; preds = %bb.f, %warn_unused_var.exit, %bb.a
  %i.r = phi ptr [ %.pre15, %bb.f ], [ %i.l, %warn_unused_var.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !293  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  store ptr %i.u, ptr %i.r, align 8, !tbaa !293
  %i.v = icmp ult ptr %i.s, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %dyna_pop_vtable.exit, label %bb.g

bb.g:                                             ; preds = %vtable_free_gen.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !183  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.w) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.s) #29
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %dyna_pop_vtable.exit

dyna_pop_vtable.exit:                             ; preds = %vtable_free_gen.exit, %bb.i
  %i.x = phi ptr [ %i.r, %vtable_free_gen.exit ], [ %.pre16, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !293  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !143
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !293
  %i.ac = icmp ult ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %dyna_pop_vtable.exit13, label %bb.j

bb.j:                                             ; preds = %dyna_pop_vtable.exit
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !183 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.ad) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ruby_xfree(ptr noundef nonnull %i.z) #29
  br label %dyna_pop_vtable.exit13

dyna_pop_vtable.exit13:                           ; preds = %dyna_pop_vtable.exit, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_ractor_stdout() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind allocsize(1,2) }
attributes #37 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = distinct !{!5, !26}
!6 = distinct !{!6, !26}
!7 = distinct !{null, null}
!8 = distinct !{null, null, null}
end_hunk_13
begin_hunk_14_@llvm.assume
!384 = !{!383, !34, i64 32}
!385 = !{!383, !18, i64 40}
!386 = !{!383, !18, i64 44}
!387 = !{!383, !18, i64 48}
!388 = !{!"RNode_IMAGINARY", !69, i64 0, !34, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52}
!389 = !{!388, !34, i64 32}
!390 = !{!388, !18, i64 40}
!391 = !{!388, !18, i64 44}
!392 = !{!388, !18, i64 48}
!393 = !{!388, !18, i64 52}
!394 = distinct !{!394, !26}
!395 = distinct !{!395, !26}
!396 = distinct !{!396, !26}
!397 = distinct !{!397, !26}
!398 = distinct !{!398, !26}
!399 = distinct !{!399, !26}
!400 = distinct !{!400, !26}
!401 = !{!46, !44, i64 344}
!402 = !{!46, !44, i64 336}
!403 = !{!88, !21, i64 40}
!404 = !{!88, !44, i64 32}
!405 = !{!"rb_locations_lambda_body_t", !44, i64 0, !61, i64 8, !61, i64 24}
!406 = !{!405, !44, i64 0}
!407 = distinct !{!407, !26}
!408 = distinct !{!408, !26, !191, !192}
!409 = distinct !{!409, !193}
!410 = distinct !{!410, !26, !191}
!411 = distinct !{!411, !26, !191, !192}
!412 = distinct !{!412, !193}
!413 = distinct !{!413, !26}
!414 = distinct !{!414, !26, !191}
!415 = distinct !{!415, !26}
!416 = !{!"RNode_ALIAS", !69, i64 0, !44, i64 32, !44, i64 40, !61, i64 48}
!417 = !{!416, !44, i64 32}
!418 = !{!416, !44, i64 40}
!419 = !{!"RNode_VALIAS", !69, i64 0, !21, i64 32, !21, i64 40, !61, i64 48}
!420 = !{!419, !21, i64 32}
!421 = !{!419, !21, i64 40}
!422 = !{!208, !44, i64 32}
!423 = !{!"RNode_UNLESS", !69, i64 0, !44, i64 32, !44, i64 40, !44, i64 48, !61, i64 56, !61, i64 72, !61, i64 88}
!424 = !{!423, !44, i64 32}
!425 = !{!423, !44, i64 40}
!426 = !{!423, !44, i64 48}
!427 = !{!215, !44, i64 32}
!428 = !{!215, !44, i64 40}
!429 = !{!"RNode_POSTEXE", !69, i64 0, !44, i64 32, !61, i64 40, !61, i64 56, !61, i64 72}
!430 = !{!429, !44, i64 32}
!431 = !{!"RNode_OP_ASGN_OR", !69, i64 0, !44, i64 32, !44, i64 40}
!432 = !{!431, !44, i64 32}
!433 = !{!431, !44, i64 40}
!434 = !{!"RNode_OP_ASGN_AND", !69, i64 0, !44, i64 32, !44, i64 40}
!435 = !{!434, !44, i64 32}
!436 = !{!434, !44, i64 40}
!437 = !{!"RNode_OP_ASGN1", !69, i64 0, !44, i64 32, !21, i64 40, !44, i64 48, !44, i64 56, !61, i64 64, !61, i64 80, !61, i64 96, !61, i64 112}
!438 = !{!437, !44, i64 32}
!439 = !{!437, !21, i64 40}
!440 = !{!437, !44, i64 48}
!441 = !{!437, !44, i64 56}
!442 = !{!"RNode_OP_ASGN2", !69, i64 0, !44, i64 32, !44, i64 40, !21, i64 48, !21, i64 56, !243, i64 64, !61, i64 68, !61, i64 84, !61, i64 100}
!443 = !{!442, !44, i64 32}
!444 = !{!442, !44, i64 40}
!445 = !{!442, !21, i64 48}
!446 = !{!442, !21, i64 56}
!447 = !{!442, !243, i64 64}
!448 = !{!"RNode_OP_CDECL", !69, i64 0, !44, i64 32, !44, i64 40, !21, i64 48, !18, i64 56}
!449 = !{!448, !44, i64 32}
!450 = !{!448, !44, i64 40}
!451 = !{!448, !21, i64 48}
!452 = !{!448, !18, i64 56}
!453 = !{!"RNode_COLON2", !69, i64 0, !44, i64 32, !21, i64 40, !61, i64 48, !61, i64 64}
!454 = !{!453, !44, i64 32}
!455 = !{!453, !21, i64 40}
!456 = !{!"RNode_COLON3", !69, i64 0, !21, i64 32, !61, i64 40, !61, i64 56}
!457 = !{!456, !21, i64 32}
!458 = distinct !{!458, !26}
!459 = !{!250, !44, i64 32}
!460 = !{!252, !44, i64 32}
!461 = !{!252, !44, i64 48}
!462 = !{!89, !21, i64 32}
!463 = !{!91, !44, i64 32}
!464 = !{!91, !21, i64 40}
!465 = !{!108, !21, i64 32}
!466 = !{!"RNode_YIELD", !69, i64 0, !44, i64 32, !61, i64 40, !61, i64 56, !61, i64 72}
!467 = !{!466, !44, i64 32}
!468 = !{!"RNode_RETURN", !69, i64 0, !44, i64 32, !61, i64 40}
!469 = !{!468, !44, i64 32}
!470 = !{!172, !44, i64 32}
!471 = !{!172, !44, i64 48}
!472 = !{!"RNode_POSTARG", !69, i64 0, !44, i64 32, !44, i64 40}
!473 = !{!472, !44, i64 32}
!474 = !{!472, !44, i64 40}
!475 = distinct !{!475, !193}
!476 = distinct !{!476, !26}
!477 = !{!278, !44, i64 16}
!478 = !{!"p1 _ZTS17re_pattern_buffer", !27, i64 0}
!479 = !{!"RRegexp", !283, i64 0, !478, i64 16, !21, i64 24, !21, i64 32}
!480 = !{!479, !478, i64 16}
!481 = !{!"RNode_MATCH3", !69, i64 0, !44, i64 32, !44, i64 40}
!482 = !{!481, !44, i64 32}
!483 = !{!481, !44, i64 40}
!484 = distinct !{!484, !26}
!485 = !{!"RNode_DEFINED", !69, i64 0, !44, i64 32, !61, i64 40}
!486 = !{!485, !44, i64 32}
!487 = !{!284, !44, i64 32}
!488 = distinct !{!488, !26}
!489 = distinct !{!489, !26}
!490 = !{!"RNode_QCALL", !69, i64 0, !44, i64 32, !21, i64 40, !44, i64 48}
!491 = !{!490, !44, i64 48}
!492 = !{!"RNode_CASE", !69, i64 0, !44, i64 32, !44, i64 40, !61, i64 48, !61, i64 64}
!493 = !{!492, !44, i64 32}
!494 = !{!492, !44, i64 40}
!495 = !{!"RNode_CASE2", !69, i64 0, !44, i64 32, !44, i64 40, !61, i64 48, !61, i64 64}
!496 = !{!495, !44, i64 32}
!497 = !{!495, !44, i64 40}
!498 = !{!"RNode_FOR_MASGN", !69, i64 0, !44, i64 32}
!499 = !{!498, !44, i64 32}
!500 = distinct !{!500, !26}
!501 = distinct !{!501, !26}
!502 = !{!"RNode_FOR", !69, i64 0, !44, i64 32, !44, i64 40, !61, i64 48, !61, i64 64, !61, i64 80, !61, i64 96}
!503 = !{!502, !44, i64 32}
!504 = !{!502, !44, i64 40}
!505 = !{!128, !44, i64 32}
!506 = !{!128, !44, i64 48}
!507 = !{!130, !44, i64 32}
!508 = !{!132, !44, i64 32}
!509 = !{!145, !44, i64 32}
!510 = !{!"RNode_ARGS", !69, i64 0, !148, i64 32}
!511 = !{!510, !18, i64 48}
!512 = distinct !{!512, !26}
!513 = !{!306, !44, i64 32}
!514 = !{!163, !44, i64 48}
!515 = !{!163, !44, i64 56}
!516 = !{!165, !44, i64 40}
!517 = !{!165, !44, i64 48}
!518 = !{!161, !44, i64 40}
!519 = !{!161, !44, i64 48}
!520 = !{!161, !44, i64 56}
!521 = !{!"RNode_IVAR", !69, i64 0, !21, i64 32}
!522 = !{!521, !21, i64 32}
!523 = !{!"RNode_CONST", !69, i64 0, !21, i64 32}
!524 = !{!523, !21, i64 32}
!525 = !{!"RNode_CVAR", !69, i64 0, !21, i64 32}
!526 = !{!525, !21, i64 32}
!527 = distinct !{!527, !26}
!528 = distinct !{!528, !26}
!529 = distinct !{!529, !26}
!530 = distinct !{!530, !26}
!531 = distinct !{!531, !26}
!532 = distinct !{!532, !26}
!533 = distinct !{!533, !26}
!534 = distinct !{!534, !26}
!535 = distinct !{!535, !26}
!536 = !{!46, !31, i64 40}
!537 = distinct !{!537, !26}
!538 = distinct !{!538, !26}
!539 = !{!36, !36, i64 0}
!540 = distinct !{!540, !26}
!541 = distinct !{!541, !26}
!542 = distinct !{!542, !26}
!543 = distinct !{!543, !26}
!544 = distinct !{!544, !26}
!545 = distinct !{!545, !26}
!546 = distinct !{!546, !26}
!547 = distinct !{!547, !26}
!548 = distinct !{!548, !26}
!549 = distinct !{!549, !26}
!550 = distinct !{!550, !26}
!551 = distinct !{!551, !26}
!552 = distinct !{!552, !26}
!553 = distinct !{!553, !26}
!554 = distinct !{!554, !26, !191, !192}
!555 = distinct !{!555, !26, !191, !192}
!556 = distinct !{!556, !26, !192, !191}
!557 = distinct !{null}
!558 = distinct !{!558, !26}
!559 = distinct !{!559, !26}
!560 = distinct !{!560, !574}
!561 = distinct !{!561, !574}
!562 = !{!"branch_weights", i32 4000000, i32 4001}
!563 = !{!"rb_strterm_literal_struct", !21, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!564 = !{!563, !18, i64 8}
!565 = !{!563, !18, i64 16}
!566 = !{!563, !18, i64 12}
!567 = !{!563, !21, i64 0}
!568 = !{!"branch_weights", i32 2000, i32 51, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!569 = !{!"branch_weights", i32 2000, i32 6, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!570 = !{!"branch_weights", i32 8, i32 24}
!571 = !{!"magic_comment", !34, i64 0, !27, i64 8, !27, i64 16}
!572 = !{!571, !27, i64 16}
!573 = !{!571, !27, i64 8}
!574 = !{!"llvm.loop.peeled.count", i32 1}
!575 = !{!"branch_weights", i32 2146410443, i32 1073205}
!576 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!577 = distinct !{!577, !26}
!578 = distinct !{null}
!579 = distinct !{!579, !26}
!580 = !{!178, !21, i64 48}
!581 = distinct !{!581, !26}
!582 = distinct !{!582, !26}
!583 = distinct !{!583, !26}
!584 = distinct !{null}
!585 = distinct !{!585, !26}
!586 = distinct !{!586, !26}
!587 = !{!"kwtable", !24, i64 0, !17, i64 2, !24, i64 6}
!588 = !{!587, !24, i64 6}
!589 = distinct !{!589, !26}
!590 = !{!"branch_weights", i32 2000, i32 4, i32 2000, i32 2000, i32 2000}
!591 = distinct !{!591, !26}
!592 = distinct !{!592, !26}
!593 = distinct !{!593, !26}
!594 = !{!"branch_weights", i32 2000, i32 23, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!595 = distinct !{null, null}
!596 = !{!352, !27, i64 48}
!597 = distinct !{!597, !26}
!598 = distinct !{null}
!599 = distinct !{!599, !26}
!600 = !{!60, !18, i64 0}
!601 = !{!60, !18, i64 4}
!602 = distinct !{!602, !26}
!603 = distinct !{!603, !26}
!604 = distinct !{!604, !26}
!605 = !{!"RNode_VCALL", !69, i64 0, !21, i64 32}
!606 = !{!605, !21, i64 32}
!607 = distinct !{!607, !26}
!608 = distinct !{!608, !26}
!609 = distinct !{!609, !193}
!610 = distinct !{!610, !193}
!611 = distinct !{!611, !193}
!612 = distinct !{!612, !193}
!613 = distinct !{!613, !193}
!614 = distinct !{!614, !193}
!615 = distinct !{!615, !193}
!616 = distinct !{!616, !193}
!617 = distinct !{!617, !26}
!618 = !{!286, !44, i64 32}
!619 = distinct !{!619, !26}
!620 = distinct !{!620, !26}
!621 = distinct !{!621, !26}
!622 = distinct !{!622, !26}
!623 = distinct !{!623, !26}
end_hunk_14
