Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_safe:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en ; 3 uses
  %i.et = and i32 %i.el, 15                       ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %.val = load i16, ptr %i.es, align 1, !tbaa !30 ; 2 uses
  %i.ev = zext i16 %.val to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 2 ; 2 uses
  %i.ex = sub nsw i64 0, %i.ev
  %i.ey = getelementptr inbounds i8, ptr %i.er, i64 %i.ex ; 5 uses
  %i.ez = icmp eq i32 %i.et, 15
  %i.fa = icmp ult i16 %.val, 8
  %or.cond3.i.not126 = select i1 %i.ez, i1 true, i1 %i.fa
  %.not443.i = icmp ult ptr %i.ey, %1
  %or.cond = select i1 %or.cond3.i.not126, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit134, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = load i64, ptr %i.ey, align 1
  store i64 %i.fb, ptr %i.er, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fe = load i64, ptr %i.fd, align 1
  store i64 %i.fe, ptr %i.fc, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fh = load i16, ptr %i.fg, align 1
  store i16 %i.fh, ptr %i.ff, align 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eu
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 3 ; 2 uses
  %i.fl = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fm = zext i8 %i.fl to i32                    ; 3 uses
  %i.fn = lshr i32 %i.fm, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fn, 15
  br i1 %.not439.i, label %.thread96, label %.lr.ph212

.loopexit:                                        ; preds = %.backedge, %.preheader143
  %.4 = phi ptr [ %i.r, %.preheader143 ], [ %i.cj, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader143 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.t, %.preheader143 ], [ %i.cl, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.v, %.preheader143 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.fo = icmp eq i64 %.4362.i, 15
  br i1 %i.fo, label %.thread96, label %.loopexit.thread

.thread96:                                        ; preds = %bb.af, %.preheader133, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %i.kk, %.preheader133 ], [ %i.fm, %bb.af ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader133 ], [ %i.fj, %bb.af ] ; 2 uses
  %.4101 = phi ptr [ %.4, %.loopexit ], [ %i.ki, %.preheader133 ], [ %i.fk, %bb.af ] ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %.not.i18 = icmp ult ptr %.4101, %i.fp
  br i1 %.not.i18, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread96
  %i.fq = load i8, ptr %.4101, align 1, !tbaa !15 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.4101, i64 1 ; 4 uses
  %.not21.i20 = icmp eq i8 %i.fq, -1
  br i1 %.not21.i20, label %.preheader132.preheader, label %read_variable_length.exit23.thread109, !prof !27

.preheader132.preheader:                          ; preds = %bb.ag
  %.not22.i22473 = icmp ult ptr %i.fr, %i.fp
  br i1 %.not22.i22473, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit23.thread109:            ; preds = %bb.ag
  %i.fs = zext i8 %i.fq to i64
  br label %bb.ah

.preheader132:                                    ; preds = %.lr.ph476
  %.not22.i22 = icmp ult ptr %i.fv, %i.fp
  br i1 %.not22.i22, label %.lr.ph476, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph476:                                        ; preds = %.preheader132.preheader, %.preheader132
  %.0.i21475 = phi i64 [ %i.fw, %.preheader132 ], [ 255, %.preheader132.preheader ]
  %.16474 = phi ptr [ %i.fv, %.preheader132 ], [ %i.fr, %.preheader132.preheader ] ; 2 uses
  %i.ft = load i8, ptr %.16474, align 1, !tbaa !15 ; 2 uses
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.16474, i64 1 ; 5 uses
  %i.fw = add i64 %.0.i21475, %i.fu               ; 3 uses
  %i.fx = icmp eq i8 %i.ft, -1
  br i1 %i.fx, label %.preheader132, label %read_variable_length.exit23, !llvm.loop !3

read_variable_length.exit23:                      ; preds = %.lr.ph476
  %i.fy = icmp eq i64 %i.fw, -1
  br i1 %i.fy, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit23.thread109, %read_variable_length.exit23
  %.016.i19113 = phi i64 [ %i.fs, %read_variable_length.exit23.thread109 ], [ %i.fw, %read_variable_length.exit23 ]
  %.17112 = phi ptr [ %i.fr, %read_variable_length.exit23.thread109 ], [ %i.fv, %read_variable_length.exit23 ] ; 3 uses
  %i.fz = add i64 %.016.i19113, 15                ; 3 uses
  %i.ga = ptrtoint ptr %.7387.i103 to i64
  %i.gb = xor i64 %i.ga, -1
  %i.gc = icmp ugt i64 %i.fz, %i.gb
  %i.gd = ptrtoint ptr %.17112 to i64
  %i.ge = xor i64 %i.gd, -1
  %i.gf = icmp ugt i64 %i.fz, %i.ge
  %or.cond124 = select i1 %i.gc, i1 true, i1 %i.gf, !prof !44
  br i1 %or.cond124, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph212, %bb.ah, %.loopexit
  %.0364.i104 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i105, %bb.ah ], [ %i.el, %.lr.ph212 ]
  %.7387.i102 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i103, %bb.ah ], [ %.6386.i211, %.lr.ph212 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17112, %bb.ah ], [ %i.em, %.lr.ph212 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.fz, %bb.ah ], [ %i.en, %.lr.ph212 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.7387.i102, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1368, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i102, %.loopexit.thread ], [ %.0380.i205, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gg, %.loopexit.thread ], [ %i.aq, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i104, %.loopexit.thread ], [ %i.ad, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ap, %bb.k ] ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gi = icmp ugt ptr %.3377.i, %i.gh
  br i1 %i.gi, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gl = icmp ugt ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.aj, label %.preheader131

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.gm, %i.d
  %i.gn = icmp ugt ptr %.3377.i, %i.f
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.gn
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.o
  %i.gr = trunc i64 %i.gq to i32
  br label %LZ4_decompress_generic.exit

.preheader131:                                    ; preds = %bb.ai, %.preheader131
  %.09.i7 = phi ptr [ %i.gt, %.preheader131 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gu, %.preheader131 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gs = load i64, ptr %.0.i8, align 1
  store i64 %i.gs, ptr %.09.i7, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gv = icmp ult ptr %i.gt, %.3377.i
  br i1 %i.gv, label %.preheader131, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader131
  %.val36 = load i16, ptr %i.gj, align 1, !tbaa !30
  %i.gw = zext i16 %.val36 to i64                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gy = sub nsw i64 0, %i.gw
  %i.gz = getelementptr inbounds i8, ptr %.3377.i, i64 %i.gy
  %i.ha = and i32 %.1365.i, 15
  %i.hb = zext nneg i32 %i.ha to i64
  br label %.loopexit134

.loopexit134:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit9
  %.7 = phi ptr [ %i.gx, %LZ4_wildCopy8.exit9 ], [ %i.ew, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit9 ], [ %i.er, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.gz, %LZ4_wildCopy8.exit9 ], [ %i.ey, %bb.ae ]
  %.0366.i = phi i64 [ %i.gw, %LZ4_wildCopy8.exit9 ], [ %i.ev, %bb.ae ]
  %.10.i = phi i64 [ %i.hb, %LZ4_wildCopy8.exit9 ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.hc = icmp eq i64 %.10.i, 15
  br i1 %i.hc, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit134
  %i.hd = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i24 = icmp ult ptr %.7, %i.hd
  br i1 %.not.i24, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.he = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i26 = icmp eq i8 %i.he, -1
  br i1 %.not21.i26, label %.preheader130.preheader, label %bb.an, !prof !27

.preheader130.preheader:                          ; preds = %bb.am
  %.not22.i28478 = icmp ult ptr %i.hf, %i.hd
  br i1 %.not22.i28478, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hg = zext i8 %i.he to i64
  br label %read_variable_length.exit29

.preheader130:                                    ; preds = %.lr.ph481
  %.not22.i28 = icmp ult ptr %i.hj, %i.hd
  br i1 %.not22.i28, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph481:                                        ; preds = %.preheader130.preheader, %.preheader130
  %.0.i27480 = phi i64 [ %i.hk, %.preheader130 ], [ 255, %.preheader130.preheader ]
  %.18479 = phi ptr [ %i.hj, %.preheader130 ], [ %i.hf, %.preheader130.preheader ] ; 2 uses
  %i.hh = load i8, ptr %.18479, align 1, !tbaa !15 ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.18479, i64 1 ; 4 uses
  %i.hk = add i64 %.0.i27480, %i.hi               ; 2 uses
  %i.hl = icmp eq i8 %i.hh, -1
  br i1 %i.hl, label %.preheader130, label %read_variable_length.exit29, !llvm.loop !3

read_variable_length.exit29:                      ; preds = %.lr.ph481, %bb.an
  %.19 = phi ptr [ %i.hf, %bb.an ], [ %i.hj, %.lr.ph481 ] ; 2 uses
  %.016.i25 = phi i64 [ %i.hg, %bb.an ], [ %i.hk, %.lr.ph481 ] ; 2 uses
  %i.hm = icmp ne i64 %.016.i25, -1
  %i.hn = add i64 %.016.i25, 15                   ; 2 uses
  %i.ho = ptrtoint ptr %.10390.i to i64
  %i.hp = xor i64 %i.ho, -1
  %i.hq = icmp ule i64 %i.hn, %i.hp
  %.not128 = select i1 %i.hm, i1 %i.hq, i1 false
  br i1 %.not128, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit29, %.loopexit134
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit134 ]
  %.12.i = phi i64 [ %i.hn, %read_variable_length.exit29 ], [ %.10.i, %.loopexit134 ]
  %i.hr = add i64 %.12.i, 4
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1587, %bb.p ], [ %i.bf, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.be, %bb.q ], [ %i.be, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hr, %bb.ao ], [ %i.bt, %bb.p ], [ %i.by, %bb.q ] ; 3 uses
  %.11391.i490 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.hs = icmp ult ptr %.1369.i, %1
  br i1 %i.hs, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit146
  %i.ht = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hu = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.hv = icmp ult i64 %.1367.i, 8
  br i1 %i.hv, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hw = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hw, ptr %.11391.i, align 1, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !15
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !37
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.il = load i32, ptr %i.ij, align 1
  store i32 %i.il, ptr %i.ik, align 1
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !37
  %i.io = sext i32 %i.in to i64
  %i.ip = sub nsw i64 0, %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.ij, i64 %i.ip
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ir = load i64, ptr %.1369.i, align 1
  store i64 %i.ir, ptr %.11391.i, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.iq, %bb.aq ], [ %i.is, %bb.ar ] ; 6 uses
  %.3371.i489 = ptrtoaddr ptr %.3371.i to i64
  %i.it = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.iu = icmp ugt ptr %i.ht, %i.hu
  br i1 %i.iu, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.iv = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.iw = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ix = icmp ugt ptr %i.ht, %i.iw
  br i1 %i.ix, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iy = icmp ult ptr %i.it, %i.iv
  br i1 %i.iy, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.ja, %.preheader ], [ %i.it, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.jb, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.iz = load i64, ptr %.0.i, align 1
  store i64 %i.iz, ptr %.09.i, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.jc = icmp ult ptr %i.ja, %i.iv
  br i1 %i.jc, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.jd = ptrtoint ptr %i.iv to i64
  %i.je = ptrtoint ptr %i.it to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds i8, ptr %.3371.i, i64 %i.jf
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.iv, %LZ4_wildCopy8.exit ], [ %i.it, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.jg, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.jh = icmp ult ptr %.16.i, %i.ht
  br i1 %i.jh, label %iter.check, label %.preheader133

iter.check:                                       ; preds = %bb.av
  %i.ji = add i64 %.13.i, %.11391.i490
  %i.jj = add i64 %i.o, %i.e
  %i.jk = add i64 %i.jj, -7
  %i.jl = add i64 %.11391.i490, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jk, i64 %i.jl)
  %i.jm = sub i64 %i.ji, %umax                    ; 7 uses
  %min.iters.check492 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check492, label %.lr.ph218.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jn = sub i64 %.11391.i490, %.3371.i489
  %i.jo = add i64 %i.jn, 7
  %diff.check = icmp ult i64 %i.jo, 31
  br i1 %diff.check, label %.lr.ph218.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check493 = icmp ult i64 %i.jm, 32
  br i1 %min.iters.check493, label %vec.epilog.ph, label %vector.ph494

vector.ph494:                                     ; preds = %vector.main.loop.iter.check
  %i.jp = and i64 %i.jm, 24
  %n.vec495 = and i64 %i.jm, -32                  ; 5 uses
  %i.jq = getelementptr i8, ptr %.4372.i, i64 %n.vec495
  %i.jr = getelementptr i8, ptr %.16.i, i64 %n.vec495
  br label %vector.body496

vector.body496:                                   ; preds = %vector.ph494, %vector.body496
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next501, %vector.body496 ] ; 3 uses
  %next.gep498 = getelementptr i8, ptr %.4372.i, i64 %index497 ; 2 uses
  %next.gep499 = getelementptr i8, ptr %.16.i, i64 %index497 ; 2 uses
  %i.js = getelementptr i8, ptr %next.gep498, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep498, align 1, !tbaa !15
  %wide.load500 = load <16 x i8>, ptr %i.js, align 1, !tbaa !15
  %i.jt = getelementptr i8, ptr %next.gep499, i64 16
  store <16 x i8> %wide.load, ptr %next.gep499, align 1, !tbaa !15
  store <16 x i8> %wide.load500, ptr %i.jt, align 1, !tbaa !15
  %index.next501 = add nuw i64 %index497, 32      ; 2 uses
  %i.ju = icmp eq i64 %index.next501, %n.vec495
  br i1 %i.ju, label %middle.block502, label %vector.body496, !llvm.loop !60

