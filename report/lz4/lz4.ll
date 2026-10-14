Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_safe:bb.a
  store i64 %i.fc, ptr %i.es, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ff = load i64, ptr %i.fe, align 1
  store i64 %i.ff, ptr %i.fd, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fi = load i16, ptr %i.fh, align 1
  store i16 %i.fi, ptr %i.fg, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 3 ; 2 uses
  %i.fm = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.fn = zext i8 %i.fm to i32                    ; 3 uses
  %i.fo = lshr i32 %i.fn, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fo, 15
  br i1 %.not439.i, label %.thread96, label %.lr.ph212

.loopexit:                                        ; preds = %.backedge, %.preheader143
  %.4 = phi ptr [ %i.r, %.preheader143 ], [ %i.cj, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader143 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.t, %.preheader143 ], [ %i.cl, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.v, %.preheader143 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.fp = icmp eq i64 %.4362.i, 15
  br i1 %i.fp, label %.thread96, label %.loopexit.thread

.thread96:                                        ; preds = %bb.af, %.preheader133, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %i.kl, %.preheader133 ], [ %i.fn, %bb.af ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader133 ], [ %i.fk, %bb.af ] ; 2 uses
  %.4101 = phi ptr [ %.4, %.loopexit ], [ %i.kj, %.preheader133 ], [ %i.fl, %bb.af ] ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %.not.i18 = icmp ult ptr %.4101, %i.fq
  br i1 %.not.i18, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread96
  %i.fr = load i8, ptr %.4101, align 1, !tbaa !15 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.4101, i64 1 ; 4 uses
  %.not21.i20 = icmp eq i8 %i.fr, -1
  br i1 %.not21.i20, label %.preheader132.preheader, label %read_variable_length.exit23.thread109, !prof !27

.preheader132.preheader:                          ; preds = %bb.ag
  %.not22.i22473 = icmp ult ptr %i.fs, %i.fq
  br i1 %.not22.i22473, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit23.thread109:            ; preds = %bb.ag
  %i.ft = zext i8 %i.fr to i64
  br label %bb.ah

.preheader132:                                    ; preds = %.lr.ph476
  %.not22.i22 = icmp ult ptr %i.fw, %i.fq
  br i1 %.not22.i22, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph476:                                        ; preds = %.preheader132.preheader, %.preheader132
  %.0.i21475 = phi i64 [ %i.fx, %.preheader132 ], [ 255, %.preheader132.preheader ]
  %.16474 = phi ptr [ %i.fw, %.preheader132 ], [ %i.fs, %.preheader132.preheader ] ; 2 uses
  %i.fu = load i8, ptr %.16474, align 1, !tbaa !15 ; 2 uses
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.16474, i64 1 ; 5 uses
  %i.fx = add i64 %.0.i21475, %i.fv               ; 3 uses
  %i.fy = icmp eq i8 %i.fu, -1
  br i1 %i.fy, label %.preheader132, label %read_variable_length.exit23, !llvm.loop !3

read_variable_length.exit23:                      ; preds = %.lr.ph476
  %i.fz = icmp eq i64 %i.fx, -1
  br i1 %i.fz, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit23.thread109, %read_variable_length.exit23
  %.016.i19113 = phi i64 [ %i.ft, %read_variable_length.exit23.thread109 ], [ %i.fx, %read_variable_length.exit23 ]
  %.17112 = phi ptr [ %i.fs, %read_variable_length.exit23.thread109 ], [ %i.fw, %read_variable_length.exit23 ] ; 3 uses
  %i.ga = add i64 %.016.i19113, 15                ; 3 uses
  %i.gb = ptrtoint ptr %.7387.i103 to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = icmp ugt i64 %i.ga, %i.gc
  %i.ge = ptrtoint ptr %.17112 to i64
  %i.gf = xor i64 %i.ge, -1
  %i.gg = icmp ugt i64 %i.ga, %i.gf
  %or.cond124 = select i1 %i.gd, i1 true, i1 %i.gg, !prof !44
  br i1 %or.cond124, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph212, %bb.ah, %.loopexit
  %.0364.i104 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i105, %bb.ah ], [ %i.em, %.lr.ph212 ]
  %.7387.i102 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i103, %bb.ah ], [ %.6386.i211, %.lr.ph212 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17112, %bb.ah ], [ %i.en, %.lr.ph212 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.ga, %bb.ah ], [ %i.eo, %.lr.ph212 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.7387.i102, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1368, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i102, %.loopexit.thread ], [ %.0380.i205, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gh, %.loopexit.thread ], [ %i.aq, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i104, %.loopexit.thread ], [ %i.ad, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ap, %bb.k ] ; 4 uses
  %i.gi = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gj = icmp ugt ptr %.3377.i, %i.gi
  br i1 %i.gj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gm = icmp ugt ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.aj, label %.preheader131

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.gn, %i.d
  %i.go = icmp ugt ptr %.3377.i, %i.f
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.go
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.o
  %i.gs = trunc i64 %i.gr to i32
  br label %LZ4_decompress_generic.exit

.preheader131:                                    ; preds = %bb.ai, %.preheader131
  %.09.i7 = phi ptr [ %i.gu, %.preheader131 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gv, %.preheader131 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gt = load i64, ptr %.0.i8, align 1
  store i64 %i.gt, ptr %.09.i7, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gw = icmp ult ptr %i.gu, %.3377.i
  br i1 %i.gw, label %.preheader131, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader131
  %.val36 = load i16, ptr %i.gk, align 1, !tbaa !30
  %i.gx = zext i16 %.val36 to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds i8, ptr %.3377.i, i64 %i.gz
  %i.hb = and i32 %.1365.i, 15
  %i.hc = zext nneg i32 %i.hb to i64
  br label %.loopexit134

.loopexit134:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit9
  %.7 = phi ptr [ %i.gy, %LZ4_wildCopy8.exit9 ], [ %i.ex, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit9 ], [ %i.es, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.ha, %LZ4_wildCopy8.exit9 ], [ %i.ez, %bb.ae ]
  %.0366.i = phi i64 [ %i.gx, %LZ4_wildCopy8.exit9 ], [ %i.ew, %bb.ae ]
  %.10.i = phi i64 [ %i.hc, %LZ4_wildCopy8.exit9 ], [ %i.ev, %bb.ae ] ; 2 uses
  %i.hd = icmp eq i64 %.10.i, 15
  br i1 %i.hd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit134
  %i.he = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i24 = icmp ult ptr %.7, %i.he
  br i1 %.not.i24, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.hf = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i26 = icmp eq i8 %i.hf, -1
  br i1 %.not21.i26, label %.preheader130.preheader, label %bb.an, !prof !27

.preheader130.preheader:                          ; preds = %bb.am
  %.not22.i28478 = icmp ult ptr %i.hg, %i.he
  br i1 %.not22.i28478, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hh = zext i8 %i.hf to i64
  br label %read_variable_length.exit29

.preheader130:                                    ; preds = %.lr.ph481
  %.not22.i28 = icmp ult ptr %i.hk, %i.he
  br i1 %.not22.i28, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph481:                                        ; preds = %.preheader130.preheader, %.preheader130
  %.0.i27480 = phi i64 [ %i.hl, %.preheader130 ], [ 255, %.preheader130.preheader ]
  %.18479 = phi ptr [ %i.hk, %.preheader130 ], [ %i.hg, %.preheader130.preheader ] ; 2 uses
  %i.hi = load i8, ptr %.18479, align 1, !tbaa !15 ; 2 uses
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %.18479, i64 1 ; 4 uses
  %i.hl = add i64 %.0.i27480, %i.hj               ; 2 uses
  %i.hm = icmp eq i8 %i.hi, -1
  br i1 %i.hm, label %.preheader130, label %read_variable_length.exit29, !llvm.loop !3

read_variable_length.exit29:                      ; preds = %.lr.ph481, %bb.an
  %.19 = phi ptr [ %i.hg, %bb.an ], [ %i.hk, %.lr.ph481 ] ; 2 uses
  %.016.i25 = phi i64 [ %i.hh, %bb.an ], [ %i.hl, %.lr.ph481 ] ; 2 uses
  %i.hn = icmp ne i64 %.016.i25, -1               ; 2 uses
  %i.ho = add i64 %.016.i25, 15                   ; 2 uses
  %i.hp = ptrtoint ptr %.10390.i to i64
  %i.hq = xor i64 %i.hp, -1
  %i.hr = icmp ule i64 %i.ho, %i.hq
  %.11.i = select i1 %i.hn, i64 %i.ho, i64 15
  %.not128 = select i1 %i.hn, i1 %i.hr, i1 false
  br i1 %.not128, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit29, %.loopexit134
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit134 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit29 ], [ %.10.i, %.loopexit134 ]
  %i.hs = add i64 %.12.i, 4
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1587, %bb.p ], [ %i.bf, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.be, %bb.q ], [ %i.be, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hs, %bb.ao ], [ %i.bt, %bb.p ], [ %i.by, %bb.q ] ; 3 uses
  %.11391.i486 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.ht = icmp ult ptr %.1369.i, %1
  br i1 %i.ht, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit146
  %i.hu = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hv = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.hw = icmp ult i64 %.1367.i, 8
  br i1 %i.hw, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hx = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hx, ptr %.11391.i, align 1, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !15
  %i.ib = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !15
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !37
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.im = load i32, ptr %i.ik, align 1
  store i32 %i.im, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !37
  %i.ip = sext i32 %i.io to i64
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.ik, i64 %i.iq
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.is = load i64, ptr %.1369.i, align 1
  store i64 %i.is, ptr %.11391.i, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.ir, %bb.aq ], [ %i.it, %bb.ar ] ; 6 uses
  %.3371.i487 = ptrtoaddr ptr %.3371.i to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.iv = icmp ugt ptr %i.hu, %i.hv
  br i1 %i.iv, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.iy = icmp ugt ptr %i.hu, %i.ix
  br i1 %i.iy, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = icmp ult ptr %i.iu, %i.iw
  br i1 %i.iz, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.jb, %.preheader ], [ %i.iu, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.jc, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.ja = load i64, ptr %.0.i, align 1
  store i64 %i.ja, ptr %.09.i, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.jd = icmp ult ptr %i.jb, %i.iw
  br i1 %i.jd, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.je = ptrtoint ptr %i.iw to i64
  %i.jf = ptrtoint ptr %i.iu to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %.3371.i, i64 %i.jg
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.iw, %LZ4_wildCopy8.exit ], [ %i.iu, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.jh, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.ji = icmp ult ptr %.16.i, %i.hu
  br i1 %i.ji, label %iter.check, label %.preheader133

iter.check:                                       ; preds = %bb.av
  %i.jj = add i64 %.13.i, %.11391.i486
  %i.jk = add i64 %i.o, %i.e
  %i.jl = add i64 %i.jk, -7
  %i.jm = add i64 %.11391.i486, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.jm)
  %i.jn = sub i64 %i.jj, %umax                    ; 7 uses
  %min.iters.check489 = icmp ult i64 %i.jn, 8
  br i1 %min.iters.check489, label %.lr.ph218.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jo = sub i64 %.11391.i486, %.3371.i487
  %i.jp = add i64 %i.jo, 7
  %diff.check = icmp ult i64 %i.jp, 31
  br i1 %diff.check, label %.lr.ph218.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check490 = icmp ult i64 %i.jn, 32
  br i1 %min.iters.check490, label %vec.epilog.ph, label %vector.ph491

vector.ph491:                                     ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jn, 24
  %n.vec492 = and i64 %i.jn, -32                  ; 5 uses
  %i.jr = getelementptr i8, ptr %.4372.i, i64 %n.vec492
  %i.js = getelementptr i8, ptr %.16.i, i64 %n.vec492
  br label %vector.body493

vector.body493:                                   ; preds = %vector.ph491, %vector.body493
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next498, %vector.body493 ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %.4372.i, i64 %index494 ; 2 uses
  %next.gep496 = getelementptr i8, ptr %.16.i, i64 %index494 ; 2 uses
  %i.jt = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep495, align 1, !tbaa !15
  %wide.load497 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !15
  %i.ju = getelementptr i8, ptr %next.gep496, i64 16
  store <16 x i8> %wide.load, ptr %next.gep496, align 1, !tbaa !15
  store <16 x i8> %wide.load497, ptr %i.ju, align 1, !tbaa !15
  %index.next498 = add nuw i64 %index494, 32      ; 2 uses
  %i.jv = icmp eq i64 %index.next498, %n.vec492
  br i1 %i.jv, label %middle.block499, label %vector.body493, !llvm.loop !60

