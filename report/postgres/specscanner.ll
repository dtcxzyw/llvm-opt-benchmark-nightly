Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/specscanner?download=true
inline.NumInlined: 39
inline.NumDeleted: 8
begin_hunk_0_@spec_yylex:bb.a
  %i.fk = load ptr, ptr @spec_yyin, align 8
  store ptr %i.fk, ptr %i.fe, align 8
  %i.fl = load ptr, ptr %i.fd, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  store i32 1, ptr %i.fm, align 8
  %.pre314 = load ptr, ptr %i.fd, align 8
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge315, %bb.ay
  %i.fn = phi i32 [ %i.fj, %bb.ay ], [ %.pre316, %._crit_edge315 ] ; 2 uses
  %i.fo = phi ptr [ %.pre314, %bb.ay ], [ %i.fe, %._crit_edge315 ] ; 3 uses
  %i.fp = load ptr, ptr @yy_c_buf_p, align 8      ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8            ; 9 uses
  %i.fs = ptrtoaddr ptr %i.fr to i64
  %i.ft = sext i32 %i.fn to i64                   ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft
  %.not60 = icmp ugt ptr %i.fp, %i.fu
  br i1 %.not60, label %bb.bl, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = ptrtoint ptr %.241 to i64
  %i.fw = ptrtoint ptr %i.ez to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add i32 %i.fy, -1                       ; 2 uses
  %i.ga = load ptr, ptr @spec_yytext, align 8     ; 4 uses
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 %i.gb ; 4 uses
  store ptr %i.gc, ptr @yy_c_buf_p, align 8
  %i.gd = load i32, ptr @yy_start, align 4        ; 2 uses
  %i.ge = icmp sgt i32 %i.fz, 0
  br i1 %i.ge, label %.lr.ph25.i, label %yy_get_previous_state.exit

.lr.ph25.i:                                       ; preds = %bb.ba, %._crit_edge.i
  %.01523.i = phi ptr [ %i.hn, %._crit_edge.i ], [ %i.ga, %bb.ba ] ; 3 uses
  %.01622.i = phi i32 [ %i.hm, %._crit_edge.i ], [ %i.gd, %bb.ba ] ; 3 uses
  %i.gf = load i8, ptr %.01523.i, align 1         ; 2 uses
  %.not.i75 = icmp eq i8 %i.gf, 0
  br i1 %.not.i75, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph25.i
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph25.i
  %i.gj = phi i8 [ %i.gi, %bb.bb ], [ 1, %.lr.ph25.i ] ; 2 uses
  %i.gk = sext i32 %.01622.i to i64               ; 3 uses
  %i.gl = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2
  %.not18.i = icmp eq i16 %i.gm, 0
  br i1 %.not18.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %.01622.i, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i, ptr @yy_last_accepting_cpos, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gn = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.gk
  %i.go = load i16, ptr %i.gn, align 2
  %i.gp = sext i16 %i.go to i64
  %i.gq = zext i8 %i.gj to i64                    ; 2 uses
  %i.gr = add nsw i64 %i.gp, %i.gq                ; 2 uses
  %i.gs = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2
  %i.gu = sext i16 %i.gt to i32
  %.not1920.i = icmp eq i32 %.01622.i, %i.gu
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be, %bb.bg
  %i.gv = phi i64 [ %i.hg, %bb.bg ], [ %i.gq, %bb.be ]
  %i.gw = phi i64 [ %i.hc, %bb.bg ], [ %i.gk, %bb.be ]
  %.021.i = phi i8 [ %.1.i, %bb.bg ], [ %i.gj, %bb.be ]
  %i.gx = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 2            ; 3 uses
  %i.gz = icmp sgt i16 %i.gy, 70
  br i1 %i.gz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i
  %i.ha = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.gv
  %i.hb = load i8, ptr %i.ha, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i
  %.1.i = phi i8 [ %i.hb, %bb.bf ], [ %.021.i, %.lr.ph.i ] ; 2 uses
  %i.hc = sext i16 %i.gy to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.hc
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = sext i16 %i.he to i64
  %i.hg = zext i8 %.1.i to i64                    ; 2 uses
  %i.hh = add nsw i64 %i.hf, %i.hg                ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2
  %.not19.i = icmp eq i16 %i.gy, %i.hj
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.bg, %bb.be
  %.lcssa.i = phi i64 [ %i.gr, %bb.be ], [ %i.hh, %bb.bg ]
  %i.hk = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i
  %i.hl = load i16, ptr %i.hk, align 2
  %i.hm = sext i16 %i.hl to i32                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.01523.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.hn, %i.gc
  br i1 %exitcond.not.i, label %yy_get_previous_state.exit, label %.lr.ph25.i, !llvm.loop !9

