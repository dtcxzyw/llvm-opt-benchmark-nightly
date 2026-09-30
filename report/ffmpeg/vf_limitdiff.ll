Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_limitdiff?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@limitdiff8:bb.a
  br label %pred.sdiv.continue58

pred.sdiv.continue58:                             ; preds = %pred.sdiv.if57, %pred.sdiv.continue
  %i.al = phi <16 x i32> [ %i.ad, %pred.sdiv.continue ], [ %i.ak, %pred.sdiv.if57 ] ; 2 uses
  %i.am = extractelement <16 x i1> %i.v, i64 2
  br i1 %i.am, label %pred.sdiv.if59, label %pred.sdiv.continue60

pred.sdiv.if59:                                   ; preds = %pred.sdiv.continue58
  %i.an = extractelement <16 x i32> %i.s, i64 2
  %i.ao = sub nuw nsw i32 %5, %i.an
  %i.ap = extractelement <16 x i32> %i.o, i64 2
  %i.aq = mul nsw i32 %i.ao, %i.ap
  %i.ar = sdiv i32 %i.aq, %i.f
  %i.as = insertelement <16 x i32> %i.al, i32 %i.ar, i64 2
  br label %pred.sdiv.continue60

pred.sdiv.continue60:                             ; preds = %pred.sdiv.if59, %pred.sdiv.continue58
  %i.at = phi <16 x i32> [ %i.al, %pred.sdiv.continue58 ], [ %i.as, %pred.sdiv.if59 ] ; 2 uses
  %i.au = extractelement <16 x i1> %i.v, i64 3
  br i1 %i.au, label %pred.sdiv.if61, label %pred.sdiv.continue62

pred.sdiv.if61:                                   ; preds = %pred.sdiv.continue60
  %i.av = extractelement <16 x i32> %i.s, i64 3
  %i.aw = sub nuw nsw i32 %5, %i.av
  %i.ax = extractelement <16 x i32> %i.o, i64 3
  %i.ay = mul nsw i32 %i.aw, %i.ax
  %i.az = sdiv i32 %i.ay, %i.f
  %i.ba = insertelement <16 x i32> %i.at, i32 %i.az, i64 3
  br label %pred.sdiv.continue62

pred.sdiv.continue62:                             ; preds = %pred.sdiv.if61, %pred.sdiv.continue60
  %i.bb = phi <16 x i32> [ %i.at, %pred.sdiv.continue60 ], [ %i.ba, %pred.sdiv.if61 ] ; 2 uses
  %i.bc = extractelement <16 x i1> %i.v, i64 4
  br i1 %i.bc, label %pred.sdiv.if63, label %pred.sdiv.continue64

pred.sdiv.if63:                                   ; preds = %pred.sdiv.continue62
  %i.bd = extractelement <16 x i32> %i.s, i64 4
  %i.be = sub nuw nsw i32 %5, %i.bd
  %i.bf = extractelement <16 x i32> %i.o, i64 4
  %i.bg = mul nsw i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, %i.f
  %i.bi = insertelement <16 x i32> %i.bb, i32 %i.bh, i64 4
  br label %pred.sdiv.continue64

pred.sdiv.continue64:                             ; preds = %pred.sdiv.if63, %pred.sdiv.continue62
  %i.bj = phi <16 x i32> [ %i.bb, %pred.sdiv.continue62 ], [ %i.bi, %pred.sdiv.if63 ] ; 2 uses
  %i.bk = extractelement <16 x i1> %i.v, i64 5
  br i1 %i.bk, label %pred.sdiv.if65, label %pred.sdiv.continue66

pred.sdiv.if65:                                   ; preds = %pred.sdiv.continue64
  %i.bl = extractelement <16 x i32> %i.s, i64 5
  %i.bm = sub nuw nsw i32 %5, %i.bl
  %i.bn = extractelement <16 x i32> %i.o, i64 5
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = sdiv i32 %i.bo, %i.f
  %i.bq = insertelement <16 x i32> %i.bj, i32 %i.bp, i64 5
  br label %pred.sdiv.continue66

pred.sdiv.continue66:                             ; preds = %pred.sdiv.if65, %pred.sdiv.continue64
  %i.br = phi <16 x i32> [ %i.bj, %pred.sdiv.continue64 ], [ %i.bq, %pred.sdiv.if65 ] ; 2 uses
  %i.bs = extractelement <16 x i1> %i.v, i64 6
  br i1 %i.bs, label %pred.sdiv.if67, label %pred.sdiv.continue68

pred.sdiv.if67:                                   ; preds = %pred.sdiv.continue66
  %i.bt = extractelement <16 x i32> %i.s, i64 6
  %i.bu = sub nuw nsw i32 %5, %i.bt
  %i.bv = extractelement <16 x i32> %i.o, i64 6
  %i.bw = mul nsw i32 %i.bu, %i.bv
  %i.bx = sdiv i32 %i.bw, %i.f
  %i.by = insertelement <16 x i32> %i.br, i32 %i.bx, i64 6
  br label %pred.sdiv.continue68

pred.sdiv.continue68:                             ; preds = %pred.sdiv.if67, %pred.sdiv.continue66
  %i.bz = phi <16 x i32> [ %i.br, %pred.sdiv.continue66 ], [ %i.by, %pred.sdiv.if67 ] ; 2 uses
  %i.ca = extractelement <16 x i1> %i.v, i64 7
  br i1 %i.ca, label %pred.sdiv.if69, label %pred.sdiv.continue70

