inline.NumInlined: 93
inline.NumDeleted: 15
begin_hunk_0_@_ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ao = or i32 %i.an, 4096
  store ptr @_ZN12duckdb_minizL26tdefl_output_buffer_putterEPKviPv, ptr %i.e, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %7, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.as = lshr i32 %i.an, 14
  %.lobit.i = and i32 %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %.lobit.i, ptr %i.at, align 4, !tbaa !33
  %i.au = and i32 %i.an, 4095                     ; 2 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = trunc nuw nsw i32 %i.av to i16
  %i.ax = trunc nuw nsw i32 %i.au to i16
  %.lhs.trunc51.i = add nuw nsw i16 %i.aw, 2
  %.lhs.trunc.i = add nuw nsw i16 %i.ax, 2
  %i.ay = udiv i16 %.lhs.trunc51.i, 3
  %i.az = udiv i16 %.lhs.trunc.i, 3
  %i.ba = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %i.ay, i64 1
  %i.bc = add nuw nsw <2 x i16> %i.bb, splat (i16 1)
  %i.bd = zext nneg <2 x i16> %i.bc to <2 x i32>
  store <2 x i32> %i.bd, ptr %i.ar, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 168618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65536) %i.be, i8 0, i64 65536, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 37546
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 37547
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 8, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 234154 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 0, ptr %i.bp, align 4, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  store i32 0, ptr %i.bq, align 4, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.br, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 0, ptr %i.bs, align 4, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.bt, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bu, i8 0, i64 36, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 33226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(640) %i.bw, i8 0, i64 640, i1 false)
  %i.bx = icmp sgt i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33049) %i.bv, i8 0, i64 33049, i1 false)
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  %.not61 = icmp eq i32 %6, 0
  %i.by = sext i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.051112 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8, !tbaa !50
  %i.bz = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = xor i32 %.051112, -1
  %i.cb = add nsw i32 %2, %i.ca
  %i.cc = select i1 %.not61, i32 %.051112, i32 %i.cb
  %i.cd = mul nsw i32 %i.cc, %i.f
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.by, ptr %i.b, align 8, !tbaa !50
  %i.cg = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = add nuw nsw i32 %.051112, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.g, %_ZN12duckdb_miniz10tdefl_initEPNS_16tdefl_compressorEPFiPKviPvES4_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !50
  %i.ci = call noundef i32 @_ZN12duckdb_miniz14tdefl_compressEPNS_16tdefl_compressorEPKvPmPvS4_NS_11tdefl_flushE(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not59 = icmp eq i32 %i.ci, 1
  br i1 %.not59, label %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.e) #27
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !198
  call void @free(ptr noundef %i.cj) #27
  br label %bb.m

