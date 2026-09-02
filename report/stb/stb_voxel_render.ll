Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_voxel_render?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbvox_make_mesh_for_block_with_geo:bb.a
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = add nsw i32 %2, -1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.k, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 8 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.b, label %.loopexit910

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 7 uses
  %i.aq = zext i8 %i.n to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 4 uses
  %i.at = zext i8 %i.r to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 4 uses
  %i.aw = zext i8 %i.v to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8   ; 4 uses
  %i.az = zext i8 %i.z to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8   ; 4 uses
  %i.bc = zext i8 %i.ad to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8   ; 4 uses
  %i.bf = zext i8 %i.ah to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8   ; 3 uses
  %i.bi = zext i8 %i.al to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26 ; 6 uses
  %.not829 = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  br i1 %.not829, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.bp, label %bb.d, label %.loopexit910.thread997

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.l
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %i.p
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 %i.t
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = getelementptr inbounds i8, ptr %i.bm, i64 %i.x
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = getelementptr inbounds i8, ptr %i.bm, i64 %i.ab
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  br label %.loopexit910.thread

bb.e:                                             ; preds = %bb.b
  br i1 %i.bp, label %.loopexit910.loopexit, label %.loopexit910.thread997

.loopexit910.loopexit:                            ; preds = %bb.e
  %i.ca = and i8 %i.av, 15
  %i.cb = and i8 %i.ay, 15
  %i.cc = and i8 %i.bb, 15
  %i.cd = and i8 %i.be, 15
  %i.ce = and i8 %i.bh, 15
  %i.cf = and i8 %i.bk, 15
  %i.cg = and i8 %i.as, 15
  br label %.loopexit910.thread

.loopexit910.thread:                              ; preds = %.loopexit910.loopexit, %bb.d
  %.sroa.47.0.ph = phi i8 [ %i.bk, %bb.d ], [ %i.cf, %.loopexit910.loopexit ]
  %.sroa.38.0.ph = phi i8 [ %i.bh, %bb.d ], [ %i.ce, %.loopexit910.loopexit ]
  %.sroa.29.0.ph = phi i8 [ %i.be, %bb.d ], [ %i.cd, %.loopexit910.loopexit ]
  %.sroa.20.0.ph = phi i8 [ %i.bb, %bb.d ], [ %i.cc, %.loopexit910.loopexit ]
  %.sroa.11.0.ph = phi i8 [ %i.ay, %bb.d ], [ %i.cb, %.loopexit910.loopexit ]
  %.sroa.0929.0.ph = phi i8 [ %i.av, %bb.d ], [ %i.ca, %.loopexit910.loopexit ]
  %.sroa.17.0.ph.in = phi i8 [ %i.bz, %bb.d ], [ %i.be, %.loopexit910.loopexit ]
  %.sroa.12.0.ph.in = phi i8 [ %i.bx, %bb.d ], [ %i.bb, %.loopexit910.loopexit ]
  %.sroa.7.0.ph.in = phi i8 [ %i.bv, %bb.d ], [ %i.ay, %.loopexit910.loopexit ]
  %.sroa.0.0950.ph.in = phi i8 [ %i.bt, %bb.d ], [ %i.av, %.loopexit910.loopexit ]
  %.1799.ph.in.in = phi i8 [ %i.br, %bb.d ], [ %i.as, %.loopexit910.loopexit ]
  %.1796.ph = phi i8 [ %i.as, %bb.d ], [ %i.cg, %.loopexit910.loopexit ]
  %.1799.ph.in = lshr i8 %.1799.ph.in.in, 4
  %.1799.ph = and i8 %.1799.ph.in, 3
  %.sroa.0.0950.ph = lshr i8 %.sroa.0.0950.ph.in, 4
  %.sroa.7.0.ph = lshr i8 %.sroa.7.0.ph.in, 4
  %.sroa.12.0.ph = lshr i8 %.sroa.12.0.ph.in, 4
  %.sroa.17.0.ph = lshr i8 %.sroa.17.0.ph.in, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.g

.loopexit910.thread997:                           ; preds = %bb.c, %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %bb.f