pred.sdiv.if69:                                   ; preds = %pred.sdiv.continue68
  %i.cb = extractelement <16 x i32> %i.s, i64 7
  %i.cc = sub nuw nsw i32 %5, %i.cb
  %i.cd = extractelement <16 x i32> %i.o, i64 7
  %i.ce = mul nsw i32 %i.cc, %i.cd
  %i.cf = sdiv i32 %i.ce, %i.f
  %i.cg = insertelement <16 x i32> %i.bz, i32 %i.cf, i64 7
  br label %pred.sdiv.continue70

pred.sdiv.continue70:                             ; preds = %pred.sdiv.if69, %pred.sdiv.continue68
  %i.ch = phi <16 x i32> [ %i.bz, %pred.sdiv.continue68 ], [ %i.cg, %pred.sdiv.if69 ] ; 2 uses
  %i.ci = extractelement <16 x i1> %i.v, i64 8
  br i1 %i.ci, label %pred.sdiv.if71, label %pred.sdiv.continue72

pred.sdiv.if71:                                   ; preds = %pred.sdiv.continue70
  %i.cj = extractelement <16 x i32> %i.s, i64 8
  %i.ck = sub nuw nsw i32 %5, %i.cj
  %i.cl = extractelement <16 x i32> %i.o, i64 8
  %i.cm = mul nsw i32 %i.ck, %i.cl
  %i.cn = sdiv i32 %i.cm, %i.f
  %i.co = insertelement <16 x i32> %i.ch, i32 %i.cn, i64 8
  br label %pred.sdiv.continue72

pred.sdiv.continue72:                             ; preds = %pred.sdiv.if71, %pred.sdiv.continue70
  %i.cp = phi <16 x i32> [ %i.ch, %pred.sdiv.continue70 ], [ %i.co, %pred.sdiv.if71 ] ; 2 uses
  %i.cq = extractelement <16 x i1> %i.v, i64 9
  br i1 %i.cq, label %pred.sdiv.if73, label %pred.sdiv.continue74

pred.sdiv.if73:                                   ; preds = %pred.sdiv.continue72
  %i.cr = extractelement <16 x i32> %i.s, i64 9
  %i.cs = sub nuw nsw i32 %5, %i.cr
  %i.ct = extractelement <16 x i32> %i.o, i64 9
  %i.cu = mul nsw i32 %i.cs, %i.ct
  %i.cv = sdiv i32 %i.cu, %i.f
  %i.cw = insertelement <16 x i32> %i.cp, i32 %i.cv, i64 9
  br label %pred.sdiv.continue74

pred.sdiv.continue74:                             ; preds = %pred.sdiv.if73, %pred.sdiv.continue72
  %i.cx = phi <16 x i32> [ %i.cp, %pred.sdiv.continue72 ], [ %i.cw, %pred.sdiv.if73 ] ; 2 uses
  %i.cy = extractelement <16 x i1> %i.v, i64 10
  br i1 %i.cy, label %pred.sdiv.if75, label %pred.sdiv.continue76

pred.sdiv.if75:                                   ; preds = %pred.sdiv.continue74
  %i.cz = extractelement <16 x i32> %i.s, i64 10
  %i.da = sub nuw nsw i32 %5, %i.cz
  %i.db = extractelement <16 x i32> %i.o, i64 10
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sdiv i32 %i.dc, %i.f
  %i.de = insertelement <16 x i32> %i.cx, i32 %i.dd, i64 10
  br label %pred.sdiv.continue76

pred.sdiv.continue76:                             ; preds = %pred.sdiv.if75, %pred.sdiv.continue74
  %i.df = phi <16 x i32> [ %i.cx, %pred.sdiv.continue74 ], [ %i.de, %pred.sdiv.if75 ] ; 2 uses
  %i.dg = extractelement <16 x i1> %i.v, i64 11
  br i1 %i.dg, label %pred.sdiv.if77, label %pred.sdiv.continue78

pred.sdiv.if77:                                   ; preds = %pred.sdiv.continue76
  %i.dh = extractelement <16 x i32> %i.s, i64 11
  %i.di = sub nuw nsw i32 %5, %i.dh
  %i.dj = extractelement <16 x i32> %i.o, i64 11
  %i.dk = mul nsw i32 %i.di, %i.dj
  %i.dl = sdiv i32 %i.dk, %i.f
  %i.dm = insertelement <16 x i32> %i.df, i32 %i.dl, i64 11
  br label %pred.sdiv.continue78

pred.sdiv.continue78:                             ; preds = %pred.sdiv.if77, %pred.sdiv.continue76
  %i.dn = phi <16 x i32> [ %i.df, %pred.sdiv.continue76 ], [ %i.dm, %pred.sdiv.if77 ] ; 2 uses
  %i.do = extractelement <16 x i1> %i.v, i64 12
  br i1 %i.do, label %pred.sdiv.if79, label %pred.sdiv.continue80

