Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %i.dv = load i8, ptr %i.db, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i.5

_ZL10stbi__get8P13stbi__context.exit.i.5:         ; preds = %bb.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5
  %i.dw = phi ptr [ %i.da, %bb.ae ], [ %.sink.i.i.i.5, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ] ; 2 uses
  %i.dx = phi ptr [ %i.du, %bb.ae ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ] ; 3 uses
  %.0.i.i.5 = phi i8 [ %i.dv, %bb.ae ], [ %i.dt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ]
  %.not.i.5 = icmp eq i8 %.0.i.i.5, 10
  br i1 %.not.i.5, label %bb.af, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.5
  %i.dy = icmp ult ptr %i.dx, %i.dw
  br i1 %i.dy, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i.i.6 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.6, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ec = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ed = tail call noundef i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %i.m, i32 noundef %i.ec), !inline_history !199 ; 2 uses
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.p, align 8, !tbaa !21
  %i.el = add nsw i32 %i.ek, %i.ej
  store i32 %i.el, ptr %i.p, align 8, !tbaa !21
  %i.em = icmp eq i32 %i.ed, 0
  br i1 %i.em, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = sext i32 %i.ed to i64
  %i.eo = getelementptr inbounds i8, ptr %i.m, i64 %i.en
  %.pre.i.i.6 = load i8, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6: ; preds = %bb.aj, %bb.ai
  %i.ep = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6, %bb.ai ]
  %.sink.i.i.i.6 = phi ptr [ %i.q, %bb.aj ], [ %i.eo, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6, ptr %i.i, align 8, !tbaa !27
  store ptr %i.q, ptr %i.h, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6

bb.ak:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.h, align 8, !tbaa !23
  %i.er = load i8, ptr %i.dx, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6

_ZL10stbi__get8P13stbi__context.exit.i.6:         ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6
  %i.es = phi ptr [ %i.dw, %bb.ak ], [ %.sink.i.i.i.6, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ]
  %i.et = phi ptr [ %i.eq, %bb.ak ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ] ; 3 uses
  %.0.i.i.6 = phi i8 [ %i.er, %bb.ak ], [ %i.ep, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ]
  %.not.i.6 = icmp eq i8 %.0.i.i.6, 26
  br i1 %.not.i.6, label %bb.al, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.6
  %i.eu = icmp ult ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i.i.7 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.7, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ey = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ez = tail call noundef i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.m, i32 noundef %i.ey), !inline_history !199 ; 2 uses
  %i.fa = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.fb = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !21
  %i.fh = add nsw i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.p, align 8, !tbaa !21
  %i.fi = icmp eq i32 %i.ez, 0
  br i1 %i.fi, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = sext i32 %i.ez to i64
  %i.fk = getelementptr inbounds i8, ptr %i.m, i64 %i.fj
  %.pre.i.i.7 = load i8, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7: ; preds = %bb.ap, %bb.ao
  %i.fl = phi i8 [ 0, %bb.ap ], [ %.pre.i.i.7, %bb.ao ]
  %.sink.i.i.i.7 = phi ptr [ %i.q, %bb.ap ], [ %i.fk, %bb.ao ]
  store ptr %.sink.i.i.i.7, ptr %i.i, align 8, !tbaa !27
  store ptr %i.q, ptr %i.h, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7

bb.aq:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.fm, ptr %i.h, align 8, !tbaa !23
  %i.fn = load i8, ptr %i.et, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7

_ZL10stbi__get8P13stbi__context.exit.i.7:         ; preds = %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7
  %.0.i.i.7 = phi i8 [ %i.fn, %bb.aq ], [ %i.fl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7 ]
  %.not.i.7 = icmp eq i8 %.0.i.i.7, 10
  br i1 %.not.i.7, label %_ZL22stbi__check_png_headerP13stbi__context.exit, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

_ZL22stbi__check_png_headerP13stbi__context.exit: ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7
  %i.fo = icmp eq i32 %1, 1
  br i1 %i.fo, label %.thread396, label %.preheader415