.loopexit910:                                     ; preds = %bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.an, i64 %i.l
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8   ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.an, i64 %i.p
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8   ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.an, i64 %i.t
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8   ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.an, i64 %i.x
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.an, i64 %i.ab
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8   ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.an, i64 %i.af
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = getelementptr inbounds i8, ptr %i.an, i64 %i.aj
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !8
  %i.cx = lshr i8 %i.cm, 4
  %i.cy = and i8 %i.cm, 15                        ; 2 uses
  %i.cz = lshr i8 %i.co, 4
  %i.da = and i8 %i.co, 15                        ; 2 uses
  %i.db = lshr i8 %i.cq, 4
  %i.dc = and i8 %i.cq, 15                        ; 2 uses
  %i.dd = lshr i8 %i.cs, 4
  %i.de = and i8 %i.cs, 15                        ; 2 uses
  %i.df = and i8 %i.cu, 15                        ; 2 uses
  %i.dg = and i8 %i.cw, 15                        ; 2 uses
  %i.dh = lshr i8 %i.ck, 4
  %i.di = and i8 %i.dh, 3                         ; 2 uses
  %i.dj = and i8 %i.ck, 15                        ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.not830 = icmp eq ptr %.pre, null
  br i1 %.not830, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit910.thread997, %.loopexit910
  %i.dl = phi ptr [ %i.ci, %.loopexit910.thread997 ], [ %i.dk, %.loopexit910 ]
  %.17961018 = phi i8 [ %i.as, %.loopexit910.thread997 ], [ %i.dj, %.loopexit910 ]
  %.17991017 = phi i8 [ undef, %.loopexit910.thread997 ], [ %i.di, %.loopexit910 ]
  %.sroa.0929.01016 = phi i8 [ %i.av, %.loopexit910.thread997 ], [ %i.cy, %.loopexit910 ]
  %.sroa.11.01015 = phi i8 [ %i.ay, %.loopexit910.thread997 ], [ %i.da, %.loopexit910 ]
  %.sroa.20.01014 = phi i8 [ %i.bb, %.loopexit910.thread997 ], [ %i.dc, %.loopexit910 ]
  %.sroa.29.01013 = phi i8 [ %i.be, %.loopexit910.thread997 ], [ %i.de, %.loopexit910 ]
  %.sroa.38.01012 = phi i8 [ %i.bh, %.loopexit910.thread997 ], [ %i.df, %.loopexit910 ]
  %.sroa.47.01011 = phi i8 [ %i.bk, %.loopexit910.thread997 ], [ %i.dg, %.loopexit910 ]
  %i.dm = phi ptr [ %i.bo, %.loopexit910.thread997 ], [ %.pre, %.loopexit910 ] ; 5 uses
  %i.dn = zext i8 %.17991017 to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = and i8 %i.dp, 3
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %i.p
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = getelementptr inbounds i8, ptr %i.dm, i64 %i.t
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %i.dv = getelementptr inbounds i8, ptr %i.dm, i64 %i.x
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8
  %i.dx = getelementptr inbounds i8, ptr %i.dm, i64 %i.ab
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit910.thread, %bb.f, %.loopexit910
  %i.dz = phi ptr [ %i.dk, %.loopexit910 ], [ %i.dl, %bb.f ], [ %i.ch, %.loopexit910.thread ]
  %.1796995 = phi i8 [ %i.dj, %.loopexit910 ], [ %.17961018, %bb.f ], [ %.1796.ph, %.loopexit910.thread ] ; 2 uses
  %.sroa.0929.0994 = phi i8 [ %i.cy, %.loopexit910 ], [ %.sroa.0929.01016, %bb.f ], [ %.sroa.0929.0.ph, %.loopexit910.thread ]
  %.sroa.11.0993 = phi i8 [ %i.da, %.loopexit910 ], [ %.sroa.11.01015, %bb.f ], [ %.sroa.11.0.ph, %.loopexit910.thread ]
  %.sroa.20.0992 = phi i8 [ %i.dc, %.loopexit910 ], [ %.sroa.20.01014, %bb.f ], [ %.sroa.20.0.ph, %.loopexit910.thread ]
  %.sroa.29.0991 = phi i8 [ %i.de, %.loopexit910 ], [ %.sroa.29.01013, %bb.f ], [ %.sroa.29.0.ph, %.loopexit910.thread ]
  %.sroa.38.0990 = phi i8 [ %i.df, %.loopexit910 ], [ %.sroa.38.01012, %bb.f ], [ %.sroa.38.0.ph, %.loopexit910.thread ]
  %.sroa.47.0989 = phi i8 [ %i.dg, %.loopexit910 ], [ %.sroa.47.01011, %bb.f ], [ %.sroa.47.0.ph, %.loopexit910.thread ]
  %.sroa.17.1 = phi i8 [ %i.dd, %.loopexit910 ], [ %i.dy, %bb.f ], [ %.sroa.17.0.ph, %.loopexit910.thread ]
  %.sroa.12.1 = phi i8 [ %i.db, %.loopexit910 ], [ %i.dw, %bb.f ], [ %.sroa.12.0.ph, %.loopexit910.thread ]
  %.sroa.7.1 = phi i8 [ %i.cz, %.loopexit910 ], [ %i.du, %bb.f ], [ %.sroa.7.0.ph, %.loopexit910.thread ]
  %.sroa.0.1 = phi i8 [ %i.cx, %.loopexit910 ], [ %i.ds, %bb.f ], [ %.sroa.0.0950.ph, %.loopexit910.thread ]
  %.2800 = phi i8 [ %i.di, %.loopexit910 ], [ %i.dq, %bb.f ], [ %.1799.ph, %.loopexit910.thread ] ; 11 uses
  %i.ea = icmp eq i8 %.1796995, 3
  br i1 %i.ea, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.g
  %.not880 = icmp eq i8 %i.r, %i.n
  %spec.select = select i1 %.not880, i8 2, i8 0
  %.not880.1 = icmp eq i8 %i.v, %i.n
  %.sroa.11.2 = select i1 %.not880.1, i8 2, i8 0
  %.not880.2 = icmp eq i8 %i.z, %i.n
  %.sroa.20.2 = select i1 %.not880.2, i8 2, i8 0
  %.not880.3 = icmp eq i8 %i.ad, %i.n
  %.sroa.29.2 = select i1 %.not880.3, i8 2, i8 0
  %.not880.4 = icmp eq i8 %i.ah, %i.n
  %.sroa.38.2 = select i1 %.not880.4, i8 2, i8 0
  %.not880.5 = icmp eq i8 %i.al, %i.n
  %spec.select1051 = select i1 %.not880.5, i8 2, i8 0
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.g
  %.sroa.47.1 = phi i8 [ %.sroa.47.0989, %bb.g ], [ %spec.select1051, %.preheader.preheader ]
  %.sroa.38.1 = phi i8 [ %.sroa.38.0990, %bb.g ], [ %.sroa.38.2, %.preheader.preheader ]
  %.sroa.29.1 = phi i8 [ %.sroa.29.0991, %bb.g ], [ %.sroa.29.2, %.preheader.preheader ]
  %.sroa.20.1 = phi i8 [ %.sroa.20.0992, %bb.g ], [ %.sroa.20.2, %.preheader.preheader ]
  %.sroa.11.1 = phi i8 [ %.sroa.11.0993, %bb.g ], [ %.sroa.11.2, %.preheader.preheader ]
  %.sroa.0929.2 = phi i8 [ %.sroa.0929.0994, %bb.g ], [ %spec.select, %.preheader.preheader ]
  %.2797 = phi i8 [ %.1796995, %bb.g ], [ 2, %.preheader.preheader ] ; 3 uses
  %i.eb = zext i8 %.2797 to i64                   ; 7 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @stbvox_hasface, i64 %i.eb
  %i.ed = zext nneg i8 %.2800 to i64              ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = zext i8 %i.ef to i32                    ; 6 uses
  %3 = and i32 %i.eg, 1
  %.not831 = icmp eq i32 %3, 0
  br i1 %.not831, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.eh = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.ei = zext nneg i8 %.2800 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8
  %i.el = zext i8 %.sroa.0929.2 to i64
  %i.em = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.el
  %i.en = and i8 %.sroa.0.1, 3
  %i.eo = xor i8 %i.en, 2
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %i.es = zext i8 %i.er to i32
  %i.et = zext i8 %i.ek to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !23
  %i.ew = zext i16 %i.ev to i32
  %i.ex = add nuw nsw i32 %i.es, 5
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = and i32 %i.ey, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0 = phi i32 [ %i.ez, %bb.h ], [ 0, %.loopexit ] ; 2 uses
  %i.fa = and i32 %i.eg, 2
  %.not832 = icmp eq i32 %i.fa, 0
  br i1 %.not832, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fb = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.fc = add nuw nsw i8 %.2800, 1
  %i.fd = and i8 %i.fc, 3
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !8
  %i.fh = zext i8 %.sroa.11.1 to i64
  %i.fi = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.fh
  %i.fj = add i8 %.sroa.7.1, 3
  %i.fk = and i8 %i.fj, 3
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = zext i8 %i.fn to i32
  %i.fp = zext i8 %i.fg to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fo, 4
  %i.fu = lshr i32 %i.fs, %i.ft
  %i.fv = and i32 %i.fu, 2
  %i.fw = or disjoint i32 %i.fv, %.0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %i.fw, %bb.j ], [ %.0, %bb.i ]  ; 2 uses
  %i.fx = and i32 %i.eg, 4
  %.not833 = icmp eq i32 %i.fx, 0
  br i1 %.not833, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fy = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.fz = xor i8 %.2800, 2
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8
  %i.gd = zext i8 %.sroa.20.1 to i64
  %i.ge = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.gd
  %i.gf = and i8 %.sroa.12.1, 3
  %i.gg = zext nneg i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !8
  %i.gj = zext i8 %i.gi to i32
  %i.gk = zext i8 %i.gc to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !23
  %i.gn = zext i16 %i.gm to i32
  %i.go = add nuw nsw i32 %i.gj, 3
  %i.gp = lshr i32 %i.gn, %i.go
  %i.gq = and i32 %i.gp, 4
  %i.gr = or i32 %i.gq, %.1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %i.gr, %bb.l ], [ %.1, %bb.k ]  ; 2 uses
  %i.gs = and i32 %i.eg, 8
  %.not834 = icmp eq i32 %i.gs, 0
  br i1 %.not834, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gt = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.gu = add nuw nsw i8 %.2800, 3
  %i.gv = and i8 %i.gu, 3
  %i.gw = zext nneg i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !8
  %i.gz = zext i8 %.sroa.29.1 to i64
  %i.ha = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.gz
  %i.hb = add i8 %.sroa.17.1, 1
  %i.hc = and i8 %i.hb, 3
  %i.hd = zext nneg i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !8
  %i.hg = zext i8 %i.hf to i32
  %i.hh = zext i8 %i.gy to i64
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !23
  %i.hk = zext i16 %i.hj to i32
  %i.hl = add nuw nsw i32 %i.hg, 2
  %i.hm = lshr i32 %i.hk, %i.hl
  %i.hn = and i32 %i.hm, 8
  %i.ho = or i32 %i.hn, %.2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3 = phi i32 [ %i.ho, %bb.n ], [ %.2, %bb.m ]  ; 2 uses
  %i.hp = and i32 %i.eg, 16
  %.not835 = icmp eq i32 %i.hp, 0
  br i1 %.not835, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hq = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !8
  %i.ht = zext i8 %.sroa.38.1 to i64
  %i.hu = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 5
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !8
  %i.hx = zext i8 %i.hw to i32
  %i.hy = zext i8 %i.hs to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !23
  %i.ib = zext i16 %i.ia to i32
  %i.ic = add nuw nsw i32 %i.hx, 1
  %i.id = lshr i32 %i.ib, %i.ic
  %i.ie = and i32 %i.id, 16
  %i.if = or i32 %i.ie, %.3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4 = phi i32 [ %i.if, %bb.p ], [ %.3, %bb.o ]  ; 2 uses
  %i.ig = and i32 %i.eg, 32
  %.not836 = icmp eq i32 %i.ig, 0
  br i1 %.not836, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ih = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.eb
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 5
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !8
  %i.ik = zext i8 %.sroa.47.1 to i64
  %i.il = getelementptr inbounds nuw [6 x i8], ptr @stbvox_facetype, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i8, ptr %i.im, align 2, !tbaa !8
  %i.io = zext nneg i8 %i.in to i32
  %i.ip = zext i8 %i.ij to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr @stbvox_face_visible, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !23
  %i.is = zext i16 %i.ir to i32
  %i.it = lshr i32 %i.is, %i.io
  %i.iu = and i32 %i.it, 32
  %i.iv = or i32 %i.iu, %.4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5 = phi i32 [ %i.iv, %bb.r ], [ %.4, %bb.q ]  ; 21 uses
  %i.iw = icmp eq i8 %.2797, 11
  %spec.store.select = select i1 %i.iw, i8 2, i8 %.2797 ; 11 uses
  %i.ix = icmp eq i32 %.5, 0
  br i1 %i.ix, label %bb.cs, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26 ; 3 uses
  %.not837 = icmp eq ptr %i.ja, null              ; 2 uses
  br i1 %.not837, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 %i.l
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !8
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.jd = load i32, ptr %i.iy, align 8, !tbaa !27
  %i.je = trunc i32 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !28 ; 2 uses
  %.not838 = icmp eq ptr %i.jg, null
  br i1 %.not838, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jh = zext i8 %i.n to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.0789 = phi i8 [ %i.jc, %bb.u ], [ %i.jj, %bb.w ], [ %i.je, %bb.v ] ; 14 uses
  %i.jk = icmp ult i8 %spec.store.select, 8
  br i1 %i.jk, label %bb.y, label %bb.ba
