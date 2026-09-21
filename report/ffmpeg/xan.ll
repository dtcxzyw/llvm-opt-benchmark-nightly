Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xan?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xan_decode_frame:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.au, 16
  %i.bi = shl nuw nsw i32 %i.ba, 8
  %i.bj = or disjoint i32 %i.bh, %i.bi
  %i.bk = or disjoint i32 %i.bj, %i.bg
  %i.bl = or disjoint i32 %i.bk, -16777216
  %i.bm = getelementptr inbounds nuw i8, ptr %.061136, i64 4
  store i32 %i.bl, ptr %.061136, align 4, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.1135, i64 4
  %i.bo = load i8, ptr %i.bb, align 1, !tbaa !52
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @gamma_lookup, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !52
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.1135, i64 5
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !52
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @gamma_lookup, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1135, i64 6 ; 2 uses
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !52
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @gamma_lookup, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.bs, 16
  %i.cg = shl nuw nsw i32 %i.by, 8
  %i.ch = or disjoint i32 %i.cf, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.ce
  %i.cj = or disjoint i32 %i.ci, -16777216
  %i.ck = getelementptr inbounds nuw i8, ptr %.061136, i64 8
  store i32 %i.cj, ptr %i.bm, align 4, !tbaa !55
  %i.cl = add nuw nsw i32 %.060137, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cl, 256
  br i1 %exitcond.not.1, label %bb.k, label %bb.j, !llvm.loop !42

bb.k:                                             ; preds = %bb.j
  %i.cm = load i32, ptr %i.m, align 8, !tbaa !53
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.m, align 8, !tbaa !53
  br label %bb.r

bb.l:                                             ; preds = %bytestream2_get_be32.exit.thread
  %i.co = icmp slt i32 %spec.select, 4
  br i1 %i.co, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = icmp slt i64 %i.z, 4
  br i1 %i.cp, label %bytestream2_get_le32.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.5100, i64 4
  %i.cr = load i32, ptr %.sroa.0.5100, align 1, !tbaa !52
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.m, %bb.n
  %.sroa.0.3 = phi ptr [ %i.cq, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %.0.i = phi i32 [ %i.cr, %bb.n ], [ 0, %bb.m ]  ; 2 uses
  %i.cs = load i32, ptr %i.m, align 8, !tbaa !53
  %i.ct = icmp ult i32 %.0.i, %i.cs
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bytestream2_get_le32.exit
  store i32 %.0.i, ptr %i.n, align 4, !tbaa !57
  br label %bb.r

bb.p:                                             ; preds = %bytestream2_get_le32.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.r

bb.q:                                             ; preds = %bytestream2_get_be32.exit.thread
  %i.cu = zext i32 %spec.select to i64
  %..i = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.cu)
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.5100, i64 %..i
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.q, %bb.p, %bb.o
  %.sroa.0.2 = phi ptr [ %i.bz, %bb.k ], [ %i.cv, %bb.q ], [ %.sroa.0.3, %bb.p ], [ %.sroa.0.3, %bb.o ] ; 3 uses
  %i.cw = ptrtoint ptr %.sroa.0.2 to i64
  %i.cx = sub i64 %i.k, %i.cw                     ; 2 uses
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 8
  br i1 %i.cz, label %bb.c, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.r, %.thread200, %bytestream2_init.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.b, %bytestream2_init.exit ], [ %.sroa.0.5100, %.thread200 ], [ %.sroa.0.2, %bb.r ] ; 9 uses
  %.lcssa130 = phi i32 [ %i.d, %bytestream2_init.exit ], [ %i.ad, %.thread200 ], [ %i.cy, %bb.r ] ; 10 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.db = load i32, ptr %i.da, align 8, !tbaa !53
  %i.dc = icmp slt i32 %i.db, 1
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dd, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %.thread