_ZN12duckdb_miniz8mz_crc32EmPKhm.exit:            ; preds = %._crit_edge
  %i.ck = load i64, ptr %7, align 8, !tbaa !197   ; 4 uses
  %i.cl = add i64 %i.ck, -41                      ; 5 uses
  store i64 %i.cl, ptr %4, align 8, !tbaa !50
  %i.cm = lshr i32 %1, 8
  %i.cn = trunc i32 %i.cm to i8                   ; 2 uses
  %i.co = trunc i32 %1 to i8
  %i.cp = lshr i32 %2, 8                          ; 2 uses
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = trunc i32 %2 to i8
  %i.cs = sext i32 %3 to i64
  %i.ct = getelementptr inbounds i8, ptr @_ZZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmjiE5chans, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7   ; 2 uses
  %i.cv = lshr i64 %i.cl, 24
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = lshr i64 %i.cl, 16
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = lshr i64 %i.cl, 8
  %i.da = trunc i64 %i.cz to i8
  %i.db = trunc i64 %i.cl to i8
  %.narrow30.i.1 = xor i8 %i.cn, -60
  %i.dc = zext i8 %.narrow30.i.1 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = xor i32 %i.de, 7710499                  ; 2 uses
  %i.dg = lshr i32 %i.df, 8
  %.narrow32.i.1171 = xor i32 %1, %i.df
  %i.dh = and i32 %.narrow32.i.1171, 255
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = xor i32 %i.dg, %i.dk                    ; 2 uses
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = lshr i32 %i.dl, 8
  %i.dr = xor i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 8
  %i.dt = and i32 %i.dr, 255
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = xor i32 %i.ds, %i.dw                    ; 2 uses
  %i.dy = lshr i32 %i.dx, 8
  %.narrow30.i.2172 = xor i32 %i.cp, %i.dx
  %i.dz = and i32 %.narrow30.i.2172, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = xor i32 %i.dy, %i.ec                    ; 2 uses
  %i.ee = lshr i32 %i.ed, 8
  %.narrow32.i.2173 = xor i32 %2, %i.ed
  %i.ef = and i32 %.narrow32.i.2173, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = xor i32 %i.ee, %i.ei                    ; 2 uses
  %i.ek = and i32 %i.ej, 255
  %i.el = xor i32 %i.ek, 8
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = lshr i32 %i.ej, 8
  %i.eq = xor i32 %i.eo, %i.ep                    ; 2 uses
  %i.er = lshr i32 %i.eq, 8
  %.tr.i.3 = trunc i32 %i.eq to i8
  %.narrow28.i.3 = xor i8 %i.cu, %.tr.i.3
  %i.es = zext i8 %.narrow28.i.3 to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = xor i32 %i.er, %i.eu                    ; 2 uses
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = and i32 %i.ev, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = xor i32 %i.ew, %i.fa                    ; 2 uses
  %i.fc = lshr i32 %i.fb, 8
  %i.fd = and i32 %i.fb, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = xor i32 %i.fc, %i.fg                    ; 2 uses
  %i.fi = and i32 %i.fh, 255
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = lshr i32 %i.fh, 8
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = xor i32 %i.fn, -1                       ; 4 uses
  %i.fp = lshr i32 %i.fo, 24
  %i.fq = trunc nuw i32 %i.fp to i8
  %i.fr = lshr i32 %i.fo, 16
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = lshr i32 %i.fo, 8
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = trunc i32 %i.fo to i8
  %i.fw = load ptr, ptr %i.o, align 8, !tbaa !198 ; 24 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.fw, ptr noundef nonnull align 16 dereferenceable(12) @__const._ZN12duckdb_miniz42tdefl_write_image_to_png_file_in_memory_exEPKviiiPmji.pnghdr, i64 12, i1 false)
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store <6 x i8> <i8 73, i8 72, i8 68, i8 82, i8 0, i8 0>, ptr %.sroa.4.0..sroa_idx.a, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 18
  store i8 %i.cn, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 19
  store i8 %i.co, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 21
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 22
  store i8 %i.cq, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 23
  store i8 %i.cr, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i8 8, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 25
  store i8 %i.cu, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 26
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 27
  store i8 0, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  store i8 0, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 29
  store i8 %i.fq, ptr %.sroa.26.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 30
  store i8 %i.fs, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 31
  store i8 %i.fu, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store i8 %i.fv, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 33
  store i8 %i.cw, ptr %.sroa.30.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 34
  store i8 %i.cy, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 35
  store i8 %i.da, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 36
  store i8 %i.db, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 37
  store i32 1413563465, ptr %.sroa.34.0..sroa_idx, align 1
  %i.fx = add i64 %i.ck, 16                       ; 3 uses
  %i.fy = load i64, ptr %i.m, align 8, !tbaa !199 ; 2 uses
  %i.fz = icmp ugt i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit
  %i.ga = load i32, ptr %i.g, align 8, !tbaa !195
  %.not.i70 = icmp eq i32 %i.ga, 0
  br i1 %.not.i70, label %bb.k, label %.preheader.i71

.preheader.i71:                                   ; preds = %bb.i, %.preheader.i71
  %.026.i72 = phi i64 [ %i.gc, %.preheader.i71 ], [ %i.fy, %bb.i ]
  %i.gb = shl i64 %.026.i72, 1
  %i.gc = call i64 @llvm.umax.i64(i64 %i.gb, i64 128) ; 4 uses
  %i.gd = icmp ugt i64 %i.fx, %i.gc
  br i1 %i.gd, label %.preheader.i71, label %bb.j, !llvm.loop !200

bb.j:                                             ; preds = %.preheader.i71
  %i.ge = call ptr @realloc(ptr noundef nonnull %i.fw, i64 noundef %i.gc) #29 ; 3 uses
  %.not31.i73 = icmp eq ptr %i.ge, null
  br i1 %.not31.i73, label %bb.k, label %.critedge.i74