bb.ar:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.h, align 8, !tbaa !23
  %i.fq = load i8, ptr %.pre.i, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.as:                                            ; preds = %bb.a
  %i.fr = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ft = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.fu = load i32, ptr %i.n, align 4, !tbaa !19
  %i.fv = tail call noundef i32 %i.fs(ptr noundef %i.ft, ptr noundef nonnull %i.m, i32 noundef %i.fu), !inline_history !199 ; 2 uses
  %i.fw = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = load i32, ptr %i.p, align 8, !tbaa !21
  %i.gd = add nsw i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.p, align 8, !tbaa !21
  %i.ge = icmp eq i32 %i.fv, 0
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = sext i32 %i.fv to i64
  %i.gg = getelementptr inbounds i8, ptr %i.m, i64 %i.gf
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.av, %bb.au
  %i.gh = phi i8 [ 0, %bb.au ], [ %.pre.i.i, %bb.av ]
  %.sink.i.i.i = phi ptr [ %i.q, %bb.au ], [ %i.gg, %bb.av ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.i, align 8, !tbaa !27
  store ptr %i.q, ptr %i.h, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.ar
  %i.gi = phi ptr [ %.pre7.i, %bb.ar ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ] ; 2 uses
  %i.gj = phi ptr [ %i.fp, %bb.ar ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.fq, %bb.ar ], [ %i.gh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ]
  %.not.i = icmp eq i8 %.0.i.i, -119
  br i1 %.not.i, label %bb.b, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

_ZL22stbi__check_png_headerP13stbi__context.exit.thread: ; preds = %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c, %_ZL10stbi__get8P13stbi__context.exit.i.7, %_ZL10stbi__get8P13stbi__context.exit.i.6, %_ZL10stbi__get8P13stbi__context.exit.i.5, %_ZL10stbi__get8P13stbi__context.exit.i.4, %_ZL10stbi__get8P13stbi__context.exit.i.3, %_ZL10stbi__get8P13stbi__context.exit.i.2, %_ZL10stbi__get8P13stbi__context.exit.i.1, %_ZL10stbi__get8P13stbi__context.exit.i
  store ptr @.str.3, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

.preheader415:                                    ; preds = %_ZL22stbi__check_png_headerP13stbi__context.exit
  %i.gk = icmp eq i32 %1, 2                       ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 13 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader415, %.loopexit
  %.0236 = phi i8 [ %.3239, %.loopexit ], [ 0, %.preheader415 ] ; 19 uses
  %.0233 = phi i8 [ %.1234, %.loopexit ], [ 0, %.preheader415 ] ; 17 uses
  %.0230 = phi i32 [ %.1231, %.loopexit ], [ 0, %.preheader415 ] ; 22 uses
  %.0226 = phi i32 [ %.4, %.loopexit ], [ 0, %.preheader415 ] ; 22 uses
  %.0221 = phi i32 [ %.1222, %.loopexit ], [ 0, %.preheader415 ] ; 21 uses
  %.0217 = phi i32 [ %.2219, %.loopexit ], [ 1, %.preheader415 ] ; 10 uses
  %.0211 = phi i32 [ %.2213, %.loopexit ], [ 0, %.preheader415 ] ; 19 uses
  %.0207 = phi i32 [ %.2209, %.loopexit ], [ 0, %.preheader415 ] ; 20 uses
  %.0204 = phi i32 [ %.1205, %.loopexit ], [ 0, %.preheader415 ] ; 17 uses
  %i.gp = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.gq = shl nuw i32 %i.gp, 16                   ; 4 uses
  %i.gr = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 4 uses
  %i.gs = or disjoint i32 %i.gq, %i.gr            ; 20 uses
  %i.gt = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 4 uses
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 3 uses
  %i.gw = or disjoint i32 %i.gu, %i.gv
  switch i32 %i.gw, label %bb.gb [
    i32 1130840649, label %bb.ax
    i32 1229472850, label %bb.bd
    i32 1347179589, label %bb.cq
    i32 1951551059, label %bb.dl
    i32 1229209940, label %bb.ei
    i32 1229278788, label %bb.ez
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.gx = icmp eq i32 %i.gs, 0
  br i1 %i.gx, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = icmp slt i32 %i.gq, 0
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gz = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.gz, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.ha = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not.i303 = icmp eq ptr %i.ha, null
  br i1 %.not.i303, label %..thread_crit_edge.i, label %bb.bb

..thread_crit_edge.i:                             ; preds = %bb.ba
  %.pre.i304 = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.hc = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = trunc i64 %i.hf to i32                  ; 2 uses
  %i.hh = icmp sgt i32 %i.gs, %i.hg
  br i1 %i.hh, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.hb, ptr %i.h, align 8, !tbaa !23
  %i.hi = load ptr, ptr %i.go, align 8, !tbaa !70
  %i.hj = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.hk = sub nsw i32 %i.gs, %i.hg
  tail call void %i.hi(ptr noundef %i.hj, i32 noundef %i.hk), !inline_history !200
  br label %.loopexit

.thread.i:                                        ; preds = %bb.bb, %..thread_crit_edge.i
  %i.hl = phi ptr [ %.pre.i304, %..thread_crit_edge.i ], [ %i.hc, %bb.bb ]
  %i.hm = zext nneg i32 %i.gs to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hm
  store ptr %i.hn, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

bb.bd:                                            ; preds = %bb.aw
  %.not279 = icmp eq i32 %.0217, 0
  br i1 %.not279, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr @.str.6, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.bf:                                            ; preds = %bb.bd
  %.not280 = icmp eq i32 %i.gs, 13
  br i1 %.not280, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr @.str.7, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.bh:                                            ; preds = %bb.bf
  %i.ho = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.hr = or disjoint i32 %i.hp, %i.hq
  store i32 %i.hr, ptr %i.d, align 8, !tbaa !51
  %i.hs = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.ht = shl nuw i32 %i.hs, 16
  %i.hu = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.hv = or disjoint i32 %i.ht, %i.hu            ; 2 uses
  store i32 %i.hv, ptr %i.gn, align 4, !tbaa !52
  %i.hw = icmp ugt i32 %i.hv, 16777216
  br i1 %i.hw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.bj:                                            ; preds = %bb.bh
  %i.hx = load i32, ptr %i.d, align 8, !tbaa !51
  %i.hy = icmp ugt i32 %i.hx, 16777216
  br i1 %i.hy, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.bl:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %i.h, align 8, !tbaa !23  ; 4 uses
  %i.ia = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ib = icmp ult ptr %i.hz, %i.ia
  br i1 %i.ib, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 1 ; 2 uses
  store ptr %i.ic, ptr %i.h, align 8, !tbaa !23
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ie = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i305 = icmp eq i32 %i.ie, 0
  br i1 %.not.i305, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.if = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ih = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ii = tail call noundef i32 %i.if(ptr noundef %i.ig, ptr noundef nonnull %i.m, i32 noundef %i.ih), !inline_history !201 ; 2 uses
  %i.ij = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ik = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32
  %i.ip = load i32, ptr %i.p, align 8, !tbaa !21
  %i.iq = add nsw i32 %i.ip, %i.io
  store i32 %i.iq, ptr %i.p, align 8, !tbaa !21
  %i.ir = icmp eq i32 %i.ii, 0
  br i1 %i.ir, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.is = sext i32 %i.ii to i64
  %i.it = getelementptr inbounds i8, ptr %i.m, i64 %i.is
  %.pre.i306 = load i8, ptr %i.m, align 8, !tbaa !26
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.bq, %bb.bp
  %i.iu = phi i8 [ 0, %bb.bp ], [ %.pre.i306, %bb.bq ]
  %.sink.i.i = phi ptr [ %i.q, %bb.bp ], [ %i.it, %bb.bq ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.i, align 8, !tbaa !27
  store ptr %i.q, ptr %i.h, align 8, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.bm, %bb.bn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.iv = phi ptr [ %i.ia, %bb.bm ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.ia, %bb.bn ]
  %i.iw = phi ptr [ %i.ic, %bb.bm ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.hz, %bb.bn ] ; 3 uses
  %.0.i = phi i8 [ %i.id, %bb.bm ], [ %i.iu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.bn ] ; 3 uses
  %i.ix = zext i8 %.0.i to i32
  store i32 %i.ix, ptr %i.gm, align 8, !tbaa !49
  %i.iy = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i)
  %i.iz = icmp eq i8 %i.iy, 1
  %i.ja = and i8 %.0.i, 31
  %switch = icmp ne i8 %i.ja, 0
  %or.cond295 = and i1 %i.iz, %switch
  br i1 %or.cond295, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  store ptr @.str.9, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.bs:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.jb = icmp ult ptr %i.iw, %i.iv
  br i1 %i.jb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store ptr %i.jc, ptr %i.h, align 8, !tbaa !23
  %i.jd = load i8, ptr %i.iw, align 1, !tbaa !26
  br label %_ZL10stbi__get8P13stbi__context.exit312

bb.bu:                                            ; preds = %bb.bs
  %i.je = load i32, ptr %i.j, align 8, !tbaa !20
  %.not.i307 = icmp eq i32 %i.je, 0
  br i1 %.not.i307, label %.critedge.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jf = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.jg = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.jh = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ji = tail call noundef i32 %i.jf(ptr noundef %i.jg, ptr noundef nonnull %i.m, i32 noundef %i.jh), !inline_history !201 ; 2 uses
  %i.jj = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.jk = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
end_hunk_0
begin_hunk_1_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  br i1 %i.pc, label %.lr.ph737, label %.loopexit

.preheader409:                                    ; preds = %bb.eh
  br i1 %i.pc, label %.lr.ph739, label %.loopexit

.lr.ph739:                                        ; preds = %.preheader409, %.lr.ph739
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.lr.ph739 ], [ 0, %.preheader409 ] ; 2 uses
  %i.pd = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.pe = trunc nuw i32 %i.pd to i16
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv1068
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !32
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %i.pg = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.ph = sext i32 %i.pg to i64
  %i.pi = icmp slt i64 %indvars.iv.next1069, %i.ph
  br i1 %i.pi, label %.lr.ph739, label %.loopexit, !llvm.loop !204

.lr.ph737:                                        ; preds = %.preheader411, %.lr.ph737
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %.lr.ph737 ], [ 0, %.preheader411 ] ; 2 uses
  %i.pj = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.pk = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !26
  %i.po = trunc i32 %i.pj to i8
  %i.pp = mul i8 %i.pn, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1065
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !26
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1 ; 2 uses
  %i.pr = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.ps = sext i32 %i.pr to i64
  %i.pt = icmp slt i64 %indvars.iv.next1066, %i.ps
  br i1 %i.pt, label %.lr.ph737, label %.loopexit, !llvm.loop !205

bb.ei:                                            ; preds = %bb.aw
  %.not268 = icmp eq i32 %.0217, 0
  br i1 %.not268, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.ek:                                            ; preds = %bb.ei
  %i.pu = icmp eq i8 %.0236, 0                    ; 2 uses
  %i.pv = icmp ne i32 %.0221, 0
  %or.cond = select i1 %i.pu, i1 true, i1 %i.pv
  br i1 %or.cond, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store ptr @.str.21, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.em:                                            ; preds = %bb.ek
  br i1 %i.gk, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  br i1 %i.pu, label %.thread396, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.pw = zext nneg i8 %.0236 to i32
  store i32 %i.pw, ptr %i.gl, align 8, !tbaa !53
  br label %.thread396

bb.ep:                                            ; preds = %bb.em
  %i.px = icmp ugt i32 %i.gs, 1073741824
  br i1 %i.px, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store ptr @.str.22, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.er:                                            ; preds = %bb.ep
  %i.py = add i32 %i.gs, %.0230                   ; 5 uses
  %i.pz = icmp slt i32 %i.py, %.0230
  br i1 %i.pz, label %.thread396, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qa = icmp ugt i32 %i.py, %.0226
  br i1 %i.qa, label %bb.et, label %._crit_edge

._crit_edge:                                      ; preds = %bb.es
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !55
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.qb = icmp eq i32 %.0226, 0
  %i.qc = tail call i32 @llvm.umax.i32(i32 %i.gs, i32 4096)
  %.1227 = select i1 %i.qb, i32 %i.qc, i32 %.0226
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2228 = phi i32 [ %.1227, %bb.et ], [ %i.qe, %bb.eu ] ; 4 uses
  %i.qd = icmp ugt i32 %i.py, %.2228
  %i.qe = shl i32 %.2228, 1
  br i1 %i.qd, label %bb.eu, label %bb.ev, !llvm.loop !206

bb.ev:                                            ; preds = %bb.eu
  %i.qf = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.qg = zext i32 %.2228 to i64
  %i.qh = tail call ptr @realloc(ptr noundef %i.qf, i64 noundef %i.qg) #37 ; 3 uses
  %.not269 = icmp eq ptr %i.qh, null
  br i1 %.not269, label %.thread379, label %bb.ew