end_hunk_0
begin_hunk_1_@stbvox_make_mesh_for_block_with_geo:bb.a
  %i.oz = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 19), align 1, !tbaa !8
  %i.pa = zext i8 %i.oz to i64
  %gep.19 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.pa
  %i.pb = load i8, ptr %gep.19, align 1, !tbaa !8
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !17
  %i.pf = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 64), align 16, !tbaa !17
  %i.pg = insertelement <4 x i32> poison, i32 %i.ol, i64 0
  %i.ph = insertelement <4 x i32> %i.pg, i32 %i.os, i64 1
  %i.pi = insertelement <4 x i32> %i.ph, i32 %i.oy, i64 2
  %i.pj = insertelement <4 x i32> %i.pi, i32 %i.pe, i64 3
  %i.pk = add <4 x i32> %i.pj, %i.pf
  store <4 x i32> %i.pk, ptr %i.om, align 16, !tbaa !17
  %i.pl = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 20), align 4, !tbaa !8
  %i.pm = zext i8 %i.pl to i64
  %gep.20 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.pm
  %i.pn = load i8, ptr %gep.20, align 1, !tbaa !8
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.ps = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 21), align 1, !tbaa !8
  %i.pt = zext i8 %i.ps to i64
  %gep.21 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.pt
  %i.pu = load i8, ptr %gep.21, align 1, !tbaa !8
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !17
  %i.py = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 22), align 2, !tbaa !8
  %i.pz = zext i8 %i.py to i64
  %gep.22 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.pz
  %i.qa = load i8, ptr %gep.22, align 1, !tbaa !8
  %i.qb = zext i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !17
  %i.qe = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 23), align 1, !tbaa !8
  %i.qf = zext i8 %i.qe to i64
  %gep.23 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.qf
  %i.qg = load i8, ptr %gep.23, align 1, !tbaa !8
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !17
  %i.qk = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 80), align 16, !tbaa !17
  %i.ql = insertelement <4 x i32> poison, i32 %i.pq, i64 0
  %i.qm = insertelement <4 x i32> %i.ql, i32 %i.px, i64 1
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qd, i64 2
  %i.qo = insertelement <4 x i32> %i.qn, i32 %i.qj, i64 3
  %i.qp = add <4 x i32> %i.qo, %i.qk
  store <4 x i32> %i.qp, ptr %i.pr, align 16, !tbaa !17
  %.sroa.0529.0.extract.trunc.mask = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.qq = and i24 %.sroa.28.0.extract.trunc.mask, 32640
  %i.qr = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow = or disjoint i24 %i.qr, %.sroa.0529.0.extract.trunc.mask
  %narrow839 = add nuw i24 %narrow, %i.qq
  %i.qs = zext i24 %narrow839 to i32              ; 7 uses
  br i1 %.not837, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qt = getelementptr inbounds i8, ptr %i.ja, i64 %i.l
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !28 ; 2 uses
  %.not841 = icmp eq ptr %i.qw, null
  br i1 %.not841, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.qx = zext i8 %i.n to i64
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1790 = phi i8 [ %i.qu, %bb.z ], [ %i.qz, %bb.ab ], [ %.0789, %bb.aa ] ; 8 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.rb = zext i8 %.1790 to i64                   ; 3 uses
  %i.rc = getelementptr inbounds nuw [24 x i8], ptr %i.ra, i64 %i.rb
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !16
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.re, i64 %i.rb
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !17
  %i.rh = mul nsw i32 %i.rg, 6
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds i8, ptr %i.rd, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.rl = getelementptr inbounds nuw [24 x i8], ptr %i.rk, i64 %i.rb
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !16
  %.not851 = icmp ugt ptr %i.rj, %i.rm
  br i1 %.not851, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rn = icmp samesign ugt i8 %spec.store.select, 5
  %i.ro = and i32 %.5, 16
  %.not844 = icmp eq i32 %i.ro, 0                 ; 2 uses
  br i1 %i.rn, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not844, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rp = icmp eq i8 %spec.store.select, 6
  br i1 %i.rp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.rq = getelementptr inbounds nuw i8, ptr @stbvox_floor_slope_for_rot, i64 %i.ed
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !8
  %i.rs = zext i8 %i.rr to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.rt = phi i32 [ %i.rs, %bb.ag ], [ 4, %bb.af ]
  %i.ru = shl nuw nsw i8 %.2800, 4                ; 2 uses
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.ru, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.om, i8 noundef zeroext %.1790, i32 noundef %i.rt)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.0172.0 = phi i8 [ %i.ru, %bb.ah ], [ 0, %bb.ae ] ; 3 uses
  %i.rv = and i32 %.5, 32
  %.not845 = icmp eq i32 %i.rv, 0
  br i1 %.not845, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.rw = icmp eq i8 %spec.store.select, 7
  br i1 %i.rw, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.rx = getelementptr inbounds nuw i8, ptr @stbvox_ceil_slope_for_rot, i64 %i.ed
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !8
  %i.rz = zext i8 %i.ry to i32
  br label %.sink.split

