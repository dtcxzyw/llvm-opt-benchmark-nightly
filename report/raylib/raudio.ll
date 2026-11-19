Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@vorbis_decode_packet:bb.a

.get_bits.exit_crit_edge.i:                       ; preds = %bb.e
  %.pre.i = load i32, ptr %i.al, align 4
  br label %get_bits.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  store i32 0, ptr %i.al, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.bs = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !inline_history !65 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bs, -1
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.bu = shl i32 %i.bs, %i.bt
  %i.bv = load i32, ptr %i.al, align 4
  %i.bw = add i32 %i.bv, %i.bu                    ; 2 uses
  store i32 %i.bw, ptr %i.al, align 4
  %i.bx = add nsw i32 %i.bt, 8                    ; 2 uses
  store i32 %i.bx, ptr %i.ak, align 8
  %i.by = icmp slt i32 %i.bt, -7
  br i1 %i.by, label %bb.f, label %get_bits.exit.i

.critedge.i.i:                                    ; preds = %bb.f
  store i32 -1, ptr %i.ak, align 8
  br label %get_bits.exit.thread.i

get_bits.exit.i:                                  ; preds = %bb.g, %.get_bits.exit_crit_edge.i
  %i.bz = phi i32 [ %.pre.i, %.get_bits.exit_crit_edge.i ], [ %i.bw, %bb.g ] ; 2 uses
  %i.ca = phi i32 [ %i.bp, %.get_bits.exit_crit_edge.i ], [ %i.bx, %bb.g ]
  %i.cb = and i32 %i.bz, 1
  %i.cc = lshr i32 %i.bz, 1
  store i32 %i.cc, ptr %i.al, align 4
  %i.cd = add nsw i32 %i.ca, -1
  store i32 %i.cd, ptr %i.ak, align 8
  %.not396.i = icmp eq i32 %i.cb, 0
  br i1 %.not396.i, label %get_bits.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %get_bits.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 1588
  %i.cf = load i8, ptr %i.ce, align 4
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr @vorbis_decode_packet_rest.range_list, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4            ; 19 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv595.i.a
  %i.cl = load ptr, ptr %i.ck, align 8            ; 11 uses
  %i.cm = icmp slt i32 %i.cj, 0
  br i1 %i.cm, label %ilog.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = icmp samesign ult i32 %i.cj, 16384
  br i1 %i.cn, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.co = icmp samesign ult i32 %i.cj, 16
  br i1 %i.co, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = icmp samesign ult i32 %i.cj, 512
  br i1 %i.cp, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.cq = icmp samesign ult i32 %i.cj, 16777216   ; 2 uses
  %i.cr = icmp samesign ult i32 %i.cj, 524288     ; 2 uses
  %.726.i = select i1 %i.cr, i32 15, i32 20
  %i.cs = icmp samesign ult i32 %i.cj, 536870912  ; 2 uses
  %.727.i = select i1 %i.cs, i32 25, i32 30
  %.sink720.i = select i1 %i.cq, i32 %.726.i, i32 %.727.i ; 2 uses
  %i.ct = lshr i32 %i.cj, %.sink720.i
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = sext i8 %i.cw to i32
  %i.cy = add nsw i32 %.sink720.i, -1
  %i.cz = add nsw i32 %i.cy, %i.cx
  %i.da = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.cz)
  %i.db = trunc i32 %i.da to i16
  store i16 %i.db, ptr %i.cl, align 2
  br i1 %i.cq, label %bb.p, label %bb.s

ilog.exit.i:                                      ; preds = %bb.h
  %i.dc = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef -1)
  %i.dd = trunc i32 %i.dc to i16
  store i16 %i.dd, ptr %i.cl, align 2
  br label %ilog.exit411.i

bb.m:                                             ; preds = %bb.j
  %i.de = zext nneg i32 %i.cj to i64
  %i.df = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = sext i8 %i.dg to i32                    ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.di)
  %i.dk = trunc i32 %i.dj to i16
  store i16 %i.dk, ptr %i.cl, align 2
  br label %ilog.exit411.i

bb.n:                                             ; preds = %bb.k
  %i.dl = lshr i32 %i.cj, 5
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = sext i8 %i.do to i32
  %.reass100 = add nsw i32 %i.dp, 4
  %i.dq = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %.reass100)
  %i.dr = trunc i32 %i.dq to i16
  store i16 %i.dr, ptr %i.cl, align 2
  %i.ds = lshr i32 %i.cj, 5
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = sext i8 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, 5
  br label %ilog.exit411.i

bb.o:                                             ; preds = %bb.k
  %i.dy = lshr i32 %i.cj, 10
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i32
  %.reass = add nsw i32 %i.ec, 9
  %i.ed = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %.reass)
  %i.ee = trunc i32 %i.ed to i16
  store i16 %i.ee, ptr %i.cl, align 2
  %i.ef = lshr i32 %i.cj, 10
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add nsw i32 %i.ej, 10
  br label %ilog.exit411.i

bb.p:                                             ; preds = %bb.l
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = lshr i32 %i.cj, 15
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = sext i8 %i.eo to i32
  %i.eq = add nsw i32 %i.ep, 15
  br label %ilog.exit411.i

bb.r:                                             ; preds = %bb.p
  %i.er = lshr i32 %i.cj, 20
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = sext i8 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, 20
  br label %ilog.exit411.i

bb.s:                                             ; preds = %bb.l
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = lshr i32 %i.cj, 25
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, 25
  br label %ilog.exit411.i

bb.u:                                             ; preds = %bb.s
  %i.fd = lshr i32 %i.cj, 30
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, 30
  br label %ilog.exit411.i

ilog.exit411.i:                                   ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %ilog.exit.i
  %.0.i410.i = phi i32 [ %i.fi, %bb.u ], [ %i.dh, %bb.m ], [ %i.dx, %bb.n ], [ %i.ek, %bb.o ], [ %i.eq, %bb.q ], [ %i.ew, %bb.r ], [ %i.fc, %bb.t ], [ 0, %ilog.exit.i ]
  %i.fj = add nsw i32 %.0.i410.i, -1
  %i.fk = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %i.fj)
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %i.fl, ptr %i.fm, align 2
  %i.fn = load i8, ptr %i.bo, align 4
  %.not576.i = icmp eq i8 %i.fn, 0
  br i1 %.not576.i, label %._crit_edge542.i, label %.lr.ph541.i

.lr.ph541.i:                                      ; preds = %ilog.exit411.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bo, i64 49
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bo, i64 65
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bo, i64 82
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.lr.ph541.i
  %indvars.iv586.i.a = phi i64 [ 0, %.lr.ph541.i ], [ %indvars.iv.next587.i.a, %._crit_edge.i ] ; 2 uses
  %.0342540.i = phi i32 [ 2, %.lr.ph541.i ], [ %.1343.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv586.i.a
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i64                    ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1             ; 2 uses
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fv
  %i.ga = load i8, ptr %i.fz, align 1             ; 2 uses
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.gb
  %i.gc = xor i32 %notmask.i, -1
  %.not401.i = icmp eq i8 %i.ga, 0
  br i1 %.not401.i, label %bb.av, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = load ptr, ptr %i.an, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fv
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2120 x i8], ptr %i.gd, i64 %i.gg ; 5 uses
  %i.gi = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 10
  br i1 %i.gj, label %bb.x, label %prep_huffman.exit.i

bb.x:                                             ; preds = %bb.w
  %i.gk = icmp eq i32 %i.gi, 0
  br i1 %i.gk, label %bb.y, label %.preheader126

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.al, align 4
  br label %.preheader126

.preheader126:                                    ; preds = %bb.y, %bb.x
  br label %bb.z

bb.z:                                             ; preds = %.preheader126, %get8_packet_raw.exit.thread494.i
  %i.gl = load i32, ptr %i.ap, align 4
  %.not.i412.i = icmp eq i32 %i.gl, 0
  %.pr.i = load i8, ptr %i.ao, align 4            ; 3 uses
  %.not.i427.i = icmp eq i8 %.pr.i, 0             ; 2 uses
  br i1 %.not.i412.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i427.i, label %prep_huffman.exit.i, label %.thread.i

bb.ab:                                            ; preds = %bb.z
  br i1 %.not.i427.i, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.go = load i32, ptr %i.ar, align 8
  %i.gp = add nsw i32 %i.go, -1
  store i32 %i.gp, ptr %i.as, align 8
  %i.gq = tail call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not20.i.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not20.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %i.ap, align 4
  br label %prep_huffman.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.gr = load i8, ptr %i.at, align 1
  %i.gs = and i8 %i.gr, 1
  %.not21.i.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not21.i.i.i, label %bb.ag, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.af
  %.pre.i.i.i = load i32, ptr %i.aq, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 32, ptr %i.ba, align 4
  br label %prep_huffman.exit.i

bb.ah:                                            ; preds = %._crit_edge.i.i.i, %bb.ac
  %i.gt = phi i32 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.gm, %bb.ac ] ; 3 uses
  %i.gu = add nsw i32 %i.gt, 1                    ; 2 uses
  store i32 %i.gu, ptr %i.aq, align 8
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds i8, ptr %i.au, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1             ; 4 uses
  %.not22.i.i.i = icmp eq i8 %i.gx, -1
  br i1 %.not22.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.ap, align 4
  store i32 %i.gt, ptr %i.as, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gy = load i32, ptr %i.ar, align 8
  %.not23.i.i.i = icmp slt i32 %i.gu, %i.gy
  br i1 %.not23.i.i.i, label %next_segment.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 -1, ptr %i.aq, align 8
  br label %next_segment.exit.i.i

next_segment.exit.i.i:                            ; preds = %bb.ak, %bb.aj
  store i8 %i.gx, ptr %i.ao, align 4
  %.not7.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not7.i.i, label %prep_huffman.exit.i, label %.thread.i

.thread.i:                                        ; preds = %next_segment.exit.i.i, %bb.ab, %bb.aa
  %i.gz = phi i8 [ %i.gx, %next_segment.exit.i.i ], [ %.pr.i, %bb.ab ], [ %.pr.i, %bb.aa ]
  %i.ha = add i8 %i.gz, -1
  store i8 %i.ha, ptr %i.ao, align 4
  %i.hb = load i32, ptr %i.av, align 4
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.av, align 4
  %i.hd = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not.i8.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i8.i.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.thread.i
  %i.he = load ptr, ptr %i.ax, align 8
  %.not11.i.i.i = icmp ult ptr %i.hd, %i.he
  br i1 %.not11.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %i.ay, align 8
  br label %get8_packet_raw.exit.thread494.i

bb.an:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store ptr %i.hf, ptr %i.aw, align 8
  %i.hg = load i8, ptr %i.hd, align 1
  br label %get8_packet_raw.exit.i

bb.ao:                                            ; preds = %.thread.i
  %i.hh = load ptr, ptr %i.az, align 8
  %i.hi = tail call i32 @fgetc(ptr noundef %i.hh) ; 2 uses
  %i.hj = icmp eq i32 %i.hi, -1
  br i1 %i.hj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 1, ptr %i.ay, align 8
  br label %get8_packet_raw.exit.thread494.i

bb.aq:                                            ; preds = %bb.ao
  %i.hk = trunc i32 %i.hi to i8
  br label %get8_packet_raw.exit.i

get8_packet_raw.exit.i:                           ; preds = %bb.aq, %bb.an
  %.1.i.i428.i = phi i8 [ %i.hk, %bb.aq ], [ %i.hg, %bb.an ]
  %i.hl = zext i8 %.1.i.i428.i to i32
  br label %get8_packet_raw.exit.thread494.i

get8_packet_raw.exit.thread494.i:                 ; preds = %get8_packet_raw.exit.i, %bb.ap, %bb.am
  %i.hm = phi i32 [ %i.hl, %get8_packet_raw.exit.i ], [ 0, %bb.am ], [ 0, %bb.ap ]
  %i.hn = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.ho = shl i32 %i.hm, %i.hn
  %i.hp = load i32, ptr %i.al, align 4
  %i.hq = add i32 %i.hp, %i.ho
  store i32 %i.hq, ptr %i.al, align 4
  %i.hr = add nsw i32 %i.hn, 8
  store i32 %i.hr, ptr %i.ak, align 8
  %i.hs = icmp slt i32 %i.hn, 17
  br i1 %i.hs, label %bb.z, label %prep_huffman.exit.i

prep_huffman.exit.i:                              ; preds = %get8_packet_raw.exit.thread494.i, %next_segment.exit.i.i, %bb.aa, %bb.ag, %bb.ae, %bb.w
  %i.ht = load i32, ptr %i.al, align 4            ; 2 uses
  %i.hu = and i32 %i.ht, 1023
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2            ; 3 uses
  %i.hz = icmp sgt i16 %i.hy, -1
  br i1 %i.hz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %prep_huffman.exit.i
  %i.ia = zext nneg i16 %i.hy to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = zext nneg i16 %i.hy to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i32                    ; 2 uses
  %i.ih = lshr i32 %i.ht, %i.ig
  store i32 %i.ih, ptr %i.al, align 4
  %i.ii = load i32, ptr %i.ak, align 8
  %i.ij = sub nsw i32 %i.ii, %i.ig                ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 0)
  %.inv.i = icmp sgt i32 %i.ij, -1
  %spec.select407.i = select i1 %.inv.i, i32 %i.ia, i32 -1
  store i32 %spec.select.i, ptr %i.ak, align 8
  br label %bb.at

bb.as:                                            ; preds = %prep_huffman.exit.i
  %i.ik = tail call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.gh)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1340.i = phi i32 [ %spec.select407.i, %bb.ar ], [ %i.ik, %bb.as ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gh, i64 27
  %i.im = load i8, ptr %i.il, align 1
  %.not403.i = icmp eq i8 %i.im, 0
  br i1 %.not403.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.in = getelementptr inbounds nuw i8, ptr %i.gh, i64 2104
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = sext i32 %.1340.i to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.v
  %.3.i = phi i32 [ 0, %bb.v ], [ %i.ir, %bb.au ], [ %.1340.i, %bb.at ]
  %.not577.i = icmp eq i8 %i.fx, 0
  br i1 %.not577.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fv
  %4 = sext i32 %.0342540.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ek, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %4, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ek ] ; 2 uses
  %.4538.i = phi i32 [ %.3.i, %.lr.ph.i ], [ %i.ix, %bb.ek ] ; 2 uses
  %.0348536.i = phi i32 [ 0, %.lr.ph.i ], [ %i.rs, %bb.ek ]
  %i.it = and i32 %.4538.i, %i.gc
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2            ; 2 uses
  %i.ix = ashr i32 %.4538.i, %i.gb
  %i.iy = icmp sgt i16 %i.iw, -1
  br i1 %i.iy, label %bb.ax, label %bb.ek

bb.ax:                                            ; preds = %bb.aw
  %i.iz = zext nneg i16 %i.iw to i64
  %i.ja = load ptr, ptr %i.an, align 8
  %i.jb = getelementptr inbounds nuw [2120 x i8], ptr %i.ja, i64 %i.iz ; 13 uses
  %i.jc = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 10
  br i1 %i.jd, label %bb.ay, label %prep_huffman.exit415.i

bb.ay:                                            ; preds = %bb.ax
  %i.je = icmp eq i32 %i.jc, 0
  br i1 %i.je, label %bb.az, label %.preheader125

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.al, align 4
  br label %.preheader125

.preheader125:                                    ; preds = %bb.az, %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader125, %get8_packet_raw.exit445.thread504.i
  %i.jf = load i32, ptr %i.ap, align 4
  %.not.i413.i = icmp eq i32 %i.jf, 0
  %.pr497.i = load i8, ptr %i.ao, align 4         ; 3 uses
  %.not.i430.i = icmp eq i8 %.pr497.i, 0          ; 2 uses
  br i1 %.not.i413.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not.i430.i, label %prep_huffman.exit415.i, label %.thread498.i

bb.bc:                                            ; preds = %bb.ba
  br i1 %.not.i430.i, label %bb.bd, label %.thread498.i

bb.bd:                                            ; preds = %bb.bc
  %i.jg = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.jh = icmp eq i32 %i.jg, -1
  br i1 %i.jh, label %bb.be, label %bb.ca

bb.be:                                            ; preds = %bb.bd
  %i.ji = load i32, ptr %i.ar, align 8
  %i.jj = add nsw i32 %i.ji, -1
  store i32 %i.jj, ptr %i.as, align 8
  %i.jk = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jl = load ptr, ptr %i.ax, align 8
  %.not11.i.i.i.i = icmp ult ptr %i.jk, %i.jl
  br i1 %.not11.i.i.i.i, label %bb.bg, label %capture_pattern.exit.thread.sink.split.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.jm, ptr %i.aw, align 8
  %i.jn = load i8, ptr %i.jk, align 1
  br label %get8.exit.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.jo = load ptr, ptr %i.az, align 8
  %i.jp = tail call i32 @fgetc(ptr noundef %i.jo) ; 2 uses
  %i.jq = icmp eq i32 %i.jp, -1
  br i1 %i.jq, label %capture_pattern.exit.thread.sink.split.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jr = trunc i32 %i.jp to i8
  br label %get8.exit.i.i.i

get8.exit.i.i.i:                                  ; preds = %bb.bi, %bb.bg
  %.1.i.i.i.i = phi i8 [ %i.jr, %bb.bi ], [ %i.jn, %bb.bg ]
  %.not.i.i463.i = icmp eq i8 %.1.i.i.i.i, 79
  br i1 %.not.i.i463.i, label %bb.bj, label %start_page.exit.thread.i

bb.bj:                                            ; preds = %get8.exit.i.i.i
  %i.js = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i7.i.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jt = load ptr, ptr %i.ax, align 8
  %.not11.i8.i.i.i = icmp ult ptr %i.js, %i.jt
  br i1 %.not11.i8.i.i.i, label %bb.bl, label %capture_pattern.exit.thread.sink.split.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  store ptr %i.ju, ptr %i.aw, align 8
  %i.jv = load i8, ptr %i.js, align 1
  br label %get8.exit10.i.i.i

bb.bm:                                            ; preds = %bb.bj
  %i.jw = load ptr, ptr %i.az, align 8
  %i.jx = tail call i32 @fgetc(ptr noundef %i.jw) ; 2 uses
  %i.jy = icmp eq i32 %i.jx, -1
  br i1 %i.jy, label %capture_pattern.exit.thread.sink.split.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jz = trunc i32 %i.jx to i8
  br label %get8.exit10.i.i.i

get8.exit10.i.i.i:                                ; preds = %bb.bn, %bb.bl
  %.1.i9.i.i.i = phi i8 [ %i.jz, %bb.bn ], [ %i.jv, %bb.bl ]
  %.not4.i.i.i = icmp eq i8 %.1.i9.i.i.i, 103
  br i1 %.not4.i.i.i, label %bb.bo, label %start_page.exit.thread.i

bb.bo:                                            ; preds = %get8.exit10.i.i.i
  %i.ka = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not.i11.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i11.i.i.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kb = load ptr, ptr %i.ax, align 8
  %.not11.i12.i.i.i = icmp ult ptr %i.ka, %i.kb
  br i1 %.not11.i12.i.i.i, label %bb.bq, label %capture_pattern.exit.thread.sink.split.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store ptr %i.kc, ptr %i.aw, align 8
  %i.kd = load i8, ptr %i.ka, align 1
  br label %get8.exit14.i.i.i

bb.br:                                            ; preds = %bb.bo
  %i.ke = load ptr, ptr %i.az, align 8
  %i.kf = tail call i32 @fgetc(ptr noundef %i.ke) ; 2 uses
  %i.kg = icmp eq i32 %i.kf, -1
  br i1 %i.kg, label %capture_pattern.exit.thread.sink.split.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kh = trunc i32 %i.kf to i8
  br label %get8.exit14.i.i.i

get8.exit14.i.i.i:                                ; preds = %bb.bs, %bb.bq
  %.1.i13.i.i.i = phi i8 [ %i.kh, %bb.bs ], [ %i.kd, %bb.bq ]
  %.not5.i.i.i = icmp eq i8 %.1.i13.i.i.i, 103
  br i1 %.not5.i.i.i, label %bb.bt, label %start_page.exit.thread.i

bb.bt:                                            ; preds = %get8.exit14.i.i.i
  %i.ki = load ptr, ptr %i.aw, align 8            ; 4 uses
  %.not.i15.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i15.i.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kj = load ptr, ptr %i.ax, align 8
  %.not11.i16.i.i.i = icmp ult ptr %i.ki, %i.kj
  br i1 %.not11.i16.i.i.i, label %bb.bv, label %capture_pattern.exit.thread.sink.split.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store ptr %i.kk, ptr %i.aw, align 8
  %i.kl = load i8, ptr %i.ki, align 1
  %i.km = freeze i8 %i.kl
  br label %capture_pattern.exit.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.kn = load ptr, ptr %i.az, align 8
  %i.ko = tail call i32 @fgetc(ptr noundef %i.kn) ; 2 uses
  %i.kp = icmp eq i32 %i.ko, -1
  br i1 %i.kp, label %capture_pattern.exit.thread.sink.split.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kq = trunc i32 %i.ko to i8
  br label %capture_pattern.exit.i.i