.critedge.i74:                                    ; preds = %bb.j
  store ptr %i.ge, ptr %i.o, align 8, !tbaa !198
  store i64 %i.gc, ptr %i.m, align 8, !tbaa !199
  %.pre32.i75 = load i64, ptr %7, align 8, !tbaa !197
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 0, ptr %4, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %i.e) #27
  %i.gf = load ptr, ptr %i.o, align 8, !tbaa !198
  call void @free(ptr noundef %i.gf) #27
  br label %bb.m

bb.l:                                             ; preds = %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit, %.critedge.i74
  %i.gg = phi i64 [ %.pre32.i75, %.critedge.i74 ], [ %i.ck, %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit ]
  %i.gh = phi ptr [ %i.ge, %.critedge.i74 ], [ %i.fw, %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gi, ptr noundef nonnull align 1 dereferenceable(16) @.str.11, i64 16, i1 false)
  store i64 %i.fx, ptr %7, align 8, !tbaa !197
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !198 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 37 ; 2 uses
  %i.gl = load i64, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.gm = add i64 %i.gl, 4                        ; 2 uses
  %i.gn = icmp ult i64 %i.gl, -4
  br i1 %i.gn, label %.lr.ph.i88, label %.preheader.i77

.preheader.i77:                                   ; preds = %.lr.ph.i88, %bb.l
  %.025.lcssa.i = phi i64 [ %i.gm, %bb.l ], [ %i.hz, %.lr.ph.i88 ] ; 5 uses
  %.023.lcssa.i = phi i32 [ -1, %bb.l ], [ %i.hx, %.lr.ph.i88 ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %i.gk, %bb.l ], [ %i.hy, %.lr.ph.i88 ] ; 3 uses
  %.not38.i78 = icmp eq i64 %.025.lcssa.i, 0
  br i1 %.not38.i78, label %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100, label %.lr.ph42.i79.preheader

.lr.ph42.i79.preheader:                           ; preds = %.preheader.i77
  %xtraiter = and i64 %.025.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i79.prol.loopexit, label %.lr.ph42.i79.prol

.lr.ph42.i79.prol:                                ; preds = %.lr.ph42.i79.preheader
  %i.go = lshr i32 %.023.lcssa.i, 8
  %i.gp = load i8, ptr %.0.lcssa.i, align 1, !tbaa !7
  %.124.tr.i83.prol = trunc i32 %.023.lcssa.i to i8
  %.narrow.i84.prol = xor i8 %i.gp, %.124.tr.i83.prol
  %i.gq = zext i8 %.narrow.i84.prol to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = xor i32 %i.gs, %i.go                    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.gv = add nsw i64 %.025.lcssa.i, -1
  br label %.lr.ph42.i79.prol.loopexit

.lr.ph42.i79.prol.loopexit:                       ; preds = %.lr.ph42.i79.prol, %.lr.ph42.i79.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph42.i79.preheader ], [ %i.gt, %.lr.ph42.i79.prol ]
  %.141.i80.unr = phi ptr [ %.0.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.gu, %.lr.ph42.i79.prol ]
  %.12440.i81.unr = phi i32 [ %.023.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.gt, %.lr.ph42.i79.prol ]
  %.12639.i82.unr = phi i64 [ %.025.lcssa.i, %.lr.ph42.i79.preheader ], [ %i.gv, %.lr.ph42.i79.prol ]
  %i.gw = icmp eq i64 %.025.lcssa.i, 1
  br i1 %i.gw, label %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100, label %.lr.ph42.i79