bb.al:                                            ; preds = %bb.ad
  br i1 %.not844, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sa = shl nuw nsw i8 %.2800, 4                ; 2 uses
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sa, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.om, i8 noundef zeroext %.1790, i32 noundef 4)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.0172.1 = phi i8 [ %i.sa, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %i.sb = and i32 %.5, 32
  %.not843 = icmp eq i32 %i.sb, 0
  br i1 %.not843, label %bb.ao, label %.sink.split

.sink.split:                                      ; preds = %bb.an, %bb.ak, %bb.aj
  %.sroa.0172.1.sink = phi i8 [ %.sroa.0172.0, %bb.ak ], [ %.sroa.0172.0, %bb.aj ], [ %.sroa.0172.1, %bb.an ]
  %.sink1036 = phi i32 [ %i.rz, %bb.ak ], [ 5, %bb.aj ], [ 5, %bb.an ]
  %i.sc = sub nsw i8 0, %.sroa.0172.1.sink
  %i.sd = and i8 %i.sc, 48                        ; 2 uses
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sd, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.pr, i8 noundef zeroext %.1790, i32 noundef %.sink1036)
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.an, %bb.ai
  %.sroa.0172.2 = phi i8 [ %.sroa.0172.1, %bb.an ], [ %.sroa.0172.0, %bb.ai ], [ %i.sd, %.sink.split ]
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !31 ; 2 uses
  %.not846 = icmp eq ptr %i.sf, null
  %.sroa.0172.2.masked = and i8 %.sroa.0172.2, -16 ; 2 uses
  br i1 %.not846, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 %i.l
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !8
  %i.si = or i8 %i.sh, %.sroa.0172.2.masked
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.sj = shl nuw i8 %.2800, 6
  %i.sk = shl nuw nsw i8 %.2800, 2
  %i.sl = or disjoint i8 %i.sj, %i.sk
  %i.sm = or i8 %i.sl, %.sroa.0172.2.masked
  %i.sn = or disjoint i8 %i.sm, %.2800
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0172.3 = phi i8 [ %i.si, %bb.ap ], [ %i.sn, %bb.aq ]
  %i.so = and i8 %.sroa.0172.3, -49               ; 4 uses
  %i.sp = and i32 %.5, 2
  %.not847 = icmp eq i32 %i.sp, 0
  br i1 %.not847, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.so, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.kx, i8 noundef zeroext %.1790, i32 noundef 1)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sq = and i32 %.5, 8
  %.not848 = icmp eq i32 %i.sq, 0
  br i1 %.not848, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.so, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.nh, i8 noundef zeroext %.1790, i32 noundef 3)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %4 = and i32 %.5, 1
  %.not849 = icmp eq i32 %4, 0
  br i1 %.not849, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.so, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.a, i8 noundef zeroext %.1790, i32 noundef 0)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.sr = and i32 %.5, 4
  %.not850 = icmp eq i32 %i.sr, 0
  br i1 %.not850, label %.thread1033, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.so, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.qs, ptr noundef nonnull %i.mc, i8 noundef zeroext %.1790, i32 noundef 2)
  br label %.thread1033

