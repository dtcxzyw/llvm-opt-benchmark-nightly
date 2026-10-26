Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@js_parse_for_in_of:bb.a
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !466
  br label %emit_u32.exit.i

emit_u32.exit.i:                                  ; preds = %bb.f, %bb.e
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !554 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 296
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !732
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 344
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !733
  %i.dx = zext nneg i32 %.0.i4.i390 to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.du, ptr %i.dz, align 4, !tbaa !736
  br label %emit_label.exit

emit_label.exit:                                  ; preds = %new_label.exit394, %emit_u32.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !661 ; 2 uses
  %i.ec = call fastcc i32 @is_let(ptr noundef %0, i32 noundef 4)
  switch i32 %i.ec, label %.critedge [
    i32 1, label %.thread
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %emit_label.exit
  %i.ed = icmp eq i32 %i.eb, -39
  br i1 %i.ed, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ee = call fastcc i32 @next_token(ptr noundef %0)
  %.not299 = icmp eq i32 %i.ee, 0
  br i1 %.not299, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ef = load i32, ptr %i.ea, align 8, !tbaa !661
  %i.eg = icmp eq i32 %i.ef, -125
  br i1 %i.eg, label %bb.j, label %.thread415

bb.j:                                             ; preds = %bb.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !218
  %i.ej = icmp eq i32 %i.ei, 37
  br i1 %i.ej, label %token_is_pseudo_keyword.exit.i, label %.thread415

token_is_pseudo_keyword.exit.i:                   ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !218, !range !234, !noundef !235
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.thread415, label %bb.k

bb.k:                                             ; preds = %token_is_pseudo_keyword.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eo = load <2 x i32>, ptr %i.en, align 8, !tbaa !191
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.eq = load <2 x i32>, ptr %i.ep, align 4, !tbaa !191
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !556
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %i.et, align 8, !tbaa !364
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !659
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !904, !range !234, !noundef !235
  %i.ez = call fastcc i32 @next_token(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fa = load i32, ptr %i.en, align 8, !tbaa !920
  %i.fb = load i32, ptr %i.ep, align 4, !tbaa !559
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fd = load i32, ptr %i.ea, align 8, !tbaa !661
  %i.fe = icmp eq i32 %i.fd, -125
  br i1 %i.fe, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !218, !range !234, !noundef !235
  %i.fh = icmp ne i8 %i.fg, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.012.i = phi i1 [ %i.fh, %bb.n ], [ true, %bb.l ], [ true, %bb.m ]
  store <2 x i32> %i.eo, ptr %i.ep, align 4, !tbaa !191
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.eq, ptr %i.fi, align 8, !tbaa !191
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.es, ptr %i.fj, align 8, !tbaa !655
  store <2 x ptr> %i.eu, ptr %i.et, align 8, !tbaa !364
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !659
  store i8 %i.ey, ptr %i.ex, align 8, !tbaa !904
  %i.fk = call fastcc range(i32 -1, 1) i32 @next_token(ptr noundef nonnull %0)
  %.not15.i = icmp eq i32 %i.fk, 0
  br i1 %.not15.i, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  br i1 %.012.i, label %.thread415, label %bb.q

.thread415:                                       ; preds = %token_is_pseudo_keyword.exit.i, %bb.j, %bb.i, %bb.p
  %i.fl = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.616) ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.fm = load ptr, ptr %i.g, align 8, !tbaa !554
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 60 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 4
  %i.fp = or i64 %i.fo, 1048576
  store i64 %i.fp, ptr %i.fn, align 4
  br label %.thread433

.thread:                                          ; preds = %emit_label.exit, %bb.g
  %.0275412 = phi i32 [ %i.eb, %bb.g ], [ -46, %emit_label.exit ] ; 7 uses
  %i.fq = load i32, ptr %i.ea, align 8, !tbaa !661
  %i.fr = icmp eq i32 %i.fq, -125
  br i1 %i.fr, label %bb.r, label %token_is_pseudo_keyword.exit.thread

bb.r:                                             ; preds = %.thread
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !218
  %i.fu = icmp eq i32 %i.ft, 37
  br i1 %i.fu, label %token_is_pseudo_keyword.exit, label %token_is_pseudo_keyword.exit.thread

token_is_pseudo_keyword.exit:                     ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !218, !range !234, !noundef !235
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %token_is_pseudo_keyword.exit.thread, label %token_is_pseudo_keyword.exit.i396

token_is_pseudo_keyword.exit.i396:                ; preds = %token_is_pseudo_keyword.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fz = load <2 x i32>, ptr %i.fy, align 8, !tbaa !191
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.gb = load <2 x i32>, ptr %i.ga, align 4, !tbaa !191
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !556
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gf = load <2 x ptr>, ptr %i.ge, align 8, !tbaa !364
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !659
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !904, !range !234, !noundef !235
  %i.gk = call fastcc i32 @next_token(ptr noundef nonnull %0)
  %.not.i397 = icmp eq i32 %i.gk, 0
  br i1 %.not.i397, label %bb.s, label %.critedge

bb.s:                                             ; preds = %token_is_pseudo_keyword.exit.i396
  %i.gl = load i32, ptr %i.fy, align 8, !tbaa !920
  %i.gm = load i32, ptr %i.ga, align 4, !tbaa !559
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.go = load i32, ptr %i.ea, align 8, !tbaa !661
  %i.gp = icmp eq i32 %i.go, -125
  br i1 %i.gp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !218, !range !234, !noundef !235
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gt = load i32, ptr %i.fs, align 8, !tbaa !218
  %.fr = freeze i32 %i.gt
  %.not = icmp eq i32 %.fr, 71
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.012.i398 = phi i1 [ true, %bb.u ], [ %.not, %bb.v ], [ true, %bb.s ], [ true, %bb.t ]
  store <2 x i32> %i.fz, ptr %i.ga, align 4, !tbaa !191
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.gb, ptr %i.gu, align 8, !tbaa !191
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.gd, ptr %i.gv, align 8, !tbaa !655
  store <2 x ptr> %i.gf, ptr %i.ge, align 8, !tbaa !364
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !659
  store i8 %i.gj, ptr %i.gi, align 8, !tbaa !904
  %i.gw = call fastcc range(i32 -1, 1) i32 @next_token(ptr noundef nonnull %0)
  %.not15.i399 = icmp eq i32 %i.gw, 0
  br i1 %.not15.i399, label %is_using.exit401, label %.critedge

is_using.exit401:                                 ; preds = %bb.w
  br i1 %.012.i398, label %token_is_pseudo_keyword.exit.thread, label %.thread433

token_is_pseudo_keyword.exit.thread:              ; preds = %is_using.exit401, %.thread, %bb.r, %token_is_pseudo_keyword.exit
  %i.gx = icmp eq i32 %.0275412, -49              ; 5 uses
  switch i32 %.0275412, label %bb.av [
    i32 -46, label %.thread433
    i32 -49, label %.thread433
    i32 -55, label %.thread433
    i32 -79, label %.thread433
  ]

.thread433:                                       ; preds = %is_using.exit401, %bb.q, %token_is_pseudo_keyword.exit.thread, %token_is_pseudo_keyword.exit.thread, %token_is_pseudo_keyword.exit.thread, %token_is_pseudo_keyword.exit.thread
  %i.gy = phi i1 [ %i.gx, %token_is_pseudo_keyword.exit.thread ], [ %i.gx, %token_is_pseudo_keyword.exit.thread ], [ %i.gx, %token_is_pseudo_keyword.exit.thread ], [ %i.gx, %token_is_pseudo_keyword.exit.thread ], [ true, %bb.q ], [ true, %is_using.exit401 ] ; 4 uses
  %.1438 = phi i8 [ 0, %token_is_pseudo_keyword.exit.thread ], [ 0, %token_is_pseudo_keyword.exit.thread ], [ 0, %token_is_pseudo_keyword.exit.thread ], [ 0, %token_is_pseudo_keyword.exit.thread ], [ 1, %bb.q ], [ 0, %is_using.exit401 ] ; 3 uses
  %.4279436 = phi i32 [ %.0275412, %token_is_pseudo_keyword.exit.thread ], [ %.0275412, %token_is_pseudo_keyword.exit.thread ], [ %.0275412, %token_is_pseudo_keyword.exit.thread ], [ %.0275412, %token_is_pseudo_keyword.exit.thread ], [ -49, %bb.q ], [ -49, %is_using.exit401 ] ; 8 uses
  %i.gz = call fastcc i32 @next_token(ptr noundef %0)
  %.not303 = icmp eq i32 %i.gz, 0
  br i1 %.not303, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.thread433
  %i.ha = load i32, ptr %i.ea, align 8, !tbaa !661
  switch i32 %i.ha, label %.thread439 [
    i32 -125, label %bb.y
    i32 91, label %bb.z
    i32 123, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !218, !range !234, !noundef !235
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %.thread439, label %bb.ab

bb.z:                                             ; preds = %bb.x, %bb.x
  %i.he = call fastcc i32 @js_parse_destructuring_element(ptr noundef %0, i32 noundef %.4279436, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef -1, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.a, align 4, !tbaa !191
  br label %bb.bf

.thread439:                                       ; preds = %bb.x, %bb.y
  %i.hg = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.595) ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !218 ; 13 uses
  %i.hj = icmp slt i32 %i.hi, 242
  br i1 %i.hj, label %JS_DupAtom.exit, label %JS_DupAtom.exit.thread

JS_DupAtom.exit.thread:                           ; preds = %bb.ab
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !232
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1104
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !297
  %i.ho = zext nneg i32 %i.hi to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !299
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !191
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !191
  store i32 %i.hi, ptr %i.a, align 4, !tbaa !191
  br label %bb.ae

JS_DupAtom.exit:                                  ; preds = %bb.ab
  store i32 %i.hi, ptr %i.a, align 4, !tbaa !191
  %i.hu = icmp eq i32 %i.hi, 40
  br i1 %i.hu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %JS_DupAtom.exit
  switch i32 %.4279436, label %bb.ae [
    i32 -46, label %bb.ad
    i32 -49, label %bb.ad
    i32 -55, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.hv = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.592) ; 0 uses
  br label %.critedge

bb.ae:                                            ; preds = %JS_DupAtom.exit.thread, %bb.ac, %JS_DupAtom.exit
  %i.hw = call fastcc i32 @next_token(ptr noundef %0)
  %.not304 = icmp eq i32 %i.hw, 0
  br i1 %.not304, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = load ptr, ptr %0, align 8, !tbaa !553
  call void @JS_FreeAtom(ptr noundef %i.hx, i32 noundef %i.hi)
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %i.hy = call fastcc i32 @js_define_var(ptr noundef %0, i32 noundef %i.hi, i32 noundef %.4279436)
  %.not305 = icmp eq i32 %i.hy, 0
  br i1 %.not305, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hz = load ptr, ptr %0, align 8, !tbaa !553
  call void @JS_FreeAtom(ptr noundef %i.hz, i32 noundef %i.hi)
  br label %.critedge

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.gy, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.ia = call fastcc i32 @add_scope_var(ptr noundef %i.f, ptr noundef nonnull %i.h, i32 noundef 89, i32 noundef 11) ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  br i1 %i.ib, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !875
  %i.ie = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.if = getelementptr inbounds nuw [20 x i8], ptr %i.id, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 12 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 4
  %i.ii = or i8 %i.ih, 2
  store i8 %i.ii, ptr %i.ig, align 4
  %i.ij = load ptr, ptr %i.ic, align 8, !tbaa !875
  %i.ik = getelementptr inbounds nuw [20 x i8], ptr %i.ij, i64 %i.ie
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12 ; 2 uses
  %i.im = load i8, ptr %i.il, align 4
  %i.in = or i8 %i.im, 1
  store i8 %i.in, ptr %i.il, align 4
  %.val353 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val353, i8 noundef zeroext -73)
  %.val363 = load ptr, ptr %i.g, align 8, !tbaa !554 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val363, i64 288 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val363, i64 304
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !465
  %i.ir = getelementptr inbounds nuw i8, ptr %.val363, i64 296 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !466 ; 3 uses
  %i.it = icmp eq i64 %i.iq, %i.is
  br i1 %i.it, label %bb.al, label %bb.am, !prof !192

bb.al:                                            ; preds = %bb.ak
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.io, i8 noundef zeroext %.1438)
  br label %.thread440

