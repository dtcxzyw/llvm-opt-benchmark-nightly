Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5LTanalyze?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
begin_hunk_0_@H5LTyylex:bb.a
._crit_edge540:                                   ; preds = %bb.dc
  %.pre541 = load i32, ptr @yy_n_chars, align 4, !tbaa !25
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24 ; 2 uses
  store i32 %i.dj, ptr @yy_n_chars, align 4, !tbaa !25
  %i.dk = load ptr, ptr @H5LTyyin, align 8, !tbaa !11
  store ptr %i.dk, ptr %i.de, align 8, !tbaa !27
  store i32 1, ptr %i.df, align 8, !tbaa !35
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge540, %bb.dd
  %i.dl = phi i32 [ %i.dg, %._crit_edge540 ], [ 1, %bb.dd ]
  %i.dm = phi i32 [ %.pre541, %._crit_edge540 ], [ %i.dj, %bb.dd ]
  %i.dn = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !22 ; 8 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = sext i32 %i.dm to i64                   ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.dr ; 2 uses
  %.not66 = icmp ugt ptr %i.dn, %i.ds
  br i1 %.not66, label %bb.dp, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.dt = ptrtoint ptr %.345 to i64
  %i.du = ptrtoint ptr %i.cz to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = load ptr, ptr @H5LTyytext, align 8, !tbaa !8 ; 4 uses
  %i.dy = shl i64 %i.dv, 32
  %sext = add i64 %i.dy, -4294967296
  %i.dz = ashr exact i64 %sext, 32
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 %i.dz ; 5 uses
  store ptr %i.ea, ptr @yy_c_buf_p, align 8, !tbaa !8
  %.b.i = load i1, ptr @yy_start, align 4
  %i.eb = zext i1 %.b.i to i32                    ; 2 uses
  %i.ec = icmp sgt i32 %i.dw, 1
  br i1 %i.ec, label %.lr.ph25.i, label %yy_get_previous_state.exit

.lr.ph25.i:                                       ; preds = %bb.df, %._crit_edge.i
  %.01523.i = phi ptr [ %i.fl, %._crit_edge.i ], [ %i.dx, %bb.df ] ; 3 uses
  %.01622.i = phi i32 [ %i.fk, %._crit_edge.i ], [ %i.eb, %bb.df ] ; 3 uses
  %i.ed = load i8, ptr %.01523.i, align 1, !tbaa !28 ; 2 uses
  %.not.i70 = icmp eq i8 %i.ed, 0
  br i1 %.not.i70, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph25.i
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph25.i
  %i.eh = phi i8 [ %i.eg, %bb.dg ], [ 1, %.lr.ph25.i ] ; 2 uses
  %i.ei = sext i32 %.01622.i to i64               ; 3 uses
  %i.ej = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !29
  %.not18.i = icmp eq i16 %i.ek, 0
  br i1 %.not18.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %.01622.i, ptr @yy_last_accepting_state, align 4, !tbaa !25
  store ptr %.01523.i, ptr @yy_last_accepting_cpos, align 8, !tbaa !8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.el = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ei
  %i.em = load i16, ptr %i.el, align 2, !tbaa !29
  %i.en = sext i16 %i.em to i64
  %i.eo = zext i8 %i.eh to i64                    ; 2 uses
  %i.ep = add nsw i64 %i.en, %i.eo                ; 2 uses
  %i.eq = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !29
  %i.es = sext i16 %i.er to i32
  %.not1920.i = icmp eq i32 %.01622.i, %i.es
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dj, %bb.dl
  %i.et = phi i64 [ %i.fe, %bb.dl ], [ %i.eo, %bb.dj ]
  %i.eu = phi i64 [ %i.fa, %bb.dl ], [ %i.ei, %bb.dj ]
  %.021.i = phi i8 [ %.1.i, %bb.dl ], [ %i.eh, %bb.dj ]
  %i.ev = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !29 ; 3 uses
  %i.ex = icmp sgt i16 %i.ew, 373
  br i1 %i.ex, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.lr.ph.i
  %i.ey = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.et
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !28
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.i
  %.1.i = phi i8 [ %i.ez, %bb.dk ], [ %.021.i, %.lr.ph.i ] ; 2 uses
  %i.fa = sext i16 %i.ew to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !29
  %i.fd = sext i16 %i.fc to i64
  %i.fe = zext i8 %.1.i to i64                    ; 2 uses
  %i.ff = add nsw i64 %i.fd, %i.fe                ; 2 uses
  %i.fg = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !29
  %.not19.i = icmp eq i16 %i.ew, %i.fh
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %bb.dl, %bb.dj
  %.lcssa.i = phi i64 [ %i.ep, %bb.dj ], [ %i.ff, %bb.dl ]
  %i.fi = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !29
  %i.fk = sext i16 %i.fj to i32                   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.01523.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.fl, %i.ea
  br i1 %exitcond.not.i, label %yy_get_previous_state.exit, label %.lr.ph25.i, !llvm.loop !37

