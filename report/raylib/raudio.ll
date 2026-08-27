Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@stb_vorbis_seek_frame:bb.a
  %i.dt = tail call i32 @fseek(ptr noundef %i.dq, i64 noundef %i.ds, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit150.i

bb.as:                                            ; preds = %bb.ae
  %i.du = lshr i32 %i.bj, 1
  %i.dv = add i32 %i.bi, -32768
  %i.dw = add i32 %i.dv, %i.du                    ; 4 uses
  %i.dx = load i8, ptr %i.j, align 4
  %.not.i151.i = icmp eq i8 %i.dx, 0
  br i1 %.not.i151.i, label %bb.at, label %set_file_offset.exit150.i

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.y, align 8
  %i.dy = load ptr, ptr %i.z, align 8
  %.not31.i153.i = icmp eq ptr %i.dy, null
  br i1 %.not31.i153.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dz = load ptr, ptr %i.aa, align 8
  %i.ea = zext i32 %i.dw to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not33.i154.i = icmp ult ptr %i.eb, %i.ec
  br i1 %.not33.i154.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %i.ec, ptr %i.z, align 8
  store i32 1, ptr %i.y, align 8
  br label %set_file_offset.exit150.i

bb.aw:                                            ; preds = %bb.au
  store ptr %i.eb, ptr %i.z, align 8
  br label %set_file_offset.exit150.i

bb.ax:                                            ; preds = %bb.at
  %i.ed = load i32, ptr %i.ac, align 8
  %i.ee = add i32 %i.ed, %i.dw                    ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %i.dw
  %i.eg = icmp slt i32 %i.dw, 0
  %or.cond.i155.i = or i1 %i.eg, %i.ef
  br i1 %or.cond.i155.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 1, ptr %i.y, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.eh = zext i32 %i.ee to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i156.i = phi i64 [ 2147483647, %bb.ay ], [ %i.eh, %bb.az ]
  %i.ei = load ptr, ptr %i.ad, align 8
  %i.ej = tail call i32 @fseek(ptr noundef %i.ei, i64 noundef %.0.i156.i, i32 noundef 0)
  %.not32.i157.i = icmp eq i32 %i.ej, 0
  br i1 %.not32.i157.i, label %set_file_offset.exit150.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.y, align 8
  %i.ek = load ptr, ptr %i.ad, align 8
  %i.el = load i32, ptr %i.ac, align 8
  %i.em = zext i32 %i.el to i64
  %i.en = tail call i32 @fseek(ptr noundef %i.ek, i64 noundef %i.em, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit150.i

set_file_offset.exit150.i:                        ; preds = %bb.bb, %bb.ba, %bb.aw, %bb.av, %bb.as, %bb.ar, %bb.aq, %bb.am, %bb.al, %bb.ai
  %.4.i = phi double [ %.3107.i, %bb.ar ], [ %.3107.i, %bb.ai ], [ %.3107.i, %bb.al ], [ %.3107.i, %bb.am ], [ %.3107.i, %bb.aq ], [ %.0104195.i, %bb.as ], [ %.0104195.i, %bb.av ], [ %.0104195.i, %bb.aw ], [ %.0104195.i, %bb.ba ], [ %.0104195.i, %bb.bb ]
  %.2.i = phi double [ %.1.i, %bb.ar ], [ %.1.i, %bb.ai ], [ %.1.i, %bb.al ], [ %.1.i, %bb.am ], [ %.1.i, %bb.aq ], [ %.0103196.i, %bb.as ], [ %.0103196.i, %bb.av ], [ %.0103196.i, %bb.aw ], [ %.0103196.i, %bb.ba ], [ %.0103196.i, %bb.bb ]
  %i.eo = tail call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  %.not124.i = icmp eq i32 %i.eo, 0
  br i1 %.not124.i, label %.loopexit175.i, label %set_file_offset.exit142.i

set_file_offset.exit142.i:                        ; preds = %set_file_offset.exit150.i, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.u
  %.5.i = phi double [ %.4.i, %set_file_offset.exit150.i ], [ %.0104195.i, %bb.u ], [ %.0104195.i, %bb.x ], [ %.0104195.i, %bb.y ], [ %.0104195.i, %bb.ac ], [ %.0104195.i, %bb.ad ]
  %.3.i = phi double [ %.2.i, %set_file_offset.exit150.i ], [ %.0103196.i, %bb.u ], [ %.0103196.i, %bb.x ], [ %.0103196.i, %bb.y ], [ %.0103196.i, %bb.ac ], [ %.0103196.i, %bb.ad ]
  %i.ep = call fastcc i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef %3)
  %.not125188.i = icmp eq i32 %i.ep, 0
  br i1 %.not125188.i, label %.loopexit175.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %set_file_offset.exit142.i, %set_file_offset.exit166.i
  %i.eq = load i32, ptr %i.bc, align 4            ; 3 uses
  %.not126.i = icmp eq i32 %i.eq, -1
  br i1 %.not126.i, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %.lr.ph.i
  %i.er = load i32, ptr %i.bd, align 4            ; 4 uses
  %i.es = load i8, ptr %i.j, align 4
  %.not.i159.i = icmp eq i8 %i.es, 0
  br i1 %.not.i159.i, label %bb.bd, label %set_file_offset.exit166.i

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.y, align 8
  %i.et = load ptr, ptr %i.z, align 8
  %.not31.i161.i = icmp eq ptr %i.et, null
  br i1 %.not31.i161.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eu = load ptr, ptr %i.aa, align 8
  %i.ev = zext i32 %i.er to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not33.i162.i = icmp ult ptr %i.ew, %i.ex
  br i1 %.not33.i162.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ex, ptr %i.z, align 8
  store i32 1, ptr %i.y, align 8
  br label %set_file_offset.exit166.i

bb.bg:                                            ; preds = %bb.be
  store ptr %i.ew, ptr %i.z, align 8
  br label %set_file_offset.exit166.i

bb.bh:                                            ; preds = %bb.bd
  %i.ey = load i32, ptr %i.ac, align 8
  %i.ez = add i32 %i.ey, %i.er                    ; 2 uses
  %i.fa = icmp ult i32 %i.ez, %i.er
  %i.fb = icmp slt i32 %i.er, 0
  %or.cond.i163.i = or i1 %i.fb, %i.fa
  br i1 %or.cond.i163.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 1, ptr %i.y, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fc = zext i32 %i.ez to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.i164.i = phi i64 [ 2147483647, %bb.bi ], [ %i.fc, %bb.bj ]
  %i.fd = load ptr, ptr %i.ad, align 8
  %i.fe = tail call i32 @fseek(ptr noundef %i.fd, i64 noundef %.0.i164.i, i32 noundef 0)
  %.not32.i165.i = icmp eq i32 %i.fe, 0
  br i1 %.not32.i165.i, label %set_file_offset.exit166.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr %i.y, align 8
  %i.ff = load ptr, ptr %i.ad, align 8
  %i.fg = load i32, ptr %i.ac, align 8
  %i.fh = zext i32 %i.fg to i64
  %i.fi = tail call i32 @fseek(ptr noundef %i.ff, i64 noundef %i.fh, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit166.i

set_file_offset.exit166.i:                        ; preds = %bb.bl, %bb.bk, %bb.bg, %bb.bf, %bb.bc
  %i.fj = call fastcc i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef %3)
  %.not125.i = icmp eq i32 %i.fj, 0
  br i1 %.not125.i, label %.loopexit175.i, label %.lr.ph.i

bb.bm:                                            ; preds = %.lr.ph.i
  %i.fk = load i32, ptr %3, align 4               ; 2 uses
  %i.fl = icmp eq i32 %i.fk, %.sroa.0.0193.i
  br i1 %i.fl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fm = icmp samesign ugt i32 %.0102197.i, 1
  %or.cond5.i = or i1 %i.fm, %i.bk
  br i1 %or.cond5.i, label %._crit_edge.i, label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.fn = icmp ult i32 %.0108.i, %i.eq
  br i1 %i.fn, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.sroa.9.0.copyload51.i = load i32, ptr %i.bd, align 4
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %.pre.i = load i32, ptr %i.x, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bn
  %i.fo = phi i32 [ %i.bi, %bb.bn ], [ %i.bi, %bb.bp ], [ %.pre.i, %bb.bq ] ; 2 uses
  %.sroa.9.1.i = phi i32 [ %.sroa.9.0190.i, %bb.bn ], [ %.sroa.9.0.copyload51.i, %bb.bp ], [ %.sroa.9.0190.i, %bb.bq ]
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0193.i, %bb.bn ], [ %i.fk, %bb.bp ], [ %.sroa.0.0193.i, %bb.bq ] ; 2 uses
  %.sroa.10.1.i = phi i32 [ %.sroa.10.0198.i, %bb.bn ], [ %i.eq, %bb.bp ], [ %.sroa.10.0198.i, %bb.bq ]
  %i.fp = add nuw nsw i32 %.0102197.i, 1
  %.not123.i = icmp eq i32 %i.fo, %.sroa.0.1.i
  br i1 %.not123.i, label %._crit_edge.i, label %bb.t

