Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_scalar?download=true
inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.gq = load i64, ptr %i.ge, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gc, i64 noundef %i.gq)
  %.pre.i.i155 = load ptr, ptr %i.gc, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i154

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i154: ; preds = %bb.ay, %bb.ax
  %i.gr = phi ptr [ %.pre.i.i155, %bb.ay ], [ %i.gp, %bb.ax ]
  %i.gs = lshr i64 %i.gf, 6
  %i.gt = and i64 %i.gf, 63
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = xor i64 %i.gu, -1
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !31
  %i.gy = and i64 %i.gx, %i.gv
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !31
  br label %bb.bc

bb.az:                                            ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gm ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gf
  %i.hb = load i8, ptr %i.gd, align 8, !tbaa !148, !range !154, !noundef !155
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hd = load <4 x i8>, ptr %i.gz, align 1, !tbaa !34
  %i.he = xor <4 x i8> %i.hd, splat (i8 -1)
  %i.hf = bitcast <4 x i8> %i.he to i32
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIjE6DecodeEPKhRNS_6VectorERjb.exit.i

bb.bb:                                            ; preds = %bb.az
  %.0.copyload.i.i8.i.i146 = load i32, ptr %i.gz, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIjE6DecodeEPKhRNS_6VectorERjb.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIjE6DecodeEPKhRNS_6VectorERjb.exit.i: ; preds = %bb.bb, %bb.ba
  %.0.copyload.i.i8.sink.i.i147 = phi i32 [ %.0.copyload.i.i8.i.i146, %bb.bb ], [ %i.hf, %bb.ba ]
  %i.hg = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i8.sink.i.i147)
  store i32 %i.hg, ptr %i.ha, align 4, !tbaa !22
  %i.hh = add i64 %i.gj, 5
  store i64 %i.hh, ptr %i.gi, align 8, !tbaa !136
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIjE6DecodeEPKhRNS_6VectorERjb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i154
  %i.hi = add nuw i64 %.028.i145, 1               ; 2 uses
  %exitcond.not.i148 = icmp eq i64 %i.hi, %4
  br i1 %exitcond.not.i148, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.aw, !llvm.loop !345

bb.bd:                                            ; preds = %bb.a
  %i.hj = load i8, ptr %2, align 8, !tbaa !153
  %i.hk = icmp eq i8 %i.hj, 2
  br i1 %i.hk, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i156 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hl = load ptr, ptr %.in.i156, align 8, !tbaa !91
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i157 = icmp eq i64 %4, 0
  br i1 %.not.i157, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.bf
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %.lr.ph.i158
  %.028.i159 = phi i64 [ 0, %.lr.ph.i158 ], [ %i.is, %bb.bm ] ; 3 uses
  %i.hp = add i64 %.028.i159, %3                  ; 3 uses
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i159 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !134 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !136 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !34
  %i.hw = add i64 %i.ht, 1                        ; 2 uses
  store i64 %i.hw, ptr %i.hs, align 8, !tbaa !136
  %i.hx = load i8, ptr %1, align 8, !tbaa !149
  %i.hy = icmp eq i8 %i.hv, %i.hx
  br i1 %i.hy, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load ptr, ptr %i.hm, align 8, !tbaa !131 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i174, label %bb.bi, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i175

bb.bi:                                            ; preds = %bb.bh
  %i.ia = load i64, ptr %i.ho, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, i64 noundef %i.ia)
  %.pre.i.i176 = load ptr, ptr %i.hm, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i175

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i175: ; preds = %bb.bi, %bb.bh
  %i.ib = phi ptr [ %.pre.i.i176, %bb.bi ], [ %i.hz, %bb.bh ]
  %i.ic = lshr i64 %i.hp, 6
  %i.id = and i64 %i.hp, 63
  %i.ie = shl nuw i64 1, %i.id
  %i.if = xor i64 %i.ie, -1
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !31
  %i.ii = and i64 %i.ih, %i.if
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !31
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hw ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hp
  %i.il = load i8, ptr %i.hn, align 8, !tbaa !148, !range !154, !noundef !155
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.in = load <4 x i8>, ptr %i.ij, align 1, !tbaa !34
  %i.io = xor <4 x i8> %i.in, splat (i8 -1)
  %i.ip = bitcast <4 x i8> %i.io to i32
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIiE6DecodeEPKhRNS_6VectorERib.exit.i

bb.bl:                                            ; preds = %bb.bj
  %.0.copyload.i.i.i8.i.i160 = load i32, ptr %i.ij, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIiE6DecodeEPKhRNS_6VectorERib.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIiE6DecodeEPKhRNS_6VectorERib.exit.i: ; preds = %bb.bl, %bb.bk
  %.0.copyload.i.i.i8.sink.i.i161 = phi i32 [ %.0.copyload.i.i.i8.i.i160, %bb.bl ], [ %i.ip, %bb.bk ]
  %.sroa.0.0.insert.insert.i.i9.i.i162 = xor i32 %.0.copyload.i.i.i8.sink.i.i161, 128
  %i.iq = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i.i9.i.i162)
  store i32 %i.iq, ptr %i.ik, align 4, !tbaa !22
  %i.ir = add i64 %i.ht, 5
  store i64 %i.ir, ptr %i.hs, align 8, !tbaa !136
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIiE6DecodeEPKhRNS_6VectorERib.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i175
  %i.is = add nuw i64 %.028.i159, 1               ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %i.is, %4
  br i1 %exitcond.not.i163, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.bg, !llvm.loop !346

bb.bn:                                            ; preds = %bb.a
  %i.it = load i8, ptr %2, align 8, !tbaa !153
  %i.iu = icmp eq i8 %i.it, 2
  br i1 %i.iu, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i177 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.iv = load ptr, ptr %.in.i177, align 8, !tbaa !91
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i178 = icmp eq i64 %4, 0
  br i1 %.not.i178, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %bb.bp
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bw, %.lr.ph.i179
  %.028.i180 = phi i64 [ 0, %.lr.ph.i179 ], [ %i.ka, %bb.bw ] ; 3 uses
  %i.iz = add i64 %.028.i180, %3                  ; 3 uses
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i180 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !134 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 4 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !136 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !34
  %i.jg = add i64 %i.jd, 1                        ; 2 uses
  store i64 %i.jg, ptr %i.jc, align 8, !tbaa !136
  %i.jh = load i8, ptr %1, align 8, !tbaa !149
  %i.ji = icmp eq i8 %i.jf, %i.jh
  br i1 %i.ji, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jj = load ptr, ptr %i.iw, align 8, !tbaa !131 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i192, label %bb.bs, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i193

bb.bs:                                            ; preds = %bb.br
  %i.jk = load i64, ptr %i.iy, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.iw, i64 noundef %i.jk)
  %.pre.i.i194 = load ptr, ptr %i.iw, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i193

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i193: ; preds = %bb.bs, %bb.br
  %i.jl = phi ptr [ %.pre.i.i194, %bb.bs ], [ %i.jj, %bb.br ]
  %i.jm = lshr i64 %i.iz, 6
  %i.jn = and i64 %i.iz, 63
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = xor i64 %i.jo, -1
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !31
  %i.js = and i64 %i.jr, %i.jp
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !31
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jg ; 9 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iz
  %i.jv = load i8, ptr %i.ix, align 8, !tbaa !148, !range !154, !noundef !155
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %9 = load i8, ptr %i.jt, align 1, !tbaa !34
  %10 = xor i8 %9, -1
  %11 = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = xor i8 %12, -1
  %14 = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = xor i8 %15, -1
  %17 = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = xor i8 %18, -1
  %20 = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = xor i8 %21, -1
  %23 = getelementptr inbounds nuw i8, ptr %i.jt, i64 5
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = xor i8 %24, -1
  %26 = getelementptr inbounds nuw i8, ptr %i.jt, i64 6
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = xor i8 %27, -1
  %29 = getelementptr inbounds nuw i8, ptr %i.jt, i64 7
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = xor i8 %30, -1
  %.sroa.10.0.insert.ext.i.i = zext i8 %31 to i64
  %.sroa.10.0.insert.shift.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i, 56
  %.sroa.9.0.insert.ext.i.i = zext i8 %28 to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 48
  %.sroa.9.0.insert.insert.i.i = or disjoint i64 %.sroa.10.0.insert.shift.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.8.0.insert.ext.i.i = zext i8 %25 to i64
  %.sroa.8.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i, 40
  %.sroa.8.0.insert.insert.i.i = or disjoint i64 %.sroa.9.0.insert.insert.i.i, %.sroa.8.0.insert.shift.i.i
  %.sroa.7.0.insert.ext.i.i = zext i8 %22 to i64
  %.sroa.7.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i, 32
  %.sroa.7.0.insert.insert.i.i = or disjoint i64 %.sroa.8.0.insert.insert.i.i, %.sroa.7.0.insert.shift.i.i
  %.sroa.6.0.insert.ext.i.i184 = zext i8 %19 to i64
  %.sroa.6.0.insert.shift.i.i185 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i184, 24
  %.sroa.6.0.insert.insert.i.i = or disjoint i64 %.sroa.7.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i185
  %.sroa.5.0.insert.ext.i.i186 = zext i8 %16 to i64
  %.sroa.5.0.insert.shift.i.i187 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i186, 16
  %.sroa.4.0.insert.ext.i.i188 = zext i8 %13 to i64
  %.sroa.4.0.insert.shift.i.i189 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i188, 8
  %.sroa.4.0.insert.mask.i.i = or disjoint i64 %.sroa.6.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i187
  %.sroa.0.0.insert.ext.i.i190 = zext i8 %10 to i64
  %.sroa.0.0.insert.mask.i.i = or disjoint i64 %.sroa.4.0.insert.mask.i.i, %.sroa.4.0.insert.shift.i.i189
  %.sroa.0.0.insert.insert.i.i191 = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.0.0.insert.ext.i.i190
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorImE6DecodeEPKhRNS_6VectorERmb.exit.i

