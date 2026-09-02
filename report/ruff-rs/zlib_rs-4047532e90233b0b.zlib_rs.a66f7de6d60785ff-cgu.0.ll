Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-4047532e90233b0b.zlib_rs.a66f7de6d60785ff-cgu.0?download=true
inline.NumInlined: 179
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate16flush_block_only:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.0.0.i.i.i.i.i.i, i64 512, ptr nonnull align 8 @48) #21
  unreachable

_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i.i: ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate10encode_lenB3_.exit.i.i.i.i
  %i.ama = getelementptr inbounds nuw i8, ptr @47, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.amb = load i8, ptr %i.ama, align 1           ; 2 uses
  %i.amc = zext i8 %i.amb to i64                  ; 3 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %i.amc ; 2 uses
  %i.ame = load i16, ptr %i.amd, align 2
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 2
  %i.amg = load i16, ptr %i.amf, align 2
  %i.amh = zext i16 %i.ame to i64                 ; 2 uses
  %i.ami = zext i16 %i.amg to i64                 ; 3 uses
  %.not.i6.i.i.i.i = icmp samesign ult i8 %i.amb, 4
  br i1 %.not.i6.i.i.i.i, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i.i
  %i.amj = getelementptr inbounds nuw i8, ptr @43, i64 %i.amc
  %i.amk = load i8, ptr %i.amj, align 1
  %i.aml = zext i8 %i.amk to i64
  %i.amm = getelementptr inbounds nuw [2 x i8], ptr @66, i64 %i.amc
  %i.amn = load i16, ptr %i.amm, align 2
  %i.amo = sub i16 %i.alu, %i.amn
  %i.amp = zext i16 %i.amo to i64
  %i.amq = and i64 %i.ami, 63
  %i.amr = shl i64 %i.amp, %i.amq
  %i.ams = or i64 %i.amr, %i.amh
  %i.amt = add nuw nsw i64 %i.aml, %i.ami
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i.i

_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i.i: ; preds = %bb.gj, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i = phi i64 [ %i.amt, %bb.gj ], [ %i.ami, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i.i ]
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ams, %bb.gj ], [ %i.amh, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i.i ]
  %i.amu = and i64 %.sroa.05.0.i.i.i.i.i, 63
  %i.amv = shl i64 %.sroa.04.0.i.i.i.i.i, %i.amu
  %i.amw = or i64 %i.amv, %.sroa.03.0.i.i.i.i.i   ; 2 uses
  %i.amx = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i, %.sroa.05.0.i.i.i.i.i
  %i.amy = trunc i64 %i.amx to i8
  %i.amz = load i8, ptr %i.ajn, align 8           ; 2 uses
  %i.ana = add i8 %i.amz, %i.amy                  ; 3 uses
  %i.anb = icmp ult i8 %i.ana, 64
  br i1 %i.anb, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i.i
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr nonnull align 8 %i.ajh, i64 %i.amw, i8 %i.ana)
  br label %.backedge.i.i90.i

bb.gl:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i.i
  %i.anc = and i8 %i.amz, 63
  %i.and = zext nneg i8 %i.anc to i64
  %i.ane = shl i64 %i.amw, %i.and
  %i.anf = load i64, ptr %i.ajo, align 8
  %i.ang = or i64 %i.anf, %i.ane
  store i64 %i.ang, ptr %i.ajo, align 8
  store i8 %i.ana, ptr %i.ajn, align 8
  br label %.backedge.i.i90.i

_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i: ; preds = %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ha

bb.gm:                                            ; preds = %bb.fe, %.thread103.i
  %i.anh = phi ptr [ %.pre539.i, %.thread103.i ], [ %.pre540.i, %bb.fe ] ; 3 uses
  %i.ani = zext i1 %1 to i64
  %i.anj = or disjoint i64 %i.ani, 2              ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anh, i64 184 ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 8           ; 2 uses
  %i.anm = add i8 %i.anl, 3                       ; 3 uses
  %i.ann = icmp ult i8 %i.anm, 64
  br i1 %i.ann, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 144
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr nonnull align 8 %i.ano, i64 %i.anj, i8 %i.anm)
  br label %_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit92.i