yy_get_previous_state.exit:                       ; preds = %._crit_edge.i, %bb.ba
  %.016.lcssa.i = phi i32 [ %i.gd, %bb.ba ], [ %i.hm, %._crit_edge.i ] ; 3 uses
  %i.ho = sext i32 %.016.lcssa.i to i64           ; 3 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  %.not.i76 = icmp eq i16 %i.hq, 0
  br i1 %.not.i76, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %yy_get_previous_state.exit
  store i32 %.016.lcssa.i, ptr @yy_last_accepting_state, align 4
  store ptr %i.gc, ptr @yy_last_accepting_cpos, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %yy_get_previous_state.exit
  %i.hr = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ho
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = sext i16 %i.hs to i64
  %i.hu = add nsw i64 %i.ht, 1                    ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2
  %i.hx = sext i16 %i.hw to i32
  %.not1415.i = icmp eq i32 %.016.lcssa.i, %i.hx
  br i1 %.not1415.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.bi, %.lr.ph.i77
  %i.hy = phi i64 [ %i.ib, %.lr.ph.i77 ], [ %i.ho, %bb.bi ]
  %i.hz = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2            ; 2 uses
  %i.ib = sext i16 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2
  %i.ie = sext i16 %i.id to i64
  %i.if = add nsw i64 %i.ie, 1                    ; 2 uses
  %i.ig = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %.not14.i = icmp eq i16 %i.ia, %i.ih
  br i1 %.not14.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i77, !llvm.loop !10

yy_try_NUL_trans.exit:                            ; preds = %.lr.ph.i77, %bb.bi
  %.lcssa.i79 = phi i64 [ %i.hu, %bb.bi ], [ %i.if, %.lr.ph.i77 ] ; 2 uses
  %i.ii = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i79
  %i.ij = load i16, ptr %i.ii, align 2            ; 2 uses
  %i.ik = icmp eq i16 %i.ij, 70
  %.not61118 = icmp eq i64 %.lcssa.i79, 0
  %.not61 = or i1 %.not61118, %i.ik
  br i1 %.not61, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %yy_try_NUL_trans.exit
  %i.il = sext i16 %i.ij to i32
  %i.im = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.im, ptr @yy_c_buf_p, align 8
  br label %.loopexit121.backedge

.loopexit121.backedge:                            ; preds = %._crit_edge.i96, %bb.bj, %bb.ck
  %.043.be = phi i32 [ %i.il, %bb.bj ], [ %i.pu, %bb.ck ], [ %i.rd, %._crit_edge.i96 ]
  %.039.be = phi ptr [ %i.im, %bb.bj ], [ %i.pt, %bb.ck ], [ %i.pt, %._crit_edge.i96 ]
  %.037.be = phi ptr [ %i.ga, %bb.bj ], [ %i.pm, %bb.ck ], [ %i.pm, %._crit_edge.i96 ]
  br label %.loopexit121

bb.bk:                                            ; preds = %yy_try_NUL_trans.exit
  %i.in = load ptr, ptr @yy_last_accepting_cpos, align 8
  %i.io = load i32, ptr @yy_last_accepting_state, align 4
  br label %.backedge.outer.backedge

bb.bl:                                            ; preds = %bb.az
  %i.ip = load ptr, ptr @spec_yytext, align 8     ; 8 uses
  %i.iq = add i32 %i.fn, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %i.fr, i64 %i.ir
  %i.it = icmp ugt ptr %i.fp, %i.is
  br i1 %i.it, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.11) #24
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fo, i64 52
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.iy = ptrtoint ptr %i.ip to i64               ; 3 uses
  br i1 %i.iw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = icmp eq i64 %i.iz, 1
  br i1 %i.ja, label %yy_get_previous_state.exit99, label %yy_get_next_buffer.exit.thread116

bb.bp:                                            ; preds = %bb.bn
  %i.jb = xor i64 %i.iy, -1
  %i.jc = add i64 %i.jb, %i.ix                    ; 7 uses
  %i.jd = trunc i64 %i.jc to i32                  ; 6 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %iter.check, label %._crit_edge.i80

