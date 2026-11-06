Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@tdefl_write_image_to_png_file_in_memory_ex:bb.a
  store i32 %i.ai, ptr %i.d, align 4
  %.not58 = icmp eq i32 %i.ai, 0
  %i.aj = trunc i32 %i.ai to i8
  br i1 %.not58, label %tdefl_init.exit, label %bb.d

tdefl_init.exit:                                  ; preds = %tdefl_output_buffer_putter.exit
  %i.ak = tail call i32 @llvm.umin.i32(i32 %5, i32 10)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @tdefl_write_image_to_png_file_in_memory_ex.s_tdefl_png_num_probes, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = or i32 %i.an, 4096
  store ptr @tdefl_output_buffer_putter, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %7, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.ao, ptr %i.aq, align 8
  %i.ar = and i32 %i.an, 4095                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.at = lshr i32 %i.an, 14
  %.lobit.i = and i32 %i.at, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.au, align 4
  %i.av = lshr i32 %i.ar, 2
  %i.aw = trunc nuw nsw i32 %i.ar to i16
  %i.ax = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.ay = trunc nuw nsw i32 %i.av to i16
  %i.az = insertelement <2 x i16> %i.ax, i16 %i.ay, i64 1
  %i.ba = add nuw nsw <2 x i16> %i.az, splat (i16 2)
  %i.bb = udiv <2 x i16> %i.ba, splat (i16 3)
  %i.bc = add nuw nsw <2 x i16> %i.bb, splat (i16 1)
  %i.bd = zext nneg <2 x i16> %i.bc to <2 x i32>
  store <2 x i32> %i.bd, ptr %i.as, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.be, i8 0, i64 65536, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 37546 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.bh, ptr %i.bk, align 8
  store i8 0, ptr %i.bh, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bm, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bu, i8 0, i64 36, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.bw, i8 0, i64 640, i1 false)
  %i.bx = icmp sgt i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33049) %i.bv, i8 0, i64 33049, i1 false)
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tdefl_init.exit
  %.not61 = icmp eq i32 %6, 0
  %i.by = sext i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.051112 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.bz = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = xor i32 %.051112, -1
  %i.cb = add nsw i32 %2, %i.ca
  %i.cc = select i1 %.not61, i32 %.051112, i32 %i.cb
  %i.cd = mul nsw i32 %i.cc, %i.f
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.by, ptr %i.b, align 8
  %i.cg = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = add nuw nsw i32 %.051112, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %tdefl_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.ci = call i32 @tdefl_compress(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not59 = icmp eq i32 %i.ci, 1
  br i1 %.not59, label %mz_crc32.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.e) #36
  %i.cj = load ptr, ptr %i.o, align 8
  call void @free(ptr noundef %i.cj) #36
  br label %bb.m