middle.block502:                                  ; preds = %vector.body496
  %cmp.n503 = icmp eq i64 %i.jm, %n.vec495
  br i1 %cmp.n503, label %.preheader133, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block502
  %min.epilog.iters.check = icmp eq i64 %i.jp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec495, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec506 = and i64 %i.jm, -8                   ; 4 uses
  %i.jv = getelementptr i8, ptr %.4372.i, i64 %n.vec506
  %i.jw = getelementptr i8, ptr %.16.i, i64 %n.vec506
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index507 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next511, %vec.epilog.vector.body ] ; 3 uses
  %next.gep508 = getelementptr i8, ptr %.4372.i, i64 %index507
  %next.gep509 = getelementptr i8, ptr %.16.i, i64 %index507
  %wide.load510 = load <8 x i8>, ptr %next.gep508, align 1, !tbaa !15
  store <8 x i8> %wide.load510, ptr %next.gep509, align 1, !tbaa !15
  %index.next511 = add nuw i64 %index507, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next511, %n.vec506
  br i1 %i.jx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n512 = icmp eq i64 %i.jm, %n.vec506
  br i1 %cmp.n512, label %.preheader133, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i217.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jq, %vec.epilog.iter.check ], [ %i.jv, %vec.epilog.middle.block ]
  %.17.i216.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.jr, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.5373.i217 = phi ptr [ %i.jy, %.lr.ph218 ], [ %.5373.i217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.17.i216 = phi ptr [ %i.ka, %.lr.ph218 ], [ %.17.i216.ph, %.lr.ph218.preheader ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.5373.i217, i64 1
  %i.jz = load i8, ptr %.5373.i217, align 1, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %.17.i216, i64 1 ; 2 uses
  store i8 %i.jz, ptr %.17.i216, align 1, !tbaa !15
  %i.kb = icmp ult ptr %i.ka, %i.ht
  br i1 %i.kb, label %.lr.ph218, label %.preheader133, !llvm.loop !62

bb.aw:                                            ; preds = %bb.as
  %i.kc = load i64, ptr %.3371.i, align 1
  store i64 %i.kc, ptr %i.it, align 1
  %i.kd = icmp ugt i64 %.13.i, 16
  br i1 %i.kd, label %bb.ax, label %.preheader133

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i4 = phi ptr [ %i.ke, %bb.ax ], [ %i.kg, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i5, %bb.ay ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kf = load i64, ptr %.0.i5, align 1
  store i64 %i.kf, ptr %.09.i4, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.kh = icmp ult ptr %i.kg, %i.ht
  br i1 %i.kh, label %bb.ay, label %.preheader133, !llvm.loop !1

end_hunk_0
begin_hunk_1_@LZ4_decompress_safe_partial:bb.a
  %i.ez = load i64, ptr %i.ew, align 1
  store i64 %i.ez, ptr %i.ep, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i64, ptr %i.fb, align 1
  store i64 %i.fc, ptr %i.fa, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ff = load i16, ptr %i.fe, align 1
  store i16 %i.ff, ptr %i.fd, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 3 ; 2 uses
  %i.fj = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i32                    ; 3 uses
  %i.fl = lshr i32 %i.fk, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fl, 15
  br i1 %.not439.i, label %.thread100, label %.lr.ph220

.loopexit141:                                     ; preds = %.backedge, %.preheader151
  %.4 = phi ptr [ %i.p, %.preheader151 ], [ %i.ch, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader151 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.r, %.preheader151 ], [ %i.cj, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.t, %.preheader151 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.fm = icmp eq i64 %.4362.i, 15
  br i1 %i.fm, label %.thread100, label %.loopexit141.thread

.thread100:                                       ; preds = %bb.ad, %.preheader140, %.loopexit141
  %.0364.i109 = phi i32 [ %.0364.i, %.loopexit141 ], [ %i.kh, %.preheader140 ], [ %i.fk, %bb.ad ]
  %.7387.i107 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.6386.i.ph, %.preheader140 ], [ %i.fh, %bb.ad ] ; 2 uses
  %.4105 = phi ptr [ %.4, %.loopexit141 ], [ %i.kf, %.preheader140 ], [ %i.fi, %bb.ad ] ; 4 uses
  %i.fn = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %.not.i22 = icmp ult ptr %.4105, %i.fn
  br i1 %.not.i22, label %bb.ae, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ae:                                            ; preds = %.thread100
  %i.fo = load i8, ptr %.4105, align 1, !tbaa !15 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.4105, i64 1 ; 4 uses
  %.not21.i24 = icmp eq i8 %i.fo, -1
  br i1 %.not21.i24, label %.preheader139.preheader, label %read_variable_length.exit27.thread113, !prof !27

.preheader139.preheader:                          ; preds = %bb.ae
  %.not22.i26479 = icmp ult ptr %i.fp, %i.fn
  br i1 %.not22.i26479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit27.thread113:            ; preds = %bb.ae
  %i.fq = zext i8 %i.fo to i64
  br label %bb.af

.preheader139:                                    ; preds = %.lr.ph482
  %.not22.i26 = icmp ult ptr %i.ft, %i.fn
  br i1 %.not22.i26, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader139.preheader, %.preheader139
  %.0.i25481 = phi i64 [ %i.fu, %.preheader139 ], [ 255, %.preheader139.preheader ]
  %.17480 = phi ptr [ %i.ft, %.preheader139 ], [ %i.fp, %.preheader139.preheader ] ; 2 uses
  %i.fr = load i8, ptr %.17480, align 1, !tbaa !15 ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.17480, i64 1 ; 5 uses
  %i.fu = add i64 %.0.i25481, %i.fs               ; 3 uses
  %i.fv = icmp eq i8 %i.fr, -1
  br i1 %i.fv, label %.preheader139, label %read_variable_length.exit27, !llvm.loop !3

read_variable_length.exit27:                      ; preds = %.lr.ph482
  %i.fw = icmp eq i64 %i.fu, -1
  br i1 %i.fw, label %LZ4_wildCopy32.exit.thread, label %bb.af

bb.af:                                            ; preds = %read_variable_length.exit27.thread113, %read_variable_length.exit27
  %.016.i23117 = phi i64 [ %i.fq, %read_variable_length.exit27.thread113 ], [ %i.fu, %read_variable_length.exit27 ]
  %.18116 = phi ptr [ %i.fp, %read_variable_length.exit27.thread113 ], [ %i.ft, %read_variable_length.exit27 ] ; 3 uses
  %i.fx = add i64 %.016.i23117, 15                ; 3 uses
  %i.fy = ptrtoint ptr %.7387.i107 to i64
  %i.fz = xor i64 %i.fy, -1
  %i.ga = icmp ugt i64 %i.fx, %i.fz
  %i.gb = ptrtoint ptr %.18116 to i64
  %i.gc = xor i64 %i.gb, -1
  %i.gd = icmp ugt i64 %i.fx, %i.gc
  %or.cond132 = select i1 %i.ga, i1 true, i1 %i.gd, !prof !44
  br i1 %or.cond132, label %LZ4_wildCopy32.exit.thread, label %.loopexit141.thread, !prof !44

.loopexit141.thread:                              ; preds = %.lr.ph220, %bb.af, %.loopexit141
  %.0364.i108 = phi i32 [ %.0364.i, %.loopexit141 ], [ %.0364.i109, %bb.af ], [ %i.ej, %.lr.ph220 ]
  %.7387.i106 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.7387.i107, %bb.af ], [ %.6386.i219, %.lr.ph220 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit141 ], [ %.18116, %bb.af ], [ %i.ek, %.lr.ph220 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit141 ], [ %i.fx, %bb.af ], [ %i.el, %.lr.ph220 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.7387.i106, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit141.thread
  %.6 = phi ptr [ %.5, %.loopexit141.thread ], [ %.1472, %bb.i ] ; 7 uses
  %.8388.i = phi ptr [ %.7387.i106, %.loopexit141.thread ], [ %.0380.i213, %bb.i ] ; 7 uses
  %.3377.i = phi ptr [ %i.ge, %.loopexit141.thread ], [ %i.ao, %bb.i ] ; 4 uses
  %.1365.i = phi i32 [ %.0364.i108, %.loopexit141.thread ], [ %i.ab, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit141.thread ], [ %i.an, %bb.i ] ; 3 uses
  %i.gf = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gg = icmp ugt ptr %.3377.i, %i.gf
  br i1 %i.gg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gj = icmp ugt ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.ah, label %.preheader138

bb.ah:                                            ; preds = %bb.ag, %LZ4_wildCopy32.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.gl = icmp ugt ptr %i.gk, %i.e                ; 2 uses
  %i.gm = ptrtoint ptr %i.e to i64
  %i.gn = ptrtoint ptr %.6 to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.go
  %.4378.i = select i1 %i.gl, ptr %i.gp, ptr %.3377.i ; 2 uses
  %i.gq = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.gq, label %.thread124, label %bb.ai

.thread124:                                       ; preds = %bb.ah
  %i.gr = ptrtoint ptr %.8388.i to i64
  %i.gs = sub i64 %i.l, %i.gr                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.gs, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.gs
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %.8.i = select i1 %i.gl, i64 %i.go, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.gw = icmp ne ptr %.4378.i, %i.g
  %i.gx = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.gu, %i.gx
  %or.cond460.i = select i1 %i.gw, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit13, label %bb.aw

.preheader138:                                    ; preds = %bb.ag, %.preheader138
  %.09.i11 = phi ptr [ %i.gz, %.preheader138 ], [ %.8388.i, %bb.ag ] ; 2 uses
  %.0.i12 = phi ptr [ %i.ha, %.preheader138 ], [ %.6, %bb.ag ] ; 2 uses
  %i.gy = load i64, ptr %.0.i12, align 1
  store i64 %i.gy, ptr %.09.i11, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i12, i64 8
  %i.hb = icmp ult ptr %i.gz, %.3377.i
  br i1 %i.hb, label %.preheader138, label %LZ4_wildCopy8.exit13, !llvm.loop !1

LZ4_wildCopy8.exit13:                             ; preds = %.preheader138, %bb.ai
  %.7 = phi ptr [ %i.gu, %bb.ai ], [ %i.gh, %.preheader138 ] ; 2 uses
  %.9389.i = phi ptr [ %i.gv, %bb.ai ], [ %.3377.i, %.preheader138 ] ; 2 uses
  %.val40 = load i16, ptr %.7, align 1, !tbaa !30
  %i.hc = zext i16 %.val40 to i64                 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.he = sub nsw i64 0, %i.hc
  %i.hf = getelementptr inbounds i8, ptr %.9389.i, i64 %i.he
  %i.hg = and i32 %.1365.i, 15
  %i.hh = zext nneg i32 %i.hg to i64
  br label %.loopexit142

.loopexit142:                                     ; preds = %bb.ac, %LZ4_wildCopy8.exit13
  %.8 = phi ptr [ %i.hd, %LZ4_wildCopy8.exit13 ], [ %i.eu, %bb.ac ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit13 ], [ %i.ep, %bb.ac ] ; 2 uses
  %.0368.i = phi ptr [ %i.hf, %LZ4_wildCopy8.exit13 ], [ %i.ew, %bb.ac ]
  %.0366.i = phi i64 [ %i.hc, %LZ4_wildCopy8.exit13 ], [ %i.et, %bb.ac ]
  %.10.i = phi i64 [ %i.hh, %LZ4_wildCopy8.exit13 ], [ %i.es, %bb.ac ] ; 2 uses
  %i.hi = icmp eq i64 %.10.i, 15
  br i1 %i.hi, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.loopexit142
  %i.hj = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i28 = icmp ult ptr %.8, %i.hj
  br i1 %.not.i28, label %bb.ak, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load i8, ptr %.8, align 1, !tbaa !15    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i30 = icmp eq i8 %i.hk, -1
  br i1 %.not21.i30, label %.preheader137.preheader, label %bb.al, !prof !27

.preheader137.preheader:                          ; preds = %bb.ak
  %.not22.i32484 = icmp ult ptr %i.hl, %i.hj
  br i1 %.not22.i32484, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.al:                                            ; preds = %bb.ak
  %i.hm = zext i8 %i.hk to i64
  br label %read_variable_length.exit33

.preheader137:                                    ; preds = %.lr.ph487
  %.not22.i32 = icmp ult ptr %i.hp, %i.hj
  br i1 %.not22.i32, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph487:                                        ; preds = %.preheader137.preheader, %.preheader137
  %.0.i31486 = phi i64 [ %i.hq, %.preheader137 ], [ 255, %.preheader137.preheader ]
  %.19485 = phi ptr [ %i.hp, %.preheader137 ], [ %i.hl, %.preheader137.preheader ] ; 2 uses
  %i.hn = load i8, ptr %.19485, align 1, !tbaa !15 ; 2 uses
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.19485, i64 1 ; 4 uses
  %i.hq = add i64 %.0.i31486, %i.ho               ; 2 uses
  %i.hr = icmp eq i8 %i.hn, -1
  br i1 %i.hr, label %.preheader137, label %read_variable_length.exit33, !llvm.loop !3

read_variable_length.exit33:                      ; preds = %.lr.ph487, %bb.al
  %.20 = phi ptr [ %i.hl, %bb.al ], [ %i.hp, %.lr.ph487 ] ; 2 uses
  %.016.i29 = phi i64 [ %i.hm, %bb.al ], [ %i.hq, %.lr.ph487 ] ; 2 uses
  %i.hs = icmp ne i64 %.016.i29, -1
  %i.ht = add i64 %.016.i29, 15                   ; 2 uses
  %i.hu = ptrtoint ptr %.10390.i to i64
  %i.hv = xor i64 %i.hu, -1
  %i.hw = icmp ule i64 %i.ht, %i.hv
  %.not136 = select i1 %i.hs, i1 %i.hw, i1 false
  br i1 %.not136, label %bb.am, label %LZ4_wildCopy32.exit.thread

bb.am:                                            ; preds = %read_variable_length.exit33, %.loopexit142
  %.9 = phi ptr [ %.20, %read_variable_length.exit33 ], [ %.8, %.loopexit142 ]
  %.12.i = phi i64 [ %i.ht, %read_variable_length.exit33 ], [ %.10.i, %.loopexit142 ]
  %i.hx = add i64 %.12.i, 4
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.n, %bb.o, %bb.am
  %.2 = phi ptr [ %.9, %bb.am ], [ %.1691, %bb.n ], [ %i.bd, %bb.o ] ; 4 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.am ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 19 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.am ], [ %i.bf, %bb.o ], [ %i.bf, %bb.n ] ; 16 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.am ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.hx, %bb.am ], [ %i.br, %bb.n ], [ %i.bw, %bb.o ] ; 3 uses
  %.1369.i494 = ptrtoaddr ptr %.1369.i to i64
  %i.hy = icmp ult ptr %.1369.i, %1
  br i1 %i.hy, label %LZ4_wildCopy32.exit.thread, label %bb.an, !prof !43

bb.an:                                            ; preds = %.loopexit154
  %i.hz = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 4 uses
  %i.ia = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ib = icmp ugt ptr %i.hz, %i.ia
  br i1 %i.ib, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ic = ptrtoint ptr %.11391.i to i64           ; 5 uses
  %i.id = sub i64 %i.l, %i.ic
  %i.ie = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.id) ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.ie ; 3 uses
  %i.ih = icmp ugt ptr %i.if, %.11391.i
  br i1 %i.ih, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.ao
  %.not = icmp eq i64 %i.ie, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ii = add i64 %i.ie, %i.ic
  %i.ij = add i64 %i.ic, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ii, i64 %i.ij)
  %i.ik = sub i64 %umax, %i.ic                    ; 7 uses
  %min.iters.check496 = icmp ult i64 %i.ik, 8
  %i.il = sub i64 %.1369.i494, %i.ic
  %diff.check = icmp ugt i64 %i.il, -32
  %or.cond519 = or i1 %min.iters.check496, %diff.check
  br i1 %or.cond519, label %.lr.ph226.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check497 = icmp ult i64 %i.ik, 32
  br i1 %min.iters.check497, label %vec.epilog.ph, label %vector.ph498

vector.ph498:                                     ; preds = %vector.main.loop.iter.check
  %i.im = and i64 %i.ik, 24
  %n.vec499 = and i64 %i.ik, -32                  ; 5 uses
  %i.in = getelementptr i8, ptr %.1369.i, i64 %n.vec499
  %i.io = getelementptr i8, ptr %.11391.i, i64 %n.vec499
  br label %vector.body500

vector.body500:                                   ; preds = %vector.ph498, %vector.body500
  %index501 = phi i64 [ 0, %vector.ph498 ], [ %index.next505, %vector.body500 ] ; 3 uses
  %next.gep502 = getelementptr i8, ptr %.1369.i, i64 %index501 ; 2 uses
  %next.gep503 = getelementptr i8, ptr %.11391.i, i64 %index501 ; 2 uses
  %i.ip = getelementptr i8, ptr %next.gep502, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep502, align 1, !tbaa !15
  %wide.load504 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !15
  %i.iq = getelementptr i8, ptr %next.gep503, i64 16
  store <16 x i8> %wide.load, ptr %next.gep503, align 1, !tbaa !15
  store <16 x i8> %wide.load504, ptr %i.iq, align 1, !tbaa !15
  %index.next505 = add nuw i64 %index501, 32      ; 2 uses
  %i.ir = icmp eq i64 %index.next505, %n.vec499
  br i1 %i.ir, label %middle.block506, label %vector.body500, !llvm.loop !65