iter.check:                                       ; preds = %bb.bp
  %i.jf = and i64 %i.jc, 2147483647               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.jf, 4
  %i.jg = sub i64 %i.iy, %i.fs
  %diff.check = icmp ugt i64 %i.jg, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i82.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check547 = icmp samesign ult i64 %i.jf, 32
  br i1 %min.iters.check547, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jh = and i64 %i.jc, 28
  %n.vec = and i64 %i.jc, 2147483616              ; 6 uses
  %i.ji = trunc nuw nsw i64 %n.vec to i32
  %i.jj = getelementptr i8, ptr %i.ip, i64 %n.vec
  %i.jk = getelementptr i8, ptr %i.fr, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ip, i64 %index ; 2 uses
  %next.gep548 = getelementptr i8, ptr %i.fr, i64 %index ; 2 uses
  %i.jl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load549 = load <16 x i8>, ptr %i.jl, align 1
  %i.jm = getelementptr i8, ptr %next.gep548, i64 16
  store <16 x i8> %wide.load, ptr %next.gep548, align 1
  store <16 x i8> %wide.load549, ptr %i.jm, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jf, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i82.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec552 = and i64 %i.jc, 2147483644           ; 5 uses
  %i.jo = trunc nuw nsw i64 %n.vec552 to i32
  %i.jp = getelementptr i8, ptr %i.ip, i64 %n.vec552
  %i.jq = getelementptr i8, ptr %i.fr, i64 %n.vec552
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index553 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next557, %vec.epilog.vector.body ] ; 3 uses
  %next.gep554.a = getelementptr i8, ptr %i.ip, i64 %index553
  %next.gep555 = getelementptr i8, ptr %i.fr, i64 %index553
  %wide.load556 = load <4 x i8>, ptr %next.gep554.a, align 1
  store <4 x i8> %wide.load556, ptr %next.gep555, align 1
  %index.next557 = add nuw i64 %index553, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next557, %n.vec552
  br i1 %i.jr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n558 = icmp eq i64 %i.jf, %n.vec552
  br i1 %cmp.n558, label %._crit_edge.loopexit.i, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05285.i.ph = phi i32 [ 0, %iter.check ], [ %i.ji, %vec.epilog.iter.check ], [ %i.jo, %vec.epilog.middle.block ]
  %.05384.i.ph = phi ptr [ %i.ip, %iter.check ], [ %i.jj, %vec.epilog.iter.check ], [ %i.jp, %vec.epilog.middle.block ]
  %.05483.i.ph = phi ptr [ %i.fr, %iter.check ], [ %i.jk, %vec.epilog.iter.check ], [ %i.jq, %vec.epilog.middle.block ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.05285.i = phi i32 [ %i.jv, %.lr.ph.i82 ], [ %.05285.i.ph, %.lr.ph.i82.preheader ]
  %.05384.i = phi ptr [ %i.js, %.lr.ph.i82 ], [ %.05384.i.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.05483.i = phi ptr [ %i.ju, %.lr.ph.i82 ], [ %.05483.i.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.05384.i, i64 1
  %i.jt = load i8, ptr %.05384.i, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.05483.i, i64 1
  store i8 %i.jt, ptr %.05483.i, align 1
  %i.jv = add nuw nsw i32 %.05285.i, 1            ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.jv, %i.jd
  br i1 %exitcond.not.i83, label %._crit_edge.loopexit.i, label %.lr.ph.i82, !llvm.loop !16

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i82, %vec.epilog.middle.block, %middle.block
  %.pre.i84 = load ptr, ptr %i.fd, align 8
  br label %._crit_edge.i80

._crit_edge.i80:                                  ; preds = %._crit_edge.loopexit.i, %bb.bp
  %i.jw = phi ptr [ %.pre.i84, %._crit_edge.loopexit.i ], [ %i.fo, %bb.bp ] ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load i32, ptr %i.jx, align 8
  %i.jz = icmp eq i32 %i.jy, 2
  br i1 %i.jz, label %.thread77.i, label %bb.bq

.thread77.i:                                      ; preds = %._crit_edge.i80
  store i32 0, ptr @yy_n_chars, align 4
  br label %.sink.split.i

bb.bq:                                            ; preds = %._crit_edge.i80
  %i.ka = xor i32 %i.jd, -1                       ; 2 uses
  %.pn.in86.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %.pn87.i = load i32, ptr %.pn.in86.i, align 8   ; 2 uses
  %.05088.i = add i32 %.pn87.i, %i.ka             ; 2 uses
  %i.kb = icmp slt i32 %.05088.i, 1
  br i1 %i.kb, label %.lr.ph90.i, label %._crit_edge91.i

.lr.ph90.i:                                       ; preds = %bb.bq, %bb.bu
  %i.kc = phi i32 [ %.pn.i, %bb.bu ], [ %.pn87.i, %bb.bq ] ; 3 uses
  %i.kd = phi ptr [ %i.kw, %bb.bu ], [ %i.jw, %bb.bq ] ; 3 uses
  %i.ke = phi ptr [ %i.kv, %bb.bu ], [ %i.fp, %bb.bq ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 3 uses
  %i.kg = load ptr, ptr %i.kf, align 8            ; 2 uses
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kl = load i32, ptr %i.kk, align 8
  %.not67.i = icmp eq i32 %i.kl, 0
  br i1 %.not67.i, label %.thread.i, label %bb.br

.thread.i:                                        ; preds = %.lr.ph90.i
  store ptr null, ptr %i.kf, align 8
  br label %.loopexit79.i

bb.br:                                            ; preds = %.lr.ph90.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kn = shl i32 %i.kc, 1                        ; 2 uses
  %i.ko = icmp slt i32 %i.kn, 1
  br i1 %i.ko, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.kp = sdiv i32 %i.kc, 8
  %i.kq = add i32 %i.kp, %i.kc
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %storemerge68.i = phi i32 [ %i.kq, %bb.bs ], [ %i.kn, %bb.br ] ; 2 uses
  store i32 %storemerge68.i, ptr %i.km, align 8
  %i.kr = add i32 %storemerge68.i, 2
  %i.ks = sext i32 %i.kr to i64
  %i.kt = tail call noalias noundef ptr @realloc(ptr noundef %i.kg, i64 noundef %i.ks) #25 ; 3 uses
  store ptr %i.kt, ptr %i.kf, align 8
  %.not69.i = icmp eq ptr %i.kt, null
  br i1 %.not69.i, label %.loopexit79.i, label %bb.bu

.loopexit79.i:                                    ; preds = %bb.bt, %.thread.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.12) #24
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %sext70.i = shl i64 %i.kj, 32
  %i.ku = ashr exact i64 %sext70.i, 32
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 %i.ku ; 2 uses
  store ptr %i.kv, ptr @yy_c_buf_p, align 8
  %i.kw = load ptr, ptr %i.fd, align 8            ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8       ; 2 uses
  %.050.i = add i32 %.pn.i, %i.ka                 ; 2 uses
  %i.kx = icmp slt i32 %.050.i, 1
  br i1 %i.kx, label %.lr.ph90.i, label %._crit_edge91.i, !llvm.loop !17

._crit_edge91.i:                                  ; preds = %bb.bu, %bb.bq
  %i.ky = phi ptr [ %i.jw, %bb.bq ], [ %i.kw, %bb.bu ]
  %.050.lcssa.i = phi i32 [ %.05088.i, %bb.bq ], [ %.050.i, %bb.bu ]
  %i.kz = tail call i32 @llvm.umin.i32(i32 %.050.lcssa.i, i32 8192) ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 36
  %i.lb = load i32, ptr %i.la, align 4
  %.not.i81 = icmp eq i32 %i.lb, 0
  br i1 %.not.i81, label %bb.bz, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge91.i
  %sext66.i = shl i64 %i.jc, 32
  %i.lc = ashr exact i64 %sext66.i, 32            ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.kz to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.bw ] ; 3 uses
  %i.ld = load ptr, ptr @spec_yyin, align 8
  %i.le = tail call i32 @getc(ptr noundef %i.ld)  ; 3 uses
  switch i32 %i.le, label %bb.bw [
    i32 -1, label %.critedge.split.loop.exit.i
    i32 10, label %.critedge.split.loop.exit.i
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.lf = trunc i32 %i.le to i8
  %i.lg = load ptr, ptr @yy_buffer_stack, align 8
  %i.lh = load i64, ptr @yy_buffer_stack_top, align 8
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.lc
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %indvars.iv.i
  store i8 %i.lf, ptr %i.ln, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond101.not.i, label %.critedge.i, label %bb.bv, !llvm.loop !18

.critedge.split.loop.exit.i:                      ; preds = %bb.bv, %bb.bv
  %i.lo = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bw, %.critedge.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.lo, %.critedge.split.loop.exit.i ], [ %i.kz, %bb.bw ] ; 6 uses
  switch i32 %i.le, label %.loopexit.i [
    i32 10, label %.loopexit.thread117.i
    i32 -1, label %bb.bx
  ]

.loopexit.thread117.i:                            ; preds = %.critedge.i
  %i.lp = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.lq = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lq ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %i.lc
  %i.lw = add nuw i32 %.0.lcssa.i, 1              ; 3 uses
  %i.lx = zext nneg i32 %.0.lcssa.i to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  store i8 10, ptr %i.ly, align 1
  store i32 %i.lw, ptr @yy_n_chars, align 4
  %i.lz = load ptr, ptr %i.lr, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 28
  store i32 %i.lw, ptr %i.ma, align 4
  br label %bb.cg

bb.bx:                                            ; preds = %.critedge.i
  %i.mb = load ptr, ptr @spec_yyin, align 8
  %i.mc = tail call i32 @ferror(ptr noundef %i.mb) #26
  %.not65.i = icmp eq i32 %i.mc, 0
  br i1 %.not65.i, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.13) #24
  unreachable

bb.bz:                                            ; preds = %._crit_edge91.i
  %i.md = tail call ptr @__errno_location() #28   ; 3 uses
  store i32 0, ptr %i.md, align 4
  %sext.i = shl i64 %i.jc, 32
  %i.me = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.mf = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.mg = load ptr, ptr @yy_buffer_stack, align 8
  %i.mh = load i64, ptr @yy_buffer_stack_top, align 8
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.me
  %i.mn = load ptr, ptr @spec_yyin, align 8
  %i.mo = tail call i64 @fread(ptr noundef %i.mm, i64 noundef 1, i64 noundef %i.mf, ptr noundef %i.mn)
  %i.mp = trunc i64 %i.mo to i32                  ; 3 uses
  store i32 %i.mp, ptr @yy_n_chars, align 4
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph94.i, label %.loopexit.thread.i

.lr.ph94.i:                                       ; preds = %bb.bz, %bb.cc
  %i.mr = load ptr, ptr @spec_yyin, align 8
  %i.ms = tail call i32 @ferror(ptr noundef %i.mr) #26
  %.not62.i = icmp eq i32 %i.ms, 0
  br i1 %.not62.i, label %.loopexit.thread115.i, label %bb.ca

.loopexit.thread115.i:                            ; preds = %.lr.ph94.i
  %i.mt = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.mu = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8
  br label %.sink.split.i

bb.ca:                                            ; preds = %.lr.ph94.i
  %i.mx = load i32, ptr %i.md, align 4
  %.not63.i = icmp eq i32 %i.mx, 4
  br i1 %.not63.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.13) #24
  unreachable