.lr.ph.i88:                                       ; preds = %bb.l, %.lr.ph.i88
  %.035.i89 = phi ptr [ %i.hy, %.lr.ph.i88 ], [ %i.gk, %bb.l ] ; 5 uses
  %.02334.i90 = phi i32 [ %i.hx, %.lr.ph.i88 ], [ -1, %bb.l ] ; 2 uses
  %.02533.i91 = phi i64 [ %i.hz, %.lr.ph.i88 ], [ %i.gm, %bb.l ]
  %i.gx = lshr i32 %.02334.i90, 8
  %i.gy = load i8, ptr %.035.i89, align 1, !tbaa !7
  %.023.tr.i92 = trunc i32 %.02334.i90 to i8
  %.narrow27.i93 = xor i8 %i.gy, %.023.tr.i92
  %i.gz = zext i8 %.narrow27.i93 to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hc = xor i32 %i.hb, %i.gx                    ; 2 uses
  %i.hd = lshr i32 %i.hc, 8
  %i.he = getelementptr inbounds nuw i8, ptr %.035.i89, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !7
  %.tr.i94 = trunc i32 %i.hc to i8
  %.narrow28.i95 = xor i8 %i.hf, %.tr.i94
  %i.hg = zext i8 %.narrow28.i95 to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = xor i32 %i.hd, %i.hi                    ; 2 uses
  %i.hk = lshr i32 %i.hj, 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.035.i89, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !7
  %.tr29.i96 = trunc i32 %i.hj to i8
  %.narrow30.i97 = xor i8 %i.hm, %.tr29.i96
  %i.hn = zext i8 %.narrow30.i97 to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = xor i32 %i.hk, %i.hp                    ; 2 uses
  %i.hr = lshr i32 %i.hq, 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.035.i89, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !7
  %.tr31.i98 = trunc i32 %i.hq to i8
  %.narrow32.i99 = xor i8 %i.ht, %.tr31.i98
  %i.hu = zext i8 %.narrow32.i99 to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.hx = xor i32 %i.hr, %i.hw                    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.035.i89, i64 4 ; 2 uses
  %i.hz = add i64 %.02533.i91, -4                 ; 3 uses
  %i.ia = icmp ugt i64 %i.hz, 3
  br i1 %i.ia, label %.lr.ph.i88, label %.preheader.i77, !llvm.loop !14

.lr.ph42.i79:                                     ; preds = %.lr.ph42.i79.prol.loopexit, %.lr.ph42.i79
  %.141.i80 = phi ptr [ %i.io, %.lr.ph42.i79 ], [ %.141.i80.unr, %.lr.ph42.i79.prol.loopexit ] ; 3 uses
  %.12440.i81 = phi i32 [ %i.in, %.lr.ph42.i79 ], [ %.12440.i81.unr, %.lr.ph42.i79.prol.loopexit ] ; 2 uses
  %.12639.i82 = phi i64 [ %i.ip, %.lr.ph42.i79 ], [ %.12639.i82.unr, %.lr.ph42.i79.prol.loopexit ]
  %i.ib = lshr i32 %.12440.i81, 8
  %i.ic = load i8, ptr %.141.i80, align 1, !tbaa !7
  %.124.tr.i83 = trunc i32 %.12440.i81 to i8
  %.narrow.i84 = xor i8 %i.ic, %.124.tr.i83
  %i.id = zext i8 %.narrow.i84 to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ig = xor i32 %i.if, %i.ib                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.141.i80, i64 1
  %i.ii = lshr i32 %i.ig, 8
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !7
  %.124.tr.i83.1 = trunc i32 %i.ig to i8
  %.narrow.i84.1 = xor i8 %i.ij, %.124.tr.i83.1
  %i.ik = zext i8 %.narrow.i84.1 to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz8mz_crc32EmPKhmE11s_crc_table, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = xor i32 %i.im, %i.ii                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.141.i80, i64 2
  %i.ip = add nsw i64 %.12639.i82, -2             ; 2 uses
  %.not.i85.1 = icmp eq i64 %i.ip, 0
  br i1 %.not.i85.1, label %_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100, label %.lr.ph42.i79, !llvm.loop !203

_ZN12duckdb_miniz8mz_crc32EmPKhm.exit100:         ; preds = %.lr.ph42.i79.prol.loopexit, %.lr.ph42.i79, %.preheader.i77
  %.124.lcssa.i87 = phi i32 [ %.023.lcssa.i, %.preheader.i77 ], [ %.lcssa.unr, %.lr.ph42.i79.prol.loopexit ], [ %i.in, %.lr.ph42.i79 ]
  %i.iq = xor i32 %.124.lcssa.i87, -1             ; 4 uses
  %i.ir = lshr i32 %i.iq, 24
  %i.is = trunc nuw i32 %i.ir to i8
  %i.it = getelementptr inbounds i8, ptr %i.gj, i64 %i.ck
  store i8 %i.is, ptr %i.it, align 1, !tbaa !7
  %i.iu = lshr i32 %i.iq, 16
  %i.iv = trunc i32 %i.iu to i8
end_hunk_0
