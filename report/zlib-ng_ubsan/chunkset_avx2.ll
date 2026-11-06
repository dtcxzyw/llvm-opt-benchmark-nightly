Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chunkset_avx2?download=true
inline.NumInlined: 25
inline.NumDeleted: 13
begin_hunk_0_@chunkmemset_avx2:bb.a
bb.ay:                                            ; preds = %bb.ax, %_mm_loadu_si128.exit.i
  %i.cg = icmp ult i32 %i.br, 13
  br i1 %i.cg, label %bb.ba, label %bb.az, !prof !14, !nosanitize !13

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @176, i64 %i.bt) #11, !nosanitize !13
  br label %bb.ba, !nosanitize !13

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ch = shl nuw nsw i64 %i.bt, 1
  %i.ci = add i64 %i.ch, ptrtoint (ptr @half_rem_vals to i64), !nosanitize !13 ; 2 uses
  %.not10.i = icmp ult i64 %i.ci, ptrtoint (ptr @half_rem_vals to i64), !nosanitize !13
  br i1 %.not10.i, label %bb.bb, label %bb.bc, !prof !17, !nosanitize !13

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @177, i64 ptrtoint (ptr @half_rem_vals to i64), i64 %i.ci) #11, !nosanitize !13
  br label %bb.bc, !nosanitize !13

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.0.0.extract.trunc.mask.i = and i32 %i.by, 65535
  %i.cj = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i to i64 ; 3 uses
  %i.ck = icmp ult i16 %.sroa.0.0.extract.trunc.i, 833
  br i1 %i.ck, label %bb.be, label %bb.bd, !prof !14, !nosanitize !13

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @179, i64 %i.cj) #11, !nosanitize !13
  br label %bb.be, !nosanitize !13

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.cl = add i64 %i.cj, ptrtoint (ptr @permute_table to i64), !nosanitize !13 ; 2 uses
  %.not11.i = icmp ult i64 %i.cl, ptrtoint (ptr @permute_table to i64), !nosanitize !13
  br i1 %.not11.i, label %bb.bf, label %bb.bg, !prof !17, !nosanitize !13

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @180, i64 ptrtoint (ptr @permute_table to i64), i64 %i.cl) #11, !nosanitize !13
  br label %bb.bg, !nosanitize !13

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.cm = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.cj ; 2 uses
  %i.cn = ptrtoint ptr %i.cm to i64, !nosanitize !13 ; 2 uses
  %i.co = and i64 %i.cn, 15, !nosanitize !13
  %i.cp = icmp eq i64 %i.co, 0, !nosanitize !13
  br i1 %i.cp, label %GET_HALFCHUNK_MAG.exit, label %bb.bh, !prof !14, !nosanitize !13

bb.bh:                                            ; preds = %bb.bg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @182, i64 %i.cn) #11, !nosanitize !13
  br label %GET_HALFCHUNK_MAG.exit, !nosanitize !13

GET_HALFCHUNK_MAG.exit:                           ; preds = %bb.bg, %bb.bh
  %i.cq = load <16 x i8>, ptr %i.cm, align 16, !tbaa !15
  %i.cr = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cf, <16 x i8> %i.cq)
  store <16 x i8> %i.cr, ptr %i.b, align 16, !tbaa !15
  %i.cs = icmp eq i32 %2, 16
  br i1 %i.cs, label %bb.bi, label %halfchunk2whole.exit

bb.bi:                                            ; preds = %GET_HALFCHUNK_MAG.exit
  call fastcc void @storehalfchunk(ptr noundef %0, ptr noundef %i.b)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cu = add i64 %i.c, 16, !nosanitize !13       ; 2 uses
  %i.cv = icmp ne ptr %0, null, !nosanitize !13
  %i.cw = icmp ne i64 %i.cu, 0
  %i.cx = and i1 %i.cv, %i.cw
  %i.cy = icmp ult ptr %0, inttoptr (i64 -16 to ptr)
  %i.cz = and i1 %i.cy, %i.cx, !nosanitize !13
  br i1 %i.cz, label %halfchunk2whole.exit, label %bb.bj, !prof !14, !nosanitize !13

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @146, i64 %i.c, i64 %i.cu) #11, !nosanitize !13
  br label %halfchunk2whole.exit, !nosanitize !13