bb.cc:                                            ; preds = %bb.ca
  store i32 0, ptr %i.md, align 4
  %i.my = load ptr, ptr @spec_yyin, align 8
  tail call void @clearerr(ptr noundef %i.my) #26
  %i.mz = load ptr, ptr @yy_buffer_stack, align 8
  %i.na = load i64, ptr @yy_buffer_stack_top, align 8
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.me
  %i.ng = load ptr, ptr @spec_yyin, align 8
  %i.nh = tail call i64 @fread(ptr noundef %i.nf, i64 noundef 1, i64 noundef %i.mf, ptr noundef %i.ng)
  %i.ni = trunc i64 %i.nh to i32                  ; 3 uses
  store i32 %i.ni, ptr @yy_n_chars, align 4
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph94.i, label %.loopexit.thread.i, !llvm.loop !19

.loopexit.thread.i:                               ; preds = %bb.cc, %bb.bz
  %.pr.ph.i = phi i32 [ %i.mp, %bb.bz ], [ %i.ni, %bb.cc ] ; 2 uses
  %i.nk = load ptr, ptr @yy_buffer_stack, align 8 ; 2 uses
  %i.nl = load i64, ptr @yy_buffer_stack_top, align 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nl
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 28
  store i32 %.pr.ph.i, ptr %i.no, align 4
  br label %bb.cg