.thread1033:                                      ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.cs

bb.az:                                            ; preds = %bb.ac
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.ss, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.cs

bb.ba:                                            ; preds = %bb.x
  %i.st = icmp ugt i8 %spec.store.select, 11
  br i1 %i.st, label %bb.bb, label %bb.ci

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !84 ; 2 uses
  %.not852 = icmp eq ptr %i.sv, null
  br i1 %.not852, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 %i.l
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !8   ; 4 uses
  %i.sy = and i8 %i.sx, 3                         ; 2 uses
  store i8 %i.sy, ptr %i.d, align 1, !tbaa !8
  %i.sz = lshr i8 %i.sx, 2
  %i.ta = and i8 %i.sz, 3                         ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !8
  %i.tc = lshr i8 %i.sx, 4
  %i.td = and i8 %i.tc, 3                         ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.td, ptr %i.te, align 1, !tbaa !8
  %i.tf = lshr i8 %i.sx, 6                        ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !8
  br label %bb.bj

bb.bd:                                            ; preds = %bb.bb
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !85 ; 2 uses
  %.not853 = icmp eq ptr %i.ti, null
  br i1 %.not853, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tj = zext i8 %i.n to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.tm = and i8 %i.tl, 3
  store i8 %i.tm, ptr %i.e, align 1, !tbaa !8
  %i.tn = lshr i8 %i.tl, 2
  %i.to = and i8 %i.tn, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !8
  %i.tq = lshr i8 %i.tl, 4
  %i.tr = and i8 %i.tq, 3
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !8
  %i.tt = lshr i8 %i.tl, 6
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !8
  %invariant.gep917 = getelementptr inbounds nuw i8, ptr @stbvox_rotate_vertex, i64 %i.ed ; 4 uses
  %i.tv = load i8, ptr %invariant.gep917, align 1, !tbaa !8
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ty, ptr %i.d, align 1, !tbaa !8
  %gep918.1 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 4
  %i.tz = load i8, ptr %gep918.1, align 1, !tbaa !8
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !8   ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !8
  %gep918.2 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 8
  %i.ue = load i8, ptr %gep918.2, align 1, !tbaa !8
  %i.uf = zext i8 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !8   ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !8
  %gep918.3 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 12
  %i.uj = load i8, ptr %gep918.3, align 1, !tbaa !8
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !8   ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.um, ptr %i.un, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.uo = load ptr, ptr %i.dz, align 8, !tbaa !30 ; 5 uses
  %.not854 = icmp eq ptr %i.uo, null
  br i1 %.not854, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 %i.l
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !8
  %i.ur = lshr i8 %i.uq, 2
  %i.us = and i8 %i.ur, 3                         ; 2 uses
  store i8 %i.us, ptr %i.d, align 1, !tbaa !8
  %i.ut = getelementptr inbounds i8, ptr %i.uo, i64 %i.p
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !8
  %i.uv = lshr i8 %i.uu, 2
  %i.uw = and i8 %i.uv, 3                         ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.uw, ptr %i.ux, align 1, !tbaa !8
  %i.uy = getelementptr inbounds i8, ptr %i.uo, i64 %i.t
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !8
  %i.va = lshr i8 %i.uz, 2
  %i.vb = and i8 %i.va, 3                         ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !8
  %i.vd = add nsw i32 %i.o, %i.g
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds i8, ptr %i.uo, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !8
  %i.vh = lshr i8 %i.vg, 2
  %i.vi = and i8 %i.vh, 3                         ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !8
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.vk = load ptr, ptr %i.am, align 8, !tbaa !32 ; 5 uses
  %.not855 = icmp eq ptr %i.vk, null
  br i1 %.not855, label %.thread1026, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 %i.l
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !8
  %i.vn = lshr i8 %i.vm, 6                        ; 2 uses
  store i8 %i.vn, ptr %i.d, align 1, !tbaa !8
  %i.vo = getelementptr inbounds i8, ptr %i.vk, i64 %i.p
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !8
  %i.vq = lshr i8 %i.vp, 6                        ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !8
  %i.vs = getelementptr inbounds i8, ptr %i.vk, i64 %i.t
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !8
  %i.vu = lshr i8 %i.vt, 6                        ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.vu, ptr %i.vv, align 1, !tbaa !8
  %i.vw = add nsw i32 %i.o, %i.g
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds i8, ptr %i.vk, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !8
  %i.wa = lshr i8 %i.vz, 6                        ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.wa, ptr %i.wb, align 1, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bi, %bb.bg, %bb.bc
  %i.wc = phi i8 [ %i.um, %bb.be ], [ %i.wa, %bb.bi ], [ %i.tf, %bb.bc ], [ %i.vi, %bb.bg ] ; 2 uses
  %i.wd = phi i8 [ %i.uh, %bb.be ], [ %i.vu, %bb.bi ], [ %i.td, %bb.bc ], [ %i.vb, %bb.bg ] ; 2 uses
  %i.we = phi i8 [ %i.uc, %bb.be ], [ %i.vq, %bb.bi ], [ %i.ta, %bb.bc ], [ %i.uw, %bb.bg ] ; 2 uses
  %i.wf = phi i8 [ %i.ty, %bb.be ], [ %i.vn, %bb.bi ], [ %i.sy, %bb.bc ], [ %i.us, %bb.bg ] ; 2 uses
  %i.wg = icmp eq i8 %i.wf, 3                     ; 2 uses
  %i.wh = icmp eq i8 %i.we, 3                     ; 2 uses
  %or.cond = select i1 %i.wg, i1 true, i1 %i.wh   ; 2 uses
  %i.wi = icmp eq i8 %i.wd, 3                     ; 2 uses
  %or.cond9 = select i1 %or.cond, i1 true, i1 %i.wi
  %i.wj = icmp eq i8 %i.wc, 3
  %spec.select1038 = select i1 %or.cond9, i1 true, i1 %i.wj
  br label %.thread1026