pred.sdiv.if79:                                   ; preds = %pred.sdiv.continue78
  %i.dp = extractelement <16 x i32> %i.s, i64 12
  %i.dq = sub nuw nsw i32 %5, %i.dp
  %i.dr = extractelement <16 x i32> %i.o, i64 12
  %i.ds = mul nsw i32 %i.dq, %i.dr
  %i.dt = sdiv i32 %i.ds, %i.f
  %i.du = insertelement <16 x i32> %i.dn, i32 %i.dt, i64 12
  br label %pred.sdiv.continue80

pred.sdiv.continue80:                             ; preds = %pred.sdiv.if79, %pred.sdiv.continue78
  %i.dv = phi <16 x i32> [ %i.dn, %pred.sdiv.continue78 ], [ %i.du, %pred.sdiv.if79 ] ; 2 uses
  %i.dw = extractelement <16 x i1> %i.v, i64 13
  br i1 %i.dw, label %pred.sdiv.if81, label %pred.sdiv.continue82

pred.sdiv.if81:                                   ; preds = %pred.sdiv.continue80
  %i.dx = extractelement <16 x i32> %i.s, i64 13
  %i.dy = sub nuw nsw i32 %5, %i.dx
  %i.dz = extractelement <16 x i32> %i.o, i64 13
  %i.ea = mul nsw i32 %i.dy, %i.dz
  %i.eb = sdiv i32 %i.ea, %i.f
  %i.ec = insertelement <16 x i32> %i.dv, i32 %i.eb, i64 13
  br label %pred.sdiv.continue82

pred.sdiv.continue82:                             ; preds = %pred.sdiv.if81, %pred.sdiv.continue80
  %i.ed = phi <16 x i32> [ %i.dv, %pred.sdiv.continue80 ], [ %i.ec, %pred.sdiv.if81 ] ; 2 uses
  %i.ee = extractelement <16 x i1> %i.v, i64 14
  br i1 %i.ee, label %pred.sdiv.if83, label %pred.sdiv.continue84

pred.sdiv.if83:                                   ; preds = %pred.sdiv.continue82
  %i.ef = extractelement <16 x i32> %i.s, i64 14
  %i.eg = sub nuw nsw i32 %5, %i.ef
  %i.eh = extractelement <16 x i32> %i.o, i64 14
  %i.ei = mul nsw i32 %i.eg, %i.eh
  %i.ej = sdiv i32 %i.ei, %i.f
  %i.ek = insertelement <16 x i32> %i.ed, i32 %i.ej, i64 14
  br label %pred.sdiv.continue84

pred.sdiv.continue84:                             ; preds = %pred.sdiv.if83, %pred.sdiv.continue82
  %i.el = phi <16 x i32> [ %i.ed, %pred.sdiv.continue82 ], [ %i.ek, %pred.sdiv.if83 ] ; 2 uses
  %i.em = extractelement <16 x i1> %i.v, i64 15
  br i1 %i.em, label %pred.sdiv.if85, label %pred.sdiv.continue86

pred.sdiv.if85:                                   ; preds = %pred.sdiv.continue84
  %i.en = extractelement <16 x i32> %i.s, i64 15
  %i.eo = sub nuw nsw i32 %5, %i.en
  %i.ep = extractelement <16 x i32> %i.o, i64 15
  %i.eq = mul nsw i32 %i.eo, %i.ep
  %i.er = sdiv i32 %i.eq, %i.f
  %i.es = insertelement <16 x i32> %i.el, i32 %i.er, i64 15
  br label %pred.sdiv.continue86

pred.sdiv.continue86:                             ; preds = %pred.sdiv.if85, %pred.sdiv.continue84
  %i.et = phi <16 x i32> [ %i.el, %pred.sdiv.continue84 ], [ %i.es, %pred.sdiv.if85 ]
  %i.eu = add nsw <16 x i32> %i.et, %i.n
  %8 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eu, <16 x i32> zeroinitializer)
  %9 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %8, <16 x i32> splat (i32 255))
  %i.ev = trunc nuw <16 x i32> %9 to <16 x i8>
  %predphi = select <16 x i1> %i.u, <16 x i8> %i.ev, <16 x i8> %wide.load55
  %predphi87 = select <16 x i1> %i.t, <16 x i8> %predphi, <16 x i8> %wide.load
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <16 x i8> %predphi87, ptr %i.ew, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %pred.sdiv.continue86
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert89 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat90 = shufflevector <8 x i32> %broadcast.splatinsert89, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.sdiv.continue112, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %pred.sdiv.continue112 ] ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %index93
  %wide.load94 = load <8 x i8>, ptr %i.ey, align 1, !tbaa !93 ; 2 uses
  %i.ez = zext <8 x i8> %wide.load94 to <8 x i32> ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %index93
  %wide.load95 = load <8 x i8>, ptr %i.fa, align 1, !tbaa !93 ; 2 uses
  %i.fb = zext <8 x i8> %wide.load95 to <8 x i32> ; 2 uses
  %i.fc = sub nsw <8 x i32> %i.ez, %i.fb          ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 %index93
  %wide.load96 = load <8 x i8>, ptr %i.fd, align 1, !tbaa !93
  %i.fe = zext <8 x i8> %wide.load96 to <8 x i32>
  %i.ff = sub nsw <8 x i32> %i.ez, %i.fe
  %i.fg = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ff, i1 true) ; 10 uses
  %i.fh = icmp sgt <8 x i32> %i.fg, %broadcast.splat90 ; 2 uses
  %i.fi = icmp slt <8 x i32> %i.fg, %broadcast.splat92 ; 2 uses
  %i.fj = and <8 x i1> %i.fh, %i.fi               ; 8 uses
  %i.fk = extractelement <8 x i1> %i.fj, i64 0
  br i1 %i.fk, label %pred.sdiv.if97, label %pred.sdiv.continue98