bb.t:                                             ; preds = %._crit_edge
  %i.de = icmp slt i32 %.lcssa130, 9
  br i1 %i.de, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 1) #7 ; 2 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !33
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !55
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 116
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !35
  %i.do = mul nsw i32 %i.dn, %i.dk
  store i32 %i.do, ptr %i.dh, align 8, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !57
  %i.dv = shl nsw i32 %i.du, 8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.dq, ptr noundef nonnull align 4 dereferenceable(1024) %i.dx, i64 1024, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.0.0.lcssa, ptr %i.dy, align 8, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store i32 %.lcssa130, ptr %i.dz, align 8, !tbaa !60
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !34 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 116
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35
  %i.ef = mul nsw i32 %i.ee, %i.ec                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !37 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !36 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !39 ; 2 uses
  %i.em = load i16, ptr %.sroa.0.0.lcssa, align 1, !tbaa !52 ; 2 uses
  %i.en = zext i16 %i.em to i32                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 2
  %i.ep = load i16, ptr %i.eo, align 1, !tbaa !52 ; 2 uses
  %i.eq = zext i16 %i.ep to i32                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 4
  %i.es = load i16, ptr %i.er, align 1, !tbaa !52 ; 2 uses
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 6
  %i.ev = load i16, ptr %i.eu, align 1, !tbaa !52 ; 2 uses
  %i.ew = zext i16 %i.ev to i32                   ; 3 uses
  %.not.i = icmp samesign ugt i32 %.lcssa130, %i.en
  %.not128.i = icmp samesign ugt i32 %.lcssa130, %i.eq
  %or.cond.i75 = select i1 %.not.i, i1 %.not128.i, i1 false
  %.not129.i = icmp samesign ugt i32 %.lcssa130, %i.et
  %or.cond132.i = select i1 %or.cond.i75, i1 %.not129.i, i1 false
  %.not130.i = icmp samesign ugt i32 %.lcssa130, %i.ew
  %or.cond133.i = select i1 %or.cond132.i, i1 %.not130.i, i1 false
  br i1 %or.cond133.i, label %bytestream2_init.exit135.i, label %.thread

bytestream2_init.exit135.i:                       ; preds = %bb.x
  %i.ex = zext i16 %i.ep to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %i.ex ; 2 uses
  %i.ez = sub nuw nsw i32 %.lcssa130, %i.eq
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa ; 4 uses
  %i.fc = zext i16 %i.es to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %i.fc ; 2 uses
  %i.fe = sub nuw nsw i32 %.lcssa130, %i.et
  %i.ff = zext i16 %i.em to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %i.ff ; 2 uses
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fh ; 2 uses
  %i.fj = zext i16 %i.ev to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %i.fj ; 2 uses
  %i.fl = sub nuw nsw i32 %.lcssa130, %i.en
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !52  ; 3 uses
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %i.fp = add i8 %i.fn, 22                        ; 2 uses
  %i.fq = shl nuw nsw i32 %i.fo, 1                ; 3 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fr
  %i.ft = xor i32 %i.fq, -1
  %i.fu = add nsw i32 %i.fl, %i.ft                ; 2 uses
  %i.fv = sext i32 %i.ej to i64
  %i.fw = getelementptr inbounds i8, ptr %i.eh, i64 %i.fv
  %or.cond.i.i.i = icmp ugt i32 %i.fu, 268435455
  %i.fx = shl nuw nsw i32 %i.fu, 3
  %i.fy = select i1 %or.cond.i.i.i, i32 -8, i32 %i.fx ; 3 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.fy, 2147483135
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i, label %.thread

.preheader.i.i:                                   ; preds = %bytestream2_init.exit135.i
  %.not51.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not51.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %exitcond.not.i.i259 = icmp eq i32 %i.fy, 0
  br i1 %exitcond.not.i.i259, label %.thread, label %.lr.ph263

.lr.ph.i.i:                                       ; preds = %bb.ab
  %exitcond.not.i.i = icmp eq i32 %spec.select.i.i.i, %i.fy
  br i1 %exitcond.not.i.i, label %.thread, label %.lr.ph263, !llvm.loop !44

