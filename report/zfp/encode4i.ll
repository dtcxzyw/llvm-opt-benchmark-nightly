Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode4i?download=true
inline.NumInlined: 39
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 45
begin_hunk_0_@zfp_encode_block_int32_4:bb.a
  %wide.load489.2 = load <4 x i32>, ptr %next.gep.2, align 64, !tbaa !9
  %wide.load490.2 = load <4 x i32>, ptr %i.aml, align 16, !tbaa !9
  %i.amm = or <4 x i32> %wide.load489.2, %i.amj
  %i.amn = or <4 x i32> %wide.load490.2, %i.amk
  %next.gep.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.amo = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %wide.load489.3 = load <4 x i32>, ptr %next.gep.3, align 32, !tbaa !9
  %wide.load490.3 = load <4 x i32>, ptr %i.amo, align 16, !tbaa !9
  %i.amp = or <4 x i32> %wide.load489.3, %i.amm
  %i.amq = or <4 x i32> %wide.load490.3, %i.amn
  %next.gep.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.amr = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %wide.load489.4 = load <4 x i32>, ptr %next.gep.4, align 128, !tbaa !9
  %wide.load490.4 = load <4 x i32>, ptr %i.amr, align 16, !tbaa !9
  %i.ams = or <4 x i32> %wide.load489.4, %i.amp
  %i.amt = or <4 x i32> %wide.load490.4, %i.amq
  %next.gep.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.amu = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %wide.load489.5 = load <4 x i32>, ptr %next.gep.5, align 32, !tbaa !9
  %wide.load490.5 = load <4 x i32>, ptr %i.amu, align 16, !tbaa !9
  %i.amv = or <4 x i32> %wide.load489.5, %i.ams
  %i.amw = or <4 x i32> %wide.load490.5, %i.amt
  %next.gep.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.amx = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %wide.load489.6 = load <4 x i32>, ptr %next.gep.6, align 64, !tbaa !9
  %wide.load490.6 = load <4 x i32>, ptr %i.amx, align 16, !tbaa !9
  %i.amy = or <4 x i32> %wide.load489.6, %i.amv
  %i.amz = or <4 x i32> %wide.load490.6, %i.amw
  %next.gep.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ana = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %wide.load489.7 = load <4 x i32>, ptr %next.gep.7, align 32, !tbaa !9
  %wide.load490.7 = load <4 x i32>, ptr %i.ana, align 16, !tbaa !9
  %i.anb = or <4 x i32> %wide.load489.7, %i.amy
  %i.anc = or <4 x i32> %wide.load490.7, %i.amz
  %next.gep.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.and = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %wide.load489.8 = load <4 x i32>, ptr %next.gep.8, align 256, !tbaa !9
  %wide.load490.8 = load <4 x i32>, ptr %i.and, align 16, !tbaa !9
  %i.ane = or <4 x i32> %wide.load489.8, %i.anb
  %i.anf = or <4 x i32> %wide.load490.8, %i.anc
  %next.gep.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ang = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %wide.load489.9 = load <4 x i32>, ptr %next.gep.9, align 32, !tbaa !9
  %wide.load490.9 = load <4 x i32>, ptr %i.ang, align 16, !tbaa !9
  %i.anh = or <4 x i32> %wide.load489.9, %i.ane
  %i.ani = or <4 x i32> %wide.load490.9, %i.anf
  %next.gep.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.anj = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %wide.load489.10 = load <4 x i32>, ptr %next.gep.10, align 64, !tbaa !9
  %wide.load490.10 = load <4 x i32>, ptr %i.anj, align 16, !tbaa !9
  %i.ank = or <4 x i32> %wide.load489.10, %i.anh
  %i.anl = or <4 x i32> %wide.load490.10, %i.ani
  %next.gep.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.anm = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %wide.load489.11 = load <4 x i32>, ptr %next.gep.11, align 32, !tbaa !9
  %wide.load490.11 = load <4 x i32>, ptr %i.anm, align 16, !tbaa !9
  %i.ann = or <4 x i32> %wide.load489.11, %i.ank
  %i.ano = or <4 x i32> %wide.load490.11, %i.anl
  %next.gep.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.anp = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %wide.load489.12 = load <4 x i32>, ptr %next.gep.12, align 128, !tbaa !9
  %wide.load490.12 = load <4 x i32>, ptr %i.anp, align 16, !tbaa !9
  %i.anq = or <4 x i32> %wide.load489.12, %i.ann
  %i.anr = or <4 x i32> %wide.load490.12, %i.ano
  %next.gep.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ans = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %wide.load489.13 = load <4 x i32>, ptr %next.gep.13, align 32, !tbaa !9
  %wide.load490.13 = load <4 x i32>, ptr %i.ans, align 16, !tbaa !9
  %i.ant = or <4 x i32> %wide.load489.13, %i.anq
  %i.anu = or <4 x i32> %wide.load490.13, %i.anr
  %next.gep.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.anv = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %wide.load489.14 = load <4 x i32>, ptr %next.gep.14, align 64, !tbaa !9
  %wide.load490.14 = load <4 x i32>, ptr %i.anv, align 16, !tbaa !9
  %i.anw = or <4 x i32> %wide.load489.14, %i.ant
  %i.anx = or <4 x i32> %wide.load490.14, %i.anu
  %next.gep.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.any = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %wide.load489.15 = load <4 x i32>, ptr %next.gep.15, align 32, !tbaa !9
  %wide.load490.15 = load <4 x i32>, ptr %i.any, align 16, !tbaa !9
  %i.anz = or <4 x i32> %wide.load489.15, %i.anw
  %i.aoa = or <4 x i32> %wide.load490.15, %i.anx
  %next.gep.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.aob = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  %wide.load489.16 = load <4 x i32>, ptr %next.gep.16, align 256, !tbaa !9
  %wide.load490.16 = load <4 x i32>, ptr %i.aob, align 16, !tbaa !9
  %i.aoc = or <4 x i32> %wide.load489.16, %i.anz
  %i.aod = or <4 x i32> %wide.load490.16, %i.aoa
  %next.gep.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  %wide.load489.17 = load <4 x i32>, ptr %next.gep.17, align 32, !tbaa !9
  %wide.load490.17 = load <4 x i32>, ptr %i.aoe, align 16, !tbaa !9
  %i.aof = or <4 x i32> %wide.load489.17, %i.aoc
  %i.aog = or <4 x i32> %wide.load490.17, %i.aod
  %next.gep.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %wide.load489.18 = load <4 x i32>, ptr %next.gep.18, align 64, !tbaa !9
  %wide.load490.18 = load <4 x i32>, ptr %i.aoh, align 16, !tbaa !9
  %i.aoi = or <4 x i32> %wide.load489.18, %i.aof
  %i.aoj = or <4 x i32> %wide.load490.18, %i.aog
  %next.gep.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.aok = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %wide.load489.19 = load <4 x i32>, ptr %next.gep.19, align 32, !tbaa !9
  %wide.load490.19 = load <4 x i32>, ptr %i.aok, align 16, !tbaa !9
  %i.aol = or <4 x i32> %wide.load489.19, %i.aoi
  %i.aom = or <4 x i32> %wide.load490.19, %i.aoj
  %next.gep.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.aon = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %wide.load489.20 = load <4 x i32>, ptr %next.gep.20, align 128, !tbaa !9
  %wide.load490.20 = load <4 x i32>, ptr %i.aon, align 16, !tbaa !9
  %i.aoo = or <4 x i32> %wide.load489.20, %i.aol
  %i.aop = or <4 x i32> %wide.load490.20, %i.aom
  %next.gep.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %wide.load489.21 = load <4 x i32>, ptr %next.gep.21, align 32, !tbaa !9
  %wide.load490.21 = load <4 x i32>, ptr %i.aoq, align 16, !tbaa !9
  %i.aor = or <4 x i32> %wide.load489.21, %i.aoo
  %i.aos = or <4 x i32> %wide.load490.21, %i.aop
  %next.gep.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.aot = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %wide.load489.22 = load <4 x i32>, ptr %next.gep.22, align 64, !tbaa !9
  %wide.load490.22 = load <4 x i32>, ptr %i.aot, align 16, !tbaa !9
  %i.aou = or <4 x i32> %wide.load489.22, %i.aor
  %i.aov = or <4 x i32> %wide.load490.22, %i.aos
  %next.gep.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.aow = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %wide.load489.23 = load <4 x i32>, ptr %next.gep.23, align 32, !tbaa !9
  %wide.load490.23 = load <4 x i32>, ptr %i.aow, align 16, !tbaa !9
  %i.aox = or <4 x i32> %wide.load489.23, %i.aou
  %i.aoy = or <4 x i32> %wide.load490.23, %i.aov
  %next.gep.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %wide.load489.24 = load <4 x i32>, ptr %next.gep.24, align 256, !tbaa !9
  %wide.load490.24 = load <4 x i32>, ptr %i.aoz, align 16, !tbaa !9
  %i.apa = or <4 x i32> %wide.load489.24, %i.aox
  %i.apb = or <4 x i32> %wide.load490.24, %i.aoy
  %next.gep.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  %i.apc = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %wide.load489.25 = load <4 x i32>, ptr %next.gep.25, align 32, !tbaa !9
  %wide.load490.25 = load <4 x i32>, ptr %i.apc, align 16, !tbaa !9
  %i.apd = or <4 x i32> %wide.load489.25, %i.apa
  %i.ape = or <4 x i32> %wide.load490.25, %i.apb
  %next.gep.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.apf = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %wide.load489.26 = load <4 x i32>, ptr %next.gep.26, align 64, !tbaa !9
  %wide.load490.26 = load <4 x i32>, ptr %i.apf, align 16, !tbaa !9
  %i.apg = or <4 x i32> %wide.load489.26, %i.apd
  %i.aph = or <4 x i32> %wide.load490.26, %i.ape
  %next.gep.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  %i.api = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %wide.load489.27 = load <4 x i32>, ptr %next.gep.27, align 32, !tbaa !9
  %wide.load490.27 = load <4 x i32>, ptr %i.api, align 16, !tbaa !9
  %i.apj = or <4 x i32> %wide.load489.27, %i.apg
  %i.apk = or <4 x i32> %wide.load490.27, %i.aph
  %next.gep.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.apl = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %wide.load489.28 = load <4 x i32>, ptr %next.gep.28, align 128, !tbaa !9
  %wide.load490.28 = load <4 x i32>, ptr %i.apl, align 16, !tbaa !9
  %i.apm = or <4 x i32> %wide.load489.28, %i.apj
  %i.apn = or <4 x i32> %wide.load490.28, %i.apk
  %next.gep.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.apo = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %wide.load489.29 = load <4 x i32>, ptr %next.gep.29, align 32, !tbaa !9
  %wide.load490.29 = load <4 x i32>, ptr %i.apo, align 16, !tbaa !9
  %i.app = or <4 x i32> %wide.load489.29, %i.apm
  %i.apq = or <4 x i32> %wide.load490.29, %i.apn
  %next.gep.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.apr = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  %wide.load489.30 = load <4 x i32>, ptr %next.gep.30, align 64, !tbaa !9
  %wide.load490.30 = load <4 x i32>, ptr %i.apr, align 16, !tbaa !9
  %i.aps = or <4 x i32> %wide.load489.30, %i.app
  %i.apt = or <4 x i32> %wide.load490.30, %i.apq
  %next.gep.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  %i.apu = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %wide.load489.31 = load <4 x i32>, ptr %next.gep.31, align 32, !tbaa !9
  %wide.load490.31 = load <4 x i32>, ptr %i.apu, align 16, !tbaa !9
  %i.apv = or <4 x i32> %wide.load489.31, %i.aps
  %i.apw = or <4 x i32> %wide.load490.31, %i.apt
  %bin.rdx = or <4 x i32> %i.apw, %i.apv
  %i.apx = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %.not1824.i.i = icmp eq i32 %i.apx, 0
  br i1 %.not1824.i.i, label %rev_precision_uint32.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %vector.body487, %select.unfold.i.i
  %.127.i.i = phi i32 [ %spec.select20.i.i, %select.unfold.i.i ], [ %i.apx, %vector.body487 ] ; 2 uses
  %.01226.i.i = phi i32 [ %i.aqb, %select.unfold.i.i ], [ 32, %vector.body487 ] ; 3 uses
  %.01325.i.i = phi i32 [ %spec.select.i.i, %select.unfold.i.i ], [ 0, %vector.body487 ]
  %i.apy = add nsw i32 %.01226.i.i, -1
  %i.apz = shl i32 %.127.i.i, %i.apy              ; 2 uses
  %.not19.i.i = icmp eq i32 %i.apz, 0             ; 2 uses
  %i.aqa = shl i32 %i.apz, 1
  %i.aqb = lshr i32 %.01226.i.i, 1
  %i.aqc = select i1 %.not19.i.i, i32 0, i32 %.01226.i.i
  %spec.select.i.i = add i32 %i.aqc, %.01325.i.i  ; 2 uses
  %spec.select20.i.i = select i1 %.not19.i.i, i32 %.127.i.i, i32 %i.aqa ; 2 uses
  %.not18.i.i = icmp eq i32 %spec.select20.i.i, 0
  br i1 %.not18.i.i, label %rev_precision_uint32.exit.loopexit.i, label %select.unfold.i.i