.thread1026:                                      ; preds = %bb.bj, %bb.bh
  %i.wk = phi i1 [ %i.wi, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %or.cond1029 = phi i1 [ %or.cond, %bb.bj ], [ true, %bb.bh ] ; 3 uses
  %i.wl = phi i1 [ %i.wh, %bb.bj ], [ undef, %bb.bh ] ; 2 uses
  %i.wm = phi i1 [ %i.wg, %bb.bj ], [ undef, %bb.bh ] ; 2 uses
  %i.wn = phi i8 [ %i.wf, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %i.wo = phi i8 [ %i.we, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %i.wp = phi i8 [ %i.wd, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %i.wq = phi i8 [ %i.wc, %bb.bj ], [ undef, %bb.bh ] ; 4 uses
  %i.wr = phi i1 [ %spec.select1038, %bb.bj ], [ true, %bb.bh ] ; 4 uses
  %i.ws = icmp ugt i8 %spec.store.select, 13      ; 9 uses
  %i.wt = zext i8 %i.wn to i32
  %i.wu = shl nuw nsw i32 %i.wt, 14               ; 2 uses
  %i.wv = zext i8 %i.wo to i32
  %i.ww = shl nuw nsw i32 %i.wv, 14               ; 2 uses
end_hunk_1
begin_hunk_2_@stbvox_make_mesh_for_block_with_geo:bb.a
  %i.acf = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 23), align 1, !tbaa !8
  %i.acg = zext i8 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !17
  %i.acj = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 80), align 16, !tbaa !17
  %i.ack = insertelement <4 x i32> poison, i32 %i.abv, i64 0
  %i.acl = insertelement <4 x i32> %i.ack, i32 %i.aca, i64 1
  %i.acm = insertelement <4 x i32> %i.acl, i32 %i.ace, i64 2
  %i.acn = insertelement <4 x i32> %i.acm, i32 %i.aci, i64 3
  %i.aco = add <4 x i32> %i.acn, %i.acj
  store <4 x i32> %i.aco, ptr %i.abw, align 16, !tbaa !17
  %.sroa.0529.0.extract.trunc.mask856 = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask857 = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.acp = and i24 %.sroa.28.0.extract.trunc.mask857, 32640
  %i.acq = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow858 = or disjoint i24 %i.acq, %.sroa.0529.0.extract.trunc.mask856
  %narrow859 = add nuw i24 %narrow858, %i.acp
  %i.acr = zext i24 %narrow859 to i32             ; 12 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.act = zext i8 %.0789 to i64                  ; 3 uses
  %i.acu = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %i.act
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !16
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.acx = getelementptr inbounds nuw [12 x i8], ptr %i.acw, i64 %i.act
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !17
  %i.acz = mul nsw i32 %i.acy, 6
  %i.ada = sext i32 %i.acz to i64
  %i.adb = getelementptr inbounds i8, ptr %i.acv, i64 %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.add = getelementptr inbounds nuw [24 x i8], ptr %i.adc, i64 %i.act
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !16
  %.not870 = icmp ugt ptr %i.adb, %i.ade
  br i1 %.not870, label %.thread900, label %bb.bk

.thread900:                                       ; preds = %.thread1026
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.adf, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cs

bb.bk:                                            ; preds = %.thread1026
  %i.adg = and i32 %.5, 16
  %.not860 = icmp eq i32 %i.adg, 0
  br i1 %.not860, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ws, label %.sink.split1046, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.adh = add nuw nsw i32 %.1043.a, %.1044.a
  %i.adi = add nuw nsw i32 %.1042.a, %.1045
  %.not861 = icmp eq i32 %i.adh, %i.adi
  br i1 %.not861, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adj = icmp eq i8 %spec.store.select, 12
  %i.adk = and i32 %.5, 32
  %.not862883 = icmp eq i32 %i.adk, 0             ; 2 uses
  br i1 %i.adj, label %.thread882, label %.thread1030

bb.bo:                                            ; preds = %bb.bm
  %i.adl = zext i8 %i.wp to i64
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr @stbvox_planar_face_up_normal, i64 %i.adl
  %i.adn = zext i8 %i.wo to i64
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.adn
  %i.adp = zext i8 %i.wn to i64
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adp
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !8
  %i.ads = zext i8 %i.adr to i32
  br label %.sink.split1046

.sink.split1046:                                  ; preds = %bb.bl, %bb.bo
  %.sink = phi i32 [ %i.ads, %bb.bo ], [ 4, %bb.bl ]
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.aaz, i8 noundef zeroext %.0789, i32 noundef %.sink)
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split1046, %bb.bk
  %i.adt = and i32 %.5, 32
  %.not862 = icmp eq i32 %i.adt, 0
  br i1 %.not862, label %bb.bw, label %bb.bq

.thread1030:                                      ; preds = %bb.bn
  call void @stbvox_make_12_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.aaz, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br i1 %.not862883, label %bb.bw, label %.thread884

.thread882:                                       ; preds = %bb.bn
  call void @stbvox_make_03_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.aaz, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br i1 %.not862883, label %bb.bw, label %.thread884

bb.bq:                                            ; preds = %bb.bp
  %i.adu = icmp ult i8 %spec.store.select, 14
  br i1 %i.adu, label %.thread884, label %bb.br

.thread884:                                       ; preds = %.thread1030, %.thread882, %bb.bq
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.abw, i8 noundef zeroext %.0789, i32 noundef 5)
  br label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.adv = add nuw nsw i32 %.1039.a, %.1040.a
  %i.adw = add nuw nsw i32 %., %.1041.a
  %.not863 = icmp eq i32 %i.adv, %i.adw
  br i1 %.not863, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.adx = icmp eq i8 %spec.store.select, 14
  br i1 %i.adx, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @stbvox_make_03_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.abw, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @stbvox_make_12_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.abw, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.ady = zext i8 %i.wp to i64
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr @stbvox_planar_face_up_normal, i64 %i.ady
  %i.aea = zext i8 %i.wo to i64
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.aea
  %i.aec = zext i8 %i.wn to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !8
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr @stbvox_reverse_face, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !8
  %i.aei = zext i8 %i.aeh to i32
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.abw, i8 noundef zeroext %.0789, i32 noundef %i.aei)
  br label %bb.bw