bb.am:                                            ; preds = %bb.ak
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !467
  %i.iv = add i64 %i.is, 1
  store i64 %i.iv, ptr %i.ir, align 8, !tbaa !466
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.is
  store i8 %.1438, ptr %i.iw, align 1, !tbaa !218
  br label %.thread440

.thread440:                                       ; preds = %bb.am, %bb.al
  %.val352 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val352, i8 noundef zeroext 88)
  %i.ix = trunc i32 %i.ia to i16
  %.val359 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_u16(ptr %.val359, i16 noundef zeroext %i.ix)
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.iy = load ptr, ptr %0, align 8, !tbaa !553
  call void @JS_FreeAtom(ptr noundef %i.iy, i32 noundef %i.hi)
  br label %.critedge

bb.ao:                                            ; preds = %.thread440, %bb.ai
  switch i32 %.4279436, label %bb.ap [
    i32 -46, label %bb.aq
    i32 -55, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.iz = select i1 %i.gy, i8 -62, i8 -66
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ao, %bb.ap
  %i.ja = phi i8 [ %i.iz, %bb.ap ], [ -62, %bb.ao ], [ -62, %bb.ao ]
  %.val351 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val351, i8 noundef zeroext %i.ja)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.hi)
  %i.jb = load i32, ptr %i.i, align 8, !tbaa !717
  %i.jc = trunc i32 %i.jb to i16
  %.val358 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_u16(ptr %.val358, i16 noundef zeroext %i.jc)
  br i1 %i.gy, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !720 ; 2 uses
  %i.jf = load i32, ptr %i.i, align 8, !tbaa !717 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [20 x i8], ptr %i.je, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 4             ; 2 uses
  %i.jk = and i8 %i.jj, 1
  %.not306 = icmp eq i8 %i.jk, 0
  br i1 %.not306, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jl = or disjoint i8 %i.jj, 1
  store i8 %i.jl, ptr %i.ji, align 4
  %i.jm = call fastcc i32 @new_label(ptr noundef %0)
  %i.jn = load ptr, ptr %i.jd, align 8, !tbaa !720
  %i.jo = load i32, ptr %i.i, align 8, !tbaa !717
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [20 x i8], ptr %i.jn, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 %i.jm, ptr %i.jr, align 4, !tbaa !728
  %i.js = call fastcc i32 @new_label(ptr noundef %0)
  %i.jt = load ptr, ptr %i.jd, align 8, !tbaa !720 ; 2 uses
  %i.ju = load i32, ptr %i.i, align 8, !tbaa !717 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [20 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i32 %i.js, ptr %i.jx, align 4, !tbaa !729
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jy = phi i32 [ %i.ju, %bb.as ], [ %i.jf, %bb.ar ]
  %i.jz = phi ptr [ %i.jt, %bb.as ], [ %i.je, %bb.ar ]
  %7 = trunc nuw i8 %.1438 to i1
  br i1 %7, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.ka = sext i32 %i.jy to i64
  %i.kb = getelementptr inbounds [20 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 4
  %i.ke = or i8 %i.kd, 2
  store i8 %i.ke, ptr %i.kc, align 4
  br label %bb.bf

bb.av:                                            ; preds = %token_is_pseudo_keyword.exit.thread
  %.pr.pre452 = load i32, ptr %i.ea, align 8, !tbaa !661 ; 2 uses
  %i.kf = icmp ne i32 %.pr.pre452, -125
  %or.cond493.not = select i1 %2, i1 true, i1 %i.kf
  br i1 %or.cond493.not, label %token_is_pseudo_keyword.exit402.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !218
  %i.ki = icmp eq i32 %i.kh, 143
  br i1 %i.ki, label %token_is_pseudo_keyword.exit402, label %token_is_pseudo_keyword.exit402.thread.thread

token_is_pseudo_keyword.exit402:                  ; preds = %bb.aw
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.kk = load i8, ptr %i.kj, align 4, !tbaa !218, !range !234, !noundef !235
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %token_is_pseudo_keyword.exit402.thread.thread, label %bb.ax

bb.ax:                                            ; preds = %token_is_pseudo_keyword.exit402
  %i.km = getelementptr i8, ptr %0, i64 120
  %.val360 = load ptr, ptr %i.km, align 8, !tbaa !655
  %i.kn = call fastcc i32 @peek_token(ptr %.val360, i1 noundef zeroext false)
  %i.ko = icmp eq i32 %i.kn, -38
  br i1 %i.ko, label %bb.ay, label %.token_is_pseudo_keyword.exit402.threadthread-pre-split_crit_edge

.token_is_pseudo_keyword.exit402.threadthread-pre-split_crit_edge: ; preds = %bb.ax
  %.pr.pre = load i32, ptr %i.ea, align 8, !tbaa !661
  br label %token_is_pseudo_keyword.exit402.thread

bb.ay:                                            ; preds = %bb.ax
  %i.kp = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.617) ; 0 uses
  br label %.critedge

token_is_pseudo_keyword.exit402.thread.thread:    ; preds = %token_is_pseudo_keyword.exit402, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  br label %bb.bb

token_is_pseudo_keyword.exit402.thread:           ; preds = %bb.av, %.token_is_pseudo_keyword.exit402.threadthread-pre-split_crit_edge
  %i.kq = phi i32 [ %.pr.pre452, %bb.av ], [ %.pr.pre, %.token_is_pseudo_keyword.exit402.threadthread-pre-split_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  switch i32 %i.kq, label %bb.bb [
    i32 91, label %bb.az
    i32 123, label %bb.az
  ]

bb.az:                                            ; preds = %token_is_pseudo_keyword.exit402.thread, %token_is_pseudo_keyword.exit402.thread
  %i.kr = call fastcc i32 @js_parse_skip_parens_token(ptr noundef %0, ptr noundef nonnull %i.d, i1 noundef zeroext false)
  switch i32 %i.kr, label %bb.bb [
    i32 -38, label %bb.ba
    i32 -73, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.ks = load i32, ptr %i.d, align 4, !tbaa !191
  %i.kt = and i32 %i.ks, 2
  %i.ku = call fastcc i32 @js_parse_destructuring_element(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %i.kt, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %.critedge326, label %bb.be

bb.bb:                                            ; preds = %token_is_pseudo_keyword.exit402.thread.thread, %bb.az, %token_is_pseudo_keyword.exit402.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  %i.kw = call fastcc i32 @js_parse_postfix_expr(ptr noundef nonnull %0, i32 noundef 2), !inline_history !175
  %.not301 = icmp eq i32 %i.kw, 0
  br i1 %.not301, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kx = call fastcc i32 @get_lvalue(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.e, ptr noundef null, i1 noundef zeroext false, i32 noundef -69)
  %.not302 = icmp eq i32 %i.kx, 0
  br i1 %.not302, label %.critedge324, label %bb.bd

.critedge324:                                     ; preds = %bb.bc
  %i.ky = load i32, ptr %i.b, align 4, !tbaa !191
  %i.kz = load i32, ptr %i.c, align 4, !tbaa !191
  %i.la = load i32, ptr %i.a, align 4, !tbaa !191
  %i.lb = load i32, ptr %i.e, align 4, !tbaa !191
  call fastcc void @put_lvalue(ptr noundef %0, i32 noundef %i.ky, i32 noundef %i.kz, i32 noundef %i.la, i32 noundef %i.lb, i32 noundef 4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %.critedge326

bb.be:                                            ; preds = %.critedge324, %bb.ba
  store i32 0, ptr %i.a, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.at, %bb.au, %bb.aq, %bb.aa
  %i.lc = phi i32 [ 0, %bb.aa ], [ 0, %bb.be ], [ %i.hi, %bb.aq ], [ %i.hi, %bb.au ], [ %i.hi, %bb.at ] ; 4 uses
  %i.ld = phi i1 [ %i.gy, %bb.aa ], [ %i.gx, %bb.be ], [ false, %bb.aq ], [ true, %bb.au ], [ true, %bb.at ]
  %.4279437 = phi i32 [ %.4279436, %bb.aa ], [ %.0275412, %bb.be ], [ %.4279436, %bb.aq ], [ %.4279436, %bb.au ], [ %.4279436, %bb.at ]
  %.0280 = phi i1 [ true, %bb.aa ], [ false, %bb.be ], [ false, %bb.aq ], [ false, %bb.au ], [ false, %bb.at ]
  %i.le = call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 106, i32 noundef %.0.i4.i370) ; 0 uses
  %i.lf = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 296 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !732 ; 5 uses
  %i.li = trunc i64 %i.lh to i32                  ; 3 uses
  %i.lj = icmp sgt i32 %i.cr, -1
  br i1 %i.lj, label %bb.bg, label %emit_label.exit408

bb.bg:                                            ; preds = %bb.bf
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 288 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 336
  store i32 %i.li, ptr %i.ll, align 8, !tbaa !730
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 304
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !465
  %i.lo = icmp eq i64 %i.ln, %i.lh
  br i1 %i.lo, label %bb.bh, label %bb.bi, !prof !192

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.lk, i8 noundef zeroext -69)
  br label %emit_op.exit.i405

bb.bi:                                            ; preds = %bb.bg
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !467
  %i.lq = add i64 %i.lh, 1
  store i64 %i.lq, ptr %i.lg, align 8, !tbaa !466
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh
  store i8 -69, ptr %i.lr, align 1, !tbaa !218
  br label %emit_op.exit.i405

emit_op.exit.i405:                                ; preds = %bb.bi, %bb.bh
  %.val9.i406 = load ptr, ptr %i.g, align 8, !tbaa !554 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val9.i406, i64 288 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val9.i406, i64 304
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !465
  %i.lv = getelementptr inbounds nuw i8, ptr %.val9.i406, i64 296 ; 3 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !466 ; 2 uses
  %i.lx = sub i64 %i.lu, %i.lw
  %i.ly = icmp ult i64 %i.lx, 4
  br i1 %i.ly, label %bb.bj, label %bb.bk, !prof !192

bb.bj:                                            ; preds = %emit_op.exit.i405
  %i.lz = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.ls, i32 noundef %i.cr) ; 0 uses
  br label %emit_u32.exit.i407

bb.bk:                                            ; preds = %emit_op.exit.i405
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !467
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lw
  store i32 %i.cr, ptr %i.mb, align 1
  %i.mc = load i64, ptr %i.lv, align 8, !tbaa !466
  %i.md = add i64 %i.mc, 4
  store i64 %i.md, ptr %i.lv, align 8, !tbaa !466
  br label %emit_u32.exit.i407

emit_u32.exit.i407:                               ; preds = %bb.bk, %bb.bj
  %i.me = load ptr, ptr %i.g, align 8, !tbaa !554 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 296
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !732
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 344
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !733
  %i.mk = zext nneg i32 %i.cr to i64
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  store i32 %i.mh, ptr %i.mm, align 4, !tbaa !736
  br label %emit_label.exit408

emit_label.exit408:                               ; preds = %bb.bf, %emit_u32.exit.i407
  %i.mn = load i32, ptr %i.ea, align 8, !tbaa !661
  %i.mo = icmp eq i32 %i.mn, 61                   ; 3 uses
  br i1 %i.mo, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %emit_label.exit408
  %i.mp = call fastcc i32 @next_token(ptr noundef %0)
  %.not307 = icmp eq i32 %i.mp, 0
  br i1 %.not307, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.mq = call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef 0)
  %.not308 = icmp eq i32 %i.mq, 0
  br i1 %.not308, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @JS_FreeAtom(ptr noundef %i.f, i32 noundef %i.lc)
  br label %.critedge

bb.bo:                                            ; preds = %bb.bm
  %.not309 = icmp eq i32 %i.lc, 0
  br i1 %.not309, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val350 = load ptr, ptr %i.g, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val350, i8 noundef zeroext -66)
  call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.lc)
  %i.mr = load i32, ptr %i.i, align 8, !tbaa !717
  %i.ms = trunc i32 %i.mr to i16
  %.val357 = load ptr, ptr %i.g, align 8, !tbaa !554