rev_precision_uint32.exit.loopexit.i:             ; preds = %select.unfold.i.i
  %i.aqd = tail call i32 @llvm.umin.i32(i32 %spec.select.i.i, i32 %i.m)
  %i.aqe = tail call i32 @llvm.umax.i32(i32 %i.aqd, i32 1)
  br label %rev_precision_uint32.exit.i

rev_precision_uint32.exit.i:                      ; preds = %rev_precision_uint32.exit.loopexit.i, %vector.body487
  %.013.lcssa.i.i = phi i32 [ 1, %vector.body487 ], [ %i.aqe, %rev_precision_uint32.exit.loopexit.i ] ; 2 uses
  %2 = add i32 %.013.lcssa.i.i, -1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.aqf = load i64, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  %i.aqg = shl i64 %3, %i.aqf
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !30
  %i.aqj = add i64 %i.aqg, %i.aqi                 ; 2 uses
  %i.aqk = add i64 %i.aqf, 5                      ; 3 uses
  store i64 %i.aqk, ptr %i.h, align 8, !tbaa !29
  %i.aql = icmp ugt i64 %i.aqk, 63
  br i1 %i.aql, label %bb.c, label %stream_write_bits.exit.i

bb.c:                                             ; preds = %rev_precision_uint32.exit.i
  %4 = lshr i64 %3, 1
  %i.aqm = add i64 %i.aqf, -59
  store i64 %i.aqm, ptr %i.h, align 8, !tbaa !29
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !31 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 8
  store ptr %i.aqp, ptr %i.aqn, align 8, !tbaa !31
  store i64 %i.aqj, ptr %i.aqo, align 8, !tbaa !13
  %i.aqq = load i64, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.aqr = sub i64 4, %i.aqq
  %i.aqs = lshr i64 %4, %i.aqr
  br label %stream_write_bits.exit.i