capture_pattern.exit.i.i:                         ; preds = %bb.bx, %bb.bv
  %.1.i17.i.i.i = phi i8 [ %i.kq, %bb.bx ], [ %i.km, %bb.bv ]
  %.not6.i.not.i.i = icmp eq i8 %.1.i17.i.i.i, 83
  br i1 %.not6.i.not.i.i, label %start_page.exit.i, label %start_page.exit.thread.i

capture_pattern.exit.thread.sink.split.i.i:       ; preds = %bb.bw, %bb.bu, %bb.br, %bb.bp, %bb.bm, %bb.bk, %bb.bh, %bb.bf
  store i32 1, ptr %i.ay, align 8
  br label %start_page.exit.thread.i

start_page.exit.thread.i:                         ; preds = %capture_pattern.exit.i.i, %get8.exit14.i.i.i, %get8.exit10.i.i.i, %get8.exit.i.i.i, %capture_pattern.exit.thread.sink.split.i.i
  store i32 30, ptr %i.ba, align 4
  br label %.loopexit526.i

start_page.exit.i:                                ; preds = %capture_pattern.exit.i.i
  %i.kr = tail call fastcc i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i441.i = icmp eq i32 %i.kr, 0
  br i1 %.not20.i.i441.i, label %.loopexit526.i, label %bb.by

.loopexit526.i:                                   ; preds = %start_page.exit.i, %start_page.exit.thread.i
  store i32 1, ptr %i.ap, align 4
  br label %prep_huffman.exit415.i

bb.by:                                            ; preds = %start_page.exit.i
  %i.ks = load i8, ptr %i.at, align 1
  %i.kt = and i8 %i.ks, 1
  %.not21.i.i442.i = icmp eq i8 %i.kt, 0
  br i1 %.not21.i.i442.i, label %bb.bz, label %._crit_edge.i.i443.i

._crit_edge.i.i443.i:                             ; preds = %bb.by
  %.pre.i.i444.i = load i32, ptr %i.aq, align 8
  br label %bb.ca

end_hunk_0
begin_hunk_1_@vorbis_decode_packet:bb.a

bb.du:                                            ; preds = %bb.ds
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  store ptr %i.op, ptr %i.aw, align 8
  %i.oq = load i8, ptr %i.on, align 1
  br label %get8_packet_raw.exit461.i

bb.dv:                                            ; preds = %.thread508.i
  %i.or = load ptr, ptr %i.az, align 8
  %i.os = tail call i32 @fgetc(ptr noundef %i.or) ; 2 uses
  %i.ot = icmp eq i32 %i.os, -1
  br i1 %i.ot, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 1, ptr %i.ay, align 8
  br label %get8_packet_raw.exit461.thread514.i

bb.dx:                                            ; preds = %bb.dv
  %i.ou = trunc i32 %i.os to i8
  br label %get8_packet_raw.exit461.i

get8_packet_raw.exit461.i:                        ; preds = %bb.dx, %bb.du
  %.1.i.i450.i = phi i8 [ %i.ou, %bb.dx ], [ %i.oq, %bb.du ]
  %i.ov = zext i8 %.1.i.i450.i to i32
  br label %get8_packet_raw.exit461.thread514.i

get8_packet_raw.exit461.thread514.i:              ; preds = %get8_packet_raw.exit461.i, %bb.dw, %bb.dt
  %i.ow = phi i32 [ %i.ov, %get8_packet_raw.exit461.i ], [ 0, %bb.dt ], [ 0, %bb.dw ]
  %i.ox = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.oy = shl i32 %i.ow, %i.ox
  %i.oz = load i32, ptr %i.al, align 4
  %i.pa = add i32 %i.oz, %i.oy
  store i32 %i.pa, ptr %i.al, align 4
  %i.pb = add nsw i32 %i.ox, 8
  store i32 %i.pb, ptr %i.ak, align 8
  %i.pc = icmp slt i32 %i.ox, 17
  br i1 %i.pc, label %bb.co, label %prep_huffman.exit.i.i

prep_huffman.exit.i.i:                            ; preds = %get8_packet_raw.exit461.thread514.i, %next_segment.exit.i455.i, %bb.cp, %bb.dn, %.loopexit525.i, %bb.cl
  %i.pd = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.pe = load ptr, ptr %i.pd, align 8            ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %bb.dy, label %.thread.i.i

bb.dy:                                            ; preds = %prep_huffman.exit.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jb, i64 2096
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %codebook_decode_scalar_raw.exit.i, label %.thread95.i.i

.thread.i.i:                                      ; preds = %prep_huffman.exit.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.pk = load i32, ptr %i.pj, align 4            ; 3 uses
  %i.pl = icmp sgt i32 %i.pk, 8
  br i1 %i.pl, label %bb.dz, label %.thread66.i.i

bb.dz:                                            ; preds = %.thread.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 2096
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %.not61.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not61.i.i, label %.lr.ph75.i.i, label %.thread95.i.i

.thread95.i.i:                                    ; preds = %bb.dz, %bb.dy
  %i.pm = phi ptr [ %.pre.i.i, %bb.dz ], [ %i.ph, %bb.dy ]
  %i.pn = load i32, ptr %i.al, align 4            ; 2 uses
  %i.po = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.pn)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.jb, i64 2112
  %i.pq = load i32, ptr %i.pp, align 8            ; 2 uses
  %i.pr = icmp sgt i32 %i.pq, 1
  br i1 %i.pr, label %.lr.ph.i416.i, label %._crit_edge.i.i

.lr.ph.i416.i:                                    ; preds = %.thread95.i.i, %.lr.ph.i416.i
  %.073.i.i = phi i32 [ %.1.i.i, %.lr.ph.i416.i ], [ %i.pq, %.thread95.i.i ] ; 2 uses
  %.05472.i.i = phi i32 [ %.155.i.i, %.lr.ph.i416.i ], [ 0, %.thread95.i.i ] ; 2 uses
  %i.ps = lshr i32 %.073.i.i, 1                   ; 3 uses
  %i.pt = add nsw i32 %i.ps, %.05472.i.i          ; 2 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4
  %.not65.i.i = icmp ugt i32 %i.pw, %i.po         ; 2 uses
  %i.px = sub nuw nsw i32 %.073.i.i, %i.ps
  %.155.i.i = select i1 %.not65.i.i, i32 %.05472.i.i, i32 %i.pt ; 2 uses
  %.1.i.i = select i1 %.not65.i.i, i32 %i.ps, i32 %i.px ; 2 uses
  %i.py = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.py, label %.lr.ph.i416.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i416.i, %.thread95.i.i
  %.054.lcssa.i.i = phi i32 [ 0, %.thread95.i.i ], [ %.155.i.i, %.lr.ph.i416.i ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.jb, i64 27
  %i.qa = load i8, ptr %i.pz, align 1
  %.not63.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not63.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.jb, i64 2104
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = sext i32 %.054.lcssa.i.i to i64
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %._crit_edge.i.i
  %.2.i.i = phi i32 [ %.054.lcssa.i.i, %._crit_edge.i.i ], [ %i.qf, %bb.ea ] ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = sext i32 %.2.i.i to i64
  %i.qj = getelementptr inbounds i8, ptr %i.qh, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1
  %i.ql = zext i8 %i.qk to i32                    ; 3 uses
  %i.qm = load i32, ptr %i.ak, align 8            ; 2 uses
  %.not64.i.i = icmp slt i32 %i.qm, %i.ql
  br i1 %.not64.i.i, label %codebook_decode_scalar_raw.exit.sink.split.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qn = lshr i32 %i.pn, %i.ql
  store i32 %i.qn, ptr %i.al, align 4
  %i.qo = sub nuw nsw i32 %i.qm, %i.ql
  br label %codebook_decode_scalar_raw.exit.sink.split.i

.thread66.i.i:                                    ; preds = %.thread.i.i
  %i.qp = icmp sgt i32 %i.pk, 0
  br i1 %i.qp, label %.lr.ph75.i.i, label %._crit_edge76.i.i

.lr.ph75.i.i:                                     ; preds = %.thread66.i.i, %bb.dz
  %i.qq = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.pk to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph75.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph75.i.i ], [ %indvars.iv.next.i.i, %bb.eh ] ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %indvars.iv.i.i
  %i.qt = load i8, ptr %i.qs, align 1             ; 2 uses
  %i.qu = icmp eq i8 %i.qt, -1
  br i1 %i.qu, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qv = zext i8 %i.qt to i32                    ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv.i.i
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = load i32, ptr %i.al, align 4            ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.qv
  %i.qz = xor i32 %notmask.i.i, -1
  %i.ra = and i32 %i.qy, %i.qz
  %i.rb = icmp eq i32 %i.qx, %i.ra
  br i1 %i.rb, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.rc = load i32, ptr %i.ak, align 8            ; 2 uses
  %.not62.i.i = icmp slt i32 %i.rc, %i.qv
  br i1 %.not62.i.i, label %codebook_decode_scalar_raw.exit.sink.split.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rd = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.re = lshr i32 %i.qy, %i.qv
  store i32 %i.re, ptr %i.al, align 4
  %i.rf = load ptr, ptr %i.qq, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv.i.i
  %i.rh = load i8, ptr %i.rg, align 1
  %i.ri = zext i8 %i.rh to i32
  %i.rj = sub nsw i32 %i.rc, %i.ri
  br label %codebook_decode_scalar_raw.exit.sink.split.i

bb.eh:                                            ; preds = %bb.ee, %bb.ed
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge76.i.i, label %bb.ed

._crit_edge76.i.i:                                ; preds = %bb.eh, %.thread66.i.i
  store i32 21, ptr %i.ba, align 4
  br label %codebook_decode_scalar_raw.exit.sink.split.i

codebook_decode_scalar_raw.exit.sink.split.i:     ; preds = %._crit_edge76.i.i, %bb.eg, %bb.ef, %bb.ec, %bb.eb, %bb.ck
  %.sink.i.sink.i = phi i32 [ %spec.select408.i, %bb.ck ], [ 0, %._crit_edge76.i.i ], [ 0, %bb.eb ], [ %i.rj, %bb.eg ], [ %i.qo, %bb.ec ], [ 0, %bb.ef ]
  %.1338.ph.i = phi i32 [ %spec.select409.i, %bb.ck ], [ -1, %._crit_edge76.i.i ], [ -1, %bb.eb ], [ %i.rd, %bb.eg ], [ %.2.i.i, %bb.ec ], [ -1, %bb.ef ]
  store i32 %.sink.i.sink.i, ptr %i.ak, align 8
  br label %codebook_decode_scalar_raw.exit.i

codebook_decode_scalar_raw.exit.i:                ; preds = %codebook_decode_scalar_raw.exit.sink.split.i, %bb.dy
  %.1338.i = phi i32 [ -1, %bb.dy ], [ %.1338.ph.i, %codebook_decode_scalar_raw.exit.sink.split.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.jb, i64 27
  %i.rl = load i8, ptr %i.rk, align 1
  %.not405.i = icmp eq i8 %i.rl, 0
  br i1 %.not405.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %codebook_decode_scalar_raw.exit.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.jb, i64 2104
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = sext i32 %.1338.i to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.rn, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %codebook_decode_scalar_raw.exit.i
  %.2.i = phi i32 [ %i.rq, %bb.ei ], [ %.1338.i, %codebook_decode_scalar_raw.exit.i ]
  %i.rr = trunc i32 %.2.i to i16
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.aw
  %.sink.i = phi i16 [ %i.rr, %bb.ej ], [ 0, %bb.aw ]
  %5 = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %indvars.iv.i
  store i16 %.sink.i, ptr %5, align 2
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.rs = add nuw nsw i32 %.0348536.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.rs, %i.fy
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.aw

._crit_edge.loopexit.i:                           ; preds = %bb.ek
  %6 = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.av
  %.1343.lcssa.i = phi i32 [ %.0342540.i, %bb.av ], [ %6, %._crit_edge.loopexit.i ]
  %indvars.iv.next587.i.a = add nuw nsw i64 %indvars.iv586.i.a, 1 ; 2 uses
  %i.rt = load i8, ptr %i.bo, align 4
  %i.ru = zext i8 %i.rt to i64
  %i.rv = icmp samesign ult i64 %indvars.iv.next587.i.a, %i.ru
  br i1 %i.rv, label %bb.v, label %._crit_edge542.i

._crit_edge542.i:                                 ; preds = %._crit_edge.i, %ilog.exit411.i
  %i.rw = load i32, ptr %i.ak, align 8
  %i.rx = icmp eq i32 %i.rw, -1
  br i1 %i.rx, label %bb.ex, label %bb.el

bb.el:                                            ; preds = %._crit_edge542.i
  store i8 1, ptr %i.bb, align 1
  store i8 1, ptr %i.c, align 16
  %i.ry = getelementptr inbounds nuw i8, ptr %i.bo, i64 1592 ; 3 uses
  %i.rz = load i32, ptr %i.ry, align 4            ; 3 uses
  %i.sa = icmp sgt i32 %i.rz, 2
  br i1 %i.sa, label %.lr.ph545.i, label %.preheader527.i

.lr.ph545.i:                                      ; preds = %bb.el
  %i.sb = getelementptr inbounds nuw i8, ptr %i.bo, i64 1088
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bo, i64 338 ; 3 uses
  br label %bb.em

.preheader527.i:                                  ; preds = %bb.eu, %bb.el
  %i.sd = phi i32 [ %i.rz, %bb.el ], [ %i.uc, %bb.eu ] ; 2 uses
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %.lr.ph547.i, label %.thread516.i

bb.em:                                            ; preds = %bb.eu, %.lr.ph545.i
  %i.sf = phi i32 [ %i.rz, %.lr.ph545.i ], [ %i.uc, %bb.eu ]
  %indvars.iv589.i.a = phi i64 [ 2, %.lr.ph545.i ], [ %indvars.iv.next590.i.a, %bb.eu ] ; 6 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %indvars.iv589.i.a ; 2 uses
  %i.sh = load i8, ptr %i.sg, align 2
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.sj = load i8, ptr %i.si, align 1
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.sc, i64 %indvars.iv589.i.a
  %i.sl = load i16, ptr %i.sk, align 2
  %i.sm = zext i16 %i.sl to i32
  %i.sn = zext i8 %i.sh to i64                    ; 3 uses
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.sc, i64 %i.sn
  %i.sp = load i16, ptr %i.so, align 2
  %i.sq = zext i16 %i.sp to i32                   ; 2 uses
  %i.sr = zext i8 %i.sj to i64                    ; 3 uses
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.sc, i64 %i.sr
  %i.st = load i16, ptr %i.ss, align 2
  %i.su = zext i16 %i.st to i32
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.sn
  %i.sw = load i16, ptr %i.sv, align 2
  %i.sx = sext i16 %i.sw to i32                   ; 2 uses
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.sr
  %i.sz = load i16, ptr %i.sy, align 2
  %i.ta = sext i16 %i.sz to i32
  %i.tb = sub nsw i32 %i.ta, %i.sx                ; 2 uses
  %i.tc = sub nsw i32 %i.su, %i.sq
  %i.td = tail call i32 @llvm.abs.i32(i32 %i.tb, i1 true)
  %i.te = sub nsw i32 %i.sm, %i.sq
  %i.tf = mul nsw i32 %i.td, %i.te
  %i.tg = sdiv i32 %i.tf, %i.tc                   ; 2 uses
  %i.th = icmp slt i32 %i.tb, 0
  %i.ti = sub i32 0, %i.tg
  %.p.i.i = select i1 %i.th, i32 %i.ti, i32 %i.tg
  %i.tj = add i32 %.p.i.i, %i.sx                  ; 6 uses
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv589.i.a ; 2 uses
  %i.tl = load i16, ptr %i.tk, align 2            ; 3 uses
  %i.tm = sext i16 %i.tl to i32                   ; 4 uses
  %i.tn = sub nsw i32 %i.cj, %i.tj                ; 2 uses
  %.not398.i = icmp eq i16 %i.tl, 0
  br i1 %.not398.i, label %bb.et, label %bb.en

bb.en:                                            ; preds = %bb.em
  %..i = tail call i32 @llvm.smin.i32(i32 %i.tn, i32 %i.tj)
  %.0336.i = shl nsw i32 %..i, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.sr
  store i8 1, ptr %i.to, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.sn
  store i8 1, ptr %i.tp, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv589.i.a
  store i8 1, ptr %i.tq, align 1
  %.not399.i = icmp sgt i32 %.0336.i, %i.tm
  br i1 %.not399.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.tr = icmp sgt i32 %i.tn, %i.tj
  br i1 %i.tr, label %bb.eu, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ts = xor i32 %i.tm, -1
  %i.tt = add i32 %i.cj, %i.ts
  br label %.sink.split.i

bb.eq:                                            ; preds = %bb.en
  %i.tu = and i16 %i.tl, 1
  %.not400.i = icmp eq i16 %i.tu, 0
  br i1 %.not400.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.tv = add nsw i32 %i.tm, 1
  %i.tw = lshr exact i32 %i.tv, 1
  %i.tx = sub i32 %i.tj, %i.tw
  br label %.sink.split.i

bb.es:                                            ; preds = %bb.eq
  %i.ty = lshr exact i32 %i.tm, 1
  %i.tz = add i32 %i.tj, %i.ty
  br label %.sink.split.i

bb.et:                                            ; preds = %bb.em
  %i.ua = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv589.i.a
  store i8 0, ptr %i.ua, align 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %.sink723.i = phi i32 [ %i.tt, %bb.ep ], [ %i.tz, %bb.es ], [ %i.tx, %bb.er ], [ %i.tj, %bb.et ]
  %i.ub = trunc i32 %.sink723.i to i16
  store i16 %i.ub, ptr %i.tk, align 2
  %.pre = load i32, ptr %i.ry, align 4
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split.i, %bb.eo
  %i.uc = phi i32 [ %.pre, %.sink.split.i ], [ %i.sf, %bb.eo ] ; 3 uses
  %indvars.iv.next590.i.a = add nuw nsw i64 %indvars.iv589.i.a, 1 ; 2 uses
  %i.ud = sext i32 %i.uc to i64
  %i.ue = icmp slt i64 %indvars.iv.next590.i.a, %i.ud
  br i1 %i.ue, label %bb.em, label %.preheader527.i

.thread516.i:                                     ; preds = %bb.ew, %.preheader527.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %bb.ey

.lr.ph547.i:                                      ; preds = %.preheader527.i, %bb.ew
  %i.uf = phi i32 [ %i.uj, %bb.ew ], [ %i.sd, %.preheader527.i ]
  %indvars.iv592.i = phi i64 [ %indvars.iv.next593.i.a, %bb.ew ], [ 0, %.preheader527.i ] ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv592.i
  %i.uh = load i8, ptr %i.ug, align 1
  %.not397.i = icmp eq i8 %i.uh, 0
  br i1 %.not397.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph547.i
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv592.i
  store i16 -1, ptr %i.ui, align 2
  %.pre624.i.a = load i32, ptr %i.ry, align 4
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph547.i
  %i.uj = phi i32 [ %i.uf, %.lr.ph547.i ], [ %.pre624.i.a, %bb.ev ] ; 2 uses
  %indvars.iv.next593.i.a = add nuw nsw i64 %indvars.iv592.i, 1 ; 2 uses
  %i.uk = sext i32 %i.uj to i64
  %i.ul = icmp slt i64 %indvars.iv.next593.i.a, %i.uk
  br i1 %i.ul, label %.lr.ph547.i, label %.thread516.i

bb.ex:                                            ; preds = %._crit_edge542.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %get_bits.exit.thread.i

get_bits.exit.thread.i:                           ; preds = %bb.ex, %get_bits.exit.i, %.critedge.i.i, %bb.d
  store i32 1, ptr %i.bg, align 4
  br label %bb.ey

bb.ey:                                            ; preds = %get_bits.exit.thread.i, %.thread516.i
  %indvars.iv.next596.i.a = add nuw nsw i64 %indvars.iv595.i.a, 1 ; 2 uses
  %i.um = load i32, ptr %i.ad, align 4
  %i.un = sext i32 %i.um to i64                   ; 2 uses
  %i.uo = icmp slt i64 %indvars.iv.next596.i.a, %i.un
  br i1 %i.uo, label %bb.c, label %._crit_edge551.i

._crit_edge551.i:                                 ; preds = %bb.ey, %.._crit_edge551_crit_edge.i
  %.pre-phi633.i = phi i64 [ %.pre632.i, %.._crit_edge551_crit_edge.i ], [ %i.un, %bb.ey ]
  %i.up = shl nsw i64 %.pre-phi633.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.a, i64 %i.up, i1 false)
  %i.uq = load i16, ptr %i.aa, align 8            ; 3 uses
  %.not578.i = icmp eq i16 %i.uq, 0
  br i1 %.not578.i, label %.preheader524.i, label %.lr.ph555.i