mz_crc32.exit:                                    ; preds = %._crit_edge
  %i.ck = load i64, ptr %7, align 8               ; 4 uses
  %i.cl = add i64 %i.ck, -41                      ; 5 uses
  store i64 %i.cl, ptr %4, align 8
  %i.cm = lshr i32 %1, 8
  %i.cn = trunc i32 %i.cm to i8                   ; 2 uses
  %i.co = trunc i32 %1 to i8
  %i.cp = lshr i32 %2, 8                          ; 2 uses
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = trunc i32 %2 to i8
  %i.cs = sext i32 %3 to i64
  %i.ct = getelementptr inbounds i8, ptr @tdefl_write_image_to_png_file_in_memory_ex.chans, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = lshr i64 %i.cl, 24
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = lshr i64 %i.cl, 16
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = lshr i64 %i.cl, 8
  %i.da = trunc i64 %i.cz to i8
  %i.db = trunc i64 %i.cl to i8
  %.narrow30.i.1 = xor i8 %i.cn, -60
  %i.dc = zext i8 %.narrow30.i.1 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = xor i32 %i.de, 7710499                  ; 2 uses
  %i.dg = lshr i32 %i.df, 8
  %.narrow32.i.1171 = xor i32 %1, %i.df
  %i.dh = and i32 %.narrow32.i.1171, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = xor i32 %i.dg, %i.dk                    ; 2 uses
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dl, 8
  %i.dr = xor i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 8
  %i.dt = and i32 %i.dr, 255
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = xor i32 %i.ds, %i.dw                    ; 2 uses
  %i.dy = lshr i32 %i.dx, 8
  %.narrow30.i.2172 = xor i32 %i.cp, %i.dx
  %i.dz = and i32 %.narrow30.i.2172, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = xor i32 %i.dy, %i.ec                    ; 2 uses
  %i.ee = lshr i32 %i.ed, 8
  %.narrow32.i.2173 = xor i32 %2, %i.ed
  %i.ef = and i32 %.narrow32.i.2173, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = xor i32 %i.ee, %i.ei                    ; 2 uses
  %i.ek = and i32 %i.ej, 255
  %i.el = xor i32 %i.ek, 8
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = lshr i32 %i.ej, 8
  %i.eq = xor i32 %i.eo, %i.ep                    ; 2 uses
  %i.er = lshr i32 %i.eq, 8
  %.tr.i.3 = trunc i32 %i.eq to i8
  %.narrow28.i.3 = xor i8 %i.cu, %.tr.i.3
  %i.es = zext i8 %.narrow28.i.3 to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = xor i32 %i.er, %i.eu                    ; 2 uses
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = and i32 %i.ev, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = xor i32 %i.ew, %i.fa                    ; 2 uses
  %i.fc = lshr i32 %i.fb, 8
  %i.fd = and i32 %i.fb, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = xor i32 %i.fc, %i.fg                    ; 2 uses
  %i.fi = and i32 %i.fh, 255
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = lshr i32 %i.fh, 8
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = xor i32 %i.fn, -1
  %i.fp = load ptr, ptr %i.o, align 8             ; 23 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.fp, ptr noundef nonnull align 16 dereferenceable(12) @__const.tdefl_write_image_to_png_file_in_memory_ex.pnghdr, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store <4 x i8> <i8 73, i8 72, i8 68, i8 82>, ptr %.sroa.9.0..sroa_idx.a, align 1
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i8 0, ptr %.sroa.10.0..sroa_idx.a, align 1
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 17
  store i8 0, ptr %.sroa.12.0..sroa_idx.a, align 1
  %.sroa.14.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 18
  store i8 %i.cn, ptr %.sroa.14.0..sroa_idx.a, align 1
  %.sroa.15.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 19
  store i8 %i.co, ptr %.sroa.15.0..sroa_idx.a, align 1
  %.sroa.16.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store i8 0, ptr %.sroa.16.0..sroa_idx.a, align 1
  %.sroa.18.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 21
  store i8 0, ptr %.sroa.18.0..sroa_idx.a, align 1
  %.sroa.20.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 22
  store i8 %i.cq, ptr %.sroa.20.0..sroa_idx.a, align 1
  %.sroa.21.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 23
  store i8 %i.cr, ptr %.sroa.21.0..sroa_idx.a, align 1
  %.sroa.23.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i8 8, ptr %.sroa.23.0..sroa_idx.a, align 1
  %.sroa.24.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  store i8 %i.cu, ptr %.sroa.24.0..sroa_idx.a, align 1
  %.sroa.25.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 26
  store i8 0, ptr %.sroa.25.0..sroa_idx.a, align 1
  %.sroa.26.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fp, i64 27
  store i8 0, ptr %.sroa.26.0..sroa_idx.a, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  store i8 0, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 29
  %8 = call i32 @llvm.bswap.i32(i32 %i.fo)
  store i32 %8, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 33
  store i8 %i.cw, ptr %.sroa.30.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 34
  store i8 %i.cy, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 35
  store i8 %i.da, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  store i8 %i.db, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 37
  store i32 1413563465, ptr %.sroa.34.0..sroa_idx, align 1
  %i.fq = add i64 %i.ck, 16                       ; 3 uses
  %i.fr = load i64, ptr %i.m, align 8             ; 2 uses
  %i.fs = icmp ugt i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.i, label %bb.l