bb.go:                                            ; preds = %bb.gm
  %i.anp = and i8 %i.anl, 63
  %i.anq = zext nneg i8 %i.anp to i64
  %i.anr = shl i64 %i.anj, %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anh, i64 176 ; 2 uses
  %i.ant = load i64, ptr %i.ans, align 8
  %i.anu = or i64 %i.ant, %i.anr
  store i64 %i.anu, ptr %i.ans, align 8
  store i8 %i.anm, ptr %i.ank, align 8
  br label %_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit92.i

_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit92.i: ; preds = %bb.go, %bb.gn
  %i.anv = load ptr, ptr %i.ac, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 104
  call void @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate7sym_bufNtB2_6SymBuf4iterB6_(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.anw)
  call void @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter11ChunksExacthENCNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate7sym_bufNtB1R_6SymBuf4iter0ENtB2_12IntoIterator9into_iterB1V_(ptr nonnull sret([40 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.anx = call i48 @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate7sym_bufNtB1B_6SymBuf4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_(ptr nonnull align 8 %i.a) ; 3 uses
  %i.any = trunc i48 %i.anx to i1
  br i1 %i.any, label %.lr.ph.i94.i, label %._crit_edge.i93.i

.lr.ph.i94.i:                                     ; preds = %_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit92.i
  %.sroa.23.0.extract.shift6.i.i = lshr i48 %i.anx, 16
  %.sroa.23.0.extract.trunc7.i.i = trunc i48 %.sroa.23.0.extract.shift6.i.i to i16
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anv, i64 144 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anv, i64 184 ; 4 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anv, i64 176 ; 4 uses
  br label %bb.gp

bb.gp:                                            ; preds = %.backedge.i96.i, %.lr.ph.i94.i
  %.sroa.34.0.extract.shift10.in.i.i = phi i48 [ %i.anx, %.lr.ph.i94.i ], [ %i.aoy, %.backedge.i96.i ]
  %.sroa.23.0.extract.trunc9.i.i = phi i16 [ %.sroa.23.0.extract.trunc7.i.i, %.lr.ph.i94.i ], [ %.sroa.23.0.extract.trunc.i.i, %.backedge.i96.i ] ; 3 uses
  %.sroa.34.0.extract.shift10.i.i = lshr i48 %.sroa.34.0.extract.shift10.in.i.i, 32
  %i.aoc = icmp eq i16 %.sroa.23.0.extract.trunc9.i.i, 0
  %i.aod = and i48 %.sroa.34.0.extract.shift10.i.i, 255
  %i.aoe = zext nneg i48 %i.aod to i64            ; 2 uses
  br i1 %i.aoc, label %bb.gs, label %bb.gv

._crit_edge.i93.i:                                ; preds = %.backedge.i96.i, %_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter9emit_tree.exit92.i
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anv, i64 184 ; 2 uses
  %i.aog = load i8, ptr %i.aof, align 8
  %i.aoh = add i8 %i.aog, 7                       ; 3 uses
  %i.aoi = icmp ult i8 %i.aoh, 64
  br i1 %i.aoi, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %._crit_edge.i93.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anv, i64 144
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr nonnull align 8 %i.aoj, i64 0, i8 %i.aoh)
  br label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State27compress_block_static_trees.exit.i

bb.gr:                                            ; preds = %._crit_edge.i93.i
  store i8 %i.aoh, ptr %i.aof, align 8
  br label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State27compress_block_static_trees.exit.i

bb.gs:                                            ; preds = %bb.gp
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr @32, i64 %i.aoe ; 2 uses
  %i.aol = load i16, ptr %i.aok, align 2
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 2
  %i.aon = load i16, ptr %i.aom, align 2
  %i.aoo = zext i16 %i.aol to i64                 ; 2 uses
  %i.aop = trunc i16 %i.aon to i8
  %i.aoq = load i8, ptr %i.aoa, align 8           ; 2 uses
  %i.aor = add i8 %i.aoq, %i.aop                  ; 3 uses
  %i.aos = icmp ult i8 %i.aor, 64
  br i1 %i.aos, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr nonnull align 8 %i.anz, i64 %i.aoo, i8 %i.aor)
  br label %.backedge.i96.i

bb.gu:                                            ; preds = %bb.gs
  %i.aot = and i8 %i.aoq, 63
  %i.aou = zext nneg i8 %i.aot to i64
  %i.aov = shl i64 %i.aoo, %i.aou
  %i.aow = load i64, ptr %i.aob, align 8
  %i.aox = or i64 %i.aow, %i.aov
  store i64 %i.aox, ptr %i.aob, align 8
  store i8 %i.aor, ptr %i.aoa, align 8
  br label %.backedge.i96.i

.backedge.i96.i:                                  ; preds = %bb.gz, %bb.gy, %bb.gu, %bb.gt
  %i.aoy = call i48 @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter11ChunksExacthENCNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate7sym_bufNtB1B_6SymBuf4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_(ptr nonnull align 8 %i.a) ; 3 uses
  %.sroa.23.0.extract.shift.i.i = lshr i48 %i.aoy, 16
  %.sroa.23.0.extract.trunc.i.i = trunc i48 %.sroa.23.0.extract.shift.i.i to i16
  %i.aoz = trunc i48 %i.aoy to i1
  br i1 %i.aoz, label %bb.gp, label %._crit_edge.i93.i

bb.gv:                                            ; preds = %bb.gp
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr @28, i64 %i.aoe ; 2 uses
  %i.apb = load i16, ptr %i.apa, align 2
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  %i.apd = load i16, ptr %i.apc, align 2          ; 2 uses
  %i.ape = zext i16 %i.apb to i64
  %i.apf = add i16 %.sroa.23.0.extract.trunc9.i.i, -1 ; 2 uses
  %i.apg = zext i16 %i.apf to i64                 ; 2 uses
  %i.aph = icmp ult i16 %.sroa.23.0.extract.trunc9.i.i, 257
  %i.api = lshr i64 %i.apg, 7
  %i.apj = add nuw nsw i64 %i.api, 256
  %.sroa.0.0.i.i.i.i.i = select i1 %i.aph, i64 %i.apg, i64 %i.apj ; 3 uses
  %i.apk = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i, 512
  br i1 %i.apk, label %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.sroa.0.0.i.i.i.i.i, i64 512, ptr nonnull align 8 @48) #21
  unreachable