.lr.ph555.i:                                      ; preds = %._crit_edge551.i
  %i.ur = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.us = load ptr, ptr %i.ur, align 8
  %wide.trip.count.i = zext i16 %i.uq to i64
  br label %bb.ez

.preheader524.i:                                  ; preds = %bb.fb, %._crit_edge551.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.uu = load i8, ptr %i.ut, align 8
  %.not579.i = icmp eq i8 %i.uu, 0
  br i1 %.not579.i, label %._crit_edge564.i, label %.lr.ph563.i

.lr.ph563.i:                                      ; preds = %.preheader524.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ux = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.fc

bb.ez:                                            ; preds = %bb.fb, %.lr.ph555.i
  %indvars.iv598.i = phi i64 [ 0, %.lr.ph555.i ], [ %indvars.iv.next599.i, %bb.fb ] ; 2 uses
  %i.uy = getelementptr inbounds nuw [3 x i8], ptr %i.us, i64 %indvars.iv598.i ; 2 uses
  %i.uz = load i8, ptr %i.uy, align 1
  %i.va = zext i8 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.va ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4
  %.not394.i = icmp eq i32 %i.vc, 0
end_hunk_1
begin_hunk_2_@decode_residue:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.bp, ptr %i.br, align 8
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.bd ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store ptr %i.bs, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %i.bd ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bd ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr %i.by, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.bd ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %make_block_array.exit.loopexit.unr-lcssa, label %bb.e

make_block_array.exit.loopexit.unr-lcssa:         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %make_block_array.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %make_block_array.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %make_block_array.exit.loopexit.unr-lcssa ]
  %.013.i.epil.init = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.cb, %make_block_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod990 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod990)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.013.i.epil = phi ptr [ %.013.i.epil.init, %.epil.preheader ], [ %i.cd, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.epil
  store ptr %.013.i.epil, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds i8, ptr %.013.i.epil, i64 %i.bd
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %make_block_array.exit, label %bb.f, !llvm.loop !1234

make_block_array.exit:                            ; preds = %make_block_array.exit.loopexit.unr-lcssa, %bb.f, %setup_temp_malloc.exit
  %i.ce = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %make_block_array.exit
  %i.cf = sext i32 %3 to i64
  %i.cg = shl nsw i64 %i.cf, 2                    ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter992 = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i32 %2, 1
  br i1 %i.ch, label %.epil.preheader991, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter996 = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %niter997 = phi i64 [ 0, %.lr.ph.new ], [ %niter997.next.1, %bb.k ]
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1
  %.not337 = icmp eq i8 %i.cj, 0
  br i1 %.not337, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cl = load ptr, ptr %i.ck, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.cl, i8 0, i64 %i.cg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next
  %i.cn = load i8, ptr %i.cm, align 1
  %.not337.1 = icmp eq i8 %i.cn, 0
  br i1 %.not337.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.cp = load ptr, ptr %i.co, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.cp, i8 0, i64 %i.cg, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter997.next.1 = add i64 %niter997, 2         ; 2 uses
  %niter997.ncmp.1 = icmp eq i64 %niter997.next.1, %unroll_iter996
  br i1 %niter997.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod994.not = icmp eq i64 %xtraiter992, 0
  br i1 %lcmp.mod994.not, label %._crit_edge, label %.epil.preheader991

.epil.preheader991:                               ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod995 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod995)
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.epil.init
  %i.cr = load i8, ptr %i.cq, align 1
  %.not337.epil = icmp eq i8 %i.cr, 0
  br i1 %.not337.epil, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.epil.preheader991
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ct = load ptr, ptr %i.cs, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %i.cg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader991, %bb.l, %._crit_edge.unr-lcssa
  %i.cu = icmp ne i32 %2, 1
  %or.cond = and i1 %i.cu, %i.s
  br i1 %or.cond, label %.lr.ph704.preheader, label %.preheader642

._crit_edge.thread:                               ; preds = %make_block_array.exit
  br i1 %i.s, label %._crit_edge705, label %.preheader642

.preheader642:                                    ; preds = %._crit_edge.thread, %._crit_edge
  %i.cv = icmp sgt i32 %i.ac, 0
  %i.cw = icmp slt i32 %2, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 29 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 29 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 17 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 17 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 20 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1763 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1508 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 34 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 17 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 12 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dn = icmp sgt i32 %i.r, 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.dp = icmp eq i16 %.fr735, 0
  br i1 %i.cv, label %.preheader641.preheader, label %.thread618

.preheader641.preheader:                          ; preds = %.preheader642
  %i.dq = sext i32 %i.r to i64                    ; 2 uses
  %wide.trip.count760 = zext nneg i32 %2 to i64
  %wide.trip.count765 = zext nneg i32 %2 to i64
  %wide.trip.count773 = zext nneg i32 %2 to i64
  br label %.preheader641

.lr.ph704.preheader:                              ; preds = %._crit_edge
  %wide.trip.count788 = zext nneg i32 %2 to i64
  br label %.lr.ph704

.lr.ph704:                                        ; preds = %.lr.ph704.preheader, %bb.m
  %indvars.iv785 = phi i64 [ 0, %.lr.ph704.preheader ], [ %indvars.iv.next786, %bb.m ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv785
  %i.ds = load i8, ptr %i.dr, align 1
  %.not328 = icmp eq i8 %i.ds, 0
  br i1 %.not328, label %._crit_edge705.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph704
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %wide.trip.count788
  br i1 %exitcond789.not, label %.thread618, label %.lr.ph704

._crit_edge705.loopexit:                          ; preds = %.lr.ph704
  %i.dt = trunc nuw nsw i64 %indvars.iv785 to i32
  br label %._crit_edge705

._crit_edge705:                                   ; preds = %._crit_edge705.loopexit, %._crit_edge.thread
  %.0302.lcssa = phi i32 [ %i.dt, %._crit_edge705.loopexit ], [ 0, %._crit_edge.thread ]
  %i.du = icmp eq i32 %.0302.lcssa, %2
  br i1 %i.du, label %.thread618, label %.preheader628

.preheader628:                                    ; preds = %._crit_edge705
  %i.dv = icmp eq i32 %2, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.eb = icmp sgt i32 %i.r, 0                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  br i1 %i.dv, label %.preheader628.split.us, label %.preheader628.split

.preheader628.split.us:                           ; preds = %.preheader628
  %i.ed = icmp sgt i32 %i.ac, 0
  br i1 %i.ed, label %.preheader.us.preheader, label %.thread618

.preheader.us.preheader:                          ; preds = %.preheader628.split.us
  %i.ee = sext i32 %i.r to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv806 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next807, %..loopexit_crit_edge.us ] ; 3 uses
  %i.ef = icmp eq i64 %indvars.iv806, 0
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %._crit_edge722.us
  %indvars.iv803 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next804, %._crit_edge722.us ] ; 3 uses
  %.0294724.us = phi i32 [ 0, %.preheader.us ], [ %.1295.lcssa.us, %._crit_edge722.us ] ; 4 uses
  %i.eg = load i32, ptr %i.h, align 8
  %i.eh = load i32, ptr %i.aa, align 8
  %i.ei = mul i32 %i.eh, %.0294724.us
  %i.ej = add i32 %i.ei, %i.eg                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.ek = and i32 %i.ej, 1
  store i32 %i.ek, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.el = ashr i32 %i.ej, 1
  store i32 %i.el, ptr %i.b, align 4
  br i1 %i.ef, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.n, align 8
  %i.en = load i8, ptr %i.l, align 1
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2120 x i8], ptr %i.em, i64 %i.eo ; 5 uses
  %i.eq = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.er = icmp slt i32 %i.eq, 10
  br i1 %i.er, label %bb.p, label %prep_huffman.exit.us

bb.p:                                             ; preds = %bb.o
  %i.es = icmp eq i32 %i.eq, 0
  br i1 %i.es, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.dx, align 4
  br label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.u
  %i.et = load i32, ptr %i.dz, align 4
  %.not.i346.us = icmp eq i32 %i.et, 0
  br i1 %.not.i346.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i8, ptr %i.dy, align 4
  %.not14.i.us = icmp eq i8 %i.eu, 0
  br i1 %.not14.i.us, label %prep_huffman.exit.us, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ev = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %prep_huffman.exit.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = load i32, ptr %i.dw, align 8            ; 3 uses
  %i.ey = shl i32 %i.ev, %i.ex
  %i.ez = load i32, ptr %i.dx, align 4
  %i.fa = add i32 %i.ez, %i.ey
  store i32 %i.fa, ptr %i.dx, align 4
  %i.fb = add nsw i32 %i.ex, 8
  store i32 %i.fb, ptr %i.dw, align 8
  %i.fc = icmp slt i32 %i.ex, 17
  br i1 %i.fc, label %bb.r, label %prep_huffman.exit.us

prep_huffman.exit.us:                             ; preds = %bb.s, %bb.t, %bb.u, %bb.o
  %i.fd = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.fe = and i32 %i.fd, 1023
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2            ; 3 uses
  %i.fj = icmp sgt i16 %i.fi, -1
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %prep_huffman.exit.us
  %i.fk = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ep)
  br label %bb.x

bb.w:                                             ; preds = %prep_huffman.exit.us
  %i.fl = zext nneg i16 %i.fi to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = zext nneg i16 %i.fi to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %i.fs = lshr i32 %i.fd, %i.fr
  store i32 %i.fs, ptr %i.dx, align 4
  %i.ft = load i32, ptr %i.dw, align 8
  %i.fu = sub nsw i32 %i.ft, %i.fr                ; 2 uses
  %spec.select.us = call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %.inv621.us = icmp sgt i32 %i.fu, -1
  %spec.select338.us = select i1 %.inv621.us, i32 %i.fl, i32 -1
  store i32 %spec.select.us, ptr %i.dw, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1288.us = phi i32 [ %spec.select338.us, %bb.w ], [ %i.fk, %bb.v ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 27
  %i.fw = load i8, ptr %i.fv, align 1
  %.not334.us = icmp eq i8 %i.fw, 0
  br i1 %.not334.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 2104
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = sext i32 %.1288.us to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2289.us = phi i32 [ %i.gb, %bb.y ], [ %.1288.us, %bb.x ] ; 2 uses
  %.not335.us = icmp eq i32 %.2289.us, -1
  br i1 %.not335.us, label %.thread535, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = load ptr, ptr %i.ea, align 8
  %i.gd = sext i32 %.2289.us to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.ay, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv803
  store ptr %i.gf, ptr %i.gh, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.n
  %i.gi = icmp slt i32 %.0294724.us, %i.ac
  %i.gj = select i1 %i.eb, i1 %i.gi, i1 false
  br i1 %i.gj, label %.lr.ph721.us, label %._crit_edge722.us

bb.ac:                                            ; preds = %.lr.ph721.us, %.thread532.us
  %i.gk = phi ptr [ %.pre820, %.lr.ph721.us ], [ %i.hg, %.thread532.us ] ; 2 uses
  %i.gl = phi ptr [ %.pre818, %.lr.ph721.us ], [ %i.hh, %.thread532.us ] ; 2 uses
  %i.gm = phi i32 [ %.pre816, %.lr.ph721.us ], [ %i.hi, %.thread532.us ] ; 3 uses
  %indvars.iv800 = phi i64 [ 0, %.lr.ph721.us ], [ %indvars.iv.next801, %.thread532.us ] ; 2 uses
  %.1295719.us = phi i32 [ %.0294724.us, %.lr.ph721.us ], [ %.pre-phi, %.thread532.us ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv803
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv800
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv806
  %i.gu = load i16, ptr %i.gt, align 2            ; 2 uses
  %i.gv = icmp sgt i16 %i.gu, -1
  br i1 %i.gv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = load i32, ptr %i.h, align 8
  %i.gx = add nsw i32 %.1295719.us, 1             ; 2 uses
  %i.gy = mul i32 %i.gm, %i.gx
  %i.gz = add i32 %i.gy, %i.gw                    ; 2 uses
  %i.ha = and i32 %i.gz, 1
  store i32 %i.ha, ptr %i.a, align 4
  %i.hb = ashr i32 %i.gz, 1
  store i32 %i.hb, ptr %i.b, align 4
  br label %.thread532.us

bb.ae:                                            ; preds = %bb.ac
  %i.hc = zext nneg i16 %i.gu to i64
  %i.hd = load ptr, ptr %i.n, align 8
  %i.he = getelementptr inbounds nuw [2120 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = call fastcc i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %i.he, ptr noundef %1, i32 noundef 2, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %3, i32 noundef %i.gm)
  %.not336.not.us = icmp eq i32 %i.hf, 0
  br i1 %.not336.not.us, label %.thread535, label %..thread532.us_crit_edge

..thread532.us_crit_edge:                         ; preds = %bb.ae
  %.pre819 = load ptr, ptr %i.ec, align 8
  %.pre817 = load ptr, ptr %i.ay, align 8
  %.pre815 = load i32, ptr %i.aa, align 8
  %.pre821 = add nsw i32 %.1295719.us, 1
  br label %.thread532.us

.thread532.us:                                    ; preds = %..thread532.us_crit_edge, %bb.ad
  %.pre-phi = phi i32 [ %.pre821, %..thread532.us_crit_edge ], [ %i.gx, %bb.ad ] ; 3 uses
  %i.hg = phi ptr [ %.pre819, %..thread532.us_crit_edge ], [ %i.gk, %bb.ad ]
  %i.hh = phi ptr [ %.pre817, %..thread532.us_crit_edge ], [ %i.gl, %bb.ad ]
  %i.hi = phi i32 [ %.pre815, %..thread532.us_crit_edge ], [ %i.gm, %bb.ad ]
  %indvars.iv.next801 = add nuw nsw i64 %indvars.iv800, 1 ; 2 uses
  %i.hj = icmp slt i64 %indvars.iv.next801, %i.ee
  %i.hk = icmp slt i32 %.pre-phi, %i.ac
  %i.hl = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.ac, label %._crit_edge722.us

._crit_edge722.us:                                ; preds = %.thread532.us, %bb.ab
  %.1295.lcssa.us = phi i32 [ %.0294724.us, %bb.ab ], [ %.pre-phi, %.thread532.us ] ; 2 uses
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.hm = icmp slt i32 %.1295.lcssa.us, %i.ac
  br i1 %i.hm, label %bb.n, label %..loopexit_crit_edge.us

.lr.ph721.us:                                     ; preds = %bb.ab
  %.pre816 = load i32, ptr %i.aa, align 8
  %.pre818 = load ptr, ptr %i.ay, align 8
  %.pre820 = load ptr, ptr %i.ec, align 8
  br label %bb.ac

..loopexit_crit_edge.us:                          ; preds = %._crit_edge722.us
  %indvars.iv.next807 = add nuw nsw i64 %indvars.iv806, 1 ; 2 uses
  %exitcond809.not = icmp eq i64 %indvars.iv.next807, 8
  br i1 %exitcond809.not, label %.thread618, label %.preheader.us

.preheader628.split:                              ; preds = %.preheader628
  %i.hn = icmp slt i32 %i.ac, 1
  %i.ho = icmp slt i32 %2, 3
  %brmerge = select i1 %i.ho, i1 true, i1 %i.hn
  br i1 %brmerge, label %.thread618, label %.preheader625.preheader

.preheader625.preheader:                          ; preds = %.preheader628.split
  %i.hp = sext i32 %i.r to i64
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.preheader, %..loopexit626_crit_edge
  %indvars.iv796 = phi i64 [ 0, %.preheader625.preheader ], [ %indvars.iv.next797, %..loopexit626_crit_edge ] ; 3 uses
  %i.hq = icmp eq i64 %indvars.iv796, 0
  br label %bb.af

.thread535:                                       ; preds = %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.thread618

bb.af:                                            ; preds = %.preheader625, %._crit_edge713
  %indvars.iv793 = phi i64 [ 0, %.preheader625 ], [ %indvars.iv.next794, %._crit_edge713 ] ; 3 uses
  %.3297715 = phi i32 [ 0, %.preheader625 ], [ %.4298.lcssa, %._crit_edge713 ] ; 4 uses
  %i.hr = load i32, ptr %i.h, align 8
  %i.hs = load i32, ptr %i.aa, align 8
  %i.ht = mul i32 %i.hs, %.3297715
  %i.hu = add i32 %i.ht, %i.hr                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.hv = srem i32 %i.hu, %2
  store i32 %i.hv, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.hw = sdiv i32 %i.hu, %2
  store i32 %i.hw, ptr %i.d, align 4
  br i1 %i.hq, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.hx = load ptr, ptr %i.n, align 8
  %i.hy = load i8, ptr %i.l, align 1
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2120 x i8], ptr %i.hx, i64 %i.hz ; 5 uses
  %i.ib = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 10
  br i1 %i.ic, label %bb.ah, label %prep_huffman.exit349

bb.ah:                                            ; preds = %bb.ag
  %i.id = icmp eq i32 %i.ib, 0
  br i1 %i.id, label %bb.ai, label %.preheader965.a

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dx, align 4
  br label %.preheader965.a

.preheader965.a:                                  ; preds = %bb.ai, %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader965.a, %bb.am
  %i.ie = load i32, ptr %i.dz, align 4
  %.not.i347 = icmp eq i32 %i.ie, 0
  br i1 %.not.i347, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.if = load i8, ptr %i.dy, align 4
  %.not14.i348 = icmp eq i8 %i.if, 0
  br i1 %.not14.i348, label %prep_huffman.exit349, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ig = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0) ; 2 uses
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %prep_huffman.exit349, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ii = load i32, ptr %i.dw, align 8            ; 3 uses
  %i.ij = shl i32 %i.ig, %i.ii
  %i.ik = load i32, ptr %i.dx, align 4
  %i.il = add i32 %i.ik, %i.ij
  store i32 %i.il, ptr %i.dx, align 4
  %i.im = add nsw i32 %i.ii, 8
  store i32 %i.im, ptr %i.dw, align 8
  %i.in = icmp slt i32 %i.ii, 17
  br i1 %i.in, label %bb.aj, label %prep_huffman.exit349