bb.i:                                             ; preds = %mz_crc32.exit
  %i.ft = load i32, ptr %i.g, align 8
  %.not.i70 = icmp eq i32 %i.ft, 0
  br i1 %.not.i70, label %bb.k, label %.preheader.i71

.preheader.i71:                                   ; preds = %bb.i, %.preheader.i71
  %.025.i72 = phi i64 [ %i.fv, %.preheader.i71 ], [ %i.fr, %bb.i ]
  %i.fu = shl i64 %.025.i72, 1
  %i.fv = call i64 @llvm.umax.i64(i64 %i.fu, i64 128) ; 4 uses
  %i.fw = icmp ugt i64 %i.fq, %i.fv
  br i1 %i.fw, label %.preheader.i71, label %bb.j

bb.j:                                             ; preds = %.preheader.i71
  %i.fx = call ptr @realloc(ptr noundef nonnull %i.fp, i64 noundef %i.fv) #38 ; 3 uses
  %.not31.i73 = icmp eq ptr %i.fx, null
  br i1 %.not31.i73, label %bb.k, label %.critedge.i74

.critedge.i74:                                    ; preds = %bb.j
  store ptr %i.fx, ptr %i.o, align 8
  store i64 %i.fv, ptr %i.m, align 8
  %.pre32.i75 = load i64, ptr %7, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 0, ptr %4, align 8
  call void @free(ptr noundef nonnull %i.e) #36
  %i.fy = load ptr, ptr %i.o, align 8
  call void @free(ptr noundef %i.fy) #36
  br label %bb.m

bb.l:                                             ; preds = %mz_crc32.exit, %.critedge.i74
  %i.fz = phi i64 [ %.pre32.i75, %.critedge.i74 ], [ %i.ck, %mz_crc32.exit ]
  %i.ga = phi ptr [ %i.fx, %.critedge.i74 ], [ %i.fp, %mz_crc32.exit ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gb, ptr noundef nonnull align 1 dereferenceable(16) @.str.11, i64 16, i1 false)
  store i64 %i.fq, ptr %7, align 8
  %i.gc = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 37 ; 2 uses
  %i.ge = load i64, ptr %4, align 8               ; 2 uses
  %i.gf = add i64 %i.ge, 4                        ; 2 uses
  %i.gg = icmp ult i64 %i.ge, -4
  br i1 %i.gg, label %.lr.ph.i88, label %.preheader.i77

.preheader.i77:                                   ; preds = %.lr.ph.i88, %bb.l
  %.025.lcssa.i = phi i64 [ %i.gf, %bb.l ], [ %i.hs, %.lr.ph.i88 ] ; 5 uses
  %.023.lcssa.i = phi i32 [ -1, %bb.l ], [ %i.hq, %.lr.ph.i88 ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %i.gd, %bb.l ], [ %i.hr, %.lr.ph.i88 ] ; 3 uses
  %.not38.i78 = icmp eq i64 %.025.lcssa.i, 0
  br i1 %.not38.i78, label %mz_crc32.exit100, label %.lr.ph42.i79.preheader

.lr.ph42.i79.preheader:                           ; preds = %.preheader.i77
  %xtraiter = and i64 %.025.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i79.prol.loopexit, label %.lr.ph42.i79.prol

.lr.ph42.i79.prol:                                ; preds = %.lr.ph42.i79.preheader
  %i.gh = lshr i32 %.023.lcssa.i, 8
  %i.gi = load i8, ptr %.0.lcssa.i, align 1
  %.124.tr.i83.prol = trunc i32 %.023.lcssa.i to i8
  %.narrow.i84.prol = xor i8 %i.gi, %.124.tr.i83.prol
  %i.gj = zext i8 %.narrow.i84.prol to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = xor i32 %i.gl, %i.gh                    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.go = add nsw i64 %.025.lcssa.i, -1
  br label %.lr.ph42.i79.prol.loopexit