bb.bv:                                            ; preds = %bb.bt
  %.0.copyload.i.i8.i.i181 = load i64, ptr %i.jt, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorImE6DecodeEPKhRNS_6VectorERmb.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorImE6DecodeEPKhRNS_6VectorERmb.exit.i: ; preds = %bb.bv, %bb.bu
  %.0.copyload.i.i8.sink.i.i182 = phi i64 [ %.0.copyload.i.i8.i.i181, %bb.bv ], [ %.sroa.0.0.insert.insert.i.i191, %bb.bu ]
  %i.jx = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i8.sink.i.i182)
  store i64 %i.jx, ptr %i.ju, align 8, !tbaa !31
  %i.jy = load i64, ptr %i.jc, align 8, !tbaa !136
  %i.jz = add i64 %i.jy, 8
  store i64 %i.jz, ptr %i.jc, align 8, !tbaa !136
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorImE6DecodeEPKhRNS_6VectorERmb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i193
  %i.ka = add nuw i64 %.028.i180, 1               ; 2 uses
  %exitcond.not.i183 = icmp eq i64 %i.ka, %4
  br i1 %exitcond.not.i183, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.bq, !llvm.loop !347

bb.bx:                                            ; preds = %bb.a
  %i.kb = load i8, ptr %2, align 8, !tbaa !153
  %i.kc = icmp eq i8 %i.kb, 2
  br i1 %i.kc, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i195 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.kd = load ptr, ptr %.in.i195, align 8, !tbaa !91
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i196 = icmp eq i64 %4, 0
  br i1 %.not.i196, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.bz
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %.lr.ph.i197
  %.028.i198 = phi i64 [ 0, %.lr.ph.i197 ], [ %i.li, %bb.cg ] ; 3 uses
  %i.kh = add i64 %.028.i198, %3                  ; 3 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i198 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !134 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 4 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !136 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !34
  %i.ko = add i64 %i.kl, 1                        ; 2 uses
  store i64 %i.ko, ptr %i.kk, align 8, !tbaa !136
  %i.kp = load i8, ptr %1, align 8, !tbaa !149
  %i.kq = icmp eq i8 %i.kn, %i.kp
  br i1 %i.kq, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.kr = load ptr, ptr %i.ke, align 8, !tbaa !131 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i225, label %bb.cc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i226

bb.cc:                                            ; preds = %bb.cb
  %i.ks = load i64, ptr %i.kg, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, i64 noundef %i.ks)
  %.pre.i.i227 = load ptr, ptr %i.ke, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i226

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i226: ; preds = %bb.cc, %bb.cb
  %i.kt = phi ptr [ %.pre.i.i227, %bb.cc ], [ %i.kr, %bb.cb ]
  %i.ku = lshr i64 %i.kh, 6
  %i.kv = and i64 %i.kh, 63
  %i.kw = shl nuw i64 1, %i.kv
  %i.kx = xor i64 %i.kw, -1
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ku ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !31
  %i.la = and i64 %i.kz, %i.kx
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !31
  br label %bb.cg

bb.cd:                                            ; preds = %bb.ca
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ko ; 9 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kh
  %i.ld = load i8, ptr %i.kf, align 8, !tbaa !148, !range !154, !noundef !155
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %32 = load i8, ptr %i.lb, align 1, !tbaa !34
  %33 = xor i8 %32, -1
  %34 = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = xor i8 %35, -1
  %37 = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = xor i8 %38, -1
  %40 = getelementptr inbounds nuw i8, ptr %i.lb, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = xor i8 %41, -1
  %43 = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = xor i8 %44, -1
  %46 = getelementptr inbounds nuw i8, ptr %i.lb, i64 5
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = xor i8 %47, -1
  %49 = getelementptr inbounds nuw i8, ptr %i.lb, i64 6
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = xor i8 %50, -1
  %52 = getelementptr inbounds nuw i8, ptr %i.lb, i64 7
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = xor i8 %53, -1
  %.sroa.10.0.insert.ext.i.i203 = zext i8 %54 to i64
  %.sroa.10.0.insert.shift.i.i204 = shl nuw i64 %.sroa.10.0.insert.ext.i.i203, 56
  %.sroa.9.0.insert.ext.i.i205 = zext i8 %51 to i64
  %.sroa.9.0.insert.shift.i.i206 = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i205, 48
  %.sroa.9.0.insert.insert.i.i207 = or disjoint i64 %.sroa.10.0.insert.shift.i.i204, %.sroa.9.0.insert.shift.i.i206
  %.sroa.8.0.insert.ext.i.i208 = zext i8 %48 to i64
  %.sroa.8.0.insert.shift.i.i209 = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i208, 40
  %.sroa.8.0.insert.insert.i.i210 = or disjoint i64 %.sroa.9.0.insert.insert.i.i207, %.sroa.8.0.insert.shift.i.i209
  %.sroa.7.0.insert.ext.i.i211 = zext i8 %45 to i64
  %.sroa.7.0.insert.shift.i.i212 = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i211, 32
  %.sroa.7.0.insert.insert.i.i213 = or disjoint i64 %.sroa.8.0.insert.insert.i.i210, %.sroa.7.0.insert.shift.i.i212
  %.sroa.6.0.insert.ext.i.i214 = zext i8 %42 to i64
  %.sroa.6.0.insert.shift.i.i215 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i214, 24
  %.sroa.6.0.insert.insert.i.i216 = or disjoint i64 %.sroa.7.0.insert.insert.i.i213, %.sroa.6.0.insert.shift.i.i215
  %.sroa.5.0.insert.ext.i.i217 = zext i8 %39 to i64
  %.sroa.5.0.insert.shift.i.i218 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i217, 16
  %.sroa.4.0.insert.ext.i.i219 = zext i8 %36 to i64
  %.sroa.4.0.insert.shift.i.i220 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i219, 8
  %.sroa.4.0.insert.mask.i.i221 = or disjoint i64 %.sroa.6.0.insert.insert.i.i216, %.sroa.5.0.insert.shift.i.i218
  %.sroa.0.0.insert.ext.i.i222 = zext i8 %33 to i64
  %.sroa.0.0.insert.mask.i.i223 = or disjoint i64 %.sroa.4.0.insert.mask.i.i221, %.sroa.4.0.insert.shift.i.i220
  %.sroa.0.0.insert.insert.i.i224 = or i64 %.sroa.0.0.insert.mask.i.i223, %.sroa.0.0.insert.ext.i.i222
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIlE6DecodeEPKhRNS_6VectorERlb.exit.i

bb.cf:                                            ; preds = %bb.cd
  %.0.copyload.i.i.i8.i.i199 = load i64, ptr %i.lb, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIlE6DecodeEPKhRNS_6VectorERlb.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIlE6DecodeEPKhRNS_6VectorERlb.exit.i: ; preds = %bb.cf, %bb.ce
  %.0.copyload.i.i.i8.sink.i.i200 = phi i64 [ %.0.copyload.i.i.i8.i.i199, %bb.cf ], [ %.sroa.0.0.insert.insert.i.i224, %bb.ce ]
  %.sroa.0.0.insert.insert.i.i9.i.i201 = xor i64 %.0.copyload.i.i.i8.sink.i.i200, 128
  %i.lf = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i9.i.i201)
  store i64 %i.lf, ptr %i.lc, align 8, !tbaa !31
  %i.lg = load i64, ptr %i.kk, align 8, !tbaa !136
  %i.lh = add i64 %i.lg, 8
  store i64 %i.lh, ptr %i.kk, align 8, !tbaa !136
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIlE6DecodeEPKhRNS_6VectorERlb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i226
  %i.li = add nuw i64 %.028.i198, 1               ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %i.li, %4
  br i1 %exitcond.not.i202, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.ca, !llvm.loop !348

