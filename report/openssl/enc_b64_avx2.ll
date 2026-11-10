Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/enc_b64_avx2?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
begin_hunk_0_@encode_base64_avx2:bb.a
  %i.x = bitcast <32 x i8> %i.t to <16 x i16>
  %i.y = and <16 x i16> %i.x, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.z = shl <16 x i16> %i.y, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.aa = or <16 x i16> %i.w, %i.z                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !9
  %i.af = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = bitcast <4 x i64> %i.af to <32 x i8>
  %i.ah = shufflevector <32 x i8> %i.ag, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.ai = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.aj = and <16 x i16> %i.ai, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ak = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.aj, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.al = bitcast <32 x i8> %i.ah to <16 x i16>
  %i.am = and <16 x i16> %i.al, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.an = shl <16 x i16> %i.am, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.ao = or <16 x i16> %i.ak, %i.an              ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.as = load <2 x i64>, ptr %i.ar, align 1, !tbaa !9
  %i.at = shufflevector <2 x i64> %i.aq, <2 x i64> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = bitcast <4 x i64> %i.at to <32 x i8>
  %i.av = shufflevector <32 x i8> %i.au, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = and <16 x i16> %i.aw, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.ay = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.ax, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.az = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ba = and <16 x i16> %i.az, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bb = shl <16 x i16> %i.ba, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bc = or <16 x i16> %i.ay, %i.bb              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.be = load <2 x i64>, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.bg = load <2 x i64>, ptr %i.bf, align 1, !tbaa !9
  %i.bh = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = bitcast <4 x i64> %i.bh to <32 x i8>
  %i.bj = shufflevector <32 x i8> %i.bi, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.bk = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bl = and <16 x i16> %i.bk, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %i.bm = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.bl, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.bn = bitcast <32 x i8> %i.bj to <16 x i16>
  %i.bo = and <16 x i16> %i.bn, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.bp = shl <16 x i16> %i.bo, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.bq = or <16 x i16> %i.bm, %i.bp              ; 3 uses
  %i.br = bitcast <16 x i16> %i.aa to <32 x i8>   ; 8 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = icmp sgt <32 x i8> %i.br, splat (i8 63)
  %i.bt = icmp sgt <32 x i8> %i.br, splat (i8 9)
  %.neg.i = zext <32 x i1> %i.bt to <32 x i8>
  %i.bu = icmp sgt <32 x i8> %i.br, splat (i8 35)
  %.neg19.i = zext <32 x i1> %i.bu to <32 x i8>
  %i.bv = add nuw nsw <32 x i8> %.neg19.i, %.neg.i
  %i.bw = icmp eq <32 x i8> %i.br, splat (i8 62)
  %i.bx = select <32 x i1> %i.bw, <32 x i8> splat (i8 3), <32 x i8> %i.bv
  %i.by = icmp eq <32 x i8> %i.br, splat (i8 63)
  %i.bz = select <32 x i1> %i.by, <32 x i8> splat (i8 4), <32 x i8> %i.bx
  %i.ca = bitcast <16 x i16> %i.aa to <32 x i8>
  %i.cb = and <32 x i8> %i.ca, splat (i8 -128)
  %i.cc = select <32 x i1> %i.bs, <32 x i8> splat (i8 -128), <32 x i8> %i.cb
  %i.cd = or disjoint <32 x i8> %i.bz, %i.cc
  %i.ce = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cd)
  %i.cf = bitcast <16 x i16> %i.ao to <32 x i8>   ; 6 uses
  %i.cg = icmp sgt <32 x i8> %i.cf, splat (i8 63)
  %i.ch = icmp sgt <32 x i8> %i.cf, splat (i8 9)
  %.neg.i265 = zext <32 x i1> %i.ch to <32 x i8>
  %i.ci = icmp sgt <32 x i8> %i.cf, splat (i8 35)
  %.neg19.i266 = zext <32 x i1> %i.ci to <32 x i8>
  %i.cj = add nuw nsw <32 x i8> %.neg19.i266, %.neg.i265
  %i.ck = icmp eq <32 x i8> %i.cf, splat (i8 62)
  %i.cl = select <32 x i1> %i.ck, <32 x i8> splat (i8 3), <32 x i8> %i.cj
  %i.cm = icmp eq <32 x i8> %i.cf, splat (i8 63)
  %i.cn = select <32 x i1> %i.cm, <32 x i8> splat (i8 4), <32 x i8> %i.cl
  %i.co = bitcast <16 x i16> %i.ao to <32 x i8>
  %i.cp = and <32 x i8> %i.co, splat (i8 -128)
  %i.cq = select <32 x i1> %i.cg, <32 x i8> splat (i8 -128), <32 x i8> %i.cp
  %i.cr = or disjoint <32 x i8> %i.cn, %i.cq
  %i.cs = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.cr)
  %i.ct = add <32 x i8> %i.cs, %i.cf
  %i.cu = bitcast <16 x i16> %i.bc to <32 x i8>   ; 6 uses
  %i.cv = icmp sgt <32 x i8> %i.cu, splat (i8 63)
  %i.cw = icmp sgt <32 x i8> %i.cu, splat (i8 9)
  %.neg.i267 = zext <32 x i1> %i.cw to <32 x i8>
  %i.cx = icmp sgt <32 x i8> %i.cu, splat (i8 35)
  %.neg19.i268 = zext <32 x i1> %i.cx to <32 x i8>
  %i.cy = add nuw nsw <32 x i8> %.neg19.i268, %.neg.i267
  %i.cz = icmp eq <32 x i8> %i.cu, splat (i8 62)
  %i.da = select <32 x i1> %i.cz, <32 x i8> splat (i8 3), <32 x i8> %i.cy
  %i.db = icmp eq <32 x i8> %i.cu, splat (i8 63)
  %i.dc = select <32 x i1> %i.db, <32 x i8> splat (i8 4), <32 x i8> %i.da
  %i.dd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.de = and <32 x i8> %i.dd, splat (i8 -128)
  %i.df = select <32 x i1> %i.cv, <32 x i8> splat (i8 -128), <32 x i8> %i.de
  %i.dg = or disjoint <32 x i8> %i.dc, %i.df
  %i.dh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.dg)
  %i.di = add <32 x i8> %i.dh, %i.cu
  %i.dj = bitcast <16 x i16> %i.bq to <32 x i8>   ; 6 uses
  %i.dk = icmp sgt <32 x i8> %i.dj, splat (i8 63)
  %i.dl = icmp sgt <32 x i8> %i.dj, splat (i8 9)
  %.neg.i269 = zext <32 x i1> %i.dl to <32 x i8>
  %i.dm = icmp sgt <32 x i8> %i.dj, splat (i8 35)
  %.neg19.i270 = zext <32 x i1> %i.dm to <32 x i8>
  %i.dn = add nuw nsw <32 x i8> %.neg19.i270, %.neg.i269
  %i.do = icmp eq <32 x i8> %i.dj, splat (i8 62)
  %i.dp = select <32 x i1> %i.do, <32 x i8> splat (i8 3), <32 x i8> %i.dn
  %i.dq = icmp eq <32 x i8> %i.dj, splat (i8 63)
  %i.dr = select <32 x i1> %i.dq, <32 x i8> splat (i8 4), <32 x i8> %i.dp
  %i.ds = bitcast <16 x i16> %i.bq to <32 x i8>
  %i.dt = and <32 x i8> %i.ds, splat (i8 -128)
  %i.du = select <32 x i1> %i.dk, <32 x i8> splat (i8 -128), <32 x i8> %i.dt
  %i.dv = or disjoint <32 x i8> %i.dr, %i.du
  %i.dw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 48, i8 55, i8 61, i8 -16, i8 -16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.dv)
  %i.dx = add <32 x i8> %i.dw, %i.dj
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dy = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.br, <32 x i8> splat (i8 51))
  %i.dz = icmp slt <32 x i8> %i.br, splat (i8 26)
  %i.ea = select <32 x i1> %i.dz, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eb = or <32 x i8> %i.ea, %i.dy
  %i.ec = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eb)
  %i.ed = bitcast <16 x i16> %i.ao to <32 x i8>   ; 3 uses
  %i.ee = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ed, <32 x i8> splat (i8 51))
  %i.ef = icmp slt <32 x i8> %i.ed, splat (i8 26)
  %i.eg = select <32 x i1> %i.ef, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eh = or <32 x i8> %i.eg, %i.ee
  %i.ei = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eh)
  %i.ej = add <32 x i8> %i.ei, %i.ed
  %i.ek = bitcast <16 x i16> %i.bc to <32 x i8>   ; 3 uses
  %i.el = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ek, <32 x i8> splat (i8 51))
  %i.em = icmp slt <32 x i8> %i.ek, splat (i8 26)
  %i.en = select <32 x i1> %i.em, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.eo = or <32 x i8> %i.en, %i.el
  %i.ep = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.eo)
  %i.eq = add <32 x i8> %i.ep, %i.ek
  %i.er = bitcast <16 x i16> %i.bq to <32 x i8>   ; 3 uses
  %i.es = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.er, <32 x i8> splat (i8 51))
  %i.et = icmp slt <32 x i8> %i.er, splat (i8 26)
  %i.eu = select <32 x i1> %i.et, <32 x i8> splat (i8 13), <32 x i8> zeroinitializer
  %i.ev = or <32 x i8> %i.eu, %i.es
  %i.ew = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 65, i8 0, i8 0>, <32 x i8> %i.ev)
  %i.ex = add <32 x i8> %i.ew, %i.er
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi <32 x i8> [ %i.ce, %bb.e ], [ %i.ec, %bb.f ]
  %.0257.in = phi <32 x i8> [ %i.ct, %bb.e ], [ %i.ej, %bb.f ] ; 19 uses
  %.0256.in = phi <32 x i8> [ %i.di, %bb.e ], [ %i.eq, %bb.f ] ; 19 uses
  %.0255.in = phi <32 x i8> [ %i.dx, %bb.e ], [ %i.ex, %bb.f ] ; 19 uses
  %.0258.in = add <32 x i8> %.pn, %i.br           ; 19 uses
  %.0255 = bitcast <32 x i8> %.0255.in to <4 x i64> ; 4 uses
  %.0256 = bitcast <32 x i8> %.0256.in to <4 x i64> ; 4 uses
  %.0257 = bitcast <32 x i8> %.0257.in to <4 x i64> ; 4 uses
  %.0258 = bitcast <32 x i8> %.0258.in to <4 x i64> ; 4 uses
  switch i32 %i.i, label %bb.q [
    i32 0, label %bb.h
    i32 64, label %bb.i
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 12, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  store <32 x i8> %.0258.in, ptr %.0289, align 1, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %.0289, i64 32
  store <32 x i8> %.0257.in, ptr %i.ey, align 1, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %.0289, i64 64
  store <32 x i8> %.0256.in, ptr %i.ez, align 1, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %.0289, i64 96
  store <32 x i8> %.0255.in, ptr %i.fa, align 1, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %.0289, i64 128
  br label %bb.as

bb.i:                                             ; preds = %bb.g
  store <32 x i8> %.0258.in, ptr %.0289, align 1, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %.0289, i64 32
  store <32 x i8> %.0257.in, ptr %i.fc, align 1, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %.0289, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %.0289, i64 65
  store i8 10, ptr %i.fd, align 1, !tbaa !9
  store <32 x i8> %.0256.in, ptr %i.fe, align 1, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %.0289, i64 97
  store <32 x i8> %.0255.in, ptr %i.ff, align 1, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %.0289, i64 129
  %i.fh = getelementptr inbounds nuw i8, ptr %.0289, i64 130
  store i8 10, ptr %i.fg, align 1, !tbaa !9
  br label %bb.as

bb.j:                                             ; preds = %bb.g
  %i.fi = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 32, i32 12, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 48, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25>
  %i.fj = bitcast <32 x i8> %i.fi to <4 x i64>
  %i.fk = and <4 x i64> %i.fj, <i64 -1095216660481, i64 -71776119061282561, i64 -4278190081, i64 -280375465083136>
  %i.fl = or <4 x i64> %i.fk, <i64 42949672960, i64 2814749767109120, i64 167772160, i64 10995116277770>
  store <4 x i64> %i.fl, ptr %.0289, align 1, !tbaa !9
  %i.fm = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 26, i32 27, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fo = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 48, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <32 x i8> %i.fo, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fp = or <32 x i8> %i.fn, %6
  %i.fq = bitcast <32 x i8> %i.fp to <4 x i64>
  %i.fr = bitcast <32 x i8> %i.fm to <8 x i32>
  %i.fs = extractelement <8 x i32> %i.fr, i64 0
  %i.ft = extractelement <4 x i64> %i.fq, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.0289, i64 16
  store i32 %i.fs, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.0289, i64 19
  store i8 10, ptr %i.fv, align 1, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %.0289, i64 32
  store i64 %i.ft, ptr %i.fw, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.0289, i64 34
  store i8 10, ptr %i.fx, align 1, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %.0289, i64 39
  store i8 10, ptr %i.fy, align 1, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %.0289, i64 40
  %i.ga = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 32, i32 12, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 48, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25>
  %i.gb = bitcast <32 x i8> %i.ga to <4 x i64>
  %i.gc = and <4 x i64> %i.gb, <i64 -1095216660481, i64 -71776119061282561, i64 -4278190081, i64 -280375465083136>
  %i.gd = or <4 x i64> %i.gc, <i64 42949672960, i64 2814749767109120, i64 167772160, i64 10995116277770>
  store <4 x i64> %i.gd, ptr %i.fz, align 1, !tbaa !9
  %i.ge = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 26, i32 27, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 48, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <32 x i8> %i.gg, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = or <32 x i8> %i.gf, %7
  %i.gi = bitcast <32 x i8> %i.gh to <4 x i64>
  %i.gj = bitcast <32 x i8> %i.ge to <8 x i32>
  %i.gk = extractelement <8 x i32> %i.gj, i64 0
  %i.gl = extractelement <4 x i64> %i.gi, i64 2
  %i.gm = getelementptr inbounds nuw i8, ptr %.0289, i64 56
  store i32 %i.gk, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.0289, i64 59
  store i8 10, ptr %i.gn, align 1, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %.0289, i64 72
  store i64 %i.gl, ptr %i.go, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0289, i64 74
  store i8 10, ptr %i.gp, align 1, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %.0289, i64 79
  store i8 10, ptr %i.gq, align 1, !tbaa !9
  %i.gr = getelementptr inbounds nuw i8, ptr %.0289, i64 80
  %i.gs = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 32, i32 12, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 48, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25>
  %i.gt = bitcast <32 x i8> %i.gs to <4 x i64>
  %i.gu = and <4 x i64> %i.gt, <i64 -1095216660481, i64 -71776119061282561, i64 -4278190081, i64 -280375465083136>
  %i.gv = or <4 x i64> %i.gu, <i64 42949672960, i64 2814749767109120, i64 167772160, i64 10995116277770>
  store <4 x i64> %i.gv, ptr %i.gr, align 1, !tbaa !9
  %i.gw = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 26, i32 27, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 48, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <32 x i8> %i.gy, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gz = or <32 x i8> %i.gx, %8
  %i.ha = bitcast <32 x i8> %i.gz to <4 x i64>
  %i.hb = bitcast <32 x i8> %i.gw to <8 x i32>
  %i.hc = extractelement <8 x i32> %i.hb, i64 0
  %i.hd = extractelement <4 x i64> %i.ha, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %.0289, i64 96
  store i32 %i.hc, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.0289, i64 99
  store i8 10, ptr %i.hf, align 1, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %.0289, i64 112
  store i64 %i.hd, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.0289, i64 114
  store i8 10, ptr %i.hh, align 1, !tbaa !9
  %i.hi = getelementptr inbounds nuw i8, ptr %.0289, i64 119
  store i8 10, ptr %i.hi, align 1, !tbaa !9
  %i.hj = getelementptr inbounds nuw i8, ptr %.0289, i64 120
  %i.hk = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 32, i32 12, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 48, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25>
  %i.hl = bitcast <32 x i8> %i.hk to <4 x i64>
  %i.hm = and <4 x i64> %i.hl, <i64 -1095216660481, i64 -71776119061282561, i64 -4278190081, i64 -280375465083136>
  %i.hn = or <4 x i64> %i.hm, <i64 42949672960, i64 2814749767109120, i64 167772160, i64 10995116277770>
  store <4 x i64> %i.hn, ptr %i.hj, align 1, !tbaa !9
  %i.ho = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hp = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 26, i32 27, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hq = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31, i32 48, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <32 x i8> %i.hq, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = or <32 x i8> %i.hp, %9
  %i.hs = bitcast <32 x i8> %i.hr to <4 x i64>
  %i.ht = bitcast <32 x i8> %i.ho to <8 x i32>
  %i.hu = extractelement <8 x i32> %i.ht, i64 0
  %i.hv = extractelement <4 x i64> %i.hs, i64 2
  %i.hw = getelementptr inbounds nuw i8, ptr %.0289, i64 136
  store i32 %i.hu, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.0289, i64 139
  store i8 10, ptr %i.hx, align 1, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %.0289, i64 152
  store i64 %i.hv, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.0289, i64 154
  store i8 10, ptr %i.hz, align 1, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %.0289, i64 159
  store i8 10, ptr %i.ia, align 1, !tbaa !9
  %i.ib = getelementptr inbounds nuw i8, ptr %.0289, i64 160
  br label %bb.as

bb.k:                                             ; preds = %bb.g
  %i.ic = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25, i32 26, i32 27, i32 28>
  store <32 x i8> %i.ic, ptr %.0289, align 1, !tbaa !9
  %i.id = extractelement <32 x i8> %.0258.in, i64 15
  %i.ie = extractelement <32 x i8> %.0258.in, i64 29
  %i.if = bitcast <32 x i8> %.0258.in to <16 x i16>
  %i.ig = extractelement <16 x i16> %i.if, i64 15
  %i.ih = getelementptr inbounds nuw i8, ptr %.0289, i64 16
  store i8 %i.id, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0289, i64 32
  store i8 %i.ie, ptr %i.ii, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.0289, i64 33
  store i16 %i.ig, ptr %i.ij, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.0289, i64 8
  store i8 10, ptr %i.ik, align 1, !tbaa !9
  %i.il = getelementptr inbounds nuw i8, ptr %.0289, i64 17
  store i8 10, ptr %i.il, align 1, !tbaa !9
  %i.im = getelementptr inbounds nuw i8, ptr %.0289, i64 26
  store i8 10, ptr %i.im, align 1, !tbaa !9
  %i.in = getelementptr inbounds nuw i8, ptr %.0289, i64 35
  store i8 10, ptr %i.in, align 1, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %i.ip = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25, i32 26, i32 27, i32 28>
  store <32 x i8> %i.ip, ptr %i.io, align 1, !tbaa !9
  %i.iq = extractelement <32 x i8> %.0257.in, i64 15
  %i.ir = extractelement <32 x i8> %.0257.in, i64 29
  %i.is = bitcast <32 x i8> %.0257.in to <16 x i16>
  %i.it = extractelement <16 x i16> %i.is, i64 15
  %i.iu = getelementptr inbounds nuw i8, ptr %.0289, i64 52
  store i8 %i.iq, ptr %i.iu, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  store i8 %i.ir, ptr %i.iv, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.0289, i64 69
  store i16 %i.it, ptr %i.iw, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.0289, i64 44
  store i8 10, ptr %i.ix, align 1, !tbaa !9
  %i.iy = getelementptr inbounds nuw i8, ptr %.0289, i64 53
  store i8 10, ptr %i.iy, align 1, !tbaa !9
  %i.iz = getelementptr inbounds nuw i8, ptr %.0289, i64 62
  store i8 10, ptr %i.iz, align 1, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %.0289, i64 71
  store i8 10, ptr %i.ja, align 1, !tbaa !9
  %i.jb = getelementptr inbounds nuw i8, ptr %.0289, i64 72
  %i.jc = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25, i32 26, i32 27, i32 28>
  store <32 x i8> %i.jc, ptr %i.jb, align 1, !tbaa !9
  %i.jd = extractelement <32 x i8> %.0256.in, i64 15
  %i.je = extractelement <32 x i8> %.0256.in, i64 29
  %i.jf = bitcast <32 x i8> %.0256.in to <16 x i16>
  %i.jg = extractelement <16 x i16> %i.jf, i64 15
  %i.jh = getelementptr inbounds nuw i8, ptr %.0289, i64 88
  store i8 %i.jd, ptr %i.jh, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.0289, i64 104
  store i8 %i.je, ptr %i.ji, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.0289, i64 105
  store i16 %i.jg, ptr %i.jj, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.0289, i64 80
  store i8 10, ptr %i.jk, align 1, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %.0289, i64 89
  store i8 10, ptr %i.jl, align 1, !tbaa !9
  %i.jm = getelementptr inbounds nuw i8, ptr %.0289, i64 98
  store i8 10, ptr %i.jm, align 1, !tbaa !9
  %i.jn = getelementptr inbounds nuw i8, ptr %.0289, i64 107
  store i8 10, ptr %i.jn, align 1, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %.0289, i64 108
  %i.jp = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 24, i32 25, i32 26, i32 27, i32 28>
  store <32 x i8> %i.jp, ptr %i.jo, align 1, !tbaa !9
  %i.jq = extractelement <32 x i8> %.0255.in, i64 15
  %i.jr = extractelement <32 x i8> %.0255.in, i64 29
  %i.js = bitcast <32 x i8> %.0255.in to <16 x i16>
  %i.jt = extractelement <16 x i16> %i.js, i64 15
  %i.ju = getelementptr inbounds nuw i8, ptr %.0289, i64 124
  store i8 %i.jq, ptr %i.ju, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %.0289, i64 140
  store i8 %i.jr, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %.0289, i64 141
  store i16 %i.jt, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %.0289, i64 116
  store i8 10, ptr %i.jx, align 1, !tbaa !9
  %i.jy = getelementptr inbounds nuw i8, ptr %.0289, i64 125
  store i8 10, ptr %i.jy, align 1, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %.0289, i64 134
  store i8 10, ptr %i.jz, align 1, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %.0289, i64 143
  store i8 10, ptr %i.ka, align 1, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %.0289, i64 144
  br label %bb.as

bb.l:                                             ; preds = %bb.g
  switch i32 %.0253287, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.kc = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0258, ptr noundef %.0289, i32 noundef 12, ptr noundef %i.a)
  %i.kd = getelementptr inbounds nuw i8, ptr %.0289, i64 %i.kc ; 8 uses
  %i.ke = shufflevector <32 x i8> %.0257.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 48, i32 28>
  store <32 x i8> %i.ke, ptr %i.kd, align 1, !tbaa !9
  %i.kf = bitcast <32 x i8> %.0257.in to <16 x i16> ; 2 uses
  %i.kg = extractelement <16 x i16> %i.kf, i64 7
  %i.kh = extractelement <32 x i8> %.0257.in, i64 29
  %i.ki = extractelement <16 x i16> %i.kf, i64 15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store i8 10, ptr %i.kj, align 1, !tbaa !9
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 15
  store i16 %i.kg, ptr %i.kk, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 17
  store i8 10, ptr %i.kl, align 1, !tbaa !9
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store i8 %i.kh, ptr %i.km, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 30
  store i8 10, ptr %i.kn, align 1, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 33
  store i16 %i.ki, ptr %i.ko, align 1
  store i32 4, ptr %i.a, align 4, !tbaa !8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 35 ; 2 uses
  %i.kq = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0256, ptr noundef nonnull %i.kp, i32 noundef 12, ptr noundef %i.a)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kq ; 2 uses
  %i.ks = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0255, ptr noundef nonnull %i.kr, i32 noundef 12, ptr noundef %i.a)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ks
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ku = shufflevector <32 x i8> %.0258.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 48, i32 28>
  store <32 x i8> %i.ku, ptr %.0289, align 1, !tbaa !9
  %i.kv = bitcast <32 x i8> %.0258.in to <16 x i16> ; 2 uses
  %i.kw = extractelement <16 x i16> %i.kv, i64 7
  %i.kx = extractelement <32 x i8> %.0258.in, i64 29
  %i.ky = extractelement <16 x i16> %i.kv, i64 15
  %i.kz = getelementptr inbounds nuw i8, ptr %.0289, i64 4
  store i8 10, ptr %i.kz, align 1, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %.0289, i64 15
  store i16 %i.kw, ptr %i.la, align 1
  %i.lb = getelementptr inbounds nuw i8, ptr %.0289, i64 17
  store i8 10, ptr %i.lb, align 1, !tbaa !9
  %i.lc = getelementptr inbounds nuw i8, ptr %.0289, i64 32
  store i8 %i.kx, ptr %i.lc, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.0289, i64 30
  store i8 10, ptr %i.ld, align 1, !tbaa !9
  %i.le = getelementptr inbounds nuw i8, ptr %.0289, i64 33
  store i16 %i.ky, ptr %i.le, align 1
  store i32 4, ptr %i.a, align 4, !tbaa !8
  %i.lf = getelementptr inbounds nuw i8, ptr %.0289, i64 35 ; 2 uses
  %i.lg = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0257, ptr noundef nonnull %i.lf, i32 noundef 12, ptr noundef %i.a)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg ; 2 uses
  %i.li = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0256, ptr noundef nonnull %i.lh, i32 noundef 12, ptr noundef %i.a)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.li ; 8 uses
  %i.lk = shufflevector <32 x i8> %.0255.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 48, i32 28>
  store <32 x i8> %i.lk, ptr %i.lj, align 1, !tbaa !9
  %i.ll = bitcast <32 x i8> %.0255.in to <16 x i16> ; 2 uses
  %i.lm = extractelement <16 x i16> %i.ll, i64 7
  %i.ln = extractelement <32 x i8> %.0255.in, i64 29
  %i.lo = extractelement <16 x i16> %i.ll, i64 15
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i8 10, ptr %i.lp, align 1, !tbaa !9
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 15
  store i16 %i.lm, ptr %i.lq, align 1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 17
  store i8 10, ptr %i.lr, align 1, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  store i8 %i.ln, ptr %i.ls, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 30
  store i8 10, ptr %i.lt, align 1, !tbaa !9
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 33
  store i16 %i.lo, ptr %i.lu, align 1
  store i32 4, ptr %i.a, align 4, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 35
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.lw = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0258, ptr noundef %.0289, i32 noundef 12, ptr noundef %i.a)
  %i.lx = getelementptr inbounds nuw i8, ptr %.0289, i64 %i.lw ; 2 uses
  %i.ly = call fastcc i64 @insert_nl_gt16(<4 x i64> noundef %.0257, ptr noundef nonnull %i.lx, i32 noundef 12, ptr noundef %i.a)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ly ; 8 uses
  %i.ma = shufflevector <32 x i8> %.0256.in, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 32, i32 48, i32 48, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 48, i32 28>
  store <32 x i8> %i.ma, ptr %i.lz, align 1, !tbaa !9
  %i.mb = bitcast <32 x i8> %.0256.in to <16 x i16> ; 2 uses
  %i.mc = extractelement <16 x i16> %i.mb, i64 7
  %i.md = extractelement <32 x i8> %.0256.in, i64 29
  %i.me = extractelement <16 x i16> %i.mb, i64 15
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i8 10, ptr %i.mf, align 1, !tbaa !9
end_hunk_0
begin_hunk_1_@encode_base64_avx2:bb.a
bb.at:                                            ; preds = %.loopexit
  %i.ue = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 10, ptr %.0.lcssa, align 1, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.thread, %bb.at, %.loopexit
  %.2252322 = phi i32 [ %.0250.lcssa, %bb.at ], [ %.0250.lcssa, %.loopexit ], [ %i.tz, %.loopexit.thread ] ; 2 uses
  %.5 = phi ptr [ %i.ue, %bb.at ], [ %.0.lcssa, %.loopexit ], [ %.4.ph, %.loopexit.thread ] ; 2 uses
  %i.uf = ptrtoint ptr %.5 to i64
  %i.ug = ptrtoint ptr %1 to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = sext i32 %.2252322 to i64
  %i.uj = getelementptr inbounds i8, ptr %2, i64 %i.ui
  %i.uk = sub nsw i32 %3, %.2252322
  %i.ul = tail call i64 @evp_encodeblock_int(ptr noundef %0, ptr noundef %.5, ptr noundef %i.uj, i32 noundef %i.uk, ptr noundef nonnull %5) #7
  %i.um = add i64 %i.uh, %i.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %i.um
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @evp_encodeblock_int(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8>, <32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i64 32, 36) i64 @insert_nl_gt16(<4 x i64> noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, i32 noundef range(i32 12, -2147483648) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8
  %i.b = sub nsw i32 %2, %i.a                     ; 6 uses
  store <4 x i64> %0, ptr %1, align 1, !tbaa !9
  %i.c = icmp sgt i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !8
  %i.e = add nsw i32 %i.d, 32
  store i32 %i.e, ptr %3, align 4, !tbaa !8
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, 16                    ; 6 uses
  %i.g = zext i1 %i.f to i32                      ; 3 uses
  br i1 %i.f, label %bb.d, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.c
  %.pre = bitcast <4 x i64> %0 to <32 x i8>
  %i.h = bitcast <4 x i64> %0 to <32 x i8>
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  switch i32 %i.b, label %bb.t [
    i32 0, label %shift_right_zeros.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = bitcast <4 x i64> %0 to <32 x i8>
  %i.j = shufflevector <32 x i8> %i.i, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  %i.k = bitcast <32 x i8> %i.j to <4 x i64>
  br label %shift_right_zeros.exit

bb.f:                                             ; preds = %bb.d
  %i.l = bitcast <4 x i64> %0 to <32 x i8>
  %i.m = shufflevector <32 x i8> %i.l, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.n = bitcast <32 x i8> %i.m to <4 x i64>
  br label %shift_right_zeros.exit

bb.g:                                             ; preds = %bb.d
  %i.o = bitcast <4 x i64> %0 to <32 x i8>
  %i.p = shufflevector <32 x i8> %i.o, <32 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  %i.q = bitcast <32 x i8> %i.p to <4 x i64>
  br label %shift_right_zeros.exit

bb.h:                                             ; preds = %bb.d
  %i.r = bitcast <4 x i64> %0 to <32 x i8>
  %i.s = shufflevector <32 x i8> %i.r, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.t = bitcast <32 x i8> %i.s to <4 x i64>
  br label %shift_right_zeros.exit

bb.i:                                             ; preds = %bb.d
  %i.u = bitcast <4 x i64> %0 to <32 x i8>
  %i.v = shufflevector <32 x i8> %i.u, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  %i.w = bitcast <32 x i8> %i.v to <4 x i64>
  br label %shift_right_zeros.exit

bb.j:                                             ; preds = %bb.d
  %i.x = bitcast <4 x i64> %0 to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  %i.z = bitcast <32 x i8> %i.y to <4 x i64>
  br label %shift_right_zeros.exit

bb.k:                                             ; preds = %bb.d
  %i.aa = bitcast <4 x i64> %0 to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  %i.ac = bitcast <32 x i8> %i.ab to <4 x i64>
  br label %shift_right_zeros.exit

bb.l:                                             ; preds = %bb.d
  %i.ad = shufflevector <4 x i64> %0, <4 x i64> <i64 0, i64 poison, i64 0, i64 poison>, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  br label %shift_right_zeros.exit

bb.m:                                             ; preds = %bb.d
  %i.ae = bitcast <4 x i64> %0 to <32 x i8>
  %i.af = shufflevector <32 x i8> %i.ae, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.ag = bitcast <32 x i8> %i.af to <4 x i64>
  br label %shift_right_zeros.exit

bb.n:                                             ; preds = %bb.d
  %i.ah = bitcast <4 x i64> %0 to <32 x i8>
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  %i.aj = bitcast <32 x i8> %i.ai to <4 x i64>
  br label %shift_right_zeros.exit

bb.o:                                             ; preds = %bb.d
  %i.ak = bitcast <4 x i64> %0 to <32 x i8>
  %i.al = shufflevector <32 x i8> %i.ak, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.am = bitcast <32 x i8> %i.al to <4 x i64>
  br label %shift_right_zeros.exit

bb.p:                                             ; preds = %bb.d
  %i.an = bitcast <4 x i64> %0 to <32 x i8>
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.ap = bitcast <32 x i8> %i.ao to <4 x i64>
  br label %shift_right_zeros.exit

bb.q:                                             ; preds = %bb.d
  %i.aq = bitcast <4 x i64> %0 to <32 x i8>
  %i.ar = shufflevector <32 x i8> %i.aq, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.as = bitcast <32 x i8> %i.ar to <4 x i64>
  br label %shift_right_zeros.exit

bb.r:                                             ; preds = %bb.d
  %i.at = bitcast <4 x i64> %0 to <32 x i8>
  %i.au = shufflevector <32 x i8> %i.at, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.av = bitcast <32 x i8> %i.au to <4 x i64>
  br label %shift_right_zeros.exit

bb.s:                                             ; preds = %bb.d
  %i.aw = bitcast <4 x i64> %0 to <32 x i8>
  %i.ax = shufflevector <32 x i8> %i.aw, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison>, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.ay = bitcast <32 x i8> %i.ax to <4 x i64>
  br label %shift_right_zeros.exit

bb.t:                                             ; preds = %bb.d
  br label %shift_right_zeros.exit

shift_right_zeros.exit:                           ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi <4 x i64> [ zeroinitializer, %bb.t ], [ %i.ay, %bb.s ], [ %i.k, %bb.e ], [ %i.n, %bb.f ], [ %i.q, %bb.g ], [ %i.t, %bb.h ], [ %i.w, %bb.i ], [ %i.z, %bb.j ], [ %i.ac, %bb.k ], [ %i.ad, %bb.l ], [ %i.ag, %bb.m ], [ %i.aj, %bb.n ], [ %i.am, %bb.o ], [ %i.ap, %bb.p ], [ %i.as, %bb.q ], [ %i.av, %bb.r ], [ %0, %bb.d ] ; 16 uses
  %i.az = add nsw i32 %i.b, %i.g                  ; 3 uses
  switch i32 %i.az, label %shift_left_zeros.exit [
    i32 0, label %shift_left_zeros.exit98
    i32 1, label %shift_left_zeros.exit.thread108
    i32 2, label %shift_left_zeros.exit.thread111
    i32 3, label %shift_left_zeros.exit.thread114
    i32 4, label %shift_left_zeros.exit.thread117
    i32 5, label %shift_left_zeros.exit.thread120
    i32 6, label %shift_left_zeros.exit.thread123
    i32 7, label %shift_left_zeros.exit.thread126
    i32 8, label %shift_left_zeros.exit.thread129
    i32 9, label %shift_left_zeros.exit.thread132
    i32 10, label %shift_left_zeros.exit.thread135
    i32 11, label %shift_left_zeros.exit.thread138
    i32 12, label %shift_left_zeros.exit.thread141
    i32 13, label %shift_left_zeros.exit.thread144
    i32 14, label %shift_left_zeros.exit.thread147
    i32 15, label %shift_left_zeros.exit.thread150
  ]

shift_left_zeros.exit.thread108:                  ; preds = %shift_right_zeros.exit
  %i.ba = bitcast <4 x i64> %.0.i to <32 x i8>
  %4 = shufflevector <32 x i8> %i.ba, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i32> <i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.bb = bitcast <32 x i8> %4 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread111:                  ; preds = %shift_right_zeros.exit
  %i.bc = bitcast <4 x i64> %.0.i to <32 x i8>
  %5 = shufflevector <32 x i8> %i.bc, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i32> <i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bd = bitcast <32 x i8> %5 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread114:                  ; preds = %shift_right_zeros.exit
  %i.be = bitcast <4 x i64> %.0.i to <32 x i8>
  %6 = shufflevector <32 x i8> %i.be, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.bf = bitcast <32 x i8> %6 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread117:                  ; preds = %shift_right_zeros.exit
  %i.bg = bitcast <4 x i64> %.0.i to <32 x i8>
  %7 = shufflevector <32 x i8> %i.bg, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bh = bitcast <32 x i8> %7 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread120:                  ; preds = %shift_right_zeros.exit
  %i.bi = bitcast <4 x i64> %.0.i to <32 x i8>
  %8 = shufflevector <32 x i8> %i.bi, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26>
  %i.bj = bitcast <32 x i8> %8 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread123:                  ; preds = %shift_right_zeros.exit
  %i.bk = bitcast <4 x i64> %.0.i to <32 x i8>
  %9 = shufflevector <32 x i8> %i.bk, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.bl = bitcast <32 x i8> %9 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread126:                  ; preds = %shift_right_zeros.exit
  %i.bm = bitcast <4 x i64> %.0.i to <32 x i8>
  %10 = shufflevector <32 x i8> %i.bm, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.bn = bitcast <32 x i8> %10 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread129:                  ; preds = %shift_right_zeros.exit
  %11 = shufflevector <4 x i64> %.0.i, <4 x i64> <i64 poison, i64 0, i64 poison, i64 0>, <4 x i32> <i32 5, i32 0, i32 7, i32 2>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread132:                  ; preds = %shift_right_zeros.exit
  %i.bo = bitcast <4 x i64> %.0.i to <32 x i8>
  %12 = shufflevector <32 x i8> %i.bo, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>
  %i.bp = bitcast <32 x i8> %12 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread135:                  ; preds = %shift_right_zeros.exit
  %i.bq = bitcast <4 x i64> %.0.i to <32 x i8>
  %13 = shufflevector <32 x i8> %i.bq, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  %i.br = bitcast <32 x i8> %13 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread138:                  ; preds = %shift_right_zeros.exit
  %i.bs = bitcast <4 x i64> %.0.i to <32 x i8>
  %14 = shufflevector <32 x i8> %i.bs, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20>
  %i.bt = bitcast <32 x i8> %14 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread141:                  ; preds = %shift_right_zeros.exit
  %i.bu = bitcast <4 x i64> %.0.i to <32 x i8>
  %15 = shufflevector <32 x i8> %i.bu, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19>
  %i.bv = bitcast <32 x i8> %15 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread144:                  ; preds = %shift_right_zeros.exit
  %i.bw = bitcast <4 x i64> %.0.i to <32 x i8>
  %16 = shufflevector <32 x i8> %i.bw, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18>
  %i.bx = bitcast <32 x i8> %16 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread147:                  ; preds = %shift_right_zeros.exit
  %i.by = bitcast <4 x i64> %.0.i to <32 x i8>
  %17 = shufflevector <32 x i8> %i.by, <32 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17>
  %i.bz = bitcast <32 x i8> %17 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit.thread150:                  ; preds = %shift_right_zeros.exit
  %i.ca = bitcast <4 x i64> %.0.i to <32 x i8>
  %18 = shufflevector <32 x i8> %i.ca, <32 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16>
  %i.cb = bitcast <32 x i8> %18 to <4 x i64>
  br label %shift_left_zeros.exit98

shift_left_zeros.exit:                            ; preds = %shift_right_zeros.exit
  %i.cc = icmp ult i32 %i.az, 16
  br i1 %i.cc, label %switch.lookup, label %shift_left_zeros.exit98

switch.lookup:                                    ; preds = %shift_left_zeros.exit
  %i.cd = zext nneg i32 %i.az to i64
  %switch.gep = getelementptr inbounds nuw [32 x i8], ptr @switch.table.insert_nl_gt16, i64 %i.cd
  %switch.load = load <32 x i8>, ptr %switch.gep, align 32
  br label %shift_left_zeros.exit98

shift_left_zeros.exit98:                          ; preds = %shift_left_zeros.exit, %switch.lookup, %shift_right_zeros.exit, %shift_left_zeros.exit.thread150, %shift_left_zeros.exit.thread147, %shift_left_zeros.exit.thread144, %shift_left_zeros.exit.thread141, %shift_left_zeros.exit.thread138, %shift_left_zeros.exit.thread135, %shift_left_zeros.exit.thread132, %shift_left_zeros.exit.thread129, %shift_left_zeros.exit.thread126, %shift_left_zeros.exit.thread123, %shift_left_zeros.exit.thread120, %shift_left_zeros.exit.thread117, %shift_left_zeros.exit.thread114, %shift_left_zeros.exit.thread111, %shift_left_zeros.exit.thread108
  %.0.i96107 = phi <4 x i64> [ %i.bb, %shift_left_zeros.exit.thread108 ], [ zeroinitializer, %switch.lookup ], [ %i.bd, %shift_left_zeros.exit.thread111 ], [ %.0.i, %shift_right_zeros.exit ], [ %i.cb, %shift_left_zeros.exit.thread150 ], [ %i.bz, %shift_left_zeros.exit.thread147 ], [ %i.bx, %shift_left_zeros.exit.thread144 ], [ %i.bv, %shift_left_zeros.exit.thread141 ], [ %i.bt, %shift_left_zeros.exit.thread138 ], [ %i.br, %shift_left_zeros.exit.thread135 ], [ %i.bp, %shift_left_zeros.exit.thread132 ], [ %11, %shift_left_zeros.exit.thread129 ], [ %i.bn, %shift_left_zeros.exit.thread126 ], [ %i.bl, %shift_left_zeros.exit.thread123 ], [ %i.bj, %shift_left_zeros.exit.thread120 ], [ %i.bh, %shift_left_zeros.exit.thread117 ], [ %i.bf, %shift_left_zeros.exit.thread114 ], [ zeroinitializer, %shift_left_zeros.exit ]
  %i.ce = phi <32 x i8> [ <i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread108 ], [ %switch.load, %switch.lookup ], [ <i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread111 ], [ splat (i8 -1), %shift_right_zeros.exit ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread150 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread147 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread144 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread141 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread138 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread135 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread132 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread129 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread126 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread123 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread120 ], [ <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread117 ], [ <i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit.thread114 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit ] ; 2 uses
  %i.cf = bitcast <4 x i64> %0 to <32 x i8>       ; 3 uses
  %19 = shufflevector <32 x i8> %i.cf, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i32> <i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.cg = bitcast <4 x i64> %.0.i96107 to <32 x i8>
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.cg, <32 x i8> %19, <32 x i8> %i.ce)
  %i.ci = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.cf, <32 x i8> %i.ch, <32 x i8> %i.ce) ; 2 uses
  store <32 x i8> %i.ci, ptr %1, align 1, !tbaa !9
  %i.cj = add nsw i32 %i.b, %2
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge200, %shift_left_zeros.exit98
  %.pre-phi = phi <32 x i8> [ %.pre, %._crit_edge200 ], [ %i.cf, %shift_left_zeros.exit98 ] ; 18 uses
  %.093 = phi <32 x i8> [ %i.h, %._crit_edge200 ], [ %i.ci, %shift_left_zeros.exit98 ]
  %.092 = phi i32 [ %i.b, %._crit_edge200 ], [ %i.cj, %shift_left_zeros.exit98 ] ; 6 uses
  %i.ck = and i32 %.092, -16
  %i.cl = icmp eq i32 %i.ck, 16                   ; 3 uses
  %i.cm = zext i1 %i.cl to i32                    ; 4 uses
  %i.cn = extractelement <32 x i8> %.pre-phi, i64 31 ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.co = extractelement <32 x i8> %.pre-phi, i64 30
  %i.cp = add nsw i32 %.092, -16                  ; 2 uses
  switch i32 %i.cp, label %default.unreachable [
    i32 0, label %shift_right_zeros.exit101
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %bb.aa
    i32 6, label %bb.ab
    i32 7, label %bb.ac
    i32 8, label %bb.ad
    i32 9, label %bb.ae
    i32 10, label %bb.af
    i32 11, label %bb.ag
    i32 12, label %bb.ah
    i32 13, label %bb.ai
    i32 14, label %bb.aj
    i32 15, label %bb.ak
  ]