middle.block499:                                  ; preds = %vector.body493
  %cmp.n500 = icmp eq i64 %i.jn, %n.vec492
  br i1 %cmp.n500, label %.preheader133, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block499
  %min.epilog.iters.check = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec492, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec503 = and i64 %i.jn, -8                   ; 4 uses
  %i.jw = getelementptr i8, ptr %.4372.i, i64 %n.vec503
  %i.jx = getelementptr i8, ptr %.16.i, i64 %n.vec503
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index504 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next508, %vec.epilog.vector.body ] ; 3 uses
  %next.gep505 = getelementptr i8, ptr %.4372.i, i64 %index504
  %next.gep506 = getelementptr i8, ptr %.16.i, i64 %index504
  %wide.load507 = load <8 x i8>, ptr %next.gep505, align 1, !tbaa !15
  store <8 x i8> %wide.load507, ptr %next.gep506, align 1, !tbaa !15
  %index.next508 = add nuw i64 %index504, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.jy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %i.jn, %n.vec503
  br i1 %cmp.n509, label %.preheader133, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i217.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jr, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  %.17.i216.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.5373.i217 = phi ptr [ %i.jz, %.lr.ph218 ], [ %.5373.i217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.17.i216 = phi ptr [ %i.kb, %.lr.ph218 ], [ %.17.i216.ph, %.lr.ph218.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.5373.i217, i64 1
  %i.ka = load i8, ptr %.5373.i217, align 1, !tbaa !15
  %i.kb = getelementptr inbounds nuw i8, ptr %.17.i216, i64 1 ; 2 uses
  store i8 %i.ka, ptr %.17.i216, align 1, !tbaa !15
  %i.kc = icmp ult ptr %i.kb, %i.hu
  br i1 %i.kc, label %.lr.ph218, label %.preheader133, !llvm.loop !62

bb.aw:                                            ; preds = %bb.as
  %i.kd = load i64, ptr %.3371.i, align 1
  store i64 %i.kd, ptr %i.iu, align 1
  %i.ke = icmp ugt i64 %.13.i, 16
  br i1 %i.ke, label %bb.ax, label %.preheader133

bb.ax:                                            ; preds = %bb.aw
  %i.kf = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i4 = phi ptr [ %i.kf, %bb.ax ], [ %i.kh, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i5, %bb.ay ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kg = load i64, ptr %.0.i5, align 1
  store i64 %i.kg, ptr %.09.i4, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.ki = icmp ult ptr %i.kh, %i.hu
  br i1 %i.ki, label %bb.ay, label %.preheader133, !llvm.loop !1

.preheader133:                                    ; preds = %bb.ay, %.lr.ph218, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block499, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph218 ], [ %.2, %middle.block499 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.hu, %.lr.ph218 ], [ %i.hu, %middle.block499 ], [ %i.hu, %vec.epilog.middle.block ], [ %i.hu, %bb.aw ], [ %i.hu, %bb.av ], [ %i.hu, %bb.ay ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kl = zext i8 %i.kk to i32                    ; 3 uses
  %i.km = lshr i32 %i.kl, 4                       ; 2 uses
  %.not439.i210 = icmp eq i32 %i.km, 15
  br i1 %.not439.i210, label %.thread96, label %.lr.ph212

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader141.preheader, %.preheader138.preheader, %.preheader141, %.preheader138, %.preheader132, %.preheader130, %.preheader132.preheader, %.preheader130.preheader, %bb.al, %.thread96, %read_variable_length.exit23, %bb.ah, %bb.at, %.loopexit146, %read_variable_length.exit29, %bb.aj
  %.9 = phi ptr [ %.6, %bb.aj ], [ %.2, %.loopexit146 ], [ %.2, %bb.at ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader141 ], [ %.17112, %bb.ah ], [ %i.hk, %.preheader130 ], [ %i.fw, %read_variable_length.exit23 ], [ %i.bp, %.preheader138 ], [ %.4101, %.thread96 ], [ %i.fw, %.preheader132 ], [ %.7, %bb.al ], [ %i.hg, %.preheader130.preheader ], [ %i.fs, %.preheader132.preheader ], [ %i.bf, %bb.m ], [ %i.bp, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader141.preheader ], [ %i.bl, %.preheader138.preheader ], [ %.10, %.thread92 ]
  %i.kn = ptrtoint ptr %.9 to i64
  %i.ko = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.ko, %i.kn
  %i.kp = trunc i64 %.neg.i to i32
  %i.kq = add nsw i32 %i.kp, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gs, %bb.ak ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.kq, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 9 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader140, label %.preheader151

.preheader151:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = load i8, ptr %0, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = lshr i32 %i.r, 4                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp slt i32 %2, 18
  br i1 %i.u, label %.loopexit141, label %.lr.ph214

.lr.ph214:                                        ; preds = %.preheader151
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph214, %.backedge
  %i.z = phi i64 [ %i.t, %.lr.ph214 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.aa = phi i32 [ %i.s, %.lr.ph214 ], [ %i.ck, %.backedge ]
  %i.ab = phi i32 [ %i.r, %.lr.ph214 ], [ %i.cj, %.backedge ] ; 2 uses
  %i.ac = phi ptr [ %i.p, %.lr.ph214 ], [ %i.ch, %.backedge ] ; 5 uses
  %.0380.i213 = phi ptr [ %1, %.lr.ph214 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0212 = phi ptr [ %0, %.lr.ph214 ], [ %.0.be, %.backedge ]
  %i.ad = icmp eq i32 %i.aa, 15
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i14 = icmp ult ptr %i.ac, %i.v
  br i1 %.not.i14, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !15  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0212, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ae, -1
  br i1 %.not21.i, label %.preheader149.preheader, label %read_variable_length.exit.thread69, !prof !27

.preheader149.preheader:                          ; preds = %bb.g
  %.not22.i468 = icmp ult ptr %i.af, %i.v
  br i1 %.not22.i468, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread69:               ; preds = %bb.g
  %i.ag = zext i8 %i.ae to i64
  br label %bb.h

.preheader149:                                    ; preds = %.lr.ph471
  %.not22.i = icmp ult ptr %i.aj, %i.v
  br i1 %.not22.i, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph471:                                        ; preds = %.preheader149.preheader, %.preheader149
  %.0.i15470 = phi i64 [ %i.ak, %.preheader149 ], [ 255, %.preheader149.preheader ]
  %.13469 = phi ptr [ %i.aj, %.preheader149 ], [ %i.af, %.preheader149.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.13469, align 1, !tbaa !15 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe_partial:bb.a
  %.7387.i = phi ptr [ %1, %.preheader151 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.r, %.preheader151 ], [ %i.cj, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.t, %.preheader151 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.fn = icmp eq i64 %.4362.i, 15
  br i1 %i.fn, label %.thread100, label %.loopexit141.thread

.thread100:                                       ; preds = %bb.ad, %.preheader140, %.loopexit141
  %.0364.i109 = phi i32 [ %.0364.i, %.loopexit141 ], [ %i.ki, %.preheader140 ], [ %i.fl, %bb.ad ]
  %.7387.i107 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.6386.i.ph, %.preheader140 ], [ %i.fi, %bb.ad ] ; 2 uses
  %.4105 = phi ptr [ %.4, %.loopexit141 ], [ %i.kg, %.preheader140 ], [ %i.fj, %bb.ad ] ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %.not.i22 = icmp ult ptr %.4105, %i.fo
  br i1 %.not.i22, label %bb.ae, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ae:                                            ; preds = %.thread100
  %i.fp = load i8, ptr %.4105, align 1, !tbaa !15 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.4105, i64 1 ; 4 uses
  %.not21.i24 = icmp eq i8 %i.fp, -1
  br i1 %.not21.i24, label %.preheader139.preheader, label %read_variable_length.exit27.thread113, !prof !27

.preheader139.preheader:                          ; preds = %bb.ae
  %.not22.i26479 = icmp ult ptr %i.fq, %i.fo
  br i1 %.not22.i26479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit27.thread113:            ; preds = %bb.ae
  %i.fr = zext i8 %i.fp to i64
  br label %bb.af

.preheader139:                                    ; preds = %.lr.ph482
  %.not22.i26 = icmp ult ptr %i.fu, %i.fo
  br i1 %.not22.i26, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader139.preheader, %.preheader139
  %.0.i25481 = phi i64 [ %i.fv, %.preheader139 ], [ 255, %.preheader139.preheader ]
  %.17480 = phi ptr [ %i.fu, %.preheader139 ], [ %i.fq, %.preheader139.preheader ] ; 2 uses
  %i.fs = load i8, ptr %.17480, align 1, !tbaa !15 ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %.17480, i64 1 ; 5 uses
  %i.fv = add i64 %.0.i25481, %i.ft               ; 3 uses
  %i.fw = icmp eq i8 %i.fs, -1
  br i1 %i.fw, label %.preheader139, label %read_variable_length.exit27, !llvm.loop !3

read_variable_length.exit27:                      ; preds = %.lr.ph482
  %i.fx = icmp eq i64 %i.fv, -1
  br i1 %i.fx, label %LZ4_wildCopy32.exit.thread, label %bb.af

bb.af:                                            ; preds = %read_variable_length.exit27.thread113, %read_variable_length.exit27
  %.016.i23117 = phi i64 [ %i.fr, %read_variable_length.exit27.thread113 ], [ %i.fv, %read_variable_length.exit27 ]
  %.18116 = phi ptr [ %i.fq, %read_variable_length.exit27.thread113 ], [ %i.fu, %read_variable_length.exit27 ] ; 3 uses
  %i.fy = add i64 %.016.i23117, 15                ; 3 uses
  %i.fz = ptrtoint ptr %.7387.i107 to i64
  %i.ga = xor i64 %i.fz, -1
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  %i.gc = ptrtoint ptr %.18116 to i64
  %i.gd = xor i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  %or.cond132 = select i1 %i.gb, i1 true, i1 %i.ge, !prof !44
  br i1 %or.cond132, label %LZ4_wildCopy32.exit.thread, label %.loopexit141.thread, !prof !44

.loopexit141.thread:                              ; preds = %.lr.ph220, %bb.af, %.loopexit141
  %.0364.i108 = phi i32 [ %.0364.i, %.loopexit141 ], [ %.0364.i109, %bb.af ], [ %i.ek, %.lr.ph220 ]
  %.7387.i106 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.7387.i107, %bb.af ], [ %.6386.i219, %.lr.ph220 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit141 ], [ %.18116, %bb.af ], [ %i.el, %.lr.ph220 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit141 ], [ %i.fy, %bb.af ], [ %i.em, %.lr.ph220 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.7387.i106, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit141.thread
  %.6 = phi ptr [ %.5, %.loopexit141.thread ], [ %.1472, %bb.i ] ; 7 uses
  %.8388.i = phi ptr [ %.7387.i106, %.loopexit141.thread ], [ %.0380.i213, %bb.i ] ; 7 uses
  %.3377.i = phi ptr [ %i.gf, %.loopexit141.thread ], [ %i.ao, %bb.i ] ; 4 uses
  %.1365.i = phi i32 [ %.0364.i108, %.loopexit141.thread ], [ %i.ab, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit141.thread ], [ %i.an, %bb.i ] ; 3 uses
  %i.gg = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gh = icmp ugt ptr %.3377.i, %i.gg
  br i1 %i.gh, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gk = icmp ugt ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.ah, label %.preheader138

bb.ah:                                            ; preds = %bb.ag, %LZ4_wildCopy32.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.gm = icmp ugt ptr %i.gl, %i.e                ; 2 uses
  %i.gn = ptrtoint ptr %i.e to i64
  %i.go = ptrtoint ptr %.6 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.gp
  %.4378.i = select i1 %i.gm, ptr %i.gq, ptr %.3377.i ; 2 uses
  %i.gr = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.gr, label %.thread124, label %bb.ai

.thread124:                                       ; preds = %bb.ah
  %i.gs = ptrtoint ptr %.8388.i to i64
  %i.gt = sub i64 %i.l, %i.gs                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.gt, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.gt
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %.8.i = select i1 %i.gm, i64 %i.gp, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.gx = icmp ne ptr %.4378.i, %i.g
  %i.gy = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.gv, %i.gy
  %or.cond460.i = select i1 %i.gx, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit13, label %bb.aw

.preheader138:                                    ; preds = %bb.ag, %.preheader138
  %.09.i11 = phi ptr [ %i.ha, %.preheader138 ], [ %.8388.i, %bb.ag ] ; 2 uses
  %.0.i12 = phi ptr [ %i.hb, %.preheader138 ], [ %.6, %bb.ag ] ; 2 uses
  %i.gz = load i64, ptr %.0.i12, align 1
  store i64 %i.gz, ptr %.09.i11, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i12, i64 8
  %i.hc = icmp ult ptr %i.ha, %.3377.i
  br i1 %i.hc, label %.preheader138, label %LZ4_wildCopy8.exit13, !llvm.loop !1

LZ4_wildCopy8.exit13:                             ; preds = %.preheader138, %bb.ai
  %.7 = phi ptr [ %i.gv, %bb.ai ], [ %i.gi, %.preheader138 ] ; 2 uses
  %.9389.i = phi ptr [ %i.gw, %bb.ai ], [ %.3377.i, %.preheader138 ] ; 2 uses
  %.val40 = load i16, ptr %.7, align 1, !tbaa !30
  %i.hd = zext i16 %.val40 to i64                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.hf = sub nsw i64 0, %i.hd
  %i.hg = getelementptr inbounds i8, ptr %.9389.i, i64 %i.hf
  %i.hh = and i32 %.1365.i, 15
  %i.hi = zext nneg i32 %i.hh to i64
  br label %.loopexit142

.loopexit142:                                     ; preds = %bb.ac, %LZ4_wildCopy8.exit13
  %.8 = phi ptr [ %i.he, %LZ4_wildCopy8.exit13 ], [ %i.ev, %bb.ac ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit13 ], [ %i.eq, %bb.ac ] ; 2 uses
  %.0368.i = phi ptr [ %i.hg, %LZ4_wildCopy8.exit13 ], [ %i.ex, %bb.ac ]
  %.0366.i = phi i64 [ %i.hd, %LZ4_wildCopy8.exit13 ], [ %i.eu, %bb.ac ]
  %.10.i = phi i64 [ %i.hi, %LZ4_wildCopy8.exit13 ], [ %i.et, %bb.ac ] ; 2 uses
  %i.hj = icmp eq i64 %.10.i, 15
  br i1 %i.hj, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.loopexit142
  %i.hk = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i28 = icmp ult ptr %.8, %i.hk
  br i1 %.not.i28, label %bb.ak, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ak:                                            ; preds = %bb.aj
  %i.hl = load i8, ptr %.8, align 1, !tbaa !15    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i30 = icmp eq i8 %i.hl, -1
  br i1 %.not21.i30, label %.preheader137.preheader, label %bb.al, !prof !27

.preheader137.preheader:                          ; preds = %bb.ak
  %.not22.i32484 = icmp ult ptr %i.hm, %i.hk
  br i1 %.not22.i32484, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.al:                                            ; preds = %bb.ak
  %i.hn = zext i8 %i.hl to i64
  br label %read_variable_length.exit33

.preheader137:                                    ; preds = %.lr.ph487
  %.not22.i32 = icmp ult ptr %i.hq, %i.hk
  br i1 %.not22.i32, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph487:                                        ; preds = %.preheader137.preheader, %.preheader137
  %.0.i31486 = phi i64 [ %i.hr, %.preheader137 ], [ 255, %.preheader137.preheader ]
  %.19485 = phi ptr [ %i.hq, %.preheader137 ], [ %i.hm, %.preheader137.preheader ] ; 2 uses
  %i.ho = load i8, ptr %.19485, align 1, !tbaa !15 ; 2 uses
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.19485, i64 1 ; 4 uses
  %i.hr = add i64 %.0.i31486, %i.hp               ; 2 uses
  %i.hs = icmp eq i8 %i.ho, -1
  br i1 %i.hs, label %.preheader137, label %read_variable_length.exit33, !llvm.loop !3

read_variable_length.exit33:                      ; preds = %.lr.ph487, %bb.al
  %.20 = phi ptr [ %i.hm, %bb.al ], [ %i.hq, %.lr.ph487 ] ; 2 uses
  %.016.i29 = phi i64 [ %i.hn, %bb.al ], [ %i.hr, %.lr.ph487 ] ; 2 uses
  %i.ht = icmp ne i64 %.016.i29, -1               ; 2 uses
  %i.hu = add i64 %.016.i29, 15                   ; 2 uses
  %i.hv = ptrtoint ptr %.10390.i to i64
  %i.hw = xor i64 %i.hv, -1
  %i.hx = icmp ule i64 %i.hu, %i.hw
  %.11.i = select i1 %i.ht, i64 %i.hu, i64 15
  %.not136 = select i1 %i.ht, i1 %i.hx, i1 false
  br i1 %.not136, label %bb.am, label %LZ4_wildCopy32.exit.thread

bb.am:                                            ; preds = %read_variable_length.exit33, %.loopexit142
  %.9 = phi ptr [ %.20, %read_variable_length.exit33 ], [ %.8, %.loopexit142 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit33 ], [ %.10.i, %.loopexit142 ]
  %i.hy = add i64 %.12.i, 4
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.n, %bb.o, %bb.am
  %.2 = phi ptr [ %.9, %bb.am ], [ %.1691, %bb.n ], [ %i.bd, %bb.o ] ; 4 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.am ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 19 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.am ], [ %i.bf, %bb.o ], [ %i.bf, %bb.n ] ; 16 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.am ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.hy, %bb.am ], [ %i.br, %bb.n ], [ %i.bw, %bb.o ] ; 3 uses
  %.1369.i492 = ptrtoaddr ptr %.1369.i to i64
  %i.hz = icmp ult ptr %.1369.i, %1
  br i1 %i.hz, label %LZ4_wildCopy32.exit.thread, label %bb.an, !prof !43

bb.an:                                            ; preds = %.loopexit154
  %i.ia = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 4 uses
  %i.ib = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ic = icmp ugt ptr %i.ia, %i.ib
  br i1 %i.ic, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.id = ptrtoint ptr %.11391.i to i64           ; 5 uses
  %i.ie = sub i64 %i.l, %i.id
  %i.if = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.ie) ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.if ; 3 uses
  %i.ii = icmp ugt ptr %i.ig, %.11391.i
  br i1 %i.ii, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.ao
  %.not = icmp eq i64 %i.if, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ij = add i64 %i.if, %i.id
  %i.ik = add i64 %i.id, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ij, i64 %i.ik)
  %i.il = sub i64 %umax, %i.id                    ; 7 uses
  %min.iters.check494 = icmp ult i64 %i.il, 8
  %i.im = sub i64 %.1369.i492, %i.id
  %diff.check = icmp ugt i64 %i.im, -32
  %or.cond517 = or i1 %min.iters.check494, %diff.check
  br i1 %or.cond517, label %.lr.ph226.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check495 = icmp ult i64 %i.il, 32
  br i1 %min.iters.check495, label %vec.epilog.ph, label %vector.ph496

vector.ph496:                                     ; preds = %vector.main.loop.iter.check
  %i.in = and i64 %i.il, 24
  %n.vec497 = and i64 %i.il, -32                  ; 5 uses
  %i.io = getelementptr i8, ptr %.1369.i, i64 %n.vec497
  %i.ip = getelementptr i8, ptr %.11391.i, i64 %n.vec497
  br label %vector.body498

vector.body498:                                   ; preds = %vector.ph496, %vector.body498
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next503, %vector.body498 ] ; 3 uses
  %next.gep500 = getelementptr i8, ptr %.1369.i, i64 %index499 ; 2 uses
  %next.gep501 = getelementptr i8, ptr %.11391.i, i64 %index499 ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep500, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep500, align 1, !tbaa !15
  %wide.load502 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !15
  %i.ir = getelementptr i8, ptr %next.gep501, i64 16
  store <16 x i8> %wide.load, ptr %next.gep501, align 1, !tbaa !15
  store <16 x i8> %wide.load502, ptr %i.ir, align 1, !tbaa !15
  %index.next503 = add nuw i64 %index499, 32      ; 2 uses
  %i.is = icmp eq i64 %index.next503, %n.vec497
  br i1 %i.is, label %middle.block504, label %vector.body498, !llvm.loop !65

middle.block504:                                  ; preds = %vector.body498
  %cmp.n505 = icmp eq i64 %i.il, %n.vec497
  br i1 %cmp.n505, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block504
  %min.epilog.iters.check = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check, label %.lr.ph226.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec497, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec508 = and i64 %i.il, -8                   ; 4 uses
  %i.it = getelementptr i8, ptr %.1369.i, i64 %n.vec508
  %i.iu = getelementptr i8, ptr %.11391.i, i64 %n.vec508
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index509 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next513, %vec.epilog.vector.body ] ; 3 uses
  %next.gep510 = getelementptr i8, ptr %.1369.i, i64 %index509
  %next.gep511 = getelementptr i8, ptr %.11391.i, i64 %index509
  %wide.load512 = load <8 x i8>, ptr %next.gep510, align 1, !tbaa !15
  store <8 x i8> %wide.load512, ptr %next.gep511, align 1, !tbaa !15
  %index.next513 = add nuw i64 %index509, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next513, %n.vec508
  br i1 %i.iv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n514 = icmp eq i64 %i.il, %n.vec508
  br i1 %cmp.n514, label %.loopexit, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i225.ph = phi ptr [ %.1369.i, %iter.check ], [ %i.io, %vec.epilog.iter.check ], [ %i.it, %vec.epilog.middle.block ]
  %.15.i224.ph = phi ptr [ %.11391.i, %iter.check ], [ %i.ip, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ]
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2370.i225 = phi ptr [ %i.iw, %.lr.ph226 ], [ %.2370.i225.ph, %.lr.ph226.preheader ] ; 2 uses
  %.15.i224 = phi ptr [ %i.iy, %.lr.ph226 ], [ %.15.i224.ph, %.lr.ph226.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.2370.i225, i64 1
  %i.ix = load i8, ptr %.2370.i225, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %.15.i224, i64 1 ; 2 uses
  store i8 %i.ix, ptr %.15.i224, align 1, !tbaa !15
  %i.iz = icmp ult ptr %i.iy, %i.ih
  br i1 %i.iz, label %.lr.ph226, label %.loopexit, !llvm.loop !67

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.if, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph226, %middle.block504, %vec.epilog.middle.block, %.preheader, %bb.ap
  %i.ja = icmp eq ptr %i.ih, %i.g
  br i1 %i.ja, label %bb.aw, label %.preheader140

bb.aq:                                            ; preds = %bb.an
  %i.jb = icmp ult i64 %.1367.i, 8
  br i1 %i.jb, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.jc = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.jc, ptr %.11391.i, align 1, !tbaa !15
  %i.jd = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !15
  %i.jg = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !15
  %i.jl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !15
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !37
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.jr = load i32, ptr %i.jp, align 1
  store i32 %i.jr, ptr %i.jq, align 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !37
  %i.ju = sext i32 %i.jt to i64
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jp, i64 %i.jv
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jx = load i64, ptr %.1369.i, align 1
  store i64 %i.jx, ptr %.11391.i, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.3371.i = phi ptr [ %i.jw, %bb.ar ], [ %i.jy, %bb.as ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.ka = load i64, ptr %.3371.i, align 1
  store i64 %i.ka, ptr %i.jz, align 1
  %i.kb = icmp ugt i64 %.13.i, 16
  br i1 %i.kb, label %bb.au, label %.preheader140

bb.au:                                            ; preds = %bb.at
  %i.kc = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.09.i8 = phi ptr [ %i.kc, %bb.au ], [ %i.ke, %bb.av ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.au ], [ %.0.i9, %bb.av ]
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kd = load i64, ptr %.0.i9, align 1
  store i64 %i.kd, ptr %.09.i8, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.kf = icmp ult ptr %i.ke, %i.ia
  br i1 %i.kf, label %bb.av, label %.preheader140, !llvm.loop !1

.preheader140:                                    ; preds = %bb.av, %bb.at, %bb.d, %.loopexit
  %.3.ph = phi ptr [ %0, %bb.d ], [ %.2, %.loopexit ], [ %.2, %bb.at ], [ %.2, %bb.av ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.d ], [ %i.ih, %.loopexit ], [ %i.ia, %bb.at ], [ %i.ia, %bb.av ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kh = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.ki = zext i8 %i.kh to i32                    ; 3 uses
  %i.kj = lshr i32 %i.ki, 4                       ; 2 uses
  %.not439.i218 = icmp eq i32 %i.kj, 15
  br i1 %.not439.i218, label %.thread100, label %.lr.ph220

bb.aw:                                            ; preds = %.thread124, %.loopexit, %bb.ai
  %.18.i = phi ptr [ %i.g, %.loopexit ], [ %i.gw, %bb.ai ], [ %i.gu, %.thread124 ]
  %i.kk = ptrtoint ptr %.18.i to i64
  %i.kl = sub i64 %i.kk, %i.m
  %i.km = trunc i64 %i.kl to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit21, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread96, %.preheader149.preheader, %.preheader146.preheader, %.preheader149, %.preheader146, %.preheader139, %.preheader137, %.preheader139.preheader, %.preheader137.preheader, %bb.aj, %.thread100, %read_variable_length.exit27, %bb.af, %.loopexit154, %read_variable_length.exit33
  %.10 = phi ptr [ %.2, %.loopexit154 ], [ %i.hq, %.preheader137 ], [ %.20, %read_variable_length.exit33 ], [ %i.aj, %.preheader149 ], [ %.18116, %bb.af ], [ %i.fu, %read_variable_length.exit27 ], [ %i.bn, %.preheader146 ], [ %.4105, %.thread100 ], [ %i.fu, %.preheader139 ], [ %.8, %bb.aj ], [ %i.hm, %.preheader137.preheader ], [ %i.fq, %.preheader139.preheader ], [ %i.bd, %bb.k ], [ %i.bn, %read_variable_length.exit21 ], [ %.1691, %bb.m ], [ %i.ac, %bb.f ], [ %.1472, %bb.h ], [ %i.aj, %read_variable_length.exit ], [ %i.af, %.preheader149.preheader ], [ %i.bj, %.preheader146.preheader ], [ %.11, %.thread96 ]
  %i.kn = ptrtoint ptr %.10 to i64
  %i.ko = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.ko, %i.kn
  %i.kp = trunc i64 %.neg.i to i32
  %i.kq = add nsw i32 %i.kp, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.aw, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.kq, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.km, %bb.aw ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %bb.a ], [ %i.by, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.k = phi ptr [ %i.n, %.preheader34 ], [ %i.e, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.o, %.preheader34 ], [ 0, %.thread ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_withPrefix64k:bb.a
  %i.fh = load i8, ptr %.16465, align 1, !tbaa !15 ; 2 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.16465, i64 1 ; 5 uses
  %i.fk = add i64 %.0.i21466, %i.fi               ; 3 uses
  %i.fl = icmp eq i8 %i.fh, -1
  br i1 %i.fl, label %.preheader145, label %read_variable_length.exit23, !llvm.loop !3

read_variable_length.exit23:                      ; preds = %.lr.ph467
  %i.fm = icmp eq i64 %i.fk, -1
  br i1 %i.fm, label %LZ4_wildCopy32.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %read_variable_length.exit23.thread109, %read_variable_length.exit23
  %.016.i19113 = phi i64 [ %i.fg, %read_variable_length.exit23.thread109 ], [ %i.fk, %read_variable_length.exit23 ]
  %.17112 = phi ptr [ %i.ff, %read_variable_length.exit23.thread109 ], [ %i.fj, %read_variable_length.exit23 ] ; 3 uses
  %i.fn = add i64 %.016.i19113, 15                ; 3 uses
  %i.fo = ptrtoint ptr %.7387.i103.ptr to i64
  %i.fp = xor i64 %i.fo, -1
  %i.fq = icmp ugt i64 %i.fn, %i.fp
  %i.fr = ptrtoint ptr %.17112 to i64
  %i.fs = xor i64 %i.fr, -1
  %i.ft = icmp ugt i64 %i.fn, %i.fs
  %or.cond = select i1 %i.fq, i1 true, i1 %i.ft, !prof !44
  br i1 %or.cond, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %bb.ae, %bb.ai, %.loopexit
  %.0364.i104 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i105, %bb.ai ], [ %i.ee, %bb.ae ]
  %.7387.i102.idx = phi i64 [ %.7387.i.idx, %.loopexit ], [ %.7387.i103.idx, %bb.ai ], [ %.6386.i.idx227, %bb.ae ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17112, %bb.ai ], [ %i.ef, %bb.ae ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.fn, %bb.ai ], [ %i.eg, %bb.ae ] ; 2 uses
  %.7387.i102.ptr = getelementptr inbounds i8, ptr %1, i64 %.7387.i102.idx
  %.7387.i102.add = add nsw i64 %.6.i, %.7387.i102.idx
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1368, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i102.ptr, %.loopexit.thread ], [ %.0380.i.ptr.ptr220, %bb.k ] ; 3 uses
  %.3377.i.idx = phi i64 [ %.7387.i102.add, %.loopexit.thread ], [ %.0380.i.add, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i104, %.loopexit.thread ], [ %i.ad, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ap, %bb.k ] ; 4 uses
  %.3377.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.3377.i.idx
  %i.fu = add nsw i64 %i.e, -12
  %i.fv = icmp sgt i64 %.3377.i.idx, %i.fu
  br i1 %i.fv, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %LZ4_wildCopy32.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.fx = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.fy = icmp ugt ptr %i.fw, %i.fx
  br i1 %i.fy, label %bb.ak, label %.preheader144

bb.ak:                                            ; preds = %bb.aj, %LZ4_wildCopy32.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.fz, %i.d
  %i.ga = icmp sgt i64 %.3377.i.idx, %i.e
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.ga
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.n
  %i.ge = trunc i64 %i.gd to i32
  br label %LZ4_decompress_generic.exit

.preheader144:                                    ; preds = %bb.aj, %.preheader144
  %.09.i7 = phi ptr [ %i.gg, %.preheader144 ], [ %.8388.i, %bb.aj ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gh, %.preheader144 ], [ %.6, %bb.aj ] ; 2 uses
  %i.gf = load i64, ptr %.0.i8, align 1
  store i64 %i.gf, ptr %.09.i7, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gi = icmp ult ptr %i.gg, %.3377.i.ptr
  br i1 %i.gi, label %.preheader144, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader144
  %.val36 = load i16, ptr %i.fw, align 1, !tbaa !30
  %i.gj = zext i16 %.val36 to i64                 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %.3377.i.add = sub nsw i64 %.3377.i.idx, %i.gj
  %i.gl = and i32 %.1365.i, 15
  %i.gm = zext nneg i32 %i.gl to i64
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.af, %LZ4_wildCopy8.exit9
  %.7 = phi ptr [ %i.gk, %LZ4_wildCopy8.exit9 ], [ %i.eo, %bb.af ] ; 5 uses
  %.10390.i.idx = phi i64 [ %.3377.i.idx, %LZ4_wildCopy8.exit9 ], [ %.6386.i.add, %bb.af ] ; 2 uses
  %.0368.i.idx = phi i64 [ %.3377.i.add, %LZ4_wildCopy8.exit9 ], [ %.add, %bb.af ]
  %.0366.i = phi i64 [ %i.gj, %LZ4_wildCopy8.exit9 ], [ %i.en, %bb.af ]
  %.10.i = phi i64 [ %i.gm, %LZ4_wildCopy8.exit9 ], [ %i.em, %bb.af ] ; 2 uses
  %.10390.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.10390.i.idx
  %i.gn = icmp eq i64 %.10.i, 15
  br i1 %i.gn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.loopexit147
  %i.go = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i24 = icmp ult ptr %.7, %i.go
  br i1 %.not.i24, label %bb.an, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.an:                                            ; preds = %bb.am
  %i.gp = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i26 = icmp eq i8 %i.gp, -1
  br i1 %.not21.i26, label %.preheader143.preheader, label %bb.ao, !prof !27

.preheader143.preheader:                          ; preds = %bb.an
  %.not22.i28469 = icmp ult ptr %i.gq, %i.go
  br i1 %.not22.i28469, label %.lr.ph472, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.ao:                                            ; preds = %bb.an
  %i.gr = zext i8 %i.gp to i64
  br label %read_variable_length.exit29

.preheader143:                                    ; preds = %.lr.ph472
  %.not22.i28 = icmp ult ptr %i.gu, %i.go
  br i1 %.not22.i28, label %.lr.ph472, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph472:                                        ; preds = %.preheader143.preheader, %.preheader143
  %.0.i27471 = phi i64 [ %i.gv, %.preheader143 ], [ 255, %.preheader143.preheader ]
  %.18470 = phi ptr [ %i.gu, %.preheader143 ], [ %i.gq, %.preheader143.preheader ] ; 2 uses
  %i.gs = load i8, ptr %.18470, align 1, !tbaa !15 ; 2 uses
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.18470, i64 1 ; 4 uses
  %i.gv = add i64 %.0.i27471, %i.gt               ; 2 uses
  %i.gw = icmp eq i8 %i.gs, -1
  br i1 %i.gw, label %.preheader143, label %read_variable_length.exit29, !llvm.loop !3

read_variable_length.exit29:                      ; preds = %.lr.ph472, %bb.ao
  %.19 = phi ptr [ %i.gq, %bb.ao ], [ %i.gu, %.lr.ph472 ] ; 2 uses
  %.016.i25 = phi i64 [ %i.gr, %bb.ao ], [ %i.gv, %.lr.ph472 ] ; 2 uses
  %i.gx = icmp ne i64 %.016.i25, -1               ; 2 uses
  %i.gy = add i64 %.016.i25, 15                   ; 2 uses
  %i.gz = ptrtoint ptr %.10390.i.ptr to i64
  %i.ha = xor i64 %i.gz, -1
  %i.hb = icmp ule i64 %i.gy, %i.ha
  %.11.i = select i1 %i.gx, i64 %i.gy, i64 15
  %.not132 = select i1 %i.gx, i1 %i.hb, i1 false
  br i1 %.not132, label %bb.ap, label %LZ4_wildCopy32.exit.thread

bb.ap:                                            ; preds = %read_variable_length.exit29, %.loopexit147
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit147 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit29 ], [ %.10.i, %.loopexit147 ]
  %i.hc = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.p, %bb.q, %bb.ap
  %.2 = phi ptr [ %.8, %bb.ap ], [ %.1587, %bb.p ], [ %i.bd, %bb.q ] ; 8 uses
  %.11391.i.idx = phi i64 [ %.10390.i.idx, %bb.ap ], [ %.2382.i.idx, %bb.q ], [ %.2382.i.idx, %bb.p ] ; 6 uses
  %.1369.i.idx = phi i64 [ %.0368.i.idx, %bb.ap ], [ %.2382.i.add, %bb.q ], [ %.2382.i.add, %bb.p ] ; 2 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ap ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hc, %bb.ap ], [ %i.bp, %bb.p ], [ %i.bu, %bb.q ] ; 3 uses
  %.11391.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.11391.i.idx ; 9 uses
  %.1369.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.1369.i.idx ; 7 uses
  %i.hd = icmp slt i64 %.1369.i.idx, -65536
  br i1 %i.hd, label %LZ4_wildCopy32.exit.thread, label %bb.aq, !prof !43

bb.aq:                                            ; preds = %.loopexit159
  %.11391.i.add = add nsw i64 %.13.i, %.11391.i.idx ; 9 uses
  %.ptr141 = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add ; 3 uses
  %i.he = icmp ult i64 %.1367.i, 8
  br i1 %i.he, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.11391.i.ptr, align 1, !tbaa !24
  %i.hf = load i8, ptr %.1369.i.ptr, align 1, !tbaa !15
  store i8 %i.hf, ptr %.11391.i.ptr, align 1, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 1
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !15
  %i.hl = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 3
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !15
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !37
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 4
  %i.hu = load i32, ptr %i.hs, align 1
  store i32 %i.hu, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !37
  %i.hx = sext i32 %i.hw to i64
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %i.hs, i64 %i.hy
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ia = load i64, ptr %.1369.i.ptr, align 1
  store i64 %i.ia, ptr %.11391.i.ptr, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.3371.i = phi ptr [ %i.hz, %bb.ar ], [ %i.ib, %bb.as ] ; 6 uses
  %.3371.i477 = ptrtoaddr ptr %.3371.i to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 8 ; 3 uses
  %i.id = add nsw i64 %i.e, -12
  %i.ie = icmp sgt i64 %.11391.i.add, %i.id
  br i1 %i.ie, label %bb.au, label %bb.ax, !prof !27

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 2 uses
  %i.ig = add nsw i64 %i.e, -5
  %i.ih = icmp sgt i64 %.11391.i.add, %i.ig
  br i1 %i.ih, label %LZ4_wildCopy32.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ii = add nsw i64 %.11391.i.idx, 8            ; 2 uses
  %i.ij = add nsw i64 %i.e, -7                    ; 2 uses
  %i.ik = icmp slt i64 %i.ii, %i.ij
  br i1 %i.ik, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.av, %.preheader
  %.09.i = phi ptr [ %i.im, %.preheader ], [ %i.ic, %bb.av ] ; 2 uses
  %.0.i = phi ptr [ %i.in, %.preheader ], [ %.3371.i, %bb.av ] ; 2 uses
  %i.il = load i64, ptr %.0.i, align 1
  store i64 %i.il, ptr %.09.i, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.io = icmp ult ptr %i.im, %i.if
  br i1 %i.io, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.ip = sub i64 %i.e, %.11391.i.idx
  %i.iq = getelementptr i8, ptr %.3371.i, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 -15
  br label %bb.aw

bb.aw:                                            ; preds = %LZ4_wildCopy8.exit, %bb.av
  %.16.i = phi ptr [ %i.if, %LZ4_wildCopy8.exit ], [ %i.ic, %bb.av ] ; 7 uses
  %.4372.i = phi ptr [ %i.ir, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.av ] ; 6 uses
  %i.is = icmp ult ptr %.16.i, %.ptr141
  br i1 %i.is, label %iter.check, label %.preheader146