bb.ch:                                            ; preds = %bb.a
  %i.lj = load i8, ptr %2, align 8, !tbaa !153
  %i.lk = icmp eq i8 %i.lj, 2
  br i1 %i.lk, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i228 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ll = load ptr, ptr %.in.i228, align 8, !tbaa !91
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i229 = icmp eq i64 %4, 0
  br i1 %.not.i229, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %bb.cj
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cs, %.lr.ph.i230
  %.028.i231 = phi i64 [ 0, %.lr.ph.i230 ], [ %i.nd, %bb.cs ] ; 3 uses
  %i.lp = add i64 %.028.i231, %3                  ; 3 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i231 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !134 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !136 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !34
  %i.lw = add i64 %i.lt, 1                        ; 2 uses
  store i64 %i.lw, ptr %i.ls, align 8, !tbaa !136
  %i.lx = load i8, ptr %1, align 8, !tbaa !149
  %i.ly = icmp eq i8 %i.lv, %i.lx
  br i1 %i.ly, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.lz = load ptr, ptr %i.lm, align 8, !tbaa !131 ; 2 uses
  %.not.i.i245 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i245, label %bb.cm, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i246

bb.cm:                                            ; preds = %bb.cl
  %i.ma = load i64, ptr %i.lo, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, i64 noundef %i.ma)
  %.pre.i.i247 = load ptr, ptr %i.lm, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i246

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i246: ; preds = %bb.cm, %bb.cl
  %i.mb = phi ptr [ %.pre.i.i247, %bb.cm ], [ %i.lz, %bb.cl ]
  %i.mc = lshr i64 %i.lp, 6
  %i.md = and i64 %i.lp, 63
  %i.me = shl nuw i64 1, %i.md
  %i.mf = xor i64 %i.me, -1
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.mc ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !31
  %i.mi = and i64 %i.mh, %i.mf
  store i64 %i.mi, ptr %i.mg, align 8, !tbaa !31
  br label %bb.cs

bb.cn:                                            ; preds = %bb.ck
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lw ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lp
  %i.ml = load i8, ptr %i.ln, align 8, !tbaa !148, !range !154, !noundef !155
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mn = load <4 x i8>, ptr %i.mj, align 1, !tbaa !34
  %i.mo = xor <4 x i8> %i.mn, splat (i8 -1)
  %i.mp = bitcast <4 x i8> %i.mo to i32
  %i.mq = tail call noundef i32 @llvm.bswap.i32(i32 %i.mp) ; 4 uses
  %switch.tableidx = add i32 %i.mq, 2             ; 2 uses
  %i.mr = icmp ult i32 %switch.tableidx, 3
  br i1 %i.mr, label %switch.lookup, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ms = xor i32 %i.mq, -1
  %i.mt = and i32 %i.mq, 2147483647
  %.not3.i.i.i.i = icmp slt i32 %i.mq, 0
  %storemerge.i.i.i.i = select i1 %.not3.i.i.i.i, i32 %i.mt, i32 %i.ms
  %i.mu = bitcast i32 %storemerge.i.i.i.i to float
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i

bb.cq:                                            ; preds = %bb.cn
  %.0.copyload.i.i8.i.i232 = load i32, ptr %i.mj, align 1
  %i.mv = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i8.i.i232) ; 4 uses
  %switch.tableidx620 = add i32 %i.mv, 2          ; 2 uses
  %i.mw = icmp ult i32 %switch.tableidx620, 3
  br i1 %i.mw, label %switch.lookup621, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mx = xor i32 %i.mv, -1
  %i.my = and i32 %i.mv, 2147483647
  %.not3.i.i10.i.i = icmp slt i32 %i.mv, 0
  %storemerge.i.i11.i.i = select i1 %.not3.i.i10.i.i, i32 %i.my, i32 %i.mx
  %i.mz = bitcast i32 %storemerge.i.i11.i.i to float
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i

switch.lookup:                                    ; preds = %bb.co
  %i.na = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.144, i64 %i.na
  %switch.load = load float, ptr %switch.gep, align 4
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i

switch.lookup621:                                 ; preds = %bb.cq
  %i.nb = zext nneg i32 %switch.tableidx620 to i64
  %switch.gep622 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.144, i64 %i.nb
  %switch.load623 = load float, ptr %switch.gep622, align 4
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i: ; preds = %switch.lookup621, %switch.lookup, %bb.cr, %bb.cp
  %storemerge.i.i233 = phi float [ %switch.load, %switch.lookup ], [ %i.mu, %bb.cp ], [ %switch.load623, %switch.lookup621 ], [ %i.mz, %bb.cr ]
  store float %storemerge.i.i233, ptr %i.mk, align 4, !tbaa !160
  %i.nc = add i64 %i.lt, 5
  store i64 %i.nc, ptr %i.ls, align 8, !tbaa !136
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIfE6DecodeEPKhRNS_6VectorERfb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i246
  %i.nd = add nuw i64 %.028.i231, 1               ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %i.nd, %4
  br i1 %exitcond.not.i234, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.ck, !llvm.loop !349

bb.ct:                                            ; preds = %bb.a
  %i.ne = load i8, ptr %2, align 8, !tbaa !153
  %i.nf = icmp eq i8 %i.ne, 2
  br i1 %i.nf, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i248 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ng = load ptr, ptr %.in.i248, align 8, !tbaa !91
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i249 = icmp eq i64 %4, 0
  br i1 %.not.i249, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.cv
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.cw

bb.cw:                                            ; preds = %bb.de, %.lr.ph.i250
  %.028.i251 = phi i64 [ 0, %.lr.ph.i250 ], [ %i.ot, %bb.de ] ; 3 uses
  %i.nk = add i64 %.028.i251, %3                  ; 3 uses
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i251 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !134 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 3 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !136 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !34
  %i.nr = add i64 %i.no, 1                        ; 2 uses
  store i64 %i.nr, ptr %i.nn, align 8, !tbaa !136
  %i.ns = load i8, ptr %1, align 8, !tbaa !149
  %i.nt = icmp eq i8 %i.nq, %i.ns
  br i1 %i.nt, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.nu = load ptr, ptr %i.nh, align 8, !tbaa !131 ; 2 uses
  %.not.i.i281 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i281, label %bb.cy, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i282

bb.cy:                                            ; preds = %bb.cx
  %i.nv = load i64, ptr %i.nj, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i64 noundef %i.nv)
  %.pre.i.i283 = load ptr, ptr %i.nh, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i282

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i282: ; preds = %bb.cy, %bb.cx
  %i.nw = phi ptr [ %.pre.i.i283, %bb.cy ], [ %i.nu, %bb.cx ]
  %i.nx = lshr i64 %i.nk, 6
  %i.ny = and i64 %i.nk, 63
  %i.nz = shl nuw i64 1, %i.ny
  %i.oa = xor i64 %i.nz, -1
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nx ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !31
  %i.od = and i64 %i.oc, %i.oa
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !31
  br label %bb.de

bb.cz:                                            ; preds = %bb.cw
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nr ; 9 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nk
  %i.og = load i8, ptr %i.ni, align 8, !tbaa !148, !range !154, !noundef !155
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %55 = load i8, ptr %i.oe, align 1, !tbaa !34
  %56 = xor i8 %55, -1
  %57 = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !34
  %59 = xor i8 %58, -1
  %60 = getelementptr inbounds nuw i8, ptr %i.oe, i64 2
  %61 = load i8, ptr %60, align 1, !tbaa !34
  %62 = xor i8 %61, -1
  %63 = getelementptr inbounds nuw i8, ptr %i.oe, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = xor i8 %64, -1
  %66 = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = xor i8 %67, -1
  %69 = getelementptr inbounds nuw i8, ptr %i.oe, i64 5
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = xor i8 %70, -1
  %72 = getelementptr inbounds nuw i8, ptr %i.oe, i64 6
  %73 = load i8, ptr %72, align 1, !tbaa !34
  %74 = xor i8 %73, -1
  %75 = getelementptr inbounds nuw i8, ptr %i.oe, i64 7
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = xor i8 %76, -1
  %.sroa.10.0.insert.ext.i.i257 = zext i8 %77 to i64
  %.sroa.10.0.insert.shift.i.i258 = shl nuw i64 %.sroa.10.0.insert.ext.i.i257, 56
  %.sroa.9.0.insert.ext.i.i259 = zext i8 %74 to i64
  %.sroa.9.0.insert.shift.i.i260 = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i259, 48
  %.sroa.9.0.insert.insert.i.i261 = or disjoint i64 %.sroa.10.0.insert.shift.i.i258, %.sroa.9.0.insert.shift.i.i260
  %.sroa.8.0.insert.ext.i.i262 = zext i8 %71 to i64
  %.sroa.8.0.insert.shift.i.i263 = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i262, 40
  %.sroa.8.0.insert.insert.i.i264 = or disjoint i64 %.sroa.9.0.insert.insert.i.i261, %.sroa.8.0.insert.shift.i.i263
  %.sroa.7.0.insert.ext.i.i265 = zext i8 %68 to i64
  %.sroa.7.0.insert.shift.i.i266 = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i265, 32
  %.sroa.7.0.insert.insert.i.i267 = or disjoint i64 %.sroa.8.0.insert.insert.i.i264, %.sroa.7.0.insert.shift.i.i266
  %.sroa.6.0.insert.ext.i.i268 = zext i8 %65 to i64
  %.sroa.6.0.insert.shift.i.i269 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i268, 24
  %.sroa.6.0.insert.insert.i.i270 = or disjoint i64 %.sroa.7.0.insert.insert.i.i267, %.sroa.6.0.insert.shift.i.i269
  %.sroa.5.0.insert.ext.i.i271 = zext i8 %62 to i64
  %.sroa.5.0.insert.shift.i.i272 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i271, 16
  %.sroa.4.0.insert.ext.i.i273 = zext i8 %59 to i64
  %.sroa.4.0.insert.shift.i.i274 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i273, 8
  %.sroa.4.0.insert.mask.i.i275 = or disjoint i64 %.sroa.6.0.insert.insert.i.i270, %.sroa.5.0.insert.shift.i.i272
  %.sroa.0.0.insert.ext.i.i276 = zext i8 %56 to i64
  %.sroa.0.0.insert.mask.i.i277 = or disjoint i64 %.sroa.4.0.insert.mask.i.i275, %.sroa.4.0.insert.shift.i.i274
  %.sroa.0.0.insert.insert.i.i278 = or i64 %.sroa.0.0.insert.mask.i.i277, %.sroa.0.0.insert.ext.i.i276
  %i.oi = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i278) ; 4 uses
  %switch.tableidx624 = add i64 %i.oi, 2          ; 2 uses
  %i.oj = icmp ult i64 %switch.tableidx624, 3
  br i1 %i.oj, label %switch.lookup625, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ok = xor i64 %i.oi, -1
  %i.ol = and i64 %i.oi, 9223372036854775807
  %.not3.i.i.i.i279 = icmp slt i64 %i.oi, 0
  %storemerge.i.i.i.i280 = select i1 %.not3.i.i.i.i279, i64 %i.ol, i64 %i.ok
  %i.om = bitcast i64 %storemerge.i.i.i.i280 to double
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i