.thread379:                                       ; preds = %bb.ev
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.qh, ptr %i.f, align 8, !tbaa !55
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.qi = phi ptr [ %i.qh, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3229 = phi i32 [ %.2228, %bb.ew ], [ %.0226, %._crit_edge ] ; 2 uses
  %i.qj = zext i32 %.0230 to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qj ; 3 uses
  %i.ql = load ptr, ptr %i.k, align 8, !tbaa !24
  %.not.i337 = icmp eq ptr %i.ql, null
  br i1 %.not.i337, label %..thread_crit_edge.i339, label %bb.ey

..thread_crit_edge.i339:                          ; preds = %bb.ex
  %.pre.i341 = load ptr, ptr %i.h, align 8, !tbaa !23
  %.pre35.i = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %.thread.i338

bb.ey:                                            ; preds = %bb.ex
  %i.qm = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.qn = load ptr, ptr %i.h, align 8, !tbaa !23  ; 3 uses
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp                    ; 2 uses
  %i.qr = trunc i64 %i.qq to i32                  ; 2 uses
  %i.qs = icmp sgt i32 %i.gs, %i.qr
  br i1 %i.qs, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i338

.thread.i338:                                     ; preds = %bb.ey, %..thread_crit_edge.i339
  %i.qt = phi ptr [ %.pre35.i, %..thread_crit_edge.i339 ], [ %i.qm, %bb.ey ]
  %i.qu = phi ptr [ %.pre.i341, %..thread_crit_edge.i339 ], [ %i.qn, %bb.ey ] ; 2 uses
  %i.qv = zext nneg i32 %i.gs to i64              ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  %.not32.i = icmp ugt ptr %i.qw, %i.qt
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread383

_ZL10stbi__getnP13stbi__contextPhi.exit.thread383: ; preds = %.thread.i338
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.qu, i64 %i.qv, i1 false)
  %i.qx = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  store ptr %i.qy, ptr %i.h, align 8, !tbaa !23
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.qq, 32
  %i.qz = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qk, ptr align 1 %i.qn, i64 %i.qz, i1 false)
  %i.ra = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.rb = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.rc = getelementptr inbounds i8, ptr %i.qk, i64 %i.qz
  %i.rd = sub nsw i32 %i.gs, %i.qr                ; 2 uses
  %i.re = tail call noundef i32 %i.ra(ptr noundef %i.rb, ptr noundef %i.rc, i32 noundef %i.rd), !inline_history !207
  %.not = icmp eq i32 %i.re, %i.rd
  %i.rf = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.rf, ptr %i.h, align 8, !tbaa !23
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i338, %_ZL10stbi__getnP13stbi__contextPhi.exit
  store ptr @.str.24, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0217, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr @.str.15, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread396

bb.fc:                                            ; preds = %bb.fb
  %i.rg = load ptr, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store ptr @.str.25, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fe:                                            ; preds = %bb.fc
  %i.ri = load i32, ptr %i.d, align 8, !tbaa !51
  %i.rj = load i32, ptr %i.gm, align 8, !tbaa !49
  %i.rk = mul i32 %i.rj, %i.ri
  %i.rl = add i32 %i.rk, 7
  %i.rm = lshr i32 %i.rl, 3
  %i.rn = load i32, ptr %i.gn, align 4, !tbaa !52 ; 2 uses
  %i.ro = load i32, ptr %i.gl, align 8, !tbaa !53
  %i.rp = mul i32 %i.ro, %i.rn
  %i.rq = mul i32 %i.rp, %i.rm
  %i.rr = add i32 %i.rq, %i.rn                    ; 2 uses
  %i.rs = icmp ne i32 %.0204, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.rt = sext i32 %i.rr to i64
  %i.ru = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.rt) #36 ; 2 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %4 = xor i1 %i.rs, true
  %i.rw = zext i1 %4 to i32
  store ptr %i.rg, ptr %3, align 8, !tbaa !208
  %i.rx = sext i32 %.0230 to i64
  %i.ry = getelementptr inbounds i8, ptr %i.rg, i64 %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !211
  %i.sa = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.ru, i32 noundef %i.rr, i32 noundef 1, i32 noundef %i.rw)
  %.not.i342 = icmp eq i32 %i.sa, 0
  br i1 %.not.i342, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !212
  call void @free(ptr noundef %i.sc) #35
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  store ptr null, ptr %i.e, align 8, !tbaa !54
  br label %.thread396

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !213
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !212 ; 3 uses
  %i.sh = ptrtoint ptr %i.se to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = trunc i64 %i.sj to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  store ptr %i.sg, ptr %i.e, align 8, !tbaa !54
  %i.sl = icmp eq ptr %i.sg, null
  br i1 %i.sl, label %.thread396, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sm = load ptr, ptr %i.f, align 8, !tbaa !55
  call void @free(ptr noundef %i.sm) #35
  store ptr null, ptr %i.f, align 8, !tbaa !55
  %i.sn = load i32, ptr %i.gl, align 8, !tbaa !53 ; 2 uses
  %i.so = add nsw i32 %i.sn, 1                    ; 2 uses
  %i.sp = icmp eq i32 %2, %i.so
  %i.sq = icmp ne i32 %2, 3
  %or.cond5.not260.not265 = and i1 %i.sq, %i.sp
  %i.sr = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not262 = select i1 %or.cond5.not260.not265, i1 %i.sr, i1 false
  %i.ss = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not262, i1 true, i1 %i.ss
  %spec.select1495 = select i1 %or.cond9, i32 %i.so, i32 %i.sn ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1495, ptr %i.st, align 4, !tbaa !50
  %i.su = load ptr, ptr %i.e, align 8, !tbaa !54  ; 2 uses
  %i.sv = load i32, ptr %i.gm, align 8, !tbaa !49 ; 4 uses
  %i.sw = icmp eq i32 %i.sv, 16
  %i.sx = zext i1 %i.sw to i32
  %i.sy = shl i32 %spec.select1495, %i.sx         ; 6 uses
  %.not.i346 = icmp eq i32 %.0211, 0
  %i.sz = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !51 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !52 ; 5 uses
  br i1 %.not.i346, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.td = or i32 %i.tc, %i.ta
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.td, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.te = icmp eq i32 %i.tc, 0
  br i1 %i.te, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.fj
  %i.tf = udiv i32 2147483647, %i.tc
  %.not23.i.i.i = icmp sgt i32 %i.ta, %i.tf
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fj
  %i.tg = mul nuw nsw i32 %i.tc, %i.ta            ; 3 uses
  %i.th = or i32 %i.tg, %i.sy
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.th, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fk:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.ti = icmp eq i32 %i.sy, 0
  br i1 %i.ti, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.fk
  %i.tj = udiv i32 2147483647, %i.sy
  %.not.i.i.i = icmp sgt i32 %i.tg, %i.tj
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.fk
  %i.tk = mul nuw nsw i32 %i.tg, %i.sy
  %i.tl = sext i32 %i.tk to i64
  %i.tm = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tl) #36 ; 4 uses
  %.not92.i = icmp eq ptr %i.tm, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.tn = sext i32 %i.sy to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  store ptr @.str.23, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !10
  br label %.thread396

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.su, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sk, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.to = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !51
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !13 ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !13 ; 4 uses
  %i.tu = xor i32 %i.tr, -1
  %i.tv = add i32 %i.tp, %i.tu
  %i.tw = add i32 %i.tv, %i.tt                    ; 2 uses
  %i.tx = udiv i32 %i.tw, %i.tt                   ; 6 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !52
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !13 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !13 ; 4 uses
  %i.ue = xor i32 %i.ub, -1
  %i.uf = add i32 %i.tz, %i.ue
  %i.ug = add i32 %i.uf, %i.ud                    ; 2 uses
  %i.uh = udiv i32 %i.ug, %i.ud                   ; 4 uses
  %i.ui = icmp ule i32 %i.tt, %i.tw
  %i.uj = icmp ule i32 %i.ud, %i.ug
  %or.cond.i = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.uk = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !53
  %i.um = mul i32 %i.tx, %i.sv
  %i.un = mul i32 %i.um, %i.ul
  %i.uo = add nsw i32 %i.un, 7
  %i.up = ashr i32 %i.uo, 3
  %i.uq = add nsw i32 %i.up, 1
  %i.ur = mul nsw i32 %i.uq, %i.uh                ; 2 uses
  %i.us = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.tx, i32 noundef %i.uh, i32 noundef %i.sv, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.us, 0
  br i1 %.not93.not.i, label %.thread.i350, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.ut = icmp sgt i32 %i.uh, 0
  %i.uu = icmp sgt i32 %i.tx, 0
  %or.cond107.i = and i1 %i.uu, %i.ut
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !48 ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.uv = load ptr, ptr %0, align 8, !tbaa !46
  %i.uw = sext i32 %i.tt to i64                   ; 3 uses
  %i.ux = sext i32 %i.tr to i64                   ; 3 uses
  %i.uy = zext nneg i32 %i.tx to i64              ; 3 uses
  %i.uz = zext nneg i32 %i.uh to i64
  %.pre.pre.i = load i32, ptr %i.uv, align 8, !tbaa !51
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.sy
  %xtraiter = and i64 %i.uy, 1
  %i.va = icmp eq i32 %i.tx, 1
  %unroll_iter = and i64 %i.uy, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.tx to i1
  br label %.preheader.i