bb.w:                                             ; preds = %bb.v
  %i.cq = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48>
  %i.cr = bitcast <32 x i8> %i.cq to <4 x i64>
  br label %shift_right_zeros.exit101

bb.x:                                             ; preds = %bb.v
  %i.cs = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49>
  %i.ct = bitcast <32 x i8> %i.cs to <4 x i64>
  br label %shift_right_zeros.exit101

bb.y:                                             ; preds = %bb.v
  %i.cu = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50>
  %i.cv = bitcast <32 x i8> %i.cu to <4 x i64>
  br label %shift_right_zeros.exit101

bb.z:                                             ; preds = %bb.v
  %i.cw = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.cx = bitcast <32 x i8> %i.cw to <4 x i64>
  br label %shift_right_zeros.exit101

bb.aa:                                            ; preds = %bb.v
  %i.cy = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52>
  %i.cz = bitcast <32 x i8> %i.cy to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ab:                                            ; preds = %bb.v
  %i.da = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53>
  %i.db = bitcast <32 x i8> %i.da to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ac:                                            ; preds = %bb.v
  %i.dc = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54>
  %i.dd = bitcast <32 x i8> %i.dc to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ad:                                            ; preds = %bb.v
  %i.de = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.df = bitcast <32 x i8> %i.de to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ae:                                            ; preds = %bb.v
  %i.dg = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.dh = bitcast <32 x i8> %i.dg to <4 x i64>
  br label %shift_right_zeros.exit101