.lr.ph42.i79.prol.loopexit:                       ; preds = %.lr.ph42.i79.prol, %.lr.ph42.i79.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph42.i79.preheader ], [ %i.gm, %.lr.ph42.i79.prol ]
  %.141.i80.unr = phi ptr [ %.0.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.gn, %.lr.ph42.i79.prol ]
  %.12440.i81.unr = phi i32 [ %.023.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.gm, %.lr.ph42.i79.prol ]
  %.12639.i82.unr = phi i64 [ %.025.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.go, %.lr.ph42.i79.prol ]
  %i.gp = icmp eq i64 %.025.lcssa.i, 1
  br i1 %i.gp, label %mz_crc32.exit100, label %.lr.ph42.i79

.lr.ph.i88:                                       ; preds = %bb.l, %.lr.ph.i88
  %.035.i89 = phi ptr [ %i.hr, %.lr.ph.i88 ], [ %i.gd, %bb.l ] ; 5 uses
  %.02334.i90 = phi i32 [ %i.hq, %.lr.ph.i88 ], [ -1, %bb.l ] ; 2 uses
  %.02533.i91 = phi i64 [ %i.hs, %.lr.ph.i88 ], [ %i.gf, %bb.l ]
  %i.gq = lshr i32 %.02334.i90, 8
  %i.gr = load i8, ptr %.035.i89, align 1
  %.023.tr.i92 = trunc i32 %.02334.i90 to i8
  %.narrow27.i93 = xor i8 %i.gr, %.023.tr.i92
  %i.gs = zext i8 %.narrow27.i93 to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = xor i32 %i.gu, %i.gq                    ; 2 uses
  %i.gw = lshr i32 %i.gv, 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.035.i89, i64 1
  %i.gy = load i8, ptr %i.gx, align 1
  %.tr.i94 = trunc i32 %i.gv to i8
  %.narrow28.i95 = xor i8 %i.gy, %.tr.i94
  %i.gz = zext i8 %.narrow28.i95 to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = xor i32 %i.gw, %i.hb                    ; 2 uses
  %i.hd = lshr i32 %i.hc, 8
  %i.he = getelementptr inbounds nuw i8, ptr %.035.i89, i64 2
  %i.hf = load i8, ptr %i.he, align 1
  %.tr29.i96 = trunc i32 %i.hc to i8
  %.narrow30.i97 = xor i8 %i.hf, %.tr29.i96
  %i.hg = zext i8 %.narrow30.i97 to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = xor i32 %i.hd, %i.hi                    ; 2 uses
  %i.hk = lshr i32 %i.hj, 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.035.i89, i64 3
  %i.hm = load i8, ptr %i.hl, align 1
  %.tr31.i98 = trunc i32 %i.hj to i8
  %.narrow32.i99 = xor i8 %i.hm, %.tr31.i98
  %i.hn = zext i8 %.narrow32.i99 to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = xor i32 %i.hk, %i.hp                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.035.i89, i64 4 ; 2 uses
  %i.hs = add i64 %.02533.i91, -4                 ; 3 uses
  %i.ht = icmp ugt i64 %i.hs, 3
  br i1 %i.ht, label %.lr.ph.i88, label %.preheader.i77