iter.check:                                       ; preds = %bb.aw
  %i.it = add i64 %.11391.i.idx, %.13.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ij, i64 %i.ii)
  %i.iu = sub i64 %i.it, %smax                    ; 7 uses
  %min.iters.check479 = icmp ult i64 %i.iu, 8
  br i1 %min.iters.check479, label %.lr.ph235.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iv = add i64 %.11391.i.idx, %i.n
  %i.iw = sub i64 %i.iv, %.3371.i477
  %i.ix = add i64 %i.iw, 7
  %diff.check = icmp ult i64 %i.ix, 31
  br i1 %diff.check, label %.lr.ph235.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check480 = icmp ult i64 %i.iu, 32
  br i1 %min.iters.check480, label %vec.epilog.ph, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.iu, 24
  %n.vec482 = and i64 %i.iu, -32                  ; 5 uses
  %i.iz = getelementptr i8, ptr %.4372.i, i64 %n.vec482
  %i.ja = getelementptr i8, ptr %.16.i, i64 %n.vec482
  br label %vector.body483

vector.body483:                                   ; preds = %vector.ph481, %vector.body483
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next488, %vector.body483 ] ; 3 uses
  %next.gep485 = getelementptr i8, ptr %.4372.i, i64 %index484 ; 2 uses
  %next.gep486 = getelementptr i8, ptr %.16.i, i64 %index484 ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep485, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep485, align 1, !tbaa !15
  %wide.load487 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !15
  %i.jc = getelementptr i8, ptr %next.gep486, i64 16
  store <16 x i8> %wide.load, ptr %next.gep486, align 1, !tbaa !15
  store <16 x i8> %wide.load487, ptr %i.jc, align 1, !tbaa !15
  %index.next488 = add nuw i64 %index484, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.jd, label %middle.block489, label %vector.body483, !llvm.loop !74

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %i.iu, %n.vec482
  br i1 %cmp.n490, label %.preheader146, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block489
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph235.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec482, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec493 = and i64 %i.iu, -8                   ; 4 uses
  %i.je = getelementptr i8, ptr %.4372.i, i64 %n.vec493
  %i.jf = getelementptr i8, ptr %.16.i, i64 %n.vec493
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index494 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next498, %vec.epilog.vector.body ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %.4372.i, i64 %index494
  %next.gep496 = getelementptr i8, ptr %.16.i, i64 %index494
  %wide.load497 = load <8 x i8>, ptr %next.gep495, align 1, !tbaa !15
  store <8 x i8> %wide.load497, ptr %next.gep496, align 1, !tbaa !15
  %index.next498 = add nuw i64 %index494, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.jg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n499 = icmp eq i64 %i.iu, %n.vec493
  br i1 %cmp.n499, label %.preheader146, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i234.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.iz, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ]
  %.17.i233.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.ja, %vec.epilog.iter.check ], [ %i.jf, %vec.epilog.middle.block ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.5373.i234 = phi ptr [ %i.jh, %.lr.ph235 ], [ %.5373.i234.ph, %.lr.ph235.preheader ] ; 2 uses
  %.17.i233 = phi ptr [ %i.jj, %.lr.ph235 ], [ %.17.i233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.5373.i234, i64 1
  %i.ji = load i8, ptr %.5373.i234, align 1, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %.17.i233, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.17.i233, align 1, !tbaa !15
  %i.jk = icmp ult ptr %i.jj, %.ptr141
  br i1 %i.jk, label %.lr.ph235, label %.preheader146, !llvm.loop !76

bb.ax:                                            ; preds = %bb.at
  %i.jl = load i64, ptr %.3371.i, align 1
  store i64 %i.jl, ptr %i.ic, align 1
  %i.jm = icmp ugt i64 %.13.i, 16
  br i1 %i.jm, label %bb.ay, label %.preheader146

bb.ay:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 16
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.09.i4 = phi ptr [ %i.jn, %bb.ay ], [ %i.jp, %bb.az ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ay ], [ %.0.i5, %bb.az ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.jo = load i64, ptr %.0.i5, align 1
  store i64 %i.jo, ptr %.09.i4, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.jq = icmp ult ptr %i.jp, %.ptr141
  br i1 %i.jq, label %bb.az, label %.preheader146, !llvm.loop !1

.preheader146:                                    ; preds = %bb.az, %.lr.ph235, %bb.ax, %bb.aw, %vec.epilog.middle.block, %middle.block489, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph235 ], [ %.2, %middle.block489 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.ax ], [ %.2, %bb.aw ], [ %.2, %bb.az ] ; 2 uses
  %.6386.i.idx.ph = phi i64 [ 0, %bb.f ], [ %.11391.i.add, %.lr.ph235 ], [ %.11391.i.add, %middle.block489 ], [ %.11391.i.add, %vec.epilog.middle.block ], [ %.11391.i.add, %bb.ax ], [ %.11391.i.add, %bb.aw ], [ %.11391.i.add, %bb.az ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.js = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i32                    ; 3 uses
  %i.ju = lshr i32 %i.jt, 4                       ; 2 uses
  %.not439.i226 = icmp eq i32 %i.ju, 15
  br i1 %.not439.i226, label %.thread96, label %.lr.ph229

.lr.ph229:                                        ; preds = %.preheader146
  %i.jv = add nsw i64 %i.e, -32
  br label %bb.ae

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader154.preheader, %.preheader151.preheader, %.preheader154, %.preheader151, %.preheader145, %.preheader143, %.preheader145.preheader, %.preheader143.preheader, %bb.am, %.thread96, %read_variable_length.exit23, %bb.ai, %bb.au, %.loopexit159, %read_variable_length.exit29, %bb.ak
  %.9 = phi ptr [ %.6, %bb.ak ], [ %.2, %.loopexit159 ], [ %.2, %bb.au ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader154 ], [ %.17112, %bb.ai ], [ %i.gu, %.preheader143 ], [ %i.fj, %read_variable_length.exit23 ], [ %i.bl, %.preheader151 ], [ %.4101, %.thread96 ], [ %i.fj, %.preheader145 ], [ %.7, %bb.am ], [ %i.gq, %.preheader143.preheader ], [ %i.ff, %.preheader145.preheader ], [ %i.bd, %bb.m ], [ %i.bl, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader154.preheader ], [ %i.bh, %.preheader151.preheader ], [ %.10, %.thread92 ]
  %i.jw = ptrtoint ptr %.9 to i64
  %i.jx = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.jx, %i.jw
  %i.jy = trunc i64 %.neg.i to i32
  %i.jz = add nsw i32 %i.jy, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.al, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.ge, %bb.al ], [ %i.l, %bb.d ], [ -1, %bb.e ], [ %i.jz, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %bb.a ], [ %i.bz, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 15
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.l = phi ptr [ %i.o, %.preheader34 ], [ %i.f, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.p, %.preheader34 ], [ 0, %.thread ]
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.p = add i64 %.0.i2, %i.n                     ; 2 uses
  %i.q = icmp eq i8 %i.m, -1
  br i1 %i.q, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.r = add i64 %i.p, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.o, %read_long_length_no_check.exit ], [ %i.f, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.r, %read_long_length_no_check.exit ], [ %i.j, %.thread ] ; 4 uses
  %i.s = ptrtoint ptr %.086.i to i64
  %i.t = sub i64 %i.d, %i.s
  %i.u = icmp ult i64 %i.t, %.085.i
  br i1 %i.u, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.d, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.v, %i.b
  br i1 %i.aa, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = and i32 %i.h, 15                        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %.val = load i16, ptr %i.w, align 1, !tbaa !30  ; 2 uses
  %i.ad = zext i16 %.val to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.af = icmp eq i32 %i.ab, 15
  br i1 %i.af, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.ag = phi ptr [ %i.aj, %.preheader ], [ %i.ae, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.ak, %.preheader ], [ 0, %bb.e ]
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ak = add i64 %.0.i4, %i.ai                   ; 2 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !5

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.am = add i64 %i.ak, 15
  br label %bb.f

end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_forceExtDict:bb.a
  store i64 %i.gn, ptr %i.gd, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gq = load i64, ptr %i.gp, align 1
  store i64 %i.gq, ptr %i.go, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gt = load i16, ptr %i.gs, align 1
  store i16 %i.gt, ptr %i.gr, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ge, i64 3 ; 2 uses
  %i.gx = load i8, ptr %i.gi, align 1, !tbaa !15
  %i.gy = zext i8 %i.gx to i32                    ; 3 uses
  %i.gz = lshr i32 %i.gy, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.gz, 15
  br i1 %.not439.i, label %.thread99, label %.lr.ph223

.loopexit138:                                     ; preds = %.backedge, %.preheader150
  %.4 = phi ptr [ %i.v, %.preheader150 ], [ %i.cp, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader150 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.x, %.preheader150 ], [ %i.cr, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.z, %.preheader150 ], [ %i.ct, %.backedge ] ; 2 uses
  %i.ha = icmp eq i64 %.4362.i, 15
  br i1 %i.ha, label %.thread99, label %.loopexit138.thread

.thread99:                                        ; preds = %bb.al, %.preheader137, %.loopexit138
  %.0364.i108 = phi i32 [ %.0364.i, %.loopexit138 ], [ %i.ng, %.preheader137 ], [ %i.gy, %bb.al ]
  %.7387.i106 = phi ptr [ %.7387.i, %.loopexit138 ], [ %.6386.i.ph, %.preheader137 ], [ %i.gv, %bb.al ] ; 2 uses
  %.4104 = phi ptr [ %.4, %.loopexit138 ], [ %i.ne, %.preheader137 ], [ %i.gw, %bb.al ] ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %.not.i21 = icmp ult ptr %.4104, %i.hb
  br i1 %.not.i21, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %.thread99
  %i.hc = load i8, ptr %.4104, align 1, !tbaa !15 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.4104, i64 1 ; 4 uses
  %.not21.i23 = icmp eq i8 %i.hc, -1
  br i1 %.not21.i23, label %.preheader136.preheader, label %read_variable_length.exit26.thread112, !prof !27

.preheader136.preheader:                          ; preds = %bb.am
  %.not22.i25510 = icmp ult ptr %i.hd, %i.hb
  br i1 %.not22.i25510, label %.lr.ph513, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit26.thread112:            ; preds = %bb.am
  %i.he = zext i8 %i.hc to i64
  br label %bb.an

.preheader136:                                    ; preds = %.lr.ph513
  %.not22.i25 = icmp ult ptr %i.hh, %i.hb
  br i1 %.not22.i25, label %.lr.ph513, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph513:                                        ; preds = %.preheader136.preheader, %.preheader136
  %.0.i24512 = phi i64 [ %i.hi, %.preheader136 ], [ 255, %.preheader136.preheader ]
  %.16511 = phi ptr [ %i.hh, %.preheader136 ], [ %i.hd, %.preheader136.preheader ] ; 2 uses
  %i.hf = load i8, ptr %.16511, align 1, !tbaa !15 ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.16511, i64 1 ; 5 uses
  %i.hi = add i64 %.0.i24512, %i.hg               ; 3 uses
  %i.hj = icmp eq i8 %i.hf, -1
  br i1 %i.hj, label %.preheader136, label %read_variable_length.exit26, !llvm.loop !3

read_variable_length.exit26:                      ; preds = %.lr.ph513
  %i.hk = icmp eq i64 %i.hi, -1
  br i1 %i.hk, label %LZ4_wildCopy32.exit.thread, label %bb.an

bb.an:                                            ; preds = %read_variable_length.exit26.thread112, %read_variable_length.exit26
  %.016.i22116 = phi i64 [ %i.he, %read_variable_length.exit26.thread112 ], [ %i.hi, %read_variable_length.exit26 ]
  %.17115 = phi ptr [ %i.hd, %read_variable_length.exit26.thread112 ], [ %i.hh, %read_variable_length.exit26 ] ; 3 uses
  %i.hl = add i64 %.016.i22116, 15                ; 3 uses
  %i.hm = ptrtoint ptr %.7387.i106 to i64
  %i.hn = xor i64 %i.hm, -1
  %i.ho = icmp ugt i64 %i.hl, %i.hn
  %i.hp = ptrtoint ptr %.17115 to i64
  %i.hq = xor i64 %i.hp, -1
  %i.hr = icmp ugt i64 %i.hl, %i.hq
  %or.cond127 = select i1 %i.ho, i1 true, i1 %i.hr, !prof !44
  br i1 %or.cond127, label %LZ4_wildCopy32.exit.thread, label %.loopexit138.thread, !prof !44

.loopexit138.thread:                              ; preds = %.lr.ph223, %bb.an, %.loopexit138
  %.0364.i107 = phi i32 [ %.0364.i, %.loopexit138 ], [ %.0364.i108, %bb.an ], [ %i.fx, %.lr.ph223 ]
  %.7387.i105 = phi ptr [ %.7387.i, %.loopexit138 ], [ %.7387.i106, %bb.an ], [ %.6386.i222, %.lr.ph223 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit138 ], [ %.17115, %bb.an ], [ %i.fy, %.lr.ph223 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit138 ], [ %i.hl, %bb.an ], [ %i.fz, %.lr.ph223 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.7387.i105, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit138.thread
  %.6 = phi ptr [ %.5, %.loopexit138.thread ], [ %.1371, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i105, %.loopexit138.thread ], [ %.0380.i215, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.hs, %.loopexit138.thread ], [ %i.aw, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i107, %.loopexit138.thread ], [ %i.aj, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit138.thread ], [ %i.av, %bb.k ] ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.hu = icmp ugt ptr %.3377.i, %i.ht
  br i1 %i.hu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %LZ4_wildCopy32.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.hx = icmp ugt ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ap, label %.preheader135

bb.ap:                                            ; preds = %bb.ao, %LZ4_wildCopy32.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.hy, %i.d
  %i.hz = icmp ugt ptr %.3377.i, %i.f
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.hz
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.s
  %i.id = trunc i64 %i.ic to i32
  br label %LZ4_decompress_generic.exit

.preheader135:                                    ; preds = %bb.ao, %.preheader135
  %.09.i10 = phi ptr [ %i.if, %.preheader135 ], [ %.8388.i, %bb.ao ] ; 2 uses
  %.0.i11 = phi ptr [ %i.ig, %.preheader135 ], [ %.6, %bb.ao ] ; 2 uses
  %i.ie = load i64, ptr %.0.i11, align 1
  store i64 %i.ie, ptr %.09.i10, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.09.i10, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i11, i64 8
  %i.ih = icmp ult ptr %i.if, %.3377.i
  br i1 %i.ih, label %.preheader135, label %LZ4_wildCopy8.exit12, !llvm.loop !1

LZ4_wildCopy8.exit12:                             ; preds = %.preheader135
  %.val39 = load i16, ptr %i.hv, align 1, !tbaa !30
  %i.ii = zext i16 %.val39 to i64                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.ik = sub nsw i64 0, %i.ii
  %i.il = getelementptr inbounds i8, ptr %.3377.i, i64 %i.ik
  %i.im = and i32 %.1365.i, 15
  %i.in = zext nneg i32 %i.im to i64
  br label %.loopexit139

.loopexit139:                                     ; preds = %bb.ak, %LZ4_wildCopy8.exit12
  %.7 = phi ptr [ %i.ij, %LZ4_wildCopy8.exit12 ], [ %i.gi, %bb.ak ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit12 ], [ %i.gd, %bb.ak ] ; 2 uses
  %.0368.i = phi ptr [ %i.il, %LZ4_wildCopy8.exit12 ], [ %i.gk, %bb.ak ]
  %.0366.i = phi i64 [ %i.ii, %LZ4_wildCopy8.exit12 ], [ %i.gh, %bb.ak ]
  %.10.i = phi i64 [ %i.in, %LZ4_wildCopy8.exit12 ], [ %i.gg, %bb.ak ] ; 2 uses
  %i.io = icmp eq i64 %.10.i, 15
  br i1 %i.io, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit139
  %i.ip = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i27 = icmp ult ptr %.7, %i.ip
  br i1 %.not.i27, label %bb.as, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.as:                                            ; preds = %bb.ar
  %i.iq = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i29 = icmp eq i8 %i.iq, -1
  br i1 %.not21.i29, label %.preheader134.preheader, label %bb.at, !prof !27

.preheader134.preheader:                          ; preds = %bb.as
  %.not22.i31515 = icmp ult ptr %i.ir, %i.ip
  br i1 %.not22.i31515, label %.lr.ph518, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.at:                                            ; preds = %bb.as
  %i.is = zext i8 %i.iq to i64
  br label %read_variable_length.exit32

.preheader134:                                    ; preds = %.lr.ph518
  %.not22.i31 = icmp ult ptr %i.iv, %i.ip
  br i1 %.not22.i31, label %.lr.ph518, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph518:                                        ; preds = %.preheader134.preheader, %.preheader134
  %.0.i30517 = phi i64 [ %i.iw, %.preheader134 ], [ 255, %.preheader134.preheader ]
  %.18516 = phi ptr [ %i.iv, %.preheader134 ], [ %i.ir, %.preheader134.preheader ] ; 2 uses
  %i.it = load i8, ptr %.18516, align 1, !tbaa !15 ; 2 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.18516, i64 1 ; 4 uses
  %i.iw = add i64 %.0.i30517, %i.iu               ; 2 uses
  %i.ix = icmp eq i8 %i.it, -1
  br i1 %i.ix, label %.preheader134, label %read_variable_length.exit32, !llvm.loop !3

read_variable_length.exit32:                      ; preds = %.lr.ph518, %bb.at
  %.19 = phi ptr [ %i.ir, %bb.at ], [ %i.iv, %.lr.ph518 ] ; 2 uses
  %.016.i28 = phi i64 [ %i.is, %bb.at ], [ %i.iw, %.lr.ph518 ] ; 2 uses
  %i.iy = icmp ne i64 %.016.i28, -1               ; 2 uses
  %i.iz = add i64 %.016.i28, 15                   ; 2 uses
  %i.ja = ptrtoint ptr %.10390.i to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ule i64 %i.iz, %i.jb
  %.11.i = select i1 %i.iy, i64 %i.iz, i64 15
  %.not131 = select i1 %i.iy, i1 %i.jc, i1 false
  br i1 %.not131, label %bb.au, label %LZ4_wildCopy32.exit.thread

bb.au:                                            ; preds = %read_variable_length.exit32, %.loopexit139
  %.8 = phi ptr [ %.19, %read_variable_length.exit32 ], [ %.7, %.loopexit139 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit32 ], [ %.10.i, %.loopexit139 ]
  %i.jd = add i64 %.12.i, 4
  br label %.loopexit153

.loopexit153:                                     ; preds = %bb.p, %bb.q, %bb.au
  %.2 = phi ptr [ %.8, %bb.au ], [ %.1590, %bb.p ], [ %i.bl, %bb.q ] ; 14 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.au ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 14 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.au ], [ %i.bn, %bb.q ], [ %i.bn, %bb.p ] ; 10 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.au ], [ %i.bk, %bb.q ], [ %i.bk, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.jd, %bb.au ], [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 7 uses
  %.11391.i547 = ptrtoaddr ptr %.11391.i to i64   ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %5
  %i.jf = icmp ult ptr %i.je, %1
  %or.cond463.i = select i1 %i.j, i1 %i.jf, i1 false, !prof !43
  br i1 %or.cond463.i, label %LZ4_wildCopy32.exit.thread, label %bb.av, !prof !43

bb.av:                                            ; preds = %.loopexit153
  %i.jg = icmp ult ptr %.1369.i, %1
  %i.jh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 15 uses
  br i1 %i.jg, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.ji = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.jj = icmp ugt ptr %i.jh, %i.ji
  br i1 %i.jj, label %LZ4_wildCopy32.exit.thread, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.jk = ptrtoint ptr %.1369.i to i64            ; 3 uses
  %i.jl = sub i64 %i.s, %i.jk                     ; 6 uses
  %.not446.i = icmp ugt i64 %.13.i, %i.jl
  br i1 %.not446.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jm = sub i64 0, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.i, i64 %i.jm
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.jn, i64 %.13.i, i1 false)
  br label %.preheader137

bb.az:                                            ; preds = %bb.ax
  %i.jo = sub nuw i64 %.13.i, %i.jl               ; 2 uses
  %i.jp = sub i64 0, %i.jl
  %i.jq = getelementptr inbounds i8, ptr %i.i, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.jq, i64 %i.jl, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.jl ; 7 uses
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = sub i64 %i.js, %i.s                     ; 2 uses
  %i.ju = icmp ugt i64 %i.jo, %i.jt
  br i1 %i.ju, label %iter.check606, label %bb.ba

iter.check606:                                    ; preds = %bb.az
  %i.jv = add i64 %.11391.i547, %i.s
  %i.jw = add i64 %i.jv, 1
  %i.jx = sub i64 %i.jw, %i.jk
  %i.jy = add i64 %.13.i, %.11391.i547
  %umax587 = tail call i64 @llvm.umax.i64(i64 %i.jx, i64 %i.jy)
  %i.jz = add i64 %umax587, %i.jk
  %i.ka = add i64 %.11391.i547, %i.s
  %i.kb = sub i64 %i.jz, %i.ka                    ; 7 uses
  %min.iters.check589 = icmp ult i64 %i.kb, 8
  %i.kc = add i64 %i.jt, -1
  %diff.check586 = icmp ult i64 %i.kc, 31
  %or.cond623 = or i1 %min.iters.check589, %diff.check586
  br i1 %or.cond623, label %.lr.ph232.preheader, label %vector.main.loop.iter.check590

vector.main.loop.iter.check590:                   ; preds = %iter.check606
  %min.iters.check591 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check591, label %vec.epilog.ph610, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check590
  %i.kd = and i64 %i.kb, 24
  %n.vec593 = and i64 %i.kb, -32                  ; 5 uses
  %i.ke = getelementptr i8, ptr %1, i64 %n.vec593
  %i.kf = getelementptr i8, ptr %i.jr, i64 %n.vec593 ; 2 uses
  br label %vector.body594

vector.body594:                                   ; preds = %vector.ph592, %vector.body594
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next600, %vector.body594 ] ; 3 uses
  %next.gep596 = getelementptr i8, ptr %1, i64 %index595 ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.jr, i64 %index595 ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep596, i64 16
  %wide.load598 = load <16 x i8>, ptr %next.gep596, align 1, !tbaa !15
  %wide.load599 = load <16 x i8>, ptr %i.kg, align 1, !tbaa !15
  %i.kh = getelementptr i8, ptr %next.gep597, i64 16
  store <16 x i8> %wide.load598, ptr %next.gep597, align 1, !tbaa !15
  store <16 x i8> %wide.load599, ptr %i.kh, align 1, !tbaa !15
  %index.next600 = add nuw i64 %index595, 32      ; 2 uses
  %i.ki = icmp eq i64 %index.next600, %n.vec593
  br i1 %i.ki, label %middle.block601, label %vector.body594, !llvm.loop !86

middle.block601:                                  ; preds = %vector.body594
  %cmp.n602 = icmp eq i64 %i.kb, %n.vec593
  br i1 %cmp.n602, label %.preheader137, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block601
  %min.epilog.iters.check609 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check609, label %.lr.ph232.preheader, label %vec.epilog.ph610, !prof !45

vec.epilog.ph610:                                 ; preds = %vector.main.loop.iter.check590, %vec.epilog.iter.check608
  %vec.epilog.resume.val603 = phi i64 [ %n.vec593, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check590 ]
  %n.vec611 = and i64 %i.kb, -8                   ; 4 uses
  %i.kj = getelementptr i8, ptr %1, i64 %n.vec611
  %i.kk = getelementptr i8, ptr %i.jr, i64 %n.vec611 ; 2 uses
  br label %vec.epilog.vector.body612

vec.epilog.vector.body612:                        ; preds = %vec.epilog.vector.body612, %vec.epilog.ph610
  %index613 = phi i64 [ %vec.epilog.resume.val603, %vec.epilog.ph610 ], [ %index.next617, %vec.epilog.vector.body612 ] ; 3 uses
  %next.gep614 = getelementptr i8, ptr %1, i64 %index613
  %next.gep615 = getelementptr i8, ptr %i.jr, i64 %index613
  %wide.load616 = load <8 x i8>, ptr %next.gep614, align 1, !tbaa !15
  store <8 x i8> %wide.load616, ptr %next.gep615, align 1, !tbaa !15
  %index.next617 = add nuw i64 %index613, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next617, %n.vec611
  br i1 %i.kl, label %vec.epilog.middle.block618, label %vec.epilog.vector.body612, !llvm.loop !87