prep_huffman.exit349:                             ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag
  %i.io = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.ip = and i32 %i.io, 1023
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2            ; 3 uses
  %i.iu = icmp sgt i16 %i.it, -1
  br i1 %i.iu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %prep_huffman.exit349
  %i.iv = zext nneg i16 %i.it to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = zext nneg i16 %i.it to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = lshr i32 %i.io, %i.jb
  store i32 %i.jc, ptr %i.dx, align 4
  %i.jd = load i32, ptr %i.dw, align 8
  %i.je = sub nsw i32 %i.jd, %i.jb                ; 2 uses
  %spec.select340 = call i32 @llvm.smax.i32(i32 %i.je, i32 0)
  %.inv620 = icmp sgt i32 %i.je, -1
  %spec.select341 = select i1 %.inv620, i32 %i.iv, i32 -1
  store i32 %spec.select340, ptr %i.dw, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %prep_huffman.exit349
  %i.jf = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.ia)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1282 = phi i32 [ %spec.select341, %bb.an ], [ %i.jf, %bb.ao ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ia, i64 27
  %i.jh = load i8, ptr %i.jg, align 1
  %.not330 = icmp eq i8 %i.jh, 0
  br i1 %.not330, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ia, i64 2104
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = sext i32 %.1282 to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.2283 = phi i32 [ %i.jm, %bb.aq ], [ %.1282, %bb.ap ] ; 2 uses
  %.not331 = icmp eq i32 %.2283, -1
  br i1 %.not331, label %.thread546, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jn = load ptr, ptr %i.ea, align 8
  %i.jo = sext i32 %.2283 to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = load ptr, ptr %i.ay, align 8
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv793
  store ptr %i.jq, ptr %i.js, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.af
  %i.jt = icmp slt i32 %.3297715, %i.ac
  %i.ju = select i1 %i.eb, i1 %i.jt, i1 false
  br i1 %i.ju, label %.lr.ph712, label %._crit_edge713

.lr.ph712:                                        ; preds = %bb.at
  %.pre810 = load i32, ptr %i.aa, align 8
  %.pre812 = load ptr, ptr %i.ay, align 8
  %.pre814 = load ptr, ptr %i.ec, align 8
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph712, %.thread542
  %i.jv = phi ptr [ %.pre814, %.lr.ph712 ], [ %i.kr, %.thread542 ] ; 2 uses
  %i.jw = phi ptr [ %.pre812, %.lr.ph712 ], [ %i.ks, %.thread542 ] ; 2 uses
  %i.jx = phi i32 [ %.pre810, %.lr.ph712 ], [ %i.kt, %.thread542 ] ; 3 uses
  %indvars.iv790 = phi i64 [ 0, %.lr.ph712 ], [ %indvars.iv.next791.a, %.thread542 ] ; 2 uses
  %.4298710 = phi i32 [ %.3297715, %.lr.ph712 ], [ %.pre-phi823, %.thread542 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv793
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %indvars.iv790
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.kd, i64 %indvars.iv796
  %i.kf = load i16, ptr %i.ke, align 2            ; 2 uses
  %i.kg = icmp sgt i16 %i.kf, -1
  br i1 %i.kg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kh = zext nneg i16 %i.kf to i64
  %i.ki = load ptr, ptr %i.n, align 8
  %i.kj = getelementptr inbounds nuw [2120 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = call fastcc i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %i.kj, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %3, i32 noundef %i.jx)
  %.not332.not = icmp eq i32 %i.kk, 0
  br i1 %.not332.not, label %.thread546, label %..thread542_crit_edge

..thread542_crit_edge:                            ; preds = %bb.av
  %.pre813.a = load ptr, ptr %i.ec, align 8
  %.pre811 = load ptr, ptr %i.ay, align 8
  %.pre = load i32, ptr %i.aa, align 8
  %.pre822 = add nsw i32 %.4298710, 1
  br label %.thread542

bb.aw:                                            ; preds = %bb.au
  %i.kl = load i32, ptr %i.h, align 8
  %i.km = add nsw i32 %.4298710, 1                ; 2 uses
  %i.kn = mul i32 %i.jx, %i.km
  %i.ko = add i32 %i.kn, %i.kl                    ; 2 uses
  %i.kp = srem i32 %i.ko, %2
  store i32 %i.kp, ptr %i.c, align 4
  %i.kq = sdiv i32 %i.ko, %2
  store i32 %i.kq, ptr %i.d, align 4
  br label %.thread542

.thread542:                                       ; preds = %..thread542_crit_edge, %bb.aw
  %.pre-phi823 = phi i32 [ %.pre822, %..thread542_crit_edge ], [ %i.km, %bb.aw ] ; 3 uses
  %i.kr = phi ptr [ %.pre813.a, %..thread542_crit_edge ], [ %i.jv, %bb.aw ]
  %i.ks = phi ptr [ %.pre811, %..thread542_crit_edge ], [ %i.jw, %bb.aw ]
  %i.kt = phi i32 [ %.pre, %..thread542_crit_edge ], [ %i.jx, %bb.aw ]
  %indvars.iv.next791.a = add nuw nsw i64 %indvars.iv790, 1 ; 2 uses
  %i.ku = icmp slt i64 %indvars.iv.next791.a, %i.hp
  %i.kv = icmp slt i32 %.pre-phi823, %i.ac
  %i.kw = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %i.kw, label %bb.au, label %._crit_edge713

.thread546:                                       ; preds = %bb.ar, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  br label %.thread618

._crit_edge713:                                   ; preds = %.thread542, %bb.at
  %.4298.lcssa = phi i32 [ %.3297715, %bb.at ], [ %.pre-phi823, %.thread542 ] ; 2 uses
  %indvars.iv.next794 = add nuw nsw i64 %indvars.iv793, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  %i.kx = icmp slt i32 %.4298.lcssa, %i.ac
  br i1 %i.kx, label %bb.af, label %..loopexit626_crit_edge

..loopexit626_crit_edge:                          ; preds = %._crit_edge713
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next797, 8
  br i1 %exitcond799.not, label %.thread618, label %.preheader625

.preheader641:                                    ; preds = %.preheader641.preheader, %._crit_edge701
  %indvars.iv781 = phi i64 [ 0, %.preheader641.preheader ], [ %indvars.iv.next782, %._crit_edge701 ] ; 4 uses
  %i.ky = icmp ne i64 %indvars.iv781, 0
  %brmerge734 = or i1 %i.ky, %i.cw
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader641, %._crit_edge682
  %indvars.iv778 = phi i64 [ 0, %.preheader641 ], [ %indvars.iv.next779, %._crit_edge682 ] ; 4 uses
  %.0279697 = phi i32 [ 0, %.preheader641 ], [ %.1280.lcssa, %._crit_edge682 ] ; 5 uses
  br i1 %brmerge734, label %.loopexit639, label %.lr.ph673.a

.lr.ph673.a:                                      ; preds = %bb.ax, %bb.bz
  %indvars.iv757 = phi i64 [ %indvars.iv.next758, %bb.bz ], [ 0, %bb.ax ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv757
  %i.la = load i8, ptr %i.kz, align 1
  %.not325 = icmp eq i8 %i.la, 0
  br i1 %.not325, label %bb.ay, label %bb.bz

bb.ay:                                            ; preds = %.lr.ph673.a
  %i.lb = load ptr, ptr %i.n, align 8
  %i.lc = load i8, ptr %i.l, align 1
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw [2120 x i8], ptr %i.lb, i64 %i.ld ; 5 uses
  %i.lf = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 10
  br i1 %i.lg, label %bb.az, label %prep_huffman.exit352

bb.az:                                            ; preds = %bb.ay
  %i.lh = icmp eq i32 %i.lf, 0
  br i1 %i.lh, label %bb.ba, label %.preheader977

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.cy, align 4
  br label %.preheader977

.preheader977:                                    ; preds = %bb.ba, %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader977, %get8_packet_raw.exit.thread558
  %i.li = load i32, ptr %i.da, align 4
  %.not.i350 = icmp eq i32 %i.li, 0
  %.pr = load i8, ptr %i.cz, align 4              ; 3 uses
  %.not.i357 = icmp eq i8 %.pr, 0                 ; 2 uses
  br i1 %.not.i350, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not.i357, label %prep_huffman.exit352, label %.thread554

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not.i357, label %bb.be, label %.thread554

bb.be:                                            ; preds = %bb.bd
  %i.lj = load i32, ptr %i.db, align 8            ; 2 uses
  %i.lk = icmp eq i32 %i.lj, -1
  br i1 %i.lk, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ll = load i32, ptr %i.dc, align 8
  %i.lm = add nsw i32 %i.ll, -1
  store i32 %i.lm, ptr %i.dd, align 8
  %i.ln = call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not20.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not20.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %i.da, align 4
  br label %prep_huffman.exit352

bb.bh:                                            ; preds = %bb.bf
  %i.lo = load i8, ptr %i.de, align 1
  %i.lp = and i8 %i.lo, 1
  %.not21.i.i = icmp eq i8 %i.lp, 0
  br i1 %.not21.i.i, label %bb.bi, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bh
  %.pre.i.i = load i32, ptr %i.db, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 32, ptr %i.dl, align 4
  br label %prep_huffman.exit352

bb.bj:                                            ; preds = %._crit_edge.i.i, %bb.be
  %i.lq = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.lj, %bb.be ] ; 3 uses
  %i.lr = add nsw i32 %i.lq, 1                    ; 2 uses
  store i32 %i.lr, ptr %i.db, align 8
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds i8, ptr %i.df, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1             ; 4 uses
  %.not22.i.i = icmp eq i8 %i.lu, -1
  br i1 %.not22.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 1, ptr %i.da, align 4
  store i32 %i.lq, ptr %i.dd, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lv = load i32, ptr %i.dc, align 8
  %.not23.i.i = icmp slt i32 %i.lr, %i.lv
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 -1, ptr %i.db, align 8
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.bm, %bb.bl
  store i8 %i.lu, ptr %i.cz, align 4
  %.not7.i = icmp eq i8 %i.lu, 0
  br i1 %.not7.i, label %prep_huffman.exit352, label %.thread554

.thread554:                                       ; preds = %bb.bc, %next_segment.exit.i, %bb.bd
  %i.lw = phi i8 [ %i.lu, %next_segment.exit.i ], [ %.pr, %bb.bd ], [ %.pr, %bb.bc ]
  %i.lx = add i8 %i.lw, -1
  store i8 %i.lx, ptr %i.cz, align 4
  %i.ly = load i32, ptr %i.dg, align 4
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.dg, align 4
  %i.ma = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i8.i = icmp eq ptr %i.ma, null
  br i1 %.not.i8.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.thread554
  %i.mb = load ptr, ptr %i.di, align 8
  %.not11.i.i = icmp ult ptr %i.ma, %i.mb
  br i1 %.not11.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit.thread558

bb.bp:                                            ; preds = %bb.bn
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  store ptr %i.mc, ptr %i.dh, align 8
  %i.md = load i8, ptr %i.ma, align 1
  br label %get8_packet_raw.exit

bb.bq:                                            ; preds = %.thread554
  %i.me = load ptr, ptr %i.dk, align 8
  %i.mf = call i32 @fgetc(ptr noundef %i.me)      ; 2 uses
  %i.mg = icmp eq i32 %i.mf, -1
  br i1 %i.mg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 1, ptr %i.dj, align 8
  br label %get8_packet_raw.exit.thread558

bb.bs:                                            ; preds = %bb.bq
  %i.mh = trunc i32 %i.mf to i8
  br label %get8_packet_raw.exit

get8_packet_raw.exit:                             ; preds = %bb.bp, %bb.bs
  %.1.i.i358 = phi i8 [ %i.mh, %bb.bs ], [ %i.md, %bb.bp ]
  %i.mi = zext i8 %.1.i.i358 to i32
  br label %get8_packet_raw.exit.thread558

get8_packet_raw.exit.thread558:                   ; preds = %get8_packet_raw.exit, %bb.br, %bb.bo
  %i.mj = phi i32 [ %i.mi, %get8_packet_raw.exit ], [ 0, %bb.bo ], [ 0, %bb.br ]
  %i.mk = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.ml = shl i32 %i.mj, %i.mk
  %i.mm = load i32, ptr %i.cy, align 4
  %i.mn = add i32 %i.mm, %i.ml
  store i32 %i.mn, ptr %i.cy, align 4
  %i.mo = add nsw i32 %i.mk, 8
  store i32 %i.mo, ptr %i.cx, align 8
  %i.mp = icmp slt i32 %i.mk, 17
  br i1 %i.mp, label %bb.bb, label %prep_huffman.exit352

prep_huffman.exit352:                             ; preds = %next_segment.exit.i, %get8_packet_raw.exit.thread558, %bb.bc, %bb.bg, %bb.bi, %bb.ay
  %i.mq = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.mr = and i32 %i.mq, 1023
  %i.ms = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.mt = zext nneg i32 %i.mr to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load i16, ptr %i.mu, align 2            ; 3 uses
  %i.mw = icmp sgt i16 %i.mv, -1
  br i1 %i.mw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %prep_huffman.exit352
  %i.mx = zext nneg i16 %i.mv to i32
  %i.my = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = zext nneg i16 %i.mv to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = zext i8 %i.nc to i32                    ; 2 uses
  %i.ne = lshr i32 %i.mq, %i.nd
  store i32 %i.ne, ptr %i.cy, align 4
  %i.nf = load i32, ptr %i.cx, align 8
  %i.ng = sub nsw i32 %i.nf, %i.nd                ; 2 uses
  %spec.select343 = call i32 @llvm.smax.i32(i32 %i.ng, i32 0)
  %.inv = icmp sgt i32 %i.ng, -1
  %spec.select344 = select i1 %.inv, i32 %i.mx, i32 -1
  store i32 %spec.select343, ptr %i.cx, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %prep_huffman.exit352
  %i.nh = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %i.le)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.1 = phi i32 [ %spec.select344, %bb.bt ], [ %i.nh, %bb.bu ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.le, i64 27
  %i.nj = load i8, ptr %i.ni, align 1
  %.not326 = icmp eq i8 %i.nj, 0
  br i1 %.not326, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nk = getelementptr inbounds nuw i8, ptr %i.le, i64 2104
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = sext i32 %.1 to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2 = phi i32 [ %i.no, %bb.bw ], [ %.1, %bb.bv ] ; 2 uses
  %.not327 = icmp eq i32 %.2, -1
  br i1 %.not327, label %.thread618, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.np = load ptr, ptr %i.dm, align 8
  %i.nq = sext i32 %.2 to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv757
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv778
  store ptr %i.ns, ptr %i.nv, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph673.a
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond761.not = icmp eq i64 %indvars.iv.next758, %wide.trip.count760
  br i1 %exitcond761.not, label %.loopexit639, label %.lr.ph673.a

.loopexit639:                                     ; preds = %bb.bz, %bb.ax
  %i.nw = icmp slt i32 %.0279697, %i.ac
  %i.nx = select i1 %i.dn, i1 %i.nw, i1 false
  br i1 %i.nx, label %.preheader637.lr.ph, label %._crit_edge682

.preheader637.lr.ph:                              ; preds = %.loopexit639
  br i1 %i.ce, label %.preheader637.lr.ph.split.us, label %.preheader637

.preheader637.lr.ph.split.us:                     ; preds = %.preheader637.lr.ph
  br i1 %i.dp, label %.preheader637.us.us, label %.preheader637.us

.preheader637.us.us:                              ; preds = %.preheader637.lr.ph.split.us, %._crit_edge676.split.us.us.us
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %._crit_edge676.split.us.us.us ], [ 0, %.preheader637.lr.ph.split.us ] ; 2 uses
  %.1280680.us.us = phi i32 [ %i.wx, %._crit_edge676.split.us.us.us ], [ %.0279697, %.preheader637.lr.ph.split.us ] ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %.thread614.us.us.us, %.preheader637.us.us
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %.thread614.us.us.us ], [ 0, %.preheader637.us.us ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv770
  %i.nz = load i8, ptr %i.ny, align 1
  %.not323.us.us.us = icmp eq i8 %i.nz, 0
  br i1 %.not323.us.us.us, label %bb.cb, label %.thread614.us.us.us

bb.cb:                                            ; preds = %bb.ca
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv770
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv778
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %indvars.iv775
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = load ptr, ptr %i.do, align 8
  %i.oh = zext i8 %i.of to i64
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.og, i64 %i.oh
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.oi, i64 %indvars.iv781
  %i.ok = load i16, ptr %i.oj, align 2            ; 2 uses
  %i.ol = icmp sgt i16 %i.ok, -1
  br i1 %i.ol, label %bb.cc, label %.thread614.us.us.us

bb.cc:                                            ; preds = %bb.cb
  %i.om = zext nneg i16 %i.ok to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv770
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = load i32, ptr %i.h, align 8
  %i.oq = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.or = mul i32 %i.oq, %.1280680.us.us
  %i.os = add i32 %i.or, %i.op                    ; 2 uses
  %i.ot = load ptr, ptr %i.n, align 8
  %i.ou = getelementptr inbounds nuw [2120 x i8], ptr %i.ot, i64 %i.om ; 13 uses
  %i.ov = load i32, ptr %i.ou, align 8
  %i.ow = sdiv i32 %i.oq, %i.ov                   ; 2 uses
  %i.ox = sext i32 %i.os to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.ox
  %.not3556.i.us.us.us = icmp sgt i32 %i.ow, 0
  br i1 %.not3556.i.us.us.us, label %.lr.ph58.i.us.us.us, label %.thread614.us.us.us

.lr.ph58.i.us.us.us:                              ; preds = %bb.cc
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 26
  %i.pb = zext nneg i32 %i.ow to i64              ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 25
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %.phi.trans.insert.i415.us.us.us = getelementptr inbounds nuw i8, ptr %i.ou, i64 2096 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 2112
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ou, i64 27
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 2104
  br label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i.us.us.us, %.lr.ph58.i.us.us.us
  %indvars.iv.i354.us.us.us = phi i64 [ 0, %.lr.ph58.i.us.us.us ], [ %indvars.iv.next.i355.us.us.us, %.loopexit.i.us.us.us ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.i354.us.us.us
  %i.pl = load i8, ptr %i.pc, align 1
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %.thread31.sink.split.i368, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pn = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.po = icmp slt i32 %i.pn, 10
  br i1 %i.po, label %bb.cf, label %prep_huffman.exit.i363.us.us.us

bb.cf:                                            ; preds = %bb.ce
  %i.pp = icmp eq i32 %i.pn, 0
  br i1 %i.pp, label %bb.cg, label %.preheader971

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.cy, align 4
  br label %.preheader971

.preheader971:                                    ; preds = %bb.cg, %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %.preheader971, %get8_packet_raw.exit448.thread570.us.us.us
  %i.pq = load i32, ptr %i.da, align 4
  %.not.i.i372.us.us.us = icmp eq i32 %i.pq, 0
  %.pr563.us.us.us = load i8, ptr %i.cz, align 4  ; 3 uses
  %.not.i433.us.us.us = icmp eq i8 %.pr563.us.us.us, 0 ; 2 uses
  br i1 %.not.i.i372.us.us.us, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i433.us.us.us, label %prep_huffman.exit.i363.us.us.us, label %.thread564.us.us.us

bb.cj:                                            ; preds = %bb.ch
  br i1 %.not.i433.us.us.us, label %bb.ck, label %.thread564.us.us.us

bb.ck:                                            ; preds = %bb.cj
  %i.pr = load i32, ptr %i.db, align 8            ; 2 uses
  %i.ps = icmp eq i32 %i.pr, -1
  br i1 %i.ps, label %bb.cl, label %bb.dg

bb.cl:                                            ; preds = %bb.ck
  %i.pt = load i32, ptr %i.dc, align 8
  %i.pu = add nsw i32 %i.pt, -1
  store i32 %i.pu, ptr %i.dd, align 8
  %i.pv = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i.i.i483.us.us.us = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i483.us.us.us, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pw = load ptr, ptr %i.di, align 8
  %.not11.i.i.i484.us.us.us = icmp ult ptr %i.pv, %i.pw
  br i1 %.not11.i.i.i484.us.us.us, label %bb.cn, label %capture_pattern.exit.thread.sink.split.i485.us.us.us

bb.cn:                                            ; preds = %bb.cm
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 1
  store ptr %i.px, ptr %i.dh, align 8
  %i.py = load i8, ptr %i.pv, align 1
  br label %get8.exit.i.i488.us.us.us

bb.co:                                            ; preds = %bb.cl
  %i.pz = load ptr, ptr %i.dk, align 8
  %i.qa = call i32 @fgetc(ptr noundef %i.pz)      ; 2 uses
  %i.qb = icmp eq i32 %i.qa, -1
  br i1 %i.qb, label %capture_pattern.exit.thread.sink.split.i485.us.us.us, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qc = trunc i32 %i.qa to i8
  br label %get8.exit.i.i488.us.us.us

get8.exit.i.i488.us.us.us:                        ; preds = %bb.cp, %bb.cn
  %.1.i.i.i489.us.us.us = phi i8 [ %i.qc, %bb.cp ], [ %i.py, %bb.cn ]
  %.not.i.i490.us.us.us = icmp eq i8 %.1.i.i.i489.us.us.us, 79
  br i1 %.not.i.i490.us.us.us, label %bb.cq, label %start_page.exit506.thread.us.us.us

bb.cq:                                            ; preds = %get8.exit.i.i488.us.us.us
  %i.qd = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i7.i.i491.us.us.us = icmp eq ptr %i.qd, null
  br i1 %.not.i7.i.i491.us.us.us, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qe = load ptr, ptr %i.di, align 8
  %.not11.i8.i.i492.us.us.us = icmp ult ptr %i.qd, %i.qe
  br i1 %.not11.i8.i.i492.us.us.us, label %bb.cs, label %capture_pattern.exit.thread.sink.split.i485.us.us.us

bb.cs:                                            ; preds = %bb.cr
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  store ptr %i.qf, ptr %i.dh, align 8
  %i.qg = load i8, ptr %i.qd, align 1
  br label %get8.exit10.i.i493.us.us.us

bb.ct:                                            ; preds = %bb.cq
  %i.qh = load ptr, ptr %i.dk, align 8
  %i.qi = call i32 @fgetc(ptr noundef %i.qh)      ; 2 uses
  %i.qj = icmp eq i32 %i.qi, -1
  br i1 %i.qj, label %capture_pattern.exit.thread.sink.split.i485.us.us.us, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qk = trunc i32 %i.qi to i8
  br label %get8.exit10.i.i493.us.us.us

get8.exit10.i.i493.us.us.us:                      ; preds = %bb.cu, %bb.cs
  %.1.i9.i.i494.us.us.us = phi i8 [ %i.qk, %bb.cu ], [ %i.qg, %bb.cs ]
  %.not4.i.i495.us.us.us = icmp eq i8 %.1.i9.i.i494.us.us.us, 103
  br i1 %.not4.i.i495.us.us.us, label %bb.cv, label %start_page.exit506.thread.us.us.us

bb.cv:                                            ; preds = %get8.exit10.i.i493.us.us.us
  %i.ql = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i11.i.i496.us.us.us = icmp eq ptr %i.ql, null
  br i1 %.not.i11.i.i496.us.us.us, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qm = load ptr, ptr %i.di, align 8
  %.not11.i12.i.i497.us.us.us = icmp ult ptr %i.ql, %i.qm
  br i1 %.not11.i12.i.i497.us.us.us, label %bb.cx, label %capture_pattern.exit.thread.sink.split.i485.us.us.us

bb.cx:                                            ; preds = %bb.cw
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 1
  store ptr %i.qn, ptr %i.dh, align 8
  %i.qo = load i8, ptr %i.ql, align 1
  br label %get8.exit14.i.i498.us.us.us

bb.cy:                                            ; preds = %bb.cv
  %i.qp = load ptr, ptr %i.dk, align 8
  %i.qq = call i32 @fgetc(ptr noundef %i.qp)      ; 2 uses
  %i.qr = icmp eq i32 %i.qq, -1
  br i1 %i.qr, label %capture_pattern.exit.thread.sink.split.i485.us.us.us, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qs = trunc i32 %i.qq to i8
  br label %get8.exit14.i.i498.us.us.us

get8.exit14.i.i498.us.us.us:                      ; preds = %bb.cz, %bb.cx
  %.1.i13.i.i499.us.us.us = phi i8 [ %i.qs, %bb.cz ], [ %i.qo, %bb.cx ]
  %.not5.i.i500.us.us.us = icmp eq i8 %.1.i13.i.i499.us.us.us, 103
  br i1 %.not5.i.i500.us.us.us, label %bb.da, label %start_page.exit506.thread.us.us.us

bb.da:                                            ; preds = %get8.exit14.i.i498.us.us.us
  %i.qt = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i15.i.i501.us.us.us = icmp eq ptr %i.qt, null
  br i1 %.not.i15.i.i501.us.us.us, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qu = load ptr, ptr %i.di, align 8
  %.not11.i16.i.i502.us.us.us = icmp ult ptr %i.qt, %i.qu
  br i1 %.not11.i16.i.i502.us.us.us, label %bb.dc, label %capture_pattern.exit.thread.sink.split.i485.us.us.us

bb.dc:                                            ; preds = %bb.db
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  store ptr %i.qv, ptr %i.dh, align 8
  %i.qw = load i8, ptr %i.qt, align 1
  %i.qx = freeze i8 %i.qw
  br label %capture_pattern.exit.i503.us.us.us

bb.dd:                                            ; preds = %bb.da
  %i.qy = load ptr, ptr %i.dk, align 8
  %i.qz = call i32 @fgetc(ptr noundef %i.qy)      ; 2 uses
end_hunk_2
begin_hunk_3_@decode_residue:bb.a

bb.em:                                            ; preds = %.thread.i401.us.us.us
  %.pre.i416.us.us.us = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %.not61.i417.us.us.us = icmp eq ptr %.pre.i416.us.us.us, null
  br i1 %.not61.i417.us.us.us, label %.lr.ph75.i408.us.us.us, label %.thread95.i418.us.us.us

.lr.ph75.i408.us.us.us:                           ; preds = %bb.em, %.thread66.i402.us.us.us
  %i.ub = load ptr, ptr %i.pg, align 8
  %wide.trip.count.i409.us.us.us = zext nneg i32 %i.ty to i64
  br label %bb.en

bb.en:                                            ; preds = %bb.ep, %.lr.ph75.i408.us.us.us
  %indvars.iv.i410.us.us.us = phi i64 [ 0, %.lr.ph75.i408.us.us.us ], [ %indvars.iv.next.i412.us.us.us, %bb.ep ] ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %indvars.iv.i410.us.us.us
  %i.ud = load i8, ptr %i.uc, align 1             ; 2 uses
  %i.ue = icmp eq i8 %i.ud, -1
  br i1 %i.ue, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uf = zext i8 %i.ud to i32                    ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %indvars.iv.i410.us.us.us
  %i.uh = load i32, ptr %i.ug, align 4
  %i.ui = load i32, ptr %i.cy, align 4            ; 2 uses
  %notmask.i411.us.us.us = shl nsw i32 -1, %i.uf
  %i.uj = xor i32 %notmask.i411.us.us.us, -1
  %i.uk = and i32 %i.ui, %i.uj
  %i.ul = icmp eq i32 %i.uh, %i.uk
  br i1 %i.ul, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %indvars.iv.next.i412.us.us.us = add nuw nsw i64 %indvars.iv.i410.us.us.us, 1 ; 2 uses
  %exitcond.not.i413.us.us.us = icmp eq i64 %indvars.iv.next.i412.us.us.us, %wide.trip.count.i409.us.us.us
  br i1 %exitcond.not.i413.us.us.us, label %._crit_edge76.i403, label %bb.en

bb.eq:                                            ; preds = %bb.eo
  %i.um = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not62.i414.us.us.us = icmp slt i32 %i.um, %i.uf
  br i1 %.not62.i414.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.un = trunc nuw nsw i64 %indvars.iv.i410.us.us.us to i32
  %i.uo = lshr i32 %i.ui, %i.uf
  store i32 %i.uo, ptr %i.cy, align 4
  %i.up = load ptr, ptr %i.pg, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv.i410.us.us.us
  %i.ur = load i8, ptr %i.uq, align 1
  %i.us = zext i8 %i.ur to i32
  %i.ut = sub nsw i32 %i.um, %i.us
  br label %codebook_decode_scalar_raw.exit432.us.us.us

bb.es:                                            ; preds = %prep_huffman.exit.i400.us.us.us
  %i.uu = load ptr, ptr %.phi.trans.insert.i415.us.us.us, align 8 ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.thread.i365, label %.thread95.i418.us.us.us

.thread95.i418.us.us.us:                          ; preds = %bb.es, %bb.em
  %i.uw = phi ptr [ %.pre.i416.us.us.us, %bb.em ], [ %i.uu, %bb.es ]
  %i.ux = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.uy = call noundef i32 @llvm.bitreverse.i32(i32 %i.ux)
  %i.uz = load i32, ptr %i.ph, align 8            ; 2 uses
  %i.va = icmp sgt i32 %i.uz, 1
  br i1 %i.va, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

.lr.ph.i424.us.us.us:                             ; preds = %.thread95.i418.us.us.us, %.lr.ph.i424.us.us.us
  %.073.i425.us.us.us = phi i32 [ %.1.i429.us.us.us, %.lr.ph.i424.us.us.us ], [ %i.uz, %.thread95.i418.us.us.us ] ; 2 uses
  %.05472.i426.us.us.us = phi i32 [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ], [ 0, %.thread95.i418.us.us.us ] ; 2 uses
  %i.vb = lshr i32 %.073.i425.us.us.us, 1         ; 3 uses
  %i.vc = add nsw i32 %i.vb, %.05472.i426.us.us.us ; 2 uses
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4
  %.not65.i427.us.us.us = icmp ugt i32 %i.vf, %i.uy ; 2 uses
  %i.vg = sub nuw nsw i32 %.073.i425.us.us.us, %i.vb
  %.155.i428.us.us.us = select i1 %.not65.i427.us.us.us, i32 %.05472.i426.us.us.us, i32 %i.vc ; 2 uses
  %.1.i429.us.us.us = select i1 %.not65.i427.us.us.us, i32 %i.vb, i32 %i.vg ; 2 uses
  %i.vh = icmp samesign ugt i32 %.1.i429.us.us.us, 1
  br i1 %i.vh, label %.lr.ph.i424.us.us.us, label %._crit_edge.i419.us.us.us

._crit_edge.i419.us.us.us:                        ; preds = %.lr.ph.i424.us.us.us, %.thread95.i418.us.us.us
  %.054.lcssa.i420.us.us.us = phi i32 [ 0, %.thread95.i418.us.us.us ], [ %.155.i428.us.us.us, %.lr.ph.i424.us.us.us ] ; 2 uses
  %i.vi = load i8, ptr %i.pi, align 1
  %.not63.i421.us.us.us = icmp eq i8 %i.vi, 0
  br i1 %.not63.i421.us.us.us, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge.i419.us.us.us
  %i.vj = load ptr, ptr %i.pj, align 8
  %i.vk = sext i32 %.054.lcssa.i420.us.us.us to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge.i419.us.us.us
  %.2.i422.us.us.us = phi i32 [ %.054.lcssa.i420.us.us.us, %._crit_edge.i419.us.us.us ], [ %i.vm, %bb.et ] ; 2 uses
  %i.vn = load ptr, ptr %i.pg, align 8
  %i.vo = sext i32 %.2.i422.us.us.us to i64
  %i.vp = getelementptr inbounds i8, ptr %i.vn, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = zext i8 %i.vq to i32                    ; 3 uses
  %i.vs = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not64.i423.us.us.us = icmp slt i32 %i.vs, %i.vr
  br i1 %.not64.i423.us.us.us, label %codebook_decode_scalar_raw.exit432.thread581, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vt = lshr i32 %i.ux, %i.vr
  store i32 %i.vt, ptr %i.cy, align 4
  %i.vu = sub nuw nsw i32 %i.vs, %i.vr
  br label %codebook_decode_scalar_raw.exit432.us.us.us

codebook_decode_scalar_raw.exit432.us.us.us:      ; preds = %bb.ev, %bb.er
  %.sink.i405.us.us.us = phi i32 [ %i.ut, %bb.er ], [ %i.vu, %bb.ev ]
  %.158.ph.i406.us.us.us = phi i32 [ %i.un, %bb.er ], [ %.2.i422.us.us.us, %bb.ev ] ; 2 uses
  store i32 %.sink.i405.us.us.us, ptr %i.cx, align 8
  %i.vv = icmp slt i32 %.158.ph.i406.us.us.us, 0
  br i1 %i.vv, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

bb.ew:                                            ; preds = %prep_huffman.exit.i363.us.us.us
  %i.vw = zext nneg i16 %i.sj to i32
  %i.vx = load ptr, ptr %i.pg, align 8
  %i.vy = zext nneg i16 %i.sj to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = zext i8 %i.wa to i32                    ; 2 uses
  %i.wc = lshr i32 %i.sf, %i.wb
  store i32 %i.wc, ptr %i.cy, align 4
  %i.wd = load i32, ptr %i.cx, align 8
  %i.we = sub nsw i32 %i.wd, %i.wb                ; 2 uses
  %i.wf = icmp slt i32 %i.we, 0
  %spec.select.i371.us.us.us = call i32 @llvm.smax.i32(i32 %i.we, i32 0)
  store i32 %spec.select.i371.us.us.us, ptr %i.cx, align 8
  br i1 %i.wf, label %.thread.i365, label %codebook_decode_start.exit374.us.us.us

codebook_decode_start.exit374.us.us.us:           ; preds = %bb.ew, %codebook_decode_scalar_raw.exit432.us.us.us
  %.025.i364.us.us.us = phi i32 [ %i.vw, %bb.ew ], [ %.158.ph.i406.us.us.us, %codebook_decode_scalar_raw.exit432.us.us.us ]
  %i.wg = trunc nuw nsw i64 %indvars.iv.i354.us.us.us to i32
  %i.wh = add i32 %i.os, %i.wg
  %i.wi = sub i32 %i.oq, %i.wh
  %i.wj = load i32, ptr %i.ou, align 8            ; 2 uses
  %spec.select.i.i.us.us.us = call i32 @llvm.smin.i32(i32 %i.wi, i32 %i.wj) ; 2 uses
  %i.wk = icmp sgt i32 %spec.select.i.i.us.us.us, 0
  br i1 %i.wk, label %.lr.ph.i.i.us.us.us, label %.loopexit.i.us.us.us

.lr.ph.i.i.us.us.us:                              ; preds = %codebook_decode_start.exit374.us.us.us
  %i.wl = mul nuw nsw i32 %i.wj, %.025.i364.us.us.us
  %i.wm = sext i32 %i.wl to i64
  %wide.trip.count.i.i.us.us.us = zext nneg i32 %spec.select.i.i.us.us.us to i64
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %.lr.ph.i.i.us.us.us
  %indvars.iv.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.us.us.us ], [ %indvars.iv.next.i.i.us.us.us, %bb.ex ] ; 3 uses
  %.028.i.i.us.us.us = phi float [ 0.000000e+00, %.lr.ph.i.i.us.us.us ], [ %.1.i.i.us.us.us, %bb.ex ] ; 2 uses
  %i.wn = load ptr, ptr %i.oz, align 8
  %i.wo = getelementptr [4 x i8], ptr %i.wn, i64 %indvars.iv.i.i.us.us.us
  %i.wp = getelementptr [4 x i8], ptr %i.wo, i64 %i.wm
  %i.wq = load float, ptr %i.wp, align 4
  %i.wr = fadd float %.028.i.i.us.us.us, %i.wq    ; 2 uses
  %i.ws = mul nuw nsw i64 %indvars.iv.i.i.us.us.us, %i.pb
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ws ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4
  %i.wv = fadd float %i.wu, %i.wr
  store float %i.wv, ptr %i.wt, align 4
  %i.ww = load i8, ptr %i.pa, align 2
  %.not.i.i.us.us.us = icmp eq i8 %i.ww, 0
  %.1.i.i.us.us.us = select i1 %.not.i.i.us.us.us, float %.028.i.i.us.us.us, float %i.wr
  %indvars.iv.next.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us.us, %wide.trip.count.i.i.us.us.us
  br i1 %exitcond.not.i.i.us.us.us, label %.loopexit.i.us.us.us, label %bb.ex

.loopexit.i.us.us.us:                             ; preds = %bb.ex, %codebook_decode_start.exit374.us.us.us
  %indvars.iv.next.i355.us.us.us = add nuw nsw i64 %indvars.iv.i354.us.us.us, 1 ; 2 uses
  %exitcond.not.i356.us.us.us = icmp eq i64 %indvars.iv.next.i355.us.us.us, %i.pb
  br i1 %exitcond.not.i356.us.us.us, label %.thread614.us.us.us, label %bb.cd

.thread614.us.us.us:                              ; preds = %.loopexit.i.us.us.us, %bb.cc, %bb.cb, %bb.ca
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge676.split.us.us.us, label %bb.ca

._crit_edge676.split.us.us.us:                    ; preds = %.thread614.us.us.us
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %i.wx = add nsw i32 %.1280680.us.us, 1          ; 3 uses
  %i.wy = icmp slt i64 %indvars.iv.next776, %i.dq
  %i.wz = icmp slt i32 %i.wx, %i.ac
  %i.xa = select i1 %i.wy, i1 %i.wz, i1 false
  br i1 %i.xa, label %.preheader637.us.us, label %._crit_edge682

.preheader637.us:                                 ; preds = %.preheader637.lr.ph.split.us, %._crit_edge676.split.us687
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %._crit_edge676.split.us687 ], [ 0, %.preheader637.lr.ph.split.us ] ; 2 uses
  %.1280680.us = phi i32 [ %i.ajb, %._crit_edge676.split.us687 ], [ %.0279697, %.preheader637.lr.ph.split.us ] ; 2 uses
  br label %bb.ey