halfchunk2whole.exit:                             ; preds = %GET_HALFCHUNK_MAG.exit, %bb.bj, %bb.bi
  %.067 = phi ptr [ %0, %GET_HALFCHUNK_MAG.exit ], [ %i.ct, %bb.bj ], [ %i.ct, %bb.bi ]
  %.0 = phi i32 [ %2, %GET_HALFCHUNK_MAG.exit ], [ 0, %bb.bj ], [ 0, %bb.bi ]
  %i.da = load <2 x i64>, ptr %i.b, align 16, !tbaa !15
  %i.db = shufflevector <2 x i64> %i.da, <2 x i64> zeroinitializer, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.db, ptr %i.a, align 32, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.loopexit

bb.bk:                                            ; preds = %bb.am, %bb.t
  %i.dc = call range(i64 0, 6) i64 @llvm.ctpop.i64(i64 %i.j)
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %.split, label %bb.bp

.split:                                           ; preds = %bb.bk
  %i.de = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.j, i1 true)
  switch i64 %i.de, label %bb.bp [
    i64 1, label %bb.bl
    i64 2, label %bb.bm
    i64 3, label %bb.bn
    i64 4, label %bb.bo
  ]

bb.bl:                                            ; preds = %.split
  call fastcc void @chunkmemset_2(ptr noundef %1, ptr noundef %i.a)
  br label %bb.cn

bb.bm:                                            ; preds = %.split
  call fastcc void @chunkmemset_4(ptr noundef %1, ptr noundef %i.a)
  br label %bb.cn

bb.bn:                                            ; preds = %.split
  call fastcc void @chunkmemset_8(ptr noundef %1, ptr noundef %i.a)
  br label %bb.cn

bb.bo:                                            ; preds = %.split
  call fastcc void @chunkmemset_16(ptr noundef %1, ptr noundef %i.a)
  br label %bb.cn

bb.bp:                                            ; preds = %bb.bk, %.split
  %i.df = trunc nuw nsw i64 %i.j to i32
  %i.dg = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.df, i32 3), !nosanitize !13 ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.dg, 0, !nosanitize !13 ; 2 uses
  %i.di = extractvalue { i32, i1 } %i.dg, 1, !nosanitize !13
  br i1 %i.di, label %bb.bq, label %bb.br, !prof !17, !nosanitize !13

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_sub_overflow(ptr nonnull @204, i64 %i.j, i64 3) #12, !nosanitize !13
  br label %bb.br, !nosanitize !13

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.dj = zext i32 %i.dh to i64, !nosanitize !13  ; 3 uses
  %i.dk = icmp ult i32 %i.dh, 29
  br i1 %i.dk, label %bb.bt, label %bb.bs, !prof !14, !nosanitize !13

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @205, i64 %i.dj) #11, !nosanitize !13
  br label %bb.bt, !nosanitize !13

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.dj
  %i.dm = shl nuw nsw i64 %i.dj, 2
  %i.dn = add i64 %i.dm, ptrtoint (ptr @perm_idx_lut to i64), !nosanitize !13 ; 2 uses
  %.not.i78 = icmp ult i64 %i.dn, ptrtoint (ptr @perm_idx_lut to i64), !nosanitize !13
  br i1 %.not.i78, label %bb.bu, label %bb.bv, !prof !17, !nosanitize !13

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @206, i64 ptrtoint (ptr @perm_idx_lut to i64), i64 %i.dn) #11, !nosanitize !13
  br label %bb.bv, !nosanitize !13

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !30 ; 4 uses
  %.sroa.0.0.extract.trunc.i79 = trunc i32 %i.do to i16 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.do, 16
  %i.dp = add i64 %i.j, %i.d, !nosanitize !13     ; 3 uses
  %i.dq = icmp ne ptr %1, null, !nosanitize !13   ; 4 uses
  %i.dr = icmp eq i64 %i.dp, 0
  %i.ds = xor i1 %i.dq, %i.dr
  %i.dt = icmp uge i64 %i.dp, %i.d, !nosanitize !13
  %i.du = and i1 %i.dt, %i.ds, !nosanitize !13
  br i1 %i.du, label %bb.bx, label %bb.bw, !prof !14, !nosanitize !13

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %i.d, i64 %i.dp) #11, !nosanitize !13
  br label %bb.bx, !nosanitize !13

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.dv = icmp samesign ult i64 %i.j, 16
  br i1 %i.dv, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  %.sroa.0.0.extract.trunc.mask35.i = and i32 %i.do, 65535
  %i.dw = zext nneg i32 %.sroa.0.0.extract.trunc.mask35.i to i64 ; 3 uses
  %i.dx = icmp ult i16 %.sroa.0.0.extract.trunc.i79, 833
  br i1 %i.dx, label %bb.ca, label %bb.bz, !prof !14, !nosanitize !13