.lr.ph42.i79:                                     ; preds = %.lr.ph42.i79.prol.loopexit, %.lr.ph42.i79
  %.141.i80 = phi ptr [ %i.ih, %.lr.ph42.i79 ], [ %.141.i80.unr, %.lr.ph42.i79.prol.loopexit ] ; 3 uses
  %.12440.i81 = phi i32 [ %i.ig, %.lr.ph42.i79 ], [ %.12440.i81.unr, %.lr.ph42.i79.prol.loopexit ] ; 2 uses
  %.12639.i82 = phi i64 [ %i.ii, %.lr.ph42.i79 ], [ %.12639.i82.unr, %.lr.ph42.i79.prol.loopexit ]
  %i.hu = lshr i32 %.12440.i81, 8
  %i.hv = load i8, ptr %.141.i80, align 1
  %.124.tr.i83 = trunc i32 %.12440.i81 to i8
  %.narrow.i84 = xor i8 %i.hv, %.124.tr.i83
  %i.hw = zext i8 %.narrow.i84 to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = xor i32 %i.hy, %i.hu                    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.141.i80, i64 1
  %i.ib = lshr i32 %i.hz, 8
  %i.ic = load i8, ptr %i.ia, align 1
  %.124.tr.i83.1 = trunc i32 %i.hz to i8
  %.narrow.i84.1 = xor i8 %i.ic, %.124.tr.i83.1
  %i.id = zext i8 %.narrow.i84.1 to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @mz_crc32.s_crc_table, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = xor i32 %i.if, %i.ib                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.141.i80, i64 2
  %i.ii = add nsw i64 %.12639.i82, -2             ; 2 uses
  %.not.i85.1 = icmp eq i64 %i.ii, 0
  br i1 %.not.i85.1, label %mz_crc32.exit100, label %.lr.ph42.i79

mz_crc32.exit100:                                 ; preds = %.lr.ph42.i79.prol.loopexit, %.lr.ph42.i79, %.preheader.i77
  %.124.lcssa.i87 = phi i32 [ %.023.lcssa.i, %.preheader.i77 ], [ %.lcssa.unr, %.lr.ph42.i79.prol.loopexit ], [ %i.ig, %.lr.ph42.i79 ]
  %i.ij = xor i32 %.124.lcssa.i87, -1             ; 4 uses
  %i.ik = lshr i32 %i.ij, 24
  %i.il = trunc nuw i32 %i.ik to i8
  %i.im = getelementptr inbounds i8, ptr %i.gc, i64 %i.ck
  store i8 %i.il, ptr %i.im, align 1
  %i.in = lshr i32 %i.ij, 16
  %i.io = trunc i32 %i.in to i8
  %i.ip = load ptr, ptr %i.o, align 8
  %i.iq = load i64, ptr %7, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -15
  store i8 %i.io, ptr %i.is, align 1
  %i.it = lshr i32 %i.ij, 8
  %i.iu = trunc i32 %i.it to i8
  %i.iv = load ptr, ptr %i.o, align 8
  %i.iw = load i64, ptr %7, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -14
  store i8 %i.iu, ptr %i.iy, align 1
  %i.iz = trunc i32 %i.ij to i8
  %i.ja = load ptr, ptr %i.o, align 8
  %i.jb = load i64, ptr %7, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -13
  store i8 %i.iz, ptr %i.jd, align 1
  %i.je = load i64, ptr %4, align 8
  %i.jf = add i64 %i.je, 57
  store i64 %i.jf, ptr %4, align 8
  call void @free(ptr noundef nonnull %i.e) #36
  %i.jg = load ptr, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %mz_crc32.exit100, %bb.k, %bb.h, %bb.c
  %.054 = phi ptr [ null, %bb.c ], [ null, %bb.h ], [ %i.jg, %mz_crc32.exit100 ], [ null, %bb.k ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret ptr %.054
end_hunk_0
begin_hunk_1_@zip_central_dir_delete:bb.a
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.h, label %.critedge4.split.loop.exit132

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next97, %i.h
  br i1 %i.cr, label %bb.g, label %.critedge4

.critedge4.split.loop.exit132:                    ; preds = %bb.g
  %i.cs = trunc nsw i64 %indvars.iv96 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.h, %.critedge4.split.loop.exit132
  %.4.lcssa = phi i32 [ %i.cs, %.critedge4.split.loop.exit132 ], [ %smax98, %bb.h ] ; 7 uses
  %i.ct = icmp eq i32 %.4.lcssa, %2
  br i1 %i.ct, label %.critedge4._crit_edge, label %.preheader

.preheader:                                       ; preds = %.critedge4
  %i.cu = icmp slt i32 %.4.lcssa, %2
  br i1 %i.cu, label %.lr.ph79.preheader, label %.critedge6

.lr.ph79.preheader:                               ; preds = %.preheader
  %i.cv = sext i32 %.4.lcssa to i64
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %bb.i
  %indvars.iv100 = phi i64 [ %i.cv, %.lr.ph79.preheader ], [ %indvars.iv.next101, %bb.i ] ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv100
  %i.cx = load i32, ptr %i.cw, align 4
  %.not59 = icmp eq i32 %i.cx, 0
  br i1 %.not59, label %.critedge6.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph79
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %i.h
  br i1 %exitcond103.not, label %._crit_edge.thread, label %.lr.ph79

.critedge6.loopexit:                              ; preds = %.lr.ph79
  %i.cy = trunc nsw i64 %indvars.iv100 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %i.cy, %.critedge6.loopexit ] ; 6 uses
  %i.cz = icmp slt i32 %.5.lcssa, %2
  br i1 %i.cz, label %.lr.ph85.preheader, label %._crit_edge.thread