end_hunk_0
begin_hunk_1_@optimize_scope_make_ref:bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !467
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  store i16 %i.n, ptr %i.u, align 1
  %i.v = load i64, ptr %i.h, align 8, !tbaa !466
  %i.w = add i64 %i.v, 2
  store i64 %i.w, ptr %i.h, align 8, !tbaa !466
  br label %dbuf_put_u16.exit

dbuf_put_u16.exit:                                ; preds = %bb.e, %bb.f
  %i.x = add nsw i32 %3, 1
  br label %bb.g

bb.g:                                             ; preds = %dbuf_put_u16.exit, %bb.a
  %.025 = phi i32 [ %i.x, %dbuf_put_u16.exit ], [ %3, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !736  ; 5 uses
  %i.aa = add nsw i32 %i.z, -5                    ; 2 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !218
  %i.ae = icmp eq i8 %i.ad, 22
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.z, -4
  %i.ag = sext i32 %i.aa to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  store i8 17, ptr %i.ah, align 1, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.af, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ai = trunc nuw nsw i32 %4 to i8
  %i.aj = add nuw nsw i8 %i.ai, 1
  %i.ak = sext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 2 uses
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !218
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = trunc i32 %5 to i16
  store i16 %i.an, ptr %i.am, align 1
  %i.ao = add nsw i32 %.0, 1
  %i.ap = icmp slt i32 %i.ao, %i.z
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %1, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.aq, i64 3
  %i.ar = add nsw i32 %i.z, -2
  %i.as = sub i32 %i.ar, %.0
  %i.at = zext i32 %i.as to i64
  %i.au = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -72, i64 %i.au, i1 false), !tbaa !218
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.i
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @optimize_scope_make_global_ref(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %4 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !218
  %i.d = icmp eq i8 %i.c, 59
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !465
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !466  ; 3 uses
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !192

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %1, i8 noundef zeroext 56)
  br label %dbuf_putc.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !467
  %i.k = add i64 %i.h, 1
  store i64 %i.k, ptr %i.g, align 8, !tbaa !466
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 56, ptr %i.l, align 1, !tbaa !218
  br label %dbuf_putc.exit