bb.dc:                                            ; preds = %bb.cz
  %.0.copyload.i.i8.i.i252 = load i64, ptr %i.oe, align 1
  %i.on = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i8.i.i252) ; 4 uses
  %switch.tableidx628 = add i64 %i.on, 2          ; 2 uses
  %i.oo = icmp ult i64 %switch.tableidx628, 3
  br i1 %i.oo, label %switch.lookup629, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.op = xor i64 %i.on, -1
  %i.oq = and i64 %i.on, 9223372036854775807
  %.not3.i.i10.i.i255 = icmp slt i64 %i.on, 0
  %storemerge.i.i11.i.i256 = select i1 %.not3.i.i10.i.i255, i64 %i.oq, i64 %i.op
  %i.or = bitcast i64 %storemerge.i.i11.i.i256 to double
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i

switch.lookup625:                                 ; preds = %bb.da
  %switch.gep626 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.146, i64 %switch.tableidx624
  %switch.load627 = load double, ptr %switch.gep626, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i

switch.lookup629:                                 ; preds = %bb.dc
  %switch.gep630 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6duckdb12_GLOBAL__N_122DecodeSortKeyRecursiveEPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.146, i64 %switch.tableidx628
  %switch.load631 = load double, ptr %switch.gep630, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i: ; preds = %switch.lookup629, %switch.lookup625, %bb.dd, %bb.db
  %storemerge.i.i253 = phi double [ %switch.load627, %switch.lookup625 ], [ %i.om, %bb.db ], [ %switch.load631, %switch.lookup629 ], [ %i.or, %bb.dd ]
  store double %storemerge.i.i253, ptr %i.of, align 8, !tbaa !162
  %i.os = add i64 %i.no, 9
  store i64 %i.os, ptr %i.nn, align 8, !tbaa !136
  br label %bb.de

bb.de:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorIdE6DecodeEPKhRNS_6VectorERdb.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i282
  %i.ot = add nuw i64 %.028.i251, 1               ; 2 uses
  %exitcond.not.i254 = icmp eq i64 %i.ot, %4
  br i1 %exitcond.not.i254, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.cw, !llvm.loop !350

bb.df:                                            ; preds = %bb.a
  %i.ou = load i8, ptr %2, align 8, !tbaa !153
  %i.ov = icmp eq i8 %i.ou, 2
  br i1 %i.ov, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i284 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ow = load ptr, ptr %.in.i284, align 8, !tbaa !91
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i285 = icmp eq i64 %4, 0
  br i1 %.not.i285, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %bb.dh
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.di

bb.di:                                            ; preds = %bb.do, %.lr.ph.i286
  %.028.i287 = phi i64 [ 0, %.lr.ph.i286 ], [ %i.qo, %bb.do ] ; 3 uses
  %i.pa = add i64 %.028.i287, %3                  ; 3 uses
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i287 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !134 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 4 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !136 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !34
  %i.ph = add i64 %i.pe, 1                        ; 2 uses
  store i64 %i.ph, ptr %i.pd, align 8, !tbaa !136
  %i.pi = load i8, ptr %1, align 8, !tbaa !149
  %i.pj = icmp eq i8 %i.pg, %i.pi
  br i1 %i.pj, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.pk = load ptr, ptr %i.ox, align 8, !tbaa !131 ; 2 uses
  %.not.i.i290 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i290, label %bb.dk, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i291

bb.dk:                                            ; preds = %bb.dj
  %i.pl = load i64, ptr %i.oz, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ox, i64 noundef %i.pl)
  %.pre.i.i292 = load ptr, ptr %i.ox, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i291

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i291: ; preds = %bb.dk, %bb.dj
  %i.pm = phi ptr [ %.pre.i.i292, %bb.dk ], [ %i.pk, %bb.dj ]
  %i.pn = lshr i64 %i.pa, 6
  %i.po = and i64 %i.pa, 63
  %i.pp = shl nuw i64 1, %i.po
  %i.pq = xor i64 %i.pp, -1
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pn ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !31
  %i.pt = and i64 %i.ps, %i.pq
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !31
  br label %bb.do

bb.dl:                                            ; preds = %bb.di
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ph ; 12 uses
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.ow, i64 %i.pa ; 2 uses
  %i.pw = load i8, ptr %i.oy, align 8, !tbaa !148, !range !154, !noundef !155
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %78 = load i8, ptr %i.py, align 1, !tbaa !34
  %79 = xor i8 %78, -1
  %.sroa.12.8.insert.ext.i.i = zext i8 %79 to i64
  %80 = getelementptr inbounds nuw i8, ptr %i.pu, i64 9
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = xor i8 %81, -1
  %.sroa.12.9.insert.ext.i.i = zext i8 %82 to i64
  %.sroa.12.9.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.9.insert.ext.i.i, 8
  %.sroa.12.9.insert.insert.i.i = or disjoint i64 %.sroa.12.9.insert.shift.i.i, %.sroa.12.8.insert.ext.i.i
  %83 = getelementptr inbounds nuw i8, ptr %i.pu, i64 10
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = xor i8 %84, -1
  %.sroa.12.10.insert.ext.i.i = zext i8 %85 to i64
  %.sroa.12.10.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.10.insert.ext.i.i, 16
  %.sroa.12.10.insert.insert.i.i = or disjoint i64 %.sroa.12.9.insert.insert.i.i, %.sroa.12.10.insert.shift.i.i
  %86 = getelementptr inbounds nuw i8, ptr %i.pu, i64 11
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = xor i8 %87, -1
  %.sroa.12.11.insert.ext.i.i = zext i8 %88 to i64
  %.sroa.12.11.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.11.insert.ext.i.i, 24
  %.sroa.12.11.insert.insert.i.i = or disjoint i64 %.sroa.12.10.insert.insert.i.i, %.sroa.12.11.insert.shift.i.i
  %89 = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = xor i8 %90, -1
  %.sroa.12.12.insert.ext.i.i = zext i8 %91 to i64
  %.sroa.12.12.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.12.insert.ext.i.i, 32
  %92 = getelementptr inbounds nuw i8, ptr %i.pu, i64 13
  %93 = load i8, ptr %92, align 1, !tbaa !34
  %94 = xor i8 %93, -1
  %.sroa.12.13.insert.ext.i.i = zext i8 %94 to i64
  %.sroa.12.13.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.13.insert.ext.i.i, 40
  %.sroa.12.13.insert.mask.i.i = or disjoint i64 %.sroa.12.11.insert.insert.i.i, %.sroa.12.12.insert.shift.i.i
  %95 = getelementptr inbounds nuw i8, ptr %i.pu, i64 14
  %96 = load i8, ptr %95, align 1, !tbaa !34
  %97 = xor i8 %96, -1
  %.sroa.12.14.insert.ext.i.i = zext i8 %97 to i64
  %.sroa.12.14.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.14.insert.ext.i.i, 48
  %.sroa.12.14.insert.mask.i.i = or disjoint i64 %.sroa.12.13.insert.mask.i.i, %.sroa.12.13.insert.shift.i.i
  %.sroa.12.14.insert.insert.i.i = or i64 %.sroa.12.14.insert.mask.i.i, %.sroa.12.14.insert.shift.i.i
  %98 = getelementptr inbounds nuw i8, ptr %i.pu, i64 15
  %99 = load i8, ptr %98, align 1, !tbaa !34
  %100 = xor i8 %99, -1
  %.sroa.12.15.insert.ext.i.i = zext i8 %100 to i64
  %.sroa.12.15.insert.shift.i.i = shl nuw i64 %.sroa.12.15.insert.ext.i.i, 56
  %.sroa.12.15.insert.insert.i.i = or i64 %.sroa.12.14.insert.insert.i.i, %.sroa.12.15.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i6.i.i.i = xor i64 %.sroa.12.15.insert.insert.i.i, 128
  %i.pz = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i6.i.i.i)
  %i.qa = load <8 x i8>, ptr %i.pu, align 1, !tbaa !34
  %i.qb = xor <8 x i8> %i.qa, splat (i8 -1)
  %i.qc = shufflevector <8 x i8> %i.qb, <8 x i8> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.qd = bitcast <8 x i8> %i.qc to i64
  %i.qe = xor i64 %i.qd, 549755814016
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10interval_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