stream_write_bits.exit.i:                         ; preds = %bb.c, %rev_precision_uint32.exit.i
  %i.aqt = phi i64 [ %i.aqs, %bb.c ], [ %i.aqj, %rev_precision_uint32.exit.i ]
  %i.aqu = phi i64 [ %i.aqq, %bb.c ], [ %i.aqk, %rev_precision_uint32.exit.i ]
  %notmask.i.i = shl nsw i64 -1, %i.aqu
  %i.aqv = xor i64 %notmask.i.i, -1
  %i.aqw = and i64 %i.aqt, %i.aqv
  store i64 %i.aqw, ptr %i.aqh, align 8, !tbaa !30
  %i.aqx = add i32 %i.k, -5
  %i.aqy = call fastcc i32 @encode_ints_uint32(ptr noundef nonnull %i.h, i32 noundef %i.aqx, i32 noundef %.013.lcssa.i.i, ptr noundef %i.b)
  %i.aqz = add i32 %i.aqy, 5                      ; 3 uses
  %i.ara = icmp ult i32 %i.aqz, %i.i
  br i1 %i.ara, label %bb.d, label %rev_encode_block_int32_4.exit

bb.d:                                             ; preds = %stream_write_bits.exit.i
  %i.arb = sub nuw i32 %i.i, %i.aqz
  %i.arc = zext i32 %i.arb to i64                 ; 2 uses
  %i.ard = load i64, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.are = add i64 %i.ard, %i.arc                 ; 4 uses
  %i.arf = icmp ugt i64 %i.are, 63
  br i1 %i.arf, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.arg = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.arg, align 8, !tbaa !31 ; 2 uses
  %.pre.i.i = load i64, ptr %i.aqh, align 8, !tbaa !30
  %i.arh = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !13
  store i64 0, ptr %i.aqh, align 8, !tbaa !30
  %i.ari = add i64 %i.are, -64                    ; 4 uses
  %i.arj = icmp ugt i64 %i.ari, 63
  br i1 %i.arj, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.ark = add i64 %i.are, -128
  %i.arl = lshr i64 %i.ark, 3
  %i.arm = and i64 %i.arl, 2305843009213693944
  %i.arn = add nuw nsw i64 %i.arm, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.arh, i8 0, i64 %i.arn, i1 false), !tbaa !13
  store i64 0, ptr %i.aqh, align 8, !tbaa !30
  %i.aro = add i64 %i.ard, %i.arc
  %i.arp = add i64 %i.aro, -128                   ; 2 uses
  %i.arq = lshr i64 %i.arp, 6
  %i.arr = add nuw nsw i64 %i.arq, 1
  %xtraiter497 = and i64 %i.arr, 7                ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.ars = phi ptr [ %i.art, %.peel.next.i.prol ], [ %i.arh, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.aru, %.peel.next.i.prol ], [ %i.ari, %.peel.next.i.preheader ]
  %prol.iter499 = phi i64 [ %prol.iter499.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 8 ; 3 uses
  %i.aru = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !15

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr500 = phi ptr [ %i.arh, %.peel.next.i.preheader ], [ %i.art, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.ari, %.peel.next.i.preheader ], [ %i.aru, %.peel.next.i.prol ]
  %.lcssa492.unr = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.art, %.peel.next.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.aru, %.peel.next.i.prol ]
  %i.arv = icmp ult i64 %i.arp, 448
  br i1 %i.arv, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.arw = phi ptr [ %i.arx, %.peel.next.i ], [ %.unr500, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.ary, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 64 ; 2 uses
  %i.ary = add i64 %.09.i.i, -512                 ; 3 uses
  %i.arz = icmp ugt i64 %i.ary, 63
  br i1 %i.arz, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa346.i = phi ptr [ %i.arh, %.lr.ph.i.i ], [ %.lcssa492.unr, %.peel.next.i.prol.loopexit ], [ %i.arx, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.ari, %.lr.ph.i.i ], [ %.lcssa.unr, %.peel.next.i.prol.loopexit ], [ %i.ary, %.peel.next.i ]
  store ptr %.lcssa346.i, ptr %i.arg, align 8, !tbaa !31
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ %.lcssa.i, %._crit_edge.i.i ], [ %i.are, %bb.d ]
  store i64 %.0.lcssa.i.i, ptr %i.h, align 8, !tbaa !29
  br label %rev_encode_block_int32_4.exit