_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i: ; preds = %bb.gv
  %i.apl = getelementptr inbounds nuw i8, ptr @47, i64 %.sroa.0.0.i.i.i.i.i
  %i.apm = load i8, ptr %i.apl, align 1           ; 2 uses
  %i.apn = zext i8 %i.apm to i64                  ; 3 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr @29, i64 %i.apn
  %i.app = load i16, ptr %i.apo, align 2
  %i.apq = zext i16 %i.app to i64                 ; 2 uses
  %.not.i.i.i95.i = icmp samesign ult i8 %i.apm, 4
  br i1 %.not.i.i.i95.i, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i
  %i.apr = getelementptr inbounds nuw i8, ptr @43, i64 %i.apn
  %i.aps = load i8, ptr %i.apr, align 1
  %2 = zext i8 %i.aps to i16
  %i.apt = getelementptr inbounds nuw [2 x i8], ptr @66, i64 %i.apn
  %i.apu = load i16, ptr %i.apt, align 2
  %i.apv = sub i16 %i.apf, %i.apu
  %i.apw = zext i16 %i.apv to i64
  %i.apx = shl nuw nsw i64 %i.apw, 5
  %i.apy = or i64 %i.apx, %i.apq
  %3 = add nuw nsw i16 %2, 5
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i

_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i: ; preds = %bb.gx, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i
  %.sroa.06.0.i.i.i.i = phi i16 [ %3, %bb.gx ], [ 5, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i ]
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.apy, %bb.gx ], [ %i.apq, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State6d_code.exit.i.i.i.i ]
  %i.apz = and i16 %i.apd, 63
  %i.aqa = zext nneg i16 %i.apz to i64
  %i.aqb = shl i64 %.sroa.04.0.i.i.i.i, %i.aqa
  %i.aqc = or i64 %i.aqb, %i.ape                  ; 2 uses
  %4 = add i16 %.sroa.06.0.i.i.i.i, %i.apd
  %5 = trunc i16 %4 to i8
  %i.aqd = load i8, ptr %i.aoa, align 8           ; 2 uses
  %i.aqe = add i8 %i.aqd, %5                      ; 3 uses
  %i.aqf = icmp ult i8 %i.aqe, 64
  br i1 %i.aqf, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter18send_bits_overflow(ptr nonnull align 8 %i.anz, i64 %i.aqc, i8 %i.aqe)
  br label %.backedge.i96.i