.thread.i350:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tm) #35
  br label %.thread396

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.vb = trunc i64 %indvars.iv109.i to i32
  %i.vc = mul i32 %i.ud, %i.vb
  %i.vd = add i32 %i.vc, %i.ub
  %.reass.i = mul i32 %factor.op.mul.i, %i.vd
  %i.ve = mul nuw nsw i64 %indvars.iv109.i, %i.uy ; 3 uses
  %i.vf = zext i32 %.reass.i to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.vf ; 3 uses
  br i1 %i.va, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i348 = phi i64 [ %indvars.iv.next.i349.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vh = mul nsw i64 %indvars.iv.i348, %i.uw
  %i.vi = add nsw i64 %i.vh, %i.ux
  %i.vj = mul nsw i64 %i.vi, %i.tn
  %i.vk = getelementptr inbounds i8, ptr %i.vg, i64 %i.vj
  %i.vl = add nuw nsw i64 %indvars.iv.i348, %i.ve
  %i.vm = mul nsw i64 %i.vl, %i.tn
  %i.vn = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vk, ptr align 1 %i.vn, i64 %i.tn, i1 false)
  %indvars.iv.next.i349 = or disjoint i64 %indvars.iv.i348, 1 ; 2 uses
  %i.vo = mul nsw i64 %indvars.iv.next.i349, %i.uw
  %i.vp = add nsw i64 %i.vo, %i.ux
end_hunk_1
begin_hunk_2_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  br i1 %.not21, label %.loopexit, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.preheader
  %xtraiter35 = and i32 %i.d, 3                   ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.lr.ph18.epil.preheader, label %.lr.ph18.preheader.new