.loopexit.i:                                      ; preds = %bb.bx, %.critedge.i
  store i32 %.0.lcssa.i, ptr @yy_n_chars, align 4
  %i.np = load ptr, ptr @yy_buffer_stack, align 8 ; 3 uses
  %i.nq = load i64, ptr @yy_buffer_stack_top, align 8 ; 3 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  store i32 %.0.lcssa.i, ptr %i.nt, align 4
  %i.nu = icmp eq i32 %.0.lcssa.i, 0
  br i1 %i.nu, label %bb.cd, label %bb.cg

.sink.split.i:                                    ; preds = %.loopexit.thread115.i, %.thread77.i
  %.sink129.i = phi ptr [ %i.mw, %.loopexit.thread115.i ], [ %i.jw, %.thread77.i ]
  %.ph.i = phi i64 [ %i.mu, %.loopexit.thread115.i ], [ %i.fc, %.thread77.i ]
  %.ph128.i = phi ptr [ %i.mt, %.loopexit.thread115.i ], [ %i.fb, %.thread77.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.sink129.i, i64 28
  store i32 0, ptr %i.nv, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split.i, %.loopexit.i
  %i.nw = phi i64 [ %i.nq, %.loopexit.i ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.nx = phi ptr [ %i.np, %.loopexit.i ], [ %.ph128.i, %.sink.split.i ] ; 2 uses
  %i.ny = icmp eq i32 %i.jd, 0
  br i1 %i.ny, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nz = load ptr, ptr @spec_yyin, align 8
  tail call void @spec_yyrestart(ptr noundef %i.nz)
  %.pre102.i = load i32, ptr @yy_n_chars, align 4
  %.pre103.i = load ptr, ptr @yy_buffer_stack, align 8
  %.pre104.i = load i64, ptr @yy_buffer_stack_top, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nw
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 56
  store i32 2, ptr %i.oc, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.loopexit.i, %.loopexit.thread.i, %.loopexit.thread117.i
  %i.od = phi i64 [ %.pre104.i, %bb.ce ], [ %i.nw, %bb.cf ], [ %i.nq, %.loopexit.i ], [ %i.nl, %.loopexit.thread.i ], [ %i.lq, %.loopexit.thread117.i ]
  %i.oe = phi ptr [ %.pre103.i, %bb.ce ], [ %i.nx, %bb.cf ], [ %i.np, %.loopexit.i ], [ %i.nk, %.loopexit.thread.i ], [ %i.lp, %.loopexit.thread117.i ]
  %i.of = phi i32 [ %.pre102.i, %bb.ce ], [ 0, %bb.cf ], [ %.0.lcssa.i, %.loopexit.i ], [ %.pr.ph.i, %.loopexit.thread.i ], [ %i.lw, %.loopexit.thread117.i ] ; 2 uses
  %.051.i = phi i32 [ 1, %bb.ce ], [ 2, %bb.cf ], [ 0, %.loopexit.i ], [ 0, %.loopexit.thread.i ], [ 0, %.loopexit.thread117.i ]
  %i.og = add i32 %i.of, %i.jd                    ; 3 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.od ; 6 uses
  %i.oi = load ptr, ptr %i.oh, align 8            ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = icmp sgt i32 %i.og, %i.ok
  br i1 %i.ol, label %bb.ch, label %yy_get_next_buffer.exit

bb.ch:                                            ; preds = %bb.cg
  %i.om = ashr i32 %i.of, 1
  %i.on = add i32 %i.og, %i.om                    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = sext i32 %i.on to i64
  %i.or = tail call noalias noundef ptr @realloc(ptr noundef %i.op, i64 noundef %i.oq) #25
  %i.os = load ptr, ptr %i.oh, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store ptr %i.or, ptr %i.ot, align 8
  %i.ou = load ptr, ptr %i.oh, align 8            ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  %.not71.i = icmp eq ptr %i.ow, null
  br i1 %.not71.i, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.14) #24
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ox = add i32 %i.on, -2
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  store i32 %i.ox, ptr %i.oy, align 8
  %.pre105.i = load i32, ptr @yy_n_chars, align 4
  %.pre106.i = load ptr, ptr %i.oh, align 8
  %.pre107.i = add i32 %.pre105.i, %i.jd
  br label %yy_get_next_buffer.exit

yy_get_next_buffer.exit:                          ; preds = %bb.cg, %bb.cj
  %.pre-phi.i = phi i32 [ %.pre107.i, %bb.cj ], [ %i.og, %bb.cg ] ; 3 uses
  %i.oz = phi ptr [ %.pre106.i, %bb.cj ], [ %i.oi, %bb.cg ]
  store i32 %.pre-phi.i, ptr @yy_n_chars, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = sext i32 %.pre-phi.i to i64
  %i.pd = getelementptr inbounds i8, ptr %i.pb, i64 %i.pc
  store i8 0, ptr %i.pd, align 1
  %i.pe = load ptr, ptr %i.oh, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = add i32 %.pre-phi.i, 1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds i8, ptr %i.pg, i64 %i.pi
  store i8 0, ptr %i.pj, align 1
  %i.pk = load ptr, ptr %i.oh, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8            ; 7 uses
  store ptr %i.pm, ptr @spec_yytext, align 8
  switch i32 %.051.i, label %default.unreachable352 [
    i32 1, label %yy_get_previous_state.exit99
    i32 0, label %bb.ck
    i32 2, label %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge
  ]

yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge: ; preds = %yy_get_next_buffer.exit
  %.pre317 = load ptr, ptr @yy_buffer_stack, align 8
  %.pre318 = load i64, ptr @yy_buffer_stack_top, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre317, i64 %.pre318
  %.pre319 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert320 = getelementptr inbounds nuw i8, ptr %.pre319, i64 8
  %.pre321 = load ptr, ptr %.phi.trans.insert320, align 8
  %.pre322 = load i32, ptr @yy_n_chars, align 4
  %.pre323 = sext i32 %.pre322 to i64
  br label %yy_get_next_buffer.exit.thread116

bb.ck:                                            ; preds = %yy_get_next_buffer.exit
  %i.pn = ptrtoint ptr %.241 to i64
  %i.po = ptrtoint ptr %i.ez to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = trunc i64 %i.pp to i32
  %i.pr = add i32 %i.pq, -1                       ; 2 uses
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds i8, ptr %i.pm, i64 %i.ps ; 4 uses
  store ptr %i.pt, ptr @yy_c_buf_p, align 8
  %i.pu = load i32, ptr @yy_start, align 4        ; 2 uses
  %i.pv = icmp sgt i32 %i.pr, 0
  br i1 %i.pv, label %.lr.ph25.i86, label %.loopexit121.backedge

.lr.ph25.i86:                                     ; preds = %bb.ck, %._crit_edge.i96
  %.01523.i87 = phi ptr [ %i.re, %._crit_edge.i96 ], [ %i.pm, %bb.ck ] ; 3 uses
  %.01622.i88 = phi i32 [ %i.rd, %._crit_edge.i96 ], [ %i.pu, %bb.ck ] ; 3 uses
  %i.pw = load i8, ptr %.01523.i87, align 1       ; 2 uses
  %.not.i89 = icmp eq i8 %i.pw, 0
  br i1 %.not.i89, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph25.i86
  %i.px = zext i8 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.lr.ph25.i86
  %i.qa = phi i8 [ %i.pz, %bb.cl ], [ 1, %.lr.ph25.i86 ] ; 2 uses
  %i.qb = sext i32 %.01622.i88 to i64             ; 3 uses
  %i.qc = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.qb
  %i.qd = load i16, ptr %i.qc, align 2
  %.not18.i90 = icmp eq i16 %i.qd, 0
  br i1 %.not18.i90, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 %.01622.i88, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i87, ptr @yy_last_accepting_cpos, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.qe = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.qb
  %i.qf = load i16, ptr %i.qe, align 2
  %i.qg = sext i16 %i.qf to i64
  %i.qh = zext i8 %i.qa to i64                    ; 2 uses
  %i.qi = add nsw i64 %i.qg, %i.qh                ; 2 uses
  %i.qj = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.qi
  %i.qk = load i16, ptr %i.qj, align 2
  %i.ql = sext i16 %i.qk to i32
  %.not1920.i91 = icmp eq i32 %.01622.i88, %i.ql
  br i1 %.not1920.i91, label %._crit_edge.i96, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.co, %bb.cq
  %i.qm = phi i64 [ %i.qx, %bb.cq ], [ %i.qh, %bb.co ]
  %i.qn = phi i64 [ %i.qt, %bb.cq ], [ %i.qb, %bb.co ]
  %.021.i93 = phi i8 [ %.1.i94, %bb.cq ], [ %i.qa, %bb.co ]
  %i.qo = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2            ; 3 uses
  %i.qq = icmp sgt i16 %i.qp, 70
  br i1 %i.qq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph.i92
  %i.qr = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.qm
  %i.qs = load i8, ptr %i.qr, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i92
  %.1.i94 = phi i8 [ %i.qs, %bb.cp ], [ %.021.i93, %.lr.ph.i92 ] ; 2 uses
  %i.qt = sext i16 %i.qp to i64                   ; 2 uses
  %i.qu = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.qt
  %i.qv = load i16, ptr %i.qu, align 2
  %i.qw = sext i16 %i.qv to i64
  %i.qx = zext i8 %.1.i94 to i64                  ; 2 uses
  %i.qy = add nsw i64 %i.qw, %i.qx                ; 2 uses
  %i.qz = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.qy
  %i.ra = load i16, ptr %i.qz, align 2
  %.not19.i95 = icmp eq i16 %i.qp, %i.ra
  br i1 %.not19.i95, label %._crit_edge.i96, label %.lr.ph.i92, !llvm.loop !8

._crit_edge.i96:                                  ; preds = %bb.cq, %bb.co
  %.lcssa.i97 = phi i64 [ %i.qi, %bb.co ], [ %i.qy, %bb.cq ]
  %i.rb = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i97
  %i.rc = load i16, ptr %i.rb, align 2
  %i.rd = sext i16 %i.rc to i32                   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.01523.i87, i64 1 ; 2 uses
  %exitcond.not.i98 = icmp eq ptr %i.re, %i.pt
  br i1 %exitcond.not.i98, label %.loopexit121.backedge, label %.lr.ph25.i86, !llvm.loop !9

yy_get_next_buffer.exit.thread116:                ; preds = %bb.bo, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge
  %.pre-phi = phi i64 [ %.pre323, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge ], [ %i.ft, %bb.bo ]
  %i.rf = phi ptr [ %i.pm, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge ], [ %i.ip, %bb.bo ] ; 4 uses
  %i.rg = phi ptr [ %.pre321, %yy_get_next_buffer.exit.yy_get_next_buffer.exit.thread116_crit_edge ], [ %i.fr, %bb.bo ]
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 %.pre-phi ; 5 uses
  store ptr %i.rh, ptr @yy_c_buf_p, align 8
  %i.ri = load i32, ptr @yy_start, align 4        ; 2 uses
  %i.rj = icmp ult ptr %i.rf, %i.rh
  br i1 %i.rj, label %.lr.ph25.i101, label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %._crit_edge.i111, %yy_get_next_buffer.exit.thread116, %bb.bk
  %.346.ph.be = phi i32 [ %i.ri, %yy_get_next_buffer.exit.thread116 ], [ %i.io, %bb.bk ], [ %i.sr, %._crit_edge.i111 ]
  %.241.ph.be = phi ptr [ %i.rh, %yy_get_next_buffer.exit.thread116 ], [ %i.in, %bb.bk ], [ %i.rh, %._crit_edge.i111 ]
  %.138.ph.be = phi ptr [ %i.rf, %yy_get_next_buffer.exit.thread116 ], [ %i.ga, %bb.bk ], [ %i.rf, %._crit_edge.i111 ]
  br label %.backedge.outer

.lr.ph25.i101:                                    ; preds = %yy_get_next_buffer.exit.thread116, %._crit_edge.i111
  %.01523.i102 = phi ptr [ %i.ss, %._crit_edge.i111 ], [ %i.rf, %yy_get_next_buffer.exit.thread116 ] ; 3 uses
  %.01622.i103 = phi i32 [ %i.sr, %._crit_edge.i111 ], [ %i.ri, %yy_get_next_buffer.exit.thread116 ] ; 3 uses
  %i.rk = load i8, ptr %.01523.i102, align 1      ; 2 uses
  %.not.i104 = icmp eq i8 %i.rk, 0
  br i1 %.not.i104, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph25.i101
  %i.rl = zext i8 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.lr.ph25.i101
  %i.ro = phi i8 [ %i.rn, %bb.cr ], [ 1, %.lr.ph25.i101 ] ; 2 uses
  %i.rp = sext i32 %.01622.i103 to i64            ; 3 uses
  %i.rq = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.rp
  %i.rr = load i16, ptr %i.rq, align 2
  %.not18.i105 = icmp eq i16 %i.rr, 0
  br i1 %.not18.i105, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 %.01622.i103, ptr @yy_last_accepting_state, align 4
  store ptr %.01523.i102, ptr @yy_last_accepting_cpos, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.rs = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.rp
  %i.rt = load i16, ptr %i.rs, align 2
  %i.ru = sext i16 %i.rt to i64
  %i.rv = zext i8 %i.ro to i64                    ; 2 uses
  %i.rw = add nsw i64 %i.ru, %i.rv                ; 2 uses
  %i.rx = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2
  %i.rz = sext i16 %i.ry to i32
  %.not1920.i106 = icmp eq i32 %.01622.i103, %i.rz
  br i1 %.not1920.i106, label %._crit_edge.i111, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.cu, %bb.cw
  %i.sa = phi i64 [ %i.sl, %bb.cw ], [ %i.rv, %bb.cu ]
  %i.sb = phi i64 [ %i.sh, %bb.cw ], [ %i.rp, %bb.cu ]
  %.021.i108 = phi i8 [ %.1.i109, %bb.cw ], [ %i.ro, %bb.cu ]
  %i.sc = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.sb
  %i.sd = load i16, ptr %i.sc, align 2            ; 3 uses
  %i.se = icmp sgt i16 %i.sd, 70
  br i1 %i.se, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i107
  %i.sf = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.sa
  %i.sg = load i8, ptr %i.sf, align 1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph.i107
  %.1.i109 = phi i8 [ %i.sg, %bb.cv ], [ %.021.i108, %.lr.ph.i107 ] ; 2 uses
  %i.sh = sext i16 %i.sd to i64                   ; 2 uses
  %i.si = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.sh
  %i.sj = load i16, ptr %i.si, align 2
  %i.sk = sext i16 %i.sj to i64
  %i.sl = zext i8 %.1.i109 to i64                 ; 2 uses
  %i.sm = add nsw i64 %i.sk, %i.sl                ; 2 uses
  %i.sn = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.sm
  %i.so = load i16, ptr %i.sn, align 2
  %.not19.i110 = icmp eq i16 %i.sd, %i.so
  br i1 %.not19.i110, label %._crit_edge.i111, label %.lr.ph.i107, !llvm.loop !8

._crit_edge.i111:                                 ; preds = %bb.cw, %bb.cu
  %.lcssa.i112 = phi i64 [ %i.rw, %bb.cu ], [ %i.sm, %bb.cw ]
  %i.sp = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i112
  %i.sq = load i16, ptr %i.sp, align 2
  %i.sr = sext i16 %i.sq to i32                   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.01523.i102, i64 1 ; 2 uses
  %exitcond.not.i113 = icmp eq ptr %i.ss, %i.rh
  br i1 %exitcond.not.i113, label %.backedge.outer.backedge, label %.lr.ph25.i101, !llvm.loop !9
end_hunk_0