yy_get_previous_state.exit:                       ; preds = %._crit_edge.i, %bb.df
  %.016.lcssa.i = phi i32 [ %i.eb, %bb.df ], [ %i.fk, %._crit_edge.i ] ; 4 uses
  %i.fm = sext i32 %.016.lcssa.i to i64           ; 3 uses
  %i.fn = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !29
  %.not.i71 = icmp eq i16 %i.fo, 0
  br i1 %.not.i71, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %yy_get_previous_state.exit
  store i32 %.016.lcssa.i, ptr @yy_last_accepting_state, align 4, !tbaa !25
  store ptr %i.ea, ptr @yy_last_accepting_cpos, align 8, !tbaa !8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %yy_get_previous_state.exit
  %i.fp = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.fm
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !29
  %i.fr = sext i16 %i.fq to i64
  %i.fs = add nsw i64 %i.fr, 1                    ; 2 uses
  %i.ft = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !29
  %i.fv = sext i16 %i.fu to i32
  %.not1415.i = icmp eq i32 %.016.lcssa.i, %i.fv
  br i1 %.not1415.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.dn, %.lr.ph.i72
  %i.fw = phi i64 [ %i.fz, %.lr.ph.i72 ], [ %i.fm, %bb.dn ]
  %i.fx = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !29 ; 2 uses
  %i.fz = sext i16 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !29
  %i.gc = sext i16 %i.gb to i64
  %i.gd = add nsw i64 %i.gc, 1                    ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !29
  %.not14.i = icmp eq i16 %i.fy, %i.gf
  br i1 %.not14.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i72, !llvm.loop !38

yy_try_NUL_trans.exit:                            ; preds = %.lr.ph.i72, %bb.dn
  %.lcssa.i74 = phi i64 [ %i.fs, %bb.dn ], [ %i.gd, %.lr.ph.i72 ] ; 2 uses
  %i.gg = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i74
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29 ; 2 uses
  %i.gi = icmp eq i16 %i.gh, 373
  %.not67114 = icmp eq i64 %.lcssa.i74, 0
  %.not67 = or i1 %.not67114, %i.gi
  br i1 %.not67, label %.preheader.outer.backedge, label %bb.do

bb.do:                                            ; preds = %yy_try_NUL_trans.exit
  %i.gj = sext i16 %i.gh to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  store ptr %i.gk, ptr @yy_c_buf_p, align 8, !tbaa !8
  br label %.loopexit117.backedge

.loopexit117.backedge:                            ; preds = %._crit_edge.i91, %bb.do, %bb.ed
  %.046.be = phi i32 [ %i.gj, %bb.do ], [ %i.ku, %bb.ed ], [ %i.md, %._crit_edge.i91 ]
  %.042.be = phi ptr [ %i.gk, %bb.do ], [ %i.kt, %bb.ed ], [ %i.kt, %._crit_edge.i91 ]
  %.039.be = phi ptr [ %i.dx, %bb.do ], [ %i.km, %bb.ed ], [ %i.km, %._crit_edge.i91 ]
  br label %.loopexit117

bb.dp:                                            ; preds = %bb.de
  %i.gl = load ptr, ptr @H5LTyytext, align 8, !tbaa !8 ; 8 uses
  %i.gm = getelementptr i8, ptr %i.ds, i64 1
  %i.gn = icmp ugt ptr %i.dn, %i.gm
  br i1 %i.gn, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.6) #24
  unreachable