bb.bz:                                            ; preds = %bb.by
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @208, i64 %i.dw) #11, !nosanitize !13
  br label %bb.ca, !nosanitize !13

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.dy = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.dw ; 2 uses
  %i.dz = add i64 %i.dw, ptrtoint (ptr @permute_table to i64), !nosanitize !13 ; 2 uses
  %.not27.i = icmp ult i64 %i.dz, ptrtoint (ptr @permute_table to i64), !nosanitize !13
  br i1 %.not27.i, label %bb.cb, label %bb.cc, !prof !17, !nosanitize !13

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @209, i64 ptrtoint (ptr @permute_table to i64), i64 %i.dz) #11, !nosanitize !13
  br label %bb.cc, !nosanitize !13

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ea = ptrtoint ptr %i.dy to i64, !nosanitize !13 ; 2 uses
  %i.eb = and i64 %i.ea, 31, !nosanitize !13
  %i.ec = icmp eq i64 %i.eb, 0, !nosanitize !13
  br i1 %i.ec, label %_mm256_load_si256.exit.i, label %bb.cd, !prof !14, !nosanitize !13

bb.cd:                                            ; preds = %bb.cc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @214, i64 %i.ea) #11, !nosanitize !13
  br label %_mm256_load_si256.exit.i, !nosanitize !13

_mm256_load_si256.exit.i:                         ; preds = %bb.cd, %bb.cc
  %i.ed = load <32 x i8>, ptr %i.dy, align 32, !tbaa !15
  br i1 %i.dq, label %_mm_loadu_si128.exit29.i, label %bb.ce, !prof !14, !nosanitize !13

bb.ce:                                            ; preds = %_mm256_load_si256.exit.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.d) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.d) #11, !nosanitize !13
  br label %_mm_loadu_si128.exit29.i, !nosanitize !13

_mm_loadu_si128.exit29.i:                         ; preds = %bb.ce, %_mm256_load_si256.exit.i
  %3 = load <16 x i8>, ptr %1, align 1, !tbaa !15
  %i.ee = add <32 x i8> %i.ed, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %4 = shufflevector <16 x i8> %3, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ef = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %4, <32 x i8> %i.ee)
  %i.eg = bitcast <32 x i8> %i.ef to <4 x i64>
  br label %GET_CHUNK_MAG.exit

bb.cf:                                            ; preds = %bb.bx
  br i1 %i.dq, label %_mm_loadu_si128.exit28.i, label %bb.cg, !prof !14, !nosanitize !13

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @166, i64 %i.d) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.d) #11, !nosanitize !13
  br label %_mm_loadu_si128.exit28.i, !nosanitize !13