.lr.ph263:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.4.052.i.i262 = phi i32 [ %spec.select.i.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %.03453.i.i261 = phi ptr [ %.236.i.i, %.lr.ph.i.i ], [ %i.eh, %.lr.ph.i.i.preheader ] ; 4 uses
  %.in.i.i260 = phi i8 [ %.2.i.i, %.lr.ph.i.i ], [ %i.fp, %.lr.ph.i.i.preheader ]
  %i.fz = zext i8 %.in.i.i260 to i32
  %i.ga = add nsw i32 %i.fz, -23
  %i.gb = lshr i32 %.sroa.4.052.i.i262, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !52
  %spec.select.i.i.i = add nuw nsw i32 %.sroa.4.052.i.i262, 1 ; 2 uses
  %i.gf = zext i8 %i.ge to i32
  %i.gg = and i32 %.sroa.4.052.i.i262, 7
  %i.gh = lshr i32 %i.gf, %i.gg
  %i.gi = trunc i32 %i.gh to i1
  %i.gj = select i1 %i.gi, i32 %i.fo, i32 0
  %i.gk = add nsw i32 %i.ga, %i.gj                ; 2 uses
  %.not40.i.i = icmp ult i32 %i.gk, %i.fq
  br i1 %.not40.i.i, label %bb.y, label %.thread

bb.y:                                             ; preds = %.lr.ph263
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !52  ; 3 uses
  %i.go = icmp ult i8 %i.gn, 22
  br i1 %i.go, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not41.i.i = icmp ult ptr %.03453.i.i261, %i.fw
  br i1 %.not41.i.i, label %bb.aa, label %xan_huffman_decode.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %.03453.i.i261, i64 1
  store i8 %i.gn, ptr %.03453.i.i261, align 1, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.236.i.i = phi ptr [ %.03453.i.i261, %bb.y ], [ %i.gp, %bb.aa ] ; 2 uses
  %.2.i.i = phi i8 [ %i.gn, %bb.y ], [ %i.fp, %bb.aa ] ; 2 uses
  %.not.i.i = icmp eq i8 %.2.i.i, 22
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %bb.ab, %.preheader.i.i
  %.034.lcssa.i.i = phi ptr [ %i.eh, %.preheader.i.i ], [ %.236.i.i, %bb.ab ]
  %i.gq = ptrtoint ptr %.034.lcssa.i.i to i64
  %i.gr = ptrtoint ptr %i.eh to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = trunc i64 %i.gs to i32
  br label %xan_huffman_decode.exit.i

xan_huffman_decode.exit.i:                        ; preds = %bb.z, %._crit_edge.i.i
  %.233.i.i = phi i32 [ %i.gt, %._crit_edge.i.i ], [ %i.ej, %bb.z ] ; 3 uses
  %i.gu = icmp slt i32 %.233.i.i, 0
  br i1 %i.gu, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %xan_huffman_decode.exit.i
  %i.gv = zext nneg i32 %.233.i.i to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.fk, align 1, !tbaa !52
  %i.gy = icmp eq i8 %i.gx, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 3 uses
  br i1 %i.gy, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  %i.ha = load ptr, ptr %i.ek, align 8, !tbaa !39 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !38 ; 3 uses
  %i.hd = load i32, ptr %i.dz, align 8, !tbaa !60
  %i.he = xor i32 %i.ew, -1
  %i.hf = add i32 %i.hd, %i.he                    ; 2 uses
  %i.hg = sext i32 %i.hc to i64
  %i.hh = getelementptr inbounds i8, ptr %i.ha, i64 %i.hg ; 2 uses
  %i.hi = icmp sgt i32 %i.hf, -1
  br i1 %i.hi, label %bytestream2_init.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit.i.i:                        ; preds = %bb.ad
  %i.hj = zext nneg i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hj ; 7 uses
  %i.hl = ptrtoint ptr %i.hk to i64               ; 9 uses
  %i.hm = icmp sgt i32 %i.hc, 0
  br i1 %i.hm, label %.lr.ph.i142.i, label %xan_unpack.exit.i

.lr.ph.i142.i:                                    ; preds = %bytestream2_init.exit.i.i
  %i.hn = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.ho = ptrtoint ptr %i.ha to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.aw, %.lr.ph.i142.i
  %.053112.i.i = phi ptr [ %i.ha, %.lr.ph.i142.i ], [ %.3.i.i, %bb.aw ] ; 6 uses
  %.sroa.0.0111.i.i = phi ptr [ %i.gz, %.lr.ph.i142.i ], [ %.sroa.0.2.i.i, %bb.aw ] ; 5 uses
  %i.hp = ptrtoint ptr %.sroa.0.0111.i.i to i64
  %i.hq = sub i64 %i.hl, %i.hp                    ; 2 uses
  %i.hr = and i64 %i.hq, 4294967295
  %.not.i143.i = icmp eq i64 %i.hr, 0
  br i1 %.not.i143.i, label %xan_unpack.exit.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hs = icmp slt i64 %i.hq, 1
  br i1 %i.hs, label %.thread.i.i, label %bytestream2_get_byte.exit67.i.i

bytestream2_get_byte.exit67.i.i:                  ; preds = %bb.ag
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0111.i.i, i64 1 ; 10 uses
  %i.hu = load i8, ptr %.sroa.0.0111.i.i, align 1, !tbaa !52 ; 4 uses
  %i.hv = zext i8 %i.hu to i32                    ; 8 uses
  %i.hw = icmp ult i8 %i.hu, -32
  br i1 %i.hw, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bytestream2_get_byte.exit67.i.i
  %i.hx = icmp sgt i8 %i.hu, -1
  br i1 %i.hx, label %..thread_crit_edge.i.i, label %bb.aj

..thread_crit_edge.i.i:                           ; preds = %bb.ah
  %.pre120.i.i = ptrtoint ptr %i.ht to i64
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread_crit_edge.i.i, %bb.ag
  %.pre-phi121.i.i = phi i64 [ %.pre120.i.i, %..thread_crit_edge.i.i ], [ %i.hl, %bb.ag ]
  %.sroa.0.5104109.i.i = phi ptr [ %i.ht, %..thread_crit_edge.i.i ], [ %i.hk, %bb.ag ] ; 2 uses
  %.0.i66105108.i.i = phi i32 [ %i.hv, %..thread_crit_edge.i.i ], [ 0, %bb.ag ] ; 3 uses
  %i.hy = and i32 %.0.i66105108.i.i, 3
  %i.hz = shl nuw nsw i32 %.0.i66105108.i.i, 3
  %i.ia = and i32 %i.hz, 768                      ; 2 uses
  %i.ib = sub i64 %i.hl, %.pre-phi121.i.i
  %i.ic = icmp slt i64 %i.ib, 1
  br i1 %i.ic, label %bytestream2_get_byte.exit65.i.i, label %bb.ai

bb.ai:                                            ; preds = %.thread.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.5104109.i.i, i64 1
  %i.ie = load i8, ptr %.sroa.0.5104109.i.i, align 1, !tbaa !52
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.ia, %i.if
  br label %bytestream2_get_byte.exit65.i.i

bytestream2_get_byte.exit65.i.i:                  ; preds = %bb.ai, %.thread.i.i
  %.sroa.0.4.i.i = phi ptr [ %i.id, %bb.ai ], [ %i.hk, %.thread.i.i ]
  %.0.i64.i.i = phi i32 [ %i.ig, %bb.ai ], [ %i.ia, %.thread.i.i ]
  %i.ih = lshr i32 %.0.i66105108.i.i, 2
  %i.ii = and i32 %i.ih, 7
  %i.ij = add nuw nsw i32 %i.ii, 3
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.ik = and i32 %i.hv, 64
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.im = ptrtoint ptr %i.ht to i64
  %i.in = sub i64 %i.hl, %i.im                    ; 2 uses
  %i.io = icmp slt i64 %i.in, 1
  br i1 %i.io, label %bytestream2_get_be16.exit70.i.i, label %bytestream2_peek_byte.exit.i.i

bytestream2_peek_byte.exit.i.i:                   ; preds = %bb.ak
  %i.ip = load i8, ptr %i.ht, align 1, !tbaa !52
  %i.iq = lshr i8 %i.ip, 6                        ; 2 uses
  %i.ir = icmp eq i64 %i.in, 1
  br i1 %i.ir, label %bytestream2_get_be16.exit70.i.i, label %bb.al

bb.al:                                            ; preds = %bytestream2_peek_byte.exit.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0111.i.i, i64 3
  %i.it = load i16, ptr %i.ht, align 1, !tbaa !52
  %i.iu = and i16 %i.it, -193
  %i.iv = tail call i16 @llvm.bswap.i16(i16 %i.iu)
  %i.iw = zext nneg i16 %i.iv to i32
  br label %bytestream2_get_be16.exit70.i.i

bytestream2_get_be16.exit70.i.i:                  ; preds = %bb.al, %bytestream2_peek_byte.exit.i.i, %bb.ak
  %.shrunk.i.i = phi i8 [ %i.iq, %bb.al ], [ %i.iq, %bytestream2_peek_byte.exit.i.i ], [ 0, %bb.ak ]
  %.sroa.0.7.i.i = phi ptr [ %i.is, %bb.al ], [ %i.hk, %bytestream2_peek_byte.exit.i.i ], [ %i.hk, %bb.ak ]
  %.0.i69.i.i = phi i32 [ %i.iw, %bb.al ], [ 0, %bytestream2_peek_byte.exit.i.i ], [ 0, %bb.ak ]
  %i.ix = zext nneg i8 %.shrunk.i.i to i32
  %i.iy = and i32 %i.hv, 63
  %i.iz = add nuw nsw i32 %i.iy, 4
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.ja = and i32 %i.hv, 3
  %i.jb = shl nuw nsw i32 %i.hv, 12
  %i.jc = and i32 %i.jb, 65536                    ; 2 uses
  %i.jd = ptrtoint ptr %i.ht to i64
  %i.je = sub i64 %i.hl, %i.jd
  %i.jf = icmp slt i64 %i.je, 2
  br i1 %i.jf, label %bytestream2_get_be16.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0111.i.i, i64 3 ; 2 uses
  %i.jh = load i16, ptr %i.ht, align 1, !tbaa !52
  %i.ji = tail call i16 @llvm.bswap.i16(i16 %i.jh)
  %i.jj = zext i16 %i.ji to i32
  %i.jk = or disjoint i32 %i.jc, %i.jj
  %.pre.i.i = ptrtoint ptr %i.jg to i64
  br label %bytestream2_get_be16.exit.i.i

end_hunk_0