._crit_edge.i:                                    ; preds = %bb.br, %bb.bn, %.preheader.i
  %i.fq = load i32, ptr %2, align 4               ; 2 uses
  tail call fastcc void @set_file_offset(ptr noundef nonnull %0, i32 noundef %i.fq)
  %i.fr = tail call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not127.i = icmp eq i32 %i.fr, 0
  br i1 %.not127.i, label %.sink.split.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1504
  br label %bb.bt

bb.bt:                                            ; preds = %bb.cz, %bb.bs
  %.0110.i = phi i32 [ %i.ft, %bb.bs ], [ %i.ir, %bb.cz ] ; 3 uses
  %.0109.i = phi i32 [ %i.fq, %bb.bs ], [ %.0.i169.i, %bb.cz ] ; 4 uses
  %i.fw = icmp sgt i32 %.0110.i, 0
  br i1 %i.fw, label %.lr.ph205.preheader.i, label %.critedge.i

.lr.ph205.preheader.i:                            ; preds = %bb.bt
  %4 = zext nneg i32 %.0110.i to i64
  br label %.lr.ph205.i

.lr.ph205.i:                                      ; preds = %bb.bu, %.lr.ph205.preheader.i
  %indvars.iv.i = phi i64 [ %4, %.lr.ph205.preheader.i ], [ %indvars.iv.next.i, %bb.bu ] ; 4 uses
  %i.fx = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 1507
  %i.fz = load i8, ptr %i.fy, align 1
  %.not128.i = icmp eq i8 %i.fz, -1
  br i1 %.not128.i, label %bb.bu, label %.loopexit.loopexit.i

bb.bu:                                            ; preds = %.lr.ph205.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ga = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ga, label %.lr.ph205.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bu, %bb.bt
  %.0111.lcssa.i = phi i32 [ %.0110.i, %bb.bt ], [ 0, %bb.bu ]
  %i.gb = load i8, ptr %i.fu, align 1
  %i.gc = and i8 %i.gb, 1
  %.not129.i = icmp eq i8 %i.gc, 0
  br i1 %.not129.i, label %.loopexit.i, label %bb.bv