bb.ey:                                            ; preds = %.thread614.us686, %.preheader637.us
  %indvars.iv762 = phi i64 [ %indvars.iv.next763, %.thread614.us686 ], [ 0, %.preheader637.us ] ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv762
  %i.xc = load i8, ptr %i.xb, align 1
  %.not323.us685 = icmp eq i8 %i.xc, 0
  br i1 %.not323.us685, label %bb.ez, label %.thread614.us686

bb.ez:                                            ; preds = %bb.ey
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv762
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv778
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %indvars.iv767
  %i.xi = load i8, ptr %i.xh, align 1
  %i.xj = load ptr, ptr %i.do, align 8
  %i.xk = zext i8 %i.xi to i64
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %i.xj, i64 %i.xk
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.xl, i64 %indvars.iv781
  %i.xn = load i16, ptr %i.xm, align 2            ; 2 uses
  %i.xo = icmp sgt i16 %i.xn, -1
  br i1 %i.xo, label %.preheader.i.us, label %.thread614.us686

.preheader.i.us:                                  ; preds = %bb.ez
  %i.xp = zext nneg i16 %i.xn to i64
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv762
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load i32, ptr %i.aa, align 8            ; 4 uses
  %i.xt = load ptr, ptr %i.n, align 8
  %i.xu = getelementptr inbounds nuw [2120 x i8], ptr %i.xt, i64 %i.xp ; 14 uses
  %i.xv = icmp sgt i32 %i.xs, 0
  br i1 %i.xv, label %.lr.ph.i353.us, label %.thread614.us686

.lr.ph.i353.us:                                   ; preds = %.preheader.i.us
  %i.xw = mul i32 %i.xs, %.1280680.us
  %i.xx = load i32, ptr %i.h, align 8
  %i.xy = add i32 %i.xw, %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 26
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xu, i64 32 ; 6 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xu, i64 25
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xu, i64 48
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xu, i64 40
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.xu, i64 2096 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xu, i64 2112
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xu, i64 27
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xu, i64 2104
  br label %bb.fa

bb.fa:                                            ; preds = %.loopexit48.i.us, %.lr.ph.i353.us
  %.153.i.us = phi i32 [ 0, %.lr.ph.i353.us ], [ %i.aiy, %.loopexit48.i.us ] ; 2 uses
  %.03152.i.us = phi i32 [ %i.xy, %.lr.ph.i353.us ], [ %i.aiz, %.loopexit48.i.us ] ; 2 uses
  %i.yk = sext i32 %.03152.i.us to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.xr, i64 %i.yk ; 6 uses
  %i.ym = load i8, ptr %i.yc, align 1
  %i.yn = icmp eq i8 %i.ym, 0
  br i1 %i.yn, label %.thread31.sink.split.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.yo = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.yp = icmp slt i32 %i.yo, 10
  br i1 %i.yp, label %bb.fc, label %prep_huffman.exit.i.us

bb.fc:                                            ; preds = %bb.fb
  %i.yq = icmp eq i32 %i.yo, 0
  br i1 %i.yq, label %bb.fd, label %.preheader974

bb.fd:                                            ; preds = %bb.fc
  store i32 0, ptr %i.cy, align 4
  br label %.preheader974

.preheader974:                                    ; preds = %bb.fd, %bb.fc
  br label %bb.fe

bb.fe:                                            ; preds = %.preheader974, %get8_packet_raw.exit399.thread593.us
  %i.yr = load i32, ptr %i.da, align 4
  %.not.i.i362.us = icmp eq i32 %i.yr, 0
  %.pr586.us = load i8, ptr %i.cz, align 4        ; 3 uses
  %.not.i384.us = icmp eq i8 %.pr586.us, 0        ; 2 uses
  br i1 %.not.i.i362.us, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  br i1 %.not.i384.us, label %prep_huffman.exit.i.us, label %.thread587.us

bb.fg:                                            ; preds = %bb.fe
  br i1 %.not.i384.us, label %bb.fh, label %.thread587.us

bb.fh:                                            ; preds = %bb.fg
  %i.ys = load i32, ptr %i.db, align 8            ; 2 uses
  %i.yt = icmp eq i32 %i.ys, -1
  br i1 %i.yt, label %bb.fi, label %bb.gd

bb.fi:                                            ; preds = %bb.fh
  %i.yu = load i32, ptr %i.dc, align 8
  %i.yv = add nsw i32 %i.yu, -1
  store i32 %i.yv, ptr %i.dd, align 8
  %i.yw = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i.i.i.us = icmp eq ptr %i.yw, null
  br i1 %.not.i.i.i.us, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.yx = load ptr, ptr %i.di, align 8
  %.not11.i.i.i.us = icmp ult ptr %i.yw, %i.yx
  br i1 %.not11.i.i.i.us, label %bb.fk, label %capture_pattern.exit.thread.sink.split.i.us

bb.fk:                                            ; preds = %bb.fj
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 1
  store ptr %i.yy, ptr %i.dh, align 8
  %i.yz = load i8, ptr %i.yw, align 1
  br label %get8.exit.i.i.us

bb.fl:                                            ; preds = %bb.fi
  %i.za = load ptr, ptr %i.dk, align 8
  %i.zb = call i32 @fgetc(ptr noundef %i.za)      ; 2 uses
  %i.zc = icmp eq i32 %i.zb, -1
  br i1 %i.zc, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.zd = trunc i32 %i.zb to i8
  br label %get8.exit.i.i.us