middle.block506:                                  ; preds = %vector.body500
  %cmp.n507 = icmp eq i64 %i.ik, %n.vec499
  br i1 %cmp.n507, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block506
  %min.epilog.iters.check = icmp eq i64 %i.im, 0
  br i1 %min.epilog.iters.check, label %.lr.ph226.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec499, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec510 = and i64 %i.ik, -8                   ; 4 uses
  %i.is = getelementptr i8, ptr %.1369.i, i64 %n.vec510
  %i.it = getelementptr i8, ptr %.11391.i, i64 %n.vec510
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index511 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next515, %vec.epilog.vector.body ] ; 3 uses
  %next.gep512 = getelementptr i8, ptr %.1369.i, i64 %index511
  %next.gep513 = getelementptr i8, ptr %.11391.i, i64 %index511
  %wide.load514 = load <8 x i8>, ptr %next.gep512, align 1, !tbaa !15
  store <8 x i8> %wide.load514, ptr %next.gep513, align 1, !tbaa !15
  %index.next515 = add nuw i64 %index511, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next515, %n.vec510
  br i1 %i.iu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n516 = icmp eq i64 %i.ik, %n.vec510
  br i1 %cmp.n516, label %.loopexit, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i225.ph = phi ptr [ %.1369.i, %iter.check ], [ %i.in, %vec.epilog.iter.check ], [ %i.is, %vec.epilog.middle.block ]
  %.15.i224.ph = phi ptr [ %.11391.i, %iter.check ], [ %i.io, %vec.epilog.iter.check ], [ %i.it, %vec.epilog.middle.block ]
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2370.i225 = phi ptr [ %i.iv, %.lr.ph226 ], [ %.2370.i225.ph, %.lr.ph226.preheader ] ; 2 uses
  %.15.i224 = phi ptr [ %i.ix, %.lr.ph226 ], [ %.15.i224.ph, %.lr.ph226.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.2370.i225, i64 1
  %i.iw = load i8, ptr %.2370.i225, align 1, !tbaa !15
  %i.ix = getelementptr inbounds nuw i8, ptr %.15.i224, i64 1 ; 2 uses
  store i8 %i.iw, ptr %.15.i224, align 1, !tbaa !15
  %i.iy = icmp ult ptr %i.ix, %i.ig
  br i1 %i.iy, label %.lr.ph226, label %.loopexit, !llvm.loop !67

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.ie, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph226, %middle.block506, %vec.epilog.middle.block, %.preheader, %bb.ap
  %i.iz = icmp eq ptr %i.ig, %i.g
  br i1 %i.iz, label %bb.aw, label %.preheader140

bb.aq:                                            ; preds = %bb.an
  %i.ja = icmp ult i64 %.1367.i, 8
  br i1 %i.ja, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.jb = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.jb, ptr %.11391.i, align 1, !tbaa !15
  %i.jc = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !15
  %i.jh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !15
  %i.jk = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !37
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.jq = load i32, ptr %i.jo, align 1
  store i32 %i.jq, ptr %i.jp, align 1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.jt = sext i32 %i.js to i64
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.jo, i64 %i.ju
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jw = load i64, ptr %.1369.i, align 1
  store i64 %i.jw, ptr %.11391.i, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.3371.i = phi ptr [ %i.jv, %bb.ar ], [ %i.jx, %bb.as ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.jz = load i64, ptr %.3371.i, align 1
  store i64 %i.jz, ptr %i.jy, align 1
  %i.ka = icmp ugt i64 %.13.i, 16
  br i1 %i.ka, label %bb.au, label %.preheader140

bb.au:                                            ; preds = %bb.at
  %i.kb = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.09.i8 = phi ptr [ %i.kb, %bb.au ], [ %i.kd, %bb.av ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.au ], [ %.0.i9, %bb.av ]
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kc = load i64, ptr %.0.i9, align 1
  store i64 %i.kc, ptr %.09.i8, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.ke = icmp ult ptr %i.kd, %i.hz
  br i1 %i.ke, label %bb.av, label %.preheader140, !llvm.loop !1

.preheader140:                                    ; preds = %bb.av, %bb.at, %bb.d, %.loopexit
  %.3.ph = phi ptr [ %0, %bb.d ], [ %.2, %.loopexit ], [ %.2, %bb.at ], [ %.2, %bb.av ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.d ], [ %i.ig, %.loopexit ], [ %i.hz, %bb.at ], [ %i.hz, %bb.av ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kg = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kh = zext i8 %i.kg to i32                    ; 3 uses
  %i.ki = lshr i32 %i.kh, 4                       ; 2 uses
  %.not439.i218 = icmp eq i32 %i.ki, 15
  br i1 %.not439.i218, label %.thread100, label %.lr.ph220

bb.aw:                                            ; preds = %.thread124, %.loopexit, %bb.ai
  %.18.i = phi ptr [ %i.g, %.loopexit ], [ %i.gv, %bb.ai ], [ %i.gt, %.thread124 ]
  %i.kj = ptrtoint ptr %.18.i to i64
  %i.kk = sub i64 %i.kj, %i.m
  %i.kl = trunc i64 %i.kk to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit21, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread96, %.preheader149.preheader, %.preheader146.preheader, %.preheader149, %.preheader146, %.preheader139, %.preheader137, %.preheader139.preheader, %.preheader137.preheader, %bb.aj, %.thread100, %read_variable_length.exit27, %bb.af, %.loopexit154, %read_variable_length.exit33
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_withPrefix64k:bb.a
  %i.em = zext nneg i32 %i.el to i64              ; 2 uses
  %.val = load i16, ptr %i.ek, align 1, !tbaa !30 ; 2 uses
  %i.en = zext i16 %.val to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 2 uses
  %.add = sub nsw i64 %.6386.i.add, %i.en         ; 2 uses
  %i.ep = icmp ne i32 %i.el, 15
  %i.eq = icmp ugt i16 %.val, 7
  %or.cond3.i = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond3.i, label %bb.ag, label %.loopexit147

bb.ag:                                            ; preds = %bb.af
  %.ptr136 = getelementptr inbounds i8, ptr %1, i64 %.add ; 3 uses
  %.ptr135 = getelementptr inbounds i8, ptr %1, i64 %.6386.i.add ; 3 uses
  %i.er = load i64, ptr %.ptr136, align 1
  store i64 %i.er, ptr %.ptr135, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.ptr135, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.ptr136, i64 8
  %i.eu = load i64, ptr %i.et, align 1
  store i64 %i.eu, ptr %i.es, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.ptr135, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.ptr136, i64 16
  %i.ex = load i16, ptr %i.ew, align 1
  store i16 %i.ex, ptr %i.ev, align 1
  %.add133 = add nuw nsw i64 %i.em, 4
  %.add134 = add nsw i64 %.add133, %.6386.i.add   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 3 ; 2 uses
  %i.ez = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = lshr i32 %i.fa, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fb, 15
  br i1 %.not439.i, label %.thread96, label %bb.ae

.loopexit:                                        ; preds = %.backedge, %.preheader156
  %.4 = phi ptr [ %i.q, %.preheader156 ], [ %i.cc, %.backedge ] ; 2 uses
  %.7387.i.idx = phi i64 [ 0, %.preheader156 ], [ %.0380.i.idx.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.s, %.preheader156 ], [ %i.ce, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.u, %.preheader156 ], [ %i.cg, %.backedge ] ; 2 uses
  %i.fc = icmp eq i64 %.4362.i, 15
  br i1 %i.fc, label %.thread96, label %.loopexit.thread

.thread96:                                        ; preds = %bb.ag, %.preheader146, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %i.jt, %.preheader146 ], [ %i.fa, %bb.ag ]
  %.7387.i103.idx = phi i64 [ %.7387.i.idx, %.loopexit ], [ %.6386.i.idx.ph, %.preheader146 ], [ %.add134, %bb.ag ] ; 2 uses
  %.4101 = phi ptr [ %.4, %.loopexit ], [ %i.jr, %.preheader146 ], [ %i.ey, %bb.ag ] ; 4 uses
  %.7387.i103.ptr = getelementptr inbounds i8, ptr %1, i64 %.7387.i103.idx
  %i.fd = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %.not.i18 = icmp ult ptr %.4101, %i.fd
  br i1 %.not.i18, label %bb.ah, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ah:                                            ; preds = %.thread96
  %i.fe = load i8, ptr %.4101, align 1, !tbaa !15 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.4101, i64 1 ; 4 uses
  %.not21.i20 = icmp eq i8 %i.fe, -1
  br i1 %.not21.i20, label %.preheader145.preheader, label %read_variable_length.exit23.thread109, !prof !27

.preheader145.preheader:                          ; preds = %bb.ah
  %.not22.i22464 = icmp ult ptr %i.ff, %i.fd
  br i1 %.not22.i22464, label %.lr.ph467, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit23.thread109:            ; preds = %bb.ah
  %i.fg = zext i8 %i.fe to i64
  br label %bb.ai

.preheader145:                                    ; preds = %.lr.ph467
  %.not22.i22 = icmp ult ptr %i.fj, %i.fd
  br i1 %.not22.i22, label %.lr.ph467, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph467:                                        ; preds = %.preheader145.preheader, %.preheader145
  %.0.i21466 = phi i64 [ %i.fk, %.preheader145 ], [ 255, %.preheader145.preheader ]
  %.16465 = phi ptr [ %i.fj, %.preheader145 ], [ %i.ff, %.preheader145.preheader ] ; 2 uses
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
  %i.gx = icmp ne i64 %.016.i25, -1
  %i.gy = add i64 %.016.i25, 15                   ; 2 uses
  %i.gz = ptrtoint ptr %.10390.i.ptr to i64
  %i.ha = xor i64 %i.gz, -1
  %i.hb = icmp ule i64 %i.gy, %i.ha
  %.not132 = select i1 %i.gx, i1 %i.hb, i1 false
  br i1 %.not132, label %bb.ap, label %LZ4_wildCopy32.exit.thread

bb.ap:                                            ; preds = %read_variable_length.exit29, %.loopexit147
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit147 ]
  %.12.i = phi i64 [ %i.gy, %read_variable_length.exit29 ], [ %.10.i, %.loopexit147 ]
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
  %.3371.i478 = ptrtoaddr ptr %.3371.i to i64
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
  %min.iters.check480 = icmp ult i64 %i.iu, 8
  br i1 %min.iters.check480, label %.lr.ph235.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iv = add i64 %.11391.i.idx, %i.n
  %i.iw = sub i64 %i.iv, %.3371.i478
  %i.ix = add i64 %i.iw, 7
  %diff.check = icmp ult i64 %i.ix, 31
  br i1 %diff.check, label %.lr.ph235.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check481 = icmp ult i64 %i.iu, 32
  br i1 %min.iters.check481, label %vec.epilog.ph, label %vector.ph482

vector.ph482:                                     ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.iu, 24
  %n.vec483 = and i64 %i.iu, -32                  ; 5 uses
  %i.iz = getelementptr i8, ptr %.4372.i, i64 %n.vec483
  %i.ja = getelementptr i8, ptr %.16.i, i64 %n.vec483
  br label %vector.body484

vector.body484:                                   ; preds = %vector.ph482, %vector.body484
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next489, %vector.body484 ] ; 3 uses
  %next.gep486 = getelementptr i8, ptr %.4372.i, i64 %index485 ; 2 uses
  %next.gep487 = getelementptr i8, ptr %.16.i, i64 %index485 ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep486, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep486, align 1, !tbaa !15
  %wide.load488 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !15
  %i.jc = getelementptr i8, ptr %next.gep487, i64 16
  store <16 x i8> %wide.load, ptr %next.gep487, align 1, !tbaa !15
  store <16 x i8> %wide.load488, ptr %i.jc, align 1, !tbaa !15
  %index.next489 = add nuw i64 %index485, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next489, %n.vec483
  br i1 %i.jd, label %middle.block490, label %vector.body484, !llvm.loop !74

middle.block490:                                  ; preds = %vector.body484
  %cmp.n491 = icmp eq i64 %i.iu, %n.vec483
  br i1 %cmp.n491, label %.preheader146, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block490
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph235.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec483, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec494 = and i64 %i.iu, -8                   ; 4 uses
  %i.je = getelementptr i8, ptr %.4372.i, i64 %n.vec494
  %i.jf = getelementptr i8, ptr %.16.i, i64 %n.vec494
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index495 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next499, %vec.epilog.vector.body ] ; 3 uses
  %next.gep496 = getelementptr i8, ptr %.4372.i, i64 %index495
  %next.gep497 = getelementptr i8, ptr %.16.i, i64 %index495
  %wide.load498 = load <8 x i8>, ptr %next.gep496, align 1, !tbaa !15
  store <8 x i8> %wide.load498, ptr %next.gep497, align 1, !tbaa !15
  %index.next499 = add nuw i64 %index495, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.jg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n500 = icmp eq i64 %i.iu, %n.vec494
  br i1 %cmp.n500, label %.preheader146, label %.lr.ph235.preheader

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
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_forceExtDict:bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fz ; 3 uses
  %i.gf = and i32 %i.fx, 15                       ; 2 uses
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %.val = load i16, ptr %i.ge, align 1, !tbaa !30 ; 2 uses
  %i.gh = zext i16 %.val to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  %i.gj = sub nsw i64 0, %i.gh
  %i.gk = getelementptr inbounds i8, ptr %i.gd, i64 %i.gj ; 5 uses
  %i.gl = icmp eq i32 %i.gf, 15
  %i.gm = icmp ult i16 %.val, 8
  %or.cond3.i.not129 = select i1 %i.gl, i1 true, i1 %i.gm
  %.not443.i = icmp ult ptr %i.gk, %1
  %or.cond = select i1 %or.cond3.i.not129, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit139, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = load i64, ptr %i.gk, align 1
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
  %i.iy = icmp ne i64 %.016.i28, -1
  %i.iz = add i64 %.016.i28, 15                   ; 2 uses
  %i.ja = ptrtoint ptr %.10390.i to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ule i64 %i.iz, %i.jb
  %.not131 = select i1 %i.iy, i1 %i.jc, i1 false
  br i1 %.not131, label %bb.au, label %LZ4_wildCopy32.exit.thread

bb.au:                                            ; preds = %read_variable_length.exit32, %.loopexit139
  %.8 = phi ptr [ %.19, %read_variable_length.exit32 ], [ %.7, %.loopexit139 ]
  %.12.i = phi i64 [ %i.iz, %read_variable_length.exit32 ], [ %.10.i, %.loopexit139 ]
  %i.jd = add i64 %.12.i, 4
  br label %.loopexit153

.loopexit153:                                     ; preds = %bb.p, %bb.q, %bb.au
  %.2 = phi ptr [ %.8, %bb.au ], [ %.1590, %bb.p ], [ %i.bl, %bb.q ] ; 14 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.au ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 14 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.au ], [ %i.bn, %bb.q ], [ %i.bn, %bb.p ] ; 10 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.au ], [ %i.bk, %bb.q ], [ %i.bk, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.jd, %bb.au ], [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 7 uses
  %.11391.i551 = ptrtoaddr ptr %.11391.i to i64   ; 6 uses
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
  br i1 %i.ju, label %iter.check612, label %bb.ba

iter.check612:                                    ; preds = %bb.az
  %i.jv = add i64 %.11391.i551, %i.s
  %i.jw = add i64 %i.jv, 1
  %i.jx = sub i64 %i.jw, %i.jk
  %i.jy = add i64 %.13.i, %.11391.i551
  %umax591 = tail call i64 @llvm.umax.i64(i64 %i.jx, i64 %i.jy)
  %i.jz = add i64 %umax591, %i.jk
  %i.ka = add i64 %.11391.i551, %i.s
  %i.kb = sub i64 %i.jz, %i.ka                    ; 7 uses
  %min.iters.check593 = icmp ult i64 %i.kb, 8
  %i.kc = add i64 %i.jt, -1
  %diff.check595 = icmp ult i64 %i.kc, 31
  %or.cond629 = or i1 %min.iters.check593, %diff.check595
  br i1 %or.cond629, label %.lr.ph232.preheader, label %vector.main.loop.iter.check596

vector.main.loop.iter.check596:                   ; preds = %iter.check612
  %min.iters.check597 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check597, label %vec.epilog.ph616, label %vector.ph598

vector.ph598:                                     ; preds = %vector.main.loop.iter.check596
  %i.kd = and i64 %i.kb, 24
  %n.vec599 = and i64 %i.kb, -32                  ; 5 uses
  %i.ke = getelementptr i8, ptr %1, i64 %n.vec599
  %i.kf = getelementptr i8, ptr %i.jr, i64 %n.vec599 ; 2 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.ph598, %vector.body600
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next606, %vector.body600 ] ; 3 uses
  %next.gep602 = getelementptr i8, ptr %1, i64 %index601 ; 2 uses
  %next.gep603 = getelementptr i8, ptr %i.jr, i64 %index601 ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep602, i64 16
  %wide.load604 = load <16 x i8>, ptr %next.gep602, align 1, !tbaa !15
  %wide.load605 = load <16 x i8>, ptr %i.kg, align 1, !tbaa !15
  %i.kh = getelementptr i8, ptr %next.gep603, i64 16
  store <16 x i8> %wide.load604, ptr %next.gep603, align 1, !tbaa !15
  store <16 x i8> %wide.load605, ptr %i.kh, align 1, !tbaa !15
  %index.next606 = add nuw i64 %index601, 32      ; 2 uses
  %i.ki = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.ki, label %middle.block607, label %vector.body600, !llvm.loop !86

middle.block607:                                  ; preds = %vector.body600
  %cmp.n608 = icmp eq i64 %i.kb, %n.vec599
  br i1 %cmp.n608, label %.preheader137, label %vec.epilog.iter.check614

vec.epilog.iter.check614:                         ; preds = %middle.block607
  %min.epilog.iters.check615 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check615, label %.lr.ph232.preheader, label %vec.epilog.ph616, !prof !45

vec.epilog.ph616:                                 ; preds = %vector.main.loop.iter.check596, %vec.epilog.iter.check614
  %vec.epilog.resume.val609 = phi i64 [ %n.vec599, %vec.epilog.iter.check614 ], [ 0, %vector.main.loop.iter.check596 ]
  %n.vec617 = and i64 %i.kb, -8                   ; 4 uses
  %i.kj = getelementptr i8, ptr %1, i64 %n.vec617
  %i.kk = getelementptr i8, ptr %i.jr, i64 %n.vec617 ; 2 uses
  br label %vec.epilog.vector.body618

vec.epilog.vector.body618:                        ; preds = %vec.epilog.vector.body618, %vec.epilog.ph616
  %index619 = phi i64 [ %vec.epilog.resume.val609, %vec.epilog.ph616 ], [ %index.next623, %vec.epilog.vector.body618 ] ; 3 uses
  %next.gep620 = getelementptr i8, ptr %1, i64 %index619
  %next.gep621 = getelementptr i8, ptr %i.jr, i64 %index619
  %wide.load622 = load <8 x i8>, ptr %next.gep620, align 1, !tbaa !15
  store <8 x i8> %wide.load622, ptr %next.gep621, align 1, !tbaa !15
  %index.next623 = add nuw i64 %index619, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next623, %n.vec617
  br i1 %i.kl, label %vec.epilog.middle.block624, label %vec.epilog.vector.body618, !llvm.loop !87

vec.epilog.middle.block624:                       ; preds = %vec.epilog.vector.body618
  %cmp.n625 = icmp eq i64 %i.kb, %n.vec617
  br i1 %cmp.n625, label %.preheader137, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check612, %vec.epilog.iter.check614, %vec.epilog.middle.block624
  %.0.i231.ph = phi ptr [ %1, %iter.check612 ], [ %i.ke, %vec.epilog.iter.check614 ], [ %i.kj, %vec.epilog.middle.block624 ]
  %.12392.i230.ph = phi ptr [ %i.jr, %iter.check612 ], [ %i.kf, %vec.epilog.iter.check614 ], [ %i.kk, %vec.epilog.middle.block624 ]
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
  %.3371.i550 = ptrtoaddr ptr %.3371.i to i64
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
end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_partial_forceExtDict:bb.a
  %i.gr = load i64, ptr %i.go, align 1
  store i64 %i.gr, ptr %i.gh, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gu = load i64, ptr %i.gt, align 1
  store i64 %i.gu, ptr %i.gs, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gx = load i16, ptr %i.gw, align 1
  store i16 %i.gx, ptr %i.gv, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gi, i64 3 ; 2 uses
  %i.hb = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.hc = zext i8 %i.hb to i32                    ; 3 uses
  %i.hd = lshr i32 %i.hc, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.hd, 15
  br i1 %.not439.i, label %.thread103, label %.lr.ph229

.loopexit145:                                     ; preds = %.backedge, %.preheader156
  %.4 = phi ptr [ %i.t, %.preheader156 ], [ %i.cn, %.backedge ] ; 2 uses
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
  %i.jk = icmp ne i64 %.016.i32, -1
  %i.jl = add i64 %.016.i32, 15                   ; 2 uses
  %i.jm = ptrtoint ptr %.10390.i to i64
  %i.jn = xor i64 %i.jm, -1
  %i.jo = icmp ule i64 %i.jl, %i.jn
  %.not139 = select i1 %i.jk, i1 %i.jo, i1 false
  br i1 %.not139, label %bb.at, label %LZ4_wildCopy32.exit.thread