bb.bw:                                            ; preds = %.thread1030, %.thread882, %.thread884, %bb.bt, %bb.bu, %bb.bv, %bb.bp
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !31 ; 2 uses
  %.not864 = icmp eq ptr %i.aek, null
  br i1 %.not864, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ael = getelementptr inbounds i8, ptr %i.aek, i64 %i.l
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !8
  %i.aen = and i8 %i.aem, -49
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.aeo = load ptr, ptr %i.iz, align 8, !tbaa !26
  %.not865 = icmp eq ptr %i.aeo, null
  %i.aep = mul nuw i8 %.2800, 69
  %spec.select1047 = select i1 %.not865, i8 0, i8 %i.aep
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.0109.0 = phi i8 [ %i.aen, %bb.bx ], [ %spec.select1047, %bb.by ] ; 5 uses
  %i.aeq = and i32 %.5, 2
  %.not866 = icmp eq i32 %i.aeq, 0
  br i1 %.not866, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.wr, label %bb.cb, label %.thread885

bb.cb:                                            ; preds = %bb.ca
  %i.aer = icmp eq i8 %i.wq, 3
  %or.cond13 = select i1 %i.wk, i1 true, i1 %i.aer
  br i1 %or.cond13, label %.thread903, label %.thread888

bb.cc:                                            ; preds = %bb.bz
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.yi, i8 noundef zeroext %.0789, i32 noundef 1)
  %i.aes = and i32 %.5, 8
  %.not867 = icmp eq i32 %i.aes, 0
  br i1 %.not867, label %bb.cd, label %bb.ce

.thread903:                                       ; preds = %bb.cb
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.yi, i8 noundef zeroext %.0789, i32 noundef 1)
  %i.aet = and i32 %.5, 8
  %.not867904 = icmp ne i32 %i.aet, 0
  %brmerge = or i1 %.not867904, %or.cond1029
  br i1 %brmerge, label %bb.ce, label %.thread891

.thread888:                                       ; preds = %bb.cb
  %i.aeu = and i32 %.5, 8
  %.not867889 = icmp ne i32 %i.aeu, 0
  %brmerge906 = or i1 %.not867889, %or.cond1029
  br i1 %brmerge906, label %bb.ce, label %.thread891

.thread885:                                       ; preds = %bb.ca
  %i.aev = and i32 %.5, 8
  %.not867886 = icmp eq i32 %i.aev, 0
  br i1 %.not867886, label %.thread887, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.wr, label %.thread890, label %.thread887

.thread890:                                       ; preds = %bb.cd
  br i1 %or.cond1029, label %bb.ce, label %.thread891

bb.ce:                                            ; preds = %.thread888, %.thread903, %.thread885, %.thread890, %bb.cc
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.aac, i8 noundef zeroext %.0789, i32 noundef 3)
  br label %.thread887

.thread887:                                       ; preds = %.thread885, %bb.ce, %bb.cd
  %5 = and i32 %.5, 1
  %.not868 = icmp eq i32 %5, 0
  br i1 %.not868, label %bb.cf, label %bb.cg

.thread891:                                       ; preds = %.thread888, %.thread903, %.thread890
  %.not868892 = trunc i32 %.5 to i1
  %i.aew = icmp eq i8 %i.wq, 3
  %i.aex = select i1 %.not868892, i1 true, i1 %i.wl
  %or.cond1049 = select i1 %i.aex, i1 true, i1 %i.aew
  br i1 %or.cond1049, label %bb.cg, label %.thread897

bb.cf:                                            ; preds = %.thread887
  br i1 %i.wr, label %.thread893.a, label %.thread894

.thread893.a:                                     ; preds = %bb.cf
  %.old1048 = icmp eq i8 %i.wq, 3
  %or.cond21.old = select i1 %i.wl, i1 true, i1 %.old1048
  br i1 %or.cond21.old, label %bb.cg, label %.thread897