bb.gz:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate11encode_distB3_.exit.i.i.i
  %i.aqg = and i8 %i.aqd, 63
  %i.aqh = zext nneg i8 %i.aqg to i64
  %i.aqi = shl i64 %i.aqc, %i.aqh
  %i.aqj = load i64, ptr %i.aob, align 8
  %i.aqk = or i64 %i.aqj, %i.aqi
  store i64 %i.aqk, ptr %i.aob, align 8
  store i8 %i.aqe, ptr %i.aoa, align 8
  br label %.backedge.i96.i

_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State27compress_block_static_trees.exit.i: ; preds = %bb.gr, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ha

bb.ha:                                            ; preds = %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State27compress_block_static_trees.exit.i, %_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State28compress_block_dynamic_trees.exit.i, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionjE6unwrapCsehVNULHUZqJ_7zlib_rs.exit.i
  %i.aql = load ptr, ptr %i.ac, align 8
  call fastcc void @_RNvMs7_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_5State10init_block(ptr align 64 %i.aql)
  br i1 %1, label %bb.hb, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate18zng_tr_flush_block.exit

bb.hb:                                            ; preds = %bb.ha
  %i.aqm = load ptr, ptr %i.ac, align 8
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 144
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter10emit_align(ptr nonnull align 8 %i.aqn)
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate18zng_tr_flush_block.exit

_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate18zng_tr_flush_block.exit: ; preds = %bb.ha, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.aqo = load ptr, ptr %i.ac, align 8           ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 16
  %i.aqq = load i64, ptr %i.aqp, align 16
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqo, i64 96
  store i64 %i.aqq, ptr %i.aqr, align 32
  %i.aqs = load ptr, ptr %i.ac, align 8
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 144
  call fastcc void @_RNvMs5_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_9BitWriter10flush_bits(ptr nonnull align 8 %i.aqt)
  %i.aqu = load ptr, ptr %i.ac, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 144
  %i.aqw = call { ptr, i64 } @_RNvMNtNtCsehVNULHUZqJ_7zlib_rs7deflate7pendingNtB2_7Pending7pending(ptr nonnull align 8 %i.aqv) ; 2 uses
  %i.aqx = extractvalue { ptr, i64 } %i.aqw, 1
  %i.aqy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aqz = load i32, ptr %i.aqy, align 8
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsehVNULHUZqJ_7zlib_rs(i64 %i.aqx, i64 %i.ara) ; 8 uses
  %i.arc = icmp eq i64 %i.arb, 0
  br i1 %i.arc, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13flush_pending.exit, label %bb.hc

bb.hc:                                            ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate18zng_tr_flush_block.exit
  %i.ard = extractvalue { ptr, i64 } %i.aqw, 0
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.arf = load ptr, ptr %i.are, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.arf, ptr noundef nonnull align 1 dereferenceable(1) %i.ard, i64 range(i64 1, 0) %i.arb, i1 false)
  %i.arg = load ptr, ptr %i.are, align 8
  %i.arh = getelementptr i8, ptr %i.arg, i64 %i.arb
  store ptr %i.arh, ptr %i.are, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.arj = load i64, ptr %i.ari, align 8
  %i.ark = add i64 %i.arj, %i.arb
  store i64 %i.ark, ptr %i.ari, align 8
  %i.arl = trunc i64 %i.arb to i32
  %i.arm = load i32, ptr %i.aqy, align 8
  %i.arn = sub i32 %i.arm, %i.arl
  store i32 %i.arn, ptr %i.aqy, align 8
  %i.aro = load ptr, ptr %i.ac, align 8           ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 160 ; 3 uses
  %i.arq = load i64, ptr %i.arp, align 8
  %i.arr = add i64 %i.arq, %i.arb
  store i64 %i.arr, ptr %i.arp, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aro, i64 168 ; 2 uses
  %i.art = load i64, ptr %i.ars, align 8          ; 2 uses
  %i.aru = sub i64 %i.art, %i.arb
  store i64 %i.aru, ptr %i.ars, align 8
  %i.arv = icmp eq i64 %i.art, %i.arb
  br i1 %i.arv, label %bb.hd, label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13flush_pending.exit