get8.exit.i.i.us:                                 ; preds = %bb.fm, %bb.fk
  %.1.i.i.i.us = phi i8 [ %i.zd, %bb.fm ], [ %i.yz, %bb.fk ]
  %.not.i.i466.us = icmp eq i8 %.1.i.i.i.us, 79
  br i1 %.not.i.i466.us, label %bb.fn, label %start_page.exit.thread.us

bb.fn:                                            ; preds = %get8.exit.i.i.us
  %i.ze = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i7.i.i.us = icmp eq ptr %i.ze, null
  br i1 %.not.i7.i.i.us, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.zf = load ptr, ptr %i.di, align 8
  %.not11.i8.i.i.us = icmp ult ptr %i.ze, %i.zf
  br i1 %.not11.i8.i.i.us, label %bb.fp, label %capture_pattern.exit.thread.sink.split.i.us

bb.fp:                                            ; preds = %bb.fo
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store ptr %i.zg, ptr %i.dh, align 8
  %i.zh = load i8, ptr %i.ze, align 1
  br label %get8.exit10.i.i.us

bb.fq:                                            ; preds = %bb.fn
  %i.zi = load ptr, ptr %i.dk, align 8
  %i.zj = call i32 @fgetc(ptr noundef %i.zi)      ; 2 uses
  %i.zk = icmp eq i32 %i.zj, -1
  br i1 %i.zk, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zl = trunc i32 %i.zj to i8
  br label %get8.exit10.i.i.us

get8.exit10.i.i.us:                               ; preds = %bb.fr, %bb.fp
  %.1.i9.i.i.us = phi i8 [ %i.zl, %bb.fr ], [ %i.zh, %bb.fp ]
  %.not4.i.i.us = icmp eq i8 %.1.i9.i.i.us, 103
  br i1 %.not4.i.i.us, label %bb.fs, label %start_page.exit.thread.us

bb.fs:                                            ; preds = %get8.exit10.i.i.us
  %i.zm = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i11.i.i.us = icmp eq ptr %i.zm, null
  br i1 %.not.i11.i.i.us, label %bb.fv, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.zn = load ptr, ptr %i.di, align 8
  %.not11.i12.i.i.us = icmp ult ptr %i.zm, %i.zn
  br i1 %.not11.i12.i.i.us, label %bb.fu, label %capture_pattern.exit.thread.sink.split.i.us

bb.fu:                                            ; preds = %bb.ft
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 1
  store ptr %i.zo, ptr %i.dh, align 8
  %i.zp = load i8, ptr %i.zm, align 1
  br label %get8.exit14.i.i.us

bb.fv:                                            ; preds = %bb.fs
  %i.zq = load ptr, ptr %i.dk, align 8
  %i.zr = call i32 @fgetc(ptr noundef %i.zq)      ; 2 uses
  %i.zs = icmp eq i32 %i.zr, -1
  br i1 %i.zs, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zt = trunc i32 %i.zr to i8
  br label %get8.exit14.i.i.us

get8.exit14.i.i.us:                               ; preds = %bb.fw, %bb.fu
  %.1.i13.i.i.us = phi i8 [ %i.zt, %bb.fw ], [ %i.zp, %bb.fu ]
  %.not5.i.i.us = icmp eq i8 %.1.i13.i.i.us, 103
  br i1 %.not5.i.i.us, label %bb.fx, label %start_page.exit.thread.us

bb.fx:                                            ; preds = %get8.exit14.i.i.us
  %i.zu = load ptr, ptr %i.dh, align 8            ; 4 uses
  %.not.i15.i.i.us = icmp eq ptr %i.zu, null
  br i1 %.not.i15.i.i.us, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zv = load ptr, ptr %i.di, align 8
  %.not11.i16.i.i.us = icmp ult ptr %i.zu, %i.zv
  br i1 %.not11.i16.i.i.us, label %bb.fz, label %capture_pattern.exit.thread.sink.split.i.us

bb.fz:                                            ; preds = %bb.fy
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  store ptr %i.zw, ptr %i.dh, align 8
  %i.zx = load i8, ptr %i.zu, align 1
  %i.zy = freeze i8 %i.zx
  br label %capture_pattern.exit.i.us

bb.ga:                                            ; preds = %bb.fx
  %i.zz = load ptr, ptr %i.dk, align 8
  %i.aaa = call i32 @fgetc(ptr noundef %i.zz)     ; 2 uses
  %i.aab = icmp eq i32 %i.aaa, -1
  br i1 %i.aab, label %capture_pattern.exit.thread.sink.split.i.us, label %bb.gb
end_hunk_3
begin_hunk_4_@decode_residue:bb.a

.lr.ph.i38.i.us:                                  ; preds = %.preheader36.i.i.us
  %i.agt = sext i32 %i.agq to i64                 ; 3 uses
  %wide.trip.count.i39.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %xtraiter999 = and i64 %wide.trip.count.i39.i.us, 1
  %i.agu = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.agu, label %.epil.preheader998, label %.lr.ph.i38.i.us.new

.lr.ph.i38.i.us.new:                              ; preds = %.lr.ph.i38.i.us
  %unroll_iter1003 = and i64 %wide.trip.count.i39.i.us, 2147483646
  br label %bb.im

bb.im:                                            ; preds = %bb.im, %.lr.ph.i38.i.us.new
  %indvars.iv.i40.i.us = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %indvars.iv.next.i41.i.us.1, %bb.im ] ; 4 uses
  %.03039.i.i.us = phi float [ 0.000000e+00, %.lr.ph.i38.i.us.new ], [ %i.aho, %bb.im ]
  %niter1004 = phi i64 [ 0, %.lr.ph.i38.i.us.new ], [ %niter1004.next.1, %bb.im ]
  %i.agv = load ptr, ptr %i.ya, align 8
  %i.agw = getelementptr [4 x i8], ptr %i.agv, i64 %indvars.iv.i40.i.us
  %i.agx = getelementptr [4 x i8], ptr %i.agw, i64 %i.agt
  %i.agy = load float, ptr %i.agx, align 4
  %i.agz = fadd float %.03039.i.i.us, %i.agy      ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i40.i.us ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4
  %i.ahc = fadd float %i.ahb, %i.agz
  store float %i.ahc, ptr %i.aha, align 4
  %i.ahd = load float, ptr %i.yb, align 8
  %i.ahe = fadd float %i.agz, %i.ahd
  %indvars.iv.next.i41.i.us = or disjoint i64 %indvars.iv.i40.i.us, 1 ; 2 uses
  %i.ahf = load ptr, ptr %i.ya, align 8
  %i.ahg = getelementptr [4 x i8], ptr %i.ahf, i64 %indvars.iv.next.i41.i.us
  %i.ahh = getelementptr [4 x i8], ptr %i.ahg, i64 %i.agt
  %i.ahi = load float, ptr %i.ahh, align 4
  %i.ahj = fadd float %i.ahe, %i.ahi              ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.next.i41.i.us ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4
  %i.ahm = fadd float %i.ahl, %i.ahj
  store float %i.ahm, ptr %i.ahk, align 4
  %i.ahn = load float, ptr %i.yb, align 8
  %i.aho = fadd float %i.ahj, %i.ahn              ; 2 uses
  %indvars.iv.next.i41.i.us.1 = add nuw nsw i64 %indvars.iv.i40.i.us, 2 ; 2 uses
  %niter1004.next.1 = add i64 %niter1004, 2       ; 2 uses
  %niter1004.ncmp.1 = icmp eq i64 %niter1004.next.1, %unroll_iter1003
  br i1 %niter1004.ncmp.1, label %.loopexit48.i.us.loopexit972.unr-lcssa, label %bb.im

.preheader.i.i.us:                                ; preds = %codebook_decode_start.exit.us
  br i1 %i.ags, label %.lr.ph41.i.i.us, label %.loopexit48.i.us

.lr.ph41.i.i.us:                                  ; preds = %.preheader.i.i.us
  %i.ahp = sext i32 %i.agq to i64                 ; 3 uses
  %wide.trip.count47.i.i.us = zext nneg i32 %spec.select.i36.i.us to i64 ; 2 uses
  %xtraiter1006 = and i64 %wide.trip.count47.i.i.us, 1
  %i.ahq = icmp eq i32 %spec.select.i36.i.us, 1
  br i1 %i.ahq, label %.epil.preheader1005, label %.lr.ph41.i.i.us.new

.lr.ph41.i.i.us.new:                              ; preds = %.lr.ph41.i.i.us
  %unroll_iter1010 = and i64 %wide.trip.count47.i.i.us, 2147483646
  br label %bb.in

bb.in:                                            ; preds = %bb.in, %.lr.ph41.i.i.us.new
  %indvars.iv44.i.i.us = phi i64 [ 0, %.lr.ph41.i.i.us.new ], [ %indvars.iv.next45.i.i.us.1, %bb.in ] ; 4 uses
  %niter1011 = phi i64 [ 0, %.lr.ph41.i.i.us.new ], [ %niter1011.next.1, %bb.in ]
  %i.ahr = load ptr, ptr %i.ya, align 8
  %i.ahs = getelementptr [4 x i8], ptr %i.ahr, i64 %indvars.iv44.i.i.us
  %i.aht = getelementptr [4 x i8], ptr %i.ahs, i64 %i.ahp
  %i.ahu = load float, ptr %i.aht, align 4
  %i.ahv = fadd float %i.ahu, 0.000000e+00
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv44.i.i.us ; 2 uses
  %i.ahx = load float, ptr %i.ahw, align 4
  %i.ahy = fadd float %i.ahx, %i.ahv
  store float %i.ahy, ptr %i.ahw, align 4
  %indvars.iv.next45.i.i.us = or disjoint i64 %indvars.iv44.i.i.us, 1 ; 2 uses
  %i.ahz = load ptr, ptr %i.ya, align 8
  %i.aia = getelementptr [4 x i8], ptr %i.ahz, i64 %indvars.iv.next45.i.i.us
  %i.aib = getelementptr [4 x i8], ptr %i.aia, i64 %i.ahp
  %i.aic = load float, ptr %i.aib, align 4
  %i.aid = fadd float %i.aic, 0.000000e+00
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.next45.i.i.us ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4
  %i.aig = fadd float %i.aif, %i.aid
  store float %i.aig, ptr %i.aie, align 4
  %indvars.iv.next45.i.i.us.1 = add nuw nsw i64 %indvars.iv44.i.i.us, 2 ; 2 uses
  %niter1011.next.1 = add i64 %niter1011, 2       ; 2 uses
  %niter1011.ncmp.1 = icmp eq i64 %niter1011.next.1, %unroll_iter1010
  br i1 %niter1011.ncmp.1, label %.loopexit48.i.us.loopexit.unr-lcssa, label %bb.in

.loopexit48.i.us.loopexit.unr-lcssa:              ; preds = %bb.in
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1008.not, label %.loopexit48.i.us, label %.epil.preheader1005

.epil.preheader1005:                              ; preds = %.loopexit48.i.us.loopexit.unr-lcssa, %.lr.ph41.i.i.us
  %indvars.iv44.i.i.us.epil.init = phi i64 [ 0, %.lr.ph41.i.i.us ], [ %indvars.iv.next45.i.i.us.1, %.loopexit48.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1009 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1009)
  %i.aih = load ptr, ptr %i.ya, align 8
  %i.aii = getelementptr [4 x i8], ptr %i.aih, i64 %indvars.iv44.i.i.us.epil.init
  %i.aij = getelementptr [4 x i8], ptr %i.aii, i64 %i.ahp
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = fadd float %i.aik, 0.000000e+00
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv44.i.i.us.epil.init ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4
  %i.aio = fadd float %i.ain, %i.ail
  store float %i.aio, ptr %i.aim, align 4
  br label %.loopexit48.i.us

.loopexit48.i.us.loopexit972.unr-lcssa:           ; preds = %bb.im
  %lcmp.mod1001.not = icmp eq i64 %xtraiter999, 0
  br i1 %lcmp.mod1001.not, label %.loopexit48.i.us, label %.epil.preheader998

.epil.preheader998:                               ; preds = %.loopexit48.i.us.loopexit972.unr-lcssa, %.lr.ph.i38.i.us
  %indvars.iv.i40.i.us.epil.init = phi i64 [ 0, %.lr.ph.i38.i.us ], [ %indvars.iv.next.i41.i.us.1, %.loopexit48.i.us.loopexit972.unr-lcssa ] ; 2 uses
  %.03039.i.i.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.us ], [ %i.aho, %.loopexit48.i.us.loopexit972.unr-lcssa ]
  %lcmp.mod1002 = trunc i32 %spec.select.i36.i.us to i1
  call void @llvm.assume(i1 %lcmp.mod1002)
  %i.aip = load ptr, ptr %i.ya, align 8
  %i.aiq = getelementptr [4 x i8], ptr %i.aip, i64 %indvars.iv.i40.i.us.epil.init
  %i.air = getelementptr [4 x i8], ptr %i.aiq, i64 %i.agt
  %i.ais = load float, ptr %i.air, align 4
  %i.ait = fadd float %.03039.i.i.us.epil.init, %i.ais
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i40.i.us.epil.init ; 2 uses
  %i.aiv = load float, ptr %i.aiu, align 4
  %i.aiw = fadd float %i.aiv, %i.ait
  store float %i.aiw, ptr %i.aiu, align 4
  br label %.loopexit48.i.us

.loopexit48.i.us:                                 ; preds = %.epil.preheader998, %.loopexit48.i.us.loopexit972.unr-lcssa, %.epil.preheader1005, %.loopexit48.i.us.loopexit.unr-lcssa, %.preheader.i.i.us, %.preheader36.i.i.us
  %i.aix = load i32, ptr %i.xu, align 8           ; 2 uses
  %i.aiy = add nsw i32 %i.aix, %.153.i.us         ; 2 uses
  %i.aiz = add nsw i32 %i.aix, %.03152.i.us
  %i.aja = icmp slt i32 %i.aiy, %i.xs
  br i1 %i.aja, label %bb.fa, label %.thread614.us686

.thread614.us686:                                 ; preds = %.loopexit48.i.us, %.preheader.i.us, %bb.ez, %bb.ey
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count765
  br i1 %exitcond766.not, label %._crit_edge676.split.us687, label %bb.ey

._crit_edge676.split.us687:                       ; preds = %.thread614.us686
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.ajb = add nsw i32 %.1280680.us, 1            ; 3 uses
  %i.ajc = icmp slt i64 %indvars.iv.next768, %i.dq
  %i.ajd = icmp slt i32 %i.ajb, %i.ac
  %i.aje = select i1 %i.ajc, i1 %i.ajd, i1 false
  br i1 %i.aje, label %.preheader637.us, label %._crit_edge682

.preheader637:                                    ; preds = %.preheader637.lr.ph, %.preheader637
  %.1280680 = phi i32 [ %i.ajg, %.preheader637 ], [ %.0279697, %.preheader637.lr.ph ]
  %.3308679 = phi i32 [ %i.ajf, %.preheader637 ], [ 0, %.preheader637.lr.ph ]
  %i.ajf = add nuw nsw i32 %.3308679, 1           ; 2 uses
  %i.ajg = add nsw i32 %.1280680, 1               ; 3 uses
  %i.ajh = icmp slt i32 %i.ajf, %i.r
  %i.aji = icmp slt i32 %i.ajg, %i.ac
  %i.ajj = select i1 %i.ajh, i1 %i.aji, i1 false
  br i1 %i.ajj, label %.preheader637, label %._crit_edge682

._crit_edge76.i403:                               ; preds = %.thread66.i402.us.us.us, %bb.ep
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit432.thread581

codebook_decode_scalar_raw.exit432.thread581:     ; preds = %bb.eu, %bb.eq, %._crit_edge76.i403
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i365

.thread.i365:                                     ; preds = %bb.ew, %codebook_decode_scalar_raw.exit432.us.us.us, %bb.es, %codebook_decode_scalar_raw.exit432.thread581
  %i.ajk = load i8, ptr %i.cz, align 4
  %.not.i367 = icmp eq i8 %i.ajk, 0
  br i1 %.not.i367, label %bb.io, label %.thread31.sink.split.i368

bb.io:                                            ; preds = %.thread.i365
  %i.ajl = load i32, ptr %i.da, align 4
  %.not27.i370 = icmp eq i32 %i.ajl, 0
  br i1 %.not27.i370, label %.thread31.sink.split.i368, label %.thread618

.thread31.sink.split.i368:                        ; preds = %bb.cd, %bb.io, %.thread.i365
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge76.i:                                  ; preds = %.thread66.i.us, %bb.ie
  store i32 21, ptr %i.dl, align 4
  br label %codebook_decode_scalar_raw.exit.thread606

codebook_decode_scalar_raw.exit.thread606:        ; preds = %bb.ij, %bb.if, %._crit_edge76.i
  store i32 0, ptr %i.cx, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.il, %codebook_decode_scalar_raw.exit.us, %bb.ih, %codebook_decode_scalar_raw.exit.thread606
  %i.ajm = load i8, ptr %i.cz, align 4
  %.not.i361 = icmp eq i8 %i.ajm, 0
  br i1 %.not.i361, label %bb.ip, label %.thread31.sink.split.i

bb.ip:                                            ; preds = %.thread.i
  %i.ajn = load i32, ptr %i.da, align 4
  %.not27.i = icmp eq i32 %i.ajn, 0
  br i1 %.not27.i, label %.thread31.sink.split.i, label %.thread618

.thread31.sink.split.i:                           ; preds = %bb.fa, %bb.ip, %.thread.i
  store i32 21, ptr %i.dl, align 4
  br label %.thread618

._crit_edge682:                                   ; preds = %.preheader637, %._crit_edge676.split.us687, %._crit_edge676.split.us.us.us, %.loopexit639
  %.1280.lcssa = phi i32 [ %.0279697, %.loopexit639 ], [ %i.ajb, %._crit_edge676.split.us687 ], [ %i.wx, %._crit_edge676.split.us.us.us ], [ %i.ajg, %.preheader637 ] ; 2 uses
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1
  %i.ajo = icmp slt i32 %.1280.lcssa, %i.ac
  br i1 %i.ajo, label %bb.ax, label %._crit_edge701

._crit_edge701:                                   ; preds = %._crit_edge682
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next782, 8
  br i1 %exitcond784.not, label %.thread618, label %.preheader641

.thread618:                                       ; preds = %._crit_edge701, %bb.bx, %bb.m, %..loopexit626_crit_edge, %..loopexit_crit_edge.us, %.preheader628.split, %.preheader642, %.preheader628.split.us, %bb.io, %.thread31.sink.split.i368, %bb.ip, %.thread31.sink.split.i, %.thread535, %.thread546, %._crit_edge705
  store i32 %i.ae, ptr %i.ad, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #23 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = zext nneg i32 %3 to i64                  ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8              ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388424 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409425 = icmp eq i32 %i.a, 0
  br i1 %.not409425, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 4 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = lshr exact i64 %i.ab, 1
  %i.af = and i64 %i.ae, 9223372036854775800      ; 2 uses
  %i.ag = add nsw i64 %.idx, -8
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %i.t, i64 %i.ah   ; 2 uses
  %i.aj = or i64 %i.ab, 12
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.x, i64 %i.af
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %bound0 = icmp ult ptr %i.ai, %i.ak
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0518 = icmp ult ptr %i.ai, %i.am
  %bound1519 = icmp ult ptr %i.x, %i.z
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx = or i1 %found.conflict, %found.conflict520
  br i1 %conflict.rdx, label %.lr.ph.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.an = and i64 %i.ad, 3                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 4, i64 %i.an
  %n.vec = sub nsw i64 %i.ad, %i.ap               ; 4 uses
  %i.aq = mul i64 %n.vec, -8                      ; 2 uses
  %i.ar = getelementptr i8, ptr %.0388424, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  %i.at = shl i64 %n.vec, 4
  %i.au = getelementptr i8, ptr %0, i64 %i.at
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388424, i64 %i.ax
  %i.ay = shl i64 %index, 4                       ; 4 uses
  %next.gep521.a = getelementptr i8, ptr %0, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep522.a = getelementptr i8, ptr %i.az, i64 16
  %i.ba = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.ba, i64 32
  %i.bb = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.bb, i64 48
  %i.bc = shl i64 %index, 3
  %next.gep525 = getelementptr i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.bd = load float, ptr %next.gep521.a, align 4, !alias.scope !1241
  %i.be = load float, ptr %next.gep522.a, align 4, !alias.scope !1241
  %i.bf = load float, ptr %next.gep523, align 4, !alias.scope !1241
  %i.bg = load float, ptr %next.gep524, align 4, !alias.scope !1241
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3 ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1242 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep521.a, i64 8
  %i.bm = getelementptr i8, ptr %i.az, i64 24
  %i.bn = getelementptr i8, ptr %i.ba, i64 40
  %i.bo = getelementptr i8, ptr %i.bb, i64 56
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !1241
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !1241
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !1241
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !1241
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3 ; 2 uses
  %i.bx = fneg <8 x float> %wide.vec
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bz = fmul <4 x float> %i.bw, %i.by
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec, <4 x float> %i.bz)
  %wide.vec527 = load <8 x float>, ptr %next.gep525, align 4, !alias.scope !1242 ; 2 uses
  %strided.vec528 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec529 = shufflevector <8 x float> %wide.vec527, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cb = fmul <4 x float> %i.bw, %strided.vec528
  %i.cc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %strided.vec529, <4 x float> %i.cb)
  %i.cd = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cc, <4 x float> %i.ca, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.cd, align 4, !alias.scope !1243, !noalias !1244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %.lr.ph.preheader537, label %vector.body, !llvm.loop !1239