pred.sdiv.if97:                                   ; preds = %vec.epilog.vector.body
  %i.fl = extractelement <8 x i32> %i.fg, i64 0
  %i.fm = sub nuw nsw i32 %5, %i.fl
  %i.fn = extractelement <8 x i32> %i.fc, i64 0
  %i.fo = mul nsw i32 %i.fm, %i.fn
  %i.fp = sdiv i32 %i.fo, %i.f
  %i.fq = insertelement <8 x i32> poison, i32 %i.fp, i64 0
  br label %pred.sdiv.continue98

pred.sdiv.continue98:                             ; preds = %pred.sdiv.if97, %vec.epilog.vector.body
  %i.fr = phi <8 x i32> [ poison, %vec.epilog.vector.body ], [ %i.fq, %pred.sdiv.if97 ] ; 2 uses
  %i.fs = extractelement <8 x i1> %i.fj, i64 1
  br i1 %i.fs, label %pred.sdiv.if99, label %pred.sdiv.continue100

pred.sdiv.if99:                                   ; preds = %pred.sdiv.continue98
  %i.ft = extractelement <8 x i32> %i.fg, i64 1
  %i.fu = sub nuw nsw i32 %5, %i.ft
  %i.fv = extractelement <8 x i32> %i.fc, i64 1
  %i.fw = mul nsw i32 %i.fu, %i.fv
  %i.fx = sdiv i32 %i.fw, %i.f
  %i.fy = insertelement <8 x i32> %i.fr, i32 %i.fx, i64 1
  br label %pred.sdiv.continue100

pred.sdiv.continue100:                            ; preds = %pred.sdiv.if99, %pred.sdiv.continue98
  %i.fz = phi <8 x i32> [ %i.fr, %pred.sdiv.continue98 ], [ %i.fy, %pred.sdiv.if99 ] ; 2 uses
  %i.ga = extractelement <8 x i1> %i.fj, i64 2
  br i1 %i.ga, label %pred.sdiv.if101, label %pred.sdiv.continue102

pred.sdiv.if101:                                  ; preds = %pred.sdiv.continue100
  %i.gb = extractelement <8 x i32> %i.fg, i64 2
  %i.gc = sub nuw nsw i32 %5, %i.gb
  %i.gd = extractelement <8 x i32> %i.fc, i64 2
  %i.ge = mul nsw i32 %i.gc, %i.gd
  %i.gf = sdiv i32 %i.ge, %i.f
  %i.gg = insertelement <8 x i32> %i.fz, i32 %i.gf, i64 2
  br label %pred.sdiv.continue102

pred.sdiv.continue102:                            ; preds = %pred.sdiv.if101, %pred.sdiv.continue100
  %i.gh = phi <8 x i32> [ %i.fz, %pred.sdiv.continue100 ], [ %i.gg, %pred.sdiv.if101 ] ; 2 uses
  %i.gi = extractelement <8 x i1> %i.fj, i64 3
  br i1 %i.gi, label %pred.sdiv.if103, label %pred.sdiv.continue104

pred.sdiv.if103:                                  ; preds = %pred.sdiv.continue102
  %i.gj = extractelement <8 x i32> %i.fg, i64 3
  %i.gk = sub nuw nsw i32 %5, %i.gj
  %i.gl = extractelement <8 x i32> %i.fc, i64 3
  %i.gm = mul nsw i32 %i.gk, %i.gl
  %i.gn = sdiv i32 %i.gm, %i.f
  %i.go = insertelement <8 x i32> %i.gh, i32 %i.gn, i64 3
  br label %pred.sdiv.continue104

pred.sdiv.continue104:                            ; preds = %pred.sdiv.if103, %pred.sdiv.continue102
  %i.gp = phi <8 x i32> [ %i.gh, %pred.sdiv.continue102 ], [ %i.go, %pred.sdiv.if103 ] ; 2 uses
  %i.gq = extractelement <8 x i1> %i.fj, i64 4
  br i1 %i.gq, label %pred.sdiv.if105, label %pred.sdiv.continue106

pred.sdiv.if105:                                  ; preds = %pred.sdiv.continue104
  %i.gr = extractelement <8 x i32> %i.fg, i64 4
  %i.gs = sub nuw nsw i32 %5, %i.gr
  %i.gt = extractelement <8 x i32> %i.fc, i64 4
  %i.gu = mul nsw i32 %i.gs, %i.gt
  %i.gv = sdiv i32 %i.gu, %i.f
  %i.gw = insertelement <8 x i32> %i.gp, i32 %i.gv, i64 4
  br label %pred.sdiv.continue106

pred.sdiv.continue106:                            ; preds = %pred.sdiv.if105, %pred.sdiv.continue104
  %i.gx = phi <8 x i32> [ %i.gp, %pred.sdiv.continue104 ], [ %i.gw, %pred.sdiv.if105 ] ; 2 uses
  %i.gy = extractelement <8 x i1> %i.fj, i64 5
  br i1 %i.gy, label %pred.sdiv.if107, label %pred.sdiv.continue108