.lr.ph18.preheader.new:                           ; preds = %.lr.ph18.preheader
  %unroll_iter39 = and i32 %i.d, -4
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.new
  %.04616 = phi ptr [ %.24.val, %.lr.ph18.preheader.new ], [ %i.x, %.lr.ph18 ] ; 10 uses
  %niter40 = phi i32 [ 0, %.lr.ph18.preheader.new ], [ %niter40.next.3, %.lr.ph18 ]
  %i.i = load i8, ptr %.04616, align 1, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  store i8 %i.k, ptr %.04616, align 1, !tbaa !26
  store i8 %i.i, ptr %i.j, align 1, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  store i8 %i.o, ptr %i.l, align 1, !tbaa !26
  store i8 %i.m, ptr %i.n, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  store i8 %i.s, ptr %i.p, align 1, !tbaa !26
  store i8 %i.q, ptr %i.r, align 1, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  store i8 %i.w, ptr %i.t, align 1, !tbaa !26
  store i8 %i.u, ptr %i.v, align 1, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !281

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !13
  %.not = icmp eq i32 %i.y, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.d, 4
  br i1 %i.z, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.bb, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.ba, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26  ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1, !tbaa !26 ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !26
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 255
  %i.ai = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.lhs.trunc = trunc nuw i32 %i.aj to i16
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ak = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %.14711, align 1, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 255
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %.lhs.trunc1 = trunc nuw i32 %i.aq to i16
  %i.ar = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.am, align 1, !tbaa !26
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !26
  store i8 %i.az, ptr %.14711, align 1, !tbaa !26
  store i8 %i.ac, ptr %i.ay, align 1, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !282

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26
  store i8 %i.be, ptr %.24813, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !26
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !283

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !26
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !284

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !26
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !285

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !48
  br label %.critedge.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %8 = icmp ne i32 %4, 0                          ; 2 uses
  br i1 %8, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.w = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.w
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.x = mul i32 %i.g, %4                         ; 14 uses
  %i.y = or i32 %i.x, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.y, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.z = icmp eq i32 %6, 0
  br i1 %i.z, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.aa = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.x, %i.aa
  %i.ab = mul i32 %i.x, %6                        ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ac
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ab, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ad = add nsw i32 %.pre-phi, 7
  %i.ae = lshr i32 %i.ad, 3                       ; 5 uses
  %i.af = add nuw nsw i32 %i.ae, 1
  %i.ag = mul i32 %i.af, %5
  %i.ah = icmp ult i32 %2, %i.ag
  br i1 %i.ah, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.aj = icmp ugt i32 %i.ae, %4
  %i.ak = sub i32 %i.c, %i.ae
  %i.al = zext i32 %i.ak to i64
  %i.am = zext i32 %i.e to i64                    ; 7 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = icmp eq i32 %6, 8
  %.not606 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.ap = sext i32 %i.h to i64                    ; 58 uses
  %i.aq = sext i32 %i.g to i64                    ; 2 uses
  %i.ar = sext i32 %3 to i64
  %or.cond = select i1 %i.ai, i1 true, i1 %.not606
  %.6567743 = add i32 %4, -1                      ; 8 uses
  %.not608744 = icmp eq i32 %.6567743, 0          ; 7 uses
  %wide.trip.count966 = zext i32 %5 to i64
  %i.as = add i32 %4, -2                          ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = mul nsw i64 %i.ap, %i.at
  %i.av = zext i32 %i.as to i64                   ; 3 uses
  %i.aw = mul nsw i64 %i.ap, %i.av
  %i.ax = sub nsw i64 0, %i.ap
  %i.ay = add nsw i64 %i.av, -1
  %i.az = mul i64 %i.ay, %i.ap
  %i.ba = add i32 %4, -2                          ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.ap, %i.bb                ; 2 uses
  %i.bd = sub i64 %i.bc, %i.am
  %i.be = zext i32 %i.ba to i64                   ; 3 uses
  %i.bf = mul nsw i64 %i.ap, %i.be                ; 2 uses
  %i.bg = sub i64 %i.bf, %i.am
  %i.bh = sub nsw i64 0, %i.ap                    ; 3 uses
  %i.bi = add nsw i64 %i.be, -1
  %i.bj = mul i64 %i.bi, %i.ap
  %i.bk = add i32 %4, -2
  %i.bl = zext i32 %i.bk to i64                   ; 3 uses
  %i.bm = mul nsw i64 %i.ap, %i.bl                ; 2 uses
  %i.bn = add nsw i64 %i.bl, -1
  %i.bo = mul i64 %i.bn, %i.ap                    ; 2 uses
  %i.bp = sub i64 %i.bm, %i.am
  %i.bq = sub nsw i64 %i.bh, %i.am
  %i.br = sub i64 %i.bo, %i.am
  %i.bs = add i32 %4, -2                          ; 2 uses
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = mul nsw i64 %i.ap, %i.bt
  %i.bv = sub nsw i64 0, %i.ap                    ; 2 uses
  %i.bw = add nsw i64 %i.bt, -1
  %i.bx = mul i64 %i.bw, %i.ap
  %i.by = zext i32 %i.bs to i64                   ; 3 uses
  %i.bz = mul nsw i64 %i.ap, %i.by
  %i.ca = add nsw i64 %i.by, -1
  %i.cb = mul i64 %i.ca, %i.ap
  %stride.check1571 = icmp slt i32 %i.h, 0
  %stride.check1523 = icmp slt i32 %i.h, 0
  %stride.check1461 = icmp slt i32 %i.h, 0
  %stride.check1398 = icmp slt i32 %i.h, 0
  %stride.check1348 = icmp slt i32 %i.h, 0
  %stride.check1302 = icmp slt i32 %i.h, 0
  %stride.check = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %8, %i.a
  %xtraiter1643 = and i32 %4, 7                   ; 3 uses
  %i.cc = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1644.not = icmp eq i32 %xtraiter1643, 0
  %lcmp.mod1645 = icmp ne i32 %xtraiter1643, 0
  %i.cd = add i32 %i.e, -1
  %diff.check1155 = icmp ult i32 %i.cd, 15
  %invariant.op = add i64 %i.am, -1
  %i.ce = add i32 %i.e, -1
  %diff.check1115 = icmp ult i32 %i.ce, 31
  %i.cf = add i32 %i.e, -1
  %diff.check1082 = icmp ult i32 %i.cf, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph825, %.loopexit723
  %indvars.iv963 = phi i64 [ 0, %.lr.ph825 ], [ %indvars.iv.next964, %.loopexit723 ] ; 3 uses
  %.0542824 = phi i32 [ %4, %.lr.ph825 ], [ %.1543, %.loopexit723 ]
  %.0545823 = phi i32 [ %i.i, %.lr.ph825 ], [ %.1546, %.loopexit723 ]
  %.0573821 = phi ptr [ %1, %.lr.ph825 ], [ %.11584, %.loopexit723 ] ; 3 uses
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ch = trunc nuw i64 %indvars.iv963 to i32
  %i.ci = mul i32 %i.e, %i.ch
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0573821, i64 1 ; 9 uses
  %i.cm = load i8, ptr %.0573821, align 1, !tbaa !26 ; 3 uses
  %i.cn = icmp ugt i8 %i.cm, 4
  br i1 %i.cn, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.aj, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1546 = phi i32 [ 1, %bb.j ], [ %.0545823, %bb.h ] ; 39 uses
  %.1543 = phi i32 [ %i.ae, %bb.j ], [ %.0542824, %bb.h ] ; 2 uses
  %.0531 = phi ptr [ %i.co, %bb.j ], [ %i.ck, %bb.h ] ; 28 uses
  %.05311067 = ptrtoaddr ptr %.0531 to i64        ; 6 uses
  %i.cp = getelementptr i8, ptr %.0531, i64 %i.an ; 4 uses
  %i.cq = icmp eq i64 %indvars.iv963, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = zext nneg i8 %i.cm to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0522.in = phi i8 [ %i.ct, %bb.l ], [ %i.cm, %bb.k ] ; 3 uses
  %i.cu = icmp sgt i32 %.1546, 0                  ; 8 uses
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %.1546 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 12 uses
  switch i8 %.0522.in, label %bb.u [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !26
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !26
  %.narrow642 = add i8 %i.dc, %i.da
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26
  %i.dh = lshr i8 %i.dg, 1
  %.narrow640 = add i8 %i.dh, %i.de
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !26
  %.narrow638 = add i8 %i.dl, %i.dj
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !26
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sink = phi i8 [ %i.cw, %bb.n ], [ %i.cy, %bb.o ], [ %.narrow642, %bb.p ], [ %.narrow640, %bb.q ], [ %.narrow638, %bb.r ], [ %i.dn, %bb.s ], [ %i.dp, %bb.t ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0531, i64 %indvars.iv
  store i8 %.sink, ptr %i.dq, align 1, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !286

._crit_edge:                                      ; preds = %bb.u, %bb.m
  br i1 %i.ao, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not606, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds i8, ptr %.0531, i64 %i.aq
  store i8 -1, ptr %i.dr, align 1, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = getelementptr inbounds i8, ptr %i.cl, i64 %i.aq
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.pre981 = sext i32 %.1546 to i64               ; 2 uses
  br i1 %.not606, label %._crit_edge980, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds i8, ptr %.0531, i64 %.pre981 ; 2 uses
  store i8 -1, ptr %i.dt, align 1, !tbaa !26
  %i.du = getelementptr i8, ptr %i.dt, i64 1
  store i8 -1, ptr %i.du, align 1, !tbaa !26
  br label %._crit_edge980

._crit_edge980:                                   ; preds = %bb.z, %bb.aa
  %i.dv = getelementptr inbounds i8, ptr %i.cl, i64 %.pre981
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.0573821, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge980, %bb.ab, %bb.x
  %.sink1032 = phi i64 [ %i.ap, %._crit_edge980 ], [ 1, %bb.ab ], [ %i.ar, %bb.x ] ; 21 uses
  %.1574 = phi ptr [ %i.dv, %._crit_edge980 ], [ %i.dw, %bb.ab ], [ %i.ds, %bb.x ] ; 62 uses
  %.15741068 = ptrtoaddr ptr %.1574 to i64        ; 6 uses
  %i.dx = getelementptr i8, ptr %.0531, i64 %.sink1032 ; 77 uses
  %i.dy = getelementptr i8, ptr %i.cp, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dz = add i32 %.1543, -1
  %i.ea = mul i32 %i.dz, %.1546                   ; 26 uses
  switch i8 %.0522.in, label %.loopexit712 [
    i8 0, label %bb.ae
    i8 1, label %.preheader711
    i8 2, label %.preheader713
    i8 3, label %.preheader715
    i8 4, label %.preheader717
    i8 5, label %.preheader719
    i8 6, label %.preheader721
  ]

.preheader721:                                    ; preds = %bb.ad
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %iter.check1242, label %.loopexit712

iter.check1242:                                   ; preds = %.preheader721
  %i.ec = sext i32 %.1546 to i64                  ; 6 uses
  %wide.trip.count936 = zext nneg i32 %i.ea to i64 ; 8 uses
  %min.iters.check1227 = icmp ult i32 %i.ea, 4
  br i1 %min.iters.check1227, label %.lr.ph810.preheader, label %vector.memcheck1223

vector.memcheck1223:                              ; preds = %iter.check1242
  %i.ed = add i64 %.sink1032, %.05311067
  %i.ee = sub i64 %.15741068, %i.ed
end_hunk_2
begin_hunk_3_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
middle.block1538:                                 ; preds = %vector.body1531
  br i1 %cmp.n1539, label %._crit_edge750, label %vec.epilog.iter.check1543

vec.epilog.iter.check1543:                        ; preds = %middle.block1538
  br i1 %min.epilog.iters.check1544, label %.lr.ph749.preheader, label %vec.epilog.ph1545, !prof !87

vec.epilog.ph1545:                                ; preds = %vector.main.loop.iter.check1527, %vec.epilog.iter.check1543
  %vec.epilog.resume.val1540 = phi i64 [ %n.vec1530, %vec.epilog.iter.check1543 ], [ 0, %vector.main.loop.iter.check1527 ]
  br label %vec.epilog.vector.body1547

vec.epilog.vector.body1547:                       ; preds = %vec.epilog.vector.body1547, %vec.epilog.ph1545
  %index1548 = phi i64 [ %vec.epilog.resume.val1540, %vec.epilog.ph1545 ], [ %index.next1551, %vec.epilog.vector.body1547 ] ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.7580753, i64 %index1548
  %wide.load1549.a = load <4 x i8>, ptr %i.adh, align 1, !tbaa !26, !alias.scope !372
  %i.adi = sub nsw i64 %index1548, %i.ap
  %i.adj = getelementptr inbounds i8, ptr %.7538754, i64 %i.adi
  %wide.load1550 = load <4 x i8>, ptr %i.adj, align 1, !tbaa !26, !alias.scope !375
  %i.adk = lshr <4 x i8> %wide.load1550, splat (i8 1)
  %i.adl = add <4 x i8> %i.adk, %wide.load1549.a
  %i.adm = getelementptr inbounds nuw i8, ptr %.7538754, i64 %index1548
  store <4 x i8> %i.adl, ptr %i.adm, align 1, !tbaa !26, !alias.scope !377, !noalias !379
  %index.next1551 = add nuw i64 %index1548, 4     ; 2 uses
  %i.adn = icmp eq i64 %index.next1551, %n.vec1546
  br i1 %i.adn, label %vec.epilog.middle.block1552, label %vec.epilog.vector.body1547, !llvm.loop !381

vec.epilog.middle.block1552:                      ; preds = %vec.epilog.vector.body1547
  br i1 %cmp.n1553, label %._crit_edge750, label %.lr.ph749.preheader

.lr.ph749.preheader:                              ; preds = %iter.check1541, %vec.epilog.iter.check1543, %vec.epilog.middle.block1552
  %indvars.iv902.ph = phi i64 [ 0, %iter.check1541 ], [ %n.vec1546, %vec.epilog.middle.block1552 ], [ %n.vec1530, %vec.epilog.iter.check1543 ] ; 6 uses
  br i1 %lcmp.mod1632.not, label %.lr.ph749.prol.loopexit, label %.lr.ph749.prol

.lr.ph749.prol:                                   ; preds = %.lr.ph749.preheader
  %i.ado = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv902.ph
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !26
  %i.adq = sub nsw i64 %indvars.iv902.ph, %i.ap
  %i.adr = getelementptr inbounds i8, ptr %.7538754, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !26
  %i.adt = lshr i8 %i.ads, 1
  %.narrow611.prol = add i8 %i.adt, %i.adp
  %i.adu = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv902.ph
  store i8 %.narrow611.prol, ptr %i.adu, align 1, !tbaa !26
  %indvars.iv.next903.prol = or disjoint i64 %indvars.iv902.ph, 1
  br label %.lr.ph749.prol.loopexit

.lr.ph749.prol.loopexit:                          ; preds = %.lr.ph749.prol, %.lr.ph749.preheader
  %indvars.iv902.unr = phi i64 [ %indvars.iv902.ph, %.lr.ph749.preheader ], [ %indvars.iv.next903.prol, %.lr.ph749.prol ]
  %i.adv = icmp eq i64 %indvars.iv902.ph, %i.rm
  br i1 %i.adv, label %._crit_edge750, label %.lr.ph749

.lr.ph749:                                        ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749
  %indvars.iv902 = phi i64 [ %indvars.iv.next903.1, %.lr.ph749 ], [ %indvars.iv902.unr, %.lr.ph749.prol.loopexit ] ; 5 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv902
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !26
  %i.ady = sub nsw i64 %indvars.iv902, %i.ap
  %i.adz = getelementptr inbounds i8, ptr %.7538754, i64 %i.ady
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !26
  %i.aeb = lshr i8 %i.aea, 1
  %.narrow611 = add i8 %i.aeb, %i.adx
  %i.aec = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv902
  store i8 %.narrow611, ptr %i.aec, align 1, !tbaa !26
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1 ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.7580753, i64 %indvars.iv.next903
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !26
  %i.aef = sub nsw i64 %indvars.iv.next903, %i.ap
  %i.aeg = getelementptr inbounds i8, ptr %.7538754, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !26
  %i.aei = lshr i8 %i.aeh, 1
  %.narrow611.1 = add i8 %i.aei, %i.aee
  %i.aej = getelementptr inbounds nuw i8, ptr %.7538754, i64 %indvars.iv.next903
  store i8 %.narrow611.1, ptr %i.aej, align 1, !tbaa !26
  %indvars.iv.next903.1 = add nuw nsw i64 %indvars.iv902, 2 ; 2 uses
  %exitcond906.not.1 = icmp eq i64 %indvars.iv.next903.1, %wide.trip.count905
  br i1 %exitcond906.not.1, label %._crit_edge750, label %.lr.ph749, !llvm.loop !382

._crit_edge750:                                   ; preds = %.lr.ph749.prol.loopexit, %.lr.ph749, %middle.block1538, %vec.epilog.middle.block1552, %.preheader709
  %i.aek = getelementptr inbounds i8, ptr %.7538754, i64 %i.rg
  store i8 -1, ptr %i.aek, align 1, !tbaa !26
  %i.ael = getelementptr inbounds i8, ptr %.7580753, i64 %i.rg ; 2 uses
  %i.aem = getelementptr inbounds i8, ptr %.7538754, i64 %i.ap
  %.5566 = add i32 %.5566755, -1                  ; 2 uses
  %.not609 = icmp eq i32 %.5566, 0
  br i1 %.not609, label %.loopexit725, label %.preheader709, !llvm.loop !383

.preheader710:                                    ; preds = %.preheader710.lr.ph, %._crit_edge742
  %.6567747 = phi i32 [ %.6567743, %.preheader710.lr.ph ], [ %.6567, %._crit_edge742 ]
  %.8539746 = phi ptr [ %i.dx, %.preheader710.lr.ph ], [ %i.afy, %._crit_edge742 ] ; 12 uses
  %.8581745 = phi ptr [ %.1574, %.preheader710.lr.ph ], [ %i.afx, %._crit_edge742 ] ; 6 uses
  br i1 %i.cu, label %iter.check1589, label %._crit_edge742

iter.check1589:                                   ; preds = %.preheader710
  %brmerge1698 = select i1 %min.iters.check1574, i1 true, i1 %conflict.rdx1573
  br i1 %brmerge1698, label %.lr.ph741.preheader, label %vector.main.loop.iter.check1575

vector.main.loop.iter.check1575:                  ; preds = %iter.check1589
  br i1 %min.iters.check1576, label %vec.epilog.ph1593, label %vector.body1579

vector.body1579:                                  ; preds = %vector.main.loop.iter.check1575, %vector.body1579
  %index1580 = phi i64 [ %index.next1585, %vector.body1579 ], [ 0, %vector.main.loop.iter.check1575 ] ; 4 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1580 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load1581.a = load <16 x i8>, ptr %i.aen, align 1, !tbaa !26, !alias.scope !384
  %wide.load1582.a = load <16 x i8>, ptr %i.aeo, align 1, !tbaa !26, !alias.scope !384
  %i.aep = sub nsw i64 %index1580, %i.ap
  %i.aeq = getelementptr inbounds i8, ptr %.8539746, i64 %i.aep ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %wide.load1583.a = load <16 x i8>, ptr %i.aeq, align 1, !tbaa !26, !alias.scope !387
  %wide.load1584 = load <16 x i8>, ptr %i.aer, align 1, !tbaa !26, !alias.scope !387
  %i.aes = add <16 x i8> %wide.load1583.a, %wide.load1581.a
  %i.aet = add <16 x i8> %wide.load1584, %wide.load1582.a
  %i.aeu = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1580 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  store <16 x i8> %i.aes, ptr %i.aeu, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  store <16 x i8> %i.aet, ptr %i.aev, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  %index.next1585 = add nuw i64 %index1580, 32    ; 2 uses
  %i.aew = icmp eq i64 %index.next1585, %n.vec1578
  br i1 %i.aew, label %middle.block1586, label %vector.body1579, !llvm.loop !392

middle.block1586:                                 ; preds = %vector.body1579
  br i1 %cmp.n1587, label %._crit_edge742, label %vec.epilog.iter.check1591

vec.epilog.iter.check1591:                        ; preds = %middle.block1586
  br i1 %min.epilog.iters.check1592, label %.lr.ph741.preheader, label %vec.epilog.ph1593, !prof !87

vec.epilog.ph1593:                                ; preds = %vector.main.loop.iter.check1575, %vec.epilog.iter.check1591
  %vec.epilog.resume.val1588 = phi i64 [ %n.vec1578, %vec.epilog.iter.check1591 ], [ 0, %vector.main.loop.iter.check1575 ]
  br label %vec.epilog.vector.body1595

vec.epilog.vector.body1595:                       ; preds = %vec.epilog.vector.body1595, %vec.epilog.ph1593
  %index1596 = phi i64 [ %vec.epilog.resume.val1588, %vec.epilog.ph1593 ], [ %index.next1599, %vec.epilog.vector.body1595 ] ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1596
  %wide.load1597.a = load <4 x i8>, ptr %i.aex, align 1, !tbaa !26, !alias.scope !384
  %i.aey = sub nsw i64 %index1596, %i.ap
  %i.aez = getelementptr inbounds i8, ptr %.8539746, i64 %i.aey
  %wide.load1598 = load <4 x i8>, ptr %i.aez, align 1, !tbaa !26, !alias.scope !387
  %i.afa = add <4 x i8> %wide.load1598, %wide.load1597.a
  %i.afb = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1596
  store <4 x i8> %i.afa, ptr %i.afb, align 1, !tbaa !26, !alias.scope !389, !noalias !391
  %index.next1599 = add nuw i64 %index1596, 4     ; 2 uses
  %i.afc = icmp eq i64 %index.next1599, %n.vec1594
  br i1 %i.afc, label %vec.epilog.middle.block1600, label %vec.epilog.vector.body1595, !llvm.loop !393

vec.epilog.middle.block1600:                      ; preds = %vec.epilog.vector.body1595
  br i1 %cmp.n1601, label %._crit_edge742, label %.lr.ph741.preheader

.lr.ph741.preheader:                              ; preds = %iter.check1589, %vec.epilog.iter.check1591, %vec.epilog.middle.block1600
  %indvars.iv897.ph = phi i64 [ 0, %iter.check1589 ], [ %n.vec1594, %vec.epilog.middle.block1600 ], [ %n.vec1578, %vec.epilog.iter.check1591 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph741.prol.loopexit, label %.lr.ph741.prol

.lr.ph741.prol:                                   ; preds = %.lr.ph741.preheader
  %i.afd = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897.ph
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !26
  %i.aff = sub nsw i64 %indvars.iv897.ph, %i.ap
  %i.afg = getelementptr inbounds i8, ptr %.8539746, i64 %i.aff
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !26
  %.narrow.prol = add i8 %i.afh, %i.afe
  %i.afi = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897.ph
  store i8 %.narrow.prol, ptr %i.afi, align 1, !tbaa !26
  %indvars.iv.next898.prol = or disjoint i64 %indvars.iv897.ph, 1
  br label %.lr.ph741.prol.loopexit

.lr.ph741.prol.loopexit:                          ; preds = %.lr.ph741.prol, %.lr.ph741.preheader
  %indvars.iv897.unr = phi i64 [ %indvars.iv897.ph, %.lr.ph741.preheader ], [ %indvars.iv.next898.prol, %.lr.ph741.prol ]
  %i.afj = icmp eq i64 %indvars.iv897.ph, %i.rf
  br i1 %i.afj, label %._crit_edge742, label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741
  %indvars.iv897 = phi i64 [ %indvars.iv.next898.1, %.lr.ph741 ], [ %indvars.iv897.unr, %.lr.ph741.prol.loopexit ] ; 5 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !26
  %i.afm = sub nsw i64 %indvars.iv897, %i.ap
  %i.afn = getelementptr inbounds i8, ptr %.8539746, i64 %i.afm
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !26
  %.narrow = add i8 %i.afo, %i.afl
  %i.afp = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897
  store i8 %.narrow, ptr %i.afp, align 1, !tbaa !26
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv.next898
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !26
  %i.afs = sub nsw i64 %indvars.iv.next898, %i.ap
  %i.aft = getelementptr inbounds i8, ptr %.8539746, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !26
  %.narrow.1 = add i8 %i.afu, %i.afr
  %i.afv = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv.next898
  store i8 %.narrow.1, ptr %i.afv, align 1, !tbaa !26
  %indvars.iv.next898.1 = add nuw nsw i64 %indvars.iv897, 2 ; 2 uses
  %exitcond901.not.1 = icmp eq i64 %indvars.iv.next898.1, %wide.trip.count900
  br i1 %exitcond901.not.1, label %._crit_edge742, label %.lr.ph741, !llvm.loop !394

._crit_edge742:                                   ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741, %middle.block1586, %vec.epilog.middle.block1600, %.preheader710
  %i.afw = getelementptr inbounds i8, ptr %.8539746, i64 %i.qz
  store i8 -1, ptr %i.afw, align 1, !tbaa !26
  %i.afx = getelementptr inbounds i8, ptr %.8581745, i64 %i.qz ; 2 uses
  %i.afy = getelementptr inbounds i8, ptr %.8539746, i64 %i.ap
  %.6567 = add i32 %.6567747, -1                  ; 2 uses
  %.not608 = icmp eq i32 %.6567, 0
  br i1 %.not608, label %.loopexit725, label %.preheader710, !llvm.loop !395

.loopexit725:                                     ; preds = %._crit_edge742, %._crit_edge750, %._crit_edge759, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge798, %.preheader736, %.preheader734, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %bb.af
  %.9582 = phi ptr [ %.1574, %bb.af ], [ %i.wx, %._crit_edge779 ], [ %i.zu, %._crit_edge769 ], [ %i.acs, %._crit_edge759 ], [ %i.ael, %._crit_edge750 ], [ %i.tt, %._crit_edge798 ], [ %i.vf, %._crit_edge789 ], [ %.1574, %.preheader724 ], [ %.1574, %.preheader726 ], [ %.1574, %.preheader728 ], [ %.1574, %.preheader730 ], [ %.1574, %.preheader732 ], [ %.1574, %.preheader734 ], [ %.1574, %.preheader736 ], [ %i.afx, %._crit_edge742 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph808, label %.loopexit723

.lr.ph808:                                        ; preds = %.loopexit725
  %i.afz = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.cj ; 2 uses
  %i.agb = sext i32 %.1546 to i64                 ; 9 uses
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph808.new

.lr.ph808.new:                                    ; preds = %.lr.ph808, %.lr.ph808.new
  %.9540806 = phi ptr [ %i.agz, %.lr.ph808.new ], [ %i.aga, %.lr.ph808 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph808.new ], [ 0, %.lr.ph808 ]
  %i.agc = getelementptr i8, ptr %.9540806, i64 %i.agb
  %i.agd = getelementptr i8, ptr %i.agc, i64 1
  store i8 -1, ptr %i.agd, align 1, !tbaa !26
  %i.age = getelementptr inbounds i8, ptr %.9540806, i64 %i.ap ; 2 uses
  %i.agf = getelementptr i8, ptr %i.age, i64 %i.agb
  %i.agg = getelementptr i8, ptr %i.agf, i64 1
  store i8 -1, ptr %i.agg, align 1, !tbaa !26
  %i.agh = getelementptr inbounds i8, ptr %i.age, i64 %i.ap ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.agb
  %i.agj = getelementptr i8, ptr %i.agi, i64 1
  store i8 -1, ptr %i.agj, align 1, !tbaa !26
  %i.agk = getelementptr inbounds i8, ptr %i.agh, i64 %i.ap ; 2 uses
  %i.agl = getelementptr i8, ptr %i.agk, i64 %i.agb
  %i.agm = getelementptr i8, ptr %i.agl, i64 1
  store i8 -1, ptr %i.agm, align 1, !tbaa !26
  %i.agn = getelementptr inbounds i8, ptr %i.agk, i64 %i.ap ; 2 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.agb
  %i.agp = getelementptr i8, ptr %i.ago, i64 1
  store i8 -1, ptr %i.agp, align 1, !tbaa !26
  %i.agq = getelementptr inbounds i8, ptr %i.agn, i64 %i.ap ; 2 uses
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.agb
  %i.ags = getelementptr i8, ptr %i.agr, i64 1
  store i8 -1, ptr %i.ags, align 1, !tbaa !26
  %i.agt = getelementptr inbounds i8, ptr %i.agq, i64 %i.ap ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agt, i64 %i.agb
  %i.agv = getelementptr i8, ptr %i.agu, i64 1
  store i8 -1, ptr %i.agv, align 1, !tbaa !26
  %i.agw = getelementptr inbounds i8, ptr %i.agt, i64 %i.ap ; 2 uses
  %i.agx = getelementptr i8, ptr %i.agw, i64 %i.agb
  %i.agy = getelementptr i8, ptr %i.agx, i64 1
  store i8 -1, ptr %i.agy, align 1, !tbaa !26
  %i.agz = getelementptr inbounds i8, ptr %i.agw, i64 %i.ap ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit723.loopexit.unr-lcssa, label %.lr.ph808.new, !llvm.loop !396

.loopexit723.loopexit.unr-lcssa:                  ; preds = %.lr.ph808.new
  br i1 %lcmp.mod1644.not, label %.loopexit723, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit723.loopexit.unr-lcssa, %.lr.ph808
  %.9540806.epil.init = phi ptr [ %i.aga, %.lr.ph808 ], [ %i.agz, %.loopexit723.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1645)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.9540806.epil = phi ptr [ %.9540806.epil.init, %.epil.preheader ], [ %i.ahc, %bb.ag ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.aha = getelementptr i8, ptr %.9540806.epil, i64 %i.agb
  %i.ahb = getelementptr i8, ptr %i.aha, i64 1
  store i8 -1, ptr %i.ahb, align 1, !tbaa !26
  %i.ahc = getelementptr inbounds i8, ptr %.9540806.epil, i64 %i.ap
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1643
  br i1 %epil.iter.cmp.not, label %.loopexit723, label %bb.ag, !llvm.loop !397

.loopexit723:                                     ; preds = %.loopexit723.loopexit.unr-lcssa, %bb.ag, %.loopexit725, %.loopexit712
  %.11584 = phi ptr [ %i.qy, %.loopexit712 ], [ %.9582, %.loopexit725 ], [ %.9582, %bb.ag ], [ %.9582, %.loopexit723.loopexit.unr-lcssa ]
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond967.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count966
  br i1 %exitcond967.not, label %._crit_edge826, label %bb.g, !llvm.loop !398

._crit_edge826:                                   ; preds = %.loopexit723
  %i.ahd = icmp slt i32 %6, 8
  br i1 %i.ahd, label %.lr.ph863, label %bb.aw

._crit_edge826.thread:                            ; preds = %.preheader738
  br i1 %i.a, label %bb.ax, label %.critedge

.lr.ph863:                                        ; preds = %._crit_edge826
  %i.ahe = zext i32 %i.c to i64
  %i.ahf = zext nneg i32 %i.ae to i64
  %i.ahg = sub nsw i64 0, %i.ahf
  %i.ahh = icmp eq i32 %7, 0
  %i.ahi = sext i32 %6 to i64
  %i.ahj = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.ahi
  %i.ahk = icmp sgt i32 %i.x, 7
  %i.ahl = icmp sgt i32 %i.x, 3
  %i.ahm = icmp sgt i32 %i.x, 1
  %.not605 = icmp eq i32 %i.g, %3
  %i.ahn = icmp eq i32 %i.g, 1
  %.1856 = add i32 %4, -1                         ; 4 uses
  %i.aho = icmp sgt i32 %.1856, -1                ; 2 uses
  %i.ahp = zext i32 %.1856 to i64                 ; 8 uses
  %wide.trip.count978 = zext i32 %5 to i64
  %i.ahq = add i32 %i.x, -2                       ; 2 uses
  %i.ahr = add nuw nsw i64 %i.ahp, 1
  %i.ahs = and i32 %i.ahq, 2
  %lcmp.mod1662.not.not = icmp eq i32 %i.ahs, 0
  %i.aht = add nsw i32 %i.x, -2                   ; 2 uses
  %i.ahu = icmp ult i32 %i.ahq, 2
  %i.ahv = and i64 %i.ahp, 1
  %lcmp.mod1665.not.not = icmp eq i64 %i.ahv, 0
  %i.ahw = shl nuw nsw i64 %i.ahp, 2
  %i.ahx = mul nuw nsw i64 %i.ahp, 3
  %indvars.iv.next970.prol = add nsw i64 %i.ahp, -1
  %i.ahy = icmp eq i32 %.1856, 0
  %xtraiter1667 = and i64 %i.ahr, 3               ; 2 uses
  %lcmp.mod1668.not = icmp eq i64 %xtraiter1667, 0
  %i.ahz = icmp ult i32 %.1856, 3
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph863, %.loopexit
  %indvars.iv975 = phi i64 [ 0, %.lr.ph863 ], [ %indvars.iv.next976, %.loopexit ] ; 2 uses
  %i.aia = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.aib = trunc nuw i64 %indvars.iv975 to i32
  %i.aic = mul i32 %i.e, %i.aib
  %i.aid = zext i32 %i.aic to i64                 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aia, i64 %i.aid ; 10 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.ahe
  %i.aig = getelementptr inbounds i8, ptr %i.aif, i64 %i.ahg ; 9 uses
  br i1 %i.ahh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aih = load i8, ptr %i.ahj, align 1, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.aii = phi i8 [ %i.aih, %bb.ai ], [ 1, %bb.ah ] ; 29 uses
  switch i32 %6, label %.thread671 [
    i32 4, label %.preheader699
    i32 2, label %.preheader700
    i32 1, label %.preheader701
  ]

.preheader701:                                    ; preds = %bb.aj
  br i1 %i.ahk, label %.lr.ph835, label %._crit_edge836

.preheader700:                                    ; preds = %bb.aj
  br i1 %i.ahl, label %.lr.ph843, label %._crit_edge844

.preheader699:                                    ; preds = %bb.aj
  br i1 %i.ahm, label %.lr.ph851.preheader, label %._crit_edge852

.lr.ph851.preheader:                              ; preds = %.preheader699
  br i1 %lcmp.mod1662.not.not, label %.lr.ph851.prol, label %.lr.ph851.prol.loopexit

.lr.ph851.prol:                                   ; preds = %.lr.ph851.preheader
  %i.aij = load i8, ptr %i.aig, align 1, !tbaa !26
  %i.aik = lshr i8 %i.aij, 4
  %i.ail = mul i8 %i.aik, %i.aii
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aie, i64 1
  store i8 %i.ail, ptr %i.aie, align 1, !tbaa !26
  %i.ain = load i8, ptr %i.aig, align 1, !tbaa !26
  %i.aio = and i8 %i.ain, 15
  %i.aip = mul i8 %i.aio, %i.aii
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aie, i64 2 ; 2 uses
  store i8 %i.aip, ptr %i.aim, align 1, !tbaa !26
  %i.air = getelementptr inbounds nuw i8, ptr %i.aig, i64 1 ; 2 uses
  br label %.lr.ph851.prol.loopexit

.lr.ph851.prol.loopexit:                          ; preds = %.lr.ph851.prol, %.lr.ph851.preheader
  %.0517850.unr = phi ptr [ %i.aig, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  %.0519849.unr = phi ptr [ %i.aie, %.lr.ph851.preheader ], [ %i.aiq, %.lr.ph851.prol ]
  %.14848.unr = phi i32 [ %i.x, %.lr.ph851.preheader ], [ %i.aht, %.lr.ph851.prol ]
  %.lcssa1612.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.aiq, %.lr.ph851.prol ]
  %.lcssa1610.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  br i1 %i.ahu, label %._crit_edge852, label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851
  %.0517850 = phi ptr [ %i.ajk, %.lr.ph851 ], [ %.0517850.unr, %.lr.ph851.prol.loopexit ] ; 4 uses
  %.0519849 = phi ptr [ %i.aji, %.lr.ph851 ], [ %.0519849.unr, %.lr.ph851.prol.loopexit ] ; 5 uses
  %.14848 = phi i32 [ %i.ajj, %.lr.ph851 ], [ %.14848.unr, %.lr.ph851.prol.loopexit ] ; 2 uses
  %i.ais = load i8, ptr %.0517850, align 1, !tbaa !26
  %i.ait = lshr i8 %i.ais, 4
  %i.aiu = mul i8 %i.ait, %i.aii
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0519849, i64 1
  store i8 %i.aiu, ptr %.0519849, align 1, !tbaa !26
  %i.aiw = load i8, ptr %.0517850, align 1, !tbaa !26
  %i.aix = and i8 %i.aiw, 15
  %i.aiy = mul i8 %i.aix, %i.aii
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0519849, i64 2
  store i8 %i.aiy, ptr %i.aiv, align 1, !tbaa !26
  %i.aja = getelementptr inbounds nuw i8, ptr %.0517850, i64 1 ; 2 uses
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !26
  %i.ajc = lshr i8 %i.ajb, 4
  %i.ajd = mul i8 %i.ajc, %i.aii
  %i.aje = getelementptr inbounds nuw i8, ptr %.0519849, i64 3
  store i8 %i.ajd, ptr %i.aiz, align 1, !tbaa !26
  %i.ajf = load i8, ptr %i.aja, align 1, !tbaa !26
  %i.ajg = and i8 %i.ajf, 15
  %i.ajh = mul i8 %i.ajg, %i.aii
  %i.aji = getelementptr inbounds nuw i8, ptr %.0519849, i64 4 ; 2 uses
  store i8 %i.ajh, ptr %i.aje, align 1, !tbaa !26
  %i.ajj = add nsw i32 %.14848, -4                ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0517850, i64 2 ; 2 uses
  %i.ajl = icmp sgt i32 %.14848, 5
  br i1 %i.ajl, label %.lr.ph851, label %._crit_edge852, !llvm.loop !399

._crit_edge852:                                   ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851, %.preheader699
  %.14.lcssa = phi i32 [ %i.x, %.preheader699 ], [ %i.aht, %.lr.ph851.prol.loopexit ], [ %i.ajj, %.lr.ph851 ]
  %.0519.lcssa = phi ptr [ %i.aie, %.preheader699 ], [ %.lcssa1612.unr, %.lr.ph851.prol.loopexit ], [ %i.aji, %.lr.ph851 ]
  %.0517.lcssa = phi ptr [ %i.aig, %.preheader699 ], [ %.lcssa1610.unr, %.lr.ph851.prol.loopexit ], [ %i.ajk, %.lr.ph851 ]
  %i.ajm = icmp eq i32 %.14.lcssa, 1
  br i1 %i.ajm, label %bb.ak, label %.thread671

bb.ak:                                            ; preds = %._crit_edge852
  %i.ajn = load i8, ptr %.0517.lcssa, align 1, !tbaa !26
  %i.ajo = lshr i8 %i.ajn, 4
  %i.ajp = mul i8 %i.ajo, %i.aii
  store i8 %i.ajp, ptr %.0519.lcssa, align 1, !tbaa !26
  br label %.thread671

.lr.ph843:                                        ; preds = %.preheader700, %.lr.ph843
  %.1518842 = phi ptr [ %i.akj, %.lr.ph843 ], [ %i.aig, %.preheader700 ] ; 5 uses
  %.1520841 = phi ptr [ %i.akh, %.lr.ph843 ], [ %i.aie, %.preheader700 ] ; 5 uses
  %.15840 = phi i32 [ %i.aki, %.lr.ph843 ], [ %i.x, %.preheader700 ] ; 2 uses
  %i.ajq = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.ajr = lshr i8 %i.ajq, 6
  %i.ajs = mul i8 %i.ajr, %i.aii
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1520841, i64 1
  store i8 %i.ajs, ptr %.1520841, align 1, !tbaa !26
  %i.aju = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.ajv = lshr i8 %i.aju, 4
  %i.ajw = and i8 %i.ajv, 3
  %i.ajx = mul i8 %i.ajw, %i.aii
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1520841, i64 2
  store i8 %i.ajx, ptr %i.ajt, align 1, !tbaa !26
  %i.ajz = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.aka = lshr i8 %i.ajz, 2
  %i.akb = and i8 %i.aka, 3
  %i.akc = mul i8 %i.akb, %i.aii
  %i.akd = getelementptr inbounds nuw i8, ptr %.1520841, i64 3
  store i8 %i.akc, ptr %i.ajy, align 1, !tbaa !26
  %i.ake = load i8, ptr %.1518842, align 1, !tbaa !26
  %i.akf = and i8 %i.ake, 3
  %i.akg = mul i8 %i.akf, %i.aii
  %i.akh = getelementptr inbounds nuw i8, ptr %.1520841, i64 4 ; 2 uses
  store i8 %i.akg, ptr %i.akd, align 1, !tbaa !26
  %i.aki = add nsw i32 %.15840, -4                ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1518842, i64 1 ; 2 uses
  %i.akk = icmp samesign ugt i32 %.15840, 7
  br i1 %i.akk, label %.lr.ph843, label %._crit_edge844, !llvm.loop !400

._crit_edge844:                                   ; preds = %.lr.ph843, %.preheader700
  %.15.lcssa = phi i32 [ %i.x, %.preheader700 ], [ %i.aki, %.lr.ph843 ] ; 3 uses
  %.1520.lcssa = phi ptr [ %i.aie, %.preheader700 ], [ %i.akh, %.lr.ph843 ] ; 3 uses
  %.1518.lcssa = phi ptr [ %i.aig, %.preheader700 ], [ %i.akj, %.lr.ph843 ] ; 3 uses
  %i.akl = icmp sgt i32 %.15.lcssa, 0
  br i1 %i.akl, label %bb.al, label %.thread671

bb.al:                                            ; preds = %._crit_edge844
  %i.akm = load i8, ptr %.1518.lcssa, align 1, !tbaa !26
  %i.akn = lshr i8 %i.akm, 6
  %i.ako = mul i8 %i.akn, %i.aii
  store i8 %i.ako, ptr %.1520.lcssa, align 1, !tbaa !26
  %.not693 = icmp eq i32 %.15.lcssa, 1
  br i1 %.not693, label %.thread671, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.akp = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 1
  %i.akq = load i8, ptr %.1518.lcssa, align 1, !tbaa !26
  %i.akr = lshr i8 %i.akq, 4
  %i.aks = and i8 %i.akr, 3
  %i.akt = mul i8 %i.aks, %i.aii
  store i8 %i.akt, ptr %i.akp, align 1, !tbaa !26
  %i.aku = icmp eq i32 %.15.lcssa, 3
  br i1 %i.aku, label %bb.an, label %.thread671

bb.an:                                            ; preds = %bb.am
  %i.akv = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 2
  %i.akw = load i8, ptr %.1518.lcssa, align 1, !tbaa !26
  %i.akx = lshr i8 %i.akw, 2
  %i.aky = and i8 %i.akx, 3
  %i.akz = mul i8 %i.aky, %i.aii
  store i8 %i.akz, ptr %i.akv, align 1, !tbaa !26
  br label %.thread671

end_hunk_3