.lr.ph.preheader537:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388429.ph = phi ptr [ %.0388424, %vector.memcheck ], [ %.0388424, %.lr.ph.preheader ], [ %i.ar, %vector.body ]
  %.pn419428.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0397427.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  %.0399426.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.aw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader537, %.lr.ph
  %.0388429 = phi ptr [ %.0388, %.lr.ph ], [ %.0388429.ph, %.lr.ph.preheader537 ] ; 3 uses
  %.pn419428 = phi ptr [ %.0388429, %.lr.ph ], [ %.pn419428.ph, %.lr.ph.preheader537 ]
  %.0397427 = phi ptr [ %i.cw, %.lr.ph ], [ %.0397427.ph, %.lr.ph.preheader537 ] ; 4 uses
  %.0399426 = phi ptr [ %i.cv, %.lr.ph ], [ %.0399426.ph, %.lr.ph.preheader537 ] ; 4 uses
  %i.cf = load float, ptr %.0397427, align 4
  %i.cg = load float, ptr %.0399426, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.0397427, i64 8 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.0399426, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = fneg float %i.ck
  %i.cm = fmul float %i.ci, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.cm)
  %i.co = getelementptr i8, ptr %.pn419428, i64 -4
  store float %i.cn, ptr %i.co, align 4
  %i.cp = load float, ptr %.0397427, align 4
  %i.cq = load float, ptr %i.cj, align 4
  %i.cr = load float, ptr %i.ch, align 4
  %i.cs = load float, ptr %.0399426, align 4
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.ct)
  store float %i.cu, ptr %.0388429, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.0399426, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0397427, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388429, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.cw, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !1240

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.cv, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388424, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
  %.not410431 = icmp ult ptr %.0388.lcssa, %i.t
  br i1 %.not410431, label %._crit_edge437, label %.lr.ph436.preheader

.lr.ph436.preheader:                              ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %i.aa, i64 -12
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %.lr.ph436
  %.1389434 = phi ptr [ %i.dq, %.lr.ph436 ], [ %.0388.lcssa, %.lr.ph436.preheader ] ; 3 uses
  %.1398433 = phi ptr [ %i.ds, %.lr.ph436 ], [ %i.cx, %.lr.ph436.preheader ] ; 4 uses
  %.1400432 = phi ptr [ %i.dr, %.lr.ph436 ], [ %.0399.lcssa, %.lr.ph436.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1398433, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = fneg float %i.cz
  %i.db = load float, ptr %.1400432, align 4
  %i.dc = load float, ptr %.1398433, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.1400432, i64 4 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fmul float %i.dc, %i.de
  %i.dg = call float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.1389434, i64 4
  store float %i.dg, ptr %i.dh, align 4
  %i.di = load float, ptr %i.cy, align 4
  %i.dj = fneg float %i.di
  %i.dk = load float, ptr %i.dd, align 4
  %i.dl = load float, ptr %.1398433, align 4
  %i.dm = fneg float %i.dl
  %i.dn = load float, ptr %.1400432, align 4
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = call float @llvm.fmuladd.f32(float %i.dj, float %i.dk, float %i.do)
  store float %i.dp, ptr %.1389434, align 4
  %i.dq = getelementptr inbounds i8, ptr %.1389434, i64 -8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1400432, i64 8
  %i.ds = getelementptr inbounds i8, ptr %.1398433, i64 -16
  %.not410 = icmp ult ptr %i.dq, %i.t
  br i1 %.not410, label %._crit_edge437, label %.lr.ph436

._crit_edge437:                                   ; preds = %.lr.ph436, %._crit_edge
  %i.dt = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.du = sext i32 %i.b to i64                    ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.t, i64 %i.du ; 3 uses
  %.0405438 = getelementptr i8, ptr %i.dt, i64 -32 ; 2 uses
  %.not411439 = icmp ult ptr %.0405438, %i.x
  br i1 %.not411439, label %._crit_edge448, label %.lr.ph447.preheader

.lr.ph447.preheader:                              ; preds = %._crit_edge437
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.du
  br label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.preheader, %.lr.ph447
  %.0405445 = phi ptr [ %.0405, %.lr.ph447 ], [ %.0405438, %.lr.ph447.preheader ] ; 4 uses
  %.0401444 = phi ptr [ %i.gb, %.lr.ph447 ], [ %i.t, %.lr.ph447.preheader ] ; 6 uses
  %.0402443 = phi ptr [ %i.ga, %.lr.ph447 ], [ %i.dv, %.lr.ph447.preheader ] ; 6 uses
  %.0403442 = phi ptr [ %i.fz, %.lr.ph447 ], [ %0, %.lr.ph447.preheader ] ; 5 uses
  %.0404441 = phi ptr [ %i.fy, %.lr.ph447 ], [ %i.dw, %.lr.ph447.preheader ] ; 5 uses
  %.pn418440 = phi ptr [ %.0405445, %.lr.ph447 ], [ %i.dt, %.lr.ph447.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0402443, i64 4
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0401444, i64 4
  %i.ea = load float, ptr %i.dz, align 4          ; 2 uses
  %i.eb = fsub float %i.dy, %i.ea                 ; 2 uses
  %i.ec = load float, ptr %.0402443, align 4
  %i.ed = load float, ptr %.0401444, align 4
  %i.ee = fsub float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fadd float %i.dy, %i.ea
  %i.eg = getelementptr inbounds nuw i8, ptr %.0404441, i64 4
  store float %i.ef, ptr %i.eg, align 4
  %i.eh = load float, ptr %.0402443, align 4
  %i.ei = load float, ptr %.0401444, align 4
  %i.ej = fadd float %i.eh, %i.ei
  store float %i.ej, ptr %.0404441, align 4
  %i.ek = getelementptr i8, ptr %.pn418440, i64 -16 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4
  %i.em = getelementptr i8, ptr %.pn418440, i64 -12 ; 2 uses
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fneg float %i.en
  %i.ep = fmul float %i.ee, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.eb, float %i.el, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.0403442, i64 4
  store float %i.eq, ptr %i.er, align 4
  %i.es = load float, ptr %i.ek, align 4
  %i.et = load float, ptr %i.em, align 4
  %i.eu = fmul float %i.eb, %i.et
  %i.ev = call float @llvm.fmuladd.f32(float %i.ee, float %i.es, float %i.eu)
  store float %i.ev, ptr %.0403442, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.0402443, i64 12
  %i.ex = load float, ptr %i.ew, align 4          ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0401444, i64 12
  %i.ez = load float, ptr %i.ey, align 4          ; 2 uses
  %i.fa = fsub float %i.ex, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0402443, i64 8 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.0401444, i64 8 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = fsub float %i.fc, %i.fe                 ; 2 uses
  %i.fg = fadd float %i.ex, %i.ez
  %i.fh = getelementptr inbounds nuw i8, ptr %.0404441, i64 12
  store float %i.fg, ptr %i.fh, align 4
  %i.fi = load float, ptr %i.fb, align 4
  %i.fj = load float, ptr %i.fd, align 4
  %i.fk = fadd float %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.0404441, i64 8
  store float %i.fk, ptr %i.fl, align 4
  %i.fm = load float, ptr %.0405445, align 4
  %i.fn = getelementptr i8, ptr %.pn418440, i64 -28 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = fneg float %i.fo
  %i.fq = fmul float %i.ff, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %i.fa, float %i.fm, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0403442, i64 12
  store float %i.fr, ptr %i.fs, align 4
  %i.ft = load float, ptr %.0405445, align 4
  %i.fu = load float, ptr %i.fn, align 4
  %i.fv = fmul float %i.fa, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.ff, float %i.ft, float %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %.0403442, i64 8
  store float %i.fw, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.0404441, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0403442, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0402443, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.0401444, i64 16
  %.0405 = getelementptr i8, ptr %.0405445, i64 -32 ; 2 uses
  %.not411 = icmp ult ptr %.0405, %i.x
  br i1 %.not411, label %._crit_edge448, label %.lr.ph447

._crit_edge448:                                   ; preds = %.lr.ph447, %._crit_edge437
  %i.gc = icmp slt i32 %1, 0
  br i1 %i.gc, label %ilog.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge448
  %i.gd = icmp samesign ult i32 %1, 16384
  br i1 %i.gd, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ge = icmp samesign ult i32 %1, 16
  br i1 %i.ge, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gf = zext nneg i32 %1 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = sext i8 %i.gh to i32
  br label %ilog.exit

bb.h:                                             ; preds = %bb.f
  %i.gj = icmp samesign ult i32 %1, 512
  br i1 %i.gj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gk = lshr i32 %1, 5
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = sext i8 %i.gn to i32
  %i.gp = add nsw i32 %i.go, 5
  br label %ilog.exit

bb.j:                                             ; preds = %bb.h
  %i.gq = lshr i32 %1, 10
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, 10
  br label %ilog.exit

bb.k:                                             ; preds = %bb.e
  %i.gw = icmp samesign ult i32 %1, 16777216
  br i1 %i.gw, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.gx = icmp samesign ult i32 %1, 524288
  br i1 %i.gx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gy = lshr i32 %1, 15
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = sext i8 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, 15
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.he = lshr i32 %1, 20
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = sext i8 %i.hh to i32
  %i.hj = add nsw i32 %i.hi, 20
  br label %ilog.exit

bb.o:                                             ; preds = %bb.k
  %i.hk = icmp samesign ult i32 %1, 536870912
  br i1 %i.hk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hl = lshr i32 %1, 25
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, 25
  br label %ilog.exit

bb.q:                                             ; preds = %bb.o
  %i.hr = lshr i32 %1, 30
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, 30
  br label %ilog.exit

ilog.exit:                                        ; preds = %._crit_edge448, %bb.g, %bb.i, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i420 = phi i32 [ %i.hw, %bb.q ], [ %i.gi, %bb.g ], [ %i.gp, %bb.i ], [ %i.gv, %bb.j ], [ %i.hd, %bb.m ], [ %i.hj, %bb.n ], [ %i.hq, %bb.p ], [ 0, %._crit_edge448 ] ; 2 uses
  %i.hx = ashr i32 %1, 4                          ; 3 uses
  %i.hy = add nsw i32 %i.a, -1                    ; 8 uses
  %i.hz = sub nsw i32 0, %i.c                     ; 2 uses
  call fastcc void @imdct_step3_iter0_loop(i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.hy, i32 noundef %i.hz, ptr noundef nonnull %i.x)
  %i.ia = sub nsw i32 %i.hy, %i.b
  call fastcc void @imdct_step3_iter0_loop(i32 noundef %i.hx, ptr noundef %0, i32 noundef %i.ia, i32 noundef %i.hz, ptr noundef nonnull %i.x)
  %i.ib = ashr i32 %1, 5                          ; 6 uses
  %i.ic = sub nsw i32 0, %i.hx                    ; 4 uses
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.hy, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.id = sub nsw i32 %i.hy, %i.c
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.id, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.ie = shl nsw i32 %i.c, 1
  %i.if = sub nsw i32 %i.hy, %i.ie
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.if, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %.neg = mul nsw i32 %i.c, -3
  %i.ig = add nsw i32 %.neg, %i.hy
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %i.ib, ptr noundef %0, i32 noundef %i.ig, i32 noundef %i.ic, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.ih = add nsw i32 %.0.i420, -4
  %i.ii = ashr i32 %i.ih, 1                       ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 2
  br i1 %i.ij, label %.lr.ph453.preheader, label %.preheader

.lr.ph453.preheader:                              ; preds = %ilog.exit
  %i.ik = sext i32 %i.hy to i64
  br label %.lr.ph453

.loopexit423:                                     ; preds = %imdct_step3_inner_r_loop.exit.loopexit, %.lr.ph451, %.lr.ph453
  %exitcond494.not = icmp eq i32 %i.ip, %i.ii
  br i1 %exitcond494.not, label %.preheader, label %.lr.ph453

.preheader:                                       ; preds = %.loopexit423, %ilog.exit
  %.0.lcssa = phi i32 [ 2, %ilog.exit ], [ %i.ii, %.loopexit423 ] ; 2 uses
  %i.il = add nsw i32 %.0.i420, -7                ; 2 uses
  %i.im = icmp slt i32 %.0.lcssa, %i.il
  br i1 %i.im, label %.lr.ph461.preheader, label %._crit_edge462

.lr.ph461.preheader:                              ; preds = %.preheader
  %4 = add nsw i64 %i.y, -1
  br label %.lr.ph461

.lr.ph453:                                        ; preds = %.lr.ph453.preheader, %.loopexit423
  %.0452 = phi i32 [ %i.ip, %.loopexit423 ], [ 2, %.lr.ph453.preheader ] ; 5 uses
  %i.in = add nuw nsw i32 %.0452, 2
  %i.io = ashr i32 %1, %i.in                      ; 2 uses
  %i.ip = add nuw nsw i32 %.0452, 1               ; 2 uses
  %i.iq = shl nuw i32 2, %.0452                   ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph451, label %.loopexit423

.lr.ph451:                                        ; preds = %.lr.ph453
  %i.is = ashr i32 %i.io, 1
  %i.it = add nuw nsw i32 %.0452, 4
  %i.iu = ashr i32 %1, %i.it
  %i.iv = ashr i32 %i.iu, 2                       ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  %i.ix = shl nuw i32 8, %.0452
  %i.iy = sub nsw i32 0, %i.is
  %i.iz = sext i32 %i.iy to i64
  %i.ja = sext i32 %i.ix to i64                   ; 4 uses
  br i1 %i.iw, label %.lr.ph.i.preheader, label %.loopexit423

.lr.ph.i.preheader:                               ; preds = %.lr.ph451
  %i.jb = sext i32 %i.io to i64
  %wide.trip.count = zext nneg i32 %i.iq to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %imdct_step3_inner_r_loop.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %imdct_step3_inner_r_loop.exit.loopexit ] ; 2 uses
  %i.jc = mul nsw i64 %indvars.iv, %i.jb
  %i.jd = sub nsw i64 %i.ik, %i.jc
  %i.je = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.iz
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %.094.i = phi ptr [ %i.jf, %.lr.ph.i ], [ %i.mw, %bb.r ] ; 10 uses
  %.08893.i = phi ptr [ %i.je, %.lr.ph.i ], [ %i.mv, %bb.r ] ; 10 uses
  %.08992.i = phi i32 [ %i.iv, %.lr.ph.i ], [ %i.my, %bb.r ] ; 2 uses
  %.09091.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.mx, %bb.r ] ; 4 uses
  %i.jg = load float, ptr %.08893.i, align 4      ; 2 uses
  %i.jh = load float, ptr %.094.i, align 4        ; 2 uses
  %i.ji = fsub float %i.jg, %i.jh                 ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %.08893.i, i64 -4 ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4          ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.094.i, i64 -4 ; 3 uses
  %i.jm = load float, ptr %i.jl, align 4
  %i.jn = fsub float %i.jk, %i.jm                 ; 2 uses
  %i.jo = fadd float %i.jg, %i.jh
  store float %i.jo, ptr %.08893.i, align 4
  %i.jp = load float, ptr %i.jl, align 4
  %i.jq = fadd float %i.jk, %i.jp
  store float %i.jq, ptr %i.jj, align 4
  %i.jr = load float, ptr %.09091.i, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %.09091.i, i64 4 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fneg float %i.jt
  %i.jv = fmul float %i.jn, %i.ju
  %i.jw = call float @llvm.fmuladd.f32(float %i.ji, float %i.jr, float %i.jv)
  store float %i.jw, ptr %.094.i, align 4
  %i.jx = load float, ptr %.09091.i, align 4
  %i.jy = load float, ptr %i.js, align 4
  %i.jz = fmul float %i.ji, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jn, float %i.jx, float %i.jz)
  store float %i.ka, ptr %i.jl, align 4
  %i.kb = getelementptr inbounds [4 x i8], ptr %.09091.i, i64 %i.ja ; 4 uses
  %i.kc = getelementptr inbounds i8, ptr %.08893.i, i64 -8 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4          ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.094.i, i64 -8 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4          ; 2 uses
  %i.kg = fsub float %i.kd, %i.kf                 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.08893.i, i64 -12 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4          ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.094.i, i64 -12 ; 3 uses
  %i.kk = load float, ptr %i.kj, align 4
  %i.kl = fsub float %i.ki, %i.kk                 ; 2 uses
  %i.km = fadd float %i.kd, %i.kf
  store float %i.km, ptr %i.kc, align 4
  %i.kn = load float, ptr %i.kj, align 4
  %i.ko = fadd float %i.ki, %i.kn
  store float %i.ko, ptr %i.kh, align 4
  %i.kp = load float, ptr %i.kb, align 4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4
  %i.ks = fneg float %i.kr
  %i.kt = fmul float %i.kl, %i.ks
  %i.ku = call float @llvm.fmuladd.f32(float %i.kg, float %i.kp, float %i.kt)
  store float %i.ku, ptr %i.ke, align 4
  %i.kv = load float, ptr %i.kb, align 4
  %i.kw = load float, ptr %i.kq, align 4
  %i.kx = fmul float %i.kg, %i.kw
  %i.ky = call float @llvm.fmuladd.f32(float %i.kl, float %i.kv, float %i.kx)
  store float %i.ky, ptr %i.kj, align 4
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.ja ; 4 uses
  %i.la = getelementptr inbounds i8, ptr %.08893.i, i64 -16 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4          ; 2 uses
  %i.lc = getelementptr inbounds i8, ptr %.094.i, i64 -16 ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4          ; 2 uses
  %i.le = fsub float %i.lb, %i.ld                 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %.08893.i, i64 -20 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4          ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.094.i, i64 -20 ; 3 uses
  %i.li = load float, ptr %i.lh, align 4
  %i.lj = fsub float %i.lg, %i.li                 ; 2 uses
  %i.lk = fadd float %i.lb, %i.ld
  store float %i.lk, ptr %i.la, align 4
  %i.ll = load float, ptr %i.lh, align 4
  %i.lm = fadd float %i.lg, %i.ll
  store float %i.lm, ptr %i.lf, align 4
  %i.ln = load float, ptr %i.kz, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 2 uses
  %i.lp = load float, ptr %i.lo, align 4
  %i.lq = fneg float %i.lp
  %i.lr = fmul float %i.lj, %i.lq
  %i.ls = call float @llvm.fmuladd.f32(float %i.le, float %i.ln, float %i.lr)
  store float %i.ls, ptr %i.lc, align 4
  %i.lt = load float, ptr %i.kz, align 4
  %i.lu = load float, ptr %i.lo, align 4
  %i.lv = fmul float %i.le, %i.lu
  %i.lw = call float @llvm.fmuladd.f32(float %i.lj, float %i.lt, float %i.lv)
  store float %i.lw, ptr %i.lh, align 4
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ja ; 4 uses
  %i.ly = getelementptr inbounds i8, ptr %.08893.i, i64 -24 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4          ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %.094.i, i64 -24 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4          ; 2 uses
  %i.mc = fsub float %i.lz, %i.mb                 ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %.08893.i, i64 -28 ; 2 uses
  %i.me = load float, ptr %i.md, align 4          ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %.094.i, i64 -28 ; 3 uses
  %i.mg = load float, ptr %i.mf, align 4
  %i.mh = fsub float %i.me, %i.mg                 ; 2 uses
  %i.mi = fadd float %i.lz, %i.mb
  store float %i.mi, ptr %i.ly, align 4
  %i.mj = load float, ptr %i.mf, align 4
  %i.mk = fadd float %i.me, %i.mj
  store float %i.mk, ptr %i.md, align 4
  %i.ml = load float, ptr %i.lx, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4
  %i.mo = fneg float %i.mn
  %i.mp = fmul float %i.mh, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mc, float %i.ml, float %i.mp)
  store float %i.mq, ptr %i.ma, align 4
  %i.mr = load float, ptr %i.lx, align 4
  %i.ms = load float, ptr %i.mm, align 4
  %i.mt = fmul float %i.mc, %i.ms
  %i.mu = call float @llvm.fmuladd.f32(float %i.mh, float %i.mr, float %i.mt)
  store float %i.mu, ptr %i.mf, align 4
  %i.mv = getelementptr inbounds i8, ptr %.08893.i, i64 -32
  %i.mw = getelementptr inbounds i8, ptr %.094.i, i64 -32
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.ja
  %i.my = add nsw i32 %.08992.i, -1
  %i.mz = icmp samesign ugt i32 %.08992.i, 1
  br i1 %i.mz, label %bb.r, label %imdct_step3_inner_r_loop.exit.loopexit