pred.sdiv.if107:                                  ; preds = %pred.sdiv.continue106
  %i.gz = extractelement <8 x i32> %i.fg, i64 5
  %i.ha = sub nuw nsw i32 %5, %i.gz
  %i.hb = extractelement <8 x i32> %i.fc, i64 5
  %i.hc = mul nsw i32 %i.ha, %i.hb
  %i.hd = sdiv i32 %i.hc, %i.f
  %i.he = insertelement <8 x i32> %i.gx, i32 %i.hd, i64 5
  br label %pred.sdiv.continue108

pred.sdiv.continue108:                            ; preds = %pred.sdiv.if107, %pred.sdiv.continue106
  %i.hf = phi <8 x i32> [ %i.gx, %pred.sdiv.continue106 ], [ %i.he, %pred.sdiv.if107 ] ; 2 uses
  %i.hg = extractelement <8 x i1> %i.fj, i64 6
  br i1 %i.hg, label %pred.sdiv.if109, label %pred.sdiv.continue110

pred.sdiv.if109:                                  ; preds = %pred.sdiv.continue108
  %i.hh = extractelement <8 x i32> %i.fg, i64 6
  %i.hi = sub nuw nsw i32 %5, %i.hh
  %i.hj = extractelement <8 x i32> %i.fc, i64 6
  %i.hk = mul nsw i32 %i.hi, %i.hj
  %i.hl = sdiv i32 %i.hk, %i.f
  %i.hm = insertelement <8 x i32> %i.hf, i32 %i.hl, i64 6
  br label %pred.sdiv.continue110

pred.sdiv.continue110:                            ; preds = %pred.sdiv.if109, %pred.sdiv.continue108
  %i.hn = phi <8 x i32> [ %i.hf, %pred.sdiv.continue108 ], [ %i.hm, %pred.sdiv.if109 ] ; 2 uses
  %i.ho = extractelement <8 x i1> %i.fj, i64 7
  br i1 %i.ho, label %pred.sdiv.if111, label %pred.sdiv.continue112

pred.sdiv.if111:                                  ; preds = %pred.sdiv.continue110
  %i.hp = extractelement <8 x i32> %i.fg, i64 7
  %i.hq = sub nuw nsw i32 %5, %i.hp
  %i.hr = extractelement <8 x i32> %i.fc, i64 7
  %i.hs = mul nsw i32 %i.hq, %i.hr
  %i.ht = sdiv i32 %i.hs, %i.f
  %i.hu = insertelement <8 x i32> %i.hn, i32 %i.ht, i64 7
  br label %pred.sdiv.continue112

