Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx2?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local26ojph_encode_codeblock_avx2EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
  %i.bc = and <4 x i64> %i.bb, splat (i64 1)
  store <4 x i64> %i.bc, ptr %i.ak, align 32, !tbaa !37
  %i.bd = mul i32 %.098231.us, %5
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = or disjoint i32 %.098231.us, 1
  %i.bh = icmp ult i32 %i.bg, %4                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph213.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph213.us ], [ %indvars.iv.next, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 5 uses
  %.097210.us = phi ptr [ %i.bf, %.lr.ph213.us ], [ %.1.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 7 uses
  %.1104209.us = phi i32 [ %.0103226.us, %.lr.ph213.us ], [ %i.ny, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bi = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.oa, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bj = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.nz, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.9154.1206.us = phi i32 [ %.sroa.9154.0223.us, %.lr.ph213.us ], [ %.sroa.9154.7.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.37.1205.us = phi i32 [ %.sroa.37.0222.us, %.lr.ph213.us ], [ %.sroa.37.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.47.1204.us = phi i32 [ %.sroa.47.0221.us, %.lr.ph213.us ], [ %.sroa.47.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.62.1203.us = phi i32 [ %.sroa.62.0220.us, %.lr.ph213.us ], [ %.sroa.62.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bk = icmp ne i64 %indvars.iv, %i.aw          ; 2 uses
  %brmerge = or i1 %i.bk, %.not266
  br i1 %brmerge, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %.097210.us, i64 %i.an, i1 false)
  %.0..0..0.131194.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !37
  %.32..32..32.133196.us = load <8 x i32>, ptr %.32..32..32..sroa_idx, align 16, !tbaa !37
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %i.bl, i64 %i.an, i1 false)
  %.0..0..0.195.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !37
  %.32..32..32.197.us = load <8 x i32>, ptr %.32..32..32..sroa_idx281, align 16, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi <8 x i32> [ %.32..32..32.197.us, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.bn = phi <8 x i32> [ %.0..0..0.195.us, %bb.d ], [ zeroinitializer, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.bo = load <8 x i32>, ptr %.097210.us, align 1, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %.097210.us, i64 32 ; 2 uses
  %i.bq = load <8 x i32>, ptr %i.bp, align 1, !tbaa !37
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  %i.bs = load <8 x i32>, ptr %i.br, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ao
  %i.bu = load <8 x i32>, ptr %i.bt, align 1, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = phi <8 x i32> [ %i.bu, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bw = phi <8 x i32> [ %i.bs, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.097210.us, i64 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.by = phi <8 x i32> [ %i.bv, %bb.h ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.bq, %bb.h ], [ %.32..32..32.133196.us, %bb.e ] ; 2 uses
  %i.ca = phi <8 x i32> [ %i.bw, %bb.h ], [ %i.bn, %bb.e ] ; 2 uses
  %i.cb = phi <8 x i32> [ %i.bo, %bb.h ], [ %.0..0..0.131194.us, %bb.e ] ; 2 uses
  %.1.us = phi ptr [ %i.bx, %bb.h ], [ %.097210.us, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.cc = shl <8 x i32> %i.cb, splat (i32 1)
  %i.cd = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.cc, i32 %i.ab)
  %i.ce = and <8 x i32> %i.cd, splat (i32 -2)     ; 3 uses
  %.not.i118.us = icmp ne <8 x i32> %i.ce, zeroinitializer ; 3 uses
  %i.cf = add <8 x i32> %i.ce, splat (i32 -1)     ; 2 uses
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 8)
  %i.ch = xor <8 x i32> %i.cg, splat (i32 -1)
  %i.ci = and <8 x i32> %i.cf, %i.ch
  %i.cj = sitofp <8 x i32> %i.ci to <8 x float>
  %i.ck = bitcast <8 x float> %i.cj to <8 x i32>
  %i.cl = lshr <8 x i32> %i.ck, splat (i32 23)
  %i.cm = bitcast <8 x i32> %i.cl to <16 x i16>
  %i.cn = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.cm)
  %i.co = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.cn, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.cp = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cq = sub nsw <8 x i32> splat (i32 32), %i.cp
  %i.cr = add <8 x i32> %i.ce, splat (i32 -2)
  %i.cs = lshr <8 x i32> %i.cb, splat (i32 31)
  %i.ct = or disjoint <8 x i32> %i.cr, %i.cs
  %i.cu = select <8 x i1> %.not.i118.us, <8 x i32> %i.cq, <8 x i32> zeroinitializer ; 2 uses
  %i.cv = select <8 x i1> %.not.i118.us, <8 x i32> %i.ct, <8 x i32> zeroinitializer ; 2 uses
  %i.cw = shl <8 x i32> %i.ca, splat (i32 1)
  %i.cx = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.cw, i32 %i.ab)
  %i.cy = and <8 x i32> %i.cx, splat (i32 -2)     ; 3 uses
  %.not.1.i.us = icmp ne <8 x i32> %i.cy, zeroinitializer ; 3 uses
  %i.cz = add <8 x i32> %i.cy, splat (i32 -1)     ; 2 uses
  %i.da = lshr <8 x i32> %i.cz, splat (i32 8)
  %i.db = xor <8 x i32> %i.da, splat (i32 -1)
  %i.dc = and <8 x i32> %i.cz, %i.db
  %i.dd = sitofp <8 x i32> %i.dc to <8 x float>
  %i.de = bitcast <8 x float> %i.dd to <8 x i32>
  %i.df = lshr <8 x i32> %i.de, splat (i32 23)
  %i.dg = bitcast <8 x i32> %i.df to <16 x i16>
  %i.dh = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.dg)
  %i.di = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.dh, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.dj = bitcast <16 x i16> %i.di to <8 x i32>
  %i.dk = sub nsw <8 x i32> splat (i32 32), %i.dj
  %i.dl = add <8 x i32> %i.cy, splat (i32 -2)
  %i.dm = lshr <8 x i32> %i.ca, splat (i32 31)
  %i.dn = or disjoint <8 x i32> %i.dl, %i.dm
  %i.do = select <8 x i1> %.not.1.i.us, <8 x i32> %i.dk, <8 x i32> zeroinitializer ; 2 uses
  %i.dp = select <8 x i1> %.not.1.i.us, <8 x i32> %i.dn, <8 x i32> zeroinitializer ; 2 uses
  %i.dq = shl <8 x i32> %i.bz, splat (i32 1)
  %i.dr = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.dq, i32 %i.ab)
  %i.ds = and <8 x i32> %i.dr, splat (i32 -2)     ; 3 uses
  %.not.2.i.us = icmp ne <8 x i32> %i.ds, zeroinitializer ; 3 uses
  %i.dt = add <8 x i32> %i.ds, splat (i32 -1)     ; 2 uses
  %i.du = lshr <8 x i32> %i.dt, splat (i32 8)
  %i.dv = xor <8 x i32> %i.du, splat (i32 -1)
  %i.dw = and <8 x i32> %i.dt, %i.dv
  %i.dx = sitofp <8 x i32> %i.dw to <8 x float>
  %i.dy = bitcast <8 x float> %i.dx to <8 x i32>
  %i.dz = lshr <8 x i32> %i.dy, splat (i32 23)
  %i.ea = bitcast <8 x i32> %i.dz to <16 x i16>
  %i.eb = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.ea)
  %i.ec = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.eb, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ed = bitcast <16 x i16> %i.ec to <8 x i32>
  %i.ee = sub nsw <8 x i32> splat (i32 32), %i.ed
  %i.ef = add <8 x i32> %i.ds, splat (i32 -2)
  %i.eg = lshr <8 x i32> %i.bz, splat (i32 31)
  %i.eh = or disjoint <8 x i32> %i.ef, %i.eg
  %i.ei = select <8 x i1> %.not.2.i.us, <8 x i32> %i.ee, <8 x i32> zeroinitializer ; 2 uses
  %i.ej = select <8 x i1> %.not.2.i.us, <8 x i32> %i.eh, <8 x i32> zeroinitializer ; 2 uses
  %i.ek = shl <8 x i32> %i.by, splat (i32 1)
  %i.el = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.ek, i32 %i.ab)
  %i.em = and <8 x i32> %i.el, splat (i32 -2)     ; 3 uses
  %.not.3.i.us = icmp ne <8 x i32> %i.em, zeroinitializer ; 3 uses
  %i.en = add <8 x i32> %i.em, splat (i32 -1)     ; 2 uses
  %i.eo = lshr <8 x i32> %i.en, splat (i32 8)
  %i.ep = xor <8 x i32> %i.eo, splat (i32 -1)
  %i.eq = and <8 x i32> %i.en, %i.ep
  %i.er = sitofp <8 x i32> %i.eq to <8 x float>
  %i.es = bitcast <8 x float> %i.er to <8 x i32>
  %i.et = lshr <8 x i32> %i.es, splat (i32 23)
  %i.eu = bitcast <8 x i32> %i.et to <16 x i16>
  %i.ev = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.eu)
  %i.ew = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.ev, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ex = bitcast <16 x i16> %i.ew to <8 x i32>
  %i.ey = sub nsw <8 x i32> splat (i32 32), %i.ex
  %i.ez = add <8 x i32> %i.em, splat (i32 -2)
  %i.fa = lshr <8 x i32> %i.by, splat (i32 31)
  %i.fb = or disjoint <8 x i32> %i.ez, %i.fa
  %i.fc = select <8 x i1> %.not.3.i.us, <8 x i32> %i.ey, <8 x i32> zeroinitializer ; 2 uses
  %i.fd = select <8 x i1> %.not.3.i.us, <8 x i32> %i.fb, <8 x i32> zeroinitializer ; 2 uses
  %i.fe = shufflevector <8 x i32> %i.cu, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ff = shufflevector <8 x i32> %i.cu, <8 x i32> %i.ei, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fg = shufflevector <8 x i32> %i.cv, <8 x i32> %i.ej, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  store <8 x i32> %i.fg, ptr %i.f, align 32, !tbaa !37
  %i.fh = shufflevector <8 x i32> %i.cv, <8 x i32> %i.ej, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  store <8 x i32> %i.fh, ptr %i.ap, align 32, !tbaa !37
  %i.fi = shufflevector <8 x i1> %.not.i118.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fj = zext <8 x i1> %i.fi to <8 x i32>        ; 2 uses
  %i.fk = shufflevector <8 x i1> %.not.2.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fl = zext <8 x i1> %i.fk to <8 x i32>        ; 2 uses
  %i.fm = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fn = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fo = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.fp = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.fq = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  store <8 x i32> %i.fq, ptr %i.aq, align 32, !tbaa !37
  %i.fr = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  store <8 x i32> %i.fr, ptr %i.ar, align 32, !tbaa !37
  %i.fs = shufflevector <8 x i1> %.not.1.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ft = zext <8 x i1> %i.fs to <8 x i32>        ; 2 uses
  %i.fu = shufflevector <8 x i1> %.not.3.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fv = zext <8 x i1> %i.fu to <8 x i32>        ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fx = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> %i.fo)
  %i.fz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fy, <8 x i32> %i.ff) ; 2 uses
  %i.ga = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fz, <8 x i32> %i.fp) ; 4 uses
  %i.gb = shl nuw nsw <8 x i32> %i.fw, splat (i32 1)
  %i.gc = shl nuw nsw <8 x i32> %i.fn, splat (i32 2)
  %i.gd = shl nuw nsw <8 x i32> %i.fx, splat (i32 3)
  %i.ge = or disjoint <8 x i32> %i.gb, %i.gc
  %.inner277 = or disjoint <8 x i32> %i.fm, %i.gd
  %.inner278 = or disjoint <8 x i32> %.inner277, %i.ge ; 2 uses
  store <8 x i32> %.inner278, ptr %i.h, align 32, !tbaa !37
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.gg = load <8 x i32>, ptr %i.gf, align 32, !tbaa !37 ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.gg, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.gj = load <1 x i64>, ptr %i.gi, align 32, !tbaa !37
  %i.gk = shufflevector <1 x i64> %i.gj, <1 x i64> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = bitcast <2 x i64> %i.gk to <4 x i32>
  %i.gm = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.go = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> %i.gg)
  %i.gp = add <8 x i32> %i.go, splat (i32 -1)
  %11 = call range(i32 0, 5) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %.inner278)
  %12 = icmp samesign ult <8 x i32> %11, splat (i32 2) ; 2 uses
  %13 = zext <8 x i1> %12 to <8 x i32>
  %14 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> %13)
  %15 = call <8 x i32> @llvm.umax.v8i32(<8 x i32> %14, <8 x i32> splat (i32 1))
  %i.gq = select <8 x i1> %12, <8 x i32> splat (i32 1), <8 x i32> %15 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gs = call noundef <4 x i64> %.0101228.us(i32 noundef %i.gr, ptr noundef nonnull %i.e, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.gt = bitcast <4 x i64> %i.gs to <8 x i32>    ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.gt, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gv = insertelement <8 x i32> %i.gu, i32 %.1104209.us, i64 0 ; 2 uses
  store <8 x i32> %i.gv, ptr %i.i, align 32, !tbaa !37
  %i.gw = shufflevector <8 x i32> %i.fp, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gx = shufflevector <8 x i32> %i.bj, <8 x i32> %i.gw, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fo, <8 x i32> %i.gx)
  store <8 x i32> %i.gy, ptr %i.gf, align 32, !tbaa !37
  %i.gz = load <8 x i32>, ptr %i.h, align 32, !tbaa !37 ; 4 uses
  %i.ha = shufflevector <8 x i32> %i.gz, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.hb = shufflevector <8 x i32> %i.bi, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = lshr <8 x i32> %i.hb, splat (i32 3)
  %i.hd = lshr <8 x i32> %i.gz, splat (i32 1)
  %i.he = or <8 x i32> %i.hc, %i.hd
  %i.hf = bitcast <8 x i32> %i.he to <4 x i64>
  %i.hg = and <4 x i64> %i.hf, splat (i64 4294967297)
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  store <4 x i64> %i.hg, ptr %i.hh, align 32, !tbaa !37
  %i.hi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gq, <8 x i32> %i.ga) ; 5 uses
  %i.hj = sub nsw <8 x i32> %i.hi, %i.gq          ; 3 uses
  %i.hk = bitcast <8 x i32> %i.hj to <4 x i64>
  %i.hl = icmp sgt <8 x i32> %i.hj, zeroinitializer
  %i.hm = icmp eq <8 x i32> %i.ga, %i.fe
  %i.hn = zext <8 x i1> %i.hm to <8 x i32>
  %i.ho = icmp eq <8 x i32> %i.ga, %i.fo
  %i.hp = select <8 x i1> %i.ho, <8 x i32> splat (i32 2), <8 x i32> zeroinitializer
  %i.hq = icmp eq <8 x i32> %i.ga, %i.ff
  %i.hr = select <8 x i1> %i.hq, <8 x i32> splat (i32 4), <8 x i32> zeroinitializer
  %.not198.us = icmp sgt <8 x i32> %i.fz, %i.fp
  %i.hs = select <8 x i1> %.not198.us, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8)
  %i.ht = or disjoint <8 x i32> %i.hs, %i.hn
  %i.hu = or disjoint <8 x i32> %i.ht, %i.hp
  %i.hv = or disjoint <8 x i32> %i.hu, %i.hr
  %i.hw = select <8 x i1> %i.hl, <8 x i32> %i.hv, <8 x i32> zeroinitializer
  %i.hx = shl <8 x i32> %i.gv, splat (i32 8)
  %i.hy = shl <8 x i32> %i.gz, splat (i32 4)
  %i.hz = add <8 x i32> %i.hy, %i.hx
  %i.ia = or disjoint <8 x i32> %i.hw, %i.hz
  %i.ib = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull readonly %.0102227.us, <8 x i32> %i.ia, <8 x i32> splat (i32 -1), i8 4) ; 5 uses
  %i.ic = select i1 %i.bk, i32 0, i32 %i.n        ; 2 uses
  call void %.0100229.us(ptr noundef nonnull %9, ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef %i.hk, i32 noundef %i.ic, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !42
  %.val115201.us = load <8 x i32>, ptr %i.h, align 32, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.id = and <8 x i32> %i.ib, splat (i32 1)
  %i.ie = sub nuw nsw <8 x i32> %i.hi, %i.id
  %i.if = and <8 x i32> %.val115201.us, splat (i32 1)
  %i.ig = icmp eq <8 x i32> %i.if, zeroinitializer
  %i.ih = select <8 x i1> %i.ig, <8 x i32> zeroinitializer, <8 x i32> %i.ie ; 2 uses
  %i.ii = shl <8 x i32> %i.ib, splat (i32 30)
  %i.ij = ashr <8 x i32> %i.ii, splat (i32 31)
  %i.ik = add nsw <8 x i32> %i.hi, %i.ij
  %i.il = and <8 x i32> %.val115201.us, splat (i32 2)
  %.not.i119.us = icmp eq <8 x i32> %i.il, zeroinitializer
  %i.im = select <8 x i1> %.not.i119.us, <8 x i32> zeroinitializer, <8 x i32> %i.ik ; 2 uses
  %i.in = shl <8 x i32> %i.ib, splat (i32 29)
  %i.io = ashr <8 x i32> %i.in, splat (i32 31)
  %i.ip = add nsw <8 x i32> %i.hi, %i.io
  %i.iq = and <8 x i32> %.val115201.us, splat (i32 4)
  %.not5.i.us = icmp eq <8 x i32> %i.iq, zeroinitializer
  %i.ir = select <8 x i1> %.not5.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.ip ; 2 uses
  %i.is = shl <8 x i32> %i.ib, splat (i32 28)
  %i.it = ashr <8 x i32> %i.is, splat (i32 31)
  %i.iu = add nsw <8 x i32> %i.hi, %i.it
  %i.iv = and <8 x i32> %.val115201.us, splat (i32 8)
  %.not6.i.us = icmp eq <8 x i32> %i.iv, zeroinitializer
  %i.iw = select <8 x i1> %.not6.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.iu ; 2 uses
  %i.ix = shufflevector <8 x i32> %i.ih, <8 x i32> %i.im, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iy = shufflevector <8 x i32> %i.ir, <8 x i32> %i.iw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iz = shufflevector <8 x i32> %i.ih, <8 x i32> %i.im, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ja = shufflevector <8 x i32> %i.ir, <8 x i32> %i.iw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jb = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jc = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jc, ptr %i.at, align 32, !tbaa !37
  store <8 x i32> %i.jb, ptr %i.a, align 32, !tbaa !37
  %i.jd = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.je = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.je, ptr %i.au, align 32, !tbaa !37
  store <8 x i32> %i.jd, ptr %i.as, align 32, !tbaa !37
  %i.jf = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jg = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jj = shufflevector <8 x i32> %i.jf, <8 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jk = shufflevector <8 x i32> %i.jf, <8 x i32> %i.jg, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jk, ptr %i.ap, align 32, !tbaa !37
  store <8 x i32> %i.jj, ptr %i.f, align 32, !tbaa !37
  %i.jl = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jm = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jm, ptr %i.ar, align 32, !tbaa !37
  store <8 x i32> %i.jl, ptr %i.aq, align 32, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us, %bb.i
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1203.us, %bb.i ], [ %.sroa.62.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1204.us, %bb.i ], [ %.sroa.47.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1205.us, %bb.i ], [ %.sroa.37.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.9154.3.us = phi i32 [ %.sroa.9154.1206.us, %bb.i ], [ %.sroa.9154.7.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.jo = load <8 x i32>, ptr %i.jn, align 32, !tbaa !37 ; 9 uses
  %i.jp = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.jo)
  %i.jq = add <8 x i32> %i.jp, splat (i32 -1)
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv.i.us
  %i.js = load <8 x i32>, ptr %i.jr, align 32, !tbaa !37
  %i.jt = and <8 x i32> %i.js, %i.jq              ; 8 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <8 x i32> %i.jo, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.us = extractelement <8 x i32> %i.jo, i64 1
  %i.ju = add nsw i32 %.sroa.0.4.vec.extract.i.us, %.sroa.0.0.vec.extract.i.us ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.j
  %.sroa.012.4.vec.extract.i.us = extractelement <8 x i32> %i.jt, i64 1
  %i.jw = zext i32 %.sroa.012.4.vec.extract.i.us to i64
  %i.jx = zext nneg i32 %.sroa.0.0.vec.extract.i.us to i64
  %i.jy = shl i64 %i.jw, %i.jx
  %.sroa.012.0.vec.extract.i.us = extractelement <8 x i32> %i.jt, i64 0
  %i.jz = zext i32 %.sroa.012.0.vec.extract.i.us to i64
  %i.ka = or i64 %i.jy, %i.jz
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.us
  %.sroa.62.13.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.14.us, %bb.o ]
  %.sroa.47.13.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.14.us, %bb.o ] ; 3 uses
  %.sroa.37.13.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.14.us, %bb.o ] ; 3 uses
  %.sroa.9154.14.us = phi i32 [ %.sroa.9154.3.us, %.lr.ph.i.i.us ], [ %.sroa.9154.15.us, %bb.o ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.ju, %.lr.ph.i.i.us ], [ %i.kn, %bb.o ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.ka, %.lr.ph.i.i.us ], [ %i.km, %bb.o ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9154.14.us, 17477
  br i1 %.not.i.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !43
  %i.kd = load ptr, ptr %i.kc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ke = sub nuw nsw i32 %.sroa.37.13.us, %.sroa.47.13.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.ke, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.kf = xor i32 %notmask.i.i.us, -1
  %i.kg = trunc i64 %.02731.i.i.us to i32
  %i.kh = and i32 %i.kf, %i.kg
  %i.ki = shl nuw nsw i32 %i.kh, %.sroa.47.13.us
  %i.kj = or i32 %i.ki, %.sroa.62.13.us           ; 3 uses
  %i.kk = add nuw nsw i32 %..0.i.i.us, %.sroa.47.13.us ; 2 uses
  %i.kl = zext nneg i32 %..0.i.i.us to i64
  %i.km = lshr i64 %.02731.i.i.us, %i.kl
  %i.kn = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.kk, %.sroa.37.13.us
  br i1 %.not30.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ko = trunc i32 %i.kj to i8
  %i.kp = add i32 %.sroa.9154.14.us, 1
  %i.kq = zext i32 %.sroa.9154.14.us to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kq
  store i8 %i.ko, ptr %i.kr, align 1, !tbaa !37
  %i.ks = icmp eq i32 %i.kj, 255
  %i.kt = select i1 %i.ks, i32 7, i32 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.62.14.us = phi i32 [ %i.kj, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.47.14.us = phi i32 [ %i.kk, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.37.14.us = phi i32 [ %.sroa.37.13.us, %bb.m ], [ %i.kt, %bb.n ] ; 2 uses
  %.sroa.9154.15.us = phi i32 [ %.sroa.9154.14.us, %bb.m ], [ %i.kp, %bb.n ] ; 2 uses
  %i.ku = icmp sgt i32 %i.kn, 0
  br i1 %i.ku, label %bb.k, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !46

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.o, %bb.j
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.j ], [ %.sroa.62.14.us, %bb.o ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.j ], [ %.sroa.47.14.us, %bb.o ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.j ], [ %.sroa.37.14.us, %bb.o ] ; 2 uses
  %.sroa.9154.4.us = phi i32 [ %.sroa.9154.3.us, %bb.j ], [ %.sroa.9154.15.us, %bb.o ] ; 2 uses
  %.sroa.0.8.vec.extract.i.us = extractelement <8 x i32> %i.jo, i64 2 ; 2 uses
  %.sroa.0.12.vec.extract.i.us = extractelement <8 x i32> %i.jo, i64 3
  %i.kv = add nsw i32 %.sroa.0.12.vec.extract.i.us, %.sroa.0.8.vec.extract.i.us ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.012.12.vec.extract.i.us = extractelement <8 x i32> %i.jt, i64 3
  %i.kx = zext i32 %.sroa.012.12.vec.extract.i.us to i64
  %i.ky = zext nneg i32 %.sroa.0.8.vec.extract.i.us to i64
  %i.kz = shl i64 %i.kx, %i.ky
  %.sroa.012.8.vec.extract.i.us = extractelement <8 x i32> %i.jt, i64 2
  %i.la = zext i32 %.sroa.012.8.vec.extract.i.us to i64
  %i.lb = or i64 %i.kz, %i.la
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.1.i.us
  %.sroa.62.11.us = phi i32 [ %.sroa.62.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.62.12.us, %bb.t ]
  %.sroa.47.11.us = phi i32 [ %.sroa.47.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 3 uses
  %.sroa.37.11.us = phi i32 [ %.sroa.37.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ojph5localL10mel_encodeEPNS0_10mel_structEb:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = shl i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 1                  ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !53
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i32 %i.i to i8
  %i.o = load ptr, ptr %0, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !54
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s
  store i8 %i.n, ptr %i.t, align 1, !tbaa !37
  %i.u = load i32, ptr %i.f, align 4, !tbaa !52
  %i.v = icmp eq i32 %i.u, 255
  %i.w = select i1 %i.v, i32 7, i32 8
  store i32 %i.w, ptr %i.j, align 8, !tbaa !53
  store i32 0, ptr %i.f, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit: ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.a, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 11)
  %spec.select = add nsw i32 %i.z, 1              ; 2 uses
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !29
  %i.aa = sext i32 %spec.select to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = shl nuw i32 1, %i.ac
  store i32 %i.ad, ptr %i.d, align 8, !tbaa !30
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.ag = shl i32 %i.af, 1                        ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.aj = add nsw i32 %i.ai, -1                   ; 3 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !53
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

bb.f:                                             ; preds = %bb.e
  %i.al = trunc i32 %i.ag to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !54
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aq
  store i8 %i.al, ptr %i.ar, align 1, !tbaa !37
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.at = icmp eq i32 %i.as, 255
  %i.au = select i1 %i.at, i32 7, i32 8           ; 2 uses
  store i32 %i.au, ptr %i.ah, align 8, !tbaa !53
  store i32 0, ptr %i.ae, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25: ; preds = %bb.e, %bb.f
  %i.av = phi i32 [ %i.aj, %bb.e ], [ %i.au, %bb.f ]
  %i.aw = phi i32 [ %i.ag, %bb.e ], [ 0, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.az, -3
  %i.bb = icmp ult i64 %i.ba, 10
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %i.bg = phi i32 [ %i.av, %.lr.ph ], [ %i.bz, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %i.bh = phi i32 [ %i.aw, %.lr.ph ], [ %i.ca, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ]
  %.027 = phi i32 [ %i.bd, %.lr.ph ], [ %i.bj, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26 ] ; 2 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !28
  %i.bj = add nsw i32 %.027, -1                   ; 2 uses
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = and i32 %i.bk, 1
  %i.bm = shl i32 %i.bh, 1
  %i.bn = or disjoint i32 %i.bm, %i.bl            ; 3 uses
  store i32 %i.bn, ptr %i.ae, align 4, !tbaa !52
  %i.bo = add nsw i32 %i.bg, -1                   ; 3 uses
  store i32 %i.bo, ptr %i.ah, align 8, !tbaa !53
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc i32 %i.bn to i8
  %i.br = load ptr, ptr %0, align 8, !tbaa !24
  %i.bs = load i32, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bf, align 8, !tbaa !54
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu
  store i8 %i.bq, ptr %i.bv, align 1, !tbaa !37
  %i.bw = load i32, ptr %i.ae, align 4, !tbaa !52
  %i.bx = icmp eq i32 %i.bw, 255
  %i.by = select i1 %i.bx, i32 7, i32 8           ; 2 uses
  store i32 %i.by, ptr %i.ah, align 8, !tbaa !53
  store i32 0, ptr %i.ae, align 4, !tbaa !52
  br label %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26

_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26: ; preds = %bb.g, %bb.h
  %i.bz = phi i32 [ %i.bo, %bb.g ], [ %i.by, %bb.h ]
  %i.ca = phi i32 [ %i.bn, %bb.g ], [ 0, %bb.h ]
  %i.cb = icmp sgt i32 %.027, 1
  br i1 %i.cb, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit26
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25
  %i.cc = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit25 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cd, align 8, !tbaa !28
  %i.ce = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %spec.select24 = add nsw i32 %i.ce, -1          ; 2 uses
  store i32 %spec.select24, ptr %i.ax, align 4, !tbaa !29
  %i.cf = zext nneg i32 %spec.select24 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4ojph5localL10mel_encodeEPNS0_10mel_structEbE7mel_exp, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4ojph5localL12mel_emit_bitEPNS0_10mel_structEi.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32>, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.usub.sat.v16i16(<16 x i16>, <16 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32>, <8 x i32>) #10

declare noundef ptr @_ZN4ojph9get_errorEv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.ctpop.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"_ZTSZN4ojph5localL15vlc_init_tablesEvE13vlc_src_table", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!11 = !{!10, !5, i64 4}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !5, i64 12}
!14 = !{!10, !5, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!10, !5, i64 20}
!19 = !{!10, !5, i64 24}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSN4ojph5local10mel_structE", !26, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!26 = !{!"p1 omnipotent char", !27, i64 0}
!27 = !{!"any pointer", !6, i64 0}
!28 = !{!25, !5, i64 24}
!29 = !{!25, !5, i64 28}
!30 = !{!25, !5, i64 32}
!31 = !{!32, !26, i64 0}
!32 = !{!"_ZTSN4ojph5local15vlc_struct_avx2E", !26, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !33, i64 24, !34, i64 32}
!33 = !{!"long", !6, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{!32, !5, i64 8}
!36 = !{!32, !5, i64 12}
!37 = !{!6, !6, i64 0}
!38 = !{!32, !5, i64 16}
!39 = !{!32, !33, i64 24}
!40 = !{!32, !34, i64 32}
!41 = !{ptr @_ZN4ojph5localL8proc_cq1EjPDv4_xRS1_S1_, ptr @_ZN4ojph5localL8proc_cq2EjPDv4_xRS1_S1_}
!42 = !{ptr @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv4_xS4_S3_jS3_, ptr @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv4_xS4_S3_jS3_}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !7, i64 0}
!45 = distinct !{null, null}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = !{ptr @_ZN4ojph5localL16proc_vlc_encode1EPNS0_15vlc_struct_avx2EPjS3_j, ptr @_ZN4ojph5localL16proc_vlc_encode2EPNS0_15vlc_struct_avx2EPjS3_j}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{null}
!52 = !{!25, !5, i64 20}
!53 = !{!25, !5, i64 16}
!54 = !{!25, !5, i64 8}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!25, !5, i64 12}
!58 = distinct !{null}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN4ojph11coded_listsE", !27, i64 0}
!61 = !{!62, !26, i64 16}
!62 = !{!"_ZTSN4ojph11coded_listsE", !60, i64 0, !5, i64 8, !5, i64 12, !26, i64 16}
!63 = !{!62, !5, i64 12}
!64 = distinct !{!64, !16}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
end_hunk_1