bb.dn:                                            ; preds = %bb.dl
  %.0.copyload.i.i.i.i10.i.i = load i32, ptr %i.pu, align 1
  %.sroa.0.0.insert.insert.i.i.i11.i.i = xor i32 %.0.copyload.i.i.i.i10.i.i, 128
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %.0.copyload.i.i.i3.i12.i.i = load i32, ptr %i.qf, align 1
  %.sroa.0.0.insert.insert.i.i4.i13.i.i = xor i32 %.0.copyload.i.i.i3.i12.i.i, 128
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %.0.copyload.i.i.i5.i14.i.i = load i64, ptr %i.qg, align 1
  %.sroa.0.0.insert.insert.i.i6.i15.i.i = xor i64 %.0.copyload.i.i.i5.i14.i.i, 128
  %i.qh = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i6.i15.i.i)
  %i.qi = zext i32 %.sroa.0.0.insert.insert.i.i4.i13.i.i to i64
  %i.qj = zext i32 %.sroa.0.0.insert.insert.i.i.i11.i.i to i64
  %i.qk = shl nuw i64 %i.qj, 32
  %i.ql = or disjoint i64 %i.qk, %i.qi
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10interval_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10interval_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i: ; preds = %bb.dn, %bb.dm
  %.sink2.i.i = phi i64 [ %i.ql, %bb.dn ], [ %i.qe, %bb.dm ]
  %.sink.i.i = phi i64 [ %i.qh, %bb.dn ], [ %i.pz, %bb.dm ]
  %.sroa.0.0.insert.insert.i16.i.i = tail call i64 @llvm.bswap.i64(i64 %.sink2.i.i)
  store i64 %.sroa.0.0.insert.insert.i16.i.i, ptr %i.pv, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !31
  %i.qm = load i64, ptr %i.pd, align 8, !tbaa !136
  %i.qn = add i64 %i.qm, 16
  store i64 %i.qn, ptr %i.pd, align 8, !tbaa !136
  br label %bb.do

bb.do:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10interval_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i291
  %i.qo = add nuw i64 %.028.i287, 1               ; 2 uses
  %exitcond.not.i288 = icmp eq i64 %i.qo, %4
  br i1 %exitcond.not.i288, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.di, !llvm.loop !351

bb.dp:                                            ; preds = %bb.a
  %i.qp = load i8, ptr %2, align 8, !tbaa !153
  %i.qq = icmp eq i8 %i.qp, 2
  br i1 %i.qq, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i293 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qr = load ptr, ptr %.in.i293, align 8, !tbaa !91
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i294 = icmp eq i64 %4, 0
  br i1 %.not.i294, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i295

.lr.ph.i295:                                      ; preds = %bb.dr
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dy, %.lr.ph.i295
  %.028.i296 = phi i64 [ 0, %.lr.ph.i295 ], [ %i.sa, %bb.dy ] ; 3 uses
  %i.qv = add i64 %.028.i296, %3                  ; 3 uses
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i296 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !134 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 16 ; 4 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !136 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !34
  %i.rc = add i64 %i.qz, 1                        ; 2 uses
  store i64 %i.rc, ptr %i.qy, align 8, !tbaa !136
  %i.rd = load i8, ptr %1, align 8, !tbaa !149
  %i.re = icmp eq i8 %i.rb, %i.rd
  br i1 %i.re, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.rf = load ptr, ptr %i.qs, align 8, !tbaa !131 ; 2 uses
  %.not.i.i304 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i304, label %bb.du, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i305

bb.du:                                            ; preds = %bb.dt
  %i.rg = load i64, ptr %i.qu, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.qs, i64 noundef %i.rg)
  %.pre.i.i306 = load ptr, ptr %i.qs, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i305

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i305: ; preds = %bb.du, %bb.dt
  %i.rh = phi ptr [ %.pre.i.i306, %bb.du ], [ %i.rf, %bb.dt ]
  %i.ri = lshr i64 %i.qv, 6
  %i.rj = and i64 %i.qv, 63
  %i.rk = shl nuw i64 1, %i.rj
  %i.rl = xor i64 %i.rk, -1
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.ri ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !31
  %i.ro = and i64 %i.rn, %i.rl
  store i64 %i.ro, ptr %i.rm, align 8, !tbaa !31
  br label %bb.dy