dbuf_putc.exit:                                   ; preds = %bb.c, %bb.d
  %i.m = icmp slt i32 %5, 242
  br i1 %i.m, label %JS_DupAtom.exit, label %bb.e

bb.e:                                             ; preds = %dbuf_putc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !297
  %i.r = zext nneg i32 %5 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !299
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %dbuf_putc.exit, %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !465
  %i.y = load i64, ptr %i.g, align 8, !tbaa !466  ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !192

bb.f:                                             ; preds = %JS_DupAtom.exit
  %i.ab = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %1, i32 noundef %5) ; 0 uses
  br label %dbuf_put_u32.exit

bb.g:                                             ; preds = %JS_DupAtom.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !467
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  store i32 %5, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !466
  %i.af = add i64 %i.ae, 4
  store i64 %i.af, ptr %i.g, align 8, !tbaa !466
  br label %dbuf_put_u32.exit

dbuf_put_u32.exit:                                ; preds = %bb.f, %bb.g
  %i.ag = add nsw i32 %4, 1
  br label %bb.h

bb.h:                                             ; preds = %dbuf_put_u32.exit, %bb.a
  %.026 = phi i32 [ %i.ag, %dbuf_put_u32.exit ], [ %4, %bb.a ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !736 ; 5 uses
  %i.aj = add nsw i32 %i.ai, -5                   ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !218
  %i.an = icmp eq i8 %i.am, 22
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.ai, -4
  %i.ap = sext i32 %i.aj to i64
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store i8 17, ptr %i.aq, align 1, !tbaa !218
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.ao, %bb.i ], [ %i.aj, %bb.h ] ; 4 uses
  %i.ar = sext i32 %.0 to i64
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar ; 2 uses
  store i8 57, ptr %i.as, align 1, !tbaa !218
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = icmp slt i32 %5, 242
  br i1 %i.au, label %JS_DupAtom.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !232
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !297
  %i.az = zext nneg i32 %5 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !299
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  br label %JS_DupAtom.exit28