.lr.ph85.preheader:                               ; preds = %.critedge6
  %i.da = sext i32 %.5.lcssa to i64               ; 2 uses
  %i.db = sext i32 %.4.lcssa to i64               ; 5 uses
  %i.dc = sub i32 %2, %.5.lcssa                   ; 2 uses
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %xtraiter30 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp ult i32 %i.dd, 3
  br i1 %i.de, label %.lr.ph85.epil.preheader, label %.lr.ph85.preheader.new

.lr.ph85.preheader.new:                           ; preds = %.lr.ph85.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85, %.lr.ph85.preheader.new
  %indvars.iv106 = phi i64 [ 0, %.lr.ph85.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph85 ] ; 5 uses
  %indvars.iv104 = phi i64 [ %i.da, %.lr.ph85.preheader.new ], [ %indvars.iv.next105.3, %.lr.ph85 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph85.preheader.new ], [ %niter.next.3, %.lr.ph85 ]
  %i.df = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv104
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv106
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %i.db
  store i32 %i.dh, ptr %i.dj, align 4
  %i.dk = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv104
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv106
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %i.db
  store i32 %i.dn, ptr %i.dq, align 4
  %i.dr = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv104
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv106
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.db
  store i32 %i.du, ptr %i.dx, align 4
  %i.dy = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv104
  %i.ea = getelementptr i8, ptr %i.dz, i64 12
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv106
  %i.ed = getelementptr i8, ptr %i.ec, i64 12
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.db
  store i32 %i.eb, ptr %i.ee, align 4
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %indvars.iv.next105.3 = add nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph85

._crit_edge.thread:                               ; preds = %.critedge6, %bb.i
  %.5.lcssa116.ph = phi i32 [ %2, %bb.i ], [ %.5.lcssa, %.critedge6 ]
  %i.ef = sub i32 %.05687, %.4.lcssa
  %i.eg = add i32 %i.ef, %.5.lcssa116.ph
  br label %.critedge4._crit_edge

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph85
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge, label %.lr.ph85.epil.preheader

.lr.ph85.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph85.preheader
  %indvars.iv106.epil.init = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next107.3, %._crit_edge.unr-lcssa ]
  %indvars.iv104.epil.init = phi i64 [ %i.da, %.lr.ph85.preheader ], [ %indvars.iv.next105.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph85.epil

.lr.ph85.epil:                                    ; preds = %.lr.ph85.epil, %.lr.ph85.epil.preheader
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph85.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph85.epil ] ; 2 uses
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph85.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph85.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph85.epil.preheader ], [ %epil.iter.next, %.lr.ph85.epil ]
  %i.eh = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv104.epil
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr [4 x i8], ptr %i.eh, i64 %indvars.iv106.epil
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.db
  store i32 %i.ej, ptr %i.el, align 4
  %indvars.iv.next107.epil = add nuw nsw i64 %indvars.iv106.epil, 1
  %indvars.iv.next105.epil = add nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter30
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph85.epil, !llvm.loop !340