bb.af:                                            ; preds = %bb.v
  %i.di = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57>
  %i.dj = bitcast <32 x i8> %i.di to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ag:                                            ; preds = %bb.v
  %i.dk = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58>
  %i.dl = bitcast <32 x i8> %i.dk to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ah:                                            ; preds = %bb.v
  %i.dm = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59>
  %i.dn = bitcast <32 x i8> %i.dm to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ai:                                            ; preds = %bb.v
  %i.do = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.dp = bitcast <32 x i8> %i.do to <4 x i64>
  br label %shift_right_zeros.exit101

bb.aj:                                            ; preds = %bb.v
  %i.dq = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.dr = bitcast <32 x i8> %i.dq to <4 x i64>
  br label %shift_right_zeros.exit101

bb.ak:                                            ; preds = %bb.v
  %i.ds = shufflevector <32 x i8> %.pre-phi, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison>, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62>
  %i.dt = bitcast <32 x i8> %i.ds to <4 x i64>
  br label %shift_right_zeros.exit101

default.unreachable:                              ; preds = %bb.v
  unreachable

shift_right_zeros.exit101:                        ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.0.i100 = phi <4 x i64> [ %0, %bb.v ], [ %i.dt, %bb.ak ], [ %i.cr, %bb.w ], [ %i.ct, %bb.x ], [ %i.cv, %bb.y ], [ %i.cx, %bb.z ], [ %i.cz, %bb.aa ], [ %i.db, %bb.ab ], [ %i.dd, %bb.ac ], [ %i.df, %bb.ad ], [ %i.dh, %bb.ae ], [ %i.dj, %bb.af ], [ %i.dl, %bb.ag ], [ %i.dn, %bb.ah ], [ %i.dp, %bb.ai ], [ %i.dr, %bb.aj ] ; 15 uses
  %i.du = add nuw nsw i32 %i.cp, %i.g
  %i.dv = add nuw nsw i32 %i.du, %i.cm
  switch i32 %i.dv, label %shift_left_zeros.exit105 [
    i32 15, label %shift_left_zeros.exit103.thread197
    i32 1, label %shift_left_zeros.exit103.thread155
    i32 2, label %shift_left_zeros.exit103.thread158
    i32 3, label %shift_left_zeros.exit103.thread161
    i32 4, label %shift_left_zeros.exit103.thread164
    i32 5, label %shift_left_zeros.exit103.thread167
    i32 6, label %shift_left_zeros.exit103.thread170
    i32 7, label %shift_left_zeros.exit103.thread173
    i32 8, label %shift_left_zeros.exit103.thread176
    i32 9, label %shift_left_zeros.exit103.thread179
    i32 10, label %shift_left_zeros.exit103.thread182
    i32 11, label %shift_left_zeros.exit103.thread185
    i32 12, label %shift_left_zeros.exit103.thread188
    i32 13, label %shift_left_zeros.exit103.thread191
    i32 14, label %shift_left_zeros.exit103.thread194
  ]