vec.epilog.middle.block618:                       ; preds = %vec.epilog.vector.body612
  %cmp.n619 = icmp eq i64 %i.kb, %n.vec611
  br i1 %cmp.n619, label %.preheader137, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check606, %vec.epilog.iter.check608, %vec.epilog.middle.block618
  %.0.i231.ph = phi ptr [ %1, %iter.check606 ], [ %i.ke, %vec.epilog.iter.check608 ], [ %i.kj, %vec.epilog.middle.block618 ]
  %.12392.i230.ph = phi ptr [ %i.jr, %iter.check606 ], [ %i.kf, %vec.epilog.iter.check608 ], [ %i.kk, %vec.epilog.middle.block618 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %.0.i231 = phi ptr [ %i.km, %.lr.ph232 ], [ %.0.i231.ph, %.lr.ph232.preheader ] ; 2 uses
  %.12392.i230 = phi ptr [ %i.ko, %.lr.ph232 ], [ %.12392.i230.ph, %.lr.ph232.preheader ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i231, i64 1
  %i.kn = load i8, ptr %.0.i231, align 1, !tbaa !15
  %i.ko = getelementptr inbounds nuw i8, ptr %.12392.i230, i64 1 ; 3 uses
  store i8 %i.kn, ptr %.12392.i230, align 1, !tbaa !15
  %i.kp = icmp ult ptr %i.ko, %i.jh
  br i1 %i.kp, label %.lr.ph232, label %.preheader137, !llvm.loop !88

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr nonnull align 1 %1, i64 %i.jo, i1 false)
  br label %.preheader137

bb.bb:                                            ; preds = %bb.av
  %i.kq = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.kr = icmp ult i64 %.1367.i, 8
  br i1 %i.kr, label %bb.bc, label %bb.bd, !prof !27

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.ks = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.ks, ptr %.11391.i, align 1, !tbaa !15
  %i.kt = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !15
  %i.ky = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !15
  %i.kz = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !15
  %i.lb = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !15
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !37
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.lh = load i32, ptr %i.lf, align 1
  store i32 %i.lh, ptr %i.lg, align 1
  %i.li = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !37
  %i.lk = sext i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.lf, i64 %i.ll
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ln = load i64, ptr %.1369.i, align 1
  store i64 %i.ln, ptr %.11391.i, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3371.i = phi ptr [ %i.lm, %bb.bc ], [ %i.lo, %bb.bd ] ; 6 uses
  %.3371.i548 = ptrtoaddr ptr %.3371.i to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.lq = icmp ugt ptr %i.jh, %i.kq
  br i1 %i.lq, label %bb.bf, label %bb.bi, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.lr = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.ls = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.lt = icmp ugt ptr %i.jh, %i.ls
  br i1 %i.lt, label %LZ4_wildCopy32.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lu = icmp ult ptr %i.lp, %i.lr
  br i1 %i.lu, label %.preheader132, label %bb.bh

.preheader132:                                    ; preds = %bb.bg, %.preheader132
  %.09.i = phi ptr [ %i.lw, %.preheader132 ], [ %i.lp, %bb.bg ] ; 2 uses
  %.0.i6 = phi ptr [ %i.lx, %.preheader132 ], [ %.3371.i, %bb.bg ] ; 2 uses
  %i.lv = load i64, ptr %.0.i6, align 1
  store i64 %i.lv, ptr %.09.i, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.ly = icmp ult ptr %i.lw, %i.lr
  br i1 %i.ly, label %.preheader132, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader132
  %i.lz = ptrtoint ptr %i.lr to i64
  %i.ma = ptrtoint ptr %i.lp to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds i8, ptr %.3371.i, i64 %i.mb
  br label %bb.bh

bb.bh:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bg
  %.16.i = phi ptr [ %i.lr, %LZ4_wildCopy8.exit ], [ %i.lp, %bb.bg ] ; 7 uses
  %.4372.i = phi ptr [ %i.mc, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.bg ] ; 6 uses
  %i.md = icmp ult ptr %.16.i, %i.jh
  br i1 %i.md, label %iter.check569, label %.preheader137

iter.check569:                                    ; preds = %bb.bh
  %i.me = add i64 %.13.i, %.11391.i547
  %i.mf = add i64 %i.s, %i.e
  %i.mg = add i64 %i.mf, -7
  %i.mh = add i64 %.11391.i547, 8
  %umax550 = tail call i64 @llvm.umax.i64(i64 %i.mg, i64 %i.mh)
  %i.mi = sub i64 %i.me, %umax550                 ; 7 uses
  %min.iters.check552 = icmp ult i64 %i.mi, 8
  br i1 %min.iters.check552, label %.lr.ph229.preheader, label %vector.memcheck546

vector.memcheck546:                               ; preds = %iter.check569
  %i.mj = sub i64 %.11391.i547, %.3371.i548
  %i.mk = add i64 %i.mj, 7
  %diff.check549 = icmp ult i64 %i.mk, 31
  br i1 %diff.check549, label %.lr.ph229.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %vector.memcheck546
  %min.iters.check554 = icmp ult i64 %i.mi, 32
  br i1 %min.iters.check554, label %vec.epilog.ph573, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %i.ml = and i64 %i.mi, 24
  %n.vec556 = and i64 %i.mi, -32                  ; 5 uses
  %i.mm = getelementptr i8, ptr %.4372.i, i64 %n.vec556
  %i.mn = getelementptr i8, ptr %.16.i, i64 %n.vec556
  br label %vector.body557

vector.body557:                                   ; preds = %vector.ph555, %vector.body557
  %index558 = phi i64 [ 0, %vector.ph555 ], [ %index.next563, %vector.body557 ] ; 3 uses
  %next.gep559 = getelementptr i8, ptr %.4372.i, i64 %index558 ; 2 uses
  %next.gep560 = getelementptr i8, ptr %.16.i, i64 %index558 ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep559, i64 16
  %wide.load561 = load <16 x i8>, ptr %next.gep559, align 1, !tbaa !15
  %wide.load562 = load <16 x i8>, ptr %i.mo, align 1, !tbaa !15
  %i.mp = getelementptr i8, ptr %next.gep560, i64 16
  store <16 x i8> %wide.load561, ptr %next.gep560, align 1, !tbaa !15
  store <16 x i8> %wide.load562, ptr %i.mp, align 1, !tbaa !15
  %index.next563 = add nuw i64 %index558, 32      ; 2 uses
  %i.mq = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.mq, label %middle.block564, label %vector.body557, !llvm.loop !89

middle.block564:                                  ; preds = %vector.body557
  %cmp.n565 = icmp eq i64 %i.mi, %n.vec556
  br i1 %cmp.n565, label %.preheader137, label %vec.epilog.iter.check571

vec.epilog.iter.check571:                         ; preds = %middle.block564
  %min.epilog.iters.check572 = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check572, label %.lr.ph229.preheader, label %vec.epilog.ph573, !prof !45

vec.epilog.ph573:                                 ; preds = %vector.main.loop.iter.check553, %vec.epilog.iter.check571
  %vec.epilog.resume.val566 = phi i64 [ %n.vec556, %vec.epilog.iter.check571 ], [ 0, %vector.main.loop.iter.check553 ]
  %n.vec574 = and i64 %i.mi, -8                   ; 4 uses
  %i.mr = getelementptr i8, ptr %.4372.i, i64 %n.vec574
  %i.ms = getelementptr i8, ptr %.16.i, i64 %n.vec574
  br label %vec.epilog.vector.body575

vec.epilog.vector.body575:                        ; preds = %vec.epilog.vector.body575, %vec.epilog.ph573
  %index576 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph573 ], [ %index.next580, %vec.epilog.vector.body575 ] ; 3 uses
  %next.gep577 = getelementptr i8, ptr %.4372.i, i64 %index576
  %next.gep578 = getelementptr i8, ptr %.16.i, i64 %index576
  %wide.load579 = load <8 x i8>, ptr %next.gep577, align 1, !tbaa !15
  store <8 x i8> %wide.load579, ptr %next.gep578, align 1, !tbaa !15
  %index.next580 = add nuw i64 %index576, 8       ; 2 uses
  %i.mt = icmp eq i64 %index.next580, %n.vec574
  br i1 %i.mt, label %vec.epilog.middle.block581, label %vec.epilog.vector.body575, !llvm.loop !90

vec.epilog.middle.block581:                       ; preds = %vec.epilog.vector.body575
  %cmp.n582 = icmp eq i64 %i.mi, %n.vec574
  br i1 %cmp.n582, label %.preheader137, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %iter.check569, %vector.memcheck546, %vec.epilog.iter.check571, %vec.epilog.middle.block581
  %.5373.i228.ph = phi ptr [ %.4372.i, %iter.check569 ], [ %.4372.i, %vector.memcheck546 ], [ %i.mm, %vec.epilog.iter.check571 ], [ %i.mr, %vec.epilog.middle.block581 ]
  %.17.i227.ph = phi ptr [ %.16.i, %iter.check569 ], [ %.16.i, %vector.memcheck546 ], [ %i.mn, %vec.epilog.iter.check571 ], [ %i.ms, %vec.epilog.middle.block581 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.5373.i228 = phi ptr [ %i.mu, %.lr.ph229 ], [ %.5373.i228.ph, %.lr.ph229.preheader ] ; 2 uses
  %.17.i227 = phi ptr [ %i.mw, %.lr.ph229 ], [ %.17.i227.ph, %.lr.ph229.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.5373.i228, i64 1
  %i.mv = load i8, ptr %.5373.i228, align 1, !tbaa !15
  %i.mw = getelementptr inbounds nuw i8, ptr %.17.i227, i64 1 ; 2 uses
  store i8 %i.mv, ptr %.17.i227, align 1, !tbaa !15
  %i.mx = icmp ult ptr %i.mw, %i.jh
  br i1 %i.mx, label %.lr.ph229, label %.preheader137, !llvm.loop !91

bb.bi:                                            ; preds = %bb.be
  %i.my = load i64, ptr %.3371.i, align 1
  store i64 %i.my, ptr %i.lp, align 1
  %i.mz = icmp ugt i64 %.13.i, 16
  br i1 %i.mz, label %bb.bj, label %.preheader137

bb.bj:                                            ; preds = %bb.bi
  %i.na = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.09.i7 = phi ptr [ %i.na, %bb.bj ], [ %i.nc, %bb.bk ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.bj ], [ %.0.i8, %bb.bk ]
  %.0.i8 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.nb = load i64, ptr %.0.i8, align 1
  store i64 %i.nb, ptr %.09.i7, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.nd = icmp ult ptr %i.nc, %i.jh
  br i1 %i.nd, label %bb.bk, label %.preheader137, !llvm.loop !1

.preheader137:                                    ; preds = %bb.bk, %.lr.ph229, %.lr.ph232, %bb.bi, %bb.bh, %vec.epilog.middle.block581, %middle.block564, %bb.ay, %bb.ba, %vec.epilog.middle.block618, %middle.block601, %bb.f
  %.3.ph = phi ptr [ %.2, %bb.ay ], [ %0, %bb.f ], [ %.2, %middle.block601 ], [ %.2, %vec.epilog.middle.block618 ], [ %.2, %bb.bi ], [ %.2, %bb.ba ], [ %.2, %.lr.ph232 ], [ %.2, %middle.block564 ], [ %.2, %vec.epilog.middle.block581 ], [ %.2, %.lr.ph229 ], [ %.2, %bb.bh ], [ %.2, %bb.bk ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.jh, %bb.ay ], [ %1, %bb.f ], [ %i.kf, %middle.block601 ], [ %i.kk, %vec.epilog.middle.block618 ], [ %i.jh, %bb.bi ], [ %i.jh, %bb.ba ], [ %i.ko, %.lr.ph232 ], [ %i.jh, %middle.block564 ], [ %i.jh, %vec.epilog.middle.block581 ], [ %i.jh, %.lr.ph229 ], [ %i.jh, %bb.bh ], [ %i.jh, %bb.bk ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.nf = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.ng = zext i8 %i.nf to i32                    ; 3 uses
  %i.nh = lshr i32 %i.ng, 4                       ; 2 uses
  %.not439.i221 = icmp eq i32 %i.nh, 15
  br i1 %.not439.i221, label %.thread99, label %.lr.ph223

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit20, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %bb.u, %.thread95, %.preheader148.preheader, %.preheader145.preheader, %.preheader148, %.preheader145, %.preheader136, %.preheader134, %.preheader136.preheader, %.preheader134.preheader, %bb.ar, %.thread99, %read_variable_length.exit26, %bb.an, %bb.bf, %bb.aw, %.loopexit153, %read_variable_length.exit32, %bb.ap
  %.9 = phi ptr [ %.6, %bb.ap ], [ %.2, %.loopexit153 ], [ %.4104, %.thread99 ], [ %.2, %bb.aw ], [ %.19, %read_variable_length.exit32 ], [ %i.ar, %.preheader148 ], [ %.17115, %bb.an ], [ %.2, %bb.bf ], [ %i.iv, %.preheader134 ], [ %i.hh, %read_variable_length.exit26 ], [ %.7, %bb.ar ], [ %i.hh, %.preheader136 ], [ %i.bv, %.preheader145 ], [ %i.ir, %.preheader134.preheader ], [ %i.hd, %.preheader136.preheader ], [ %i.bl, %bb.m ], [ %i.bv, %read_variable_length.exit20 ], [ %.1590, %bb.o ], [ %i.ak, %bb.h ], [ %.1371, %bb.j ], [ %i.ar, %read_variable_length.exit ], [ %.10, %.thread95 ], [ %i.an, %.preheader148.preheader ], [ %i.br, %.preheader145.preheader ], [ %.10, %bb.u ]
  %i.ni = ptrtoint ptr %.9 to i64
  %i.nj = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.nj, %i.ni
  %i.nk = trunc i64 %.neg.i to i32
  %i.nl = add nsw i32 %i.nk, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.aq, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.id, %bb.aq ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %i.nl, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.h = icmp eq ptr %5, null
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 4 uses
  %i.k = icmp ult i64 %6, 65536                   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.n = icmp eq i32 %i.a, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %LZ4_decompress_generic.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.q = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.r = icmp samesign ult i32 %i.a, 64
  br i1 %i.r, label %.preheader144, label %.preheader156

.preheader156:                                    ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit145, label %.lr.ph222

.lr.ph222:                                        ; preds = %.preheader156
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.ab = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.ae = add i64 %i.q, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph222, %.backedge
  %i.af = phi i64 [ %i.x, %.lr.ph222 ], [ %i.cr, %.backedge ] ; 2 uses
  %i.ag = phi i32 [ %i.w, %.lr.ph222 ], [ %i.cq, %.backedge ]
  %i.ah = phi i32 [ %i.v, %.lr.ph222 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %.lr.ph222 ], [ %i.cn, %.backedge ] ; 5 uses
  %.0380.i221 = phi ptr [ %1, %.lr.ph222 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0220 = phi ptr [ %0, %.lr.ph222 ], [ %.0.be, %.backedge ]
  %i.aj = icmp eq i32 %i.ag, 15
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i17 = icmp ult ptr %i.ai, %i.z
  br i1 %.not.i17, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0220, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ak, -1
  br i1 %.not21.i, label %.preheader154.preheader, label %read_variable_length.exit.thread72, !prof !27

.preheader154.preheader:                          ; preds = %bb.g
  %.not22.i501 = icmp ult ptr %i.al, %i.z
  br i1 %.not22.i501, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread72:               ; preds = %bb.g
  %i.am = zext i8 %i.ak to i64
  br label %bb.h

.preheader154:                                    ; preds = %.lr.ph504
  %.not22.i = icmp ult ptr %i.ap, %i.z
  br i1 %.not22.i, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3
end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_partial_forceExtDict:bb.a
  %.7387.i = phi ptr [ %1, %.preheader156 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.v, %.preheader156 ], [ %i.cp, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.x, %.preheader156 ], [ %i.cr, %.backedge ] ; 2 uses
  %i.he = icmp eq i64 %.4362.i, 15
  br i1 %i.he, label %.thread103, label %.loopexit145.thread

.thread103:                                       ; preds = %bb.ak, %.preheader144, %.loopexit145
  %.0364.i112 = phi i32 [ %.0364.i, %.loopexit145 ], [ %i.np, %.preheader144 ], [ %i.hc, %bb.ak ]
  %.7387.i110 = phi ptr [ %.7387.i, %.loopexit145 ], [ %.6386.i.ph, %.preheader144 ], [ %i.gz, %bb.ak ] ; 2 uses
  %.4108 = phi ptr [ %.4, %.loopexit145 ], [ %i.nn, %.preheader144 ], [ %i.ha, %bb.ak ] ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %.not.i25 = icmp ult ptr %.4108, %i.hf
  br i1 %.not.i25, label %bb.al, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.al:                                            ; preds = %.thread103
  %i.hg = load i8, ptr %.4108, align 1, !tbaa !15 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.4108, i64 1 ; 4 uses
  %.not21.i27 = icmp eq i8 %i.hg, -1
  br i1 %.not21.i27, label %.preheader143.preheader, label %read_variable_length.exit30.thread116, !prof !27

.preheader143.preheader:                          ; preds = %bb.al
  %.not22.i29512 = icmp ult ptr %i.hh, %i.hf
  br i1 %.not22.i29512, label %.lr.ph515, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit30.thread116:            ; preds = %bb.al
  %i.hi = zext i8 %i.hg to i64
  br label %bb.am

.preheader143:                                    ; preds = %.lr.ph515
  %.not22.i29 = icmp ult ptr %i.hl, %i.hf
  br i1 %.not22.i29, label %.lr.ph515, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph515:                                        ; preds = %.preheader143.preheader, %.preheader143
  %.0.i28514 = phi i64 [ %i.hm, %.preheader143 ], [ 255, %.preheader143.preheader ]
  %.17513 = phi ptr [ %i.hl, %.preheader143 ], [ %i.hh, %.preheader143.preheader ] ; 2 uses
  %i.hj = load i8, ptr %.17513, align 1, !tbaa !15 ; 2 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.17513, i64 1 ; 5 uses
  %i.hm = add i64 %.0.i28514, %i.hk               ; 3 uses
  %i.hn = icmp eq i8 %i.hj, -1
  br i1 %i.hn, label %.preheader143, label %read_variable_length.exit30, !llvm.loop !3

read_variable_length.exit30:                      ; preds = %.lr.ph515
  %i.ho = icmp eq i64 %i.hm, -1
  br i1 %i.ho, label %LZ4_wildCopy32.exit.thread, label %bb.am

bb.am:                                            ; preds = %read_variable_length.exit30.thread116, %read_variable_length.exit30
  %.016.i26120 = phi i64 [ %i.hi, %read_variable_length.exit30.thread116 ], [ %i.hm, %read_variable_length.exit30 ]
  %.18119 = phi ptr [ %i.hh, %read_variable_length.exit30.thread116 ], [ %i.hl, %read_variable_length.exit30 ] ; 3 uses
  %i.hp = add i64 %.016.i26120, 15                ; 3 uses
  %i.hq = ptrtoint ptr %.7387.i110 to i64
  %i.hr = xor i64 %i.hq, -1
  %i.hs = icmp ugt i64 %i.hp, %i.hr
  %i.ht = ptrtoint ptr %.18119 to i64
  %i.hu = xor i64 %i.ht, -1
  %i.hv = icmp ugt i64 %i.hp, %i.hu
  %or.cond135 = select i1 %i.hs, i1 true, i1 %i.hv, !prof !44
  br i1 %or.cond135, label %LZ4_wildCopy32.exit.thread, label %.loopexit145.thread, !prof !44

.loopexit145.thread:                              ; preds = %.lr.ph229, %bb.am, %.loopexit145
  %.0364.i111 = phi i32 [ %.0364.i, %.loopexit145 ], [ %.0364.i112, %bb.am ], [ %i.gb, %.lr.ph229 ]
  %.7387.i109 = phi ptr [ %.7387.i, %.loopexit145 ], [ %.7387.i110, %bb.am ], [ %.6386.i228, %.lr.ph229 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit145 ], [ %.18119, %bb.am ], [ %i.gc, %.lr.ph229 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit145 ], [ %i.hp, %bb.am ], [ %i.gd, %.lr.ph229 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.7387.i109, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit145.thread
  %.6 = phi ptr [ %.5, %.loopexit145.thread ], [ %.1475, %bb.i ] ; 7 uses
  %.8388.i = phi ptr [ %.7387.i109, %.loopexit145.thread ], [ %.0380.i221, %bb.i ] ; 7 uses
  %.3377.i = phi ptr [ %i.hw, %.loopexit145.thread ], [ %i.au, %bb.i ] ; 4 uses
  %.1365.i = phi i32 [ %.0364.i111, %.loopexit145.thread ], [ %i.ah, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit145.thread ], [ %i.at, %bb.i ] ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.hy = icmp ugt ptr %.3377.i, %i.hx
  br i1 %i.hy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %LZ4_wildCopy32.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.ib = icmp ugt ptr %i.hz, %i.ia
  br i1 %i.ib, label %bb.ao, label %.preheader142

bb.ao:                                            ; preds = %bb.an, %LZ4_wildCopy32.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.id = icmp ugt ptr %i.ic, %i.e                ; 2 uses
  %i.ie = ptrtoint ptr %i.e to i64
  %i.if = ptrtoint ptr %.6 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.ig
  %.4378.i = select i1 %i.id, ptr %i.ih, ptr %.3377.i ; 2 uses
  %i.ii = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.ii, label %.thread127, label %bb.ap

.thread127:                                       ; preds = %bb.ao
  %i.ij = ptrtoint ptr %.8388.i to i64
  %i.ik = sub i64 %i.p, %i.ij                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.ik, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.ik
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %.8.i = select i1 %i.id, i64 %i.ig, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.io = icmp ne ptr %.4378.i, %i.g
  %i.ip = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.im, %i.ip
  %or.cond460.i = select i1 %i.io, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit16, label %bb.bk

.preheader142:                                    ; preds = %bb.an, %.preheader142
  %.09.i14 = phi ptr [ %i.ir, %.preheader142 ], [ %.8388.i, %bb.an ] ; 2 uses
  %.0.i15 = phi ptr [ %i.is, %.preheader142 ], [ %.6, %bb.an ] ; 2 uses
  %i.iq = load i64, ptr %.0.i15, align 1
  store i64 %i.iq, ptr %.09.i14, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.09.i14, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8
  %i.it = icmp ult ptr %i.ir, %.3377.i
  br i1 %i.it, label %.preheader142, label %LZ4_wildCopy8.exit16, !llvm.loop !1

LZ4_wildCopy8.exit16:                             ; preds = %.preheader142, %bb.ap
  %.7 = phi ptr [ %i.im, %bb.ap ], [ %i.hz, %.preheader142 ] ; 2 uses
  %.9389.i = phi ptr [ %i.in, %bb.ap ], [ %.3377.i, %.preheader142 ] ; 2 uses
  %.val43 = load i16, ptr %.7, align 1, !tbaa !30
  %i.iu = zext i16 %.val43 to i64                 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.iw = sub nsw i64 0, %i.iu
  %i.ix = getelementptr inbounds i8, ptr %.9389.i, i64 %i.iw
  %i.iy = and i32 %.1365.i, 15
  %i.iz = zext nneg i32 %i.iy to i64
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.aj, %LZ4_wildCopy8.exit16
  %.8 = phi ptr [ %i.iv, %LZ4_wildCopy8.exit16 ], [ %i.gm, %bb.aj ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit16 ], [ %i.gh, %bb.aj ] ; 2 uses
  %.0368.i = phi ptr [ %i.ix, %LZ4_wildCopy8.exit16 ], [ %i.go, %bb.aj ]
  %.0366.i = phi i64 [ %i.iu, %LZ4_wildCopy8.exit16 ], [ %i.gl, %bb.aj ]
  %.10.i = phi i64 [ %i.iz, %LZ4_wildCopy8.exit16 ], [ %i.gk, %bb.aj ] ; 2 uses
  %i.ja = icmp eq i64 %.10.i, 15
  br i1 %i.ja, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.loopexit146
  %i.jb = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i31 = icmp ult ptr %.8, %i.jb
  br i1 %.not.i31, label %bb.ar, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ar:                                            ; preds = %bb.aq
  %i.jc = load i8, ptr %.8, align 1, !tbaa !15    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i33 = icmp eq i8 %i.jc, -1
  br i1 %.not21.i33, label %.preheader141.preheader, label %bb.as, !prof !27

.preheader141.preheader:                          ; preds = %bb.ar
  %.not22.i35517 = icmp ult ptr %i.jd, %i.jb
  br i1 %.not22.i35517, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.as:                                            ; preds = %bb.ar
  %i.je = zext i8 %i.jc to i64
  br label %read_variable_length.exit36

.preheader141:                                    ; preds = %.lr.ph520
  %.not22.i35 = icmp ult ptr %i.jh, %i.jb
  br i1 %.not22.i35, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph520:                                        ; preds = %.preheader141.preheader, %.preheader141
  %.0.i34519 = phi i64 [ %i.ji, %.preheader141 ], [ 255, %.preheader141.preheader ]
  %.19518 = phi ptr [ %i.jh, %.preheader141 ], [ %i.jd, %.preheader141.preheader ] ; 2 uses
  %i.jf = load i8, ptr %.19518, align 1, !tbaa !15 ; 2 uses
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.19518, i64 1 ; 4 uses
  %i.ji = add i64 %.0.i34519, %i.jg               ; 2 uses
  %i.jj = icmp eq i8 %i.jf, -1
  br i1 %i.jj, label %.preheader141, label %read_variable_length.exit36, !llvm.loop !3

read_variable_length.exit36:                      ; preds = %.lr.ph520, %bb.as
  %.20 = phi ptr [ %i.jd, %bb.as ], [ %i.jh, %.lr.ph520 ] ; 2 uses
  %.016.i32 = phi i64 [ %i.je, %bb.as ], [ %i.ji, %.lr.ph520 ] ; 2 uses
  %i.jk = icmp ne i64 %.016.i32, -1               ; 2 uses
  %i.jl = add i64 %.016.i32, 15                   ; 2 uses
  %i.jm = ptrtoint ptr %.10390.i to i64
  %i.jn = xor i64 %i.jm, -1
  %i.jo = icmp ule i64 %i.jl, %i.jn
  %.11.i = select i1 %i.jk, i64 %i.jl, i64 15
  %.not139 = select i1 %i.jk, i1 %i.jo, i1 false
  br i1 %.not139, label %bb.at, label %LZ4_wildCopy32.exit.thread

bb.at:                                            ; preds = %read_variable_length.exit36, %.loopexit146
  %.9 = phi ptr [ %.20, %read_variable_length.exit36 ], [ %.8, %.loopexit146 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit36 ], [ %.10.i, %.loopexit146 ]
  %i.jp = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.n, %bb.o, %bb.at
  %.2 = phi ptr [ %.9, %bb.at ], [ %.1694, %bb.n ], [ %i.bj, %bb.o ] ; 9 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.at ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 27 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.at ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ] ; 18 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.at ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.jp, %bb.at ], [ %i.bx, %bb.n ], [ %i.cc, %bb.o ] ; 5 uses
  %.11391.i588 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %.1369.i549 = ptrtoaddr ptr %.1369.i to i64     ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %6
  %i.jr = icmp ult ptr %i.jq, %1
  %or.cond463.i = select i1 %i.k, i1 %i.jr, i1 false, !prof !43
  br i1 %or.cond463.i, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !43

bb.au:                                            ; preds = %.loopexit159
  %i.js = icmp ult ptr %.1369.i, %1
  %i.jt = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 5 uses
  br i1 %i.js, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.ju = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.jv = icmp ugt ptr %i.jt, %i.ju
  br i1 %i.jv, label %bb.aw, label %bb.ax, !prof !27

bb.aw:                                            ; preds = %bb.av
  %i.jw = ptrtoint ptr %.11391.i to i64
  %i.jx = sub i64 %i.p, %i.jw
  %i.jy = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.jx)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.14.i = phi i64 [ %i.jy, %bb.aw ], [ %.13.i, %bb.av ] ; 7 uses
  %i.jz = ptrtoint ptr %.1369.i to i64
  %i.ka = sub i64 %i.q, %i.jz                     ; 6 uses
  %.not446.i = icmp ugt i64 %.14.i, %i.ka
  br i1 %.not446.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kb = sub i64 0, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.j, i64 %i.kb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.kc, i64 %.14.i, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.az:                                            ; preds = %bb.ax
  %i.ke = sub nuw i64 %.14.i, %i.ka               ; 2 uses
  %i.kf = sub i64 0, %i.ka
  %i.kg = getelementptr inbounds i8, ptr %i.j, i64 %i.kf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.kg, i64 %i.ka, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.ka ; 7 uses
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.q                     ; 2 uses
  %i.kk = icmp ugt i64 %i.ke, %i.kj
  br i1 %i.kk, label %iter.check608, label %bb.ba

iter.check608:                                    ; preds = %bb.az
  %i.kl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  %i.km = add i64 %.11391.i588, %i.q
  %i.kn = add i64 %i.km, 1
  %i.ko = sub i64 %i.kn, %.1369.i549
  %i.kp = add i64 %.14.i, %.11391.i588
  %umax589 = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 %i.kp)
  %i.kq = add i64 %umax589, %.1369.i549
  %i.kr = add i64 %.11391.i588, %i.q
  %i.ks = sub i64 %i.kq, %i.kr                    ; 7 uses
  %min.iters.check591 = icmp ult i64 %i.ks, 8
  %i.kt = add i64 %i.kj, -1
  %diff.check587 = icmp ult i64 %i.kt, 31
  %or.cond625 = or i1 %min.iters.check591, %diff.check587
  br i1 %or.cond625, label %.lr.ph238.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %iter.check608
  %min.iters.check593 = icmp ult i64 %i.ks, 32
  br i1 %min.iters.check593, label %vec.epilog.ph612, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %i.ku = and i64 %i.ks, 24
  %n.vec595 = and i64 %i.ks, -32                  ; 5 uses
  %i.kv = getelementptr i8, ptr %1, i64 %n.vec595
  %i.kw = getelementptr i8, ptr %i.kh, i64 %n.vec595 ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.ph594, %vector.body596
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next602, %vector.body596 ] ; 3 uses
  %next.gep598 = getelementptr i8, ptr %1, i64 %index597 ; 2 uses
  %next.gep599 = getelementptr i8, ptr %i.kh, i64 %index597 ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep598, i64 16
  %wide.load600 = load <16 x i8>, ptr %next.gep598, align 1, !tbaa !15
  %wide.load601 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !15
  %i.ky = getelementptr i8, ptr %next.gep599, i64 16
  store <16 x i8> %wide.load600, ptr %next.gep599, align 1, !tbaa !15
  store <16 x i8> %wide.load601, ptr %i.ky, align 1, !tbaa !15
  %index.next602 = add nuw i64 %index597, 32      ; 2 uses
  %i.kz = icmp eq i64 %index.next602, %n.vec595
  br i1 %i.kz, label %middle.block603, label %vector.body596, !llvm.loop !97