bb.dv:                                            ; preds = %bb.ds
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.rc ; 18 uses
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %i.qv ; 2 uses
  %i.rr = load i8, ptr %i.qt, align 8, !tbaa !148, !range !154, !noundef !155
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %101 = load i8, ptr %i.rp, align 1, !tbaa !34
  %102 = xor i8 %101, -1
  %.sroa.0.0.insert.ext.i.i300 = zext i8 %102 to i64
  %103 = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !34
  %105 = xor i8 %104, -1
  %.sroa.0.1.insert.ext.i.i301 = zext i8 %105 to i64
  %.sroa.0.1.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.1.insert.ext.i.i301, 8
  %.sroa.0.1.insert.insert.i.i = or disjoint i64 %.sroa.0.1.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i300
  %106 = getelementptr inbounds nuw i8, ptr %i.rp, i64 2
  %107 = load i8, ptr %106, align 1, !tbaa !34
  %108 = xor i8 %107, -1
  %.sroa.0.2.insert.ext.i.i302 = zext i8 %108 to i64
  %.sroa.0.2.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.2.insert.ext.i.i302, 16
  %.sroa.0.2.insert.insert.i.i = or disjoint i64 %.sroa.0.1.insert.insert.i.i, %.sroa.0.2.insert.shift.i.i
  %109 = getelementptr inbounds nuw i8, ptr %i.rp, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !34
  %111 = xor i8 %110, -1
  %.sroa.0.3.insert.ext.i.i303 = zext i8 %111 to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i303, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.2.insert.insert.i.i, %.sroa.0.3.insert.shift.i.i
  %112 = getelementptr inbounds nuw i8, ptr %i.rp, i64 4
  %113 = load i8, ptr %112, align 1, !tbaa !34
  %114 = xor i8 %113, -1
  %.sroa.0.4.insert.ext.i.i = zext i8 %114 to i64
  %.sroa.0.4.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.4.insert.ext.i.i, 32
  %115 = getelementptr inbounds nuw i8, ptr %i.rp, i64 5
  %116 = load i8, ptr %115, align 1, !tbaa !34
  %117 = xor i8 %116, -1
  %.sroa.0.5.insert.ext.i.i = zext i8 %117 to i64
  %.sroa.0.5.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.5.insert.ext.i.i, 40
  %.sroa.0.5.insert.mask.i.i = or disjoint i64 %.sroa.0.3.insert.insert.i.i, %.sroa.0.4.insert.shift.i.i
  %118 = getelementptr inbounds nuw i8, ptr %i.rp, i64 6
  %119 = load i8, ptr %118, align 1, !tbaa !34
  %120 = xor i8 %119, -1
  %.sroa.0.6.insert.ext.i.i = zext i8 %120 to i64
  %.sroa.0.6.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i, 48
  %.sroa.0.6.insert.mask.i.i = or disjoint i64 %.sroa.0.5.insert.mask.i.i, %.sroa.0.5.insert.shift.i.i
  %.sroa.0.6.insert.insert.i.i = or i64 %.sroa.0.6.insert.mask.i.i, %.sroa.0.6.insert.shift.i.i
  %121 = getelementptr inbounds nuw i8, ptr %i.rp, i64 7
  %122 = load i8, ptr %121, align 1, !tbaa !34
  %123 = xor i8 %122, -1
  %.sroa.0.7.insert.ext.i.i = zext i8 %123 to i64
  %.sroa.0.7.insert.shift.i.i = shl nuw i64 %.sroa.0.7.insert.ext.i.i, 56
  %.sroa.0.7.insert.insert.i.i = or i64 %.sroa.0.6.insert.insert.i.i, %.sroa.0.7.insert.shift.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %124 = load i8, ptr %i.rt, align 1, !tbaa !34
  %125 = xor i8 %124, -1
  %.sroa.11.8.insert.ext.i.i = zext i8 %125 to i64
  %126 = getelementptr inbounds nuw i8, ptr %i.rp, i64 9
  %127 = load i8, ptr %126, align 1, !tbaa !34
  %128 = xor i8 %127, -1
  %.sroa.11.9.insert.ext.i.i = zext i8 %128 to i64
  %.sroa.11.9.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.9.insert.ext.i.i, 8
  %.sroa.11.9.insert.insert.i.i = or disjoint i64 %.sroa.11.9.insert.shift.i.i, %.sroa.11.8.insert.ext.i.i
  %129 = getelementptr inbounds nuw i8, ptr %i.rp, i64 10
  %130 = load i8, ptr %129, align 1, !tbaa !34
  %131 = xor i8 %130, -1
  %.sroa.11.10.insert.ext.i.i = zext i8 %131 to i64
  %.sroa.11.10.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.10.insert.ext.i.i, 16
  %.sroa.11.10.insert.insert.i.i = or disjoint i64 %.sroa.11.9.insert.insert.i.i, %.sroa.11.10.insert.shift.i.i
  %132 = getelementptr inbounds nuw i8, ptr %i.rp, i64 11
  %133 = load i8, ptr %132, align 1, !tbaa !34
  %134 = xor i8 %133, -1
  %.sroa.11.11.insert.ext.i.i = zext i8 %134 to i64
  %.sroa.11.11.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.11.insert.ext.i.i, 24
  %.sroa.11.11.insert.insert.i.i = or disjoint i64 %.sroa.11.10.insert.insert.i.i, %.sroa.11.11.insert.shift.i.i
  %135 = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = xor i8 %136, -1
  %.sroa.11.12.insert.ext.i.i = zext i8 %137 to i64
  %.sroa.11.12.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.12.insert.ext.i.i, 32
  %138 = getelementptr inbounds nuw i8, ptr %i.rp, i64 13
  %139 = load i8, ptr %138, align 1, !tbaa !34
  %140 = xor i8 %139, -1
  %.sroa.11.13.insert.ext.i.i = zext i8 %140 to i64
  %.sroa.11.13.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.13.insert.ext.i.i, 40
  %.sroa.11.13.insert.mask.i.i = or disjoint i64 %.sroa.11.11.insert.insert.i.i, %.sroa.11.12.insert.shift.i.i
  %141 = getelementptr inbounds nuw i8, ptr %i.rp, i64 14
  %142 = load i8, ptr %141, align 1, !tbaa !34
  %143 = xor i8 %142, -1
  %.sroa.11.14.insert.ext.i.i = zext i8 %143 to i64
  %.sroa.11.14.insert.shift.i.i = shl nuw nsw i64 %.sroa.11.14.insert.ext.i.i, 48
  %.sroa.11.14.insert.mask.i.i = or disjoint i64 %.sroa.11.13.insert.mask.i.i, %.sroa.11.13.insert.shift.i.i
  %.sroa.11.14.insert.insert.i.i = or i64 %.sroa.11.14.insert.mask.i.i, %.sroa.11.14.insert.shift.i.i
  %144 = getelementptr inbounds nuw i8, ptr %i.rp, i64 15
  %145 = load i8, ptr %144, align 1, !tbaa !34
  %146 = xor i8 %145, -1
  %.sroa.11.15.insert.ext.i.i = zext i8 %146 to i64
  %.sroa.11.15.insert.shift.i.i = shl nuw i64 %.sroa.11.15.insert.ext.i.i, 56
  %.sroa.11.15.insert.insert.i.i = or i64 %.sroa.11.14.insert.insert.i.i, %.sroa.11.15.insert.shift.i.i
  %i.ru = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.7.insert.insert.i.i)
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10uhugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

bb.dx:                                            ; preds = %bb.dv
  %.0.copyload.i.i.i10.i.i = load i64, ptr %i.rp, align 1
  %i.rv = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i10.i.i)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %.0.copyload.i.i2.i11.i.i = load i64, ptr %i.rw, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10uhugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10uhugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i: ; preds = %bb.dx, %bb.dw
  %.0.copyload.i.i2.i11.sink.i.i = phi i64 [ %.0.copyload.i.i2.i11.i.i, %bb.dx ], [ %.sroa.11.15.insert.insert.i.i, %bb.dw ]
  %.sink.i.i297 = phi i64 [ %i.rv, %bb.dx ], [ %i.ru, %bb.dw ]
  %i.rx = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i2.i11.sink.i.i)
  store i64 %i.rx, ptr %i.rq, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx.i.i298 = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %.sink.i.i297, ptr %.sroa.4.0..sroa_idx.i.i298, align 8, !tbaa !31
  %i.ry = load i64, ptr %i.qy, align 8, !tbaa !136
  %i.rz = add i64 %i.ry, 16
  store i64 %i.rz, ptr %i.qy, align 8, !tbaa !136
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_10uhugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i305
  %i.sa = add nuw i64 %.028.i296, 1               ; 2 uses
  %exitcond.not.i299 = icmp eq i64 %i.sa, %4
  br i1 %exitcond.not.i299, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.ds, !llvm.loop !352

bb.dz:                                            ; preds = %bb.a
  %i.sb = load i8, ptr %2, align 8, !tbaa !153
  %i.sc = icmp eq i8 %i.sb, 2
  br i1 %i.sc, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i307 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sd = load ptr, ptr %.in.i307, align 8, !tbaa !91
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i308 = icmp eq i64 %4, 0
  br i1 %.not.i308, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i309

.lr.ph.i309:                                      ; preds = %bb.eb
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ei, %.lr.ph.i309
  %.028.i310 = phi i64 [ 0, %.lr.ph.i309 ], [ %i.tm, %bb.ei ] ; 3 uses
  %i.sh = add i64 %.028.i310, %3                  ; 3 uses
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.028.i310 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !134 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 4 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !136 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !34
  %i.so = add i64 %i.sl, 1                        ; 2 uses
  store i64 %i.so, ptr %i.sk, align 8, !tbaa !136
  %i.sp = load i8, ptr %1, align 8, !tbaa !149
  %i.sq = icmp eq i8 %i.sn, %i.sp
  br i1 %i.sq, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.sr = load ptr, ptr %i.se, align 8, !tbaa !131 ; 2 uses
  %.not.i.i361 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i361, label %bb.ee, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i362