_mm_loadu_si128.exit28.i:                         ; preds = %bb.cg, %bb.cf
  %i.eh = load <2 x i64>, ptr %1, align 1, !tbaa !15 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ej = add i64 %i.d, 16, !nosanitize !13       ; 2 uses
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = icmp ult ptr %1, inttoptr (i64 -16 to ptr)
  %i.em = and i1 %i.el, %i.ek
  %i.en = and i1 %i.dq, %i.em
  br i1 %i.en, label %_mm_loadu_si128.exit.i80, label %bb.ch, !prof !14, !nosanitize !13

bb.ch:                                            ; preds = %_mm_loadu_si128.exit28.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @210, i64 %i.d, i64 %i.ej) #11, !nosanitize !13
  br label %_mm_loadu_si128.exit.i80, !nosanitize !13

_mm_loadu_si128.exit.i80:                         ; preds = %_mm_loadu_si128.exit28.i, %bb.ch
  %i.eo = load <16 x i8>, ptr %i.ei, align 1, !tbaa !15
  %.sroa.0.0.extract.trunc.mask.i81 = and i32 %i.do, 65535
  %i.ep = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i81 to i64 ; 3 uses
  %i.eq = icmp ult i16 %.sroa.0.0.extract.trunc.i79, 833
  br i1 %i.eq, label %bb.cj, label %bb.ci, !prof !14, !nosanitize !13

bb.ci:                                            ; preds = %_mm_loadu_si128.exit.i80
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @211, i64 %i.ep) #11, !nosanitize !13
  br label %bb.cj, !nosanitize !13

bb.cj:                                            ; preds = %bb.ci, %_mm_loadu_si128.exit.i80
  %i.er = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.ep ; 2 uses
  %i.es = add i64 %i.ep, ptrtoint (ptr @permute_table to i64), !nosanitize !13 ; 2 uses
  %.not26.i = icmp ult i64 %i.es, ptrtoint (ptr @permute_table to i64), !nosanitize !13
  br i1 %.not26.i, label %bb.ck, label %bb.cl, !prof !17, !nosanitize !13

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @212, i64 ptrtoint (ptr @permute_table to i64), i64 %i.es) #11, !nosanitize !13
  br label %bb.cl, !nosanitize !13

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.et = ptrtoint ptr %i.er to i64, !nosanitize !13 ; 2 uses
  %i.eu = and i64 %i.et, 15, !nosanitize !13
  %i.ev = icmp eq i64 %i.eu, 0, !nosanitize !13
  br i1 %i.ev, label %_mm_load_si128.exit.i, label %bb.cm, !prof !14, !nosanitize !13

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @182, i64 %i.et) #11, !nosanitize !13
  br label %_mm_load_si128.exit.i, !nosanitize !13

_mm_load_si128.exit.i:                            ; preds = %bb.cm, %bb.cl
  %i.ew = load <16 x i8>, ptr %i.er, align 16, !tbaa !15 ; 2 uses
  %i.ex = icmp slt <16 x i8> %i.ew, splat (i8 16)
  %i.ey = bitcast <2 x i64> %i.eh to <16 x i8>
  %i.ez = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ey, <16 x i8> %i.ew)
  %i.fa = select <16 x i1> %i.ex, <16 x i8> %i.ez, <16 x i8> %i.eo
  %i.fb = bitcast <16 x i8> %i.fa to <2 x i64>
  %i.fc = shufflevector <2 x i64> %i.eh, <2 x i64> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %GET_CHUNK_MAG.exit