bb.dr:                                            ; preds = %bb.dp
  %i.go = getelementptr inbounds nuw i8, ptr %i.de, i64 52
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !39
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.gs = ptrtoint ptr %i.gl to i64               ; 3 uses
  br i1 %i.gq, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %yy_get_previous_state.exit94.backedge, label %yy_get_next_buffer.exit.thread112

bb.dt:                                            ; preds = %bb.dr
  %i.gv = xor i64 %i.gs, -1
  %i.gw = add i64 %i.gv, %i.gr                    ; 6 uses
  %i.gx = trunc i64 %i.gw to i32                  ; 6 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %iter.check, label %._crit_edge.i75

iter.check:                                       ; preds = %bb.dt
  %i.gz = and i64 %i.gw, 2147483647               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.gz, 4
  %i.ha = sub i64 %i.gs, %i.dq
  %diff.check = icmp ugt i64 %i.ha, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i77.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check947 = icmp samesign ult i64 %i.gz, 32
  br i1 %min.iters.check947, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hb = and i64 %i.gw, 28
  %n.vec = and i64 %i.gw, 2147483616              ; 6 uses
  %i.hc = trunc nuw nsw i64 %n.vec to i32
  %i.hd = getelementptr i8, ptr %i.gl, i64 %n.vec
  %i.he = getelementptr i8, ptr %i.dp, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.gl, i64 %index ; 2 uses
  %next.gep948 = getelementptr i8, ptr %i.dp, i64 %index ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !28
  %wide.load949 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !28
  %i.hg = getelementptr i8, ptr %next.gep948, i64 16
  store <16 x i8> %wide.load, ptr %next.gep948, align 1, !tbaa !28
  store <16 x i8> %wide.load949, ptr %i.hg, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gz, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i77.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec952 = and i64 %i.gw, 2147483644           ; 5 uses
  %i.hi = trunc nuw nsw i64 %n.vec952 to i32
  %i.hj = getelementptr i8, ptr %i.gl, i64 %n.vec952
  %i.hk = getelementptr i8, ptr %i.dp, i64 %n.vec952
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index953 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next957, %vec.epilog.vector.body ] ; 3 uses
  %next.gep954.a = getelementptr i8, ptr %i.gl, i64 %index953
  %next.gep955 = getelementptr i8, ptr %i.dp, i64 %index953
  %wide.load956 = load <4 x i8>, ptr %next.gep954.a, align 1, !tbaa !28
  store <4 x i8> %wide.load956, ptr %next.gep955, align 1, !tbaa !28
  %index.next957 = add nuw i64 %index953, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next957, %n.vec952
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n958 = icmp eq i64 %i.gz, %n.vec952
  br i1 %cmp.n958, label %._crit_edge.loopexit.i, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03353.i.ph = phi i32 [ 0, %iter.check ], [ %i.hc, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ]
  %.03452.i.ph = phi ptr [ %i.gl, %iter.check ], [ %i.hd, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  %.03551.i.ph = phi ptr [ %i.dp, %iter.check ], [ %i.he, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ]
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77.preheader, %.lr.ph.i77
  %.03353.i = phi i32 [ %i.hp, %.lr.ph.i77 ], [ %.03353.i.ph, %.lr.ph.i77.preheader ]
  %.03452.i = phi ptr [ %i.hm, %.lr.ph.i77 ], [ %.03452.i.ph, %.lr.ph.i77.preheader ] ; 2 uses
  %.03551.i = phi ptr [ %i.ho, %.lr.ph.i77 ], [ %.03551.i.ph, %.lr.ph.i77.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.03452.i, i64 1
  %i.hn = load i8, ptr %.03452.i, align 1, !tbaa !28
  %i.ho = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  store i8 %i.hn, ptr %.03551.i, align 1, !tbaa !28
  %i.hp = add nuw nsw i32 %.03353.i, 1            ; 2 uses
  %exitcond.not.i78 = icmp eq i32 %i.hp, %i.gx
  br i1 %exitcond.not.i78, label %._crit_edge.loopexit.i, label %.lr.ph.i77, !llvm.loop !45

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i77, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.dd, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre542 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %._crit_edge.i75

._crit_edge.i75:                                  ; preds = %._crit_edge.loopexit.i, %bb.dt
  %i.hq = phi i32 [ %.pre542, %._crit_edge.loopexit.i ], [ %i.dl, %bb.dt ]
  %i.hr = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.de, %bb.dt ] ; 5 uses
  %i.hs = icmp eq i32 %i.hq, 2
  br i1 %i.hs, label %.thread48.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i75
  %.pn.in54.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %.pn55.i = load i32, ptr %.pn.in54.i, align 8, !tbaa !20 ; 2 uses
  %i.ht = sub i32 %i.gx, %.pn55.i
  %i.hu = icmp sgt i32 %i.ht, -2
  br i1 %i.hu, label %.lr.ph56.i, label %._crit_edge57.i

.thread48.i:                                      ; preds = %._crit_edge.i75
  store i32 0, ptr @yy_n_chars, align 4, !tbaa !25
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 28
  store i32 0, ptr %i.hv, align 4, !tbaa !24
  br label %bb.dw

.lr.ph56.i:                                       ; preds = %.preheader.i, %bb.dv
  %i.hw = phi i32 [ %.pn.i, %bb.dv ], [ %.pn55.i, %.preheader.i ] ; 4 uses
  %i.hx = phi ptr [ %i.iq, %bb.dv ], [ %i.hr, %.preheader.i ] ; 3 uses
  %i.hy = phi ptr [ %i.ip, %bb.dv ], [ %i.dn, %.preheader.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !22 ; 2 uses
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !23
  %.not.i76 = icmp eq i32 %i.if, 0
  br i1 %.not.i76, label %.thread.i, label %bb.du

.thread.i:                                        ; preds = %.lr.ph56.i
  store ptr null, ptr %i.hz, align 8, !tbaa !22
  br label %.loopexit.i

bb.du:                                            ; preds = %.lr.ph56.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ih = icmp slt i32 %i.hw, 1
  %i.ii = shl nuw nsw i32 %i.hw, 1
  %.nonneg.i = sub i32 0, %i.hw
  %i.ij = lshr i32 %.nonneg.i, 3
  %i.ik = sub nsw i32 %i.hw, %i.ij
  %storemerge42.i = select i1 %i.ih, i32 %i.ik, i32 %i.ii ; 2 uses
  store i32 %storemerge42.i, ptr %i.ig, align 8, !tbaa !20
  %i.il = add nsw i32 %storemerge42.i, 2
  %i.im = sext i32 %i.il to i64
  %i.in = tail call noalias noundef ptr @realloc(ptr noundef %i.ia, i64 noundef %i.im) #25 ; 3 uses
  store ptr %i.in, ptr %i.hz, align 8, !tbaa !22
  %.not43.i = icmp eq ptr %i.in, null
  br i1 %.not43.i, label %.loopexit.i, label %bb.dv

.loopexit.i:                                      ; preds = %bb.du, %.thread.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.7) #24
  unreachable

bb.dv:                                            ; preds = %bb.du
  %sext44.i = shl i64 %i.id, 32
  %i.io = ashr exact i64 %sext44.i, 32
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 %i.io ; 2 uses
  store ptr %i.ip, ptr @yy_c_buf_p, align 8, !tbaa !8
  %i.iq = load ptr, ptr %i.dd, align 8, !tbaa !18 ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !20 ; 2 uses
  %i.ir = sub i32 %i.gx, %.pn.i
  %i.is = icmp sgt i32 %i.ir, -2
  br i1 %i.is, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !46

._crit_edge57.i:                                  ; preds = %bb.dv, %.preheader.i
  %i.it = phi ptr [ %i.hr, %.preheader.i ], [ %i.iq, %bb.dv ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !22
  %sext.i = shl i64 %i.gw, 32
  %i.iw = ashr exact i64 %sext.i, 32
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 %i.iw
  %i.iy = load ptr, ptr @myinput, align 8, !tbaa !8
  %i.iz = load i64, ptr @input_len, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ix, ptr align 1 %i.iy, i64 %i.iz, i1 false)
  %i.ja = load i64, ptr @input_len, align 8, !tbaa !16
  %i.jb = trunc i64 %i.ja to i32                  ; 4 uses
  store i32 %i.jb, ptr @yy_n_chars, align 4, !tbaa !25
  %i.jc = load ptr, ptr %i.dd, align 8, !tbaa !18 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 28
  store i32 %i.jb, ptr %i.jd, align 4, !tbaa !24
  %i.je = icmp eq i32 %i.jb, 0
  br i1 %i.je, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %._crit_edge57.i, %.thread48.i
  %i.jf = phi ptr [ %i.hr, %.thread48.i ], [ %i.jc, %._crit_edge57.i ]
  %i.jg = icmp eq i32 %i.gx, 0
  br i1 %i.jg, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.jh = load ptr, ptr @H5LTyyin, align 8, !tbaa !11
  tail call void @H5LTyyrestart(ptr noundef %i.jh)
  %.pre60.i = load i32, ptr @yy_n_chars, align 4, !tbaa !25
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  store i32 2, ptr %i.ji, align 8, !tbaa !35
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %._crit_edge57.i
  %i.jj = phi i32 [ %.pre60.i, %bb.dx ], [ 0, %bb.dy ], [ %i.jb, %._crit_edge57.i ] ; 2 uses
  %.032.i = phi i32 [ 1, %bb.dx ], [ 2, %bb.dy ], [ 0, %._crit_edge57.i ]
  %i.jk = add nsw i32 %i.jj, %i.gx                ; 4 uses
  %i.jl = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !13
  %i.jm = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !16
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 4 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !18 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !20
  %i.jr = icmp sgt i32 %i.jk, %i.jq
  br i1 %i.jr, label %bb.ea, label %._crit_edge62.i

._crit_edge62.i:                                  ; preds = %bb.dz
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.pre63.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %yy_get_next_buffer.exit

bb.ea:                                            ; preds = %bb.dz
  %i.js = ashr i32 %i.jj, 1
  %i.jt = add nsw i32 %i.jk, %i.js                ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !22
  %i.jw = sext i32 %i.jt to i64
  %i.jx = tail call noalias noundef ptr @realloc(ptr noundef %i.jv, i64 noundef %i.jw) #25 ; 3 uses
  %i.jy = load ptr, ptr %i.jn, align 8, !tbaa !18 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.jx, ptr %i.jz, align 8, !tbaa !22
  %.not45.i = icmp eq ptr %i.jx, null
  br i1 %.not45.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.8) #24
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.ka = add nsw i32 %i.jt, -2
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store i32 %i.ka, ptr %i.kb, align 8, !tbaa !20
  br label %yy_get_next_buffer.exit