bb.cg:                                            ; preds = %.thread887, %.thread893.a, %.thread891
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.b, i8 noundef zeroext %.0789, i32 noundef 0)
  %i.aey = and i32 %.5, 4
  %.not869 = icmp ne i32 %i.aey, 0
  %or.cond25.old = select i1 %i.wm, i1 true, i1 %i.wk
  %or.cond908.a = select i1 %i.wr, i1 %or.cond25.old, i1 false
  %or.cond909 = select i1 %.not869, i1 true, i1 %or.cond908.a
  br i1 %or.cond909, label %bb.ch, label %.thread896

.thread897:                                       ; preds = %.thread891, %.thread893.a
  %i.aez = and i32 %.5, 4
  %.not869898 = icmp ne i32 %i.aez, 0
  %i.afa = or i1 %.not869898, %i.wm
  %or.cond907 = select i1 %i.afa, i1 true, i1 %i.wk
  br i1 %or.cond907, label %bb.ch, label %.thread896

.thread894:                                       ; preds = %bb.cf
  %i.afb = and i32 %.5, 4
  %.not869895 = icmp eq i32 %i.afb, 0
  br i1 %.not869895, label %.thread896, label %bb.ch

bb.ch:                                            ; preds = %.thread897, %.thread894, %bb.cg
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.acr, ptr noundef nonnull %i.zf, i8 noundef zeroext %.0789, i32 noundef 2)
  br label %.thread896

.thread896:                                       ; preds = %bb.cg, %.thread897, %.thread894, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cs

bb.ci:                                            ; preds = %bb.ba
  %.old = icmp eq i8 %spec.store.select, 10
  br i1 %.old, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  %.sroa.0529.0.extract.trunc.mask871 = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask872 = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.afc = and i24 %.sroa.28.0.extract.trunc.mask872, 32640
  %i.afd = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow873 = or disjoint i24 %i.afd, %.sroa.0529.0.extract.trunc.mask871
  %narrow874 = add nuw i24 %narrow873, %i.afc
  %i.afe = zext i24 %narrow874 to i32             ; 4 uses
  %i.aff = load i32, ptr %i.iy, align 8, !tbaa !27
  %i.afg = trunc i32 %i.aff to i8
  %i.afh = load ptr, ptr %i.iz, align 8, !tbaa !26 ; 2 uses
  %.not875 = icmp eq ptr %i.afh, null
  br i1 %.not875, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afi = getelementptr inbounds i8, ptr %i.afh, i64 %i.l
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !8 ; 2 uses
  %i.afk = lshr i8 %i.afj, 4
  %i.afl = and i8 %i.afj, 15
  %i.afm = and i8 %i.afk, 3
  %i.afn = mul nuw i8 %i.afm, 69
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %spec.select1050 = phi i8 [ %i.afn, %bb.ck ], [ 0, %bb.cj ]
  %.0792 = phi i8 [ %i.afl, %bb.ck ], [ %i.afg, %bb.cj ]
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !28 ; 2 uses
  %.not876 = icmp eq ptr %i.afp, null
  br i1 %.not876, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afq = zext i8 %i.n to i64
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 %i.afq
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.1793 = phi i8 [ %i.afs, %bb.cm ], [ %.0792, %bb.cl ] ; 5 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.afu = zext i8 %.1793 to i64                  ; 3 uses
  %i.afv = getelementptr inbounds nuw [24 x i8], ptr %i.aft, i64 %i.afu
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !16
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.afy = getelementptr inbounds nuw [12 x i8], ptr %i.afx, i64 %i.afu
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !17
  %i.aga = shl nsw i32 %i.afz, 2
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds i8, ptr %i.afw, i64 %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.age = getelementptr inbounds nuw [24 x i8], ptr %i.agd, i64 %i.afu
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !16
  %.not879 = icmp ugt ptr %i.agc, %i.agf
  br i1 %.not879, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.agg, align 4, !tbaa !29
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !31 ; 2 uses
  %.not877 = icmp eq ptr %i.agi, null
  br i1 %.not877, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.agj = getelementptr inbounds i8, ptr %i.agi, i64 %i.l
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !8
  %i.agl = and i8 %i.agk, -49
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.sroa.0.0 = phi i8 [ %i.agl, %bb.cq ], [ %spec.select1050, %bb.cp ] ; 4 uses
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.afe, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 16), i8 noundef zeroext %.1793, i32 noundef 24)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.afe, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 48), i8 noundef zeroext %.1793, i32 noundef 26)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.afe, ptr noundef nonnull @stbvox_vmesh_crossed_pair, i8 noundef zeroext %.1793, i32 noundef 27)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.afe, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 32), i8 noundef zeroext %.1793, i32 noundef 25)
  br label %bb.cs

bb.cs:                                            ; preds = %.thread1033, %.thread896, %.thread900, %bb.az, %bb.co, %bb.cr, %bb.ci, %bb.s
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbvox_make_mesh_for_column(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %i.c = mul nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = mul nsw i32 %i.e, %2
  %i.g = add nsw i32 %i.f, %i.c                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 7 uses
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not198208 = icmp slt i32 %3, %i.p
  br i1 %.not198208, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = trunc i32 %2 to i24
  %.sroa.6.0.insert.ext118 = shl i24 %i.q, 8
  %.sroa.6.0.insert.shift119 = and i24 %.sroa.6.0.insert.ext118, 65280
  %i.r = trunc i32 %1 to i24
  %.sroa.0.0.insert.ext111 = and i24 %i.r, 255
  %invariant.op = or disjoint i24 %.sroa.6.0.insert.shift119, %.sroa.0.0.insert.ext111
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.t = sext i32 %3 to i64
  %i.u = sext i32 %i.e to i64                     ; 2 uses
  %i.v = sext i32 %i.b to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.q
  %i.w = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 11 uses
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %.not184 = icmp eq i8 %i.y, 0
  br i1 %.not184, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i64 %indvars.iv, %i.u            ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %.not185 = icmp eq i8 %i.ab, 0
  br i1 %.not185, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = and i8 %i.ad, 15
  %.not186 = icmp eq i8 %i.ae, 0
  br i1 %.not186, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i64 %indvars.iv, %i.u           ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
end_hunk_2