rev_encode_block_int32_4.exit:                    ; preds = %stream_write_bits.exit.i, %stream_pad.exit.i
  %.0.i = phi i32 [ %i.i, %stream_pad.exit.i ], [ %i.aqz, %stream_write_bits.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %.preheader60.i.i

.preheader60.i.i:                                 ; preds = %bb.f, %bb.e
  %indvars.iv93.i.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next94.i.i, %bb.f ] ; 2 uses
  %invariant.gep64.idx.i.i = shl nuw nsw i64 %indvars.iv93.i.i, 8
  %invariant.gep64.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %invariant.gep64.idx.i.i
  br label %.preheader59.i.i

.preheader59.i.i:                                 ; preds = %.preheader59.i.i, %.preheader60.i.i
  %indvars.iv.i.i13 = phi i64 [ 0, %.preheader60.i.i ], [ %indvars.iv.next.i.i14, %.preheader59.i.i ] ; 2 uses
  %gep.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i13, 6
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep64.i.i, i64 %gep.idx.i.i ; 17 uses
  %i.asa = load i32, ptr %gep.i.i, align 64, !tbaa !9
  %i.asb = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 4 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !9 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 8 ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !9
  %i.asf = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 12 ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !9 ; 2 uses
  %i.ash = add nsw i32 %i.asg, %i.asa
  %i.asi = ashr i32 %i.ash, 1                     ; 2 uses
  %i.asj = sub i32 %i.asg, %i.asi
  %i.ask = add nsw i32 %i.ase, %i.asc
  %i.asl = ashr i32 %i.ask, 1                     ; 3 uses
  %i.asm = sub nsw i32 %i.asc, %i.asl             ; 2 uses
  %i.asn = add nsw i32 %i.asi, %i.asl
  %i.aso = ashr i32 %i.asn, 1                     ; 2 uses
  %i.asp = sub nsw i32 %i.asl, %i.aso
  %i.asq = add nsw i32 %i.asj, %i.asm
  %i.asr = ashr i32 %i.asq, 1                     ; 2 uses
  %i.ass = sub nsw i32 %i.asm, %i.asr             ; 2 uses
  %i.ast = ashr i32 %i.ass, 1
  %i.asu = add nsw i32 %i.ast, %i.asr             ; 2 uses
  %i.asv = ashr i32 %i.asu, 1
  %i.asw = sub nsw i32 %i.ass, %i.asv
  store i32 %i.asu, ptr %i.asf, align 4, !tbaa !9
  store i32 %i.asp, ptr %i.asd, align 8, !tbaa !9
  store i32 %i.asw, ptr %i.asb, align 4, !tbaa !9
  store i32 %i.aso, ptr %gep.i.i, align 64, !tbaa !9
  %gep62.1.i.i = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 16 ; 2 uses
  %i.asx = load i32, ptr %gep62.1.i.i, align 16, !tbaa !9
  %i.asy = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 20 ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !9 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 24 ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 8, !tbaa !9
  %i.atc = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 28 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !9 ; 2 uses
  %i.ate = add nsw i32 %i.atd, %i.asx
  %i.atf = ashr i32 %i.ate, 1                     ; 2 uses
  %i.atg = sub i32 %i.atd, %i.atf
  %i.ath = add nsw i32 %i.atb, %i.asz
  %i.ati = ashr i32 %i.ath, 1                     ; 3 uses
  %i.atj = sub nsw i32 %i.asz, %i.ati             ; 2 uses
  %i.atk = add nsw i32 %i.atf, %i.ati
  %i.atl = ashr i32 %i.atk, 1                     ; 2 uses
  %i.atm = sub nsw i32 %i.ati, %i.atl
  %i.atn = add nsw i32 %i.atg, %i.atj
  %i.ato = ashr i32 %i.atn, 1                     ; 2 uses
  %i.atp = sub nsw i32 %i.atj, %i.ato             ; 2 uses
  %i.atq = ashr i32 %i.atp, 1
  %i.atr = add nsw i32 %i.atq, %i.ato             ; 2 uses
  %i.ats = ashr i32 %i.atr, 1
  %i.att = sub nsw i32 %i.atp, %i.ats
  store i32 %i.atr, ptr %i.atc, align 4, !tbaa !9
  store i32 %i.atm, ptr %i.ata, align 8, !tbaa !9
  store i32 %i.att, ptr %i.asy, align 4, !tbaa !9
  store i32 %i.atl, ptr %gep62.1.i.i, align 16, !tbaa !9
  %gep62.2.i.i = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 32 ; 2 uses
  %i.atu = load i32, ptr %gep62.2.i.i, align 32, !tbaa !9
  %i.atv = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 36 ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !9 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 40 ; 2 uses
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !9
  %i.atz = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 44 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !9 ; 2 uses
  %i.aub = add nsw i32 %i.aua, %i.atu
  %i.auc = ashr i32 %i.aub, 1                     ; 2 uses
  %i.aud = sub i32 %i.aua, %i.auc
  %i.aue = add nsw i32 %i.aty, %i.atw
  %i.auf = ashr i32 %i.aue, 1                     ; 3 uses
  %i.aug = sub nsw i32 %i.atw, %i.auf             ; 2 uses
  %i.auh = add nsw i32 %i.auc, %i.auf
  %i.aui = ashr i32 %i.auh, 1                     ; 2 uses
  %i.auj = sub nsw i32 %i.auf, %i.aui
  %i.auk = add nsw i32 %i.aud, %i.aug
  %i.aul = ashr i32 %i.auk, 1                     ; 2 uses
  %i.aum = sub nsw i32 %i.aug, %i.aul             ; 2 uses
  %i.aun = ashr i32 %i.aum, 1
  %i.auo = add nsw i32 %i.aun, %i.aul             ; 2 uses
  %i.aup = ashr i32 %i.auo, 1
  %i.auq = sub nsw i32 %i.aum, %i.aup
  store i32 %i.auo, ptr %i.atz, align 4, !tbaa !9
  store i32 %i.auj, ptr %i.atx, align 8, !tbaa !9
  store i32 %i.auq, ptr %i.atv, align 4, !tbaa !9
  store i32 %i.aui, ptr %gep62.2.i.i, align 32, !tbaa !9
  %gep62.3.i.i = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 48 ; 2 uses
  %i.aur = load i32, ptr %gep62.3.i.i, align 16, !tbaa !9
  %i.aus = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 52 ; 2 uses
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !9 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 56 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !9
  %i.auw = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 60 ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !9 ; 2 uses
  %i.auy = add nsw i32 %i.aux, %i.aur
  %i.auz = ashr i32 %i.auy, 1                     ; 2 uses
  %i.ava = sub i32 %i.aux, %i.auz
  %i.avb = add nsw i32 %i.auv, %i.aut
  %i.avc = ashr i32 %i.avb, 1                     ; 3 uses
  %i.avd = sub nsw i32 %i.aut, %i.avc             ; 2 uses
  %i.ave = add nsw i32 %i.auz, %i.avc
  %i.avf = ashr i32 %i.ave, 1                     ; 2 uses
  %i.avg = sub nsw i32 %i.avc, %i.avf
  %i.avh = add nsw i32 %i.ava, %i.avd
  %i.avi = ashr i32 %i.avh, 1                     ; 2 uses
  %i.avj = sub nsw i32 %i.avd, %i.avi             ; 2 uses
  %i.avk = ashr i32 %i.avj, 1
  %i.avl = add nsw i32 %i.avk, %i.avi             ; 2 uses
  %i.avm = ashr i32 %i.avl, 1
end_hunk_0
