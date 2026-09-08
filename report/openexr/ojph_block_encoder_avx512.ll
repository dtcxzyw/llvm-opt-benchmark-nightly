Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx512?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local28ojph_encode_codeblock_avx512EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE:bb.a
.lr.ph232.split.preheader:                        ; preds = %.lr.ph232
  store <8 x i64> zeroinitializer, ptr %i.ae, align 64, !tbaa !23
  br label %._crit_edge233.thread

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.098230.us = phi i32 [ %i.nz, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.099229.us = phi ptr [ @_ZN4ojph5localL16proc_vlc_encode2EPNS0_17vlc_struct_avx512EPjS3_j, %._crit_edge.us ], [ @_ZN4ojph5localL16proc_vlc_encode1EPNS0_17vlc_struct_avx512EPjS3_j, %.lr.ph.us.preheader ]
  %.0100228.us = phi ptr [ @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv8_xS4_S3_jS3_, %._crit_edge.us ], [ @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv8_xS4_S3_jS3_, %.lr.ph.us.preheader ]
  %.0101227.us = phi ptr [ @_ZN4ojph5localL8proc_cq2EjPDv8_xRS1_S1_, %._crit_edge.us ], [ @_ZN4ojph5localL8proc_cq1EjPDv8_xRS1_S1_, %.lr.ph.us.preheader ]
  %.0102226.us = phi ptr [ @_ZN4ojph5localL8vlc_tbl1E, %._crit_edge.us ], [ @_ZN4ojph5localL8vlc_tbl0E, %.lr.ph.us.preheader ]
  %i.ai = phi <16 x i32> [ %i.ny, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %i.aj = phi <16 x i32> [ %i.nr, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %.0203225.us = phi <8 x i64> [ %i.nt, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %.sroa.9165.0224.us = phi i32 [ %.sroa.9165.10.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.sroa.37.0223.us = phi i32 [ %.sroa.37.9.us, %._crit_edge.us ], [ 8, %.lr.ph.us.preheader ]
  %.sroa.47.0222.us = phi i32 [ %.sroa.47.9.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.sroa.62.0221.us = phi i32 [ %.sroa.62.9.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  store <8 x i64> %.0203225.us, ptr %i.ad, align 64, !tbaa !23
  %i.ak = lshr <16 x i32> %i.aj, splat (i32 3)
  %i.al = bitcast <16 x i32> %i.ak to <8 x i64>
  %i.am = and <8 x i64> %i.al, splat (i64 1)
  store <8 x i64> %i.am, ptr %i.ae, align 64, !tbaa !23
  %i.an = mul i32 %.098230.us, %5
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = or disjoint i32 %.098230.us, 1
  %i.ar = icmp ult i32 %i.aq, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ] ; 6 uses
  %.097214.us = phi ptr [ %i.ap, %.lr.ph.us ], [ %i.no, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ] ; 4 uses
  %i.as = phi <16 x i32> [ %i.ai, %.lr.ph.us ], [ %i.np, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %i.at = phi <16 x i32> [ zeroinitializer, %.lr.ph.us ], [ %i.nr, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %i.au = phi <16 x i32> [ zeroinitializer, %.lr.ph.us ], [ %i.nq, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.9165.1212.us = phi i32 [ %.sroa.9165.0224.us, %.lr.ph.us ], [ %.sroa.9165.10.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.37.1211.us = phi i32 [ %.sroa.37.0223.us, %.lr.ph.us ], [ %.sroa.37.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.47.1210.us = phi i32 [ %.sroa.47.0222.us, %.lr.ph.us ], [ %.sroa.47.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.62.1209.us = phi i32 [ %.sroa.62.0221.us, %.lr.ph.us ], [ %.sroa.62.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.av = shl nuw i32 %indvars.iv.tr, 5
  %.reass.reass = add i32 %i.av, %invariant.op
  %i.aw = call i32 @llvm.smax.i32(i32 %.reass.reass, i32 0) ; 2 uses
  %i.ax = lshr i32 -1, %i.aw
  %i.ay = trunc i32 %i.ax to i16
  %i.az = lshr i32 65535, %i.aw
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = bitcast i16 %i.ay to <16 x i1>          ; 2 uses
  %i.bc = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.097214.us, <16 x i1> %i.bb, <16 x i32> zeroinitializer) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.097214.us, i64 64 ; 2 uses
  %i.be = bitcast i16 %i.ba to <16 x i1>          ; 2 uses
  %i.bf = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr nonnull align 1 %i.bd, <16 x i1> %i.be, <16 x i32> zeroinitializer) ; 2 uses
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.097214.us, i64 %i.af
  %i.bh = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %i.bg, <16 x i1> %i.bb, <16 x i32> zeroinitializer)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.af
  %i.bj = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr nonnull align 1 %i.bi, <16 x i1> %i.be, <16 x i32> zeroinitializer)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bk = phi <16 x i32> [ %i.bj, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.bl = phi <16 x i32> [ %i.bh, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.bm = shl <16 x i32> %i.bc, splat (i32 1)
  %i.bn = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.bm, i32 %i.aa)
  %i.bo = and <16 x i32> %i.bn, splat (i32 -2)    ; 2 uses
  %i.bp = icmp ne <16 x i32> %i.bo, zeroinitializer ; 2 uses
  %i.bq = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.bo, <16 x i32> splat (i32 1)) ; 2 uses
  %i.br = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.bq, i1 false)
  %i.bs = sub nuw nsw <16 x i32> splat (i32 32), %i.br ; 2 uses
  %i.bt = lshr <16 x i32> %i.bc, splat (i32 31)
  %i.bu = add nsw <16 x i32> %i.bt, splat (i32 -1)
  %i.bv = add <16 x i32> %i.bu, %i.bq
  %i.bw = select <16 x i1> %i.bp, <16 x i32> %i.bv, <16 x i32> zeroinitializer ; 2 uses
  %i.bx = shl <16 x i32> %i.bl, splat (i32 1)
  %i.by = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.bx, i32 %i.aa)
  %i.bz = and <16 x i32> %i.by, splat (i32 -2)    ; 2 uses
  %i.ca = icmp ne <16 x i32> %i.bz, zeroinitializer ; 2 uses
  %i.cb = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.bz, <16 x i32> splat (i32 1)) ; 2 uses
  %i.cc = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.cb, i1 false)
  %i.cd = sub nuw nsw <16 x i32> splat (i32 32), %i.cc ; 2 uses
  %i.ce = lshr <16 x i32> %i.bl, splat (i32 31)
  %i.cf = add nsw <16 x i32> %i.ce, splat (i32 -1)
  %i.cg = add <16 x i32> %i.cf, %i.cb
  %i.ch = select <16 x i1> %i.ca, <16 x i32> %i.cg, <16 x i32> zeroinitializer ; 2 uses
  %i.ci = shl <16 x i32> %i.bf, splat (i32 1)
  %i.cj = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.ci, i32 %i.aa)
  %i.ck = and <16 x i32> %i.cj, splat (i32 -2)    ; 2 uses
  %i.cl = icmp ne <16 x i32> %i.ck, zeroinitializer ; 2 uses
  %i.cm = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.ck, <16 x i32> splat (i32 1)) ; 2 uses
  %i.cn = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.cm, i1 false)
  %i.co = sub nuw nsw <16 x i32> splat (i32 32), %i.cn ; 2 uses
  %i.cp = lshr <16 x i32> %i.bf, splat (i32 31)
  %i.cq = add nsw <16 x i32> %i.cp, splat (i32 -1)
  %i.cr = add <16 x i32> %i.cq, %i.cm
  %i.cs = select <16 x i1> %i.cl, <16 x i32> %i.cr, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = shl <16 x i32> %i.bk, splat (i32 1)
  %i.cu = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.ct, i32 %i.aa)
  %i.cv = and <16 x i32> %i.cu, splat (i32 -2)    ; 2 uses
  %i.cw = icmp ne <16 x i32> %i.cv, zeroinitializer ; 2 uses
  %i.cx = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.cv, <16 x i32> splat (i32 1)) ; 2 uses
  %i.cy = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.cx, i1 false)
  %i.cz = sub nuw nsw <16 x i32> splat (i32 32), %i.cy ; 2 uses
  %i.da = lshr <16 x i32> %i.bk, splat (i32 31)
  %i.db = add nsw <16 x i32> %i.da, splat (i32 -1)
  %i.dc = add <16 x i32> %i.db, %i.cx
  %i.dd = select <16 x i1> %i.cw, <16 x i32> %i.dc, <16 x i32> zeroinitializer ; 2 uses
  %i.de = zext <16 x i1> %i.bp to <16 x i32>      ; 2 uses
  %i.df = zext <16 x i1> %i.ca to <16 x i32>      ; 2 uses
  %i.dg = zext <16 x i1> %i.cl to <16 x i32>      ; 2 uses
  %i.dh = zext <16 x i1> %i.cw to <16 x i32>      ; 2 uses
  %i.di = shufflevector <16 x i32> %i.bs, <16 x i32> %i.co, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.dj = shufflevector <16 x i32> %i.bw, <16 x i32> %i.cs, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.dk = shufflevector <16 x i32> %i.de, <16 x i32> %i.dg, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dl = shufflevector <16 x i32> %i.cd, <16 x i32> %i.cz, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 3 uses
  %i.dm = shufflevector <16 x i32> %i.ch, <16 x i32> %i.dd, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.df, <16 x i32> %i.dh, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.do = shl nuw nsw <16 x i32> %i.dn, splat (i32 1)
  %i.dp = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.di, <16 x i32> %i.dl)
  %i.dq = shufflevector <16 x i32> %i.bs, <16 x i32> %i.co, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x i32> %i.bw, <16 x i32> %i.cs, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x i32> %i.de, <16 x i32> %i.dg, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.dt = shl nuw nsw <16 x i32> %i.ds, splat (i32 2)
  %i.du = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dp, <16 x i32> %i.dq) ; 2 uses
  %i.dv = shufflevector <16 x i32> %i.cd, <16 x i32> %i.cz, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 3 uses
  %i.dw = shufflevector <16 x i32> %i.ch, <16 x i32> %i.dd, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x i32> %i.df, <16 x i32> %i.dh, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.dy = shl nuw nsw <16 x i32> %i.dx, splat (i32 3)
  %i.dz = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.du, <16 x i32> %i.dv) ; 4 uses
  %i.ea = or disjoint <16 x i32> %i.do, %i.dk
  %i.eb = or disjoint <16 x i32> %i.ea, %i.dt
  %i.ec = or disjoint <16 x i32> %i.eb, %i.dy     ; 2 uses
  store <16 x i32> %i.ec, ptr %i.g, align 64, !tbaa !23
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ee = load <16 x i32>, ptr %i.ed, align 64, !tbaa !23 ; 2 uses
  %i.ef = shufflevector <16 x i32> %i.ee, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.eh = load <1 x i32>, ptr %i.eg, align 64, !tbaa !23
  %i.ei = shufflevector <1 x i32> %i.eh, <1 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.ej = shufflevector <16 x i32> %i.ef, <16 x i32> %i.ei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  %i.ek = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ee, <16 x i32> %i.ej)
  %i.el = add <16 x i32> %i.ek, splat (i32 -1)
  %i.em = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.el, <16 x i32> splat (i32 1))
  %i.en = call range(i32 0, 5) <16 x i32> @llvm.ctpop.v16i32(<16 x i32> %i.ec)
  %.not.us.inv = icmp samesign ugt <16 x i32> %i.en, splat (i32 1)
  %i.eo = select <16 x i1> %.not.us.inv, <16 x i32> %i.em, <16 x i32> splat (i32 1) ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv to i32
  %i.eq = call noundef <8 x i64> %.0101227.us(i32 noundef %i.ep, ptr noundef nonnull %i.f, ptr noundef nonnull align 64 dereferenceable(64) %i.g, <8 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 34359738375, i64 42949672969, i64 51539607563, i64 60129542157, i64 15>), !callees !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.er = bitcast <8 x i64> %i.eq to <16 x i32>
  %i.es = shufflevector <16 x i32> %i.er, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.et = shufflevector <16 x i32> %i.as, <16 x i32> %i.es, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  store <16 x i32> %i.et, ptr %i.h, align 64, !tbaa !23
  %i.eu = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.ev = shufflevector <16 x i32> %i.au, <16 x i32> %i.eu, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ew = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dl, <16 x i32> %i.ev)
  store <16 x i32> %i.ew, ptr %i.ed, align 64, !tbaa !23
  %i.ex = load <16 x i32>, ptr %i.g, align 64, !tbaa !23 ; 3 uses
  %i.ey = shufflevector <16 x i32> %i.ex, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.ez = shufflevector <16 x i32> %i.at, <16 x i32> %i.ey, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fa = lshr <16 x i32> %i.ez, splat (i32 3)
  %i.fb = lshr <16 x i32> %i.ex, splat (i32 1)
  %i.fc = or <16 x i32> %i.fa, %i.fb
  %i.fd = bitcast <16 x i32> %i.fc to <8 x i64>
  %i.fe = and <8 x i64> %i.fd, splat (i64 4294967297)
  %i.ff = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv
  store <8 x i64> %i.fe, ptr %i.ff, align 64, !tbaa !23
  %i.fg = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eo, <16 x i32> %i.dz) ; 5 uses
  %i.fh = sub nsw <16 x i32> %i.fg, %i.eo         ; 3 uses
  %i.fi = bitcast <16 x i32> %i.fh to <8 x i64>
  %i.fj = icmp sgt <16 x i32> %i.fh, zeroinitializer ; 2 uses
  %i.fk = icmp eq <16 x i32> %i.di, %i.dz
  %narrow.i.us = select <16 x i1> %i.fj, <16 x i1> %i.fk, <16 x i1> zeroinitializer
  %i.fl = zext <16 x i1> %narrow.i.us to <16 x i32>
  %i.fm = icmp eq <16 x i32> %i.dl, %i.dz
  %i.fn = select <16 x i1> %i.fm, <16 x i32> splat (i32 2), <16 x i32> zeroinitializer
  %i.fo = icmp eq <16 x i32> %i.dq, %i.dz
  %i.fp = select <16 x i1> %i.fo, <16 x i32> splat (i32 4), <16 x i32> zeroinitializer
  %.not205.us = icmp samesign ult <16 x i32> %i.dv, %i.du
  %i.fq = select <16 x i1> %.not205.us, <16 x i32> zeroinitializer, <16 x i32> splat (i32 8)
  %i.fr = or disjoint <16 x i32> %i.fn, %i.fq
  %i.fs = or disjoint <16 x i32> %i.fr, %i.fp
  %i.ft = or disjoint <16 x i32> %i.fs, %i.fl
  %i.fu = select <16 x i1> %i.fj, <16 x i32> %i.ft, <16 x i32> zeroinitializer
  %i.fv = shl <16 x i32> %i.et, splat (i32 8)
  %i.fw = shl <16 x i32> %i.ex, splat (i32 4)
  %i.fx = add <16 x i32> %i.fw, %i.fv
  %i.fy = or disjoint <16 x i32> %i.fu, %i.fx
  %i.fz = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull readonly %.0102226.us, <16 x i32> %i.fy, <16 x i1> splat (i1 true), i32 4) ; 5 uses
  %i.ga = icmp eq i64 %indvars.iv, %i.ah
  %i.gb = select i1 %i.ga, i32 %i.z, i32 0        ; 2 uses
  call void %.0100228.us(ptr noundef nonnull %9, ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 64 dereferenceable(64) %i.g, <8 x i64> noundef %i.fi, i32 noundef %i.gb, <8 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 34359738375, i64 42949672969, i64 51539607563, i64 60129542157, i64 15>), !callees !55
  %.val113207.us = load <16 x i32>, ptr %i.g, align 64, !tbaa !23 ; 4 uses
  %i.gc = and <16 x i32> %i.fz, splat (i32 1)
  %i.gd = sub nuw nsw <16 x i32> %i.fg, %i.gc
  %i.ge = and <16 x i32> %.val113207.us, splat (i32 1)
  %.not.i116.us = icmp eq <16 x i32> %i.ge, zeroinitializer
  %i.gf = select <16 x i1> %.not.i116.us, <16 x i32> zeroinitializer, <16 x i32> %i.gd ; 2 uses
  %11 = shl <16 x i32> %i.fz, splat (i32 30)
  %12 = ashr <16 x i32> %11, splat (i32 31)
  %13 = add nsw <16 x i32> %12, %i.fg
  %i.gg = and <16 x i32> %.val113207.us, splat (i32 2)
  %.not5.i.us = icmp eq <16 x i32> %i.gg, zeroinitializer
  %i.gh = select <16 x i1> %.not5.i.us, <16 x i32> zeroinitializer, <16 x i32> %13 ; 2 uses
  %14 = shl <16 x i32> %i.fz, splat (i32 29)
  %15 = ashr <16 x i32> %14, splat (i32 31)
  %16 = add nsw <16 x i32> %15, %i.fg
  %i.gi = and <16 x i32> %.val113207.us, splat (i32 4)
  %.not6.i.us = icmp eq <16 x i32> %i.gi, zeroinitializer
  %i.gj = select <16 x i1> %.not6.i.us, <16 x i32> zeroinitializer, <16 x i32> %16 ; 2 uses
  %17 = shl <16 x i32> %i.fz, splat (i32 28)
  %18 = ashr <16 x i32> %17, splat (i32 31)
  %19 = add nsw <16 x i32> %18, %i.fg
  %i.gk = and <16 x i32> %.val113207.us, splat (i32 8)
  %.not7.i.us = icmp eq <16 x i32> %i.gk, zeroinitializer
  %i.gl = select <16 x i1> %.not7.i.us, <16 x i32> zeroinitializer, <16 x i32> %19 ; 2 uses
  %i.gm = shufflevector <16 x i32> %i.gf, <16 x i32> %i.gh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gn = shufflevector <16 x i32> %i.gf, <16 x i32> %i.gh, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.go = shufflevector <16 x i32> %i.gj, <16 x i32> %i.gl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gp = shufflevector <16 x i32> %i.gj, <16 x i32> %i.gl, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gq = shufflevector <16 x i32> %i.gm, <16 x i32> %i.go, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gr = shufflevector <16 x i32> %i.gn, <16 x i32> %i.gp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gs = shufflevector <16 x i32> %i.gq, <16 x i32> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.gt = shufflevector <16 x i32> %i.dj, <16 x i32> %i.dm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gu = shufflevector <16 x i32> %i.dj, <16 x i32> %i.dm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gv = shufflevector <16 x i32> %i.dr, <16 x i32> %i.dw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gw = shufflevector <16 x i32> %i.dr, <16 x i32> %i.dw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gx = shufflevector <16 x i32> %i.gt, <16 x i32> %i.gv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gy = shufflevector <16 x i32> %i.gu, <16 x i32> %i.gw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gz = shufflevector <16 x i32> %i.gx, <16 x i32> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store <16 x i32> %i.gs, ptr %i.b, align 16, !tbaa !23
  %i.ha = call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> splat (i32 1), <16 x i32> %i.gs)
  %i.hb = add <16 x i32> %i.ha, splat (i32 -1)
  %i.hc = and <16 x i32> %i.hb, %i.gz
  store <16 x i32> %i.hc, ptr %i.a, align 16, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, %bb.d
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1209.us, %bb.d ], [ %.sroa.62.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1210.us, %bb.d ], [ %.sroa.47.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1211.us, %bb.d ], [ %.sroa.37.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.9165.3.us = phi i32 [ %.sroa.9165.1212.us, %bb.d ], [ %.sroa.9165.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %i.hd = shl nuw nsw i64 %indvars.iv.i.us, 1     ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !9  ; 2 uses
  %i.hg = or disjoint i64 %i.hd, 1                ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !9
  %i.hj = add nsw i32 %i.hi, %i.hf                ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.e
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hg
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !9
  %i.hn = zext i32 %i.hm to i64
  %i.ho = zext nneg i32 %i.hf to i64
  %i.hp = shl i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hd
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !9
  %i.hs = zext i32 %i.hr to i64
  %i.ht = or i64 %i.hp, %i.hs
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.us
  %.sroa.62.16.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.17.us, %bb.j ]
  %.sroa.47.16.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.17.us, %bb.j ] ; 3 uses
  %.sroa.37.16.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.17.us, %bb.j ] ; 3 uses
  %.sroa.9165.17.us = phi i32 [ %.sroa.9165.3.us, %.lr.ph.i.i.us ], [ %.sroa.9165.18.us, %bb.j ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.hj, %.lr.ph.i.i.us ], [ %i.ig, %bb.j ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.ht, %.lr.ph.i.i.us ], [ %i.if, %bb.j ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9165.17.us, 17477
  br i1 %.not.i.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !57
  %i.hw = load ptr, ptr %i.hv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 448, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.hx = sub nuw nsw i32 %.sroa.37.16.us, %.sroa.47.16.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.hx, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.hy = xor i32 %notmask.i.i.us, -1
  %i.hz = trunc i64 %.02731.i.i.us to i32
  %i.ia = and i32 %i.hy, %i.hz
  %i.ib = shl nuw nsw i32 %i.ia, %.sroa.47.16.us
  %i.ic = or i32 %i.ib, %.sroa.62.16.us           ; 3 uses
  %i.id = add nuw nsw i32 %..0.i.i.us, %.sroa.47.16.us ; 2 uses
  %i.ie = zext nneg i32 %..0.i.i.us to i64
  %i.if = lshr i64 %.02731.i.i.us, %i.ie
  %i.ig = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.id, %.sroa.37.16.us
  br i1 %.not30.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ih = trunc i32 %i.ic to i8
  %i.ii = add nuw i32 %.sroa.9165.17.us, 1
  %i.ij = zext i32 %.sroa.9165.17.us to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ij
  store i8 %i.ih, ptr %i.ik, align 1, !tbaa !23
  %i.il = icmp eq i32 %i.ic, 255
  %i.im = select i1 %i.il, i32 7, i32 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.62.17.us = phi i32 [ %i.ic, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.47.17.us = phi i32 [ %i.id, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.37.17.us = phi i32 [ %.sroa.37.16.us, %bb.h ], [ %i.im, %bb.i ] ; 2 uses
  %.sroa.9165.18.us = phi i32 [ %.sroa.9165.17.us, %bb.h ], [ %i.ii, %bb.i ] ; 2 uses
  %i.in = icmp sgt i32 %i.ig, 0
  br i1 %i.in, label %bb.f, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.j, %bb.e
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.e ], [ %.sroa.62.17.us, %bb.j ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.e ], [ %.sroa.47.17.us, %bb.j ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.e ], [ %.sroa.37.17.us, %bb.j ] ; 2 uses
  %.sroa.9165.4.us = phi i32 [ %.sroa.9165.3.us, %bb.e ], [ %.sroa.9165.18.us, %bb.j ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 8
  br i1 %exitcond.not.i.us, label %bb.k, label %bb.e, !llvm.loop !48

bb.k:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %i.io = shufflevector <16 x i32> %i.gm, <16 x i32> %i.go, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ip = shufflevector <16 x i32> %i.gn, <16 x i32> %i.gp, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.iq = shufflevector <16 x i32> %i.io, <16 x i32> %i.ip, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ir = shufflevector <16 x i32> %i.gt, <16 x i32> %i.gv, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.is = shufflevector <16 x i32> %i.gu, <16 x i32> %i.gw, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.it = shufflevector <16 x i32> %i.ir, <16 x i32> %i.is, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  store <16 x i32> %i.iq, ptr %i.b, align 16, !tbaa !23
  %i.iu = call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> splat (i32 1), <16 x i32> %i.iq)
  %i.iv = add <16 x i32> %i.iu, splat (i32 -1)
  %i.iw = and <16 x i32> %i.iv, %i.it
  store <16 x i32> %i.iw, ptr %i.a, align 16, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us, %bb.k
  %.sroa.62.4.us = phi i32 [ %.sroa.62.3.us, %bb.k ], [ %.sroa.62.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.47.4.us = phi i32 [ %.sroa.47.3.us, %bb.k ], [ %.sroa.47.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.37.4.us = phi i32 [ %.sroa.37.3.us, %bb.k ], [ %.sroa.37.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.9165.5.us = phi i32 [ %.sroa.9165.4.us, %bb.k ], [ %.sroa.9165.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %indvars.iv.1.i.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.1.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %i.ix = shl nuw nsw i64 %indvars.iv.1.i.us, 1   ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !9  ; 2 uses
  %i.ja = or disjoint i64 %i.ix, 1                ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !9
  %i.jd = add nsw i32 %i.jc, %i.iz                ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %bb.l
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ja
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jh = zext i32 %i.jg to i64
  %i.ji = zext nneg i32 %i.iz to i64
  %i.jj = shl i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ix
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !9
  %i.jm = zext i32 %i.jl to i64
  %i.jn = or i64 %i.jj, %i.jm
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.1.i.us
  %.sroa.62.14.us = phi i32 [ %.sroa.62.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.62.15.us, %bb.q ]
  %.sroa.47.14.us = phi i32 [ %.sroa.47.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.47.15.us, %bb.q ] ; 3 uses
  %.sroa.37.14.us = phi i32 [ %.sroa.37.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.37.15.us, %bb.q ] ; 3 uses
  %.sroa.9165.15.us = phi i32 [ %.sroa.9165.5.us, %.lr.ph.i.1.i.us ], [ %.sroa.9165.16.us, %bb.q ] ; 4 uses
  %.032.i.1.i.us = phi i32 [ %i.jd, %.lr.ph.i.1.i.us ], [ %i.ka, %bb.q ] ; 2 uses
  %.02731.i.1.i.us = phi i64 [ %i.jn, %.lr.ph.i.1.i.us ], [ %i.jz, %bb.q ] ; 2 uses
  %.not.i.1.i.us = icmp ult i32 %.sroa.9165.15.us, 17477
  br i1 %.not.i.1.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jo = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !57
  %i.jq = load ptr, ptr %i.jp, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 448, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jr = sub nuw nsw i32 %.sroa.37.14.us, %.sroa.47.14.us
  %..0.i.1.i.us = call i32 @llvm.smin.i32(i32 %i.jr, i32 %.032.i.1.i.us) ; 4 uses
  %notmask.i.1.i.us = shl nsw i32 -1, %..0.i.1.i.us
  %i.js = xor i32 %notmask.i.1.i.us, -1
  %i.jt = trunc i64 %.02731.i.1.i.us to i32
  %i.ju = and i32 %i.js, %i.jt
  %i.jv = shl nuw nsw i32 %i.ju, %.sroa.47.14.us
  %i.jw = or i32 %i.jv, %.sroa.62.14.us           ; 3 uses
  %i.jx = add nuw nsw i32 %..0.i.1.i.us, %.sroa.47.14.us ; 2 uses
  %i.jy = zext nneg i32 %..0.i.1.i.us to i64
  %i.jz = lshr i64 %.02731.i.1.i.us, %i.jy
  %i.ka = sub nsw i32 %.032.i.1.i.us, %..0.i.1.i.us ; 2 uses
  %.not30.i.1.i.us = icmp slt i32 %i.jx, %.sroa.37.14.us
  br i1 %.not30.i.1.i.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kb = trunc i32 %i.jw to i8
  %i.kc = add nuw i32 %.sroa.9165.15.us, 1
  %i.kd = zext i32 %.sroa.9165.15.us to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.kd
  store i8 %i.kb, ptr %i.ke, align 1, !tbaa !23
  %i.kf = icmp eq i32 %i.jw, 255
  %i.kg = select i1 %i.kf, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_0