bb.bv:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #61
  %i.gd = icmp ugt i32 %.0109.i, 65535
  br i1 %i.gd, label %bb.bw, label %._crit_edge29.i.i

._crit_edge29.i.i:                                ; preds = %bb.bv
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ge = add i32 %.0109.i, -65536
  %i.gf = load i32, ptr %.phi.trans.insert.i.i, align 8
  %spec.select.i.i = call i32 @llvm.umax.i32(i32 %i.ge, i32 %i.gf)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge29.i.i
  %.0.i167.i = phi i32 [ %spec.select.i.i, %bb.bw ], [ %.pre.i.i, %._crit_edge29.i.i ] ; 4 uses
  %i.gg = load i8, ptr %i.j, align 4
  %.not.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i, label %bb.by, label %set_file_offset.exit.i.i

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.y, align 8
  %i.gh = load ptr, ptr %i.z, align 8
  %.not31.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not31.i.i.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gi = load ptr, ptr %i.aa, align 8
  %i.gj = zext i32 %.0.i167.i to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gj ; 2 uses
  %i.gl = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not33.i.i.i = icmp ult ptr %i.gk, %i.gl
  br i1 %.not33.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.gl, ptr %i.z, align 8
  store i32 1, ptr %i.y, align 8
  br label %set_file_offset.exit.i.i

bb.cb:                                            ; preds = %bb.bz
  store ptr %i.gk, ptr %i.z, align 8
  br label %set_file_offset.exit.i.i

bb.cc:                                            ; preds = %bb.by
  %i.gm = load i32, ptr %i.ac, align 8
  %i.gn = add i32 %i.gm, %.0.i167.i               ; 2 uses
  %i.go = icmp ult i32 %i.gn, %.0.i167.i
  %i.gp = icmp slt i32 %.0.i167.i, 0
  %or.cond.i.i.i = or i1 %i.gp, %i.go
  br i1 %or.cond.i.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 1, ptr %i.y, align 8
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.gq = zext i32 %i.gn to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0.i.i.i = phi i64 [ 2147483647, %bb.cd ], [ %i.gq, %bb.ce ]
  %i.gr = load ptr, ptr %i.ad, align 8
  %i.gs = call i32 @fseek(ptr noundef %i.gr, i64 noundef %.0.i.i.i, i32 noundef 0)
  %.not32.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not32.i.i.i, label %set_file_offset.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.y, align 8
  %i.gt = load ptr, ptr %i.ad, align 8
  %i.gu = load i32, ptr %i.ac, align 8
  %i.gv = zext i32 %i.gu to i64
  %i.gw = call i32 @fseek(ptr noundef %i.gt, i64 noundef %i.gv, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit.i.i

set_file_offset.exit.i.i:                         ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.ca, %bb.bx
  %i.gx = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef null)
  %.not1527.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not1527.i.i, label %go_to_page_before.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %set_file_offset.exit.i.i, %set_file_offset.exit26.i.i
  %i.gy = load i32, ptr %i.d, align 4             ; 5 uses
  %.not16.i.i = icmp ult i32 %i.gy, %.0109.i
  %.pre31.i.i = load i8, ptr %i.j, align 4        ; 2 uses
  br i1 %.not16.i.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i
  %.not.i17.i.i = icmp eq i8 %.pre31.i.i, 0
  br i1 %.not.i17.i.i, label %bb.ci, label %stb_vorbis_get_file_offset.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.gz = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not7.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ha = load ptr, ptr %i.aa, align 8
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i32
  br label %stb_vorbis_get_file_offset.exit.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.hf = load ptr, ptr %i.ad, align 8
  %i.hg = call i64 @ftell(ptr noundef %i.hf)
  %i.hh = load i32, ptr %i.ac, align 8
  %i.hi = trunc i64 %i.hg to i32
  %i.hj = sub i32 %i.hi, %i.hh
  br label %stb_vorbis_get_file_offset.exit.i.i

stb_vorbis_get_file_offset.exit.i.i:              ; preds = %bb.ck, %bb.cj, %bb.ch
  %.0.i18.i.i = phi i32 [ %i.hj, %bb.ck ], [ %i.he, %bb.cj ], [ 0, %bb.ch ]
  %i.hk = icmp ult i32 %.0.i18.i.i, %.0109.i
  br i1 %i.hk, label %bb.cv, label %stb_vorbis_get_file_offset.exit._crit_edge.i.i

stb_vorbis_get_file_offset.exit._crit_edge.i.i:   ; preds = %stb_vorbis_get_file_offset.exit.i.i
  %.pre30.i.i = load i8, ptr %i.j, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %stb_vorbis_get_file_offset.exit._crit_edge.i.i, %.lr.ph.i.i
  %i.hl = phi i8 [ %.pre30.i.i, %stb_vorbis_get_file_offset.exit._crit_edge.i.i ], [ %.pre31.i.i, %.lr.ph.i.i ]
  %.not.i19.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i19.i.i, label %bb.cm, label %set_file_offset.exit26.i.i

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.y, align 8
  %i.hm = load ptr, ptr %i.z, align 8
  %.not31.i21.i.i = icmp eq ptr %i.hm, null
  br i1 %.not31.i21.i.i, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hn = load ptr, ptr %i.aa, align 8
  %i.ho = zext i32 %i.gy to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not33.i22.i.i = icmp ult ptr %i.hp, %i.hq
  br i1 %.not33.i22.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr %i.hq, ptr %i.z, align 8
  store i32 1, ptr %i.y, align 8
  br label %set_file_offset.exit26.i.i

bb.cp:                                            ; preds = %bb.cn
  store ptr %i.hp, ptr %i.z, align 8
  br label %set_file_offset.exit26.i.i