pred.sdiv.continue112:                            ; preds = %pred.sdiv.if111, %pred.sdiv.continue110
  %i.hv = phi <8 x i32> [ %i.hn, %pred.sdiv.continue110 ], [ %i.hu, %pred.sdiv.if111 ]
  %i.hw = add nsw <8 x i32> %i.hv, %i.fb
  %10 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hw, <8 x i32> zeroinitializer)
  %11 = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %10, <8 x i32> splat (i32 255))
  %i.hx = trunc nuw <8 x i32> %11 to <8 x i8>
  %predphi113 = select <8 x i1> %i.fi, <8 x i8> %i.hx, <8 x i8> %wide.load95
  %predphi114 = select <8 x i1> %i.fh, <8 x i8> %predphi113, <8 x i8> %wide.load94
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %index93
  store <8 x i8> %predphi114, ptr %i.hy, align 1, !tbaa !93
  %index.next115 = add nuw i64 %index93, 8        ; 2 uses
  %i.hz = icmp eq i64 %index.next115, %n.vec88
  br i1 %i.hz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %pred.sdiv.continue112
  %cmp.n116 = icmp eq i64 %n.vec88, %wide.trip.count
  br i1 %cmp.n116, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec88, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !93  ; 2 uses
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !93  ; 2 uses
  %i.if = zext i8 %i.ie to i32                    ; 2 uses
  %i.ig = sub nsw i32 %i.ic, %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !93
  %i.ij = zext i8 %i.ii to i32
  %i.ik = sub nsw i32 %i.ic, %i.ij
  %i.il = tail call i32 @llvm.abs.i32(i32 %i.ik, i1 true) ; 3 uses
  %.not = icmp sgt i32 %i.il, %4
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %vec.epilog.scalar.ph
  %.not43 = icmp slt i32 %i.il, %5
  br i1 %.not43, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.im = sub nuw nsw i32 %5, %i.il
  %i.in = mul nsw i32 %i.im, %i.ig
  %i.io = sdiv i32 %i.in, %i.f
  %i.ip = add nsw i32 %i.io, %i.if
  %12 = tail call i32 @llvm.smax.i32(i32 %i.ip, i32 0)
  %.0.i44 = tail call i32 @llvm.umin.i32(i32 %12, i32 255)
  %i.iq = trunc nuw i32 %.0.i44 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %vec.epilog.scalar.ph, %bb.c
  %.sink = phi i8 [ %i.ib, %vec.epilog.scalar.ph ], [ %i.iq, %bb.c ], [ %i.ie, %bb.b ]
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %.sink, ptr %i.ir, align 1, !tbaa !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !92
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @limitdiff16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = sub nsw i32 %5, %4                       ; 9 uses
  %notmask.i = shl nsw i32 -1, %7                 ; 3 uses
  %i.g = xor i32 %notmask.i, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %6 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.h, -16
  %i.i = sub i64 %i.b, %i.d
  %diff.check54 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check54
  %i.j = sub i64 %i.a, %i.d
  %diff.check55 = icmp ugt i64 %i.j, -16
  %conflict.rdx56 = or i1 %conflict.rdx, %diff.check55
  br i1 %conflict.rdx56, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %notmask.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat58 = shufflevector <8 x i32> %broadcast.splatinsert57, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat60 = shufflevector <8 x i32> %broadcast.splatinsert59, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat62 = shufflevector <8 x i32> %broadcast.splatinsert61, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.sdiv.continue78, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.sdiv.continue78 ] ; 5 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !tbaa !98 ; 2 uses
  %i.l = zext <8 x i16> %wide.load to <8 x i32>   ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %wide.load63 = load <8 x i16>, ptr %i.m, align 2, !tbaa !98 ; 2 uses
  %i.n = zext <8 x i16> %wide.load63 to <8 x i32> ; 2 uses
  %i.o = sub nsw <8 x i32> %i.l, %i.n             ; 8 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  %wide.load64 = load <8 x i16>, ptr %i.p, align 2, !tbaa !98
  %i.q = zext <8 x i16> %wide.load64 to <8 x i32>
  %i.r = sub nsw <8 x i32> %i.l, %i.q
  %i.s = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.r, i1 true) ; 10 uses
  %i.t = icmp sgt <8 x i32> %i.s, %broadcast.splat60 ; 2 uses
  %i.u = icmp slt <8 x i32> %i.s, %broadcast.splat62 ; 2 uses
  %i.v = and <8 x i1> %i.t, %i.u                  ; 8 uses
  %i.w = extractelement <8 x i1> %i.v, i64 0
  br i1 %i.w, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.x = extractelement <8 x i32> %i.s, i64 0
  %i.y = sub nuw nsw i32 %5, %i.x
  %i.z = extractelement <8 x i32> %i.o, i64 0
  %i.aa = mul nsw i32 %i.y, %i.z
  %i.ab = sdiv i32 %i.aa, %i.f
  %i.ac = insertelement <8 x i32> poison, i32 %i.ab, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.ad = phi <8 x i32> [ poison, %vector.body ], [ %i.ac, %pred.sdiv.if ] ; 2 uses
  %i.ae = extractelement <8 x i1> %i.v, i64 1
  br i1 %i.ae, label %pred.sdiv.if65, label %pred.sdiv.continue66

pred.sdiv.if65:                                   ; preds = %pred.sdiv.continue
  %i.af = extractelement <8 x i32> %i.s, i64 1
  %i.ag = sub nuw nsw i32 %5, %i.af
  %i.ah = extractelement <8 x i32> %i.o, i64 1
  %i.ai = mul nsw i32 %i.ag, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.f
  %i.ak = insertelement <8 x i32> %i.ad, i32 %i.aj, i64 1
  br label %pred.sdiv.continue66

pred.sdiv.continue66:                             ; preds = %pred.sdiv.if65, %pred.sdiv.continue
  %i.al = phi <8 x i32> [ %i.ad, %pred.sdiv.continue ], [ %i.ak, %pred.sdiv.if65 ] ; 2 uses
  %i.am = extractelement <8 x i1> %i.v, i64 2
  br i1 %i.am, label %pred.sdiv.if67, label %pred.sdiv.continue68

pred.sdiv.if67:                                   ; preds = %pred.sdiv.continue66
  %i.an = extractelement <8 x i32> %i.s, i64 2
  %i.ao = sub nuw nsw i32 %5, %i.an
  %i.ap = extractelement <8 x i32> %i.o, i64 2
  %i.aq = mul nsw i32 %i.ao, %i.ap
  %i.ar = sdiv i32 %i.aq, %i.f
  %i.as = insertelement <8 x i32> %i.al, i32 %i.ar, i64 2
  br label %pred.sdiv.continue68

pred.sdiv.continue68:                             ; preds = %pred.sdiv.if67, %pred.sdiv.continue66
  %i.at = phi <8 x i32> [ %i.al, %pred.sdiv.continue66 ], [ %i.as, %pred.sdiv.if67 ] ; 2 uses
  %i.au = extractelement <8 x i1> %i.v, i64 3
  br i1 %i.au, label %pred.sdiv.if69, label %pred.sdiv.continue70

pred.sdiv.if69:                                   ; preds = %pred.sdiv.continue68
  %i.av = extractelement <8 x i32> %i.s, i64 3
  %i.aw = sub nuw nsw i32 %5, %i.av
  %i.ax = extractelement <8 x i32> %i.o, i64 3
  %i.ay = mul nsw i32 %i.aw, %i.ax
  %i.az = sdiv i32 %i.ay, %i.f
  %i.ba = insertelement <8 x i32> %i.at, i32 %i.az, i64 3
  br label %pred.sdiv.continue70