GET_CHUNK_MAG.exit:                               ; preds = %_mm_loadu_si128.exit29.i, %_mm_load_si128.exit.i
  %.0.i = phi <4 x i64> [ %i.eg, %_mm_loadu_si128.exit29.i ], [ %i.fc, %_mm_load_si128.exit.i ]
  store <4 x i64> %.0.i, ptr %i.a, align 32, !tbaa !15
  %i.fd = zext nneg i32 %.sroa.5.0.extract.shift.i to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.bm, %bb.bo, %GET_CHUNK_MAG.exit, %bb.bn, %bb.bl
  %.099 = phi i64 [ %i.fd, %GET_CHUNK_MAG.exit ], [ 0, %bb.bl ], [ 0, %bb.bm ], [ 0, %bb.bn ], [ 0, %bb.bo ] ; 2 uses
  %i.fe = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 32, i64 %.099), !nosanitize !13 ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 0, !nosanitize !13 ; 4 uses
  %i.fg = extractvalue { i64, i1 } %i.fe, 1, !nosanitize !13
  br i1 %i.fg, label %bb.co, label %bb.cp, !prof !17, !nosanitize !13

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_sub_overflow(ptr nonnull @147, i64 32, i64 %.099) #12, !nosanitize !13
  br label %bb.cp, !nosanitize !13

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.fh = trunc nsw i64 %i.ff to i32              ; 2 uses
  %i.fi = icmp ugt i32 %2, 63
  br i1 %i.fi, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.cp
  %i.fj = and i64 %i.ff, 4294967295               ; 4 uses
  %i.fk = shl nsw i32 %i.fh, 1                    ; 2 uses
  %i.fl = icmp sgt i64 %i.ff, -1                  ; 2 uses
  %i.fm = zext i32 %i.fk to i64                   ; 3 uses
  br label %bb.cq

.preheader:                                       ; preds = %bb.da, %bb.cp
  %.168.lcssa = phi ptr [ %0, %bb.cp ], [ %i.fu, %bb.da ] ; 2 uses
  %.1.lcssa = phi i32 [ %2, %bb.cp ], [ %i.fx, %bb.da ] ; 3 uses
  %i.fn = icmp samesign ugt i32 %.1.lcssa, 31
  br i1 %i.fn, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %.preheader
  %i.fo = and i64 %i.ff, 4294967295               ; 3 uses
  br label %bb.db

bb.cq:                                            ; preds = %.lr.ph, %bb.da
  %.188 = phi i32 [ %2, %.lr.ph ], [ %i.fx, %bb.da ] ; 2 uses
  %.16887 = phi ptr [ %0, %.lr.ph ], [ %i.fu, %bb.da ] ; 5 uses
  %i.fp = zext i32 %.188 to i64
  %i.fq = load <4 x i64>, ptr %i.a, align 32, !tbaa !15
  %.not131 = icmp eq ptr %.16887, null, !nosanitize !13
  %.pre = ptrtoint ptr %.16887 to i64, !nosanitize !13 ; 8 uses
  br i1 %.not131, label %bb.cr, label %storechunk.exit, !prof !17, !nosanitize !13

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @216, i64 %.pre) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @218, i64 %.pre) #11, !nosanitize !13
  br label %storechunk.exit, !nosanitize !13

storechunk.exit:                                  ; preds = %bb.cq, %bb.cr
  store <4 x i64> %i.fq, ptr %.16887, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %.16887, i64 %i.fj
  %i.fs = add i64 %i.fj, %.pre, !nosanitize !13   ; 2 uses
  %.not85 = icmp ult i64 %i.fs, %.pre, !nosanitize !13
  br i1 %.not85, label %bb.cs, label %storechunk.exit82, !prof !17, !nosanitize !13

bb.cs:                                            ; preds = %storechunk.exit
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @148, i64 %.pre, i64 %i.fs) #11, !nosanitize !13
  br label %storechunk.exit82, !nosanitize !13

storechunk.exit82:                                ; preds = %bb.cs, %storechunk.exit
  %i.ft = load <4 x i64>, ptr %i.a, align 32, !tbaa !15
  store <4 x i64> %i.ft, ptr %i.fr, align 1, !tbaa !15
  br i1 %i.fl, label %bb.cu, label %bb.ct, !prof !14, !nosanitize !13

bb.ct:                                            ; preds = %storechunk.exit82
  call void @__ubsan_handle_mul_overflow(ptr nonnull @149, i64 2, i64 %i.fj) #12, !nosanitize !13
  br label %bb.cu, !nosanitize !13