JS_DupAtom.exit28:                                ; preds = %bb.j, %bb.k
  store i32 %5, ptr %i.at, align 1
  %i.bf = add nsw i32 %.0, 3
  %i.bg = icmp slt i32 %i.bf, %i.ai
  br i1 %i.bg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %JS_DupAtom.exit28
  %i.bh = sext i32 %.0 to i64
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 5
  %i.bj = add nsw i32 %i.ai, -4
  %i.bk = sub i32 %i.bj, %.0
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -72, i64 %i.bm, i1 false), !tbaa !218
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %JS_DupAtom.exit28
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @resolve_scope_private_field1(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef captures(address) %3, i32 noundef %4, i32 noundef range(i32 0, 65536) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.054 = phi ptr [ %3, %bb.a ], [ %i.ad, %bb.l ] ; 11 uses
  %.051.a = phi i1 [ false, %bb.a ], [ true, %bb.l ]
  %.049 = phi i32 [ %5, %bb.a ], [ %i.bf, %bb.l ]
  %i.b = getelementptr inbounds nuw i8, ptr %.054, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !720
  %i.d = sext i32 %.049 to i64
  %i.e = getelementptr inbounds [20 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.01.i = load i32, ptr %i.f, align 4, !tbaa !191 ; 2 uses
  %i.g = icmp sgt i32 %.01.i, -1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit80

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.054, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !875
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.i = load i32, ptr %i.j, align 4, !tbaa !191 ; 2 uses
  %i.k = icmp sgt i32 %.0.i, -1
  br i1 %i.k, label %bb.d, label %.loopexit80, !llvm.loop !2118

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.02.i = phi i32 [ %.01.i, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 3 uses
  %i.l = zext nneg i32 %.02.i to i64
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %i.l ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !547
  %i.o = icmp eq i32 %i.n, %4
  br i1 %i.o, label %find_private_class_field_all.exit, label %bb.c

find_private_class_field_all.exit:                ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4               ; 3 uses
  %i.r = lshr i8 %i.q, 4
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  br i1 %.051.a, label %bb.e, label %.thread

bb.e:                                             ; preds = %find_private_class_field_all.exit
  %i.t = and i8 %i.q, 4
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.f, label %capture_var.exit

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i8 %i.q, 4
  store i8 %i.u, ptr %i.p, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.054, i64 116 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !893  ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !893
  %i.y = trunc i32 %i.w to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  store i16 %i.y, ptr %i.z, align 2, !tbaa !548
  br label %capture_var.exit

capture_var.exit:                                 ; preds = %bb.e, %bb.f
  %i.aa = tail call fastcc i32 @get_closure_var(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %.054, i32 noundef 0, i32 noundef %.02.i, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0) ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.thread75, label %.thread

.loopexit80:                                      ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !860 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.loopexit80
  %i.ae = getelementptr inbounds nuw i8, ptr %.054, i64 60
  %i.af = load i64, ptr %i.ae, align 4
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.054, i64 384
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !710 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 392
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !709
  %wide.trip.count = zext nneg i32 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !545
  %i.ap = icmp eq i32 %i.ao, %4
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ar = load i16, ptr %i.am, align 4            ; 3 uses
  %i.as = lshr i16 %i.ar, 8
  %i.at = and i16 %i.as, 15
  %i.au = zext nneg i16 %i.at to i32              ; 3 uses
  %.not69 = icmp eq ptr %.054, %3
  br i1 %.not69, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = and i16 %i.ar, 16
  %i.aw = icmp ne i16 %i.av, 0
  %i.ax = and i16 %i.ar, 8
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = tail call fastcc i32 @get_closure_var(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %.054, i32 noundef 2, i32 noundef %i.aq, i32 noundef %4, i1 noundef zeroext %i.aw, i1 noundef zeroext %i.ay, i32 noundef %i.au) ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread75, label %.thread

bb.k:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !2119

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.bb = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.bb, align 8, !tbaa !232
  %i.bc = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i, ptr noundef nonnull %i.a, i32 noundef %4) ; 0 uses
  %i.bd = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.629, ptr noundef nonnull %i.a) #51, !inline_history !89 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %.thread75

bb.l:                                             ; preds = %.loopexit80
  %i.be = getelementptr inbounds nuw i8, ptr %.054, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !862
  br label %bb.b

.thread:                                          ; preds = %bb.i, %bb.j, %capture_var.exit, %find_private_class_field_all.exit
  %.361 = phi i32 [ %i.aa, %capture_var.exit ], [ %.02.i, %find_private_class_field_all.exit ], [ %i.aq, %bb.i ], [ %i.az, %bb.j ]
  %.257 = phi i32 [ %i.s, %capture_var.exit ], [ %i.s, %find_private_class_field_all.exit ], [ %i.au, %bb.i ], [ %i.au, %bb.j ]
  %.3 = phi i8 [ 1, %capture_var.exit ], [ 0, %find_private_class_field_all.exit ], [ 1, %bb.i ], [ 1, %bb.j ]
  store i8 %.3, ptr %1, align 1, !tbaa !605
  store i32 %.257, ptr %2, align 4, !tbaa !191
  br label %.thread75

.thread75:                                        ; preds = %bb.j, %capture_var.exit, %.thread, %.loopexit
  %.2 = phi i32 [ -1, %.loopexit ], [ %.361, %.thread ], [ -1, %capture_var.exit ], [ -1, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_short_code(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %2, 4
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.aw [
    i32 87, label %bb.c
    i32 88, label %bb.f
    i32 89, label %bb.i
    i32 90, label %bb.l
    i32 91, label %bb.o
    i32 92, label %bb.r
    i32 93, label %bb.u
    i32 94, label %bb.x
    i32 95, label %bb.aa
    i32 34, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = trunc i32 %2 to i8
  %i.c = add i8 %i.b, -53                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !465
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !466  ; 3 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.e, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.c)
  br label %dbuf_putc.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !467
  %i.j = add i64 %i.g, 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !466
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 %i.c, ptr %i.k, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.f:                                             ; preds = %bb.b
  %i.l = trunc i32 %2 to i8
  %i.m = add i8 %i.l, -49                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !465
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !466  ; 3 uses
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.m)
  br label %dbuf_putc.exit

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !467
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.p, align 8, !tbaa !466
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 %i.m, ptr %i.u, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.i:                                             ; preds = %bb.b
  %i.v = trunc i32 %2 to i8
  %i.w = add i8 %i.v, -45                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !465
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !466 ; 3 uses
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !192

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.w)
  br label %dbuf_putc.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !467
  %i.ad = add i64 %i.aa, 1
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !466
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 %i.w, ptr %i.ae, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.l:                                             ; preds = %bb.b
  %i.af = trunc i32 %2 to i8
  %i.ag = add i8 %i.af, -41                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !465
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !466 ; 3 uses
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.n, !prof !192

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.ag)
  br label %dbuf_putc.exit