imdct_step3_inner_r_loop.exit.loopexit:           ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit423, label %.lr.ph.i

.loopexit:                                        ; preds = %imdct_step3_inner_s_loop.exit.loopexit, %.lr.ph459, %.lr.ph461
  %exitcond498.not = icmp eq i32 %i.nc, %i.il
  br i1 %exitcond498.not, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.preheader, %.loopexit
  %.1460 = phi i32 [ %i.nc, %.loopexit ], [ %.0.lcssa, %.lr.ph461.preheader ] ; 8 uses
  %i.na = add nuw nsw i32 %.1460, 6
  %i.nb = ashr i32 %1, %i.na                      ; 2 uses
  %i.nc = add nuw nsw i32 %.1460, 1               ; 2 uses
  %i.nd = shl nuw i32 2, %.1460                   ; 2 uses
  %i.ne = icmp sgt i32 %i.nb, 0
  br i1 %i.ne, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %.lr.ph461
  %i.nf = add nuw nsw i32 %.1460, 2
  %i.ng = ashr i32 %1, %i.nf                      ; 2 uses
  %i.nh = ashr i32 %i.ng, 1
  %i.ni = shl nuw i32 8, %.1460
  %i.nj = sext i32 %i.ni to i64
  %i.nk = shl i32 16, %.1460
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl i32 24, %.1460
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp sgt i32 %i.nd, 0
  %i.np = sub nsw i32 0, %i.nh
  %i.nq = sext i32 %i.np to i64
  %i.nr = sext i32 %i.ng to i64
  %i.ns = sub nsw i64 0, %i.nr                    ; 2 uses
  %i.nt = shl i32 32, %.1460
  %i.nu = sext i32 %i.nt to i64
  br i1 %i.no, label %.lr.ph.i421, label %.loopexit

.lr.ph.i421:                                      ; preds = %.lr.ph459, %imdct_step3_inner_s_loop.exit.loopexit
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %imdct_step3_inner_s_loop.exit.loopexit ], [ %4, %.lr.ph459 ] ; 2 uses
  %.0393457 = phi ptr [ %i.ru, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.x, %.lr.ph459 ] ; 6 uses
  %.0395455 = phi i32 [ %i.rv, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.nb, %.lr.ph459 ] ; 2 uses
  %i.nv = load float, ptr %.0393457, align 4
  %i.nw = getelementptr inbounds nuw i8, ptr %.0393457, i64 4
  %i.nx = load float, ptr %i.nw, align 4          ; 2 uses
  %i.ny = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nj ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = getelementptr i8, ptr %i.ny, i64 4
  %i.ob = load float, ptr %i.oa, align 4          ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nl ; 2 uses
  %i.od = load float, ptr %i.oc, align 4
  %i.oe = getelementptr i8, ptr %i.oc, i64 4
  %i.of = load float, ptr %i.oe, align 4          ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nn ; 2 uses
  %i.oh = load float, ptr %i.og, align 4
  %i.oi = getelementptr i8, ptr %i.og, i64 4
  %i.oj = load float, ptr %i.oi, align 4          ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv495 ; 2 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.nq
  %i.om = fneg float %i.nx
  %i.on = fneg float %i.ob
  %i.oo = fneg float %i.of
  %i.op = fneg float %i.oj
  %i.oq = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = insertelement <2 x float> poison, float %i.op, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.oj, i64 1
  %i.ou = insertelement <2 x float> poison, float %i.od, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.of, i64 1
  %i.oy = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pa = insertelement <2 x float> poison, float %i.on, i64 0
  %i.pb = insertelement <2 x float> %i.pa, float %i.ob, i64 1
  %i.pc = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = insertelement <2 x float> poison, float %i.om, i64 0
  %i.pf = insertelement <2 x float> %i.pe, float %i.nx, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i421
  %.0108.i = phi ptr [ %i.ol, %.lr.ph.i421 ], [ %i.rr, %bb.s ] ; 9 uses
  %.0104107.i = phi ptr [ %i.ok, %.lr.ph.i421 ], [ %i.rq, %bb.s ] ; 9 uses
  %.0105106.i = phi i32 [ %i.nd, %.lr.ph.i421 ], [ %i.rs, %bb.s ] ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %.0104107.i, i64 -4 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.0108.i, i64 -4 ; 3 uses
  %i.pi = load <2 x float>, ptr %i.pg, align 4    ; 3 uses
  %i.pj = load float, ptr %.0108.i, align 4
  %i.pk = load <2 x float>, ptr %i.ph, align 4
  %i.pl = fsub <2 x float> %i.pi, %i.pk           ; 2 uses
  %i.pm = extractelement <2 x float> %i.pi, i64 1
  %i.pn = fadd float %i.pm, %i.pj
  store float %i.pn, ptr %.0104107.i, align 4
  %i.po = load float, ptr %i.ph, align 4
  %i.pp = extractelement <2 x float> %i.pi, i64 0
  %i.pq = fadd float %i.pp, %i.po
  store float %i.pq, ptr %i.pg, align 4
  %i.pr = fmul <2 x float> %i.pf, %i.pl
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.pd, <2 x float> %i.ps)
  store <2 x float> %i.pt, ptr %i.ph, align 4
  %i.pu = getelementptr inbounds i8, ptr %.0104107.i, i64 -8
  %i.pv = getelementptr inbounds i8, ptr %.0108.i, i64 -8
  %i.pw = getelementptr inbounds i8, ptr %.0104107.i, i64 -12 ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %.0108.i, i64 -12 ; 3 uses
  %i.py = load <2 x float>, ptr %i.pw, align 4    ; 3 uses
  %i.pz = load float, ptr %i.pv, align 4
  %i.qa = load <2 x float>, ptr %i.px, align 4
  %i.qb = fsub <2 x float> %i.py, %i.qa           ; 2 uses
  %i.qc = extractelement <2 x float> %i.py, i64 1
  %i.qd = fadd float %i.qc, %i.pz
  store float %i.qd, ptr %i.pu, align 4
  %i.qe = load float, ptr %i.px, align 4
  %i.qf = extractelement <2 x float> %i.py, i64 0
  %i.qg = fadd float %i.qf, %i.qe
  store float %i.qg, ptr %i.pw, align 4
  %i.qh = fmul <2 x float> %i.pb, %i.qb
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.oz, <2 x float> %i.qi)
  store <2 x float> %i.qj, ptr %i.px, align 4
  %i.qk = getelementptr inbounds i8, ptr %.0104107.i, i64 -16
  %i.ql = getelementptr inbounds i8, ptr %.0108.i, i64 -16
  %i.qm = getelementptr inbounds i8, ptr %.0104107.i, i64 -20 ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.0108.i, i64 -20 ; 3 uses
  %i.qo = load <2 x float>, ptr %i.qm, align 4    ; 3 uses
  %i.qp = load float, ptr %i.ql, align 4
  %i.qq = load <2 x float>, ptr %i.qn, align 4
  %i.qr = fsub <2 x float> %i.qo, %i.qq           ; 2 uses
  %i.qs = extractelement <2 x float> %i.qo, i64 1
  %i.qt = fadd float %i.qs, %i.qp
  store float %i.qt, ptr %i.qk, align 4
  %i.qu = load float, ptr %i.qn, align 4
  %i.qv = extractelement <2 x float> %i.qo, i64 0
  %i.qw = fadd float %i.qv, %i.qu
  store float %i.qw, ptr %i.qm, align 4
  %i.qx = fmul <2 x float> %i.ox, %i.qr
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qr, <2 x float> %i.ov, <2 x float> %i.qy)
  store <2 x float> %i.qz, ptr %i.qn, align 4
  %i.ra = getelementptr inbounds i8, ptr %.0104107.i, i64 -24
  %i.rb = getelementptr inbounds i8, ptr %.0108.i, i64 -24
  %i.rc = getelementptr inbounds i8, ptr %.0104107.i, i64 -28 ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %.0108.i, i64 -28 ; 3 uses
  %i.re = load <2 x float>, ptr %i.rc, align 4    ; 3 uses
  %i.rf = load float, ptr %i.rb, align 4
  %i.rg = load <2 x float>, ptr %i.rd, align 4
  %i.rh = fsub <2 x float> %i.re, %i.rg           ; 2 uses
  %i.ri = extractelement <2 x float> %i.re, i64 1
  %i.rj = fadd float %i.ri, %i.rf
  store float %i.rj, ptr %i.ra, align 4
  %i.rk = load float, ptr %i.rd, align 4
  %i.rl = extractelement <2 x float> %i.re, i64 0
  %i.rm = fadd float %i.rl, %i.rk
  store float %i.rm, ptr %i.rc, align 4
  %i.rn = fmul <2 x float> %i.ot, %i.rh
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rh, <2 x float> %i.or, <2 x float> %i.ro)
  store <2 x float> %i.rp, ptr %i.rd, align 4
  %i.rq = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.ns
  %i.rr = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.ns
  %i.rs = add nsw i32 %.0105106.i, -1
  %i.rt = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.rt, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.ru = getelementptr inbounds [4 x i8], ptr %.0393457, i64 %i.nu
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.rv = add nsw i32 %.0395455, -1
  %i.rw = icmp sgt i32 %.0395455, 1
  br i1 %i.rw, label %.lr.ph.i421, label %.loopexit

._crit_edge462:                                   ; preds = %.loopexit, %.preheader
  %i.rx = sext i32 %i.hy to i64
  %i.ry = getelementptr inbounds [4 x i8], ptr %0, i64 %i.rx ; 2 uses
  %i.rz = shl nsw i32 %i.ib, 4
  %i.sa = sext i32 %i.rz to i64
  %.neg.i = mul nsw i64 %i.sa, -4
  %i.sb = getelementptr inbounds i8, ptr %i.ry, i64 %.neg.i
  %i.sc = icmp sgt i32 %i.ib, 0
  br i1 %i.sc, label %.lr.ph.i422, label %imdct_step3_inner_s_loop_ld654.exit

.lr.ph.i422:                                      ; preds = %._crit_edge462
  %i.sd = sext i32 %i.c to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.sd
  %i.sf = load float, ptr %i.se, align 4          ; 2 uses
  %i.sg = fneg float %i.sf
  %i.sh = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sj = insertelement <2 x float> %i.si, float %i.sg, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i422
  %.075.i = phi ptr [ %i.ry, %.lr.ph.i422 ], [ %i.vo, %bb.t ] ; 13 uses
  %i.sk = getelementptr inbounds i8, ptr %.075.i, i64 -4
  %i.sl = getelementptr inbounds i8, ptr %.075.i, i64 -36
  %i.sm = getelementptr inbounds i8, ptr %.075.i, i64 -8
  %i.sn = getelementptr inbounds i8, ptr %.075.i, i64 -40
  %i.so = getelementptr inbounds i8, ptr %.075.i, i64 -12 ; 2 uses
  %i.sp = getelementptr inbounds i8, ptr %.075.i, i64 -44 ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %.075.i, i64 -20
  %i.sr = getelementptr inbounds i8, ptr %.075.i, i64 -52
  %i.ss = getelementptr inbounds i8, ptr %.075.i, i64 -24
  %i.st = getelementptr inbounds i8, ptr %.075.i, i64 -56
  %i.su = getelementptr inbounds i8, ptr %.075.i, i64 -28 ; 2 uses
  %i.sv = getelementptr inbounds i8, ptr %.075.i, i64 -60 ; 2 uses
  %i.sw = load <2 x float>, ptr %i.sk, align 4    ; 2 uses
  %i.sx = load <2 x float>, ptr %i.sl, align 4    ; 2 uses
  %i.sy = fsub <2 x float> %i.sw, %i.sx           ; 2 uses
  %i.sz = load <2 x float>, ptr %i.so, align 4    ; 2 uses
  %i.ta = load float, ptr %i.sm, align 4
  %i.tb = load <2 x float>, ptr %i.sp, align 4    ; 2 uses
  %i.tc = load float, ptr %i.sn, align 4
  %i.td = load <2 x float>, ptr %i.su, align 4    ; 2 uses
  %i.te = load float, ptr %i.ss, align 4
  %i.tf = load <2 x float>, ptr %i.sv, align 4    ; 2 uses
  %i.tg = load float, ptr %i.st, align 4
  %i.th = shufflevector <2 x float> %i.sz, <2 x float> %i.td, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ti = shufflevector <2 x float> %i.tb, <2 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tj = fsub <4 x float> %i.th, %i.ti           ; 4 uses
  %i.tk = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tl = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tm = fadd <2 x float> %i.tk, %i.tl
  %i.tn = fsub <2 x float> %i.tk, %i.tl
  %i.to = shufflevector <2 x float> %i.tm, <2 x float> %i.tn, <2 x i32> <i32 0, i32 3>
  %i.tp = fmul <2 x float> %i.si, %i.to           ; 2 uses
  %i.tq = load <2 x float>, ptr %i.sq, align 4    ; 2 uses
  %i.tr = load <2 x float>, ptr %i.sr, align 4    ; 2 uses
  %i.ts = fsub <2 x float> %i.tq, %i.tr
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tu = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.tv = shufflevector <4 x float> %i.tj, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.tw = fsub <2 x float> %i.tu, %i.tv
  %i.tx = fadd <2 x float> %i.tu, %i.tv
  %i.ty = shufflevector <2 x float> %i.tw, <2 x float> %i.tx, <2 x i32> <i32 0, i32 3>
  %i.tz = fmul <2 x float> %i.sj, %i.ty           ; 2 uses
  %i.ua = fadd <2 x float> %i.sw, %i.sx           ; 2 uses
  %i.ub = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uc = insertelement <2 x float> %i.ub, float %i.ta, i64 0
  %i.ud = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ue = insertelement <2 x float> %i.ud, float %i.tc, i64 0
  %i.uf = fadd <2 x float> %i.uc, %i.ue           ; 2 uses
  %i.ug = fadd <2 x float> %i.tq, %i.tr           ; 2 uses
  %i.uh = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ui = insertelement <2 x float> %i.uh, float %i.te, i64 0
  %i.uj = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uk = insertelement <2 x float> %i.uj, float %i.tg, i64 0
  %i.ul = fadd <2 x float> %i.ui, %i.uk           ; 2 uses
  %i.um = fsub <2 x float> %i.uf, %i.ul
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.uo = fsub <2 x float> %i.ua, %i.ug
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.uq = fadd <2 x float> %i.ua, %i.ug
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.us = fadd <2 x float> %i.uf, %i.ul
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.uu = fsub <4 x float> %i.ur, %i.ut
  %i.uv = fadd <4 x float> %i.ur, %i.ut
  %i.uw = shufflevector <4 x float> %i.uu, <4 x float> %i.uv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.uw, ptr %i.so, align 4
  %i.ux = fadd <4 x float> %i.up, %i.un
  %i.uy = fsub <4 x float> %i.up, %i.un
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> %i.uy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.uz, ptr %i.su, align 4
  %i.va = fsub <2 x float> %i.tp, %i.tz
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.vc = fadd <2 x float> %i.sy, %i.tt           ; 2 uses
  %i.vd = fsub <2 x float> %i.sy, %i.tt           ; 2 uses
  %i.ve = shufflevector <2 x float> %i.vc, <2 x float> %i.vd, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vf = shufflevector <2 x float> %i.vd, <2 x float> %i.vc, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.vg = fadd <2 x float> %i.tp, %i.tz
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.vi = fsub <4 x float> %i.vf, %i.vh
  %i.vj = fadd <4 x float> %i.vf, %i.vh
  %i.vk = shufflevector <4 x float> %i.vi, <4 x float> %i.vj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.vk, ptr %i.sp, align 4
  %i.vl = fadd <4 x float> %i.ve, %i.vb
  %i.vm = fsub <4 x float> %i.ve, %i.vb
  %i.vn = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.vn, ptr %i.sv, align 4
  %i.vo = getelementptr inbounds i8, ptr %.075.i, i64 -64 ; 2 uses
  %i.vp = icmp ugt ptr %i.vo, %i.sb
  br i1 %i.vp, label %bb.t, label %imdct_step3_inner_s_loop_ld654.exit

imdct_step3_inner_s_loop_ld654.exit:              ; preds = %bb.t, %._crit_edge462
  %i.vq = add nsw i32 %i.a, -4
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  %.0391463 = getelementptr i8, ptr %i.dv, i64 -16 ; 2 uses
  %.not412464 = icmp ult ptr %.0391463, %i.t
  br i1 %.not412464, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %imdct_step3_inner_s_loop_ld654.exit
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.v
  %i.vv = load ptr, ptr %i.vu, align 8
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391468 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391463, %.lr.ph469.preheader ] ; 3 uses
  %.0390467 = phi ptr [ %i.wx, %.lr.ph469 ], [ %i.vs, %.lr.ph469.preheader ] ; 5 uses
  %.pn417466 = phi ptr [ %.0391468, %.lr.ph469 ], [ %i.dv, %.lr.ph469.preheader ] ; 3 uses
  %.0392465 = phi ptr [ %i.wy, %.lr.ph469 ], [ %i.vv, %.lr.ph469.preheader ] ; 3 uses
  %i.vw = load i16, ptr %.0392465, align 2
  %i.vx = zext i16 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vx ; 4 uses
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = getelementptr inbounds nuw i8, ptr %.0390467, i64 12
  store float %i.vz, ptr %i.wa, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wc = load float, ptr %i.wb, align 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.0390467, i64 8
  store float %i.wc, ptr %i.wd, align 4
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wf = load float, ptr %i.we, align 4
  %i.wg = getelementptr i8, ptr %.pn417466, i64 -4
  store float %i.wf, ptr %i.wg, align 4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 12
  %i.wi = load float, ptr %i.wh, align 4
  %i.wj = getelementptr i8, ptr %.pn417466, i64 -8
  store float %i.wi, ptr %i.wj, align 4
  %i.wk = getelementptr inbounds nuw i8, ptr %.0392465, i64 2
  %i.wl = load i16, ptr %i.wk, align 2
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wm ; 4 uses
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = getelementptr inbounds nuw i8, ptr %.0390467, i64 4
  store float %i.wo, ptr %i.wp, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wr = load float, ptr %i.wq, align 4
  store float %i.wr, ptr %.0390467, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr i8, ptr %.pn417466, i64 -12
  store float %i.wt, ptr %i.wu, align 4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.ww = load float, ptr %i.wv, align 4
  store float %i.ww, ptr %.0391468, align 4
  %i.wx = getelementptr inbounds i8, ptr %.0390467, i64 -16
  %i.wy = getelementptr inbounds nuw i8, ptr %.0392465, i64 4
  %.0391 = getelementptr i8, ptr %.0391468, i64 -16 ; 2 uses
  %.not412 = icmp ult ptr %.0391, %i.t
  br i1 %.not412, label %._crit_edge470, label %.lr.ph469

._crit_edge470:                                   ; preds = %.lr.ph469, %imdct_step3_inner_s_loop_ld654.exit
  %.0385471 = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.wz = icmp ult ptr %i.t, %.0385471
  br i1 %i.wz, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %._crit_edge470
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.v
  %i.xc = load ptr, ptr %i.xb, align 8
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %.0385475 = phi ptr [ %.0385, %.lr.ph477 ], [ %.0385471, %.lr.ph477.preheader ] ; 4 uses
  %.pn416474 = phi ptr [ %.0385475, %.lr.ph477 ], [ %i.z, %.lr.ph477.preheader ] ; 2 uses
  %.0386473 = phi ptr [ %i.yp, %.lr.ph477 ], [ %i.t, %.lr.ph477.preheader ] ; 4 uses
  %.0387472 = phi ptr [ %i.yo, %.lr.ph477 ], [ %i.xc, %.lr.ph477.preheader ] ; 3 uses
  %i.xd = getelementptr inbounds i8, ptr %.pn416474, i64 -8 ; 2 uses
  %i.xe = load <2 x float>, ptr %.0386473, align 4 ; 2 uses
  %i.xf = load <2 x float>, ptr %i.xd, align 4    ; 2 uses
  %i.xg = fsub <2 x float> %i.xe, %i.xf           ; 2 uses
  %i.xh = fadd <2 x float> %i.xe, %i.xf           ; 3 uses
  %i.xi = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.xj = load <2 x float>, ptr %.0387472, align 4 ; 2 uses
  %i.xk = fneg <2 x float> %i.xi
end_hunk_4