bb.at:                                            ; preds = %read_variable_length.exit36, %.loopexit146
  %.9 = phi ptr [ %.20, %read_variable_length.exit36 ], [ %.8, %.loopexit146 ]
  %.12.i = phi i64 [ %i.jl, %read_variable_length.exit36 ], [ %.10.i, %.loopexit146 ]
  %i.jp = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.n, %bb.o, %bb.at
  %.2 = phi ptr [ %.9, %bb.at ], [ %.1694, %bb.n ], [ %i.bj, %bb.o ] ; 9 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.at ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 27 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.at ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ] ; 18 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.at ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.jp, %bb.at ], [ %i.bx, %bb.n ], [ %i.cc, %bb.o ] ; 5 uses
  %.11391.i591 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %.1369.i551 = ptrtoaddr ptr %.1369.i to i64     ; 3 uses
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
  br i1 %i.kk, label %iter.check613, label %bb.ba

iter.check613:                                    ; preds = %bb.az
  %i.kl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  %i.km = add i64 %.11391.i591, %i.q
  %i.kn = add i64 %i.km, 1
  %i.ko = sub i64 %i.kn, %.1369.i551
  %i.kp = add i64 %.14.i, %.11391.i591
  %umax592 = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 %i.kp)
  %i.kq = add i64 %umax592, %.1369.i551
  %i.kr = add i64 %.11391.i591, %i.q
  %i.ks = sub i64 %i.kq, %i.kr                    ; 7 uses
  %min.iters.check594 = icmp ult i64 %i.ks, 8
  %i.kt = add i64 %i.kj, -1
  %diff.check596 = icmp ult i64 %i.kt, 31
  %or.cond630 = or i1 %min.iters.check594, %diff.check596
  br i1 %or.cond630, label %.lr.ph238.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check613
  %min.iters.check598 = icmp ult i64 %i.ks, 32
  br i1 %min.iters.check598, label %vec.epilog.ph617, label %vector.ph599

vector.ph599:                                     ; preds = %vector.main.loop.iter.check597
  %i.ku = and i64 %i.ks, 24
  %n.vec600 = and i64 %i.ks, -32                  ; 5 uses
  %i.kv = getelementptr i8, ptr %1, i64 %n.vec600
  %i.kw = getelementptr i8, ptr %i.kh, i64 %n.vec600 ; 2 uses
  br label %vector.body601

vector.body601:                                   ; preds = %vector.ph599, %vector.body601
  %index602 = phi i64 [ 0, %vector.ph599 ], [ %index.next607, %vector.body601 ] ; 3 uses
  %next.gep603 = getelementptr i8, ptr %1, i64 %index602 ; 2 uses
  %next.gep604 = getelementptr i8, ptr %i.kh, i64 %index602 ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep603, i64 16
  %wide.load605 = load <16 x i8>, ptr %next.gep603, align 1, !tbaa !15
  %wide.load606 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !15
  %i.ky = getelementptr i8, ptr %next.gep604, i64 16
  store <16 x i8> %wide.load605, ptr %next.gep604, align 1, !tbaa !15
  store <16 x i8> %wide.load606, ptr %i.ky, align 1, !tbaa !15
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.kz = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.kz, label %middle.block608, label %vector.body601, !llvm.loop !97

middle.block608:                                  ; preds = %vector.body601
  %cmp.n609 = icmp eq i64 %i.ks, %n.vec600
  br i1 %cmp.n609, label %.preheader144, label %vec.epilog.iter.check615

vec.epilog.iter.check615:                         ; preds = %middle.block608
  %min.epilog.iters.check616 = icmp eq i64 %i.ku, 0
  br i1 %min.epilog.iters.check616, label %.lr.ph238.preheader, label %vec.epilog.ph617, !prof !45

vec.epilog.ph617:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check615
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check615 ], [ 0, %vector.main.loop.iter.check597 ]
  %n.vec618 = and i64 %i.ks, -8                   ; 4 uses
  %i.la = getelementptr i8, ptr %1, i64 %n.vec618
  %i.lb = getelementptr i8, ptr %i.kh, i64 %n.vec618 ; 2 uses
  br label %vec.epilog.vector.body619

vec.epilog.vector.body619:                        ; preds = %vec.epilog.vector.body619, %vec.epilog.ph617
  %index620 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph617 ], [ %index.next624, %vec.epilog.vector.body619 ] ; 3 uses
  %next.gep621 = getelementptr i8, ptr %1, i64 %index620
  %next.gep622 = getelementptr i8, ptr %i.kh, i64 %index620
  %wide.load623 = load <8 x i8>, ptr %next.gep621, align 1, !tbaa !15
  store <8 x i8> %wide.load623, ptr %next.gep622, align 1, !tbaa !15
  %index.next624 = add nuw i64 %index620, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next624, %n.vec618
  br i1 %i.lc, label %vec.epilog.middle.block625, label %vec.epilog.vector.body619, !llvm.loop !98

vec.epilog.middle.block625:                       ; preds = %vec.epilog.vector.body619
  %cmp.n626 = icmp eq i64 %i.ks, %n.vec618
  br i1 %cmp.n626, label %.preheader144, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %iter.check613, %vec.epilog.iter.check615, %vec.epilog.middle.block625
  %.0.i237.ph = phi ptr [ %1, %iter.check613 ], [ %i.kv, %vec.epilog.iter.check615 ], [ %i.la, %vec.epilog.middle.block625 ]
  %.12392.i236.ph = phi ptr [ %i.kh, %iter.check613 ], [ %i.kw, %vec.epilog.iter.check615 ], [ %i.lb, %vec.epilog.middle.block625 ]
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
  br i1 %.not, label %.loopexit140, label %iter.check573

iter.check573:                                    ; preds = %.preheader
  %i.lq = add i64 %i.lm, %i.lk
  %i.lr = add i64 %i.lk, 1
  %umax552 = tail call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.lr)
  %i.ls = sub i64 %umax552, %i.lk                 ; 7 uses
  %min.iters.check554 = icmp ult i64 %i.ls, 8
  %i.lt = sub i64 %.1369.i551, %i.lk
  %diff.check556 = icmp ugt i64 %i.lt, -32
  %or.cond631 = select i1 %min.iters.check554, i1 true, i1 %diff.check556
  br i1 %or.cond631, label %.lr.ph235.preheader, label %vector.main.loop.iter.check557

vector.main.loop.iter.check557:                   ; preds = %iter.check573
  %min.iters.check558 = icmp ult i64 %i.ls, 32
  br i1 %min.iters.check558, label %vec.epilog.ph577, label %vector.ph559

vector.ph559:                                     ; preds = %vector.main.loop.iter.check557
  %i.lu = and i64 %i.ls, 24
  %n.vec560 = and i64 %i.ls, -32                  ; 5 uses
  %i.lv = getelementptr i8, ptr %.1369.i, i64 %n.vec560
  %i.lw = getelementptr i8, ptr %.11391.i, i64 %n.vec560
  br label %vector.body561

vector.body561:                                   ; preds = %vector.ph559, %vector.body561
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next567, %vector.body561 ] ; 3 uses
  %next.gep563 = getelementptr i8, ptr %.1369.i, i64 %index562 ; 2 uses
  %next.gep564 = getelementptr i8, ptr %.11391.i, i64 %index562 ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep563, i64 16
  %wide.load565 = load <16 x i8>, ptr %next.gep563, align 1, !tbaa !15
  %wide.load566 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !15
  %i.ly = getelementptr i8, ptr %next.gep564, i64 16
  store <16 x i8> %wide.load565, ptr %next.gep564, align 1, !tbaa !15
  store <16 x i8> %wide.load566, ptr %i.ly, align 1, !tbaa !15
  %index.next567 = add nuw i64 %index562, 32      ; 2 uses
  %i.lz = icmp eq i64 %index.next567, %n.vec560
  br i1 %i.lz, label %middle.block568, label %vector.body561, !llvm.loop !100
end_hunk_4
begin_hunk_5_@LZ4_decompress_safe_continue:bb.a
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw ; 3 uses
  %i.hc = and i32 %i.gu, 15                       ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %.val = load i16, ptr %i.hb, align 1, !tbaa !30 ; 2 uses
  %i.he = zext i16 %.val to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 2 ; 2 uses
  %i.hg = sub nsw i64 0, %i.he
  %i.hh = getelementptr inbounds i8, ptr %i.ha, i64 %i.hg ; 5 uses
  %i.hi = icmp eq i32 %i.hc, 15
  %i.hj = icmp ult i16 %.val, 8
  %or.cond3.i.i.not191 = select i1 %i.hi, i1 true, i1 %i.hj
  %.not443.i.i = icmp ult ptr %i.hh, %i.s
  %or.cond = select i1 %or.cond3.i.i.not191, i1 true, i1 %.not443.i.i
  br i1 %or.cond, label %.loopexit201, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hk = load i64, ptr %i.hh, align 1
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
  %i.jv = icmp ne i64 %.016.i87, -1
  %i.jw = add i64 %.016.i87, 15                   ; 2 uses
  %i.jx = ptrtoint ptr %.10390.i.i to i64
  %i.jy = xor i64 %i.jx, -1
  %i.jz = icmp ule i64 %i.jw, %i.jy
  %.not193 = select i1 %i.jv, i1 %i.jz, i1 false
  br i1 %.not193, label %bb.bc, label %LZ4_wildCopy32.exit.thread

bb.bc:                                            ; preds = %read_variable_length.exit91, %.loopexit201
  %.8 = phi ptr [ %.19, %read_variable_length.exit91 ], [ %.7, %.loopexit201 ]
  %.12.i.i = phi i64 [ %i.jw, %read_variable_length.exit91 ], [ %.10.i.i, %.loopexit201 ]
  %i.ka = add i64 %.12.i.i, 4
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.x, %bb.y, %bb.bc
  %.2 = phi ptr [ %.8, %bb.bc ], [ %.15151, %bb.x ], [ %i.ch, %bb.y ] ; 14 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.bc ], [ %.2382.i.i, %bb.y ], [ %.2382.i.i, %bb.x ] ; 14 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.bc ], [ %i.cj, %bb.y ], [ %i.cj, %bb.x ] ; 10 uses
  %.1367.i.i = phi i64 [ %.0366.i.i, %bb.bc ], [ %i.cg, %bb.y ], [ %i.cg, %bb.x ] ; 3 uses
  %.13.i.i = phi i64 [ %i.ka, %bb.bc ], [ %i.cv, %bb.x ], [ %i.da, %bb.y ] ; 7 uses
  %.11391.i.i623 = ptrtoaddr ptr %.11391.i.i to i64 ; 6 uses
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
  br i1 %i.ks, label %iter.check684, label %bb.bi

iter.check684:                                    ; preds = %bb.bh
  %i.kt = add i64 %i.b, %i.ki
  %i.ku = add i64 %.11391.i.i623, %i.am
  %i.kv = add i64 %i.ku, 1
  %i.kw = add i64 %i.b, %i.ki
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = add i64 %.13.i.i, %.11391.i.i623
  %umax663 = tail call i64 @llvm.umax.i64(i64 %i.kx, i64 %i.ky)
  %i.kz = add i64 %i.kt, %umax663
  %i.la = add i64 %.11391.i.i623, %i.am
  %i.lb = sub i64 %i.kz, %i.la                    ; 7 uses
  %min.iters.check665 = icmp ult i64 %i.lb, 8
  %i.lc = add i64 %i.kr, -1
  %diff.check667 = icmp ult i64 %i.lc, 31
  %or.cond701 = or i1 %min.iters.check665, %diff.check667
  br i1 %or.cond701, label %.lr.ph294.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check684
  %min.iters.check669 = icmp ult i64 %i.lb, 32
  br i1 %min.iters.check669, label %vec.epilog.ph688, label %vector.ph670

vector.ph670:                                     ; preds = %vector.main.loop.iter.check668
  %i.ld = and i64 %i.lb, 24
  %n.vec671 = and i64 %i.lb, -32                  ; 5 uses
  %i.le = getelementptr i8, ptr %i.s, i64 %n.vec671
  %i.lf = getelementptr i8, ptr %i.kp, i64 %n.vec671 ; 2 uses
  br label %vector.body672

vector.body672:                                   ; preds = %vector.ph670, %vector.body672
  %index673 = phi i64 [ 0, %vector.ph670 ], [ %index.next678, %vector.body672 ] ; 3 uses
  %next.gep674 = getelementptr i8, ptr %i.s, i64 %index673 ; 2 uses
  %next.gep675 = getelementptr i8, ptr %i.kp, i64 %index673 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep674, i64 16
  %wide.load676 = load <16 x i8>, ptr %next.gep674, align 1, !tbaa !15
  %wide.load677 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !15
  %i.lh = getelementptr i8, ptr %next.gep675, i64 16
  store <16 x i8> %wide.load676, ptr %next.gep675, align 1, !tbaa !15
  store <16 x i8> %wide.load677, ptr %i.lh, align 1, !tbaa !15
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.li = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.li, label %middle.block679, label %vector.body672, !llvm.loop !108

middle.block679:                                  ; preds = %vector.body672
  %cmp.n680 = icmp eq i64 %i.lb, %n.vec671
  br i1 %cmp.n680, label %.preheader199, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block679
  %min.epilog.iters.check687 = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check687, label %.lr.ph294.preheader, label %vec.epilog.ph688, !prof !45

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check686
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check668 ]
  %n.vec689 = and i64 %i.lb, -8                   ; 4 uses
  %i.lj = getelementptr i8, ptr %i.s, i64 %n.vec689
  %i.lk = getelementptr i8, ptr %i.kp, i64 %n.vec689 ; 2 uses
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %vec.epilog.vector.body690, %vec.epilog.ph688
  %index691 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph688 ], [ %index.next695, %vec.epilog.vector.body690 ] ; 3 uses
  %next.gep692 = getelementptr i8, ptr %i.s, i64 %index691
  %next.gep693 = getelementptr i8, ptr %i.kp, i64 %index691
  %wide.load694 = load <8 x i8>, ptr %next.gep692, align 1, !tbaa !15
  store <8 x i8> %wide.load694, ptr %next.gep693, align 1, !tbaa !15
  %index.next695 = add nuw i64 %index691, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next695, %n.vec689
  br i1 %i.ll, label %vec.epilog.middle.block696, label %vec.epilog.vector.body690, !llvm.loop !109

vec.epilog.middle.block696:                       ; preds = %vec.epilog.vector.body690
  %cmp.n697 = icmp eq i64 %i.lb, %n.vec689
  br i1 %cmp.n697, label %.preheader199, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block696
  %.0.i.i293.ph = phi ptr [ %i.s, %iter.check684 ], [ %i.le, %vec.epilog.iter.check686 ], [ %i.lj, %vec.epilog.middle.block696 ]
  %.12392.i.i292.ph = phi ptr [ %i.kp, %iter.check684 ], [ %i.lf, %vec.epilog.iter.check686 ], [ %i.lk, %vec.epilog.middle.block696 ]
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
  %.3371.i.i622 = ptrtoaddr ptr %.3371.i.i to i64
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
end_hunk_5
begin_hunk_6_@LZ4_decompress_safe_withSmallPrefix:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ep ; 3 uses
  %i.ev = and i32 %i.en, 15                       ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %.val = load i16, ptr %i.eu, align 1, !tbaa !30 ; 2 uses
  %i.ex = zext i16 %.val to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2 ; 2 uses
  %i.ez = sub nsw i64 0, %i.ex
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 %i.ez ; 5 uses
  %i.fb = icmp eq i32 %i.ev, 15
  %i.fc = icmp ult i16 %.val, 8
  %or.cond3.i.not127 = select i1 %i.fb, i1 true, i1 %i.fc
  %.not443.i = icmp ult ptr %i.fa, %i.b
  %or.cond = select i1 %or.cond3.i.not127, i1 true, i1 %.not443.i
  br i1 %or.cond, label %.loopexit135, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load i64, ptr %i.fa, align 1
  store i64 %i.fd, ptr %i.et, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fg = load i64, ptr %i.ff, align 1
  store i64 %i.fg, ptr %i.fe, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fj = load i16, ptr %i.fi, align 1
  store i16 %i.fj, ptr %i.fh, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 3 ; 2 uses
  %i.fn = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fo = zext i8 %i.fn to i32                    ; 3 uses
  %i.fp = lshr i32 %i.fo, 4                       ; 2 uses
  %.not439.i = icmp eq i32 %i.fp, 15
  br i1 %.not439.i, label %.thread97, label %.lr.ph213