yy_get_next_buffer.exit:                          ; preds = %._crit_edge62.i, %bb.ec
  %i.kc = phi ptr [ %i.jx, %bb.ec ], [ %.pre63.i, %._crit_edge62.i ]
  store i32 %i.jk, ptr @yy_n_chars, align 4, !tbaa !25
  %i.kd = sext i32 %i.jk to i64                   ; 3 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 %i.kd
  store i8 0, ptr %i.ke, align 1, !tbaa !28
  %i.kf = load ptr, ptr %i.jn, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !22
  %i.ki = getelementptr i8, ptr %i.kh, i64 %i.kd
  %i.kj = getelementptr i8, ptr %i.ki, i64 1
  store i8 0, ptr %i.kj, align 1, !tbaa !28
  %i.kk = load ptr, ptr %i.jn, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !22 ; 8 uses
  store ptr %i.km, ptr @H5LTyytext, align 8, !tbaa !8
  switch i32 %.032.i, label %default.unreachable572 [
    i32 1, label %yy_get_previous_state.exit94.backedge
    i32 0, label %bb.ed
    i32 2, label %yy_get_next_buffer.exit.thread112
  ]

yy_get_previous_state.exit94.backedge:            ; preds = %yy_get_next_buffer.exit, %bb.ds
  %.sink.be = phi ptr [ %i.gl, %bb.ds ], [ %i.km, %yy_get_next_buffer.exit ]
  br label %yy_get_previous_state.exit94