middle.block603:                                  ; preds = %vector.body596
  %cmp.n604 = icmp eq i64 %i.ks, %n.vec595
  br i1 %cmp.n604, label %.preheader144, label %vec.epilog.iter.check610

vec.epilog.iter.check610:                         ; preds = %middle.block603
  %min.epilog.iters.check611 = icmp eq i64 %i.ku, 0
  br i1 %min.epilog.iters.check611, label %.lr.ph238.preheader, label %vec.epilog.ph612, !prof !45

vec.epilog.ph612:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check610
  %vec.epilog.resume.val605 = phi i64 [ %n.vec595, %vec.epilog.iter.check610 ], [ 0, %vector.main.loop.iter.check592 ]
  %n.vec613 = and i64 %i.ks, -8                   ; 4 uses
  %i.la = getelementptr i8, ptr %1, i64 %n.vec613
  %i.lb = getelementptr i8, ptr %i.kh, i64 %n.vec613 ; 2 uses
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph612
  %index615 = phi i64 [ %vec.epilog.resume.val605, %vec.epilog.ph612 ], [ %index.next619, %vec.epilog.vector.body614 ] ; 3 uses
  %next.gep616 = getelementptr i8, ptr %1, i64 %index615
  %next.gep617 = getelementptr i8, ptr %i.kh, i64 %index615
  %wide.load618 = load <8 x i8>, ptr %next.gep616, align 1, !tbaa !15
  store <8 x i8> %wide.load618, ptr %next.gep617, align 1, !tbaa !15
  %index.next619 = add nuw i64 %index615, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next619, %n.vec613
  br i1 %i.lc, label %vec.epilog.middle.block620, label %vec.epilog.vector.body614, !llvm.loop !98

vec.epilog.middle.block620:                       ; preds = %vec.epilog.vector.body614
  %cmp.n621 = icmp eq i64 %i.ks, %n.vec613
  br i1 %cmp.n621, label %.preheader144, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %iter.check608, %vec.epilog.iter.check610, %vec.epilog.middle.block620
  %.0.i237.ph = phi ptr [ %1, %iter.check608 ], [ %i.kv, %vec.epilog.iter.check610 ], [ %i.la, %vec.epilog.middle.block620 ]
  %.12392.i236.ph = phi ptr [ %i.kh, %iter.check608 ], [ %i.kw, %vec.epilog.iter.check610 ], [ %i.lb, %vec.epilog.middle.block620 ]
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.lr.ph238
  %.0.i237 = phi ptr [ %i.ld, %.lr.ph238 ], [ %.0.i237.ph, %.lr.ph238.preheader ] ; 2 uses
  %.12392.i236 = phi ptr [ %i.lf, %.lr.ph238 ], [ %.12392.i236.ph, %.lr.ph238.preheader ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i237, i64 1
  %i.le = load i8, ptr %.0.i237, align 1, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %.12392.i236, i64 1 ; 3 uses
  store i8 %i.le, ptr %.12392.i236, align 1, !tbaa !15
  %i.lg = icmp ult ptr %i.lf, %i.kl
  br i1 %i.lg, label %.lr.ph238, label %.preheader144, !llvm.loop !99

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr nonnull align 1 %1, i64 %i.ke, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.bb:                                            ; preds = %bb.au
  %i.li = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.lj = icmp ugt ptr %i.jt, %i.li
  br i1 %i.lj, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.lk = ptrtoint ptr %.11391.i to i64           ; 5 uses
  %i.ll = sub i64 %i.p, %i.lk
  %i.lm = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.ll) ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.lm ; 3 uses
  %i.lp = icmp ugt ptr %i.ln, %.11391.i
  br i1 %i.lp, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %bb.bc
  %.not = icmp eq i64 %i.lm, 0
  br i1 %.not, label %.loopexit140, label %iter.check570

iter.check570:                                    ; preds = %.preheader
  %i.lq = add i64 %i.lm, %i.lk
  %i.lr = add i64 %i.lk, 1
  %umax551 = tail call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.lr)
  %i.ls = sub i64 %umax551, %i.lk                 ; 7 uses
  %min.iters.check553 = icmp ult i64 %i.ls, 8
  %i.lt = sub i64 %.1369.i549, %i.lk
  %diff.check550 = icmp ugt i64 %i.lt, -32
  %or.cond626 = select i1 %min.iters.check553, i1 true, i1 %diff.check550
  br i1 %or.cond626, label %.lr.ph235.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check570
  %min.iters.check555 = icmp ult i64 %i.ls, 32
  br i1 %min.iters.check555, label %vec.epilog.ph574, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %i.lu = and i64 %i.ls, 24
  %n.vec557 = and i64 %i.ls, -32                  ; 5 uses
  %i.lv = getelementptr i8, ptr %.1369.i, i64 %n.vec557
  %i.lw = getelementptr i8, ptr %.11391.i, i64 %n.vec557
  br label %vector.body558

vector.body558:                                   ; preds = %vector.ph556, %vector.body558
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next564, %vector.body558 ] ; 3 uses
  %next.gep560 = getelementptr i8, ptr %.1369.i, i64 %index559 ; 2 uses
  %next.gep561 = getelementptr i8, ptr %.11391.i, i64 %index559 ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep560, i64 16
  %wide.load562 = load <16 x i8>, ptr %next.gep560, align 1, !tbaa !15
  %wide.load563 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !15
  %i.ly = getelementptr i8, ptr %next.gep561, i64 16
  store <16 x i8> %wide.load562, ptr %next.gep561, align 1, !tbaa !15
  store <16 x i8> %wide.load563, ptr %i.ly, align 1, !tbaa !15
  %index.next564 = add nuw i64 %index559, 32      ; 2 uses
  %i.lz = icmp eq i64 %index.next564, %n.vec557
  br i1 %i.lz, label %middle.block565, label %vector.body558, !llvm.loop !100

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %i.ls, %n.vec557
  br i1 %cmp.n566, label %.loopexit140, label %vec.epilog.iter.check572

vec.epilog.iter.check572:                         ; preds = %middle.block565
  %min.epilog.iters.check573 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check573, label %.lr.ph235.preheader, label %vec.epilog.ph574, !prof !45

vec.epilog.ph574:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check572
  %vec.epilog.resume.val567 = phi i64 [ %n.vec557, %vec.epilog.iter.check572 ], [ 0, %vector.main.loop.iter.check554 ]
  %n.vec575 = and i64 %i.ls, -8                   ; 4 uses
  %i.ma = getelementptr i8, ptr %.1369.i, i64 %n.vec575
  %i.mb = getelementptr i8, ptr %.11391.i, i64 %n.vec575
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph574
  %index577 = phi i64 [ %vec.epilog.resume.val567, %vec.epilog.ph574 ], [ %index.next581, %vec.epilog.vector.body576 ] ; 3 uses
  %next.gep578 = getelementptr i8, ptr %.1369.i, i64 %index577
  %next.gep579 = getelementptr i8, ptr %.11391.i, i64 %index577
  %wide.load580 = load <8 x i8>, ptr %next.gep578, align 1, !tbaa !15
  store <8 x i8> %wide.load580, ptr %next.gep579, align 1, !tbaa !15
  %index.next581 = add nuw i64 %index577, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next581, %n.vec575
  br i1 %i.mc, label %vec.epilog.middle.block582, label %vec.epilog.vector.body576, !llvm.loop !101