bb.n:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %0, align 8, !tbaa !467
  %i.an = add i64 %i.ak, 1
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !466
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.o:                                             ; preds = %bb.b
  %i.ap = trunc i32 %2 to i8
  %i.aq = add i8 %i.ap, -37                       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !465
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !466 ; 3 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.p, label %bb.q, !prof !192

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.aq)
  br label %dbuf_putc.exit

bb.q:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %0, align 8, !tbaa !467
  %i.ax = add i64 %i.au, 1
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !466
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 %i.aq, ptr %i.ay, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.r:                                             ; preds = %bb.b
  %i.az = trunc i32 %2 to i8
  %i.ba = add i8 %i.az, -33                       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !465
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !466 ; 3 uses
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %bb.t, !prof !192

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.ba)
  br label %dbuf_putc.exit

bb.t:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %0, align 8, !tbaa !467
  %i.bh = add i64 %i.be, 1
  store i64 %i.bh, ptr %i.bd, align 8, !tbaa !466
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 %i.ba, ptr %i.bi, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.u:                                             ; preds = %bb.b
  %i.bj = trunc i32 %2 to i8
  %i.bk = add i8 %i.bj, -29                       ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !465
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !466 ; 3 uses
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.v, label %bb.w, !prof !192

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.bk)
  br label %dbuf_putc.exit

bb.w:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %0, align 8, !tbaa !467
  %i.br = add i64 %i.bo, 1
  store i64 %i.br, ptr %i.bn, align 8, !tbaa !466
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 %i.bk, ptr %i.bs, align 1, !tbaa !218
  br label %dbuf_putc.exit

bb.x:                                             ; preds = %bb.b
  %i.bt = trunc i32 %2 to i8
  %i.bu = add i8 %i.bt, -25                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !465
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !466 ; 3 uses
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.y, label %bb.z, !prof !192

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext %i.bu)
  br label %dbuf_putc.exit

bb.z:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %0, align 8, !tbaa !467
  %i.cb = add i64 %i.by, 1
end_hunk_1