bb.ed:                                            ; preds = %yy_get_next_buffer.exit
  %i.kn = ptrtoint ptr %.345 to i64
  %i.ko = ptrtoint ptr %i.cz to i64
  %i.kp = sub i64 %i.kn, %i.ko                    ; 2 uses
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = shl i64 %i.kp, 32
  %sext732 = add i64 %i.kr, -4294967296
  %i.ks = ashr exact i64 %sext732, 32
  %i.kt = getelementptr inbounds i8, ptr %i.km, i64 %i.ks ; 4 uses
  store ptr %i.kt, ptr @yy_c_buf_p, align 8, !tbaa !8
  %.b.i79 = load i1, ptr @yy_start, align 4
  %i.ku = zext i1 %.b.i79 to i32                  ; 2 uses
  %i.kv = icmp sgt i32 %i.kq, 1
  br i1 %i.kv, label %.lr.ph25.i81, label %.loopexit117.backedge

.lr.ph25.i81:                                     ; preds = %bb.ed, %._crit_edge.i91
  %.01523.i82 = phi ptr [ %i.me, %._crit_edge.i91 ], [ %i.km, %bb.ed ] ; 3 uses
  %.01622.i83 = phi i32 [ %i.md, %._crit_edge.i91 ], [ %i.ku, %bb.ed ] ; 3 uses
  %i.kw = load i8, ptr %.01523.i82, align 1, !tbaa !28 ; 2 uses
  %.not.i84 = icmp eq i8 %i.kw, 0
  br i1 %.not.i84, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph25.i81
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !28
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.lr.ph25.i81
  %i.la = phi i8 [ %i.kz, %bb.ee ], [ 1, %.lr.ph25.i81 ] ; 2 uses
  %i.lb = sext i32 %.01622.i83 to i64             ; 3 uses
  %i.lc = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !29
  %.not18.i85 = icmp eq i16 %i.ld, 0
  br i1 %.not18.i85, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 %.01622.i83, ptr @yy_last_accepting_state, align 4, !tbaa !25
  store ptr %.01523.i82, ptr @yy_last_accepting_cpos, align 8, !tbaa !8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.le = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.lb
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !29
  %i.lg = sext i16 %i.lf to i64
  %i.lh = zext i8 %i.la to i64                    ; 2 uses
  %i.li = add nsw i64 %i.lg, %i.lh                ; 2 uses
  %i.lj = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.li
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !29
  %i.ll = sext i16 %i.lk to i32
  %.not1920.i86 = icmp eq i32 %.01622.i83, %i.ll
  br i1 %.not1920.i86, label %._crit_edge.i91, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.eh, %bb.ej
  %i.lm = phi i64 [ %i.lx, %bb.ej ], [ %i.lh, %bb.eh ]
  %i.ln = phi i64 [ %i.lt, %bb.ej ], [ %i.lb, %bb.eh ]
  %.021.i88 = phi i8 [ %.1.i89, %bb.ej ], [ %i.la, %bb.eh ]
  %i.lo = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !29 ; 3 uses
  %i.lq = icmp sgt i16 %i.lp, 373
  br i1 %i.lq, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph.i87
  %i.lr = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.lm
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !28
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph.i87
  %.1.i89 = phi i8 [ %i.ls, %bb.ei ], [ %.021.i88, %.lr.ph.i87 ] ; 2 uses
  %i.lt = sext i16 %i.lp to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !29
  %i.lw = sext i16 %i.lv to i64
  %i.lx = zext i8 %.1.i89 to i64                  ; 2 uses
  %i.ly = add nsw i64 %i.lw, %i.lx                ; 2 uses
  %i.lz = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !29
  %.not19.i90 = icmp eq i16 %i.lp, %i.ma
  br i1 %.not19.i90, label %._crit_edge.i91, label %.lr.ph.i87, !llvm.loop !36