vec.epilog.middle.block582:                       ; preds = %vec.epilog.vector.body576
  %cmp.n583 = icmp eq i64 %i.ls, %n.vec575
  br i1 %cmp.n583, label %.loopexit140, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check570, %vec.epilog.iter.check572, %vec.epilog.middle.block582
  %.2370.i234.ph = phi ptr [ %.1369.i, %iter.check570 ], [ %i.lv, %vec.epilog.iter.check572 ], [ %i.ma, %vec.epilog.middle.block582 ]
  %.15.i233.ph = phi ptr [ %.11391.i, %iter.check570 ], [ %i.lw, %vec.epilog.iter.check572 ], [ %i.mb, %vec.epilog.middle.block582 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.2370.i234 = phi ptr [ %i.md, %.lr.ph235 ], [ %.2370.i234.ph, %.lr.ph235.preheader ] ; 2 uses
  %.15.i233 = phi ptr [ %i.mf, %.lr.ph235 ], [ %.15.i233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.2370.i234, i64 1
  %i.me = load i8, ptr %.2370.i234, align 1, !tbaa !15
  %i.mf = getelementptr inbounds nuw i8, ptr %.15.i233, i64 1 ; 2 uses
  store i8 %i.me, ptr %.15.i233, align 1, !tbaa !15
  %i.mg = icmp ult ptr %i.mf, %i.lo
  br i1 %i.mg, label %.lr.ph235, label %.loopexit140, !llvm.loop !102

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.lm, i1 false)
  br label %.loopexit140

.loopexit140:                                     ; preds = %.lr.ph235, %middle.block565, %vec.epilog.middle.block582, %.preheader, %bb.bd
  %i.mh = icmp eq ptr %i.lo, %i.g
  br i1 %i.mh, label %bb.bk, label %.preheader144

bb.be:                                            ; preds = %bb.bb
  %i.mi = icmp ult i64 %.1367.i, 8
  br i1 %i.mi, label %bb.bf, label %bb.bg, !prof !27

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.mj = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.mj, ptr %.11391.i, align 1, !tbaa !15
  %i.mk = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !15
  %i.mm = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !15
  %i.mn = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !15
  %i.mp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !15
  %i.ms = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !15
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !37
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.my = load i32, ptr %i.mw, align 1
  store i32 %i.my, ptr %i.mx, align 1
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !37
  %i.nb = sext i32 %i.na to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.mw, i64 %i.nc
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ne = load i64, ptr %.1369.i, align 1
  store i64 %i.ne, ptr %.11391.i, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.3371.i = phi ptr [ %i.nd, %bb.bf ], [ %i.nf, %bb.bg ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.nh = load i64, ptr %.3371.i, align 1
  store i64 %i.nh, ptr %i.ng, align 1
  %i.ni = icmp ugt i64 %.13.i, 16
  br i1 %i.ni, label %bb.bi, label %.preheader144

bb.bi:                                            ; preds = %bb.bh
  %i.nj = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.09.i11 = phi ptr [ %i.nj, %bb.bi ], [ %i.nl, %bb.bj ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.bi ], [ %.0.i12, %bb.bj ]
  %.0.i12 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.nk = load i64, ptr %.0.i12, align 1
  store i64 %i.nk, ptr %.09.i11, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.nm = icmp ult ptr %i.nl, %i.jt
  br i1 %i.nm, label %bb.bj, label %.preheader144, !llvm.loop !1

.preheader144:                                    ; preds = %bb.bj, %.lr.ph238, %bb.bh, %bb.ay, %bb.ba, %vec.epilog.middle.block620, %middle.block603, %bb.d, %.loopexit140
  %.3.ph = phi ptr [ %.2, %bb.ay ], [ %.2, %.loopexit140 ], [ %0, %bb.d ], [ %.2, %middle.block603 ], [ %.2, %vec.epilog.middle.block620 ], [ %.2, %bb.bh ], [ %.2, %bb.ba ], [ %.2, %.lr.ph238 ], [ %.2, %bb.bj ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.kd, %bb.ay ], [ %i.lo, %.loopexit140 ], [ %1, %bb.d ], [ %i.kw, %middle.block603 ], [ %i.lb, %vec.epilog.middle.block620 ], [ %i.jt, %bb.bh ], [ %i.lh, %bb.ba ], [ %i.lf, %.lr.ph238 ], [ %i.jt, %bb.bj ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.no = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.np = zext i8 %i.no to i32                    ; 3 uses
  %i.nq = lshr i32 %i.np, 4                       ; 2 uses
  %.not439.i227 = icmp eq i32 %i.nq, 15
  br i1 %.not439.i227, label %.thread103, label %.lr.ph229

bb.bk:                                            ; preds = %.thread127, %.loopexit140, %bb.ap
  %.18.i = phi ptr [ %i.g, %.loopexit140 ], [ %i.in, %bb.ap ], [ %i.il, %.thread127 ]
  %i.nr = ptrtoint ptr %.18.i to i64
  %i.ns = sub i64 %i.nr, %i.q
  %i.nt = trunc i64 %i.ns to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit24, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread99, %.preheader154.preheader, %.preheader151.preheader, %.preheader154, %.preheader151, %.preheader143, %.preheader141, %.preheader143.preheader, %.preheader141.preheader, %bb.aq, %.thread103, %read_variable_length.exit30, %bb.am, %.loopexit159, %read_variable_length.exit36
  %.10 = phi ptr [ %.2, %.loopexit159 ], [ %i.jh, %.preheader141 ], [ %.20, %read_variable_length.exit36 ], [ %i.ap, %.preheader154 ], [ %.18119, %bb.am ], [ %i.hl, %read_variable_length.exit30 ], [ %i.bt, %.preheader151 ], [ %.4108, %.thread103 ], [ %i.hl, %.preheader143 ], [ %.8, %bb.aq ], [ %i.jd, %.preheader141.preheader ], [ %i.hh, %.preheader143.preheader ], [ %i.bj, %bb.k ], [ %i.bt, %read_variable_length.exit24 ], [ %.1694, %bb.m ], [ %i.ai, %bb.f ], [ %.1475, %bb.h ], [ %i.ap, %read_variable_length.exit ], [ %i.al, %.preheader154.preheader ], [ %i.bp, %.preheader151.preheader ], [ %.11, %.thread99 ]
  %i.nu = ptrtoint ptr %.10 to i64
  %i.nv = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.nv, %i.nu
  %i.nw = trunc i64 %.neg.i to i32
  %i.nx = add nsw i32 %i.nw, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.bk, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.nx, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.nt, %bb.bk ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @LZ4_createStreamDecode() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @LZ4_freeStreamDecode(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @LZ4_setStreamDecode(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
end_hunk_4
begin_hunk_5_@LZ4_decompress_safe_continue:bb.a
  store i64 %i.hk, ptr %i.ha, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hn = load i64, ptr %i.hm, align 1
  store i64 %i.hn, ptr %i.hl, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hq = load i16, ptr %i.hp, align 1
  store i16 %i.hq, ptr %i.ho, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hd
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 3 ; 2 uses
  %i.hu = load i8, ptr %i.hf, align 1, !tbaa !15
  %i.hv = zext i8 %i.hu to i32                    ; 3 uses
  %i.hw = lshr i32 %i.hv, 4                       ; 2 uses
  %.not439.i.i = icmp eq i32 %i.hw, 15
  br i1 %.not439.i.i, label %.thread160, label %.lr.ph285

.loopexit200:                                     ; preds = %.backedge, %.preheader212
  %.4 = phi ptr [ %i.ap, %.preheader212 ], [ %i.dl, %.backedge ] ; 2 uses
  %.7387.i.i = phi ptr [ %2, %.preheader212 ], [ %.0380.i.i.be, %.backedge ] ; 2 uses
  %.0364.i.i = phi i32 [ %i.ar, %.preheader212 ], [ %i.dn, %.backedge ] ; 2 uses
  %.4362.i.i = phi i64 [ %i.at, %.preheader212 ], [ %i.dp, %.backedge ] ; 2 uses
  %i.hx = icmp eq i64 %.4362.i.i, 15
  br i1 %i.hx, label %.thread160, label %.loopexit200.thread

.thread160:                                       ; preds = %bb.at, %.preheader199, %.loopexit200
  %.0364.i.i169 = phi i32 [ %.0364.i.i, %.loopexit200 ], [ %i.og, %.preheader199 ], [ %i.hv, %bb.at ]
  %.7387.i.i167 = phi ptr [ %.7387.i.i, %.loopexit200 ], [ %.6386.i.i.ph, %.preheader199 ], [ %i.hs, %bb.at ] ; 2 uses
  %.4165 = phi ptr [ %.4, %.loopexit200 ], [ %i.oe, %.preheader199 ], [ %i.ht, %bb.at ] ; 4 uses
  %i.hy = getelementptr inbounds i8, ptr %i.x, i64 -15 ; 3 uses
  %.not.i80 = icmp ult ptr %.4165, %i.hy
  br i1 %.not.i80, label %bb.au, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.au:                                            ; preds = %.thread160
  %i.hz = load i8, ptr %.4165, align 1, !tbaa !15 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.4165, i64 1 ; 4 uses
  %.not21.i82 = icmp eq i8 %i.hz, -1
  br i1 %.not21.i82, label %.preheader198.preheader, label %read_variable_length.exit85.thread173, !prof !27

.preheader198.preheader:                          ; preds = %bb.au
  %.not22.i84582 = icmp ult ptr %i.ia, %i.hy
  br i1 %.not22.i84582, label %.lr.ph585, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit85.thread173:            ; preds = %bb.au
  %i.ib = zext i8 %i.hz to i64
  br label %bb.av

.preheader198:                                    ; preds = %.lr.ph585
  %.not22.i84 = icmp ult ptr %i.ie, %i.hy
  br i1 %.not22.i84, label %.lr.ph585, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph585:                                        ; preds = %.preheader198.preheader, %.preheader198
  %.0.i83584 = phi i64 [ %i.if, %.preheader198 ], [ 255, %.preheader198.preheader ]
  %.16583 = phi ptr [ %i.ie, %.preheader198 ], [ %i.ia, %.preheader198.preheader ] ; 2 uses
  %i.ic = load i8, ptr %.16583, align 1, !tbaa !15 ; 2 uses
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.16583, i64 1 ; 5 uses
  %i.if = add i64 %.0.i83584, %i.id               ; 3 uses
  %i.ig = icmp eq i8 %i.ic, -1
  br i1 %i.ig, label %.preheader198, label %read_variable_length.exit85, !llvm.loop !3

read_variable_length.exit85:                      ; preds = %.lr.ph585
  %i.ih = icmp eq i64 %i.if, -1
  br i1 %i.ih, label %LZ4_wildCopy32.exit.thread, label %bb.av

bb.av:                                            ; preds = %read_variable_length.exit85.thread173, %read_variable_length.exit85
  %.016.i81177 = phi i64 [ %i.ib, %read_variable_length.exit85.thread173 ], [ %i.if, %read_variable_length.exit85 ]
  %.17176 = phi ptr [ %i.ia, %read_variable_length.exit85.thread173 ], [ %i.ie, %read_variable_length.exit85 ] ; 3 uses
  %i.ii = add i64 %.016.i81177, 15                ; 3 uses
  %i.ij = ptrtoint ptr %.7387.i.i167 to i64
  %i.ik = xor i64 %i.ij, -1
  %i.il = icmp ugt i64 %i.ii, %i.ik
  %i.im = ptrtoint ptr %.17176 to i64
  %i.in = xor i64 %i.im, -1
  %i.io = icmp ugt i64 %i.ii, %i.in
  %or.cond189 = select i1 %i.il, i1 true, i1 %i.io, !prof !44
  br i1 %or.cond189, label %LZ4_wildCopy32.exit.thread, label %.loopexit200.thread, !prof !44

.loopexit200.thread:                              ; preds = %.lr.ph285, %bb.av, %.loopexit200
  %.0364.i.i168 = phi i32 [ %.0364.i.i, %.loopexit200 ], [ %.0364.i.i169, %bb.av ], [ %i.gu, %.lr.ph285 ]
  %.7387.i.i166 = phi ptr [ %.7387.i.i, %.loopexit200 ], [ %.7387.i.i167, %bb.av ], [ %.6386.i.i284, %.lr.ph285 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit200 ], [ %.17176, %bb.av ], [ %i.gv, %.lr.ph285 ]
  %.6.i.i = phi i64 [ %.4362.i.i, %.loopexit200 ], [ %i.ii, %bb.av ], [ %i.gw, %.lr.ph285 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.7387.i.i166, i64 %.6.i.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.s, %.loopexit200.thread
  %.6 = phi ptr [ %.5, %.loopexit200.thread ], [ %.13132, %bb.s ] ; 5 uses
  %.8388.i.i = phi ptr [ %.7387.i.i166, %.loopexit200.thread ], [ %.0380.i.i277, %bb.s ] ; 3 uses
  %.3377.i.i = phi ptr [ %i.ip, %.loopexit200.thread ], [ %i.bs, %bb.s ] ; 5 uses
  %.1365.i.i = phi i32 [ %.0364.i.i168, %.loopexit200.thread ], [ %i.bf, %bb.s ]
  %.7.i.i = phi i64 [ %.6.i.i, %.loopexit200.thread ], [ %i.br, %bb.s ] ; 4 uses
  %i.iq = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ir = icmp ugt ptr %.3377.i.i, %i.iq
  br i1 %i.ir, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %LZ4_wildCopy32.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i.i ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.iu = icmp ugt ptr %i.is, %i.it
  br i1 %i.iu, label %bb.ax, label %.preheader197

bb.ax:                                            ; preds = %bb.aw, %LZ4_wildCopy32.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i.i
  %.not441.i.i = icmp ne ptr %i.iv, %i.x
  %i.iw = icmp ugt ptr %.3377.i.i, %i.z
  %or.cond458.i.i = select i1 %.not441.i.i, i1 true, i1 %i.iw
  br i1 %or.cond458.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6, i64 %.7.i.i, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.7.i.i
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = sub i64 %i.iy, %i.am
  %i.ja = trunc i64 %i.iz to i32
  br label %LZ4_decompress_safe_doubleDict.exit

.preheader197:                                    ; preds = %bb.aw, %.preheader197
  %.09.i70 = phi ptr [ %i.jc, %.preheader197 ], [ %.8388.i.i, %bb.aw ] ; 2 uses
  %.0.i71 = phi ptr [ %i.jd, %.preheader197 ], [ %.6, %bb.aw ] ; 2 uses
  %i.jb = load i64, ptr %.0.i71, align 1
  store i64 %i.jb, ptr %.09.i70, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i70, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  %i.je = icmp ult ptr %i.jc, %.3377.i.i
  br i1 %i.je, label %.preheader197, label %LZ4_wildCopy8.exit72, !llvm.loop !1

LZ4_wildCopy8.exit72:                             ; preds = %.preheader197
  %.val99 = load i16, ptr %i.is, align 1, !tbaa !30
  %i.jf = zext i16 %.val99 to i64                 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.jh = sub nsw i64 0, %i.jf
  %i.ji = getelementptr inbounds i8, ptr %.3377.i.i, i64 %i.jh
  %i.jj = and i32 %.1365.i.i, 15
  %i.jk = zext nneg i32 %i.jj to i64
  br label %.loopexit201

.loopexit201:                                     ; preds = %bb.as, %LZ4_wildCopy8.exit72
  %.7 = phi ptr [ %i.jg, %LZ4_wildCopy8.exit72 ], [ %i.hf, %bb.as ] ; 5 uses
  %.10390.i.i = phi ptr [ %.3377.i.i, %LZ4_wildCopy8.exit72 ], [ %i.ha, %bb.as ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.ji, %LZ4_wildCopy8.exit72 ], [ %i.hh, %bb.as ]
  %.0366.i.i = phi i64 [ %i.jf, %LZ4_wildCopy8.exit72 ], [ %i.he, %bb.as ]
  %.10.i.i = phi i64 [ %i.jk, %LZ4_wildCopy8.exit72 ], [ %i.hd, %bb.as ] ; 2 uses
  %i.jl = icmp eq i64 %.10.i.i, 15
  br i1 %i.jl, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %.loopexit201
  %i.jm = getelementptr inbounds i8, ptr %i.x, i64 -6 ; 3 uses
  %.not.i86 = icmp ult ptr %.7, %i.jm
  br i1 %.not.i86, label %bb.ba, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ba:                                            ; preds = %bb.az
  %i.jn = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i88 = icmp eq i8 %i.jn, -1
  br i1 %.not21.i88, label %.preheader196.preheader, label %bb.bb, !prof !27

.preheader196.preheader:                          ; preds = %bb.ba
  %.not22.i90587 = icmp ult ptr %i.jo, %i.jm
  br i1 %.not22.i90587, label %.lr.ph590, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.bb:                                            ; preds = %bb.ba
  %i.jp = zext i8 %i.jn to i64
  br label %read_variable_length.exit91

.preheader196:                                    ; preds = %.lr.ph590
  %.not22.i90 = icmp ult ptr %i.js, %i.jm
  br i1 %.not22.i90, label %.lr.ph590, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph590:                                        ; preds = %.preheader196.preheader, %.preheader196
  %.0.i89589 = phi i64 [ %i.jt, %.preheader196 ], [ 255, %.preheader196.preheader ]
  %.18588 = phi ptr [ %i.js, %.preheader196 ], [ %i.jo, %.preheader196.preheader ] ; 2 uses
  %i.jq = load i8, ptr %.18588, align 1, !tbaa !15 ; 2 uses
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.18588, i64 1 ; 4 uses
  %i.jt = add i64 %.0.i89589, %i.jr               ; 2 uses
  %i.ju = icmp eq i8 %i.jq, -1
  br i1 %i.ju, label %.preheader196, label %read_variable_length.exit91, !llvm.loop !3

read_variable_length.exit91:                      ; preds = %.lr.ph590, %bb.bb
  %.19 = phi ptr [ %i.jo, %bb.bb ], [ %i.js, %.lr.ph590 ] ; 2 uses
  %.016.i87 = phi i64 [ %i.jp, %bb.bb ], [ %i.jt, %.lr.ph590 ] ; 2 uses
  %i.jv = icmp ne i64 %.016.i87, -1               ; 2 uses
  %i.jw = add i64 %.016.i87, 15                   ; 2 uses
  %i.jx = ptrtoint ptr %.10390.i.i to i64
  %i.jy = xor i64 %i.jx, -1
  %i.jz = icmp ule i64 %i.jw, %i.jy
  %.11.i.i = select i1 %i.jv, i64 %i.jw, i64 15
  %.not193 = select i1 %i.jv, i1 %i.jz, i1 false
  br i1 %.not193, label %bb.bc, label %LZ4_wildCopy32.exit.thread

bb.bc:                                            ; preds = %read_variable_length.exit91, %.loopexit201
  %.8 = phi ptr [ %.19, %read_variable_length.exit91 ], [ %.7, %.loopexit201 ]
  %.12.i.i = phi i64 [ %.11.i.i, %read_variable_length.exit91 ], [ %.10.i.i, %.loopexit201 ]
  %i.ka = add i64 %.12.i.i, 4
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.x, %bb.y, %bb.bc
  %.2 = phi ptr [ %.8, %bb.bc ], [ %.15151, %bb.x ], [ %i.ch, %bb.y ] ; 14 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.bc ], [ %.2382.i.i, %bb.y ], [ %.2382.i.i, %bb.x ] ; 14 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.bc ], [ %i.cj, %bb.y ], [ %i.cj, %bb.x ] ; 10 uses
  %.1367.i.i = phi i64 [ %.0366.i.i, %bb.bc ], [ %i.cg, %bb.y ], [ %i.cg, %bb.x ] ; 3 uses
  %.13.i.i = phi i64 [ %i.ka, %bb.bc ], [ %i.cv, %bb.x ], [ %i.da, %bb.y ] ; 7 uses
  %.11391.i.i619 = ptrtoaddr ptr %.11391.i.i to i64 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.o
  %i.kc = icmp ult ptr %i.kb, %i.s
  %or.cond463.i.i = select i1 %i.ad, i1 %i.kc, i1 false, !prof !43
  br i1 %or.cond463.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.bd, !prof !43

bb.bd:                                            ; preds = %.loopexit215
  %i.kd = icmp ult ptr %.1369.i.i, %i.s
  %i.ke = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i ; 15 uses
  br i1 %i.kd, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.kg = icmp ugt ptr %i.ke, %i.kf
  br i1 %i.kg, label %LZ4_wildCopy32.exit.thread, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.kh = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ki = ptrtoint ptr %.1369.i.i to i64          ; 3 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 6 uses
  %.not446.i.i = icmp ugt i64 %.13.i.i, %i.kj
  br i1 %.not446.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kk = sub i64 0, %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.ac, i64 %i.kk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %i.kl, i64 %.13.i.i, i1 false)
  br label %.preheader199

bb.bh:                                            ; preds = %bb.bf
  %i.km = sub nuw i64 %.13.i.i, %i.kj             ; 2 uses
  %i.kn = sub i64 0, %i.kj
  %i.ko = getelementptr inbounds i8, ptr %i.ac, i64 %i.kn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %i.ko, i64 %i.kj, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.kj ; 7 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = sub i64 %i.kq, %i.kh                    ; 2 uses
  %i.ks = icmp ugt i64 %i.km, %i.kr
  br i1 %i.ks, label %iter.check678, label %bb.bi

iter.check678:                                    ; preds = %bb.bh
  %i.kt = add i64 %i.b, %i.ki
  %i.ku = add i64 %.11391.i.i619, %i.am
  %i.kv = add i64 %i.ku, 1
  %i.kw = add i64 %i.b, %i.ki
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = add i64 %.13.i.i, %.11391.i.i619
  %umax659 = tail call i64 @llvm.umax.i64(i64 %i.kx, i64 %i.ky)
  %i.kz = add i64 %i.kt, %umax659
  %i.la = add i64 %.11391.i.i619, %i.am
  %i.lb = sub i64 %i.kz, %i.la                    ; 7 uses
  %min.iters.check661 = icmp ult i64 %i.lb, 8
  %i.lc = add i64 %i.kr, -1
  %diff.check658 = icmp ult i64 %i.lc, 31
  %or.cond695 = or i1 %min.iters.check661, %diff.check658
  br i1 %or.cond695, label %.lr.ph294.preheader, label %vector.main.loop.iter.check662

vector.main.loop.iter.check662:                   ; preds = %iter.check678
  %min.iters.check663 = icmp ult i64 %i.lb, 32
  br i1 %min.iters.check663, label %vec.epilog.ph682, label %vector.ph664

vector.ph664:                                     ; preds = %vector.main.loop.iter.check662
  %i.ld = and i64 %i.lb, 24
  %n.vec665 = and i64 %i.lb, -32                  ; 5 uses
  %i.le = getelementptr i8, ptr %i.s, i64 %n.vec665
  %i.lf = getelementptr i8, ptr %i.kp, i64 %n.vec665 ; 2 uses
  br label %vector.body666

vector.body666:                                   ; preds = %vector.ph664, %vector.body666
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next672, %vector.body666 ] ; 3 uses
  %next.gep668 = getelementptr i8, ptr %i.s, i64 %index667 ; 2 uses
  %next.gep669 = getelementptr i8, ptr %i.kp, i64 %index667 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep668, i64 16
  %wide.load670 = load <16 x i8>, ptr %next.gep668, align 1, !tbaa !15
  %wide.load671 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !15
  %i.lh = getelementptr i8, ptr %next.gep669, i64 16
  store <16 x i8> %wide.load670, ptr %next.gep669, align 1, !tbaa !15
  store <16 x i8> %wide.load671, ptr %i.lh, align 1, !tbaa !15
  %index.next672 = add nuw i64 %index667, 32      ; 2 uses
  %i.li = icmp eq i64 %index.next672, %n.vec665
  br i1 %i.li, label %middle.block673, label %vector.body666, !llvm.loop !108

middle.block673:                                  ; preds = %vector.body666
  %cmp.n674 = icmp eq i64 %i.lb, %n.vec665
  br i1 %cmp.n674, label %.preheader199, label %vec.epilog.iter.check680

vec.epilog.iter.check680:                         ; preds = %middle.block673
  %min.epilog.iters.check681 = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check681, label %.lr.ph294.preheader, label %vec.epilog.ph682, !prof !45

vec.epilog.ph682:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check680
  %vec.epilog.resume.val675 = phi i64 [ %n.vec665, %vec.epilog.iter.check680 ], [ 0, %vector.main.loop.iter.check662 ]
  %n.vec683 = and i64 %i.lb, -8                   ; 4 uses
  %i.lj = getelementptr i8, ptr %i.s, i64 %n.vec683
  %i.lk = getelementptr i8, ptr %i.kp, i64 %n.vec683 ; 2 uses
  br label %vec.epilog.vector.body684

vec.epilog.vector.body684:                        ; preds = %vec.epilog.vector.body684, %vec.epilog.ph682
  %index685 = phi i64 [ %vec.epilog.resume.val675, %vec.epilog.ph682 ], [ %index.next689, %vec.epilog.vector.body684 ] ; 3 uses
  %next.gep686 = getelementptr i8, ptr %i.s, i64 %index685
  %next.gep687 = getelementptr i8, ptr %i.kp, i64 %index685
  %wide.load688 = load <8 x i8>, ptr %next.gep686, align 1, !tbaa !15
  store <8 x i8> %wide.load688, ptr %next.gep687, align 1, !tbaa !15
  %index.next689 = add nuw i64 %index685, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next689, %n.vec683
  br i1 %i.ll, label %vec.epilog.middle.block690, label %vec.epilog.vector.body684, !llvm.loop !109

vec.epilog.middle.block690:                       ; preds = %vec.epilog.vector.body684
  %cmp.n691 = icmp eq i64 %i.lb, %n.vec683
  br i1 %cmp.n691, label %.preheader199, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %iter.check678, %vec.epilog.iter.check680, %vec.epilog.middle.block690
  %.0.i.i293.ph = phi ptr [ %i.s, %iter.check678 ], [ %i.le, %vec.epilog.iter.check680 ], [ %i.lj, %vec.epilog.middle.block690 ]
  %.12392.i.i292.ph = phi ptr [ %i.kp, %iter.check678 ], [ %i.lf, %vec.epilog.iter.check680 ], [ %i.lk, %vec.epilog.middle.block690 ]
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %.0.i.i293 = phi ptr [ %i.lm, %.lr.ph294 ], [ %.0.i.i293.ph, %.lr.ph294.preheader ] ; 2 uses
  %.12392.i.i292 = phi ptr [ %i.lo, %.lr.ph294 ], [ %.12392.i.i292.ph, %.lr.ph294.preheader ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i293, i64 1
  %i.ln = load i8, ptr %.0.i.i293, align 1, !tbaa !15
  %i.lo = getelementptr inbounds nuw i8, ptr %.12392.i.i292, i64 1 ; 3 uses
  store i8 %i.ln, ptr %.12392.i.i292, align 1, !tbaa !15
  %i.lp = icmp ult ptr %i.lo, %i.ke
  br i1 %i.lp, label %.lr.ph294, label %.preheader199, !llvm.loop !110

bb.bi:                                            ; preds = %bb.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr nonnull align 1 %i.s, i64 %i.km, i1 false)
  br label %.preheader199

bb.bj:                                            ; preds = %bb.bd
  %i.lq = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.lr = icmp ult i64 %.1367.i.i, 8
  br i1 %i.lr, label %bb.bk, label %bb.bl, !prof !27

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !24
  %i.ls = load i8, ptr %.1369.i.i, align 1, !tbaa !15
  store i8 %i.ls, ptr %.11391.i.i, align 1, !tbaa !15
  %i.lt = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !15
  %i.lv = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !15
  %i.lw = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !15
  %i.ly = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !15
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !37
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.mh = load i32, ptr %i.mf, align 1
  store i32 %i.mh, ptr %i.mg, align 1
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !37
  %i.mk = sext i32 %i.mj to i64
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds i8, ptr %i.mf, i64 %i.ml
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mn = load i64, ptr %.1369.i.i, align 1
  store i64 %i.mn, ptr %.11391.i.i, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3371.i.i = phi ptr [ %i.mm, %bb.bk ], [ %i.mo, %bb.bl ] ; 6 uses
  %.3371.i.i620 = ptrtoaddr ptr %.3371.i.i to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8 ; 5 uses
  %i.mq = icmp ugt ptr %i.ke, %i.lq
  br i1 %i.mq, label %bb.bn, label %bb.bq, !prof !27

bb.bn:                                            ; preds = %bb.bm
  %i.mr = getelementptr inbounds i8, ptr %i.z, i64 -7 ; 4 uses
  %i.ms = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.mt = icmp ugt ptr %i.ke, %i.ms
  br i1 %i.mt, label %LZ4_wildCopy32.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mu = icmp ult ptr %i.mp, %i.mr
  br i1 %i.mu, label %.preheader194, label %bb.bp

.preheader194:                                    ; preds = %bb.bo, %.preheader194
  %.09.i = phi ptr [ %i.mw, %.preheader194 ], [ %i.mp, %bb.bo ] ; 2 uses
  %.0.i = phi ptr [ %i.mx, %.preheader194 ], [ %.3371.i.i, %bb.bo ] ; 2 uses
  %i.mv = load i64, ptr %.0.i, align 1
  store i64 %i.mv, ptr %.09.i, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.my = icmp ult ptr %i.mw, %i.mr
  br i1 %i.my, label %.preheader194, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader194
  %i.mz = ptrtoint ptr %i.mr to i64
  %i.na = ptrtoint ptr %i.mp to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = getelementptr inbounds i8, ptr %.3371.i.i, i64 %i.nb
  br label %bb.bp

bb.bp:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bo
  %.16.i.i = phi ptr [ %i.mr, %LZ4_wildCopy8.exit ], [ %i.mp, %bb.bo ] ; 7 uses
  %.4372.i.i = phi ptr [ %i.nc, %LZ4_wildCopy8.exit ], [ %.3371.i.i, %bb.bo ] ; 6 uses
  %i.nd = icmp ult ptr %.16.i.i, %i.ke
  br i1 %i.nd, label %iter.check641, label %.preheader199

iter.check641:                                    ; preds = %bb.bp
  %i.ne = add i64 %.13.i.i, %.11391.i.i619
  %i.nf = add i64 %i.am, %i.y
  %i.ng = add i64 %i.nf, -7
  %i.nh = add i64 %.11391.i.i619, 8
  %umax622 = tail call i64 @llvm.umax.i64(i64 %i.ng, i64 %i.nh)
  %i.ni = sub i64 %i.ne, %umax622                 ; 7 uses
  %min.iters.check624 = icmp ult i64 %i.ni, 8
  br i1 %min.iters.check624, label %.lr.ph291.preheader, label %vector.memcheck618

vector.memcheck618:                               ; preds = %iter.check641
  %i.nj = sub i64 %.11391.i.i619, %.3371.i.i620
  %i.nk = add i64 %i.nj, 7
  %diff.check621 = icmp ult i64 %i.nk, 31
  br i1 %diff.check621, label %.lr.ph291.preheader, label %vector.main.loop.iter.check625

vector.main.loop.iter.check625:                   ; preds = %vector.memcheck618
  %min.iters.check626 = icmp ult i64 %i.ni, 32
  br i1 %min.iters.check626, label %vec.epilog.ph645, label %vector.ph627

vector.ph627:                                     ; preds = %vector.main.loop.iter.check625
  %i.nl = and i64 %i.ni, 24
  %n.vec628 = and i64 %i.ni, -32                  ; 5 uses
  %i.nm = getelementptr i8, ptr %.4372.i.i, i64 %n.vec628
  %i.nn = getelementptr i8, ptr %.16.i.i, i64 %n.vec628
  br label %vector.body629

vector.body629:                                   ; preds = %vector.ph627, %vector.body629
  %index630 = phi i64 [ 0, %vector.ph627 ], [ %index.next635, %vector.body629 ] ; 3 uses
  %next.gep631 = getelementptr i8, ptr %.4372.i.i, i64 %index630 ; 2 uses
  %next.gep632 = getelementptr i8, ptr %.16.i.i, i64 %index630 ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep631, i64 16
  %wide.load633 = load <16 x i8>, ptr %next.gep631, align 1, !tbaa !15
  %wide.load634 = load <16 x i8>, ptr %i.no, align 1, !tbaa !15
  %i.np = getelementptr i8, ptr %next.gep632, i64 16
  store <16 x i8> %wide.load633, ptr %next.gep632, align 1, !tbaa !15
  store <16 x i8> %wide.load634, ptr %i.np, align 1, !tbaa !15
  %index.next635 = add nuw i64 %index630, 32      ; 2 uses
  %i.nq = icmp eq i64 %index.next635, %n.vec628
  br i1 %i.nq, label %middle.block636, label %vector.body629, !llvm.loop !111

middle.block636:                                  ; preds = %vector.body629
  %cmp.n637 = icmp eq i64 %i.ni, %n.vec628
  br i1 %cmp.n637, label %.preheader199, label %vec.epilog.iter.check643

vec.epilog.iter.check643:                         ; preds = %middle.block636
  %min.epilog.iters.check644 = icmp eq i64 %i.nl, 0
  br i1 %min.epilog.iters.check644, label %.lr.ph291.preheader, label %vec.epilog.ph645, !prof !45

vec.epilog.ph645:                                 ; preds = %vector.main.loop.iter.check625, %vec.epilog.iter.check643
  %vec.epilog.resume.val638 = phi i64 [ %n.vec628, %vec.epilog.iter.check643 ], [ 0, %vector.main.loop.iter.check625 ]
  %n.vec646 = and i64 %i.ni, -8                   ; 4 uses
  %i.nr = getelementptr i8, ptr %.4372.i.i, i64 %n.vec646
  %i.ns = getelementptr i8, ptr %.16.i.i, i64 %n.vec646
  br label %vec.epilog.vector.body647

vec.epilog.vector.body647:                        ; preds = %vec.epilog.vector.body647, %vec.epilog.ph645
  %index648 = phi i64 [ %vec.epilog.resume.val638, %vec.epilog.ph645 ], [ %index.next652, %vec.epilog.vector.body647 ] ; 3 uses
  %next.gep649 = getelementptr i8, ptr %.4372.i.i, i64 %index648
  %next.gep650 = getelementptr i8, ptr %.16.i.i, i64 %index648
  %wide.load651 = load <8 x i8>, ptr %next.gep649, align 1, !tbaa !15
  store <8 x i8> %wide.load651, ptr %next.gep650, align 1, !tbaa !15
  %index.next652 = add nuw i64 %index648, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next652, %n.vec646
  br i1 %i.nt, label %vec.epilog.middle.block653, label %vec.epilog.vector.body647, !llvm.loop !112

vec.epilog.middle.block653:                       ; preds = %vec.epilog.vector.body647
  %cmp.n654 = icmp eq i64 %i.ni, %n.vec646
  br i1 %cmp.n654, label %.preheader199, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %iter.check641, %vector.memcheck618, %vec.epilog.iter.check643, %vec.epilog.middle.block653
  %.5373.i.i290.ph = phi ptr [ %.4372.i.i, %iter.check641 ], [ %.4372.i.i, %vector.memcheck618 ], [ %i.nm, %vec.epilog.iter.check643 ], [ %i.nr, %vec.epilog.middle.block653 ]
  %.17.i.i289.ph = phi ptr [ %.16.i.i, %iter.check641 ], [ %.16.i.i, %vector.memcheck618 ], [ %i.nn, %vec.epilog.iter.check643 ], [ %i.ns, %vec.epilog.middle.block653 ]
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %.5373.i.i290 = phi ptr [ %i.nu, %.lr.ph291 ], [ %.5373.i.i290.ph, %.lr.ph291.preheader ] ; 2 uses
  %.17.i.i289 = phi ptr [ %i.nw, %.lr.ph291 ], [ %.17.i.i289.ph, %.lr.ph291.preheader ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.5373.i.i290, i64 1
  %i.nv = load i8, ptr %.5373.i.i290, align 1, !tbaa !15
  %i.nw = getelementptr inbounds nuw i8, ptr %.17.i.i289, i64 1 ; 2 uses
  store i8 %i.nv, ptr %.17.i.i289, align 1, !tbaa !15
  %i.nx = icmp ult ptr %i.nw, %i.ke
  br i1 %i.nx, label %.lr.ph291, label %.preheader199, !llvm.loop !113

bb.bq:                                            ; preds = %bb.bm
  %i.ny = load i64, ptr %.3371.i.i, align 1
  store i64 %i.ny, ptr %i.mp, align 1
  %i.nz = icmp ugt i64 %.13.i.i, 16
  br i1 %i.nz, label %bb.br, label %.preheader199

bb.br:                                            ; preds = %bb.bq
  %i.oa = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.09.i67 = phi ptr [ %i.oa, %bb.br ], [ %i.oc, %bb.bs ] ; 2 uses
  %.3371.i.i.pn = phi ptr [ %.3371.i.i, %bb.br ], [ %.0.i68, %bb.bs ]
  %.0.i68 = getelementptr inbounds nuw i8, ptr %.3371.i.i.pn, i64 8 ; 2 uses
  %i.ob = load i64, ptr %.0.i68, align 1
  store i64 %i.ob, ptr %.09.i67, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.09.i67, i64 8 ; 2 uses
  %i.od = icmp ult ptr %i.oc, %i.ke
  br i1 %i.od, label %bb.bs, label %.preheader199, !llvm.loop !1

.preheader199:                                    ; preds = %bb.bs, %.lr.ph291, %.lr.ph294, %bb.bq, %bb.bp, %vec.epilog.middle.block653, %middle.block636, %bb.bg, %bb.bi, %vec.epilog.middle.block690, %middle.block673, %bb.n
  %.3.ph = phi ptr [ %.2, %bb.bg ], [ %1, %bb.n ], [ %.2, %middle.block673 ], [ %.2, %vec.epilog.middle.block690 ], [ %.2, %bb.bq ], [ %.2, %bb.bi ], [ %.2, %.lr.ph294 ], [ %.2, %middle.block636 ], [ %.2, %vec.epilog.middle.block653 ], [ %.2, %.lr.ph291 ], [ %.2, %bb.bp ], [ %.2, %bb.bs ] ; 2 uses
  %.6386.i.i.ph = phi ptr [ %i.ke, %bb.bg ], [ %2, %bb.n ], [ %i.lf, %middle.block673 ], [ %i.lk, %vec.epilog.middle.block690 ], [ %i.ke, %bb.bq ], [ %i.ke, %bb.bi ], [ %i.lo, %.lr.ph294 ], [ %i.ke, %middle.block636 ], [ %i.ke, %vec.epilog.middle.block653 ], [ %i.ke, %.lr.ph291 ], [ %i.ke, %bb.bp ], [ %i.ke, %bb.bs ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.of = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.og = zext i8 %i.of to i32                    ; 3 uses
  %i.oh = lshr i32 %i.og, 4                       ; 2 uses
  %.not439.i.i283 = icmp eq i32 %i.oh, 15
  br i1 %.not439.i.i283, label %.thread160, label %.lr.ph285

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.u, %read_variable_length.exit79, %bb.w, %bb.p, %read_variable_length.exit, %bb.r, %bb.ac, %.thread156, %.preheader210.preheader, %.preheader207.preheader, %.preheader210, %.preheader207, %.preheader198, %.preheader196, %.preheader198.preheader, %.preheader196.preheader, %bb.az, %.thread160, %read_variable_length.exit85, %bb.av, %bb.bn, %bb.be, %.loopexit215, %read_variable_length.exit91, %bb.ax
  %.9 = phi ptr [ %.6, %bb.ax ], [ %.2, %.loopexit215 ], [ %.4165, %.thread160 ], [ %.2, %bb.be ], [ %.19, %read_variable_length.exit91 ], [ %i.bn, %.preheader210 ], [ %.17176, %bb.av ], [ %.2, %bb.bn ], [ %i.js, %.preheader196 ], [ %i.ie, %read_variable_length.exit85 ], [ %.7, %bb.az ], [ %i.ie, %.preheader198 ], [ %i.cr, %.preheader207 ], [ %i.jo, %.preheader196.preheader ], [ %i.ia, %.preheader198.preheader ], [ %i.ch, %bb.u ], [ %i.cr, %read_variable_length.exit79 ], [ %.15151, %bb.w ], [ %i.bg, %bb.p ], [ %.13132, %bb.r ], [ %i.bn, %read_variable_length.exit ], [ %.10, %.thread156 ], [ %i.bj, %.preheader210.preheader ], [ %i.cn, %.preheader207.preheader ], [ %.10, %bb.ac ]
  %i.oi = ptrtoint ptr %.9 to i64
  %i.oj = ptrtoint ptr %1 to i64
  %.neg.i.i = sub i64 %i.oj, %i.oi
  %i.ok = trunc i64 %.neg.i.i to i32
  %i.ol = add nsw i32 %i.ok, -1
  br label %LZ4_decompress_safe_doubleDict.exit

LZ4_decompress_safe_doubleDict.exit:              ; preds = %LZ4_wildCopy32.exit.thread, %bb.ay, %bb.h, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.q, %bb.h ], [ %i.ja, %bb.ay ], [ %i.ol, %LZ4_wildCopy32.exit.thread ] ; 4 uses
  %i.om = icmp slt i32 %.0, 1
  br i1 %i.om, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %LZ4_decompress_safe_doubleDict.exit
  %i.on = zext nneg i32 %.0 to i64                ; 2 uses
  %i.oo = load i64, ptr %i.a, align 8, !tbaa !49
  %i.op = add i64 %i.oo, %i.on
  store i64 %i.op, ptr %i.a, align 8, !tbaa !49
  %i.oq = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.on
  store ptr %i.or, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.bu:                                            ; preds = %bb.d
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.os, align 8, !tbaa !52
  %i.ot = sub i64 0, %i.b
  %i.ou = getelementptr inbounds i8, ptr %i.j, i64 %i.ot ; 2 uses
  store ptr %i.ou, ptr %0, align 8, !tbaa !51
  %i.ov = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.ou, i64 noundef %i.b) ; 4 uses
  %i.ow = icmp slt i32 %i.ov, 1
  br i1 %i.ow, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ox = zext nneg i32 %i.ov to i64              ; 2 uses
  store i64 %i.ox, ptr %i.a, align 8, !tbaa !49
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  store ptr %i.oy, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

LZ4_decompress_safe_doubleDict.exit.thread:       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.bv, %bb.bt, %bb.bu, %LZ4_decompress_safe_doubleDict.exit, %bb.b
  %.058 = phi i32 [ %.0, %LZ4_decompress_safe_doubleDict.exit ], [ %i.ov, %bb.bu ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.bt ], [ %i.ov, %bb.bv ], [ -1, %bb.m ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ]
  ret i32 %.058
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #1 {
bb.a:
  %i.a = sub nsw i64 0, %4
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 9 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !15
  %i.n = icmp ne i8 %i.m, 0
  %i.o = sext i1 %i.n to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = icmp samesign ult i32 %3, 64
  br i1 %i.r, label %.preheader134, label %.preheader144

.preheader144:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader144
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
end_hunk_5
begin_hunk_6_@LZ4_decompress_safe_withSmallPrefix:bb.a
  store i64 %i.fe, ptr %i.eu, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load i64, ptr %i.fg, align 1
  store i64 %i.fh, ptr %i.ff, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fk = load i16, ptr %i.fj, align 1
  store i16 %i.fk, ptr %i.fi, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 3 ; 2 uses
  %i.fo = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = lshr i32 %i.fp, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fq, 15
  br i1 %.not439.i, label %.thread97, label %.lr.ph213

.loopexit:                                        ; preds = %.backedge, %.preheader144
  %.4 = phi ptr [ %i.t, %.preheader144 ], [ %i.cl, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader144 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.v, %.preheader144 ], [ %i.cn, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.x, %.preheader144 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.fr = icmp eq i64 %.4362.i, 15
  br i1 %i.fr, label %.thread97, label %.loopexit.thread

.thread97:                                        ; preds = %bb.af, %.preheader134, %.loopexit
  %.0364.i106 = phi i32 [ %.0364.i, %.loopexit ], [ %i.kn, %.preheader134 ], [ %i.fp, %bb.af ]
  %.7387.i104 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader134 ], [ %i.fm, %bb.af ] ; 2 uses
  %.4102 = phi ptr [ %.4, %.loopexit ], [ %i.kl, %.preheader134 ], [ %i.fn, %bb.af ] ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
  %.not.i19 = icmp ult ptr %.4102, %i.fs
  br i1 %.not.i19, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread97
  %i.ft = load i8, ptr %.4102, align 1, !tbaa !15 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.4102, i64 1 ; 4 uses
  %.not21.i21 = icmp eq i8 %i.ft, -1
  br i1 %.not21.i21, label %.preheader133.preheader, label %read_variable_length.exit24.thread110, !prof !27

.preheader133.preheader:                          ; preds = %bb.ag
  %.not22.i23474 = icmp ult ptr %i.fu, %i.fs
  br i1 %.not22.i23474, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit24.thread110:            ; preds = %bb.ag
  %i.fv = zext i8 %i.ft to i64
  br label %bb.ah

.preheader133:                                    ; preds = %.lr.ph477
  %.not22.i23 = icmp ult ptr %i.fy, %i.fs
  br i1 %.not22.i23, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph477:                                        ; preds = %.preheader133.preheader, %.preheader133
  %.0.i22476 = phi i64 [ %i.fz, %.preheader133 ], [ 255, %.preheader133.preheader ]
  %.16475 = phi ptr [ %i.fy, %.preheader133 ], [ %i.fu, %.preheader133.preheader ] ; 2 uses
  %i.fw = load i8, ptr %.16475, align 1, !tbaa !15 ; 2 uses
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %.16475, i64 1 ; 5 uses
  %i.fz = add i64 %.0.i22476, %i.fx               ; 3 uses
  %i.ga = icmp eq i8 %i.fw, -1
  br i1 %i.ga, label %.preheader133, label %read_variable_length.exit24, !llvm.loop !3

read_variable_length.exit24:                      ; preds = %.lr.ph477
  %i.gb = icmp eq i64 %i.fz, -1
  br i1 %i.gb, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit24.thread110, %read_variable_length.exit24
  %.016.i20114 = phi i64 [ %i.fv, %read_variable_length.exit24.thread110 ], [ %i.fz, %read_variable_length.exit24 ]
  %.17113 = phi ptr [ %i.fu, %read_variable_length.exit24.thread110 ], [ %i.fy, %read_variable_length.exit24 ] ; 3 uses
  %i.gc = add i64 %.016.i20114, 15                ; 3 uses
  %i.gd = ptrtoint ptr %.7387.i104 to i64
  %i.ge = xor i64 %i.gd, -1
  %i.gf = icmp ugt i64 %i.gc, %i.ge
  %i.gg = ptrtoint ptr %.17113 to i64
  %i.gh = xor i64 %i.gg, -1
  %i.gi = icmp ugt i64 %i.gc, %i.gh
  %or.cond125 = select i1 %i.gf, i1 true, i1 %i.gi, !prof !44
  br i1 %or.cond125, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph213, %bb.ah, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i106, %bb.ah ], [ %i.eo, %.lr.ph213 ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i104, %bb.ah ], [ %.6386.i212, %.lr.ph213 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17113, %bb.ah ], [ %i.ep, %.lr.ph213 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.gc, %bb.ah ], [ %i.eq, %.lr.ph213 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.7387.i103, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1369, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i103, %.loopexit.thread ], [ %.0380.i206, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gj, %.loopexit.thread ], [ %i.as, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i105, %.loopexit.thread ], [ %i.af, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ar, %bb.k ] ; 4 uses
  %i.gk = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.gl = icmp ugt ptr %.3377.i, %i.gk
  br i1 %i.gl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.go = icmp ugt ptr %i.gm, %i.gn
  br i1 %i.go, label %bb.aj, label %.preheader132

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.gp, %i.f
  %i.gq = icmp ugt ptr %.3377.i, %i.h
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.gq
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.q
  %i.gu = trunc i64 %i.gt to i32
  br label %LZ4_decompress_generic.exit

.preheader132:                                    ; preds = %bb.ai, %.preheader132
  %.09.i8 = phi ptr [ %i.gw, %.preheader132 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i9 = phi ptr [ %i.gx, %.preheader132 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gv = load i64, ptr %.0.i9, align 1
  store i64 %i.gv, ptr %.09.i8, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.gy = icmp ult ptr %i.gw, %.3377.i
  br i1 %i.gy, label %.preheader132, label %LZ4_wildCopy8.exit10, !llvm.loop !1

LZ4_wildCopy8.exit10:                             ; preds = %.preheader132
  %.val37 = load i16, ptr %i.gm, align 1, !tbaa !30
  %i.gz = zext i16 %.val37 to i64                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.hb = sub nsw i64 0, %i.gz
  %i.hc = getelementptr inbounds i8, ptr %.3377.i, i64 %i.hb
  %i.hd = and i32 %.1365.i, 15
  %i.he = zext nneg i32 %i.hd to i64
  br label %.loopexit135

.loopexit135:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit10
  %.7 = phi ptr [ %i.ha, %LZ4_wildCopy8.exit10 ], [ %i.ez, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit10 ], [ %i.eu, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.hc, %LZ4_wildCopy8.exit10 ], [ %i.fb, %bb.ae ]
  %.0366.i = phi i64 [ %i.gz, %LZ4_wildCopy8.exit10 ], [ %i.ey, %bb.ae ]
  %.10.i = phi i64 [ %i.he, %LZ4_wildCopy8.exit10 ], [ %i.ex, %bb.ae ] ; 2 uses
  %i.hf = icmp eq i64 %.10.i, 15
  br i1 %i.hf, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit135
  %i.hg = getelementptr inbounds i8, ptr %i.f, i64 -6 ; 3 uses
  %.not.i25 = icmp ult ptr %.7, %i.hg
  br i1 %.not.i25, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.hh = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i27 = icmp eq i8 %i.hh, -1
  br i1 %.not21.i27, label %.preheader131.preheader, label %bb.an, !prof !27

.preheader131.preheader:                          ; preds = %bb.am
  %.not22.i29479 = icmp ult ptr %i.hi, %i.hg
  br i1 %.not22.i29479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hj = zext i8 %i.hh to i64
  br label %read_variable_length.exit30

.preheader131:                                    ; preds = %.lr.ph482
  %.not22.i29 = icmp ult ptr %i.hm, %i.hg
  br i1 %.not22.i29, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader131.preheader, %.preheader131
  %.0.i28481 = phi i64 [ %i.hn, %.preheader131 ], [ 255, %.preheader131.preheader ]
  %.18480 = phi ptr [ %i.hm, %.preheader131 ], [ %i.hi, %.preheader131.preheader ] ; 2 uses
  %i.hk = load i8, ptr %.18480, align 1, !tbaa !15 ; 2 uses
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.18480, i64 1 ; 4 uses
  %i.hn = add i64 %.0.i28481, %i.hl               ; 2 uses
  %i.ho = icmp eq i8 %i.hk, -1
  br i1 %i.ho, label %.preheader131, label %read_variable_length.exit30, !llvm.loop !3

read_variable_length.exit30:                      ; preds = %.lr.ph482, %bb.an
  %.19 = phi ptr [ %i.hi, %bb.an ], [ %i.hm, %.lr.ph482 ] ; 2 uses
  %.016.i26 = phi i64 [ %i.hj, %bb.an ], [ %i.hn, %.lr.ph482 ] ; 2 uses
  %i.hp = icmp ne i64 %.016.i26, -1               ; 2 uses
  %i.hq = add i64 %.016.i26, 15                   ; 2 uses
  %i.hr = ptrtoint ptr %.10390.i to i64
  %i.hs = xor i64 %i.hr, -1
  %i.ht = icmp ule i64 %i.hq, %i.hs
  %.11.i = select i1 %i.hp, i64 %i.hq, i64 15
  %.not129 = select i1 %i.hp, i1 %i.ht, i1 false
  br i1 %.not129, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit30, %.loopexit135
  %.8 = phi ptr [ %.19, %read_variable_length.exit30 ], [ %.7, %.loopexit135 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit30 ], [ %.10.i, %.loopexit135 ]
  %i.hu = add i64 %.12.i, 4
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1588, %bb.p ], [ %i.bh, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hu, %bb.ao ], [ %i.bv, %bb.p ], [ %i.ca, %bb.q ] ; 3 uses
  %.11391.i487 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.hv = icmp ult ptr %.1369.i, %i.b
  br i1 %i.hv, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit147
  %i.hw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hx = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.hy = icmp ult i64 %.1367.i, 8
  br i1 %i.hy, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hz = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hz, ptr %.11391.i, align 1, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !15
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !37
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.io = load i32, ptr %i.im, align 1
  store i32 %i.io, ptr %i.in, align 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !37
  %i.ir = sext i32 %i.iq to i64
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.im, i64 %i.is
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.iu = load i64, ptr %.1369.i, align 1
  store i64 %i.iu, ptr %.11391.i, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.it, %bb.aq ], [ %i.iv, %bb.ar ] ; 6 uses
  %.3371.i488 = ptrtoaddr ptr %.3371.i to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.ix = icmp ugt ptr %i.hw, %i.hx
  br i1 %i.ix, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds i8, ptr %i.h, i64 -7 ; 4 uses
  %i.iz = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.ja = icmp ugt ptr %i.hw, %i.iz
  br i1 %i.ja, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jb = icmp ult ptr %i.iw, %i.iy
  br i1 %i.jb, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.jd, %.preheader ], [ %i.iw, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.je, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.jc = load i64, ptr %.0.i, align 1
  store i64 %i.jc, ptr %.09.i, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.jf = icmp ult ptr %i.jd, %i.iy
  br i1 %i.jf, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.jg = ptrtoint ptr %i.iy to i64
  %i.jh = ptrtoint ptr %i.iw to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds i8, ptr %.3371.i, i64 %i.ji
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.iy, %LZ4_wildCopy8.exit ], [ %i.iw, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.jj, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.jk = icmp ult ptr %.16.i, %i.hw
  br i1 %i.jk, label %iter.check, label %.preheader134

iter.check:                                       ; preds = %bb.av
  %i.jl = add i64 %.13.i, %.11391.i487
  %i.jm = add i64 %i.q, %i.g
  %i.jn = add i64 %i.jm, -7
  %i.jo = add i64 %.11391.i487, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.jo)
  %i.jp = sub i64 %i.jl, %umax                    ; 7 uses
  %min.iters.check490 = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check490, label %.lr.ph219.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jq = sub i64 %.11391.i487, %.3371.i488
  %i.jr = add i64 %i.jq, 7
  %diff.check = icmp ult i64 %i.jr, 31
  br i1 %diff.check, label %.lr.ph219.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check491 = icmp ult i64 %i.jp, 32
  br i1 %min.iters.check491, label %vec.epilog.ph, label %vector.ph492