.loopexit:                                        ; preds = %.backedge, %.preheader144
  %.4 = phi ptr [ %i.t, %.preheader144 ], [ %i.cl, %.backedge ] ; 2 uses
  %.7387.i = phi ptr [ %1, %.preheader144 ], [ %.0380.i.be, %.backedge ] ; 2 uses
  %.0364.i = phi i32 [ %i.v, %.preheader144 ], [ %i.cn, %.backedge ] ; 2 uses
  %.4362.i = phi i64 [ %i.x, %.preheader144 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.fq = icmp eq i64 %.4362.i, 15
  br i1 %i.fq, label %.thread97, label %.loopexit.thread

.thread97:                                        ; preds = %bb.af, %.preheader134, %.loopexit
  %.0364.i106 = phi i32 [ %.0364.i, %.loopexit ], [ %i.km, %.preheader134 ], [ %i.fo, %bb.af ]
  %.7387.i104 = phi ptr [ %.7387.i, %.loopexit ], [ %.6386.i.ph, %.preheader134 ], [ %i.fl, %bb.af ] ; 2 uses
  %.4102 = phi ptr [ %.4, %.loopexit ], [ %i.kk, %.preheader134 ], [ %i.fm, %bb.af ] ; 4 uses
  %i.fr = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
  %.not.i19 = icmp ult ptr %.4102, %i.fr
  br i1 %.not.i19, label %bb.ag, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ag:                                            ; preds = %.thread97
  %i.fs = load i8, ptr %.4102, align 1, !tbaa !15 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.4102, i64 1 ; 4 uses
  %.not21.i21 = icmp eq i8 %i.fs, -1
  br i1 %.not21.i21, label %.preheader133.preheader, label %read_variable_length.exit24.thread110, !prof !27

.preheader133.preheader:                          ; preds = %bb.ag
  %.not22.i23474 = icmp ult ptr %i.ft, %i.fr
  br i1 %.not22.i23474, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit24.thread110:            ; preds = %bb.ag
  %i.fu = zext i8 %i.fs to i64
  br label %bb.ah

.preheader133:                                    ; preds = %.lr.ph477
  %.not22.i23 = icmp ult ptr %i.fx, %i.fr
  br i1 %.not22.i23, label %.lr.ph477, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph477:                                        ; preds = %.preheader133.preheader, %.preheader133
  %.0.i22476 = phi i64 [ %i.fy, %.preheader133 ], [ 255, %.preheader133.preheader ]
  %.16475 = phi ptr [ %i.fx, %.preheader133 ], [ %i.ft, %.preheader133.preheader ] ; 2 uses
  %i.fv = load i8, ptr %.16475, align 1, !tbaa !15 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.16475, i64 1 ; 5 uses
  %i.fy = add i64 %.0.i22476, %i.fw               ; 3 uses
  %i.fz = icmp eq i8 %i.fv, -1
  br i1 %i.fz, label %.preheader133, label %read_variable_length.exit24, !llvm.loop !3

read_variable_length.exit24:                      ; preds = %.lr.ph477
  %i.ga = icmp eq i64 %i.fy, -1
  br i1 %i.ga, label %LZ4_wildCopy32.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %read_variable_length.exit24.thread110, %read_variable_length.exit24
  %.016.i20114 = phi i64 [ %i.fu, %read_variable_length.exit24.thread110 ], [ %i.fy, %read_variable_length.exit24 ]
  %.17113 = phi ptr [ %i.ft, %read_variable_length.exit24.thread110 ], [ %i.fx, %read_variable_length.exit24 ] ; 3 uses
  %i.gb = add i64 %.016.i20114, 15                ; 3 uses
  %i.gc = ptrtoint ptr %.7387.i104 to i64
  %i.gd = xor i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.gb, %i.gd
  %i.gf = ptrtoint ptr %.17113 to i64
  %i.gg = xor i64 %i.gf, -1
  %i.gh = icmp ugt i64 %i.gb, %i.gg
  %or.cond125 = select i1 %i.ge, i1 true, i1 %i.gh, !prof !44
  br i1 %or.cond125, label %LZ4_wildCopy32.exit.thread, label %.loopexit.thread, !prof !44

.loopexit.thread:                                 ; preds = %.lr.ph213, %bb.ah, %.loopexit
  %.0364.i105 = phi i32 [ %.0364.i, %.loopexit ], [ %.0364.i106, %bb.ah ], [ %i.en, %.lr.ph213 ]
  %.7387.i103 = phi ptr [ %.7387.i, %.loopexit ], [ %.7387.i104, %bb.ah ], [ %.6386.i212, %.lr.ph213 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit ], [ %.17113, %bb.ah ], [ %i.eo, %.lr.ph213 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit ], [ %i.gb, %bb.ah ], [ %i.ep, %.lr.ph213 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.7387.i103, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit.thread
  %.6 = phi ptr [ %.5, %.loopexit.thread ], [ %.1369, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i103, %.loopexit.thread ], [ %.0380.i206, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.gi, %.loopexit.thread ], [ %i.as, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i105, %.loopexit.thread ], [ %i.af, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit.thread ], [ %i.ar, %bb.k ] ; 4 uses
  %i.gj = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.gk = icmp ugt ptr %.3377.i, %i.gj
  br i1 %i.gk, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.gm = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.gn = icmp ugt ptr %i.gl, %i.gm
  br i1 %i.gn, label %bb.aj, label %.preheader132

bb.aj:                                            ; preds = %bb.ai, %LZ4_wildCopy32.exit
  %i.go = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.go, %i.f
  %i.gp = icmp ugt ptr %.3377.i, %i.h
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.gp
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.q
  %i.gt = trunc i64 %i.gs to i32
  br label %LZ4_decompress_generic.exit

.preheader132:                                    ; preds = %bb.ai, %.preheader132
  %.09.i8 = phi ptr [ %i.gv, %.preheader132 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i9 = phi ptr [ %i.gw, %.preheader132 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gu = load i64, ptr %.0.i9, align 1
  store i64 %i.gu, ptr %.09.i8, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.gx = icmp ult ptr %i.gv, %.3377.i
  br i1 %i.gx, label %.preheader132, label %LZ4_wildCopy8.exit10, !llvm.loop !1

LZ4_wildCopy8.exit10:                             ; preds = %.preheader132
  %.val37 = load i16, ptr %i.gl, align 1, !tbaa !30
  %i.gy = zext i16 %.val37 to i64                 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.ha = sub nsw i64 0, %i.gy
  %i.hb = getelementptr inbounds i8, ptr %.3377.i, i64 %i.ha
  %i.hc = and i32 %.1365.i, 15
  %i.hd = zext nneg i32 %i.hc to i64
  br label %.loopexit135

.loopexit135:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit10
  %.7 = phi ptr [ %i.gz, %LZ4_wildCopy8.exit10 ], [ %i.ey, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit10 ], [ %i.et, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.hb, %LZ4_wildCopy8.exit10 ], [ %i.fa, %bb.ae ]
  %.0366.i = phi i64 [ %i.gy, %LZ4_wildCopy8.exit10 ], [ %i.ex, %bb.ae ]
  %.10.i = phi i64 [ %i.hd, %LZ4_wildCopy8.exit10 ], [ %i.ew, %bb.ae ] ; 2 uses
  %i.he = icmp eq i64 %.10.i, 15
  br i1 %i.he, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit135
  %i.hf = getelementptr inbounds i8, ptr %i.f, i64 -6 ; 3 uses
  %.not.i25 = icmp ult ptr %.7, %i.hf
  br i1 %.not.i25, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.hg = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i27 = icmp eq i8 %i.hg, -1
  br i1 %.not21.i27, label %.preheader131.preheader, label %bb.an, !prof !27

.preheader131.preheader:                          ; preds = %bb.am
  %.not22.i29479 = icmp ult ptr %i.hh, %i.hf
  br i1 %.not22.i29479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hi = zext i8 %i.hg to i64
  br label %read_variable_length.exit30

.preheader131:                                    ; preds = %.lr.ph482
  %.not22.i29 = icmp ult ptr %i.hl, %i.hf
  br i1 %.not22.i29, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader131.preheader, %.preheader131
  %.0.i28481 = phi i64 [ %i.hm, %.preheader131 ], [ 255, %.preheader131.preheader ]
  %.18480 = phi ptr [ %i.hl, %.preheader131 ], [ %i.hh, %.preheader131.preheader ] ; 2 uses
  %i.hj = load i8, ptr %.18480, align 1, !tbaa !15 ; 2 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.18480, i64 1 ; 4 uses
  %i.hm = add i64 %.0.i28481, %i.hk               ; 2 uses
  %i.hn = icmp eq i8 %i.hj, -1
  br i1 %i.hn, label %.preheader131, label %read_variable_length.exit30, !llvm.loop !3

read_variable_length.exit30:                      ; preds = %.lr.ph482, %bb.an
  %.19 = phi ptr [ %i.hh, %bb.an ], [ %i.hl, %.lr.ph482 ] ; 2 uses
  %.016.i26 = phi i64 [ %i.hi, %bb.an ], [ %i.hm, %.lr.ph482 ] ; 2 uses
  %i.ho = icmp ne i64 %.016.i26, -1
  %i.hp = add i64 %.016.i26, 15                   ; 2 uses
  %i.hq = ptrtoint ptr %.10390.i to i64
  %i.hr = xor i64 %i.hq, -1
  %i.hs = icmp ule i64 %i.hp, %i.hr
  %.not129 = select i1 %i.ho, i1 %i.hs, i1 false
  br i1 %.not129, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit30, %.loopexit135
  %.8 = phi ptr [ %.19, %read_variable_length.exit30 ], [ %.7, %.loopexit135 ]
  %.12.i = phi i64 [ %i.hp, %read_variable_length.exit30 ], [ %.10.i, %.loopexit135 ]
  %i.ht = add i64 %.12.i, 4
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1588, %bb.p ], [ %i.bh, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.ht, %bb.ao ], [ %i.bv, %bb.p ], [ %i.ca, %bb.q ] ; 3 uses
  %.11391.i491 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.hu = icmp ult ptr %.1369.i, %i.b
  br i1 %i.hu, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit147
  %i.hv = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hw = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.hx = icmp ult i64 %.1367.i, 8
  br i1 %i.hx, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hy = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hy, ptr %.11391.i, align 1, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.ib = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !37
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.in = load i32, ptr %i.il, align 1
  store i32 %i.in, ptr %i.im, align 1
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !37
  %i.iq = sext i32 %i.ip to i64
  %i.ir = sub nsw i64 0, %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.il, i64 %i.ir
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.it = load i64, ptr %.1369.i, align 1
  store i64 %i.it, ptr %.11391.i, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.is, %bb.aq ], [ %i.iu, %bb.ar ] ; 6 uses
  %.3371.i490 = ptrtoaddr ptr %.3371.i to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.iw = icmp ugt ptr %i.hv, %i.hw
  br i1 %i.iw, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.ix = getelementptr inbounds i8, ptr %i.h, i64 -7 ; 4 uses
  %i.iy = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.iz = icmp ugt ptr %i.hv, %i.iy
  br i1 %i.iz, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ja = icmp ult ptr %i.iv, %i.ix
  br i1 %i.ja, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.jc, %.preheader ], [ %i.iv, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.jd, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.jb = load i64, ptr %.0.i, align 1
  store i64 %i.jb, ptr %.09.i, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.je = icmp ult ptr %i.jc, %i.ix
  br i1 %i.je, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.jf = ptrtoint ptr %i.ix to i64
  %i.jg = ptrtoint ptr %i.iv to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %.3371.i, i64 %i.jh
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.ix, %LZ4_wildCopy8.exit ], [ %i.iv, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.ji, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.jj = icmp ult ptr %.16.i, %i.hv
  br i1 %i.jj, label %iter.check, label %.preheader134

iter.check:                                       ; preds = %bb.av
  %i.jk = add i64 %.13.i, %.11391.i491
  %i.jl = add i64 %i.q, %i.g
  %i.jm = add i64 %i.jl, -7
  %i.jn = add i64 %.11391.i491, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jm, i64 %i.jn)
  %i.jo = sub i64 %i.jk, %umax                    ; 7 uses
  %min.iters.check493 = icmp ult i64 %i.jo, 8
  br i1 %min.iters.check493, label %.lr.ph219.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jp = sub i64 %.11391.i491, %.3371.i490
  %i.jq = add i64 %i.jp, 7
  %diff.check = icmp ult i64 %i.jq, 31
  br i1 %diff.check, label %.lr.ph219.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check494 = icmp ult i64 %i.jo, 32
  br i1 %min.iters.check494, label %vec.epilog.ph, label %vector.ph495

vector.ph495:                                     ; preds = %vector.main.loop.iter.check
  %i.jr = and i64 %i.jo, 24
  %n.vec496 = and i64 %i.jo, -32                  ; 5 uses
  %i.js = getelementptr i8, ptr %.4372.i, i64 %n.vec496
  %i.jt = getelementptr i8, ptr %.16.i, i64 %n.vec496
  br label %vector.body497

vector.body497:                                   ; preds = %vector.ph495, %vector.body497
  %index498 = phi i64 [ 0, %vector.ph495 ], [ %index.next502, %vector.body497 ] ; 3 uses
  %next.gep499 = getelementptr i8, ptr %.4372.i, i64 %index498 ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.16.i, i64 %index498 ; 2 uses
  %i.ju = getelementptr i8, ptr %next.gep499, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep499, align 1, !tbaa !15
  %wide.load501 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !15
  %i.jv = getelementptr i8, ptr %next.gep500, i64 16
  store <16 x i8> %wide.load, ptr %next.gep500, align 1, !tbaa !15
  store <16 x i8> %wide.load501, ptr %i.jv, align 1, !tbaa !15
  %index.next502 = add nuw i64 %index498, 32      ; 2 uses
  %i.jw = icmp eq i64 %index.next502, %n.vec496
  br i1 %i.jw, label %middle.block503, label %vector.body497, !llvm.loop !116

middle.block503:                                  ; preds = %vector.body497
  %cmp.n504 = icmp eq i64 %i.jo, %n.vec496
  br i1 %cmp.n504, label %.preheader134, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block503
  %min.epilog.iters.check = icmp eq i64 %i.jr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph219.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec496, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec507 = and i64 %i.jo, -8                   ; 4 uses
  %i.jx = getelementptr i8, ptr %.4372.i, i64 %n.vec507
  %i.jy = getelementptr i8, ptr %.16.i, i64 %n.vec507
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index508 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next512, %vec.epilog.vector.body ] ; 3 uses
  %next.gep509 = getelementptr i8, ptr %.4372.i, i64 %index508
  %next.gep510 = getelementptr i8, ptr %.16.i, i64 %index508
  %wide.load511 = load <8 x i8>, ptr %next.gep509, align 1, !tbaa !15
  store <8 x i8> %wide.load511, ptr %next.gep510, align 1, !tbaa !15
  %index.next512 = add nuw i64 %index508, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next512, %n.vec507
  br i1 %i.jz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n513 = icmp eq i64 %i.jo, %n.vec507
  br i1 %cmp.n513, label %.preheader134, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i218.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  %.17.i217.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.jt, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %.lr.ph219
  %.5373.i218 = phi ptr [ %i.ka, %.lr.ph219 ], [ %.5373.i218.ph, %.lr.ph219.preheader ] ; 2 uses
  %.17.i217 = phi ptr [ %i.kc, %.lr.ph219 ], [ %.17.i217.ph, %.lr.ph219.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.5373.i218, i64 1
  %i.kb = load i8, ptr %.5373.i218, align 1, !tbaa !15
  %i.kc = getelementptr inbounds nuw i8, ptr %.17.i217, i64 1 ; 2 uses
  store i8 %i.kb, ptr %.17.i217, align 1, !tbaa !15
  %i.kd = icmp ult ptr %i.kc, %i.hv
  br i1 %i.kd, label %.lr.ph219, label %.preheader134, !llvm.loop !118

bb.aw:                                            ; preds = %bb.as
  %i.ke = load i64, ptr %.3371.i, align 1
  store i64 %i.ke, ptr %i.iv, align 1
  %i.kf = icmp ugt i64 %.13.i, 16
  br i1 %i.kf, label %bb.ax, label %.preheader134

bb.ax:                                            ; preds = %bb.aw
  %i.kg = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i5 = phi ptr [ %i.kg, %bb.ax ], [ %i.ki, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i6, %bb.ay ]
  %.0.i6 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kh = load i64, ptr %.0.i6, align 1
  store i64 %i.kh, ptr %.09.i5, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i5, i64 8 ; 2 uses
  %i.kj = icmp ult ptr %i.ki, %i.hv
  br i1 %i.kj, label %bb.ay, label %.preheader134, !llvm.loop !1

end_hunk_6
begin_hunk_7_@LZ4_decompress_safe_partial_usingDict:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %.ptr144.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.ptr145.i, i64 8
  %i.ex = load i64, ptr %i.ew, align 1
  store i64 %i.ex, ptr %i.ev, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.ptr144.i, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.ptr145.i, i64 16
  %i.fa = load i16, ptr %i.ez, align 1
  store i16 %i.fa, ptr %i.ey, align 1
  %.add141.i = add nuw nsw i64 %i.ep, 4
  %.add142.i = add nsw i64 %.add141.i, %.6386.i.add.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 3 ; 2 uses
  %i.fc = load i8, ptr %i.er, align 1, !tbaa !15
  %i.fd = zext i8 %i.fc to i32                    ; 3 uses
  %i.fe = lshr i32 %i.fd, 4                       ; 2 uses
  %.not439.i.i = icmp eq i32 %i.fe, 15
  br i1 %.not439.i.i, label %.thread100.i, label %bb.ag

.loopexit158.i:                                   ; preds = %.backedge.i, %.preheader168.i
  %.4.i = phi ptr [ %i.t, %.preheader168.i ], [ %i.cf, %.backedge.i ] ; 2 uses
  %.7387.i.idx.i = phi i64 [ 0, %.preheader168.i ], [ %.0380.i.idx.be.i, %.backedge.i ] ; 2 uses
  %.0364.i.i = phi i32 [ %i.v, %.preheader168.i ], [ %i.ch, %.backedge.i ] ; 2 uses
  %.4362.i.i = phi i64 [ %i.x, %.preheader168.i ], [ %i.cj, %.backedge.i ] ; 2 uses
  %i.ff = icmp eq i64 %.4362.i.i, 15
  br i1 %i.ff, label %.thread100.i, label %.loopexit158.thread.i

.thread100.i:                                     ; preds = %bb.ai, %.preheader157.i, %.loopexit158.i
  %.0364.i109.i = phi i32 [ %.0364.i.i, %.loopexit158.i ], [ %i.js, %.preheader157.i ], [ %i.fd, %bb.ai ]
  %.7387.i107.idx.i = phi i64 [ %.7387.i.idx.i, %.loopexit158.i ], [ %.6386.i.idx.ph.i, %.preheader157.i ], [ %.add142.i, %bb.ai ] ; 2 uses
  %.4105.i = phi ptr [ %.4.i, %.loopexit158.i ], [ %i.jq, %.preheader157.i ], [ %i.fb, %bb.ai ] ; 4 uses
  %.7387.i107.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.7387.i107.idx.i
  %i.fg = getelementptr inbounds i8, ptr %i.k, i64 -15 ; 3 uses
  %.not.i22.i = icmp ult ptr %.4105.i, %i.fg
  br i1 %.not.i22.i, label %bb.aj, label %LZ4_wildCopy32.exit.thread.i, !prof !31

bb.aj:                                            ; preds = %.thread100.i
  %i.fh = load i8, ptr %.4105.i, align 1, !tbaa !15 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.4105.i, i64 1 ; 4 uses
  %.not21.i24.i = icmp eq i8 %i.fh, -1
  br i1 %.not21.i24.i, label %.preheader156.i.preheader, label %read_variable_length.exit27.thread113.i, !prof !27

.preheader156.i.preheader:                        ; preds = %bb.aj
  %.not22.i26.i714 = icmp ult ptr %i.fi, %i.fg
  br i1 %.not22.i26.i714, label %.lr.ph717, label %LZ4_wildCopy32.exit.thread.i, !prof !35

read_variable_length.exit27.thread113.i:          ; preds = %bb.aj
  %i.fj = zext i8 %i.fh to i64
  br label %bb.ak

.preheader156.i:                                  ; preds = %.lr.ph717
  %.not22.i26.i = icmp ult ptr %i.fm, %i.fg
  br i1 %.not22.i26.i, label %.lr.ph717, label %LZ4_wildCopy32.exit.thread.i, !prof !36, !llvm.loop !3

.lr.ph717:                                        ; preds = %.preheader156.i.preheader, %.preheader156.i
  %.0.i25.i716 = phi i64 [ %i.fn, %.preheader156.i ], [ 255, %.preheader156.i.preheader ]
  %.17.i715 = phi ptr [ %i.fm, %.preheader156.i ], [ %i.fi, %.preheader156.i.preheader ] ; 2 uses
  %i.fk = load i8, ptr %.17.i715, align 1, !tbaa !15 ; 2 uses
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.17.i715, i64 1 ; 5 uses
  %i.fn = add i64 %.0.i25.i716, %i.fl             ; 3 uses
  %i.fo = icmp eq i8 %i.fk, -1
  br i1 %i.fo, label %.preheader156.i, label %read_variable_length.exit27.i, !llvm.loop !3

read_variable_length.exit27.i:                    ; preds = %.lr.ph717
  %i.fp = icmp eq i64 %i.fn, -1
  br i1 %i.fp, label %LZ4_wildCopy32.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %read_variable_length.exit27.i, %read_variable_length.exit27.thread113.i
  %.016.i23117.i = phi i64 [ %i.fj, %read_variable_length.exit27.thread113.i ], [ %i.fn, %read_variable_length.exit27.i ]
  %.18116.i = phi ptr [ %i.fi, %read_variable_length.exit27.thread113.i ], [ %i.fm, %read_variable_length.exit27.i ] ; 3 uses
  %i.fq = add i64 %.016.i23117.i, 15              ; 3 uses
  %i.fr = ptrtoint ptr %.7387.i107.ptr.i to i64
  %i.fs = xor i64 %i.fr, -1
  %i.ft = icmp ugt i64 %i.fq, %i.fs
  %i.fu = ptrtoint ptr %.18116.i to i64
  %i.fv = xor i64 %i.fu, -1
  %i.fw = icmp ugt i64 %i.fq, %i.fv
  %or.cond.i = select i1 %i.ft, i1 true, i1 %i.fw, !prof !44
  br i1 %or.cond.i, label %LZ4_wildCopy32.exit.thread.i, label %.loopexit158.thread.i, !prof !44

.loopexit158.thread.i:                            ; preds = %bb.ag, %bb.ak, %.loopexit158.i
  %.0364.i108.i = phi i32 [ %.0364.i.i, %.loopexit158.i ], [ %.0364.i109.i, %bb.ak ], [ %i.eh, %bb.ag ]
  %.7387.i106.idx.i = phi i64 [ %.7387.i.idx.i, %.loopexit158.i ], [ %.7387.i107.idx.i, %bb.ak ], [ %.6386.i.idx234.i, %bb.ag ] ; 2 uses
  %.5.i = phi ptr [ %.4.i, %.loopexit158.i ], [ %.18116.i, %bb.ak ], [ %i.ei, %bb.ag ]
  %.6.i.i = phi i64 [ %.4362.i.i, %.loopexit158.i ], [ %i.fq, %bb.ak ], [ %i.ej, %bb.ag ] ; 2 uses
  %.7387.i106.add.i = add nsw i64 %.6.i.i, %.7387.i106.idx.i
  br label %LZ4_wildCopy32.exit.i

LZ4_wildCopy32.exit.i:                            ; preds = %bb.m, %.loopexit158.thread.i
  %.6.i = phi ptr [ %.5.i, %.loopexit158.thread.i ], [ %.1472.i, %bb.m ] ; 7 uses
  %.8388.i.idx.i = phi i64 [ %.7387.i106.idx.i, %.loopexit158.thread.i ], [ %.0380.i.idx226.i, %bb.m ] ; 3 uses
  %.3377.i.idx.i = phi i64 [ %.7387.i106.add.i, %.loopexit158.thread.i ], [ %.0380.i.add.i, %bb.m ] ; 3 uses
  %.1365.i.i = phi i32 [ %.0364.i108.i, %.loopexit158.thread.i ], [ %i.ag, %bb.m ]
  %.7.i.i = phi i64 [ %.6.i.i, %.loopexit158.thread.i ], [ %i.as, %bb.m ] ; 3 uses
  %.8388.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.8388.i.idx.i ; 4 uses
  %.3377.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.3377.i.idx.i ; 2 uses
  %i.fx = add nsw i64 %i.l, -12
  %i.fy = icmp sgt i64 %.3377.i.idx.i, %i.fx
  br i1 %i.fy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %LZ4_wildCopy32.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.7.i.i ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.gb = icmp ugt ptr %i.fz, %i.ga
  br i1 %i.gb, label %bb.am, label %.preheader155.i

bb.am:                                            ; preds = %bb.al, %LZ4_wildCopy32.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.7.i.i
  %i.gd = icmp ugt ptr %i.gc, %i.k                ; 2 uses
  %i.ge = ptrtoint ptr %i.k to i64
  %i.gf = ptrtoint ptr %.6.i to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.8388.i.ptr.i, i64 %i.gg
  %.4378.i.i = select i1 %i.gd, ptr %i.gh, ptr %.3377.i.ptr.i ; 2 uses
  %i.gi = icmp ugt ptr %.4378.i.i, %i.m
  br i1 %i.gi, label %.thread124.i, label %bb.an

.thread124.i:                                     ; preds = %bb.am
  %gepdiff153.i = sub nsw i64 %i.l, %.8388.i.idx.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.ptr.i, ptr nonnull align 1 %.6.i, i64 %gepdiff153.i, i1 false)
  br label %bb.bb