._crit_edge.i91:                                  ; preds = %bb.ej, %bb.eh
  %.lcssa.i92 = phi i64 [ %i.li, %bb.eh ], [ %i.ly, %bb.ej ]
  %i.mb = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i92
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !29
  %i.md = sext i16 %i.mc to i32                   ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.01523.i82, i64 1 ; 2 uses
  %exitcond.not.i93 = icmp eq ptr %i.me, %i.kt
  br i1 %exitcond.not.i93, label %.loopexit117.backedge, label %.lr.ph25.i81, !llvm.loop !37

yy_get_next_buffer.exit.thread112:                ; preds = %bb.ds, %yy_get_next_buffer.exit
  %.pre-phi = phi i64 [ %i.dr, %bb.ds ], [ %i.kd, %yy_get_next_buffer.exit ]
  %i.mf = phi ptr [ %i.gl, %bb.ds ], [ %i.km, %yy_get_next_buffer.exit ] ; 4 uses
  %i.mg = phi ptr [ %i.dp, %bb.ds ], [ %i.km, %yy_get_next_buffer.exit ]
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %.pre-phi ; 5 uses
  store ptr %i.mh, ptr @yy_c_buf_p, align 8, !tbaa !8
  %.b.i95 = load i1, ptr @yy_start, align 4
  %i.mi = zext i1 %.b.i95 to i32                  ; 2 uses
  %i.mj = icmp ult ptr %i.mf, %i.mh
  br i1 %i.mj, label %.lr.ph25.i97, label %.preheader.outer.backedge