vector.ph492:                                     ; preds = %vector.main.loop.iter.check
  %i.js = and i64 %i.jp, 24
  %n.vec493 = and i64 %i.jp, -32                  ; 5 uses
  %i.jt = getelementptr i8, ptr %.4372.i, i64 %n.vec493
  %i.ju = getelementptr i8, ptr %.16.i, i64 %n.vec493
  br label %vector.body494

vector.body494:                                   ; preds = %vector.ph492, %vector.body494
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next499, %vector.body494 ] ; 3 uses
  %next.gep496 = getelementptr i8, ptr %.4372.i, i64 %index495 ; 2 uses
  %next.gep497 = getelementptr i8, ptr %.16.i, i64 %index495 ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep496, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep496, align 1, !tbaa !15
  %wide.load498 = load <16 x i8>, ptr %i.jv, align 1, !tbaa !15
  %i.jw = getelementptr i8, ptr %next.gep497, i64 16
  store <16 x i8> %wide.load, ptr %next.gep497, align 1, !tbaa !15
  store <16 x i8> %wide.load498, ptr %i.jw, align 1, !tbaa !15
  %index.next499 = add nuw i64 %index495, 32      ; 2 uses
  %i.jx = icmp eq i64 %index.next499, %n.vec493
  br i1 %i.jx, label %middle.block500, label %vector.body494, !llvm.loop !116