bb.cq:                                            ; preds = %bb.cm
  %i.hr = load i32, ptr %i.ac, align 8
  %i.hs = add i32 %i.hr, %i.gy                    ; 2 uses
  %i.ht = icmp ult i32 %i.hs, %i.gy
  %i.hu = icmp slt i32 %i.gy, 0
  %or.cond.i23.i.i = or i1 %i.hu, %i.ht
  br i1 %or.cond.i23.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 1, ptr %i.y, align 8
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.hv = zext i32 %i.hs to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0.i24.i.i = phi i64 [ 2147483647, %bb.cr ], [ %i.hv, %bb.cs ]
  %i.hw = load ptr, ptr %i.ad, align 8
  %i.hx = call i32 @fseek(ptr noundef %i.hw, i64 noundef %.0.i24.i.i, i32 noundef 0)
  %.not32.i25.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not32.i25.i.i, label %set_file_offset.exit26.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 1, ptr %i.y, align 8
  %i.hy = load ptr, ptr %i.ad, align 8
  %i.hz = load i32, ptr %i.ac, align 8
  %i.ia = zext i32 %i.hz to i64
  %i.ib = call i32 @fseek(ptr noundef %i.hy, i64 noundef %i.ia, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit26.i.i

set_file_offset.exit26.i.i:                       ; preds = %bb.cu, %bb.ct, %bb.cp, %bb.co, %bb.cl
  %i.ic = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef null)
  %.not15.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not15.i.i, label %go_to_page_before.exit.thread.i, label %.lr.ph.i.i

go_to_page_before.exit.thread.i:                  ; preds = %set_file_offset.exit.i.i, %set_file_offset.exit26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  br label %.loopexit175.i

bb.cv:                                            ; preds = %stb_vorbis_get_file_offset.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #61
  %i.id = load i8, ptr %i.j, align 4
  %.not.i168.i = icmp eq i8 %i.id, 0
  br i1 %.not.i168.i, label %bb.cw, label %stb_vorbis_get_file_offset.exit.i

bb.cw:                                            ; preds = %bb.cv
  %i.ie = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ie, null
  br i1 %.not7.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.if = load ptr, ptr %i.aa, align 8
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = trunc i64 %i.ii to i32
  br label %stb_vorbis_get_file_offset.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.ik = load ptr, ptr %i.ad, align 8
  %i.il = call i64 @ftell(ptr noundef %i.ik)
  %i.im = load i32, ptr %i.ac, align 8
  %i.in = trunc i64 %i.il to i32
  %i.io = sub i32 %i.in, %i.im
  br label %stb_vorbis_get_file_offset.exit.i

stb_vorbis_get_file_offset.exit.i:                ; preds = %bb.cy, %bb.cx, %bb.cv
  %.0.i169.i = phi i32 [ %i.io, %bb.cy ], [ %i.ij, %bb.cx ], [ 0, %bb.cv ]
  %i.ip = call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not131.i = icmp eq i32 %i.ip, 0
  br i1 %.not131.i, label %.loopexit175.i, label %bb.cz

bb.cz:                                            ; preds = %stb_vorbis_get_file_offset.exit.i
  %i.iq = load i32, ptr %i.fv, align 8
  %i.ir = add nsw i32 %i.iq, -1
  br label %bb.bt