bb.an:                                            ; preds = %bb.am
  %.8.i.i = select i1 %i.gd, i64 %i.gg, i64 %.7.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.ptr.i, ptr nonnull align 1 %.6.i, i64 %.8.i.i, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.8.i.i ; 2 uses
  %.8388.i.add.i = add nsw i64 %.8.i.i, %.8388.i.idx.i ; 2 uses
  %.ptr147.i = getelementptr inbounds i8, ptr %1, i64 %.8388.i.add.i
  %i.gk = icmp ne ptr %.4378.i.i, %i.m
  %i.gl = getelementptr inbounds i8, ptr %i.k, i64 -2
  %.not442.i.i = icmp ult ptr %i.gj, %i.gl
  %or.cond460.i.i = select i1 %i.gk, i1 %.not442.i.i, i1 false
  br i1 %or.cond460.i.i, label %LZ4_wildCopy8.exit13.i, label %bb.bb

.preheader155.i:                                  ; preds = %bb.al, %.preheader155.i
  %.09.i11.i = phi ptr [ %i.gn, %.preheader155.i ], [ %.8388.i.ptr.i, %bb.al ] ; 2 uses
  %.0.i12.i = phi ptr [ %i.go, %.preheader155.i ], [ %.6.i, %bb.al ] ; 2 uses
  %i.gm = load i64, ptr %.0.i12.i, align 1
  store i64 %i.gm, ptr %.09.i11.i, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.09.i11.i, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 8
  %i.gp = icmp ult ptr %i.gn, %.3377.i.ptr.i
  br i1 %i.gp, label %.preheader155.i, label %LZ4_wildCopy8.exit13.i, !llvm.loop !1

LZ4_wildCopy8.exit13.i:                           ; preds = %.preheader155.i, %bb.an
  %.7.i = phi ptr [ %i.gj, %bb.an ], [ %i.fz, %.preheader155.i ] ; 2 uses
  %.9389.i.idx.i = phi i64 [ %.8388.i.add.i, %bb.an ], [ %.3377.i.idx.i, %.preheader155.i ] ; 2 uses
  %.val40.i = load i16, ptr %.7.i, align 1, !tbaa !30
  %i.gq = zext i16 %.val40.i to i64               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.7.i, i64 2
  %.9389.i.add.i = sub nsw i64 %.9389.i.idx.i, %i.gq
  %i.gs = and i32 %.1365.i.i, 15
  %i.gt = zext nneg i32 %i.gs to i64
  br label %.loopexit159.i

.loopexit159.i:                                   ; preds = %bb.ah, %LZ4_wildCopy8.exit13.i
  %.8.i = phi ptr [ %i.gr, %LZ4_wildCopy8.exit13.i ], [ %i.er, %bb.ah ] ; 5 uses
  %.10390.i.idx.i = phi i64 [ %.9389.i.idx.i, %LZ4_wildCopy8.exit13.i ], [ %.6386.i.add.i, %bb.ah ] ; 2 uses
  %.0368.i.idx.i = phi i64 [ %.9389.i.add.i, %LZ4_wildCopy8.exit13.i ], [ %.add.i, %bb.ah ]
  %.0366.i.i = phi i64 [ %i.gq, %LZ4_wildCopy8.exit13.i ], [ %i.eq, %bb.ah ]
  %.10.i.i = phi i64 [ %i.gt, %LZ4_wildCopy8.exit13.i ], [ %i.ep, %bb.ah ] ; 2 uses
  %.10390.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.10390.i.idx.i
  %i.gu = icmp eq i64 %.10.i.i, 15
  br i1 %i.gu, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.loopexit159.i
  %i.gv = getelementptr inbounds i8, ptr %i.k, i64 -6 ; 3 uses
  %.not.i28.i = icmp ult ptr %.8.i, %i.gv
  br i1 %.not.i28.i, label %bb.ap, label %LZ4_wildCopy32.exit.thread.i, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.gw = load i8, ptr %.8.i, align 1, !tbaa !15  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not21.i30.i = icmp eq i8 %i.gw, -1
  br i1 %.not21.i30.i, label %.preheader154.i.preheader, label %bb.aq, !prof !27

.preheader154.i.preheader:                        ; preds = %bb.ap
  %.not22.i32.i719 = icmp ult ptr %i.gx, %i.gv
  br i1 %.not22.i32.i719, label %.lr.ph722, label %LZ4_wildCopy32.exit.thread.i, !prof !35

bb.aq:                                            ; preds = %bb.ap
  %i.gy = zext i8 %i.gw to i64
  br label %read_variable_length.exit33.i

.preheader154.i:                                  ; preds = %.lr.ph722
  %.not22.i32.i = icmp ult ptr %i.hb, %i.gv
  br i1 %.not22.i32.i, label %.lr.ph722, label %LZ4_wildCopy32.exit.thread.i, !prof !36, !llvm.loop !3

.lr.ph722:                                        ; preds = %.preheader154.i.preheader, %.preheader154.i
  %.0.i31.i721 = phi i64 [ %i.hc, %.preheader154.i ], [ 255, %.preheader154.i.preheader ]
  %.19.i720 = phi ptr [ %i.hb, %.preheader154.i ], [ %i.gx, %.preheader154.i.preheader ] ; 2 uses
  %i.gz = load i8, ptr %.19.i720, align 1, !tbaa !15 ; 2 uses
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %.19.i720, i64 1 ; 4 uses
  %i.hc = add i64 %.0.i31.i721, %i.ha             ; 2 uses
  %i.hd = icmp eq i8 %i.gz, -1
  br i1 %i.hd, label %.preheader154.i, label %read_variable_length.exit33.i, !llvm.loop !3

read_variable_length.exit33.i:                    ; preds = %.lr.ph722, %bb.aq
  %.20.i = phi ptr [ %i.gx, %bb.aq ], [ %i.hb, %.lr.ph722 ] ; 2 uses
  %.016.i29.i = phi i64 [ %i.gy, %bb.aq ], [ %i.hc, %.lr.ph722 ] ; 2 uses
  %i.he = icmp ne i64 %.016.i29.i, -1
  %i.hf = add i64 %.016.i29.i, 15                 ; 2 uses
  %i.hg = ptrtoint ptr %.10390.i.ptr.i to i64
  %i.hh = xor i64 %i.hg, -1
  %i.hi = icmp ule i64 %i.hf, %i.hh
  %.not140.i = select i1 %i.he, i1 %i.hi, i1 false
  br i1 %.not140.i, label %bb.ar, label %LZ4_wildCopy32.exit.thread.i

bb.ar:                                            ; preds = %read_variable_length.exit33.i, %.loopexit159.i
  %.9.i = phi ptr [ %.20.i, %read_variable_length.exit33.i ], [ %.8.i, %.loopexit159.i ]
  %.12.i.i = phi i64 [ %i.hf, %read_variable_length.exit33.i ], [ %.10.i.i, %.loopexit159.i ]
  %i.hj = add i64 %.12.i.i, 4
  br label %.loopexit171.i

.loopexit171.i:                                   ; preds = %bb.s, %bb.r, %bb.ar
  %.2.i = phi ptr [ %.9.i, %bb.ar ], [ %i.bg, %bb.s ], [ %.1691.i, %bb.r ] ; 4 uses
  %.11391.i.idx.i = phi i64 [ %.10390.i.idx.i, %bb.ar ], [ %.2382.i.idx.i, %bb.r ], [ %.2382.i.idx.i, %bb.s ] ; 8 uses
  %.1369.i.idx.i = phi i64 [ %.0368.i.idx.i, %bb.ar ], [ %.2382.i.add.i, %bb.r ], [ %.2382.i.add.i, %bb.s ] ; 4 uses
  %.1367.i.i = phi i64 [ %.0366.i.i, %bb.ar ], [ %i.bf, %bb.r ], [ %i.bf, %bb.s ] ; 3 uses
  %.13.i.i = phi i64 [ %i.hj, %bb.ar ], [ %i.bx, %bb.s ], [ %i.bs, %bb.r ] ; 3 uses
  %.11391.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.idx.i ; 15 uses
  %.1369.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.1369.i.idx.i ; 13 uses
  %i.hk = icmp slt i64 %.1369.i.idx.i, -65536
  br i1 %i.hk, label %LZ4_wildCopy32.exit.thread.i, label %bb.as, !prof !43

bb.as:                                            ; preds = %.loopexit171.i
  %.11391.i.add.i = add nsw i64 %.13.i.i, %.11391.i.idx.i ; 4 uses
  %.ptr150.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add.i
  %i.hl = add nsw i64 %i.l, -12
  %i.hm = icmp sgt i64 %.11391.i.add.i, %i.hl
  br i1 %i.hm, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %gepdiff.i = sub nsw i64 %i.l, %.11391.i.idx.i
  %i.hn = tail call i64 @llvm.umin.i64(i64 %.13.i.i, i64 %gepdiff.i) ; 5 uses
  %.11391.i.add143.i = add nsw i64 %i.hn, %.11391.i.idx.i ; 3 uses
  %.ptr151.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add143.i ; 2 uses
  %i.ho = add nsw i64 %i.hn, %.1369.i.idx.i
  %i.hp = icmp sgt i64 %i.ho, %.11391.i.idx.i
  br i1 %i.hp, label %.preheader.i, label %bb.au

.preheader.i:                                     ; preds = %bb.at
  %i.hq = icmp sgt i64 %i.hn, 0
  br i1 %i.hq, label %iter.check794, label %.loopexit.i