pred.sdiv.continue70:                             ; preds = %pred.sdiv.if69, %pred.sdiv.continue68
  %i.bb = phi <8 x i32> [ %i.at, %pred.sdiv.continue68 ], [ %i.ba, %pred.sdiv.if69 ] ; 2 uses
  %i.bc = extractelement <8 x i1> %i.v, i64 4
  br i1 %i.bc, label %pred.sdiv.if71, label %pred.sdiv.continue72

pred.sdiv.if71:                                   ; preds = %pred.sdiv.continue70
  %i.bd = extractelement <8 x i32> %i.s, i64 4
  %i.be = sub nuw nsw i32 %5, %i.bd
  %i.bf = extractelement <8 x i32> %i.o, i64 4
  %i.bg = mul nsw i32 %i.be, %i.bf
  %i.bh = sdiv i32 %i.bg, %i.f
  %i.bi = insertelement <8 x i32> %i.bb, i32 %i.bh, i64 4
  br label %pred.sdiv.continue72

pred.sdiv.continue72:                             ; preds = %pred.sdiv.if71, %pred.sdiv.continue70
  %i.bj = phi <8 x i32> [ %i.bb, %pred.sdiv.continue70 ], [ %i.bi, %pred.sdiv.if71 ] ; 2 uses
  %i.bk = extractelement <8 x i1> %i.v, i64 5
  br i1 %i.bk, label %pred.sdiv.if73, label %pred.sdiv.continue74

pred.sdiv.if73:                                   ; preds = %pred.sdiv.continue72
  %i.bl = extractelement <8 x i32> %i.s, i64 5
  %i.bm = sub nuw nsw i32 %5, %i.bl
  %i.bn = extractelement <8 x i32> %i.o, i64 5
  %i.bo = mul nsw i32 %i.bm, %i.bn
  %i.bp = sdiv i32 %i.bo, %i.f
  %i.bq = insertelement <8 x i32> %i.bj, i32 %i.bp, i64 5
  br label %pred.sdiv.continue74

pred.sdiv.continue74:                             ; preds = %pred.sdiv.if73, %pred.sdiv.continue72
  %i.br = phi <8 x i32> [ %i.bj, %pred.sdiv.continue72 ], [ %i.bq, %pred.sdiv.if73 ] ; 2 uses
  %i.bs = extractelement <8 x i1> %i.v, i64 6
  br i1 %i.bs, label %pred.sdiv.if75, label %pred.sdiv.continue76

pred.sdiv.if75:                                   ; preds = %pred.sdiv.continue74
  %i.bt = extractelement <8 x i32> %i.s, i64 6
  %i.bu = sub nuw nsw i32 %5, %i.bt
  %i.bv = extractelement <8 x i32> %i.o, i64 6
  %i.bw = mul nsw i32 %i.bu, %i.bv
  %i.bx = sdiv i32 %i.bw, %i.f
  %i.by = insertelement <8 x i32> %i.br, i32 %i.bx, i64 6
  br label %pred.sdiv.continue76

pred.sdiv.continue76:                             ; preds = %pred.sdiv.if75, %pred.sdiv.continue74
  %i.bz = phi <8 x i32> [ %i.br, %pred.sdiv.continue74 ], [ %i.by, %pred.sdiv.if75 ] ; 2 uses
  %i.ca = extractelement <8 x i1> %i.v, i64 7
  br i1 %i.ca, label %pred.sdiv.if77, label %pred.sdiv.continue78

pred.sdiv.if77:                                   ; preds = %pred.sdiv.continue76
  %i.cb = extractelement <8 x i32> %i.s, i64 7
  %i.cc = sub nuw nsw i32 %5, %i.cb
  %i.cd = extractelement <8 x i32> %i.o, i64 7
  %i.ce = mul nsw i32 %i.cc, %i.cd
  %i.cf = sdiv i32 %i.ce, %i.f
  %i.cg = insertelement <8 x i32> %i.bz, i32 %i.cf, i64 7
  br label %pred.sdiv.continue78