.loopexit.loopexit.i:                             ; preds = %.lr.ph205.i
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %.loopexit.loopexit.i
  %.0111180.i = phi i32 [ %5, %.loopexit.loopexit.i ], [ %.0111.lcssa.i, %.critedge.i ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1412
  store i32 0, ptr %i.is, align 4
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1772
  store i32 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store i32 0, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1788
  store i32 0, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1764
  store i8 0, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 %.0111180.i, ptr %i.iy, align 8
  %i.iz = icmp sgt i32 %.0111180.i, 0
  br i1 %i.iz, label %.lr.ph208.i, label %._crit_edge209.i

.lr.ph208.i:                                      ; preds = %.loopexit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %wide.trip.count.i = zext nneg i32 %.0111180.i to i64
  br label %bb.da

bb.da:                                            ; preds = %skip.exit.i, %.lr.ph208.i
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph208.i ], [ %indvars.iv.next.i.a, %skip.exit.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv.i.a
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %i.jd = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i170.i = icmp eq ptr %i.jd, null
  br i1 %.not.i170.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.je = zext i8 %i.jc to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.je ; 2 uses
  store ptr %i.jf, ptr %i.z, align 8
  %i.jg = load ptr, ptr %i.ab, align 8
  %.not9.i.i = icmp ult ptr %i.jf, %i.jg
  br i1 %.not9.i.i, label %skip.exit.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 1, ptr %i.y, align 8
  br label %skip.exit.i

bb.dd:                                            ; preds = %bb.da
  %i.jh = load ptr, ptr %i.ad, align 8
  %i.ji = call i64 @ftell(ptr noundef %i.jh)
  %i.jj = load ptr, ptr %i.ad, align 8
  %i.jk = zext i8 %i.jc to i64
  %i.jl = add nsw i64 %i.ji, %i.jk
  %i.jm = call i32 @fseek(ptr noundef %i.jj, i64 noundef %i.jl, i32 noundef 0) ; 0 uses
  br label %skip.exit.i

skip.exit.i:                                      ; preds = %bb.dd, %bb.dc, %bb.db
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge209.i, label %bb.da

._crit_edge209.i:                                 ; preds = %skip.exit.i, %.loopexit.i
  %i.jn = call fastcc i32 @vorbis_pump_first_frame(ptr noundef nonnull %0)
  %.not132.i = icmp eq i32 %i.jn, 0
  br i1 %.not132.i, label %seek_to_sample_coarse.exit.thread, label %bb.de

bb.de:                                            ; preds = %._crit_edge209.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.jp = load i32, ptr %i.jo, align 8            ; 2 uses
  %i.jq = icmp ugt i32 %i.jp, %1
  br i1 %i.jq, label %.sink.split.i, label %bb.df

.loopexit175.i:                                   ; preds = %set_file_offset.exit.i, %set_file_offset.exit142.i, %set_file_offset.exit150.i, %set_file_offset.exit166.i, %stb_vorbis_get_file_offset.exit.i, %go_to_page_before.exit.thread.i
  %i.jr = call i32 @stb_vorbis_seek_start(ptr noundef nonnull %0) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit175.i, %bb.de, %._crit_edge.i, %bb.s, %bb.d, %bb.c
  %.sink.i = phi i32 [ 37, %.loopexit175.i ], [ 37, %._crit_edge.i ], [ 37, %bb.s ], [ 11, %bb.d ], [ 7, %bb.c ], [ 37, %bb.de ]
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sink.i, ptr %i.js, align 4
  br label %seek_to_sample_coarse.exit.thread

seek_to_sample_coarse.exit.thread:                ; preds = %bb.r, %._crit_edge209.i, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  br label %bb.eh

bb.df:                                            ; preds = %bb.de, %bb.s
  %i.jt = phi i32 [ %i.jp, %bb.de ], [ %i.bg, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  %i.ju = load i32, ptr %i.p, align 4
  %i.jv = mul nsw i32 %i.ju, 3
  %i.jw = load i32, ptr %i.r, align 8
  %i.jx = sub nsw i32 %i.jv, %i.jw
  %i.jy = ashr i32 %i.jx, 2
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  %i.ka = icmp ult i32 %i.jt, %1
  br i1 %i.ka, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.df
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 1272
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph, %flush_packet.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #61
  %i.kj = call fastcc i32 @vorbis_decode_initial(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  %.not.i35 = icmp eq i32 %i.kj, 0
  br i1 %.not.i35, label %bb.dz, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kk = load i32, ptr %i.kb, align 8            ; 8 uses
  %i.kl = add nsw i32 %i.kk, -1                   ; 7 uses
  %i.km = icmp slt i32 %i.kk, 1
  br i1 %i.km, label %ilog.exit.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kn = icmp samesign ult i32 %i.kk, 16385
  br i1 %i.kn, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  %i.ko = icmp samesign ult i32 %i.kk, 17
  br i1 %i.ko, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kp = zext nneg i32 %i.kl to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = sext i8 %i.kr to i16
  br label %ilog.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.kt = icmp samesign ult i32 %i.kk, 513
  br i1 %i.kt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ku = lshr i32 %i.kl, 5
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = sext i8 %i.kx to i16
  %i.kz = add nsw i16 %i.ky, 5
  br label %ilog.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.la = lshr i32 %i.kl, 10
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = sext i8 %i.ld to i16
  %i.lf = add nsw i16 %i.le, 10
  br label %ilog.exit.i

bb.do:                                            ; preds = %bb.di
  %i.lg = icmp samesign ult i32 %i.kk, 16777217
  br i1 %i.lg, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.lh = icmp samesign ult i32 %i.kk, 524289
  br i1 %i.lh, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.li = lshr i32 %i.kl, 15
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = sext i8 %i.ll to i16
  %i.ln = add nsw i16 %i.lm, 15
  br label %ilog.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.lo = lshr i32 %i.kl, 20
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1
  %i.ls = sext i8 %i.lr to i16
  %i.lt = add nsw i16 %i.ls, 20
  br label %ilog.exit.i

bb.ds:                                            ; preds = %bb.do
  %i.lu = icmp samesign ult i32 %i.kk, 536870913
  br i1 %i.lu, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lv = lshr i32 %i.kl, 25
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = sext i8 %i.ly to i16
  %i.ma = add nsw i16 %i.lz, 25
  br label %ilog.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.mb = lshr i32 %i.kl, 30
end_hunk_0
begin_hunk_1_@skip:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 @ftell(ptr noundef %i.i)
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = sext i32 %1 to i64
  %i.m = add nsw i64 %i.j, %i.l
  %i.n = tail call i32 @fseek(ptr noundef %i.k, i64 noundef %i.m, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @crc32_init() unnamed_addr #68 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.a = shl <4 x i32> %vec.ind, splat (i32 25)   ; 2 uses
  %i.b = and <4 x i32> %vec.ind, splat (i32 128)
  %i.c = icmp eq <4 x i32> %i.b, zeroinitializer
  %i.d = select <4 x i1> %i.c, <4 x i32> zeroinitializer, <4 x i32> splat (i32 79764919)
  %i.e = xor <4 x i32> %i.d, %i.a
  %i.f = shl <4 x i32> %i.e, splat (i32 1)        ; 2 uses
  %i.g = icmp slt <4 x i32> %i.a, zeroinitializer
  %i.h = select <4 x i1> %i.g, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.i = xor <4 x i32> %i.h, %i.f
  %i.j = shl <4 x i32> %i.i, splat (i32 1)        ; 2 uses
  %i.k = icmp slt <4 x i32> %i.f, zeroinitializer
  %i.l = select <4 x i1> %i.k, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.m = xor <4 x i32> %i.l, %i.j
  %i.n = shl <4 x i32> %i.m, splat (i32 1)        ; 2 uses
  %i.o = icmp slt <4 x i32> %i.j, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.q = xor <4 x i32> %i.p, %i.n
  %i.r = shl <4 x i32> %i.q, splat (i32 1)        ; 2 uses
  %i.s = icmp slt <4 x i32> %i.n, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.u = xor <4 x i32> %i.t, %i.r
  %i.v = shl <4 x i32> %i.u, splat (i32 1)        ; 2 uses
  %i.w = icmp slt <4 x i32> %i.r, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.y = xor <4 x i32> %i.x, %i.v
  %i.z = shl <4 x i32> %i.y, splat (i32 1)        ; 2 uses
  %i.aa = icmp slt <4 x i32> %i.v, zeroinitializer
  %i.ab = select <4 x i1> %i.aa, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.ac = xor <4 x i32> %i.ab, %i.z
  %i.ad = shl <4 x i32> %i.ac, splat (i32 1)
  %i.ae = icmp slt <4 x i32> %i.z, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 79764919), <4 x i32> zeroinitializer
  %i.ag = xor <4 x i32> %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %index
  store <4 x i32> %i.ag, ptr %i.ah, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ai = icmp eq i64 %index.next, 256
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1248

middle.block:                                     ; preds = %vector.body
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @compute_codewords(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #26 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit72, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %._crit_edge.loopexit ] ; 4 uses
  %i.f = icmp eq i32 %.054.lcssa, %2
  br i1 %i.f, label %.loopexit72, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = zext nneg i32 %.054.lcssa to i64         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %.not.i = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g
  store i32 0, ptr %i.m, align 4
  br label %add_entry.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.h, align 1
  store i32 0, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  store i8 %i.n, ptr %i.p, align 1
  store i32 %.054.lcssa, ptr %3, align 4
  br label %add_entry.exit

add_entry.exit:                                   ; preds = %bb.d, %bb.e
  %i.q = load i8, ptr %i.h, align 1               ; 3 uses
  %.not6279 = icmp eq i8 %i.q, 0
  br i1 %.not6279, label %.preheader73, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %add_entry.exit
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i8 %i.q, 4
  br i1 %i.s, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader.new

.lr.ph81.preheader.new:                           ; preds = %.lr.ph81.preheader
  %unroll_iter = and i64 %i.r, 252
  br label %.lr.ph81

.preheader73.loopexit.unr-lcssa:                  ; preds = %.lr.ph81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader73, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.preheader73.loopexit.unr-lcssa, %.lr.ph81.preheader
  %indvars.iv95.epil.init = phi i64 [ 1, %.lr.ph81.preheader ], [ %indvars.iv.next96.3, %.preheader73.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %indvars.iv95.epil = phi i64 [ %indvars.iv95.epil.init, %.lr.ph81.epil.preheader ], [ %indvars.iv.next96.epil, %.lr.ph81.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph81.epil.preheader ], [ %epil.iter.next, %.lr.ph81.epil ]
  %i.t = trunc i64 %indvars.iv95.epil to i32
  %i.u = sub i32 32, %i.t
  %i.v = shl nuw i32 1, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95.epil
  store i32 %i.v, ptr %i.w, align 4
  %indvars.iv.next96.epil = add nuw nsw i64 %indvars.iv95.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader73, label %.lr.ph81.epil, !llvm.loop !1249

.preheader73:                                     ; preds = %.preheader73.loopexit.unr-lcssa, %.lr.ph81.epil, %add_entry.exit
  %.15687 = add nuw nsw i32 %.054.lcssa, 1        ; 2 uses
  %i.x = icmp slt i32 %.15687, %2
  br i1 %i.x, label %.lr.ph91, label %.loopexit72

.lr.ph91:                                         ; preds = %.preheader73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = zext i32 %.15687 to i64
  br label %bb.f

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader.new
  %indvars.iv95 = phi i64 [ 1, %.lr.ph81.preheader.new ], [ %indvars.iv.next96.3, %.lr.ph81 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph81.preheader.new ], [ %niter.next.3, %.lr.ph81 ]
  %i.aa = trunc i64 %indvars.iv95 to i32
  %i.ab = sub i32 32, %i.aa
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv95
  store i32 %i.ac, ptr %i.ad, align 4
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ae = trunc i64 %indvars.iv.next96 to i32
  %i.af = sub i32 32, %i.ae
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96
  store i32 %i.ag, ptr %i.ah, align 4
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %i.ai = trunc i64 %indvars.iv.next96.1 to i32
  %i.aj = sub i32 32, %i.ai
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96.1
  store i32 %i.ak, ptr %i.al, align 4
  %indvars.iv.next96.2 = add nuw nsw i64 %indvars.iv95, 3 ; 2 uses
  %i.am = trunc i64 %indvars.iv.next96.2 to i32
  %i.an = sub nuw i32 32, %i.am
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next96.2
  store i32 %i.ao, ptr %i.ap, align 4
  %indvars.iv.next96.3 = add nuw nsw i64 %indvars.iv95, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader73.loopexit.unr-lcssa, label %.lr.ph81

bb.f:                                             ; preds = %.lr.ph91, %.loopexit
  %indvars.iv100.a = phi i64 [ %i.z, %.lr.ph91 ], [ %indvars.iv.next101.a, %.loopexit ] ; 4 uses
  %.05388 = phi i32 [ 1, %.lr.ph91 ], [ %.1.ph, %.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv100.a ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 4 uses
  switch i8 %i.ar, label %.lr.ph84.preheader [
    i8 -1, label %.loopexit
    i8 0, label %.loopexit72
  ]

.lr.ph84.preheader:                               ; preds = %bb.f
  %4 = zext i8 %i.ar to i64
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.g
  %.05183 = phi i32 [ 0, %.lr.ph84.preheader ], [ %indvar.next, %bb.g ] ; 3 uses
  %indvars.iv100 = phi i64 [ %4, %.lr.ph84.preheader ], [ %indvars.iv.next101, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv100
  %i.at = load i32, ptr %i.as, align 4            ; 7 uses
  %.not63 = icmp eq i32 %i.at, 0
  br i1 %.not63, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph84
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, -1 ; 2 uses
  %5 = and i64 %indvars.iv.next101, 4294967295
  %.not70 = icmp eq i64 %5, 0
  %indvar.next = add i32 %.05183, 1
  br i1 %.not70, label %.loopexit72, label %.lr.ph84

.critedge:                                        ; preds = %.lr.ph84
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv100
  %6 = trunc nuw i64 %indvars.iv100 to i32        ; 2 uses
  store i32 0, ptr %i.au, align 4
  %i.av = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.at) ; 2 uses
  %i.aw = add nsw i32 %.05388, 1                  ; 3 uses
  %i.ax = load i8, ptr %i.i, align 1
  %.not.i65 = icmp eq i8 %i.ax, 0
  %i.ay = load ptr, ptr %i.k, align 8             ; 2 uses
  br i1 %.not.i65, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv100.a
  store i32 %i.av, ptr %i.az, align 4
  br label %add_entry.exit66

bb.i:                                             ; preds = %.critedge
  %i.ba = sext i32 %.05388 to i64                 ; 3 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ba
  store i32 %i.av, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.y, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.ba
  store i8 %i.ar, ptr %i.bd, align 1
  %i.be = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba
  %i.bf = trunc nuw i64 %indvars.iv100.a to i32
  store i32 %i.bf, ptr %i.be, align 4
  br label %add_entry.exit66

add_entry.exit66:                                 ; preds = %bb.h, %bb.i
  %i.bg = load i8, ptr %i.aq, align 1
  %i.bh = zext i8 %i.bg to i32                    ; 5 uses
  %i.bi = icmp slt i32 %6, %i.bh
  br i1 %i.bi, label %.lr.ph86.preheader, label %.loopexit

.lr.ph86.preheader:                               ; preds = %add_entry.exit66
  %7 = zext i8 %i.ar to i32                       ; 2 uses
  %i.bj = sub i32 %.05183, %7
  %i.bk = add i32 %i.bj, %i.bh
  %xtraiter133 = and i32 %i.bk, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol

.lr.ph86.prol:                                    ; preds = %.lr.ph86.preheader, %.lr.ph86.prol
  %.085.prol = phi i32 [ %i.bq, %.lr.ph86.prol ], [ %i.bh, %.lr.ph86.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph86.prol ], [ 0, %.lr.ph86.preheader ]
  %i.bl = sub nuw nsw i32 32, %.085.prol
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = add i32 %i.bm, %i.at
  %i.bo = zext nneg i32 %.085.prol to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bo
  store i32 %i.bn, ptr %i.bp, align 4
  %i.bq = add nsw i32 %.085.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter133
  br i1 %prol.iter.cmp.not, label %.lr.ph86.prol.loopexit, label %.lr.ph86.prol, !llvm.loop !1250

.lr.ph86.prol.loopexit:                           ; preds = %.lr.ph86.prol, %.lr.ph86.preheader
  %.085.unr = phi i32 [ %i.bh, %.lr.ph86.preheader ], [ %i.bq, %.lr.ph86.prol ]
  %i.br = add i32 %.05183, %i.bh
  %i.bs = sub i32 %7, %i.br
  %i.bt = icmp ugt i32 %i.bs, -4
  br i1 %i.bt, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86
  %.085 = phi i32 [ %i.cr, %.lr.ph86 ], [ %.085.unr, %.lr.ph86.prol.loopexit ] ; 9 uses
  %i.bu = sub nuw nsw i32 32, %.085
  %i.bv = shl nuw nsw i32 1, %i.bu
  %i.bw = add i32 %i.bv, %i.at
  %i.bx = zext nneg i32 %.085 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bx
  store i32 %i.bw, ptr %i.by, align 4
  %i.bz = sub nsw i32 33, %.085
  %i.ca = shl nuw nsw i32 1, %i.bz
  %i.cb = add i32 %i.ca, %i.at
  %i.cc = sext i32 %.085 to i64
  %i.cd = getelementptr [4 x i8], ptr %i.a, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  store i32 %i.cb, ptr %i.ce, align 4
  %i.cf = sub nsw i32 34, %.085
  %i.cg = shl nuw nsw i32 1, %i.cf
  %i.ch = add i32 %i.cg, %i.at
  %i.ci = sext i32 %.085 to i64
  %i.cj = getelementptr [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  store i32 %i.ch, ptr %i.ck, align 4
  %i.cl = sub nsw i32 35, %.085
  %i.cm = shl nuw nsw i32 1, %i.cl
  %i.cn = add i32 %i.cm, %i.at
  %i.co = sext i32 %.085 to i64
  %i.cp = getelementptr [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -12
  store i32 %i.cn, ptr %i.cq, align 4
  %i.cr = add nsw i32 %.085, -4                   ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, %6
  br i1 %i.cs, label %.lr.ph86, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph86.prol.loopexit, %.lr.ph86, %bb.f, %add_entry.exit66
  %.1.ph = phi i32 [ %i.aw, %add_entry.exit66 ], [ %.05388, %bb.f ], [ %i.aw, %.lr.ph86 ], [ %i.aw, %.lr.ph86.prol.loopexit ]
  %indvars.iv.next101.a = add nuw nsw i64 %indvars.iv100.a, 1 ; 2 uses
  %i.ct = trunc nuw i64 %indvars.iv.next101.a to i32
  %i.cu = icmp sgt i32 %2, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit72

.loopexit72:                                      ; preds = %bb.b, %.loopexit, %bb.f, %bb.g, %.preheader73, %._crit_edge
  %.2 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.f ], [ 1, %.preheader73 ], [ 0, %bb.g ], [ 1, %.loopexit ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.2
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @compute_sorted_huffman(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.preheader, label %.preheader97

.preheader97:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2096
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2096
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph102, %include_in_sort.exit.thread
  %i.m = phi i32 [ %i.i, %.lr.ph102 ], [ %i.y, %include_in_sort.exit.thread ]
  %indvars.iv112 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next113, %include_in_sort.exit.thread ] ; 3 uses
  %.061101 = phi i32 [ 0, %.lr.ph102 ], [ %.162, %include_in_sort.exit.thread ] ; 3 uses
  %.val72 = load i8, ptr %i.a, align 1
  %.not.i = icmp eq i8 %.val72, 0
  br i1 %.not.i, label %bb.c, label %include_in_sort.exit.thread79

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv112
  %i.o = load i8, ptr %i.n, align 1
  %i.p = add i8 %i.o, 1
  %or.cond = icmp ult i8 %i.p, 12
  br i1 %or.cond, label %include_in_sort.exit.thread, label %include_in_sort.exit.thread79

include_in_sort.exit.thread79:                    ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv112
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.s)
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = add nsw i32 %.061101, 1
  %i.w = sext i32 %.061101 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  store i32 %i.t, ptr %i.x, align 4
  %.pre = load i32, ptr %i.h, align 4
  br label %include_in_sort.exit.thread

include_in_sort.exit.thread:                      ; preds = %bb.c, %include_in_sort.exit.thread79
  %i.y = phi i32 [ %.pre, %include_in_sort.exit.thread79 ], [ %i.m, %bb.c ] ; 2 uses
  %.162 = phi i32 [ %i.v, %include_in_sort.exit.thread79 ], [ %.061101, %bb.c ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next113, %i.z
  br i1 %i.aa, label %bb.b, label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.ad)
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.ae, ptr %i.ag, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.c, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %include_in_sort.exit.thread, %.preheader97, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = sext i32 %i.an to i64
  tail call void @qsort(ptr noundef %i.al, i64 noundef %i.ao, i64 noundef 4, ptr noundef nonnull @uint32_compare) #61
  %i.ap = load ptr, ptr %i.ak, align 8
  %i.aq = load i32, ptr %i.am, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 -1, ptr %i.as, align 4
  %i.at = load i8, ptr %i.a, align 1
  %.not66 = icmp eq i8 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.in = select i1 %.not66, ptr %i.au, ptr %i.am
  %i.av = load i32, ptr %.in, align 4             ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph108, %include_in_sort.exit76.thread
  %indvars.iv115 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next116, %include_in_sort.exit76.thread ] ; 6 uses
  %i.ba = load i8, ptr %i.a, align 1
  %.not67 = icmp eq i8 %i.ba, 0                   ; 2 uses
  br i1 %.not67, label %bb.f, label %include_in_sort.exit76.thread91

include_in_sort.exit76.thread91:                  ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv115
  %i.bc = load i32, ptr %i.bb, align 4
  %.pn = zext i32 %i.bc to i64
  %.in68.in = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %.in68 = load i8, ptr %.in68.in, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %.in68.in84 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv115
  %.in6885 = load i8, ptr %.in68.in84, align 1    ; 2 uses
  %i.bd = add i8 %.in6885, 1
  %or.cond96 = icmp ult i8 %i.bd, 12
  br i1 %or.cond96, label %include_in_sort.exit76.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %include_in_sort.exit76.thread91
  %.in688695 = phi i8 [ %.in68, %include_in_sort.exit76.thread91 ], [ %.in6885, %bb.f ]
  %i.be = load ptr, ptr %i.ax, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv115
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.bg)
  %i.bi = load i32, ptr %i.am, align 8            ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.lr.ph105, label %._crit_edge

.lr.ph105:                                        ; preds = %bb.g
  %i.bk = load ptr, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph105, %bb.h
  %.0104 = phi i32 [ %i.bi, %.lr.ph105 ], [ %.1, %bb.h ] ; 2 uses
  %.059103 = phi i32 [ 0, %.lr.ph105 ], [ %.160, %bb.h ] ; 2 uses
  %i.bl = lshr i32 %.0104, 1                      ; 3 uses
  %i.bm = add nsw i32 %i.bl, %.059103             ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %.not71 = icmp ugt i32 %i.bp, %i.bh             ; 2 uses
  %i.bq = sub nuw nsw i32 %.0104, %i.bl
  %.160 = select i1 %.not71, i32 %.059103, i32 %i.bm ; 2 uses
  %.1 = select i1 %.not71, i32 %i.bl, i32 %i.bq   ; 2 uses
  %i.br = icmp samesign ugt i32 %.1, 1
  br i1 %i.br, label %bb.h, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.bs = sext i32 %.160 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.059.lcssa = phi i64 [ 0, %bb.g ], [ %i.bs, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv115
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = load ptr, ptr %i.ay, align 8
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %.059.lcssa
  store i32 %i.bu, ptr %i.bw, align 4
  %i.bx = load ptr, ptr %i.az, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.059.lcssa
  store i8 %.in688695, ptr %i.by, align 1
  br label %include_in_sort.exit76.thread

bb.j:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.ay, align 8
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %.059.lcssa
  %i.cb = trunc nuw nsw i64 %indvars.iv115 to i32
  store i32 %i.cb, ptr %i.ca, align 4
  br label %include_in_sort.exit76.thread

include_in_sort.exit76.thread:                    ; preds = %bb.f, %bb.i, %bb.j
end_hunk_1