bb.ee:                                            ; preds = %bb.ed
  %i.ss = load i64, ptr %i.sg, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.se, i64 noundef %i.ss)
  %.pre.i.i363 = load ptr, ptr %i.se, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i362

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i362: ; preds = %bb.ee, %bb.ed
  %i.st = phi ptr [ %.pre.i.i363, %bb.ee ], [ %i.sr, %bb.ed ]
  %i.su = lshr i64 %i.sh, 6
  %i.sv = and i64 %i.sh, 63
  %i.sw = shl nuw i64 1, %i.sv
  %i.sx = xor i64 %i.sw, -1
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.su ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !31
  %i.ta = and i64 %i.sz, %i.sx
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !31
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ec
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.so ; 18 uses
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.sh ; 2 uses
  %i.td = load i8, ptr %i.sf, align 8, !tbaa !148, !range !154, !noundef !155
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %147 = load i8, ptr %i.tb, align 1, !tbaa !34
  %148 = xor i8 %147, -1
  %.sroa.0.0.insert.ext.i.i316 = zext i8 %148 to i64
  %149 = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !34
  %151 = xor i8 %150, -1
  %.sroa.0.1.insert.ext.i.i317 = zext i8 %151 to i64
  %.sroa.0.1.insert.shift.i.i318 = shl nuw nsw i64 %.sroa.0.1.insert.ext.i.i317, 8
  %.sroa.0.1.insert.insert.i.i319 = or disjoint i64 %.sroa.0.1.insert.shift.i.i318, %.sroa.0.0.insert.ext.i.i316
  %152 = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  %153 = load i8, ptr %152, align 1, !tbaa !34
  %154 = xor i8 %153, -1
  %.sroa.0.2.insert.ext.i.i320 = zext i8 %154 to i64
  %.sroa.0.2.insert.shift.i.i321 = shl nuw nsw i64 %.sroa.0.2.insert.ext.i.i320, 16
  %.sroa.0.2.insert.insert.i.i322 = or disjoint i64 %.sroa.0.1.insert.insert.i.i319, %.sroa.0.2.insert.shift.i.i321
  %155 = getelementptr inbounds nuw i8, ptr %i.tb, i64 3
  %156 = load i8, ptr %155, align 1, !tbaa !34
  %157 = xor i8 %156, -1
  %.sroa.0.3.insert.ext.i.i323 = zext i8 %157 to i64
  %.sroa.0.3.insert.shift.i.i324 = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i323, 24
  %.sroa.0.3.insert.insert.i.i325 = or disjoint i64 %.sroa.0.2.insert.insert.i.i322, %.sroa.0.3.insert.shift.i.i324
  %158 = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %159 = load i8, ptr %158, align 1, !tbaa !34
  %160 = xor i8 %159, -1
  %.sroa.0.4.insert.ext.i.i326 = zext i8 %160 to i64
  %.sroa.0.4.insert.shift.i.i327 = shl nuw nsw i64 %.sroa.0.4.insert.ext.i.i326, 32
  %161 = getelementptr inbounds nuw i8, ptr %i.tb, i64 5
  %162 = load i8, ptr %161, align 1, !tbaa !34
  %163 = xor i8 %162, -1
  %.sroa.0.5.insert.ext.i.i328 = zext i8 %163 to i64
  %.sroa.0.5.insert.shift.i.i329 = shl nuw nsw i64 %.sroa.0.5.insert.ext.i.i328, 40
  %.sroa.0.5.insert.mask.i.i330 = or disjoint i64 %.sroa.0.3.insert.insert.i.i325, %.sroa.0.4.insert.shift.i.i327
  %164 = getelementptr inbounds nuw i8, ptr %i.tb, i64 6
  %165 = load i8, ptr %164, align 1, !tbaa !34
  %166 = xor i8 %165, -1
  %.sroa.0.6.insert.ext.i.i331 = zext i8 %166 to i64
  %.sroa.0.6.insert.shift.i.i332 = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i331, 48
  %.sroa.0.6.insert.mask.i.i333 = or disjoint i64 %.sroa.0.5.insert.mask.i.i330, %.sroa.0.5.insert.shift.i.i329
  %.sroa.0.6.insert.insert.i.i334 = or i64 %.sroa.0.6.insert.mask.i.i333, %.sroa.0.6.insert.shift.i.i332
  %167 = getelementptr inbounds nuw i8, ptr %i.tb, i64 7
  %168 = load i8, ptr %167, align 1, !tbaa !34
  %169 = xor i8 %168, -1
  %.sroa.0.7.insert.ext.i.i335 = zext i8 %169 to i64
  %.sroa.0.7.insert.shift.i.i336 = shl nuw i64 %.sroa.0.7.insert.ext.i.i335, 56
  %.sroa.0.7.insert.insert.i.i337 = or i64 %.sroa.0.6.insert.insert.i.i334, %.sroa.0.7.insert.shift.i.i336
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %170 = load i8, ptr %i.tf, align 1, !tbaa !34
  %171 = xor i8 %170, -1
  %.sroa.11.8.insert.ext.i.i338 = zext i8 %171 to i64
  %172 = getelementptr inbounds nuw i8, ptr %i.tb, i64 9
  %173 = load i8, ptr %172, align 1, !tbaa !34
  %174 = xor i8 %173, -1
  %.sroa.11.9.insert.ext.i.i339 = zext i8 %174 to i64
  %.sroa.11.9.insert.shift.i.i340 = shl nuw nsw i64 %.sroa.11.9.insert.ext.i.i339, 8
  %.sroa.11.9.insert.insert.i.i341 = or disjoint i64 %.sroa.11.9.insert.shift.i.i340, %.sroa.11.8.insert.ext.i.i338
  %175 = getelementptr inbounds nuw i8, ptr %i.tb, i64 10
  %176 = load i8, ptr %175, align 1, !tbaa !34
  %177 = xor i8 %176, -1
  %.sroa.11.10.insert.ext.i.i342 = zext i8 %177 to i64
  %.sroa.11.10.insert.shift.i.i343 = shl nuw nsw i64 %.sroa.11.10.insert.ext.i.i342, 16
  %.sroa.11.10.insert.insert.i.i344 = or disjoint i64 %.sroa.11.9.insert.insert.i.i341, %.sroa.11.10.insert.shift.i.i343
  %178 = getelementptr inbounds nuw i8, ptr %i.tb, i64 11
  %179 = load i8, ptr %178, align 1, !tbaa !34
  %180 = xor i8 %179, -1
  %.sroa.11.11.insert.ext.i.i345 = zext i8 %180 to i64
  %.sroa.11.11.insert.shift.i.i346 = shl nuw nsw i64 %.sroa.11.11.insert.ext.i.i345, 24
  %.sroa.11.11.insert.insert.i.i347 = or disjoint i64 %.sroa.11.10.insert.insert.i.i344, %.sroa.11.11.insert.shift.i.i346
  %181 = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  %182 = load i8, ptr %181, align 1, !tbaa !34
  %183 = xor i8 %182, -1
  %.sroa.11.12.insert.ext.i.i348 = zext i8 %183 to i64
  %.sroa.11.12.insert.shift.i.i349 = shl nuw nsw i64 %.sroa.11.12.insert.ext.i.i348, 32
  %184 = getelementptr inbounds nuw i8, ptr %i.tb, i64 13
  %185 = load i8, ptr %184, align 1, !tbaa !34
  %186 = xor i8 %185, -1
  %.sroa.11.13.insert.ext.i.i350 = zext i8 %186 to i64
  %.sroa.11.13.insert.shift.i.i351 = shl nuw nsw i64 %.sroa.11.13.insert.ext.i.i350, 40
  %.sroa.11.13.insert.mask.i.i352 = or disjoint i64 %.sroa.11.11.insert.insert.i.i347, %.sroa.11.12.insert.shift.i.i349
  %187 = getelementptr inbounds nuw i8, ptr %i.tb, i64 14
  %188 = load i8, ptr %187, align 1, !tbaa !34
  %189 = xor i8 %188, -1
  %.sroa.11.14.insert.ext.i.i353 = zext i8 %189 to i64
  %.sroa.11.14.insert.shift.i.i354 = shl nuw nsw i64 %.sroa.11.14.insert.ext.i.i353, 48
  %.sroa.11.14.insert.mask.i.i355 = or disjoint i64 %.sroa.11.13.insert.mask.i.i352, %.sroa.11.13.insert.shift.i.i351
  %.sroa.11.14.insert.insert.i.i356 = or i64 %.sroa.11.14.insert.mask.i.i355, %.sroa.11.14.insert.shift.i.i354
  %190 = getelementptr inbounds nuw i8, ptr %i.tb, i64 15
  %191 = load i8, ptr %190, align 1, !tbaa !34
  %192 = xor i8 %191, -1
  %.sroa.11.15.insert.ext.i.i357 = zext i8 %192 to i64
  %.sroa.11.15.insert.shift.i.i358 = shl nuw i64 %.sroa.11.15.insert.ext.i.i357, 56
  %.sroa.11.15.insert.insert.i.i359 = or i64 %.sroa.11.14.insert.insert.i.i356, %.sroa.11.15.insert.shift.i.i358
  %.sroa.0.0.insert.insert.i.i.i.i.i360 = xor i64 %.sroa.0.7.insert.insert.i.i337, 128
  %i.tg = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i.i360)
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

bb.eh:                                            ; preds = %bb.ef
  %.0.copyload.i.i.i.i10.i.i311 = load i64, ptr %i.tb, align 1
  %.sroa.0.0.insert.insert.i.i.i11.i.i312 = xor i64 %.0.copyload.i.i.i.i10.i.i311, 128
  %i.th = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i.i11.i.i312)
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.0.copyload.i.i.i12.i.i = load i64, ptr %i.ti, align 1
  br label %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i

_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i: ; preds = %bb.eh, %bb.eg
  %.0.copyload.i.i.i12.sink.i.i = phi i64 [ %.0.copyload.i.i.i12.i.i, %bb.eh ], [ %.sroa.11.15.insert.insert.i.i359, %bb.eg ]
  %.sink.i.i313 = phi i64 [ %i.th, %bb.eh ], [ %i.tg, %bb.eg ]
  %i.tj = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i12.sink.i.i)
  store i64 %i.tj, ptr %i.tc, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx.i.i314 = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i64 %.sink.i.i313, ptr %.sroa.4.0..sroa_idx.i.i314, align 8, !tbaa !31
  %i.tk = load i64, ptr %i.sk, align 8, !tbaa !136
  %i.tl = add i64 %i.tk, 16
  store i64 %i.tl, ptr %i.sk, align 8, !tbaa !136
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123SortKeyConstantOperatorINS_9hugeint_tEE6DecodeEPKhRNS_6VectorERS2_b.exit.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i362
  %i.tm = add nuw i64 %.028.i310, 1               ; 2 uses
  %exitcond.not.i315 = icmp eq i64 %i.tm, %4
  br i1 %exitcond.not.i315, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %bb.ec, !llvm.loop !353

bb.ej:                                            ; preds = %bb.a
  %i.tn = load i8, ptr %i.c, align 8, !tbaa !84
  %i.to = icmp eq i8 %i.tn, 25
  %i.tp = load i8, ptr %2, align 8, !tbaa !153
  %i.tq = icmp eq i8 %i.tp, 2                     ; 2 uses
  br i1 %i.to, label %bb.ek, label %bb.ew