bb.hd:                                            ; preds = %bb.hc
  store i64 0, ptr %i.arp, align 8
  br label %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13flush_pending.exit

_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate13flush_pending.exit: ; preds = %_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate18zng_tr_flush_block.exit, %bb.hc, %bb.hd
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate19compress_bound_help(i64 %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.split5, label %.split

.split:                                           ; preds = %bb.a
  %i.b = icmp ult i64 %0, 9
  br i1 %i.b, label %.split5, label %.split7

.split5:                                          ; preds = %bb.a, %.split
  %phi.call10 = phi i64 [ %0, %.split ], [ 1, %bb.a ]
  %i.c = add nuw nsw i64 %phi.call10, 1
  br label %.split7

.split7:                                          ; preds = %.split, %.split5
  %phi.call8 = phi i64 [ %i.c, %.split5 ], [ %0, %.split ]
  %i.d = add i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = add i64 %1, 3
  %i.g = add i64 %i.f, %i.e
  %i.h = add i64 %i.g, %phi.call8
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate19compress_with_flush(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree readonly align 4 captures(none) %5, i8 %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %i.e = alloca [112 x i8], align 8               ; 12 uses
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false)
  %i.l = call i32 @_RNvNtCsehVNULHUZqJ_7zlib_rs7deflate4init(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.b)
  store i32 %i.l, ptr %i.d, align 4
  %i.m = call zeroext i1 @_RNvYNtCsehVNULHUZqJ_7zlib_rs10ReturnCodeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB4_(ptr nonnull align 4 %i.d, ptr nonnull align 4 @21)
  br i1 %i.m, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = load i32, ptr %i.d, align 4
  br label %bb.n

.preheader:                                       ; preds = %bb.a, %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread
  %.sroa.02.0 = phi i64 [ %.sroa.02.1, %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread ], [ %4, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread ], [ %2, %bb.a ] ; 3 uses
  %i.p = load i32, ptr %i.i, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader
  %.sroa.0.1 = phi i64 [ %i.w, %bb.d ], [ %.sroa.0.0, %.preheader ]
  %i.r = load i32, ptr %i.f, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.t = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCsehVNULHUZqJ_7zlib_rs(i64 %.sroa.0.0, i64 4294967295) ; 2 uses
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 8
  %i.v = and i64 %i.t, 4294967295
  %i.w = sub i64 %.sroa.0.0, %i.v
  br label %bb.c

bb.e:                                             ; preds = %bb.i, %bb.c
  %.sroa.02.1 = phi i64 [ %i.al, %bb.i ], [ %.sroa.02.0, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.sroa.02.1, 0
  %. = select i1 %.not, i8 %6, i8 0
  %i.x = call align 8 ptr @_RNvMNtNtCs4NRVxsYgnAr_4core3ptr7mut_ptrONtNtCsehVNULHUZqJ_7zlib_rs5c_api8z_stream6as_refBG_(ptr nonnull %i.e)
  %i.y = call align 8 ptr @_RNvXsJ_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionRNtNtCsehVNULHUZqJ_7zlib_rs5c_api8z_streamENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr align 8 %i.x) ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionFUKCONtNtB4_3ffi6c_voidmmEBL_E7is_noneCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.aa)
  br i1 %i.ab, label %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ad = call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionFUKCONtNtB4_3ffi6c_voidBL_EuE7is_noneCsehVNULHUZqJ_7zlib_rs(ptr nonnull align 8 %i.ac)
  br i1 %i.ad, label %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call zeroext i1 @_RNvMNtNtCs4NRVxsYgnAr_4core3ptr7mut_ptrONtNtCsehVNULHUZqJ_7zlib_rs5c_api14internal_state7is_nullBG_(ptr %i.af)
  br i1 %i.ag, label %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread, label %_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15.thread18

_RNvMs0_NtCsehVNULHUZqJ_7zlib_rs7deflateNtB5_13DeflateStream15from_stream_mut.exit15: ; preds = %bb.e
  %i.ah = call align 8 ptr @_RNvXsK_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionQNtNtCsehVNULHUZqJ_7zlib_rs7deflate13DeflateStreamEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleEE13from_residualBP_() ; 2 uses
end_hunk_0