.lr.ph25.i97:                                     ; preds = %yy_get_next_buffer.exit.thread112, %._crit_edge.i107
  %.01523.i98 = phi ptr [ %i.ns, %._crit_edge.i107 ], [ %i.mf, %yy_get_next_buffer.exit.thread112 ] ; 3 uses
  %.01622.i99 = phi i32 [ %i.nr, %._crit_edge.i107 ], [ %i.mi, %yy_get_next_buffer.exit.thread112 ] ; 3 uses
  %i.mk = load i8, ptr %.01523.i98, align 1, !tbaa !28 ; 2 uses
  %.not.i100 = icmp eq i8 %i.mk, 0
  br i1 %.not.i100, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph25.i97
  %i.ml = zext i8 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !28
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.lr.ph25.i97
  %i.mo = phi i8 [ %i.mn, %bb.ek ], [ 1, %.lr.ph25.i97 ] ; 2 uses
  %i.mp = sext i32 %.01622.i99 to i64             ; 3 uses
  %i.mq = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !29
  %.not18.i101 = icmp eq i16 %i.mr, 0
  br i1 %.not18.i101, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i32 %.01622.i99, ptr @yy_last_accepting_state, align 4, !tbaa !25
  store ptr %.01523.i98, ptr @yy_last_accepting_cpos, align 8, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.ms = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.mp
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !29
  %i.mu = sext i16 %i.mt to i64
  %i.mv = zext i8 %i.mo to i64                    ; 2 uses
  %i.mw = add nsw i64 %i.mu, %i.mv                ; 2 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !29
  %i.mz = sext i16 %i.my to i32
  %.not1920.i102 = icmp eq i32 %.01622.i99, %i.mz
  br i1 %.not1920.i102, label %._crit_edge.i107, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %bb.en, %bb.ep
  %i.na = phi i64 [ %i.nl, %bb.ep ], [ %i.mv, %bb.en ]
  %i.nb = phi i64 [ %i.nh, %bb.ep ], [ %i.mp, %bb.en ]
  %.021.i104 = phi i8 [ %.1.i105, %bb.ep ], [ %i.mo, %bb.en ]
  %i.nc = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !29 ; 3 uses
  %i.ne = icmp sgt i16 %i.nd, 373
  br i1 %i.ne, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %.lr.ph.i103
  %i.nf = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.na
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !28
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.lr.ph.i103
  %.1.i105 = phi i8 [ %i.ng, %bb.eo ], [ %.021.i104, %.lr.ph.i103 ] ; 2 uses
  %i.nh = sext i16 %i.nd to i64                   ; 2 uses
  %i.ni = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !29
  %i.nk = sext i16 %i.nj to i64
  %i.nl = zext i8 %.1.i105 to i64                 ; 2 uses
  %i.nm = add nsw i64 %i.nk, %i.nl                ; 2 uses
  %i.nn = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !29
  %.not19.i106 = icmp eq i16 %i.nd, %i.no
  br i1 %.not19.i106, label %._crit_edge.i107, label %.lr.ph.i103, !llvm.loop !36

._crit_edge.i107:                                 ; preds = %bb.ep, %bb.en
  %.lcssa.i108 = phi i64 [ %i.mw, %bb.en ], [ %i.nm, %bb.ep ]
  %i.np = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i108
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !29
  %i.nr = sext i16 %i.nq to i32                   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.01523.i98, i64 1 ; 2 uses
  %exitcond.not.i109 = icmp eq ptr %i.ns, %i.mh
  br i1 %exitcond.not.i109, label %.preheader.outer.backedge, label %.lr.ph25.i97, !llvm.loop !37

default.unreachable572:                           ; preds = %yy_get_next_buffer.exit
  unreachable

bb.eq:                                            ; preds = %yy_get_previous_state.exit94
end_hunk_0