bb.ek:                                            ; preds = %bb.ej
  br i1 %i.tq, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %.in.i364 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tr = load ptr, ptr %.in.i364, align 8, !tbaa !91
  %i.ts = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not.i365 = icmp eq i64 %4, 0
  br i1 %.not.i365, label %_ZN6duckdb12_GLOBAL__N_122TemplatedDecodeSortKeyINS0_23SortKeyConstantOperatorIbEEEEvPNS0_17DecodeSortKeyDataERNS0_23DecodeSortKeyVectorDataERNS_6VectorEmm.exit, label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %bb.em
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.en

bb.en:                                            ; preds = %bb.ev, %.lr.ph.i366
  %.030.i = phi i64 [ 0, %.lr.ph.i366 ], [ %i.yv, %bb.ev ] ; 3 uses
  %i.tv = add i64 %.030.i, %3                     ; 3 uses
  %i.tw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.030.i ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !134 ; 3 uses
  %i.ty = ptrtoaddr ptr %i.tx to i64              ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 4 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !136 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !34
  %i.ud = add i64 %i.ua, 1                        ; 2 uses
  store i64 %i.ud, ptr %i.tz, align 8, !tbaa !136
  %i.ue = load i8, ptr %1, align 8, !tbaa !149
  %i.uf = icmp eq i8 %i.uc, %i.ue
  br i1 %i.uf, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.ug = load ptr, ptr %i.ts, align 8, !tbaa !131 ; 2 uses
  %.not.i.i369 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i369, label %bb.ep, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370

bb.ep:                                            ; preds = %bb.eo
  %i.uh = load i64, ptr %i.tu, align 8, !tbaa !132
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ts, i64 noundef %i.uh)
  %.pre.i.i371 = load ptr, ptr %i.ts, align 8, !tbaa !131
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i370: ; preds = %bb.ep, %bb.eo
  %i.ui = phi ptr [ %.pre.i.i371, %bb.ep ], [ %i.ug, %bb.eo ]
  %i.uj = lshr i64 %i.tv, 6
  %i.uk = and i64 %i.tv, 63
  %i.ul = shl nuw i64 1, %i.uk
  %i.um = xor i64 %i.ul, -1
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.uj ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !31
  %i.up = and i64 %i.uo, %i.um
  store i64 %i.up, ptr %i.un, align 8, !tbaa !31
  br label %bb.ev

bb.eq:                                            ; preds = %bb.en
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.ud ; 15 uses
  %i.ur = load i8, ptr %i.tt, align 8, !tbaa !148, !range !154, !noundef !155
  %i.us = trunc nuw i8 %i.ur to i1                ; 2 uses
  %spec.select.i.i = select i1 %i.us, i32 255, i32 0
  br label %bb.er

bb.er:                                            ; preds = %bb.er, %bb.eq
  %.024.i.i = phi i64 [ 0, %bb.eq ], [ %i.uw, %bb.er ] ; 23 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.024.i.i
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !34
  %i.uv = zext i8 %i.uu to i32
  %.not.i28.i = icmp eq i32 %spec.select.i.i, %i.uv
  %i.uw = add i64 %.024.i.i, 1                    ; 2 uses
  br i1 %.not.i28.i, label %bb.es, label %bb.er, !llvm.loop !354

bb.es:                                            ; preds = %bb.er
  %i.ux = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tv ; 4 uses
  %i.uy = tail call { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.024.i.i) ; 2 uses
  %i.uz = extractvalue { i64, ptr } %i.uy, 0      ; 2 uses
  %i.va = extractvalue { i64, ptr } %i.uy, 1      ; 2 uses
  store i64 %i.uz, ptr %i.ux, align 8
  %.sroa.4.0..sroa_idx.i.i367 = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  store ptr %i.va, ptr %.sroa.4.0..sroa_idx.i.i367, align 8, !tbaa !34
  %i.vb = trunc i64 %i.uz to i32
  %i.vc = icmp ult i32 %i.vb, 13
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 4 ; 3 uses
  %i.ve = select i1 %i.vc, ptr %i.vd, ptr %i.va   ; 15 uses
  %i.vf = ptrtoaddr ptr %i.ve to i64              ; 2 uses
  %.not26.i.i = icmp eq i64 %.024.i.i, 0
  br i1 %.not26.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.es
  %min.iters.check = icmp ult i64 %.024.i.i, 4    ; 2 uses
  br i1 %i.us, label %iter.check, label %iter.check607

iter.check607:                                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check, label %.lr.ph.split.i.i.preheader, label %vector.memcheck592

vector.memcheck592:                               ; preds = %iter.check607
  %i.vg = sub i64 %i.ua, %i.vf
  %i.vh = add i64 %i.vg, %i.ty
  %i.vi = add i64 %i.vh, 32
  %diff.check593 = icmp ult i64 %i.vi, 31
  br i1 %diff.check593, label %.lr.ph.split.i.i.preheader, label %vector.main.loop.iter.check595

vector.main.loop.iter.check595:                   ; preds = %vector.memcheck592
  %min.iters.check596 = icmp ult i64 %.024.i.i, 32
  br i1 %min.iters.check596, label %vec.epilog.ph611, label %vector.ph597

vector.ph597:                                     ; preds = %vector.main.loop.iter.check595
  %i.vj = and i64 %.024.i.i, 28
  %n.vec598 = and i64 %.024.i.i, -32              ; 4 uses
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next603, %vector.body599 ] ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uq, i64 %index600 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %wide.load601 = load <16 x i8>, ptr %i.vk, align 1, !tbaa !34
  %wide.load602 = load <16 x i8>, ptr %i.vl, align 1, !tbaa !34
  %i.vm = add <16 x i8> %wide.load601, splat (i8 -1)
  %i.vn = add <16 x i8> %wide.load602, splat (i8 -1)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 %index600 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store <16 x i8> %i.vm, ptr %i.vo, align 1, !tbaa !34
  store <16 x i8> %i.vn, ptr %i.vp, align 1, !tbaa !34
  %index.next603 = add nuw i64 %index600, 32      ; 2 uses
  %i.vq = icmp eq i64 %index.next603, %n.vec598
  br i1 %i.vq, label %middle.block604, label %vector.body599, !llvm.loop !355

middle.block604:                                  ; preds = %vector.body599
  %cmp.n605 = icmp eq i64 %.024.i.i, %n.vec598
  br i1 %cmp.n605, label %._crit_edge.i.i, label %vec.epilog.iter.check609

vec.epilog.iter.check609:                         ; preds = %middle.block604
  %min.epilog.iters.check610 = icmp eq i64 %i.vj, 0
  br i1 %min.epilog.iters.check610, label %.lr.ph.split.i.i.preheader, label %vec.epilog.ph611, !prof !163

vec.epilog.ph611:                                 ; preds = %vector.main.loop.iter.check595, %vec.epilog.iter.check609
  %vec.epilog.resume.val606 = phi i64 [ %n.vec598, %vec.epilog.iter.check609 ], [ 0, %vector.main.loop.iter.check595 ]
  %n.vec612 = and i64 %.024.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body613

vec.epilog.vector.body613:                        ; preds = %vec.epilog.vector.body613, %vec.epilog.ph611
  %index614 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph611 ], [ %index.next616, %vec.epilog.vector.body613 ] ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uq, i64 %index614
  %wide.load615 = load <4 x i8>, ptr %i.vr, align 1, !tbaa !34
  %i.vs = add <4 x i8> %wide.load615, splat (i8 -1)
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ve, i64 %index614
  store <4 x i8> %i.vs, ptr %i.vt, align 1, !tbaa !34
  %index.next616 = add nuw i64 %index614, 4       ; 2 uses
  %i.vu = icmp eq i64 %index.next616, %n.vec612
  br i1 %i.vu, label %vec.epilog.middle.block617, label %vec.epilog.vector.body613, !llvm.loop !356

vec.epilog.middle.block617:                       ; preds = %vec.epilog.vector.body613
  %cmp.n618 = icmp eq i64 %.024.i.i, %n.vec612
  br i1 %cmp.n618, label %._crit_edge.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %vector.memcheck592, %iter.check607, %vec.epilog.iter.check609, %vec.epilog.middle.block617
  %.125.i.i.ph = phi i64 [ 0, %iter.check607 ], [ 0, %vector.memcheck592 ], [ %n.vec598, %vec.epilog.iter.check609 ], [ %n.vec612, %vec.epilog.middle.block617 ] ; 3 uses
  %xtraiter = and i64 %.024.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol

.lr.ph.split.i.i.prol:                            ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i.prol
  %.125.i.i.prol = phi i64 [ %i.vz, %.lr.ph.split.i.i.prol ], [ %.125.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.i.prol ], [ 0, %.lr.ph.split.i.i.preheader ]
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.125.i.i.prol
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !34
  %i.vx = add i8 %i.vw, -1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.125.i.i.prol
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !34
  %i.vz = add nuw i64 %.125.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.i.prol.loopexit, label %.lr.ph.split.i.i.prol, !llvm.loop !357

.lr.ph.split.i.i.prol.loopexit:                   ; preds = %.lr.ph.split.i.i.prol, %.lr.ph.split.i.i.preheader
end_hunk_0