bb.cu:                                            ; preds = %bb.ct, %storechunk.exit82
  %i.fu = getelementptr inbounds nuw i8, ptr %.16887, i64 %i.fm ; 2 uses
  %i.fv = add i64 %.pre, %i.fm, !nosanitize !13   ; 2 uses
  %.not86 = icmp ult i64 %i.fv, %.pre, !nosanitize !13
  br i1 %.not86, label %bb.cv, label %bb.cw, !prof !17, !nosanitize !13

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @150, i64 %.pre, i64 %i.fv) #11, !nosanitize !13
  br label %bb.cw, !nosanitize !13

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  br i1 %i.fl, label %bb.cy, label %bb.cx, !prof !14, !nosanitize !13

bb.cx:                                            ; preds = %bb.cw
  call void @__ubsan_handle_mul_overflow(ptr nonnull @151, i64 2, i64 %i.fj) #12, !nosanitize !13
  br label %bb.cy, !nosanitize !13

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.fw = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.188, i32 %i.fk), !nosanitize !13 ; 2 uses
  %i.fx = extractvalue { i32, i1 } %i.fw, 0, !nosanitize !13 ; 3 uses
  %i.fy = extractvalue { i32, i1 } %i.fw, 1, !nosanitize !13
  br i1 %i.fy, label %bb.cz, label %bb.da, !prof !17, !nosanitize !13

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_sub_overflow(ptr nonnull @152, i64 %i.fp, i64 %i.fm) #12, !nosanitize !13
  br label %bb.da, !nosanitize !13

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.fz = icmp ugt i32 %i.fx, 63
  br i1 %i.fz, label %bb.cq, label %.preheader, !llvm.loop !27

bb.db:                                            ; preds = %.lr.ph92, %bb.dg
  %.291 = phi i32 [ %.1.lcssa, %.lr.ph92 ], [ %i.ge, %bb.dg ] ; 2 uses
  %.26990 = phi ptr [ %.168.lcssa, %.lr.ph92 ], [ %i.gg, %bb.dg ] ; 5 uses
  %i.ga = zext i32 %.291 to i64
  %i.gb = load <4 x i64>, ptr %i.a, align 32, !tbaa !15
  %.not132 = icmp eq ptr %.26990, null, !nosanitize !13
  br i1 %.not132, label %bb.dc, label %storechunk.exit83, !prof !17, !nosanitize !13

bb.dc:                                            ; preds = %bb.db
  %i.gc = ptrtoint ptr %.26990 to i64, !nosanitize !13 ; 2 uses
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @216, i64 %i.gc) #11, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @218, i64 %i.gc) #11, !nosanitize !13
  br label %storechunk.exit83, !nosanitize !13

storechunk.exit83:                                ; preds = %bb.db, %bb.dc
  store <4 x i64> %i.gb, ptr %.26990, align 1, !tbaa !15
  %i.gd = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.291, i32 %i.fh), !nosanitize !13 ; 2 uses
  %i.ge = extractvalue { i32, i1 } %i.gd, 0, !nosanitize !13 ; 3 uses
  %i.gf = extractvalue { i32, i1 } %i.gd, 1, !nosanitize !13
  br i1 %i.gf, label %bb.dd, label %bb.de, !prof !17, !nosanitize !13

bb.dd:                                            ; preds = %storechunk.exit83
  call void @__ubsan_handle_sub_overflow(ptr nonnull @153, i64 %i.ga, i64 %i.fo) #12, !nosanitize !13
  br label %bb.de, !nosanitize !13

bb.de:                                            ; preds = %bb.dd, %storechunk.exit83
  %i.gg = getelementptr inbounds nuw i8, ptr %.26990, i64 %i.fo ; 2 uses
  %i.gh = ptrtoint ptr %.26990 to i64, !nosanitize !13 ; 3 uses
  %i.gi = add i64 %i.fo, %i.gh, !nosanitize !13   ; 2 uses
  %.not84 = icmp ult i64 %i.gi, %i.gh, !nosanitize !13
end_hunk_0