shift_left_zeros.exit103.thread155:               ; preds = %shift_right_zeros.exit101
  %i.dw = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %20 = shufflevector <32 x i8> %i.dw, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <32 x i32> <i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread158:               ; preds = %shift_right_zeros.exit101
  %i.dx = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %21 = shufflevector <32 x i8> %i.dx, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i32> <i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread161:               ; preds = %shift_right_zeros.exit101
  %i.dy = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %22 = shufflevector <32 x i8> %i.dy, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <32 x i32> <i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread164:               ; preds = %shift_right_zeros.exit101
  %i.dz = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %23 = shufflevector <32 x i8> %i.dz, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread167:               ; preds = %shift_right_zeros.exit101
  %i.ea = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %24 = shufflevector <32 x i8> %i.ea, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread170:               ; preds = %shift_right_zeros.exit101
  %i.eb = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %25 = shufflevector <32 x i8> %i.eb, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread173:               ; preds = %shift_right_zeros.exit101
  %i.ec = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %26 = shufflevector <32 x i8> %i.ec, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread176:               ; preds = %shift_right_zeros.exit101
  %i.ed = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %27 = shufflevector <32 x i8> %i.ed, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread179:               ; preds = %shift_right_zeros.exit101
  %i.ee = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %28 = shufflevector <32 x i8> %i.ee, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread182:               ; preds = %shift_right_zeros.exit101
  %i.ef = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %29 = shufflevector <32 x i8> %i.ef, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread185:               ; preds = %shift_right_zeros.exit101
  %i.eg = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %30 = shufflevector <32 x i8> %i.eg, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 4, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread188:               ; preds = %shift_right_zeros.exit101
  %i.eh = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %31 = shufflevector <32 x i8> %i.eh, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 3, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread191:               ; preds = %shift_right_zeros.exit101
  %i.ei = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %32 = shufflevector <32 x i8> %i.ei, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 2, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread194:               ; preds = %shift_right_zeros.exit101
  %i.ej = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %33 = shufflevector <32 x i8> %i.ej, <32 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 1, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit103.thread197:               ; preds = %shift_right_zeros.exit101
  %i.ek = bitcast <4 x i64> %.0.i100 to <32 x i8>
  %34 = shufflevector <32 x i8> %i.ek, <32 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 0, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16>
  br label %shift_left_zeros.exit105