iter.check794:                                    ; preds = %.preheader.i
  %i.hr = add i64 %.11391.i.idx.i, %i.q           ; 2 uses
  %i.hs = add i64 %i.hr, %i.hn
  %i.ht = add i64 %i.hr, 1
  %umax773 = tail call i64 @llvm.umax.i64(i64 %i.hs, i64 %i.ht)
  %i.hu = add i64 %.11391.i.idx.i, %i.q
  %i.hv = sub i64 %umax773, %i.hu                 ; 7 uses
  %min.iters.check775 = icmp ult i64 %i.hv, 8
  %i.hw = sub i64 %.1369.i.idx.i, %.11391.i.idx.i
  %diff.check777 = icmp ugt i64 %i.hw, -32
  %or.cond = select i1 %min.iters.check775, i1 true, i1 %diff.check777
  br i1 %or.cond, label %.lr.ph242.i.preheader, label %vector.main.loop.iter.check778

vector.main.loop.iter.check778:                   ; preds = %iter.check794
  %min.iters.check779 = icmp ult i64 %i.hv, 32
  br i1 %min.iters.check779, label %vec.epilog.ph798, label %vector.ph780

vector.ph780:                                     ; preds = %vector.main.loop.iter.check778
  %i.hx = and i64 %i.hv, 24
  %n.vec781 = and i64 %i.hv, -32                  ; 5 uses
  %i.hy = getelementptr i8, ptr %.1369.i.ptr.i, i64 %n.vec781
  %i.hz = getelementptr i8, ptr %.11391.i.ptr.i, i64 %n.vec781
  br label %vector.body782

vector.body782:                                   ; preds = %vector.ph780, %vector.body782
  %index783 = phi i64 [ 0, %vector.ph780 ], [ %index.next788, %vector.body782 ] ; 3 uses
  %next.gep784 = getelementptr i8, ptr %.1369.i.ptr.i, i64 %index783 ; 2 uses
  %next.gep785 = getelementptr i8, ptr %.11391.i.ptr.i, i64 %index783 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep784, i64 16
  %wide.load786 = load <16 x i8>, ptr %next.gep784, align 1, !tbaa !15
  %wide.load787 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !15
  %i.ib = getelementptr i8, ptr %next.gep785, i64 16
  store <16 x i8> %wide.load786, ptr %next.gep785, align 1, !tbaa !15
  store <16 x i8> %wide.load787, ptr %i.ib, align 1, !tbaa !15
  %index.next788 = add nuw i64 %index783, 32      ; 2 uses
  %i.ic = icmp eq i64 %index.next788, %n.vec781
  br i1 %i.ic, label %middle.block789, label %vector.body782, !llvm.loop !133

middle.block789:                                  ; preds = %vector.body782
  %cmp.n790 = icmp eq i64 %i.hv, %n.vec781
  br i1 %cmp.n790, label %.loopexit.i, label %vec.epilog.iter.check796

vec.epilog.iter.check796:                         ; preds = %middle.block789
  %min.epilog.iters.check797 = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check797, label %.lr.ph242.i.preheader, label %vec.epilog.ph798, !prof !45

vec.epilog.ph798:                                 ; preds = %vector.main.loop.iter.check778, %vec.epilog.iter.check796
  %vec.epilog.resume.val791 = phi i64 [ %n.vec781, %vec.epilog.iter.check796 ], [ 0, %vector.main.loop.iter.check778 ]
  %n.vec799 = and i64 %i.hv, -8                   ; 4 uses
  %i.id = getelementptr i8, ptr %.1369.i.ptr.i, i64 %n.vec799
  %i.ie = getelementptr i8, ptr %.11391.i.ptr.i, i64 %n.vec799
  br label %vec.epilog.vector.body800

vec.epilog.vector.body800:                        ; preds = %vec.epilog.vector.body800, %vec.epilog.ph798
  %index801 = phi i64 [ %vec.epilog.resume.val791, %vec.epilog.ph798 ], [ %index.next805, %vec.epilog.vector.body800 ] ; 3 uses
  %next.gep802 = getelementptr i8, ptr %.1369.i.ptr.i, i64 %index801
  %next.gep803 = getelementptr i8, ptr %.11391.i.ptr.i, i64 %index801
  %wide.load804 = load <8 x i8>, ptr %next.gep802, align 1, !tbaa !15
  store <8 x i8> %wide.load804, ptr %next.gep803, align 1, !tbaa !15
  %index.next805 = add nuw i64 %index801, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next805, %n.vec799
  br i1 %i.if, label %vec.epilog.middle.block806, label %vec.epilog.vector.body800, !llvm.loop !134

vec.epilog.middle.block806:                       ; preds = %vec.epilog.vector.body800
  %cmp.n807 = icmp eq i64 %i.hv, %n.vec799
  br i1 %cmp.n807, label %.loopexit.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %iter.check794, %vec.epilog.iter.check796, %vec.epilog.middle.block806
  %.2370.i241.i.ph = phi ptr [ %.1369.i.ptr.i, %iter.check794 ], [ %i.hy, %vec.epilog.iter.check796 ], [ %i.id, %vec.epilog.middle.block806 ]
  %.15.i240.i.ph = phi ptr [ %.11391.i.ptr.i, %iter.check794 ], [ %i.hz, %vec.epilog.iter.check796 ], [ %i.ie, %vec.epilog.middle.block806 ]
  br label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.2370.i241.i = phi ptr [ %i.ig, %.lr.ph242.i ], [ %.2370.i241.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.15.i240.i = phi ptr [ %i.ii, %.lr.ph242.i ], [ %.15.i240.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.2370.i241.i, i64 1
  %i.ih = load i8, ptr %.2370.i241.i, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %.15.i240.i, i64 1 ; 2 uses
  store i8 %i.ih, ptr %.15.i240.i, align 1, !tbaa !15
  %i.ij = icmp ult ptr %i.ii, %.ptr151.i
  br i1 %i.ij, label %.lr.ph242.i, label %.loopexit.i, !llvm.loop !135

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.ptr.i, ptr align 1 %.1369.i.ptr.i, i64 %i.hn, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph242.i, %middle.block789, %vec.epilog.middle.block806, %bb.au, %.preheader.i
  %i.ik = icmp eq i64 %.11391.i.add143.i, %i.l
  br i1 %i.ik, label %bb.bb, label %.preheader157.i

bb.av:                                            ; preds = %bb.as
  %i.il = icmp ult i64 %.1367.i.i, 8
  br i1 %i.il, label %bb.aw, label %bb.ax, !prof !27

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %.11391.i.ptr.i, align 1, !tbaa !24
  %i.im = load i8, ptr %.1369.i.ptr.i, align 1, !tbaa !15
  store i8 %i.im, ptr %.11391.i.ptr.i, align 1, !tbaa !15
  %i.in = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 1
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 2
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 3
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !15
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !37
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 4
  %i.jb = load i32, ptr %i.iz, align 1
  store i32 %i.jb, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !37
  %i.je = sext i32 %i.jd to i64
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.iz, i64 %i.jf
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jh = load i64, ptr %.1369.i.ptr.i, align 1
  store i64 %i.jh, ptr %.11391.i.ptr.i, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.3371.i.i = phi ptr [ %i.jg, %bb.aw ], [ %i.ji, %bb.ax ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 8
  %i.jk = load i64, ptr %.3371.i.i, align 1
  store i64 %i.jk, ptr %i.jj, align 1
  %i.jl = icmp ugt i64 %.13.i.i, 16
  br i1 %i.jl, label %bb.az, label %.preheader157.i

bb.az:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.09.i8.i = phi ptr [ %i.jm, %bb.az ], [ %i.jo, %bb.ba ] ; 2 uses
  %.3371.i.pn.i = phi ptr [ %.3371.i.i, %bb.az ], [ %.0.i9.i, %bb.ba ]
  %.0.i9.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i, i64 8 ; 2 uses
  %i.jn = load i64, ptr %.0.i9.i, align 1
  store i64 %i.jn, ptr %.09.i8.i, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i8.i, i64 8 ; 2 uses
  %i.jp = icmp ult ptr %i.jo, %.ptr150.i
  br i1 %i.jp, label %bb.ba, label %.preheader157.i, !llvm.loop !1

.preheader157.i:                                  ; preds = %bb.ba, %bb.ay, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %bb.ay ], [ %.2.i, %bb.ba ] ; 2 uses
  %.6386.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.11391.i.add143.i, %.loopexit.i ], [ %.11391.i.add.i, %bb.ay ], [ %.11391.i.add.i, %bb.ba ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.jr = load i8, ptr %.3.ph.i, align 1, !tbaa !15
  %i.js = zext i8 %i.jr to i32                    ; 3 uses
  %i.jt = lshr i32 %i.js, 4                       ; 2 uses
  %.not439.i233.i = icmp eq i32 %i.jt, 15
  br i1 %.not439.i233.i, label %.thread100.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader157.i
  %i.ju = add nsw i64 %i.l, -32
  br label %bb.ag

end_hunk_7
begin_hunk_8_@LZ4_decompress_safe_partial_usingDict:bb.a
  %i.qc = load i64, ptr %i.pz, align 1
  store i64 %i.qc, ptr %i.ps, align 1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qf = load i64, ptr %i.qe, align 1
  store i64 %i.qf, ptr %i.qd, align 1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qi = load i16, ptr %i.qh, align 1
  store i16 %i.qi, ptr %i.qg, align 1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pt, i64 3 ; 2 uses
  %i.qm = load i8, ptr %i.px, align 1, !tbaa !15
  %i.qn = zext i8 %i.qm to i32                    ; 3 uses
  %i.qo = lshr i32 %i.qn, 4                       ; 2 uses
  %.not439.i.i68 = icmp eq i32 %i.qo, 15
  br i1 %.not439.i.i68, label %.thread101.i, label %.lr.ph221.i

.loopexit142.i:                                   ; preds = %.backedge.i75, %.preheader152.i
  %.4.i77 = phi ptr [ %i.ks, %.preheader152.i ], [ %i.nk, %.backedge.i75 ] ; 2 uses
  %.7387.i.i = phi ptr [ %1, %.preheader152.i ], [ %.0380.i.be.i, %.backedge.i75 ] ; 2 uses
  %.0364.i.i78 = phi i32 [ %i.ku, %.preheader152.i ], [ %i.nm, %.backedge.i75 ] ; 2 uses
  %.4362.i.i79 = phi i64 [ %i.kw, %.preheader152.i ], [ %i.no, %.backedge.i75 ] ; 2 uses
  %i.qp = icmp eq i64 %.4362.i.i79, 15
  br i1 %i.qp, label %.thread101.i, label %.loopexit142.thread.i

.thread101.i:                                     ; preds = %bb.cf, %.preheader141.i, %.loopexit142.i
  %.0364.i110.i = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %i.vk, %.preheader141.i ], [ %i.qn, %bb.cf ]
  %.7387.i108.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.6386.i.ph.i, %.preheader141.i ], [ %i.qk, %bb.cf ] ; 2 uses
  %.4106.i = phi ptr [ %.4.i77, %.loopexit142.i ], [ %i.vi, %.preheader141.i ], [ %i.ql, %bb.cf ] ; 4 uses
  %i.qq = getelementptr inbounds i8, ptr %i.kh, i64 -15 ; 3 uses
  %.not.i23.i = icmp ult ptr %.4106.i, %i.qq
  br i1 %.not.i23.i, label %bb.cg, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cg:                                            ; preds = %.thread101.i
  %i.qr = load i8, ptr %.4106.i, align 1, !tbaa !15 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.4106.i, i64 1 ; 4 uses
  %.not21.i25.i = icmp eq i8 %i.qr, -1
  br i1 %.not21.i25.i, label %.preheader140.i.preheader, label %read_variable_length.exit28.thread114.i, !prof !27

.preheader140.i.preheader:                        ; preds = %bb.cg
  %.not22.i27.i692 = icmp ult ptr %i.qs, %i.qq
  br i1 %.not22.i27.i692, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

read_variable_length.exit28.thread114.i:          ; preds = %bb.cg
  %i.qt = zext i8 %i.qr to i64
  br label %bb.ch

.preheader140.i:                                  ; preds = %.lr.ph695
  %.not22.i27.i = icmp ult ptr %i.qw, %i.qq
  br i1 %.not22.i27.i, label %.lr.ph695, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph695:                                        ; preds = %.preheader140.i.preheader, %.preheader140.i
  %.0.i26.i694 = phi i64 [ %i.qx, %.preheader140.i ], [ 255, %.preheader140.i.preheader ]
  %.17.i69693 = phi ptr [ %i.qw, %.preheader140.i ], [ %i.qs, %.preheader140.i.preheader ] ; 2 uses
  %i.qu = load i8, ptr %.17.i69693, align 1, !tbaa !15 ; 2 uses
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %.17.i69693, i64 1 ; 5 uses
  %i.qx = add i64 %.0.i26.i694, %i.qv             ; 3 uses
  %i.qy = icmp eq i8 %i.qu, -1
  br i1 %i.qy, label %.preheader140.i, label %read_variable_length.exit28.i, !llvm.loop !3

read_variable_length.exit28.i:                    ; preds = %.lr.ph695
  %i.qz = icmp eq i64 %i.qx, -1
  br i1 %i.qz, label %LZ4_wildCopy32.exit.thread.i54, label %bb.ch

bb.ch:                                            ; preds = %read_variable_length.exit28.i, %read_variable_length.exit28.thread114.i
  %.016.i24118.i = phi i64 [ %i.qt, %read_variable_length.exit28.thread114.i ], [ %i.qx, %read_variable_length.exit28.i ]
  %.18117.i = phi ptr [ %i.qs, %read_variable_length.exit28.thread114.i ], [ %i.qw, %read_variable_length.exit28.i ] ; 3 uses
  %i.ra = add i64 %.016.i24118.i, 15              ; 3 uses
  %i.rb = ptrtoint ptr %.7387.i108.i to i64
  %i.rc = xor i64 %i.rb, -1
  %i.rd = icmp ugt i64 %i.ra, %i.rc
  %i.re = ptrtoint ptr %.18117.i to i64
  %i.rf = xor i64 %i.re, -1
  %i.rg = icmp ugt i64 %i.ra, %i.rf
  %or.cond133.i = select i1 %i.rd, i1 true, i1 %i.rg, !prof !44
  br i1 %or.cond133.i, label %LZ4_wildCopy32.exit.thread.i54, label %.loopexit142.thread.i, !prof !44