middle.block500:                                  ; preds = %vector.body494
  %cmp.n501 = icmp eq i64 %i.jp, %n.vec493
  br i1 %cmp.n501, label %.preheader134, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block500
  %min.epilog.iters.check = icmp eq i64 %i.js, 0
  br i1 %min.epilog.iters.check, label %.lr.ph219.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec493, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec504 = and i64 %i.jp, -8                   ; 4 uses
  %i.jy = getelementptr i8, ptr %.4372.i, i64 %n.vec504
  %i.jz = getelementptr i8, ptr %.16.i, i64 %n.vec504
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index505 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next509, %vec.epilog.vector.body ] ; 3 uses
  %next.gep506 = getelementptr i8, ptr %.4372.i, i64 %index505
  %next.gep507 = getelementptr i8, ptr %.16.i, i64 %index505
  %wide.load508 = load <8 x i8>, ptr %next.gep506, align 1, !tbaa !15
  store <8 x i8> %wide.load508, ptr %next.gep507, align 1, !tbaa !15
  %index.next509 = add nuw i64 %index505, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n510 = icmp eq i64 %i.jp, %n.vec504
  br i1 %cmp.n510, label %.preheader134, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i218.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jt, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  %.17.i217.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.ju, %vec.epilog.iter.check ], [ %i.jz, %vec.epilog.middle.block ]
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %.lr.ph219
  %.5373.i218 = phi ptr [ %i.kb, %.lr.ph219 ], [ %.5373.i218.ph, %.lr.ph219.preheader ] ; 2 uses
  %.17.i217 = phi ptr [ %i.kd, %.lr.ph219 ], [ %.17.i217.ph, %.lr.ph219.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.5373.i218, i64 1
  %i.kc = load i8, ptr %.5373.i218, align 1, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %.17.i217, i64 1 ; 2 uses
  store i8 %i.kc, ptr %.17.i217, align 1, !tbaa !15
  %i.ke = icmp ult ptr %i.kd, %i.hw
  br i1 %i.ke, label %.lr.ph219, label %.preheader134, !llvm.loop !118

bb.aw:                                            ; preds = %bb.as
  %i.kf = load i64, ptr %.3371.i, align 1
  store i64 %i.kf, ptr %i.iw, align 1
  %i.kg = icmp ugt i64 %.13.i, 16
  br i1 %i.kg, label %bb.ax, label %.preheader134

bb.ax:                                            ; preds = %bb.aw
  %i.kh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i5 = phi ptr [ %i.kh, %bb.ax ], [ %i.kj, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i6, %bb.ay ]
  %.0.i6 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.ki = load i64, ptr %.0.i6, align 1
  store i64 %i.ki, ptr %.09.i5, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %.09.i5, i64 8 ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.hw
  br i1 %i.kk, label %bb.ay, label %.preheader134, !llvm.loop !1

.preheader134:                                    ; preds = %bb.ay, %.lr.ph219, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block500, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph219 ], [ %.2, %middle.block500 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.hw, %.lr.ph219 ], [ %i.hw, %middle.block500 ], [ %i.hw, %vec.epilog.middle.block ], [ %i.hw, %bb.aw ], [ %i.hw, %bb.av ], [ %i.hw, %bb.ay ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.km = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kn = zext i8 %i.km to i32                    ; 3 uses
  %i.ko = lshr i32 %i.kn, 4                       ; 2 uses
  %.not439.i211 = icmp eq i32 %i.ko, 15
  br i1 %.not439.i211, label %.thread97, label %.lr.ph213

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit18, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread93, %.preheader142.preheader, %.preheader139.preheader, %.preheader142, %.preheader139, %.preheader133, %.preheader131, %.preheader133.preheader, %.preheader131.preheader, %bb.al, %.thread97, %read_variable_length.exit24, %bb.ah, %bb.at, %.loopexit147, %read_variable_length.exit30, %bb.aj
  %.9 = phi ptr [ %.6, %bb.aj ], [ %.2, %.loopexit147 ], [ %.2, %bb.at ], [ %.19, %read_variable_length.exit30 ], [ %i.an, %.preheader142 ], [ %.17113, %bb.ah ], [ %i.hm, %.preheader131 ], [ %i.fy, %read_variable_length.exit24 ], [ %i.br, %.preheader139 ], [ %.4102, %.thread97 ], [ %i.fy, %.preheader133 ], [ %.7, %bb.al ], [ %i.hi, %.preheader131.preheader ], [ %i.fu, %.preheader133.preheader ], [ %i.bh, %bb.m ], [ %i.br, %read_variable_length.exit18 ], [ %.1588, %bb.o ], [ %i.ag, %bb.h ], [ %.1369, %bb.j ], [ %i.an, %read_variable_length.exit ], [ %i.aj, %.preheader142.preheader ], [ %i.bn, %.preheader139.preheader ], [ %.10, %.thread93 ]
  %i.kp = ptrtoint ptr %.9 to i64
  %i.kq = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.kq, %i.kp
  %i.kr = trunc i64 %.neg.i to i32
  %i.ks = add nsw i32 %i.kr, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gu, %bb.ak ], [ %i.o, %bb.d ], [ -1, %bb.e ], [ %i.ks, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_fast_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %2 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.b
  %.0.i53 = phi ptr [ %1, %bb.b ], [ %.4.i55, %._crit_edge.i ] ; 2 uses
  %.086.i.i = phi ptr [ %2, %bb.b ], [ %i.cb, %._crit_edge.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0.i53, align 1, !tbaa !15
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 4                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 15
  br i1 %i.m, label %.preheader34.i, label %bb.c

.preheader34.i:                                   ; preds = %.thread.i, %.preheader34.i
  %i.n = phi ptr [ %i.q, %.preheader34.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.0.i2.i = phi i64 [ %i.r, %.preheader34.i ], [ 0, %.thread.i ]
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add i64 %.0.i2.i, %i.p                   ; 2 uses
  %i.s = icmp eq i8 %i.o, -1
  br i1 %i.s, label %.preheader34.i, label %read_long_length_no_check.exit.i, !llvm.loop !5

read_long_length_no_check.exit.i:                 ; preds = %.preheader34.i
  %i.t = add i64 %i.r, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i54 = phi ptr [ %i.q, %read_long_length_no_check.exit.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.085.i.i = phi i64 [ %i.t, %read_long_length_no_check.exit.i ], [ %i.l, %.thread.i ] ; 4 uses
  %i.u = ptrtoint ptr %.086.i.i to i64
  %i.v = sub i64 %i.f, %i.u
  %i.w = icmp ult i64 %i.v, %.085.i.i
  br i1 %i.w, label %LZ4_decompress_fast.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i, ptr nonnull align 1 %.1.i54, i64 %.085.i.i, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.086.i.i, i64 %.085.i.i ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i54, i64 %.085.i.i ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.f, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 12
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.x, %i.e
  br i1 %i.ac, label %LZ4_decompress_fast.exit, label %LZ4_decompress_fast.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.j, 15                        ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %.val.i = load i16, ptr %i.y, align 1, !tbaa !30 ; 2 uses
  %i.af = zext i16 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = icmp eq i32 %i.ad, 15
  br i1 %i.ah, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %i.ai = phi ptr [ %i.al, %.preheader.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.am, %.preheader.i ], [ 0, %bb.f ]
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = add i64 %.0.i4.i, %i.ak                 ; 2 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader.i, label %read_long_length_no_check.exit5.i, !llvm.loop !5

read_long_length_no_check.exit5.i:                ; preds = %.preheader.i
  %i.ao = add i64 %i.am, 15
  br label %bb.g
end_hunk_6
begin_hunk_7_@LZ4_decompress_safe_partial_usingDict:bb.a
  %.7387.i.i = phi ptr [ %1, %.preheader152.i ], [ %.0380.i.be.i, %.backedge.i75 ] ; 2 uses
  %.0364.i.i78 = phi i32 [ %i.ku, %.preheader152.i ], [ %i.nm, %.backedge.i75 ] ; 2 uses
  %.4362.i.i79 = phi i64 [ %i.kw, %.preheader152.i ], [ %i.no, %.backedge.i75 ] ; 2 uses
  %i.qq = icmp eq i64 %.4362.i.i79, 15
  br i1 %i.qq, label %.thread101.i, label %.loopexit142.thread.i

.thread101.i:                                     ; preds = %bb.cf, %.preheader141.i, %.loopexit142.i
  %.0364.i110.i = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %i.vl, %.preheader141.i ], [ %i.qo, %bb.cf ]
  %.7387.i108.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.6386.i.ph.i, %.preheader141.i ], [ %i.ql, %bb.cf ] ; 2 uses
  %.4106.i = phi ptr [ %.4.i77, %.loopexit142.i ], [ %i.vj, %.preheader141.i ], [ %i.qm, %bb.cf ] ; 4 uses
  %i.qr = getelementptr inbounds i8, ptr %i.kh, i64 -15 ; 3 uses
  %.not.i23.i = icmp ult ptr %.4106.i, %i.qr
  br i1 %.not.i23.i, label %bb.cg, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cg:                                            ; preds = %.thread101.i
  %i.qs = load i8, ptr %.4106.i, align 1, !tbaa !15 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.4106.i, i64 1 ; 4 uses
  %.not21.i25.i = icmp eq i8 %i.qs, -1
  br i1 %.not21.i25.i, label %.preheader140.i.preheader, label %read_variable_length.exit28.thread114.i, !prof !27

.preheader140.i.preheader:                        ; preds = %bb.cg
  %.not22.i27.i692 = icmp ult ptr %i.qt, %i.qr
  br i1 %.not22.i27.i692, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

read_variable_length.exit28.thread114.i:          ; preds = %bb.cg
  %i.qu = zext i8 %i.qs to i64
  br label %bb.ch

.preheader140.i:                                  ; preds = %.lr.ph695
  %.not22.i27.i = icmp ult ptr %i.qx, %i.qr
  br i1 %.not22.i27.i, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph695:                                        ; preds = %.preheader140.i.preheader, %.preheader140.i
  %.0.i26.i694 = phi i64 [ %i.qy, %.preheader140.i ], [ 255, %.preheader140.i.preheader ]
  %.17.i69693 = phi ptr [ %i.qx, %.preheader140.i ], [ %i.qt, %.preheader140.i.preheader ] ; 2 uses
  %i.qv = load i8, ptr %.17.i69693, align 1, !tbaa !15 ; 2 uses
  %i.qw = zext i8 %i.qv to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %.17.i69693, i64 1 ; 5 uses
  %i.qy = add i64 %.0.i26.i694, %i.qw             ; 3 uses
  %i.qz = icmp eq i8 %i.qv, -1
  br i1 %i.qz, label %.preheader140.i, label %read_variable_length.exit28.i, !llvm.loop !3

read_variable_length.exit28.i:                    ; preds = %.lr.ph695
  %i.ra = icmp eq i64 %i.qy, -1
  br i1 %i.ra, label %LZ4_wildCopy32.exit.thread.i54, label %bb.ch

bb.ch:                                            ; preds = %read_variable_length.exit28.i, %read_variable_length.exit28.thread114.i
  %.016.i24118.i = phi i64 [ %i.qu, %read_variable_length.exit28.thread114.i ], [ %i.qy, %read_variable_length.exit28.i ]
  %.18117.i = phi ptr [ %i.qt, %read_variable_length.exit28.thread114.i ], [ %i.qx, %read_variable_length.exit28.i ] ; 3 uses
  %i.rb = add i64 %.016.i24118.i, 15              ; 3 uses
  %i.rc = ptrtoint ptr %.7387.i108.i to i64
  %i.rd = xor i64 %i.rc, -1
  %i.re = icmp ugt i64 %i.rb, %i.rd
  %i.rf = ptrtoint ptr %.18117.i to i64
  %i.rg = xor i64 %i.rf, -1
  %i.rh = icmp ugt i64 %i.rb, %i.rg
  %or.cond133.i = select i1 %i.re, i1 true, i1 %i.rh, !prof !44
  br i1 %or.cond133.i, label %LZ4_wildCopy32.exit.thread.i54, label %.loopexit142.thread.i, !prof !44

.loopexit142.thread.i:                            ; preds = %.lr.ph221.i, %bb.ch, %.loopexit142.i
  %.0364.i109.i40 = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %.0364.i110.i, %bb.ch ], [ %i.pn, %.lr.ph221.i ]
  %.7387.i107.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.7387.i108.i, %bb.ch ], [ %.6386.i220.i, %.lr.ph221.i ] ; 2 uses
  %.5.i41 = phi ptr [ %.4.i77, %.loopexit142.i ], [ %.18117.i, %bb.ch ], [ %i.po, %.lr.ph221.i ]
  %.6.i.i42 = phi i64 [ %.4362.i.i79, %.loopexit142.i ], [ %i.rb, %bb.ch ], [ %i.pp, %.lr.ph221.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.7387.i107.i, i64 %.6.i.i42
  br label %LZ4_wildCopy32.exit.i43

LZ4_wildCopy32.exit.i43:                          ; preds = %bb.bk, %.loopexit142.thread.i
  %.6.i44 = phi ptr [ %.5.i41, %.loopexit142.thread.i ], [ %.1473.i, %bb.bk ] ; 7 uses
  %.8388.i.i = phi ptr [ %.7387.i107.i, %.loopexit142.thread.i ], [ %.0380.i214.i, %bb.bk ] ; 7 uses
  %.3377.i.i = phi ptr [ %i.ri, %.loopexit142.thread.i ], [ %i.lr, %bb.bk ] ; 4 uses
  %.1365.i.i45 = phi i32 [ %.0364.i109.i40, %.loopexit142.thread.i ], [ %i.le, %bb.bk ]
  %.7.i.i46 = phi i64 [ %.6.i.i42, %.loopexit142.thread.i ], [ %i.lq, %bb.bk ] ; 3 uses
  %i.rj = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.rk = icmp ugt ptr %.3377.i.i, %i.rj
  br i1 %i.rk, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy32.exit.i43
  %i.rl = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46 ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.kh, i64 -8
  %i.rn = icmp ugt ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.cj, label %.preheader139.i

bb.cj:                                            ; preds = %bb.ci, %LZ4_wildCopy32.exit.i43
  %i.ro = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46
  %i.rp = icmp ugt ptr %i.ro, %i.kh               ; 2 uses
  %i.rq = ptrtoint ptr %i.kh to i64
  %i.rr = ptrtoint ptr %.6.i44 to i64
  %i.rs = sub i64 %i.rq, %i.rr                    ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rs
  %.4378.i.i61 = select i1 %i.rp, ptr %i.rt, ptr %.3377.i.i ; 2 uses
  %i.ru = icmp ugt ptr %.4378.i.i61, %i.kj
  br i1 %i.ru, label %.thread125.i, label %bb.ck

.thread125.i:                                     ; preds = %bb.cj
  %i.rv = ptrtoint ptr %.8388.i.i to i64
  %i.rw = sub i64 %i.ko, %i.rv                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %i.rw, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rw
  br label %bb.cy

bb.ck:                                            ; preds = %bb.cj
  %.8.i.i62 = select i1 %i.rp, i64 %i.rs, i64 %.7.i.i46 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %.8.i.i62, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.8.i.i62 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.8.i.i62 ; 2 uses
  %i.sa = icmp ne ptr %.4378.i.i61, %i.kj
  %i.sb = getelementptr inbounds i8, ptr %i.kh, i64 -2
  %.not442.i.i63 = icmp ult ptr %i.ry, %i.sb
  %or.cond460.i.i64 = select i1 %i.sa, i1 %.not442.i.i63, i1 false
  br i1 %or.cond460.i.i64, label %LZ4_wildCopy8.exit14.i, label %bb.cy

.preheader139.i:                                  ; preds = %bb.ci, %.preheader139.i
  %.09.i12.i = phi ptr [ %i.sd, %.preheader139.i ], [ %.8388.i.i, %bb.ci ] ; 2 uses
  %.0.i13.i = phi ptr [ %i.se, %.preheader139.i ], [ %.6.i44, %bb.ci ] ; 2 uses
  %i.sc = load i64, ptr %.0.i13.i, align 1
  store i64 %i.sc, ptr %.09.i12.i, align 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.09.i12.i, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 8
  %i.sf = icmp ult ptr %i.sd, %.3377.i.i
  br i1 %i.sf, label %.preheader139.i, label %LZ4_wildCopy8.exit14.i, !llvm.loop !1

LZ4_wildCopy8.exit14.i:                           ; preds = %.preheader139.i, %bb.ck
  %.7.i47 = phi ptr [ %i.ry, %bb.ck ], [ %i.rl, %.preheader139.i ] ; 2 uses
  %.9389.i.i = phi ptr [ %i.rz, %bb.ck ], [ %.3377.i.i, %.preheader139.i ] ; 2 uses
  %.val41.i48 = load i16, ptr %.7.i47, align 1, !tbaa !30
  %i.sg = zext i16 %.val41.i48 to i64             ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.7.i47, i64 2
  %i.si = sub nsw i64 0, %i.sg
  %i.sj = getelementptr inbounds i8, ptr %.9389.i.i, i64 %i.si
  %i.sk = and i32 %.1365.i.i45, 15
  %i.sl = zext nneg i32 %i.sk to i64
  br label %.loopexit143.i

.loopexit143.i:                                   ; preds = %bb.ce, %LZ4_wildCopy8.exit14.i
  %.8.i49 = phi ptr [ %i.sh, %LZ4_wildCopy8.exit14.i ], [ %i.py, %bb.ce ] ; 5 uses
  %.10390.i.i = phi ptr [ %.9389.i.i, %LZ4_wildCopy8.exit14.i ], [ %i.pt, %bb.ce ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.sj, %LZ4_wildCopy8.exit14.i ], [ %i.qa, %bb.ce ]
  %.0366.i.i50 = phi i64 [ %i.sg, %LZ4_wildCopy8.exit14.i ], [ %i.px, %bb.ce ]
  %.10.i.i51 = phi i64 [ %i.sl, %LZ4_wildCopy8.exit14.i ], [ %i.pw, %bb.ce ] ; 2 uses
  %i.sm = icmp eq i64 %.10.i.i51, 15
  br i1 %i.sm, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.loopexit143.i
  %i.sn = getelementptr inbounds i8, ptr %i.kh, i64 -6 ; 3 uses
  %.not.i29.i = icmp ult ptr %.8.i49, %i.sn
  br i1 %.not.i29.i, label %bb.cm, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cm:                                            ; preds = %bb.cl
  %i.so = load i8, ptr %.8.i49, align 1, !tbaa !15 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.8.i49, i64 1 ; 4 uses
  %.not21.i31.i = icmp eq i8 %i.so, -1
  br i1 %.not21.i31.i, label %.preheader138.i.preheader, label %bb.cn, !prof !27

.preheader138.i.preheader:                        ; preds = %bb.cm
  %.not22.i33.i697 = icmp ult ptr %i.sp, %i.sn
  br i1 %.not22.i33.i697, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

bb.cn:                                            ; preds = %bb.cm
  %i.sq = zext i8 %i.so to i64
  br label %read_variable_length.exit34.i

.preheader138.i:                                  ; preds = %.lr.ph700
  %.not22.i33.i = icmp ult ptr %i.st, %i.sn
  br i1 %.not22.i33.i, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph700:                                        ; preds = %.preheader138.i.preheader, %.preheader138.i
  %.0.i32.i699 = phi i64 [ %i.su, %.preheader138.i ], [ 255, %.preheader138.i.preheader ]
  %.19.i60698 = phi ptr [ %i.st, %.preheader138.i ], [ %i.sp, %.preheader138.i.preheader ] ; 2 uses
  %i.sr = load i8, ptr %.19.i60698, align 1, !tbaa !15 ; 2 uses
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %.19.i60698, i64 1 ; 4 uses
  %i.su = add i64 %.0.i32.i699, %i.ss             ; 2 uses
  %i.sv = icmp eq i8 %i.sr, -1
  br i1 %i.sv, label %.preheader138.i, label %read_variable_length.exit34.i, !llvm.loop !3

read_variable_length.exit34.i:                    ; preds = %.lr.ph700, %bb.cn
  %.20.i58 = phi ptr [ %i.sp, %bb.cn ], [ %i.st, %.lr.ph700 ] ; 2 uses
  %.016.i30.i = phi i64 [ %i.sq, %bb.cn ], [ %i.su, %.lr.ph700 ] ; 2 uses
  %i.sw = icmp ne i64 %.016.i30.i, -1             ; 2 uses
  %i.sx = add i64 %.016.i30.i, 15                 ; 2 uses
  %i.sy = ptrtoint ptr %.10390.i.i to i64
  %i.sz = xor i64 %i.sy, -1
  %i.ta = icmp ule i64 %i.sx, %i.sz
  %.11.i.i59 = select i1 %i.sw, i64 %i.sx, i64 15
  %.not137.i = select i1 %i.sw, i1 %i.ta, i1 false
  br i1 %.not137.i, label %bb.co, label %LZ4_wildCopy32.exit.thread.i54

bb.co:                                            ; preds = %read_variable_length.exit34.i, %.loopexit143.i
  %.9.i52 = phi ptr [ %.20.i58, %read_variable_length.exit34.i ], [ %.8.i49, %.loopexit143.i ]
  %.12.i.i53 = phi i64 [ %.11.i.i59, %read_variable_length.exit34.i ], [ %.10.i.i51, %.loopexit143.i ]
  %i.tb = add i64 %.12.i.i53, 4
  br label %.loopexit155.i

.loopexit155.i:                                   ; preds = %bb.bq, %bb.bp, %bb.co
  %.2.i34 = phi ptr [ %.9.i52, %bb.co ], [ %i.mg, %bb.bq ], [ %.1692.i, %bb.bp ] ; 4 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.co ], [ %.2382.i.i, %bb.bp ], [ %.2382.i.i, %bb.bq ] ; 19 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.co ], [ %i.mi, %bb.bp ], [ %i.mi, %bb.bq ] ; 16 uses
  %.1367.i.i35 = phi i64 [ %.0366.i.i50, %bb.co ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bq ] ; 3 uses
  %.13.i.i36 = phi i64 [ %i.tb, %bb.co ], [ %i.mz, %bb.bq ], [ %i.mu, %bb.bp ] ; 3 uses
  %.1369.i.i727 = ptrtoaddr ptr %.1369.i.i to i64
  %i.tc = icmp ult ptr %.1369.i.i, %i.kd
  br i1 %i.tc, label %LZ4_wildCopy32.exit.thread.i54, label %bb.cp, !prof !43

bb.cp:                                            ; preds = %.loopexit155.i
  %i.td = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i36 ; 4 uses
  %i.te = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.tf = icmp ugt ptr %i.td, %i.te
  br i1 %i.tf, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.tg = ptrtoint ptr %.11391.i.i to i64         ; 5 uses
  %i.th = sub i64 %i.ko, %i.tg
  %i.ti = tail call i64 @llvm.umin.i64(i64 %.13.i.i36, i64 %i.th) ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.ti ; 3 uses
  %i.tl = icmp ugt ptr %i.tj, %.11391.i.i
  br i1 %i.tl, label %.preheader.i72, label %bb.cr

.preheader.i72:                                   ; preds = %bb.cq
  %.not.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i, label %.loopexit.i71, label %iter.check

iter.check:                                       ; preds = %.preheader.i72
  %i.tm = add i64 %i.ti, %i.tg
  %i.tn = add i64 %i.tg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tm, i64 %i.tn)
  %i.to = sub i64 %umax, %i.tg                    ; 7 uses
  %min.iters.check729 = icmp ult i64 %i.to, 8
  %i.tp = sub i64 %.1369.i.i727, %i.tg
  %diff.check = icmp ugt i64 %i.tp, -32
  %or.cond806 = or i1 %min.iters.check729, %diff.check
  br i1 %or.cond806, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check730 = icmp ult i64 %i.to, 32
  br i1 %min.iters.check730, label %vec.epilog.ph, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check
  %i.tq = and i64 %i.to, 24
  %n.vec732 = and i64 %i.to, -32                  ; 5 uses
  %i.tr = getelementptr i8, ptr %.1369.i.i, i64 %n.vec732
  %i.ts = getelementptr i8, ptr %.11391.i.i, i64 %n.vec732
  br label %vector.body733

vector.body733:                                   ; preds = %vector.ph731, %vector.body733
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next738, %vector.body733 ] ; 3 uses
  %next.gep735 = getelementptr i8, ptr %.1369.i.i, i64 %index734 ; 2 uses
  %next.gep736 = getelementptr i8, ptr %.11391.i.i, i64 %index734 ; 2 uses
  %i.tt = getelementptr i8, ptr %next.gep735, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep735, align 1, !tbaa !15
  %wide.load737 = load <16 x i8>, ptr %i.tt, align 1, !tbaa !15
  %i.tu = getelementptr i8, ptr %next.gep736, i64 16
  store <16 x i8> %wide.load, ptr %next.gep736, align 1, !tbaa !15
  store <16 x i8> %wide.load737, ptr %i.tu, align 1, !tbaa !15
  %index.next738 = add nuw i64 %index734, 32      ; 2 uses
  %i.tv = icmp eq i64 %index.next738, %n.vec732
  br i1 %i.tv, label %middle.block739, label %vector.body733, !llvm.loop !138

middle.block739:                                  ; preds = %vector.body733
  %cmp.n740 = icmp eq i64 %i.to, %n.vec732
  br i1 %cmp.n740, label %.loopexit.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block739
  %min.epilog.iters.check = icmp eq i64 %i.tq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph227.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec732, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec743 = and i64 %i.to, -8                   ; 4 uses
  %i.tw = getelementptr i8, ptr %.1369.i.i, i64 %n.vec743
  %i.tx = getelementptr i8, ptr %.11391.i.i, i64 %n.vec743
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index744 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next748, %vec.epilog.vector.body ] ; 3 uses
  %next.gep745 = getelementptr i8, ptr %.1369.i.i, i64 %index744
  %next.gep746 = getelementptr i8, ptr %.11391.i.i, i64 %index744
  %wide.load747 = load <8 x i8>, ptr %next.gep745, align 1, !tbaa !15
  store <8 x i8> %wide.load747, ptr %next.gep746, align 1, !tbaa !15
  %index.next748 = add nuw i64 %index744, 8       ; 2 uses
  %i.ty = icmp eq i64 %index.next748, %n.vec743
  br i1 %i.ty, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n749 = icmp eq i64 %i.to, %n.vec743
  br i1 %cmp.n749, label %.loopexit.i71, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i226.i.ph = phi ptr [ %.1369.i.i, %iter.check ], [ %i.tr, %vec.epilog.iter.check ], [ %i.tw, %vec.epilog.middle.block ]
  %.15.i225.i.ph = phi ptr [ %.11391.i.i, %iter.check ], [ %i.ts, %vec.epilog.iter.check ], [ %i.tx, %vec.epilog.middle.block ]
  br label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i
  %.2370.i226.i = phi ptr [ %i.tz, %.lr.ph227.i ], [ %.2370.i226.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.15.i225.i = phi ptr [ %i.ub, %.lr.ph227.i ], [ %.15.i225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.2370.i226.i, i64 1
  %i.ua = load i8, ptr %.2370.i226.i, align 1, !tbaa !15
  %i.ub = getelementptr inbounds nuw i8, ptr %.15.i225.i, i64 1 ; 2 uses
  store i8 %i.ua, ptr %.15.i225.i, align 1, !tbaa !15
  %i.uc = icmp ult ptr %i.ub, %i.tk
  br i1 %i.uc, label %.lr.ph227.i, label %.loopexit.i71, !llvm.loop !140

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %.1369.i.i, i64 %i.ti, i1 false)
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.lr.ph227.i, %middle.block739, %vec.epilog.middle.block, %bb.cr, %.preheader.i72
  %i.ud = icmp eq ptr %i.tk, %i.kj
  br i1 %i.ud, label %bb.cy, label %.preheader141.i

bb.cs:                                            ; preds = %bb.cp
  %i.ue = icmp ult i64 %.1367.i.i35, 8
  br i1 %i.ue, label %bb.ct, label %bb.cu, !prof !27

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !24
  %i.uf = load i8, ptr %.1369.i.i, align 1, !tbaa !15
  store i8 %i.uf, ptr %.11391.i.i, align 1, !tbaa !15
  %i.ug = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !15
  %i.ui = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !15
  %i.uj = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !15
  %i.ul = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !15
  %i.um = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.un = load i8, ptr %i.um, align 1, !tbaa !15
  %i.uo = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !15
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i35
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !37
  %i.ur = zext i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.ur ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.uu = load i32, ptr %i.us, align 1
  store i32 %i.uu, ptr %i.ut, align 1
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i35
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !37
  %i.ux = sext i32 %i.uw to i64
  %i.uy = sub nsw i64 0, %i.ux
  %i.uz = getelementptr inbounds i8, ptr %i.us, i64 %i.uy
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.va = load i64, ptr %.1369.i.i, align 1
  store i64 %i.va, ptr %.11391.i.i, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3371.i.i37 = phi ptr [ %i.uz, %bb.ct ], [ %i.vb, %bb.cu ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8
  %i.vd = load i64, ptr %.3371.i.i37, align 1
  store i64 %i.vd, ptr %i.vc, align 1
  %i.ve = icmp ugt i64 %.13.i.i36, 16
  br i1 %i.ve, label %bb.cw, label %.preheader141.i

bb.cw:                                            ; preds = %bb.cv
  %i.vf = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.09.i9.i = phi ptr [ %i.vf, %bb.cw ], [ %i.vh, %bb.cx ] ; 2 uses
  %.3371.i.pn.i70 = phi ptr [ %.3371.i.i37, %bb.cw ], [ %.0.i10.i, %bb.cx ]
  %.0.i10.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i70, i64 8 ; 2 uses
  %i.vg = load i64, ptr %.0.i10.i, align 1
  store i64 %i.vg, ptr %.09.i9.i, align 1
  %i.vh = getelementptr inbounds nuw i8, ptr %.09.i9.i, i64 8 ; 2 uses
  %i.vi = icmp ult ptr %i.vh, %i.td
  br i1 %i.vi, label %bb.cx, label %.preheader141.i, !llvm.loop !1

.preheader141.i:                                  ; preds = %bb.cx, %bb.cv, %.loopexit.i71, %bb.bf
  %.3.ph.i38 = phi ptr [ %0, %bb.bf ], [ %.2.i34, %.loopexit.i71 ], [ %.2.i34, %bb.cv ], [ %.2.i34, %bb.cx ] ; 2 uses
  %.6386.i.ph.i = phi ptr [ %1, %bb.bf ], [ %i.tk, %.loopexit.i71 ], [ %i.td, %bb.cv ], [ %i.td, %bb.cx ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.3.ph.i38, i64 1 ; 2 uses
  %i.vk = load i8, ptr %.3.ph.i38, align 1, !tbaa !15
  %i.vl = zext i8 %i.vk to i32                    ; 3 uses
  %i.vm = lshr i32 %i.vl, 4                       ; 2 uses
  %.not439.i219.i = icmp eq i32 %i.vm, 15
  br i1 %.not439.i219.i, label %.thread101.i, label %.lr.ph221.i

bb.cy:                                            ; preds = %.loopexit.i71, %bb.ck, %.thread125.i
  %.18.i.i65 = phi ptr [ %i.kj, %.loopexit.i71 ], [ %i.rz, %bb.ck ], [ %i.rx, %.thread125.i ]
  %i.vn = ptrtoint ptr %.18.i.i65 to i64
  %i.vo = sub i64 %i.vn, %i.kp
  %i.vp = trunc i64 %i.vo to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i54:                   ; preds = %.thread97.i, %bb.bo, %read_variable_length.exit22.i, %bb.bm, %bb.bj, %read_variable_length.exit.i102, %bb.bh, %.preheader150.i.preheader, %.preheader147.i.preheader, %.preheader150.i, %.preheader147.i, %.preheader140.i, %.preheader138.i, %.preheader140.i.preheader, %.preheader138.i.preheader, %.loopexit155.i, %read_variable_length.exit34.i, %bb.cl, %bb.ch, %read_variable_length.exit28.i, %.thread101.i
  %.10.i55 = phi ptr [ %.2.i34, %.loopexit155.i ], [ %i.mq, %.preheader147.i ], [ %.20.i58, %read_variable_length.exit34.i ], [ %i.qx, %.preheader140.i ], [ %.18117.i, %bb.ch ], [ %i.qx, %read_variable_length.exit28.i ], [ %i.st, %.preheader138.i ], [ %.4106.i, %.thread101.i ], [ %i.lm, %.preheader150.i ], [ %.8.i49, %bb.cl ], [ %i.sp, %.preheader138.i.preheader ], [ %i.qt, %.preheader140.i.preheader ], [ %i.lm, %read_variable_length.exit.i102 ], [ %.1473.i, %bb.bj ], [ %i.lf, %bb.bh ], [ %.1692.i, %bb.bo ], [ %i.mq, %read_variable_length.exit22.i ], [ %i.mg, %bb.bm ], [ %i.li, %.preheader150.i.preheader ], [ %i.mm, %.preheader147.i.preheader ], [ %.11.i73, %.thread97.i ]
  %i.vq = ptrtoint ptr %.10.i55 to i64
  %i.vr = ptrtoint ptr %0 to i64
  %.neg.i.i56 = sub i64 %i.vr, %i.vq
  %i.vs = trunc i64 %.neg.i.i56 to i32
  %i.vt = add nsw i32 %i.vs, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.cz:                                            ; preds = %bb.c
  %i.vu = tail call i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %i.c)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_decompress_safe_partial_withPrefix64k.exit:   ; preds = %LZ4_wildCopy32.exit.thread.i54, %bb.cy, %bb.be, %bb.bd, %bb.bc, %LZ4_wildCopy32.exit.thread.i, %bb.bb, %bb.g, %bb.f, %bb.e, %bb.cz, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.vu, %bb.cz ], [ 0, %bb.f ], [ -1, %bb.e ], [ %i.kb, %LZ4_wildCopy32.exit.thread.i ], [ -1, %bb.g ], [ %i.jx, %bb.bb ], [ -1, %bb.bc ], [ %i.vt, %LZ4_wildCopy32.exit.thread.i54 ], [ -1, %bb.be ], [ %i.vp, %bb.cy ], [ 0, %bb.bd ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %._crit_edge77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %._crit_edge77, label %bb.j

._crit_edge77:                                    ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = sub nsw i64 0, %.pre-phi
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  br label %.thread

end_hunk_7