shift_left_zeros.exit105:                         ; preds = %shift_right_zeros.exit101, %shift_left_zeros.exit103.thread197, %shift_left_zeros.exit103.thread194, %shift_left_zeros.exit103.thread191, %shift_left_zeros.exit103.thread188, %shift_left_zeros.exit103.thread185, %shift_left_zeros.exit103.thread182, %shift_left_zeros.exit103.thread179, %shift_left_zeros.exit103.thread176, %shift_left_zeros.exit103.thread173, %shift_left_zeros.exit103.thread170, %shift_left_zeros.exit103.thread167, %shift_left_zeros.exit103.thread164, %shift_left_zeros.exit103.thread161, %shift_left_zeros.exit103.thread158, %shift_left_zeros.exit103.thread155
  %i.el = phi <32 x i8> [ %20, %shift_left_zeros.exit103.thread155 ], [ %34, %shift_left_zeros.exit103.thread197 ], [ %21, %shift_left_zeros.exit103.thread158 ], [ %33, %shift_left_zeros.exit103.thread194 ], [ %32, %shift_left_zeros.exit103.thread191 ], [ %31, %shift_left_zeros.exit103.thread188 ], [ %30, %shift_left_zeros.exit103.thread185 ], [ %29, %shift_left_zeros.exit103.thread182 ], [ %28, %shift_left_zeros.exit103.thread179 ], [ %27, %shift_left_zeros.exit103.thread176 ], [ %26, %shift_left_zeros.exit103.thread173 ], [ %25, %shift_left_zeros.exit103.thread170 ], [ %24, %shift_left_zeros.exit103.thread167 ], [ %23, %shift_left_zeros.exit103.thread164 ], [ %22, %shift_left_zeros.exit103.thread161 ], [ zeroinitializer, %shift_right_zeros.exit101 ]
  %i.em = phi <32 x i8> [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread155 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1>, %shift_left_zeros.exit103.thread197 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread158 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread194 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread191 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread188 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread185 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread182 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread179 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread176 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread173 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread170 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread167 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread164 ], [ <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, %shift_left_zeros.exit103.thread161 ], [ zeroinitializer, %shift_right_zeros.exit101 ]
  %i.en = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %.093, <32 x i8> %i.el, <32 x i8> %i.em)
  store <32 x i8> %i.en, ptr %1, align 1, !tbaa !9
  %i.eo = add nuw nsw i32 %.092, %i.g
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  store i8 10, ptr %i.eq, align 1, !tbaa !9
  %i.er = select i1 %i.f, i32 32, i32 31          ; 2 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  store i8 %i.co, ptr %i.et, align 1, !tbaa !9
  %i.eu = add nuw nsw i32 %i.er, %i.cm
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  store i8 %i.cn, ptr %i.ew, align 1, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %shift_left_zeros.exit105, %bb.u
  br i1 %i.f, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ex = sub nsw i32 %.092, %2
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %1, i64 %i.ey
  store i8 10, ptr %i.ez, align 1, !tbaa !9
  %i.fa = extractelement <32 x i8> %.pre-phi, i64 15
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !9
  %i.fc = select i1 %i.cl, i64 33, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  store i8 %i.cn, ptr %i.fd, align 1, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fe = icmp sgt i32 %.092, 32
  %.p.v = select i1 %i.fe, i32 %2, i32 0
  %.p = sub i32 %.p.v, %.092
  %i.ff = add i32 %.p, 32                         ; 3 uses
  store i32 %i.ff, ptr %3, align 4, !tbaa !8
  %i.fg = icmp eq i32 %i.ff, %2
  %i.fh = icmp eq i32 %i.ff, 0
  %or.cond = or i1 %i.fg, %i.fh
  br i1 %or.cond, label %bb.ao, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.pre201 = select i1 %i.f, i32 33, i32 32
  %.pre203 = add nuw nsw i32 %.pre201, %i.cm
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %3, align 4, !tbaa !8
  %i.fi = select i1 %i.f, i32 33, i32 32
  %i.fj = add nuw nsw i32 %i.fi, %i.cm            ; 2 uses
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  store i8 10, ptr %i.fl, align 1, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %bb.ao
  %.pre-phi204 = phi i32 [ %.pre203, %._crit_edge ], [ %i.fj, %bb.ao ]
  %.091 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.ao ]
  %i.fm = add nuw nsw i32 %.pre-phi204, %.091
  %i.fn = zext nneg i32 %i.fm to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.b
  %.0 = phi i64 [ 32, %bb.b ], [ %i.fn, %bb.ap ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = distinct !{!10, !14}
!11 = distinct !{!11, !14}
!12 = !{!"evp_Encode_Ctx_st", !5, i64 0, !4, i64 4, !5, i64 84, !5, i64 88}
!13 = !{!12, !5, i64 88}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_1