.loopexit142.thread.i:                            ; preds = %.lr.ph221.i, %bb.ch, %.loopexit142.i
  %.0364.i109.i40 = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %.0364.i110.i, %bb.ch ], [ %i.pm, %.lr.ph221.i ]
  %.7387.i107.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.7387.i108.i, %bb.ch ], [ %.6386.i220.i, %.lr.ph221.i ] ; 2 uses
  %.5.i41 = phi ptr [ %.4.i77, %.loopexit142.i ], [ %.18117.i, %bb.ch ], [ %i.pn, %.lr.ph221.i ]
  %.6.i.i42 = phi i64 [ %.4362.i.i79, %.loopexit142.i ], [ %i.ra, %bb.ch ], [ %i.po, %.lr.ph221.i ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.7387.i107.i, i64 %.6.i.i42
  br label %LZ4_wildCopy32.exit.i43

LZ4_wildCopy32.exit.i43:                          ; preds = %bb.bk, %.loopexit142.thread.i
  %.6.i44 = phi ptr [ %.5.i41, %.loopexit142.thread.i ], [ %.1473.i, %bb.bk ] ; 7 uses
  %.8388.i.i = phi ptr [ %.7387.i107.i, %.loopexit142.thread.i ], [ %.0380.i214.i, %bb.bk ] ; 7 uses
  %.3377.i.i = phi ptr [ %i.rh, %.loopexit142.thread.i ], [ %i.lr, %bb.bk ] ; 4 uses
  %.1365.i.i45 = phi i32 [ %.0364.i109.i40, %.loopexit142.thread.i ], [ %i.le, %bb.bk ]
  %.7.i.i46 = phi i64 [ %.6.i.i42, %.loopexit142.thread.i ], [ %i.lq, %bb.bk ] ; 3 uses
  %i.ri = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.rj = icmp ugt ptr %.3377.i.i, %i.ri
  br i1 %i.rj, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy32.exit.i43
  %i.rk = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46 ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.kh, i64 -8
  %i.rm = icmp ugt ptr %i.rk, %i.rl
  br i1 %i.rm, label %bb.cj, label %.preheader139.i

bb.cj:                                            ; preds = %bb.ci, %LZ4_wildCopy32.exit.i43
  %i.rn = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46
  %i.ro = icmp ugt ptr %i.rn, %i.kh               ; 2 uses
  %i.rp = ptrtoint ptr %i.kh to i64
  %i.rq = ptrtoint ptr %.6.i44 to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rr
  %.4378.i.i61 = select i1 %i.ro, ptr %i.rs, ptr %.3377.i.i ; 2 uses
  %i.rt = icmp ugt ptr %.4378.i.i61, %i.kj
  br i1 %i.rt, label %.thread125.i, label %bb.ck

.thread125.i:                                     ; preds = %bb.cj
  %i.ru = ptrtoint ptr %.8388.i.i to i64
  %i.rv = sub i64 %i.ko, %i.ru                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %i.rv, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rv
  br label %bb.cy

bb.ck:                                            ; preds = %bb.cj
  %.8.i.i62 = select i1 %i.ro, i64 %i.rr, i64 %.7.i.i46 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %.8.i.i62, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.8.i.i62 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.8.i.i62 ; 2 uses
  %i.rz = icmp ne ptr %.4378.i.i61, %i.kj
  %i.sa = getelementptr inbounds i8, ptr %i.kh, i64 -2
  %.not442.i.i63 = icmp ult ptr %i.rx, %i.sa
  %or.cond460.i.i64 = select i1 %i.rz, i1 %.not442.i.i63, i1 false
  br i1 %or.cond460.i.i64, label %LZ4_wildCopy8.exit14.i, label %bb.cy

.preheader139.i:                                  ; preds = %bb.ci, %.preheader139.i
  %.09.i12.i = phi ptr [ %i.sc, %.preheader139.i ], [ %.8388.i.i, %bb.ci ] ; 2 uses
  %.0.i13.i = phi ptr [ %i.sd, %.preheader139.i ], [ %.6.i44, %bb.ci ] ; 2 uses
  %i.sb = load i64, ptr %.0.i13.i, align 1
  store i64 %i.sb, ptr %.09.i12.i, align 1
  %i.sc = getelementptr inbounds nuw i8, ptr %.09.i12.i, i64 8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 8
  %i.se = icmp ult ptr %i.sc, %.3377.i.i
  br i1 %i.se, label %.preheader139.i, label %LZ4_wildCopy8.exit14.i, !llvm.loop !1

LZ4_wildCopy8.exit14.i:                           ; preds = %.preheader139.i, %bb.ck
  %.7.i47 = phi ptr [ %i.rx, %bb.ck ], [ %i.rk, %.preheader139.i ] ; 2 uses
  %.9389.i.i = phi ptr [ %i.ry, %bb.ck ], [ %.3377.i.i, %.preheader139.i ] ; 2 uses
  %.val41.i48 = load i16, ptr %.7.i47, align 1, !tbaa !30
  %i.sf = zext i16 %.val41.i48 to i64             ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.7.i47, i64 2
  %i.sh = sub nsw i64 0, %i.sf
  %i.si = getelementptr inbounds i8, ptr %.9389.i.i, i64 %i.sh
  %i.sj = and i32 %.1365.i.i45, 15
  %i.sk = zext nneg i32 %i.sj to i64
  br label %.loopexit143.i

.loopexit143.i:                                   ; preds = %bb.ce, %LZ4_wildCopy8.exit14.i
  %.8.i49 = phi ptr [ %i.sg, %LZ4_wildCopy8.exit14.i ], [ %i.px, %bb.ce ] ; 5 uses
  %.10390.i.i = phi ptr [ %.9389.i.i, %LZ4_wildCopy8.exit14.i ], [ %i.ps, %bb.ce ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.si, %LZ4_wildCopy8.exit14.i ], [ %i.pz, %bb.ce ]
  %.0366.i.i50 = phi i64 [ %i.sf, %LZ4_wildCopy8.exit14.i ], [ %i.pw, %bb.ce ]
  %.10.i.i51 = phi i64 [ %i.sk, %LZ4_wildCopy8.exit14.i ], [ %i.pv, %bb.ce ] ; 2 uses
  %i.sl = icmp eq i64 %.10.i.i51, 15
  br i1 %i.sl, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.loopexit143.i
  %i.sm = getelementptr inbounds i8, ptr %i.kh, i64 -6 ; 3 uses
  %.not.i29.i = icmp ult ptr %.8.i49, %i.sm
  br i1 %.not.i29.i, label %bb.cm, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cm:                                            ; preds = %bb.cl
  %i.sn = load i8, ptr %.8.i49, align 1, !tbaa !15 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.8.i49, i64 1 ; 4 uses
  %.not21.i31.i = icmp eq i8 %i.sn, -1
  br i1 %.not21.i31.i, label %.preheader138.i.preheader, label %bb.cn, !prof !27

.preheader138.i.preheader:                        ; preds = %bb.cm
  %.not22.i33.i697 = icmp ult ptr %i.so, %i.sm
  br i1 %.not22.i33.i697, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

bb.cn:                                            ; preds = %bb.cm
  %i.sp = zext i8 %i.sn to i64
  br label %read_variable_length.exit34.i

.preheader138.i:                                  ; preds = %.lr.ph700
  %.not22.i33.i = icmp ult ptr %i.ss, %i.sm
  br i1 %.not22.i33.i, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph700:                                        ; preds = %.preheader138.i.preheader, %.preheader138.i
  %.0.i32.i699 = phi i64 [ %i.st, %.preheader138.i ], [ 255, %.preheader138.i.preheader ]
  %.19.i60698 = phi ptr [ %i.ss, %.preheader138.i ], [ %i.so, %.preheader138.i.preheader ] ; 2 uses
  %i.sq = load i8, ptr %.19.i60698, align 1, !tbaa !15 ; 2 uses
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %.19.i60698, i64 1 ; 4 uses
  %i.st = add i64 %.0.i32.i699, %i.sr             ; 2 uses
  %i.su = icmp eq i8 %i.sq, -1
  br i1 %i.su, label %.preheader138.i, label %read_variable_length.exit34.i, !llvm.loop !3

read_variable_length.exit34.i:                    ; preds = %.lr.ph700, %bb.cn
  %.20.i58 = phi ptr [ %i.so, %bb.cn ], [ %i.ss, %.lr.ph700 ] ; 2 uses
  %.016.i30.i = phi i64 [ %i.sp, %bb.cn ], [ %i.st, %.lr.ph700 ] ; 2 uses
  %i.sv = icmp ne i64 %.016.i30.i, -1
  %i.sw = add i64 %.016.i30.i, 15                 ; 2 uses
  %i.sx = ptrtoint ptr %.10390.i.i to i64
  %i.sy = xor i64 %i.sx, -1
  %i.sz = icmp ule i64 %i.sw, %i.sy
  %.not137.i = select i1 %i.sv, i1 %i.sz, i1 false
  br i1 %.not137.i, label %bb.co, label %LZ4_wildCopy32.exit.thread.i54

bb.co:                                            ; preds = %read_variable_length.exit34.i, %.loopexit143.i
  %.9.i52 = phi ptr [ %.20.i58, %read_variable_length.exit34.i ], [ %.8.i49, %.loopexit143.i ]
  %.12.i.i53 = phi i64 [ %i.sw, %read_variable_length.exit34.i ], [ %.10.i.i51, %.loopexit143.i ]
  %i.ta = add i64 %.12.i.i53, 4
  br label %.loopexit155.i

.loopexit155.i:                                   ; preds = %bb.bq, %bb.bp, %bb.co
  %.2.i34 = phi ptr [ %.9.i52, %bb.co ], [ %i.mg, %bb.bq ], [ %.1692.i, %bb.bp ] ; 4 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.co ], [ %.2382.i.i, %bb.bp ], [ %.2382.i.i, %bb.bq ] ; 19 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.co ], [ %i.mi, %bb.bp ], [ %i.mi, %bb.bq ] ; 16 uses
  %.1367.i.i35 = phi i64 [ %.0366.i.i50, %bb.co ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bq ] ; 3 uses
  %.13.i.i36 = phi i64 [ %i.ta, %bb.co ], [ %i.mz, %bb.bq ], [ %i.mu, %bb.bp ] ; 3 uses
  %.1369.i.i729 = ptrtoaddr ptr %.1369.i.i to i64
  %i.tb = icmp ult ptr %.1369.i.i, %i.kd
  br i1 %i.tb, label %LZ4_wildCopy32.exit.thread.i54, label %bb.cp, !prof !43

bb.cp:                                            ; preds = %.loopexit155.i
  %i.tc = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i36 ; 4 uses
  %i.td = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.te = icmp ugt ptr %i.tc, %i.td
  br i1 %i.te, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.tf = ptrtoint ptr %.11391.i.i to i64         ; 5 uses
  %i.tg = sub i64 %i.ko, %i.tf
  %i.th = tail call i64 @llvm.umin.i64(i64 %.13.i.i36, i64 %i.tg) ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.th ; 3 uses
  %i.tk = icmp ugt ptr %i.ti, %.11391.i.i
  br i1 %i.tk, label %.preheader.i72, label %bb.cr

.preheader.i72:                                   ; preds = %bb.cq
  %.not.i = icmp eq i64 %i.th, 0
  br i1 %.not.i, label %.loopexit.i71, label %iter.check

iter.check:                                       ; preds = %.preheader.i72
  %i.tl = add i64 %i.th, %i.tf
  %i.tm = add i64 %i.tf, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tl, i64 %i.tm)
  %i.tn = sub i64 %umax, %i.tf                    ; 7 uses
  %min.iters.check731 = icmp ult i64 %i.tn, 8
  %i.to = sub i64 %.1369.i.i729, %i.tf
  %diff.check = icmp ugt i64 %i.to, -32
  %or.cond810 = or i1 %min.iters.check731, %diff.check
  br i1 %or.cond810, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check732 = icmp ult i64 %i.tn, 32
  br i1 %min.iters.check732, label %vec.epilog.ph, label %vector.ph733

vector.ph733:                                     ; preds = %vector.main.loop.iter.check
  %i.tp = and i64 %i.tn, 24
  %n.vec734 = and i64 %i.tn, -32                  ; 5 uses
  %i.tq = getelementptr i8, ptr %.1369.i.i, i64 %n.vec734
  %i.tr = getelementptr i8, ptr %.11391.i.i, i64 %n.vec734
  br label %vector.body735

vector.body735:                                   ; preds = %vector.ph733, %vector.body735
  %index736 = phi i64 [ 0, %vector.ph733 ], [ %index.next740, %vector.body735 ] ; 3 uses
  %next.gep737 = getelementptr i8, ptr %.1369.i.i, i64 %index736 ; 2 uses
  %next.gep738 = getelementptr i8, ptr %.11391.i.i, i64 %index736 ; 2 uses
  %i.ts = getelementptr i8, ptr %next.gep737, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep737, align 1, !tbaa !15
  %wide.load739 = load <16 x i8>, ptr %i.ts, align 1, !tbaa !15
  %i.tt = getelementptr i8, ptr %next.gep738, i64 16
  store <16 x i8> %wide.load, ptr %next.gep738, align 1, !tbaa !15
  store <16 x i8> %wide.load739, ptr %i.tt, align 1, !tbaa !15
  %index.next740 = add nuw i64 %index736, 32      ; 2 uses
  %i.tu = icmp eq i64 %index.next740, %n.vec734
  br i1 %i.tu, label %middle.block741, label %vector.body735, !llvm.loop !138

middle.block741:                                  ; preds = %vector.body735
  %cmp.n742 = icmp eq i64 %i.tn, %n.vec734
  br i1 %cmp.n742, label %.loopexit.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block741
  %min.epilog.iters.check = icmp eq i64 %i.tp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph227.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec734, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec745 = and i64 %i.tn, -8                   ; 4 uses
  %i.tv = getelementptr i8, ptr %.1369.i.i, i64 %n.vec745
  %i.tw = getelementptr i8, ptr %.11391.i.i, i64 %n.vec745
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next750, %vec.epilog.vector.body ] ; 3 uses
  %next.gep747 = getelementptr i8, ptr %.1369.i.i, i64 %index746
  %next.gep748 = getelementptr i8, ptr %.11391.i.i, i64 %index746
  %wide.load749 = load <8 x i8>, ptr %next.gep747, align 1, !tbaa !15
  store <8 x i8> %wide.load749, ptr %next.gep748, align 1, !tbaa !15
  %index.next750 = add nuw i64 %index746, 8       ; 2 uses
  %i.tx = icmp eq i64 %index.next750, %n.vec745
  br i1 %i.tx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n751 = icmp eq i64 %i.tn, %n.vec745
  br i1 %cmp.n751, label %.loopexit.i71, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i226.i.ph = phi ptr [ %.1369.i.i, %iter.check ], [ %i.tq, %vec.epilog.iter.check ], [ %i.tv, %vec.epilog.middle.block ]
  %.15.i225.i.ph = phi ptr [ %.11391.i.i, %iter.check ], [ %i.tr, %vec.epilog.iter.check ], [ %i.tw, %vec.epilog.middle.block ]
  br label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i
  %.2370.i226.i = phi ptr [ %i.ty, %.lr.ph227.i ], [ %.2370.i226.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.15.i225.i = phi ptr [ %i.ua, %.lr.ph227.i ], [ %.15.i225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.2370.i226.i, i64 1
  %i.tz = load i8, ptr %.2370.i226.i, align 1, !tbaa !15
  %i.ua = getelementptr inbounds nuw i8, ptr %.15.i225.i, i64 1 ; 2 uses
  store i8 %i.tz, ptr %.15.i225.i, align 1, !tbaa !15
  %i.ub = icmp ult ptr %i.ua, %i.tj
  br i1 %i.ub, label %.lr.ph227.i, label %.loopexit.i71, !llvm.loop !140

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %.1369.i.i, i64 %i.th, i1 false)
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.lr.ph227.i, %middle.block741, %vec.epilog.middle.block, %bb.cr, %.preheader.i72
  %i.uc = icmp eq ptr %i.tj, %i.kj
  br i1 %i.uc, label %bb.cy, label %.preheader141.i

bb.cs:                                            ; preds = %bb.cp
  %i.ud = icmp ult i64 %.1367.i.i35, 8
  br i1 %i.ud, label %bb.ct, label %bb.cu, !prof !27

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !24
  %i.ue = load i8, ptr %.1369.i.i, align 1, !tbaa !15
  store i8 %i.ue, ptr %.11391.i.i, align 1, !tbaa !15
  %i.uf = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !15
  %i.uh = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.ug, ptr %i.uh, align 1, !tbaa !15
  %i.ui = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !15
  %i.uk = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.uj, ptr %i.uk, align 1, !tbaa !15
  %i.ul = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !15
  %i.un = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.um, ptr %i.un, align 1, !tbaa !15
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i35
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !37
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.uq ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.ut = load i32, ptr %i.ur, align 1
  store i32 %i.ut, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i35
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !37
  %i.uw = sext i32 %i.uv to i64
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = getelementptr inbounds i8, ptr %i.ur, i64 %i.ux
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.uz = load i64, ptr %.1369.i.i, align 1
  store i64 %i.uz, ptr %.11391.i.i, align 1
  %i.va = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3371.i.i37 = phi ptr [ %i.uy, %bb.ct ], [ %i.va, %bb.cu ] ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8
  %i.vc = load i64, ptr %.3371.i.i37, align 1
  store i64 %i.vc, ptr %i.vb, align 1
  %i.vd = icmp ugt i64 %.13.i.i36, 16
  br i1 %i.vd, label %bb.cw, label %.preheader141.i

bb.cw:                                            ; preds = %bb.cv
  %i.ve = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.09.i9.i = phi ptr [ %i.ve, %bb.cw ], [ %i.vg, %bb.cx ] ; 2 uses
  %.3371.i.pn.i70 = phi ptr [ %.3371.i.i37, %bb.cw ], [ %.0.i10.i, %bb.cx ]
  %.0.i10.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i70, i64 8 ; 2 uses
  %i.vf = load i64, ptr %.0.i10.i, align 1
  store i64 %i.vf, ptr %.09.i9.i, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %.09.i9.i, i64 8 ; 2 uses
  %i.vh = icmp ult ptr %i.vg, %i.tc
  br i1 %i.vh, label %bb.cx, label %.preheader141.i, !llvm.loop !1

.preheader141.i:                                  ; preds = %bb.cx, %bb.cv, %.loopexit.i71, %bb.bf
  %.3.ph.i38 = phi ptr [ %0, %bb.bf ], [ %.2.i34, %.loopexit.i71 ], [ %.2.i34, %bb.cv ], [ %.2.i34, %bb.cx ] ; 2 uses
  %.6386.i.ph.i = phi ptr [ %1, %bb.bf ], [ %i.tj, %.loopexit.i71 ], [ %i.tc, %bb.cv ], [ %i.tc, %bb.cx ] ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.3.ph.i38, i64 1 ; 2 uses
  %i.vj = load i8, ptr %.3.ph.i38, align 1, !tbaa !15
  %i.vk = zext i8 %i.vj to i32                    ; 3 uses
  %i.vl = lshr i32 %i.vk, 4                       ; 2 uses
  %.not439.i219.i = icmp eq i32 %i.vl, 15
  br i1 %.not439.i219.i, label %.thread101.i, label %.lr.ph221.i

bb.cy:                                            ; preds = %.loopexit.i71, %bb.ck, %.thread125.i
  %.18.i.i65 = phi ptr [ %i.kj, %.loopexit.i71 ], [ %i.ry, %bb.ck ], [ %i.rw, %.thread125.i ]
  %i.vm = ptrtoint ptr %.18.i.i65 to i64
  %i.vn = sub i64 %i.vm, %i.kp
  %i.vo = trunc i64 %i.vn to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i54:                   ; preds = %.thread97.i, %bb.bo, %read_variable_length.exit22.i, %bb.bm, %bb.bj, %read_variable_length.exit.i102, %bb.bh, %.preheader150.i.preheader, %.preheader147.i.preheader, %.preheader150.i, %.preheader147.i, %.preheader140.i, %.preheader138.i, %.preheader140.i.preheader, %.preheader138.i.preheader, %.loopexit155.i, %read_variable_length.exit34.i, %bb.cl, %bb.ch, %read_variable_length.exit28.i, %.thread101.i
end_hunk_8