pred.sdiv.continue78:                             ; preds = %pred.sdiv.if77, %pred.sdiv.continue76
  %i.ch = phi <8 x i32> [ %i.bz, %pred.sdiv.continue76 ], [ %i.cg, %pred.sdiv.if77 ]
  %i.ci = add nsw <8 x i32> %i.ch, %i.n           ; 3 uses
  %i.cj = and <8 x i32> %i.ci, %broadcast.splat
  %i.ck = icmp eq <8 x i32> %i.cj, zeroinitializer
  %i.cl = icmp slt <8 x i32> %i.ci, zeroinitializer
  %i.cm = select <8 x i1> %i.cl, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat58
  %i.cn = select <8 x i1> %i.ck, <8 x i32> %i.ci, <8 x i32> %i.cm
  %i.co = trunc <8 x i32> %i.cn to <8 x i16>
  %predphi = select <8 x i1> %i.u, <8 x i16> %i.co, <8 x i16> %wide.load63
  %predphi79 = select <8 x i1> %i.t, <8 x i16> %predphi, <8 x i16> %wide.load
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %predphi79, ptr %i.cp, align 2, !tbaa !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %pred.sdiv.continue78
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !98 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !98 ; 2 uses
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = sub nsw i32 %i.ct, %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !98
  %i.da = zext i16 %i.cz to i32
  %i.db = sub nsw i32 %i.ct, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true) ; 3 uses
  %.not = icmp sgt i32 %i.dc, %4
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %scalar.ph
  %.not48 = icmp slt i32 %i.dc, %5
  br i1 %.not48, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dd = sub nuw nsw i32 %5, %i.dc
  %i.de = mul nsw i32 %i.dd, %i.cx
  %i.df = sdiv i32 %i.de, %i.f
  %i.dg = add nsw i32 %i.df, %i.cw                ; 3 uses
  %i.dh = and i32 %i.dg, %notmask.i
  %.not.i = icmp eq i32 %i.dh, 0
  %isnotneg.inv.i = icmp slt i32 %i.dg, 0
  %i.di = select i1 %isnotneg.inv.i, i32 0, i32 %i.g
  %.0.i = select i1 %.not.i, i32 %i.dg, i32 %i.di
  %i.dj = trunc i32 %.0.i to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %scalar.ph, %bb.c
  %.sink = phi i16 [ %i.cs, %scalar.ph ], [ %i.dj, %bb.c ], [ %i.cv, %bb.b ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %.sink, ptr %i.dk, align 2, !tbaa !98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !96
}

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #1

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"AVFilterPad", !12, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!21 = !{!20, !12, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!24 = !{!"AVRational", !6, i64 0, !6, i64 4}
!25 = !{!"long", !5, i64 0}
!26 = !{!"p1 _ZTS13FFFrameSyncIn", !9, i64 0}
!27 = !{!"FFFrameSync", !10, i64 0, !23, i64 8, !6, i64 16, !24, i64 20, !25, i64 32, !9, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 65, !26, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!28 = !{!"LimitDiffContext", !10, i64 0, !22, i64 8, !22, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 48, !5, i64 64, !6, i64 80, !6, i64 84, !27, i64 88, !9, i64 184}
!29 = !{!28, !6, i64 16}
!30 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!31 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!32 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!33 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!34 = !{!"AVFilterFormatsConfig", !32, i64 0, !32, i64 8, !33, i64 16, !32, i64 24, !32, i64 32, !32, i64 40}
!35 = !{!"AVFilterLink", !23, i64 0, !13, i64 8, !23, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !24, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !30, i64 72, !24, i64 96, !31, i64 104, !6, i64 112, !6, i64 116, !34, i64 120, !34, i64 168}
!36 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!35, !6, i64 40}
!39 = !{!35, !6, i64 44}
!40 = !{!6, !6, i64 0}
!41 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!42 = !{!"ThreadData", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!43 = !{!42, !41, i64 0}
!44 = !{!42, !41, i64 8}
!45 = !{!42, !41, i64 16}
!46 = !{!42, !41, i64 24}
!47 = !{!28, !6, i64 84}
!48 = !{!28, !6, i64 80}
!49 = !{!28, !6, i64 24}
!50 = !{!28, !6, i64 28}
!51 = !{!28, !9, i64 184}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!20, !9, i64 40}
!56 = !{!35, !23, i64 0}
!57 = !{!18, !15, i64 32}
!58 = !{!18, !13, i64 24}
!59 = !{!28, !26, i64 160}
!60 = !{!"FFFrameSyncIn", !6, i64 0, !6, i64 4, !24, i64 8, !41, i64 16, !41, i64 24, !25, i64 32, !25, i64 40, !5, i64 48, !5, i64 49, !6, i64 52, !6, i64 56}
!61 = !{!60, !6, i64 52}
!62 = !{!60, !6, i64 0}
!63 = !{!60, !6, i64 4}
!64 = !{!28, !9, i64 136}
!65 = !{!28, !9, i64 128}
!66 = !{!27, !23, i64 8}
!67 = !{!27, !9, i64 48}
!68 = !{!18, !15, i64 56}
!69 = !{!41, !41, i64 0}
!70 = !{!18, !6, i64 104}
!71 = !{!28, !25, i64 120}
!72 = !{!"p2 omnipotent char", !14, i64 0}
!73 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!74 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!75 = !{!"AVFrame", !5, i64 0, !5, i64 64, !72, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !24, i64 124, !25, i64 136, !25, i64 144, !24, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !73, i64 248, !6, i64 256, !31, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !25, i64 304, !74, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !25, i64 344, !25, i64 352, !25, i64 360, !25, i64 368, !9, i64 376, !30, i64 384, !25, i64 408, !6, i64 416}
!76 = !{!75, !25, i64 136}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !52}
!79 = !{!12, !12, i64 0}
!80 = !{!28, !6, i64 20}
!81 = !{!35, !23, i64 16}
!82 = !{!35, !6, i64 36}
!83 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !25, i64 16, !5, i64 24, !12, i64 104}
!84 = !{!83, !5, i64 9}
!85 = !{!83, !5, i64 10}
!86 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!87 = !{!86, !6, i64 16}
!88 = !{!28, !22, i64 8}
!89 = !{!28, !22, i64 12}
!90 = distinct !{!90, !52, !53, !54}
!91 = distinct !{!91, !52, !53, !54}
!92 = distinct !{!92, !52, !53}
!93 = !{!5, !5, i64 0}
!94 = !{!"branch_weights", i32 8, i32 8}
!95 = distinct !{!95, !52, !53, !54}
!96 = distinct !{!96, !52, !53}
!97 = !{!"short", !5, i64 0}
!98 = !{!97, !97, i64 0}
end_hunk_0