._crit_edge:                                      ; preds = %.lr.ph85.epil, %._crit_edge.unr-lcssa
  %i.em = sub i32 %.05687, %.4.lcssa
  %i.en = add i32 %i.em, %.5.lcssa
  br label %.preheader68

.critedge4._crit_edge:                            ; preds = %.critedge4, %bb.a, %._crit_edge.thread
  %.056.lcssa = phi i32 [ %i.eg, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05687, %.critedge4 ]
  %i.eo = sub nsw i32 %2, %.056.lcssa
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.eq, ptr %i.er, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind allocsize(1) }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i64 -4038949609402917772}
!6 = !{i64 -8436513000288952623}
!7 = !{i64 -6196694832561156291}
!8 = !{i64 -8578496532287913274}
!9 = !{i64 -9169226765523255219}
!10 = !{i64 -5308649354680088027}
!11 = !{i64 -7769357823233072041}
!12 = !{i64 2273978152183001075}
!13 = !{i64 5343380454263544183}
!14 = !{i64 -3783895305091560650}
!15 = !{i64 6428505279455413519}
!16 = !{i64 -7001423163395343855}
!17 = !{i64 -5535969760642528804}
!18 = !{i64 -5852634772107783876}
!19 = !{i64 -9012524227908332322}
!20 = !{i64 345039792176358625}
!21 = !{i64 6951466598430373311}
!22 = !{i64 -8485669261717781173}
!23 = !{i64 -3701643903447935021}
!24 = !{i64 5879022243660254437}
!25 = !{i64 -4186138503548797602}
!26 = !{i64 6568408867040390909}
!27 = !{i64 8127443967415847726}
!28 = !{i64 -9105473823957744481}
!29 = !{i64 2833353738033259862}
!30 = !{i64 -6517359863163919904}
!31 = !{i64 -5831102278194952756}
!32 = !{i64 -699310908999559770}
!33 = !{i64 1675089416549825601}
!34 = !{i64 -3000926869424471535}
!35 = !{i64 -4855453018683329991}
!36 = !{i64 754493023456404614}
!37 = !{i64 1180271259397662612}
!38 = !{i64 -2278612619020207927}
!39 = !{i64 -7511572411582397863}
!40 = !{i64 7696816031475871169}
!41 = !{i64 772013253678038805}
!42 = !{i64 6841505963915407865}
!43 = !{i64 -7870607406168805394}
!44 = !{i64 -3840219842626487380}
!45 = !{i64 8343199341772418576}
!46 = !{i64 -5296092236655941823}
!47 = !{i64 4142611807937612774}
!48 = !{i64 -4387258010736661369}
!49 = !{i64 1286497831897534925}
!50 = !{i64 5857284320489804517}
!51 = !{i64 -289662162757087034}
!52 = !{i64 1025303151376343339}
!53 = !{i64 3443282643808927523}
!54 = !{i64 5756982843783509928}
!55 = !{i64 3863563648151450677}
!56 = !{i64 -6624766127477989188}
!57 = !{i64 3500154584976379048}
!58 = !{i64 -8968614413804899057}
!59 = !{i64 2895411024365320140}
!60 = !{i64 -3293023156992323029}
!61 = !{i64 -544803327911709975}
!62 = !{i64 4166056762028152728}
!63 = !{i64 7233693713431217333}
!64 = !{i64 -1799136096820414745}
!65 = !{i64 4524249929844552384}
!66 = !{i64 8464684516227938980}
!67 = !{i64 7964074637594760276}
!68 = !{i64 -7309880992809715457}
!69 = !{i64 -2982642045559457845}
!70 = !{i64 -7594513882817010303}
!71 = !{i64 550822125396350413}
!72 = !{i64 -5159209417682983716}
!73 = !{i64 -1658174616907771432}
!74 = !{i64 6321511329577940444}
!75 = !{i64 8248833637939921905}
!76 = !{i64 3511317828732772418}
!77 = !{i64 3588698617395177716}
!78 = !{i64 5146745185125867864}
!79 = !{i64 905604755707804226}
!80 = !{i64 5868075690808602545}
!81 = !{i64 6963363969179189803}
!82 = !{i64 -8741418083019541693}
!83 = !{i64 220250746752445377}
!84 = !{i64 -4525607824125212656}
!85 = !{i64 -1448005294363931622}
!86 = !{i64 7516083641100985468}
!87 = !{i64 2092450719999324323}
!88 = !{i64 -2679662676808701214}
!89 = !{i64 -6053454084608009791}
!90 = !{i64 -3051584636552292115}
!91 = !{i64 -4594869966142856}
!92 = !{i64 4164728840943107758}
!93 = !{i64 -2298237329078724555}
!94 = !{i64 3715960043982263554}
!95 = !{i64 -3761288802617013408}
!96 = !{i64 -656417843808531683}
!97 = !{i64 2167056269233688258}
!98 = !{i64 3911435320425730587}
!99 = !{i64 -4937408408148204309}
!100 = !{i64 -7265890336105263372}
!101 = !{i64 4264324161026476594}
!102 = !{i64 6862740151546075949}
!103 = !{i64 -800835400723656228}
!104 = !{i64 8253922414932663705}
!105 = !{i64 5380995480701679759}
!106 = !{i64 -5680322563245893857}
!107 = !{i64 -4699154760615014510}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !{!"llvm.loop.unswitch.partial.disable"}
!111 = !{ptr @mz_zip_reader_end_internal}
!112 = !{ptr @mz_zip_array_ensure_capacity}
!113 = !{ptr @mz_zip_writer_init_v2}
!114 = !{ptr @mz_zip_writer_end_internal}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = distinct !{!116, !108}
!117 = !{i64 -4393557745463162562}
!118 = !{i64 -254848352941580360}
!119 = !{i64 -2241584860765725483}
!120 = !{i64 -4292538474552663579}
!121 = !{i64 4912329327589317614}
!122 = !{i64 9001099370176010581}
!123 = !{i64 4667676640259614170}
!124 = !{i64 4128900370108929492}
!125 = !{i64 -4413029944689121625}
!126 = !{i64 7924185899954610143}
!127 = !{i64 2756113076331453166}
!128 = !{i64 -1267504081300492727}
!129 = !{i64 3893198822738188817}
!130 = !{i64 -5313738768147953387}
!131 = !{i64 3941732929489673920}
!132 = !{i64 8360431067215185180}
!133 = !{i64 -7442215600276470826}
!134 = !{i64 7430994513339051428}
!135 = !{ptr @mz_deflateEnd}
!136 = !{i64 -4976361560995261108}
!137 = !{ptr @mz_compress2, ptr @mz_deflateEnd}
!138 = !{i64 -5266268194956663050}
!139 = !{i64 -1238732633339030651}
!140 = !{i64 -8927767147677628146}
!141 = !{ptr @mz_inflateInit2}
!142 = !{i64 2012078881752972028}
!143 = !{i64 -6830557110624928622}
!144 = distinct !{!144, !108}
!145 = distinct !{!145, !108}
!146 = distinct !{!146, !109}
!147 = distinct !{!147, !108}
!148 = !{i64 1510123015423149822}
!149 = !{i64 7501861713699703827}
!150 = !{i64 9183996291698705736}
!151 = !{ptr @mz_inflateEnd}
end_hunk_1
