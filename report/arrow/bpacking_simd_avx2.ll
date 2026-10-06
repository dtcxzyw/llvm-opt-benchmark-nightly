Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx2?download=true
inline.NumInlined: 12609
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5arrow8internal11unpack_avx2ItEEvPKhPT_iii:bb.a
  %.0..0..0..0..0..0..0..0..0..0..i.i210.i = load i64, ptr %i.o, align 8, !tbaa !13
  %i.aos = zext nneg i32 %i.aoh to i64
  %i.aot = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i210.i, %i.aos
  %i.aou = trunc i64 %i.aot to i16
  %i.aov = and i16 %i.aou, 511
  store i16 %i.aov, ptr %.026.i.i207.i, align 2, !tbaa !136
  %i.aow = getelementptr inbounds nuw i8, ptr %.026.i.i207.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aox = icmp slt i32 %i.aoj, %i.aof
  br i1 %i.aox, label %.lr.ph.i.i206.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !113

_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.t, %.lr.ph.i.i206.i, %bb.s
  %.023.lcssa.i.i192.i = phi i32 [ %4, %bb.s ], [ %.02325.i.i208.i, %.lr.ph.i.i206.i ], [ %i.aoj, %bb.t ]
  %i.aoy = sub nsw i32 %.023.lcssa.i.i192.i, %4
  %i.aoz = sdiv i32 %i.aoy, 9                     ; 3 uses
  %i.apa = mul nsw i32 %i.aoz, 9
  %i.apb = add nsw i32 %i.apa, %4
  %i.apc = sub nsw i32 %2, %i.aoz                 ; 4 uses
  %i.apd = sdiv i32 %i.apb, 8
  %i.ape = sext i32 %i.apd to i64
  %i.apf = getelementptr inbounds i8, ptr %0, i64 %i.ape ; 2 uses
  %i.apg = sext i32 %i.aoz to i64
  %i.aph = getelementptr inbounds [2 x i8], ptr %1, i64 %i.apg ; 2 uses
  %i.api = sdiv i32 %i.apc, 32                    ; 2 uses
  %i.apj = icmp sgt i32 %i.apc, 31
  br i1 %i.apj, label %.lr.ph.i201.i, label %._crit_edge.i193.i

._crit_edge.i193.i:                               ; preds = %.lr.ph.i201.i, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i194.i = phi ptr [ %i.aph, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.are, %.lr.ph.i201.i ]
  %.025.lcssa.i195.i = phi ptr [ %i.apf, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.ard, %.lr.ph.i201.i ]
  %i.apk = shl nsw i32 %i.api, 5                  ; 2 uses
  %i.apl = sub nsw i32 %i.apc, %i.apk             ; 2 uses
  %i.apm = icmp samesign ult i32 %i.apl, 32
  tail call void @llvm.assume(i1 %i.apm)
  %i.apn = mul nuw nsw i32 %i.apl, 9
  %.not.i196.i = icmp eq i32 %i.apc, %i.apk
  br i1 %.not.i196.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i197.i

.lr.ph.i28.i197.i:                                ; preds = %._crit_edge.i193.i, %.lr.ph.i28.i197.i
  %.024.i.i198.i = phi ptr [ %i.aqd, %.lr.ph.i28.i197.i ], [ %.026.lcssa.i194.i, %._crit_edge.i193.i ] ; 2 uses
  %.02223.i.i199.i = phi i32 [ %i.app, %.lr.ph.i28.i197.i ], [ 0, %._crit_edge.i193.i ] ; 4 uses
  %i.apo = lshr i32 %.02223.i.i199.i, 3           ; 2 uses
  %i.app = add nuw nsw i32 %.02223.i.i199.i, 9    ; 2 uses
  %i.apq = add nuw nsw i32 %.02223.i.i199.i, 8
  %i.apr = lshr i32 %i.apq, 3
  %i.aps = sub nsw i32 %i.apr, %i.apo             ; 2 uses
  %i.apt = add nsw i32 %i.aps, 1
  %i.apu = icmp slt i32 %i.aps, 2
  tail call void @llvm.assume(i1 %i.apu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !tbaa !13
  %i.apv = zext nneg i32 %i.apo to i64
  %i.apw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i195.i, i64 %i.apv
  %i.apx = sext i32 %i.apt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.apw, i64 %i.apx, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i200.i = load i64, ptr %i.n, align 8, !tbaa !13
  %i.apy = and i32 %.02223.i.i199.i, 7
  %i.apz = zext nneg i32 %i.apy to i64
  %i.aqa = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i200.i, %i.apz
  %i.aqb = trunc i64 %i.aqa to i16
  %i.aqc = and i16 %i.aqb, 511
  store i16 %i.aqc, ptr %.024.i.i198.i, align 2, !tbaa !136
  %i.aqd = getelementptr inbounds nuw i8, ptr %.024.i.i198.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.aqe = icmp samesign ult i32 %i.app, %i.apn
  br i1 %i.aqe, label %.lr.ph.i28.i197.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !114

.lr.ph.i201.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i201.i
  %.032.i202.i = phi i32 [ %i.arf, %.lr.ph.i201.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i203.i = phi ptr [ %i.ard, %.lr.ph.i201.i ], [ %i.apf, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i204.i = phi ptr [ %i.are, %.lr.ph.i201.i ], [ %i.aph, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 4
  %i.aqg = load <8 x i32>, ptr %.02531.i203.i, align 1 ; 2 uses
  %i.aqh = load <8 x i32>, ptr %i.aqf, align 1    ; 5 uses
  %i.aqi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.aqh, <8 x i32> %i.aqg, <8 x i32> <i32 5, i32 1, i32 6, i32 2, i32 7, i32 3, i32 8, i32 4>) ; 4 uses
  %i.aqj = shufflevector <8 x i32> %i.aqi, <8 x i32> %i.aqh, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 8, i32 8, i32 8, i32 1>
  %i.aqk = shufflevector <8 x i32> %i.aqj, <8 x i32> %i.aqg, <8 x i32> <i32 8, i32 8, i32 8, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aql = lshr <8 x i32> %i.aqk, <i32 0, i32 9, i32 18, i32 0, i32 4, i32 13, i32 22, i32 0>
  %i.aqm = shufflevector <8 x i32> %i.aqi, <8 x i32> %i.aqh, <8 x i32> <i32 9, i32 9, i32 2, i32 10, i32 10, i32 10, i32 3, i32 11>
  %i.aqn = lshr <8 x i32> %i.aqm, <i32 8, i32 17, i32 0, i32 3, i32 12, i32 21, i32 0, i32 7>
  %i.aqo = shufflevector <8 x i32> %i.aqi, <8 x i32> %i.aqh, <8 x i32> <i32 11, i32 4, i32 12, i32 12, i32 12, i32 5, i32 13, i32 13>
  %i.aqp = lshr <8 x i32> %i.aqo, <i32 16, i32 0, i32 2, i32 11, i32 20, i32 0, i32 6, i32 15>
  %i.aqq = shufflevector <8 x i32> %i.aqi, <8 x i32> %i.aqh, <8 x i32> <i32 6, i32 14, i32 14, i32 14, i32 7, i32 15, i32 15, i32 15>
  %i.aqr = lshr <8 x i32> %i.aqq, <i32 0, i32 1, i32 10, i32 19, i32 0, i32 5, i32 14, i32 23>
  %i.aqs = bitcast <8 x i32> %i.aql to <16 x i16>
  %i.aqt = and <16 x i16> %i.aqs, <i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison>
  %i.aqu = bitcast <8 x i32> %i.aqn to <16 x i16>
  %i.aqv = and <16 x i16> %i.aqu, <i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison>
  %i.aqw = shufflevector <16 x i16> %i.aqt, <16 x i16> %i.aqv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.aqw, ptr %.02630.i204.i, align 2, !tbaa !136
  %i.aqx = bitcast <8 x i32> %i.aqp to <16 x i16>
  %i.aqy = and <16 x i16> %i.aqx, <i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison>
  %i.aqz = getelementptr inbounds nuw i8, ptr %.02630.i204.i, i64 32
  %i.ara = bitcast <8 x i32> %i.aqr to <16 x i16>
  %i.arb = and <16 x i16> %i.ara, <i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison>
  %i.arc = shufflevector <16 x i16> %i.aqy, <16 x i16> %i.arb, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.arc, ptr %i.aqz, align 2, !tbaa !136
  %i.ard = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 36 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.02630.i204.i, i64 64 ; 2 uses
  %i.arf = add nuw nsw i32 %.032.i202.i, 1        ; 2 uses
  %exitcond.not.i205.i = icmp eq i32 %i.arf, %i.api
  br i1 %exitcond.not.i205.i, label %._crit_edge.i193.i, label %.lr.ph.i201.i, !llvm.loop !115

bb.u:                                             ; preds = %bb.a
  %i.arg = mul nsw i32 %2, 10
  %i.arh = add nsw i32 %4, %i.arg
  %i.ari = icmp sgt i32 %2, 0
  br i1 %i.ari, label %.lr.ph.i.i225.i, label %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i225.i:                                  ; preds = %bb.u, %bb.v
  %.026.i.i226.i = phi ptr [ %i.ary, %bb.v ], [ %1, %bb.u ] ; 2 uses
  %.02325.i.i227.i = phi i32 [ %i.arl, %bb.v ], [ %4, %bb.u ] ; 5 uses
  %i.arj = srem i32 %.02325.i.i227.i, 8           ; 2 uses
  %i.ark = sdiv i32 %.02325.i.i227.i, 8           ; 2 uses
  %.not.i.i228.i = icmp eq i32 %i.arj, 0
  br i1 %.not.i.i228.i, label %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i225.i
  %i.arl = add nsw i32 %.02325.i.i227.i, 10       ; 3 uses
  %i.arm = add nsw i32 %.02325.i.i227.i, 9
  %i.arn = sdiv i32 %i.arm, 8
  %i.aro = sub nsw i32 %i.arn, %i.ark             ; 2 uses
  %i.arp = add nsw i32 %i.aro, 1
  %i.arq = icmp slt i32 %i.aro, 3
  tail call void @llvm.assume(i1 %i.arq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8, !tbaa !13
  %i.arr = sext i32 %i.ark to i64
  %i.ars = getelementptr inbounds i8, ptr %0, i64 %i.arr
  %i.art = sext i32 %i.arp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr readonly align 1 %i.ars, i64 %i.art, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i229.i = load i64, ptr %i.m, align 8, !tbaa !13
  %i.aru = zext nneg i32 %i.arj to i64
  %i.arv = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i229.i, %i.aru
  %i.arw = trunc i64 %i.arv to i16
  %i.arx = and i16 %i.arw, 1023
  store i16 %i.arx, ptr %.026.i.i226.i, align 2, !tbaa !136
  %i.ary = getelementptr inbounds nuw i8, ptr %.026.i.i226.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.arz = icmp slt i32 %i.arl, %i.arh
  br i1 %i.arz, label %.lr.ph.i.i225.i, label %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !116

_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.v, %.lr.ph.i.i225.i, %bb.u
  %.023.lcssa.i.i211.i = phi i32 [ %4, %bb.u ], [ %.02325.i.i227.i, %.lr.ph.i.i225.i ], [ %i.arl, %bb.v ]
  %i.asa = sub nsw i32 %.023.lcssa.i.i211.i, %4
  %i.asb = sdiv i32 %i.asa, 10                    ; 3 uses
  %i.asc = mul nsw i32 %i.asb, 10
  %i.asd = add nsw i32 %i.asc, %4
  %i.ase = sub nsw i32 %2, %i.asb                 ; 4 uses
  %i.asf = sdiv i32 %i.asd, 8
  %i.asg = sext i32 %i.asf to i64
  %i.ash = getelementptr inbounds i8, ptr %0, i64 %i.asg ; 2 uses
  %i.asi = sext i32 %i.asb to i64
  %i.asj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.asi ; 2 uses
  %i.ask = sdiv i32 %i.ase, 32                    ; 2 uses
  %i.asl = icmp sgt i32 %i.ase, 31
  br i1 %i.asl, label %.lr.ph.i220.i, label %._crit_edge.i212.i

._crit_edge.i212.i:                               ; preds = %.lr.ph.i220.i, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i213.i = phi ptr [ %i.asj, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.auc, %.lr.ph.i220.i ]
  %.025.lcssa.i214.i = phi ptr [ %i.ash, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.aub, %.lr.ph.i220.i ]
  %i.asm = shl nsw i32 %i.ask, 5                  ; 2 uses
  %i.asn = sub nsw i32 %i.ase, %i.asm             ; 2 uses
  %i.aso = icmp samesign ult i32 %i.asn, 32
  tail call void @llvm.assume(i1 %i.aso)
  %i.asp = mul nuw nsw i32 %i.asn, 10
  %.not.i215.i = icmp eq i32 %i.ase, %i.asm
  br i1 %.not.i215.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i216.i

.lr.ph.i28.i216.i:                                ; preds = %._crit_edge.i212.i, %.lr.ph.i28.i216.i
  %.024.i.i217.i = phi ptr [ %i.atf, %.lr.ph.i28.i216.i ], [ %.026.lcssa.i213.i, %._crit_edge.i212.i ] ; 2 uses
  %.02223.i.i218.i = phi i32 [ %i.asr, %.lr.ph.i28.i216.i ], [ 0, %._crit_edge.i212.i ] ; 4 uses
  %i.asq = lshr i32 %.02223.i.i218.i, 3           ; 2 uses
  %i.asr = add nuw nsw i32 %.02223.i.i218.i, 10   ; 2 uses
  %i.ass = add nuw nsw i32 %.02223.i.i218.i, 8
  %i.ast = lshr i32 %i.ass, 3
  %i.asu = sub nsw i32 %i.ast, %i.asq             ; 2 uses
  %i.asv = add nsw i32 %i.asu, 1
  %i.asw = icmp slt i32 %i.asu, 2
  tail call void @llvm.assume(i1 %i.asw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8, !tbaa !13
  %i.asx = zext nneg i32 %i.asq to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %.025.lcssa.i214.i, i64 %i.asx
  %i.asz = sext i32 %i.asv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 1 %i.asy, i64 %i.asz, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i219.i = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ata = and i32 %.02223.i.i218.i, 6
  %i.atb = zext nneg i32 %i.ata to i64
  %i.atc = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i219.i, %i.atb
  %i.atd = trunc i64 %i.atc to i16
  %i.ate = and i16 %i.atd, 1023
  store i16 %i.ate, ptr %.024.i.i217.i, align 2, !tbaa !136
  %i.atf = getelementptr inbounds nuw i8, ptr %.024.i.i217.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.atg = icmp samesign ult i32 %i.asr, %i.asp
  br i1 %i.atg, label %.lr.ph.i28.i216.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !117

.lr.ph.i220.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i220.i
  %.032.i221.i = phi i32 [ %i.aud, %.lr.ph.i220.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i222.i = phi ptr [ %i.aub, %.lr.ph.i220.i ], [ %i.ash, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i223.i = phi ptr [ %i.auc, %.lr.ph.i220.i ], [ %i.asj, %_ZN5arrow8internal12unpack_exactILi10ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.02531.i222.i, i64 4
  %i.ati = tail call <9 x i32> @llvm.masked.load.v9i32.p0(ptr align 1 %.02531.i222.i, <9 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 true>, <9 x i32> poison) ; 3 uses
  %i.atj = shufflevector <9 x i32> %i.ati, <9 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 8>
  %5 = tail call <9 x i32> @llvm.masked.load.v9i32.p0(ptr nonnull align 1 %i.ath, <9 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 true>, <9 x i32> poison) ; 5 uses
  %6 = shufflevector <9 x i32> %5, <9 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 8>
  %i.atk = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %6, <8 x i32> %i.atj, <8 x i32> <i32 2, i32 4, i32 6, i32 8, i32 2, i32 4, i32 6, i32 8>)
  %7 = shufflevector <8 x i32> %i.atk, <8 x i32> poison, <9 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison> ; 4 uses
  %8 = shufflevector <9 x i32> %7, <9 x i32> %5, <9 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 9, i32 9, i32 1, i32 10, i32 poison>
  %9 = shufflevector <9 x i32> %8, <9 x i32> %i.ati, <8 x i32> <i32 9, i32 9, i32 9, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = lshr <8 x i32> %9, <i32 0, i32 10, i32 20, i32 0, i32 8, i32 18, i32 0, i32 6>
  %i.atl = shufflevector <9 x i32> %7, <9 x i32> %5, <8 x i32> <i32 10, i32 2, i32 11, i32 11, i32 3, i32 12, i32 12, i32 12>
  %i.atm = lshr <8 x i32> %i.atl, <i32 16, i32 0, i32 4, i32 14, i32 0, i32 2, i32 12, i32 22>
  %11 = shufflevector <9 x i32> %7, <9 x i32> %5, <9 x i32> <i32 poison, i32 poison, i32 poison, i32 4, i32 14, i32 14, i32 5, i32 15, i32 poison>
  %12 = shufflevector <9 x i32> %11, <9 x i32> %i.ati, <8 x i32> <i32 14, i32 14, i32 14, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atn = lshr <8 x i32> %12, <i32 0, i32 10, i32 20, i32 0, i32 8, i32 18, i32 0, i32 6>
  %i.ato = shufflevector <9 x i32> %7, <9 x i32> %5, <8 x i32> <i32 15, i32 6, i32 16, i32 16, i32 7, i32 17, i32 17, i32 17>
  %i.atp = lshr <8 x i32> %i.ato, <i32 16, i32 0, i32 4, i32 14, i32 0, i32 2, i32 12, i32 22>
  %i.atq = bitcast <8 x i32> %10 to <16 x i16>
  %i.atr = and <16 x i16> %i.atq, <i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison>
  %i.ats = bitcast <8 x i32> %i.atm to <16 x i16>
  %i.att = and <16 x i16> %i.ats, <i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison>
  %i.atu = shufflevector <16 x i16> %i.atr, <16 x i16> %i.att, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.atu, ptr %.02630.i223.i, align 2, !tbaa !136
  %i.atv = bitcast <8 x i32> %i.atn to <16 x i16>
  %i.atw = and <16 x i16> %i.atv, <i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison>
  %i.atx = getelementptr inbounds nuw i8, ptr %.02630.i223.i, i64 32
  %i.aty = bitcast <8 x i32> %i.atp to <16 x i16>
  %i.atz = and <16 x i16> %i.aty, <i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison, i16 1023, i16 poison>
  %i.aua = shufflevector <16 x i16> %i.atw, <16 x i16> %i.atz, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.aua, ptr %i.atx, align 2, !tbaa !136
  %i.aub = getelementptr inbounds nuw i8, ptr %.02531.i222.i, i64 40 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %.02630.i223.i, i64 64 ; 2 uses
  %i.aud = add nuw nsw i32 %.032.i221.i, 1        ; 2 uses
  %exitcond.not.i224.i = icmp eq i32 %i.aud, %i.ask
  br i1 %exitcond.not.i224.i, label %._crit_edge.i212.i, label %.lr.ph.i220.i, !llvm.loop !118

bb.w:                                             ; preds = %bb.a
  %i.aue = mul nsw i32 %2, 11
  %i.auf = add nsw i32 %4, %i.aue
  %i.aug = icmp sgt i32 %2, 0
  br i1 %i.aug, label %.lr.ph.i.i244.i, label %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i244.i:                                  ; preds = %bb.w, %bb.x
  %.026.i.i245.i = phi ptr [ %i.auw, %bb.x ], [ %1, %bb.w ] ; 2 uses
  %.02325.i.i246.i = phi i32 [ %i.auj, %bb.x ], [ %4, %bb.w ] ; 5 uses
  %i.auh = srem i32 %.02325.i.i246.i, 8           ; 2 uses
  %i.aui = sdiv i32 %.02325.i.i246.i, 8           ; 2 uses
  %.not.i.i247.i = icmp eq i32 %i.auh, 0
  br i1 %.not.i.i247.i, label %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i244.i
  %i.auj = add nsw i32 %.02325.i.i246.i, 11       ; 3 uses
  %i.auk = add nsw i32 %.02325.i.i246.i, 10
  %i.aul = sdiv i32 %i.auk, 8
  %i.aum = sub nsw i32 %i.aul, %i.aui             ; 2 uses
  %i.aun = add nsw i32 %i.aum, 1
  %i.auo = icmp slt i32 %i.aum, 3
  tail call void @llvm.assume(i1 %i.auo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8, !tbaa !13
  %i.aup = sext i32 %i.aui to i64
  %i.auq = getelementptr inbounds i8, ptr %0, i64 %i.aup
  %i.aur = sext i32 %i.aun to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr readonly align 1 %i.auq, i64 %i.aur, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i248.i = load i64, ptr %i.k, align 8, !tbaa !13
  %i.aus = zext nneg i32 %i.auh to i64
  %i.aut = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i248.i, %i.aus
  %i.auu = trunc i64 %i.aut to i16
  %i.auv = and i16 %i.auu, 2047
  store i16 %i.auv, ptr %.026.i.i245.i, align 2, !tbaa !136
  %i.auw = getelementptr inbounds nuw i8, ptr %.026.i.i245.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.aux = icmp slt i32 %i.auj, %i.auf
  br i1 %i.aux, label %.lr.ph.i.i244.i, label %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !119

_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.x, %.lr.ph.i.i244.i, %bb.w
  %.023.lcssa.i.i230.i = phi i32 [ %4, %bb.w ], [ %.02325.i.i246.i, %.lr.ph.i.i244.i ], [ %i.auj, %bb.x ]
  %i.auy = sub nsw i32 %.023.lcssa.i.i230.i, %4
  %i.auz = sdiv i32 %i.auy, 11                    ; 3 uses
  %i.ava = mul nsw i32 %i.auz, 11
  %i.avb = add nsw i32 %i.ava, %4
  %i.avc = sub nsw i32 %2, %i.auz                 ; 4 uses
  %i.avd = sdiv i32 %i.avb, 8
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds i8, ptr %0, i64 %i.ave ; 2 uses
  %i.avg = sext i32 %i.auz to i64
  %i.avh = getelementptr inbounds [2 x i8], ptr %1, i64 %i.avg ; 2 uses
  %i.avi = sdiv i32 %i.avc, 32                    ; 2 uses
  %i.avj = icmp sgt i32 %i.avc, 31
  br i1 %i.avj, label %.lr.ph.i239.i, label %._crit_edge.i231.i

._crit_edge.i231.i:                               ; preds = %.lr.ph.i239.i, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i232.i = phi ptr [ %i.avh, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.axr, %.lr.ph.i239.i ]
  %.025.lcssa.i233.i = phi ptr [ %i.avf, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.axq, %.lr.ph.i239.i ]
  %i.avk = shl nsw i32 %i.avi, 5                  ; 2 uses
  %i.avl = sub nsw i32 %i.avc, %i.avk             ; 2 uses
  %i.avm = icmp samesign ult i32 %i.avl, 32
  tail call void @llvm.assume(i1 %i.avm)
  %i.avn = mul nuw nsw i32 %i.avl, 11
  %.not.i234.i = icmp eq i32 %i.avc, %i.avk
  br i1 %.not.i234.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i235.i

.lr.ph.i28.i235.i:                                ; preds = %._crit_edge.i231.i, %.lr.ph.i28.i235.i
  %.024.i.i236.i = phi ptr [ %i.awd, %.lr.ph.i28.i235.i ], [ %.026.lcssa.i232.i, %._crit_edge.i231.i ] ; 2 uses
  %.02223.i.i237.i = phi i32 [ %i.avp, %.lr.ph.i28.i235.i ], [ 0, %._crit_edge.i231.i ] ; 4 uses
  %i.avo = lshr i32 %.02223.i.i237.i, 3           ; 2 uses
  %i.avp = add nuw nsw i32 %.02223.i.i237.i, 11   ; 2 uses
  %i.avq = add nuw nsw i32 %.02223.i.i237.i, 10
  %i.avr = lshr i32 %i.avq, 3
  %i.avs = sub nsw i32 %i.avr, %i.avo             ; 2 uses
  %i.avt = add nsw i32 %i.avs, 1
  %i.avu = icmp slt i32 %i.avs, 3
  tail call void @llvm.assume(i1 %i.avu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !tbaa !13
  %i.avv = zext nneg i32 %i.avo to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i233.i, i64 %i.avv
  %i.avx = sext i32 %i.avt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 1 %i.avw, i64 %i.avx, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i238.i = load i64, ptr %i.j, align 8, !tbaa !13
  %i.avy = and i32 %.02223.i.i237.i, 7
  %i.avz = zext nneg i32 %i.avy to i64
  %i.awa = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i238.i, %i.avz
  %i.awb = trunc i64 %i.awa to i16
  %i.awc = and i16 %i.awb, 2047
  store i16 %i.awc, ptr %.024.i.i236.i, align 2, !tbaa !136
  %i.awd = getelementptr inbounds nuw i8, ptr %.024.i.i236.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.awe = icmp samesign ult i32 %i.avp, %i.avn
  br i1 %i.awe, label %.lr.ph.i28.i235.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !120

.lr.ph.i239.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i239.i
  %.032.i240.i = phi i32 [ %i.axs, %.lr.ph.i239.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i241.i = phi ptr [ %i.axq, %.lr.ph.i239.i ], [ %i.avf, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i242.i = phi ptr [ %i.axr, %.lr.ph.i239.i ], [ %i.avh, %_ZN5arrow8internal12unpack_exactILi11ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 4
  %i.awg = load <8 x i32>, ptr %.02531.i241.i, align 1 ; 2 uses
  %i.awh = load <8 x i32>, ptr %i.awf, align 1    ; 6 uses
  %i.awi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.awh, <8 x i32> %i.awg, <8 x i32> <i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3>) ; 3 uses
  %i.awj = shufflevector <8 x i32> %i.awi, <8 x i32> %i.awh, <8 x i32> <i32 poison, i32 poison, i32 0, i32 8, i32 8, i32 1, i32 9, i32 9>
  %i.awk = shufflevector <8 x i32> %i.awj, <8 x i32> %i.awg, <8 x i32> <i32 8, i32 8, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awl = lshr <8 x i32> %i.awk, <i32 0, i32 11, i32 0, i32 1, i32 12, i32 0, i32 2, i32 13>
  %i.awm = shufflevector <8 x i32> %i.awi, <8 x i32> %i.awh, <8 x i32> <i32 2, i32 10, i32 10, i32 3, i32 11, i32 11, i32 4, i32 12>
  %i.awn = lshr <8 x i32> %i.awm, <i32 0, i32 3, i32 14, i32 0, i32 4, i32 15, i32 0, i32 5>
  %i.awo = shufflevector <8 x i32> %i.awi, <8 x i32> %i.awh, <8 x i32> <i32 12, i32 5, i32 13, i32 13, i32 6, i32 14, i32 14, i32 7>
  %i.awp = lshr <8 x i32> %i.awo, <i32 16, i32 0, i32 6, i32 17, i32 0, i32 7, i32 18, i32 0>
  %i.awq = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 36
  %i.awr = load i32, ptr %i.awq, align 1          ; 4 uses
  %i.aws = extractelement <8 x i32> %i.awh, i64 7
  %i.awt = tail call i32 @llvm.fshl.i32(i32 %i.awr, i32 %i.aws, i32 2)
  %i.awu = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 40
  %i.awv = load i32, ptr %i.awu, align 1          ; 3 uses
  %i.aww = tail call i32 @llvm.fshl.i32(i32 %i.awv, i32 %i.awr, i32 1)
  %i.awx = shufflevector <8 x i32> %i.awh, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awy = insertelement <8 x i32> %i.awx, i32 %i.awt, i64 2
  %i.awz = insertelement <8 x i32> %i.awy, i32 %i.awr, i64 3
  %i.axa = insertelement <8 x i32> %i.awz, i32 %i.awr, i64 4
  %i.axb = insertelement <8 x i32> %i.axa, i32 %i.aww, i64 5
  %i.axc = insertelement <8 x i32> %i.axb, i32 %i.awv, i64 6
  %i.axd = insertelement <8 x i32> %i.axc, i32 %i.awv, i64 7
  %i.axe = lshr <8 x i32> %i.axd, <i32 8, i32 19, i32 0, i32 9, i32 20, i32 0, i32 10, i32 21>
  %i.axf = bitcast <8 x i32> %i.awl to <16 x i16>
  %i.axg = and <16 x i16> %i.axf, <i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison>
  %i.axh = bitcast <8 x i32> %i.awn to <16 x i16>
  %i.axi = and <16 x i16> %i.axh, <i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison>
  %i.axj = shufflevector <16 x i16> %i.axg, <16 x i16> %i.axi, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.axj, ptr %.02630.i242.i, align 2, !tbaa !136
  %i.axk = bitcast <8 x i32> %i.awp to <16 x i16>
  %i.axl = and <16 x i16> %i.axk, <i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison>
  %i.axm = getelementptr inbounds nuw i8, ptr %.02630.i242.i, i64 32
  %i.axn = bitcast <8 x i32> %i.axe to <16 x i16>
  %i.axo = and <16 x i16> %i.axn, <i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison, i16 2047, i16 poison>
  %i.axp = shufflevector <16 x i16> %i.axl, <16 x i16> %i.axo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.axp, ptr %i.axm, align 2, !tbaa !136
  %i.axq = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 44 ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.02630.i242.i, i64 64 ; 2 uses
  %i.axs = add nuw nsw i32 %.032.i240.i, 1        ; 2 uses
  %exitcond.not.i243.i = icmp eq i32 %i.axs, %i.avi
  br i1 %exitcond.not.i243.i, label %._crit_edge.i231.i, label %.lr.ph.i239.i, !llvm.loop !121

bb.y:                                             ; preds = %bb.a
  %i.axt = mul nsw i32 %2, 12
  %i.axu = add nsw i32 %4, %i.axt
  %i.axv = icmp sgt i32 %2, 0
  br i1 %i.axv, label %.lr.ph.i.i263.i, label %_ZN5arrow8internal12unpack_exactILi12ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i263.i:                                  ; preds = %bb.y, %bb.z
  %.026.i.i264.i = phi ptr [ %i.ayl, %bb.z ], [ %1, %bb.y ] ; 2 uses
  %.02325.i.i265.i = phi i32 [ %i.axy, %bb.z ], [ %4, %bb.y ] ; 5 uses
  %i.axw = srem i32 %.02325.i.i265.i, 8           ; 2 uses
  %i.axx = sdiv i32 %.02325.i.i265.i, 8           ; 2 uses
  %.not.i.i266.i = icmp eq i32 %i.axw, 0
  br i1 %.not.i.i266.i, label %_ZN5arrow8internal12unpack_exactILi12ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i263.i
  %i.axy = add nsw i32 %.02325.i.i265.i, 12       ; 3 uses
  %i.axz = add nsw i32 %.02325.i.i265.i, 11
  %i.aya = sdiv i32 %i.axz, 8
  %i.ayb = sub nsw i32 %i.aya, %i.axx             ; 2 uses
  %i.ayc = add nsw i32 %i.ayb, 1
  %i.ayd = icmp slt i32 %i.ayb, 3
  tail call void @llvm.assume(i1 %i.ayd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8, !tbaa !13
  %i.aye = sext i32 %i.axx to i64
  %i.ayf = getelementptr inbounds i8, ptr %0, i64 %i.aye
  %i.ayg = sext i32 %i.ayc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr readonly align 1 %i.ayf, i64 %i.ayg, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i267.i = load i64, ptr %i.i, align 8, !tbaa !13
  %i.ayh = zext nneg i32 %i.axw to i64
  %i.ayi = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i267.i, %i.ayh
  %i.ayj = trunc i64 %i.ayi to i16
  %i.ayk = and i16 %i.ayj, 4095
  store i16 %i.ayk, ptr %.026.i.i264.i, align 2, !tbaa !136
  %i.ayl = getelementptr inbounds nuw i8, ptr %.026.i.i264.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aym = icmp slt i32 %i.axy, %i.axu
  br i1 %i.aym, label %.lr.ph.i.i263.i, label %_ZN5arrow8internal12unpack_exactILi12ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !122
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal11unpack_avx2ItEEvPKhPT_iii:bb.a
  %i.bfg = sub nsw i32 %.023.lcssa.i.i287.i, %4
  %i.bfh = sdiv i32 %i.bfg, 14                    ; 3 uses
  %i.bfi = mul nsw i32 %i.bfh, 14
  %i.bfj = add nsw i32 %i.bfi, %4
  %i.bfk = sub nsw i32 %2, %i.bfh                 ; 4 uses
  %i.bfl = sdiv i32 %i.bfj, 8
  %i.bfm = sext i32 %i.bfl to i64
  %i.bfn = getelementptr inbounds i8, ptr %0, i64 %i.bfm ; 2 uses
  %i.bfo = sext i32 %i.bfh to i64
  %i.bfp = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bfo ; 2 uses
  %i.bfq = sdiv i32 %i.bfk, 32                    ; 2 uses
  %i.bfr = icmp sgt i32 %i.bfk, 31
  br i1 %i.bfr, label %.lr.ph.i296.i, label %._crit_edge.i288.i

._crit_edge.i288.i:                               ; preds = %.lr.ph.i296.i, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i289.i = phi ptr [ %i.bfp, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.bhz, %.lr.ph.i296.i ]
  %.025.lcssa.i290.i = phi ptr [ %i.bfn, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.bhy, %.lr.ph.i296.i ]
  %i.bfs = shl nsw i32 %i.bfq, 5                  ; 2 uses
  %i.bft = sub nsw i32 %i.bfk, %i.bfs             ; 2 uses
  %i.bfu = icmp samesign ult i32 %i.bft, 32
  tail call void @llvm.assume(i1 %i.bfu)
  %i.bfv = mul nuw nsw i32 %i.bft, 14
  %.not.i291.i = icmp eq i32 %i.bfk, %i.bfs
  br i1 %.not.i291.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i292.i

.lr.ph.i28.i292.i:                                ; preds = %._crit_edge.i288.i, %.lr.ph.i28.i292.i
  %.024.i.i293.i = phi ptr [ %i.bgl, %.lr.ph.i28.i292.i ], [ %.026.lcssa.i289.i, %._crit_edge.i288.i ] ; 2 uses
  %.02223.i.i294.i = phi i32 [ %i.bfx, %.lr.ph.i28.i292.i ], [ 0, %._crit_edge.i288.i ] ; 4 uses
  %i.bfw = lshr i32 %.02223.i.i294.i, 3           ; 2 uses
  %i.bfx = add nuw nsw i32 %.02223.i.i294.i, 14   ; 2 uses
  %i.bfy = add nuw nsw i32 %.02223.i.i294.i, 12
  %i.bfz = lshr i32 %i.bfy, 3
  %i.bga = sub nsw i32 %i.bfz, %i.bfw             ; 2 uses
  %i.bgb = add nsw i32 %i.bga, 1
  %i.bgc = icmp slt i32 %i.bga, 3
  tail call void @llvm.assume(i1 %i.bgc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !tbaa !13
  %i.bgd = zext nneg i32 %i.bfw to i64
  %i.bge = getelementptr inbounds nuw i8, ptr %.025.lcssa.i290.i, i64 %i.bgd
  %i.bgf = sext i32 %i.bgb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %i.bge, i64 %i.bgf, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i295.i = load i64, ptr %i.d, align 8, !tbaa !13
  %i.bgg = and i32 %.02223.i.i294.i, 6
  %i.bgh = zext nneg i32 %i.bgg to i64
  %i.bgi = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i295.i, %i.bgh
  %i.bgj = trunc i64 %i.bgi to i16
  %i.bgk = and i16 %i.bgj, 16383
  store i16 %i.bgk, ptr %.024.i.i293.i, align 2, !tbaa !136
  %i.bgl = getelementptr inbounds nuw i8, ptr %.024.i.i293.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bgm = icmp samesign ult i32 %i.bfx, %i.bfv
  br i1 %i.bgm, label %.lr.ph.i28.i292.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !129

.lr.ph.i296.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i296.i
  %.032.i297.i = phi i32 [ %i.bia, %.lr.ph.i296.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i298.i = phi ptr [ %i.bhy, %.lr.ph.i296.i ], [ %i.bfn, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 4 uses
  %.02630.i299.i = phi ptr [ %i.bhz, %.lr.ph.i296.i ], [ %i.bfp, %_ZN5arrow8internal12unpack_exactILi14ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %.02531.i298.i, i64 4
  %i.bgo = tail call <9 x i32> @llvm.masked.load.v9i32.p0(ptr align 1 %.02531.i298.i, <9 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <9 x i32> poison) ; 3 uses
  %i.bgp = shufflevector <9 x i32> %i.bgo, <9 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8>
  %i.bgq = tail call <9 x i32> @llvm.masked.load.v9i32.p0(ptr nonnull align 1 %i.bgn, <9 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <9 x i32> poison) ; 5 uses
  %i.bgr = shufflevector <9 x i32> %i.bgq, <9 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8>
  %i.bgs = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bgr, <8 x i32> %i.bgp, <8 x i32> <i32 4, i32 8, i32 12, i32 2, i32 6, i32 10, i32 4, i32 8>)
  %i.bgt = shufflevector <8 x i32> %i.bgs, <8 x i32> poison, <9 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison> ; 3 uses
  %i.bgu = shufflevector <9 x i32> %i.bgt, <9 x i32> %i.bgq, <9 x i32> <i32 poison, i32 poison, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 poison>
  %i.bgv = shufflevector <9 x i32> %i.bgu, <9 x i32> %i.bgo, <8 x i32> <i32 9, i32 9, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bgw = lshr <8 x i32> %i.bgv, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2>
  %i.bgx = shufflevector <9 x i32> %i.bgt, <9 x i32> %i.bgq, <8 x i32> <i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 14>
  %i.bgy = lshr <8 x i32> %i.bgx, <i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.bgz = getelementptr inbounds nuw i8, ptr %.02531.i298.i, i64 40
  %i.bha = shufflevector <9 x i32> %i.bgt, <9 x i32> %i.bgq, <9 x i32> <i32 poison, i32 poison, i32 6, i32 16, i32 7, i32 17, i32 poison, i32 poison, i32 poison>
  %i.bhb = shufflevector <9 x i32> %i.bha, <9 x i32> %i.bgo, <8 x i32> <i32 16, i32 16, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.bhc = load <4 x i32>, ptr %i.bgz, align 1    ; 4 uses
  %i.bhd = shufflevector <9 x i32> %i.bgq, <9 x i32> poison, <4 x i32> <i32 8, i32 poison, i32 poison, i32 poison>
  %i.bhe = shufflevector <4 x i32> %i.bhd, <4 x i32> %i.bhc, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.bhf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bhc, <4 x i32> %i.bhe, <4 x i32> <i32 12, i32 2, i32 6, i32 10>) ; 2 uses
  %i.bhg = shufflevector <4 x i32> %i.bhf, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bhh = shufflevector <8 x i32> %i.bhb, <8 x i32> %i.bhg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.bhi = shufflevector <4 x i32> %i.bhc, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bhj = shufflevector <8 x i32> %i.bhh, <8 x i32> %i.bhi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.bhk = lshr <8 x i32> %i.bhj, <i32 0, i32 14, i32 0, i32 10, i32 0, i32 6, i32 0, i32 2>
  %i.bhl = shufflevector <4 x i32> %i.bhf, <4 x i32> %i.bhc, <8 x i32> <i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 7>
  %i.bhm = lshr <8 x i32> %i.bhl, <i32 16, i32 0, i32 12, i32 0, i32 8, i32 0, i32 4, i32 18>
  %i.bhn = bitcast <8 x i32> %i.bgw to <16 x i16>
  %i.bho = and <16 x i16> %i.bhn, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.bhp = bitcast <8 x i32> %i.bgy to <16 x i16>
  %i.bhq = and <16 x i16> %i.bhp, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.bhr = shufflevector <16 x i16> %i.bho, <16 x i16> %i.bhq, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.bhr, ptr %.02630.i299.i, align 2, !tbaa !136
  %i.bhs = bitcast <8 x i32> %i.bhk to <16 x i16>
  %i.bht = and <16 x i16> %i.bhs, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.bhu = getelementptr inbounds nuw i8, ptr %.02630.i299.i, i64 32
  %i.bhv = bitcast <8 x i32> %i.bhm to <16 x i16>
  %i.bhw = and <16 x i16> %i.bhv, <i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison, i16 16383, i16 poison>
  %i.bhx = shufflevector <16 x i16> %i.bht, <16 x i16> %i.bhw, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.bhx, ptr %i.bhu, align 2, !tbaa !136
  %i.bhy = getelementptr inbounds nuw i8, ptr %.02531.i298.i, i64 56 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %.02630.i299.i, i64 64 ; 2 uses
  %i.bia = add nuw nsw i32 %.032.i297.i, 1        ; 2 uses
  %exitcond.not.i300.i = icmp eq i32 %i.bia, %i.bfq
  br i1 %exitcond.not.i300.i, label %._crit_edge.i288.i, label %.lr.ph.i296.i, !llvm.loop !130

bb.ae:                                            ; preds = %bb.a
  %i.bib = mul nsw i32 %2, 15
  %i.bic = add nsw i32 %4, %i.bib
  %i.bid = icmp sgt i32 %2, 0
  br i1 %i.bid, label %.lr.ph.i.i320.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i320.i:                                  ; preds = %bb.ae, %bb.af
  %.026.i.i321.i = phi ptr [ %i.bit, %bb.af ], [ %1, %bb.ae ] ; 2 uses
  %.02325.i.i322.i = phi i32 [ %i.big, %bb.af ], [ %4, %bb.ae ] ; 5 uses
  %i.bie = srem i32 %.02325.i.i322.i, 8           ; 2 uses
  %i.bif = sdiv i32 %.02325.i.i322.i, 8           ; 2 uses
  %.not.i.i323.i = icmp eq i32 %i.bie, 0
  br i1 %.not.i.i323.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i320.i
  %i.big = add nsw i32 %.02325.i.i322.i, 15       ; 3 uses
  %i.bih = add nsw i32 %.02325.i.i322.i, 14
  %i.bii = sdiv i32 %i.bih, 8
  %i.bij = sub nsw i32 %i.bii, %i.bif             ; 2 uses
  %i.bik = add nsw i32 %i.bij, 1
  %i.bil = icmp slt i32 %i.bij, 3
  tail call void @llvm.assume(i1 %i.bil)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8, !tbaa !13
  %i.bim = sext i32 %i.bif to i64
  %i.bin = getelementptr inbounds i8, ptr %0, i64 %i.bim
  %i.bio = sext i32 %i.bik to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr readonly align 1 %i.bin, i64 %i.bio, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i324.i = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bip = zext nneg i32 %i.bie to i64
  %i.biq = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i324.i, %i.bip
  %i.bir = trunc i64 %i.biq to i16
  %i.bis = and i16 %i.bir, 32767
  store i16 %i.bis, ptr %.026.i.i321.i, align 2, !tbaa !136
  %i.bit = getelementptr inbounds nuw i8, ptr %.026.i.i321.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.biu = icmp slt i32 %i.big, %i.bic
  br i1 %i.biu, label %.lr.ph.i.i320.i, label %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !131

_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.af, %.lr.ph.i.i320.i, %bb.ae
  %.023.lcssa.i.i306.i = phi i32 [ %4, %bb.ae ], [ %.02325.i.i322.i, %.lr.ph.i.i320.i ], [ %i.big, %bb.af ]
  %i.biv = sub nsw i32 %.023.lcssa.i.i306.i, %4
  %i.biw = sdiv i32 %i.biv, 15                    ; 3 uses
  %i.bix = mul nsw i32 %i.biw, 15
  %i.biy = add nsw i32 %i.bix, %4
  %i.biz = sub nsw i32 %2, %i.biw                 ; 4 uses
  %i.bja = sdiv i32 %i.biy, 8
  %i.bjb = sext i32 %i.bja to i64
  %i.bjc = getelementptr inbounds i8, ptr %0, i64 %i.bjb ; 2 uses
  %i.bjd = sext i32 %i.biw to i64
  %i.bje = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bjd ; 2 uses
  %i.bjf = sdiv i32 %i.biz, 32                    ; 2 uses
  %i.bjg = icmp sgt i32 %i.biz, 31
  br i1 %i.bjg, label %.lr.ph.i315.i, label %._crit_edge.i307.i

._crit_edge.i307.i:                               ; preds = %.lr.ph.i315.i, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i308.i = phi ptr [ %i.bje, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.blg, %.lr.ph.i315.i ]
  %.025.lcssa.i309.i = phi ptr [ %i.bjc, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.blf, %.lr.ph.i315.i ]
  %i.bjh = shl nsw i32 %i.bjf, 5                  ; 2 uses
  %i.bji = sub nsw i32 %i.biz, %i.bjh             ; 2 uses
  %i.bjj = icmp samesign ult i32 %i.bji, 32
  tail call void @llvm.assume(i1 %i.bjj)
  %i.bjk = mul nuw nsw i32 %i.bji, 15
  %.not.i310.i = icmp eq i32 %i.biz, %i.bjh
  br i1 %.not.i310.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i311.i

.lr.ph.i28.i311.i:                                ; preds = %._crit_edge.i307.i, %.lr.ph.i28.i311.i
  %.024.i.i312.i = phi ptr [ %i.bka, %.lr.ph.i28.i311.i ], [ %.026.lcssa.i308.i, %._crit_edge.i307.i ] ; 2 uses
  %.02223.i.i313.i = phi i32 [ %i.bjm, %.lr.ph.i28.i311.i ], [ 0, %._crit_edge.i307.i ] ; 4 uses
  %i.bjl = lshr i32 %.02223.i.i313.i, 3           ; 2 uses
  %i.bjm = add nuw nsw i32 %.02223.i.i313.i, 15   ; 2 uses
  %i.bjn = add nuw nsw i32 %.02223.i.i313.i, 14
  %i.bjo = lshr i32 %i.bjn, 3
  %i.bjp = sub nsw i32 %i.bjo, %i.bjl             ; 2 uses
  %i.bjq = add nsw i32 %i.bjp, 1
  %i.bjr = icmp slt i32 %i.bjp, 3
  tail call void @llvm.assume(i1 %i.bjr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.bjs = zext nneg i32 %i.bjl to i64
  %i.bjt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i309.i, i64 %i.bjs
  %i.bju = sext i32 %i.bjq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr align 1 %i.bjt, i64 %i.bju, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i314.i = load i64, ptr %i.b, align 8, !tbaa !13
  %i.bjv = and i32 %.02223.i.i313.i, 7
  %i.bjw = zext nneg i32 %i.bjv to i64
  %i.bjx = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i314.i, %i.bjw
  %i.bjy = trunc i64 %i.bjx to i16
  %i.bjz = and i16 %i.bjy, 32767
  store i16 %i.bjz, ptr %.024.i.i312.i, align 2, !tbaa !136
  %i.bka = getelementptr inbounds nuw i8, ptr %.024.i.i312.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bkb = icmp samesign ult i32 %i.bjm, %i.bjk
  br i1 %i.bkb, label %.lr.ph.i28.i311.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !132

.lr.ph.i315.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i315.i
  %.032.i316.i = phi i32 [ %i.blh, %.lr.ph.i315.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i317.i = phi ptr [ %i.blf, %.lr.ph.i315.i ], [ %i.bjc, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 8 uses
  %.02630.i318.i = phi ptr [ %i.blg, %.lr.ph.i315.i ], [ %i.bje, %_ZN5arrow8internal12unpack_exactILi15ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 4
  %i.bkd = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 28
  %i.bke = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 32
  %13 = load <4 x i32>, ptr %i.bkd, align 1       ; 3 uses
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = load <4 x i32>, ptr %i.bke, align 1       ; 2 uses
  %16 = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %15, <4 x i32> %13, <4 x i32> <i32 1, i32 3, i32 5, i32 7>)
  %17 = shufflevector <4 x i32> %13, <4 x i32> %16, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %18 = lshr <8 x i32> %17, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0>
  %i.bkf = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 48
  %19 = tail call <12 x i32> @llvm.masked.load.v12i32.p0(ptr align 1 %.02531.i317.i, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>, <12 x i32> poison) ; 2 uses
  %20 = shufflevector <12 x i32> %19, <12 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %21 = load i32, ptr %i.bkf, align 1
  %22 = tail call <12 x i32> @llvm.masked.load.v12i32.p0(ptr nonnull align 1 %i.bkc, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true>, <12 x i32> poison) ; 4 uses
  %23 = shufflevector <12 x i32> %22, <12 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  %24 = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %23, <8 x i32> %20, <8 x i32> <i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 9>) ; 2 uses
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %26 = shufflevector <12 x i32> %25, <12 x i32> %22, <12 x i32> <i32 poison, i32 poison, i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <12 x i32> %26, <12 x i32> %19, <8 x i32> <i32 12, i32 12, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bkg = lshr <8 x i32> %27, <i32 0, i32 15, i32 0, i32 13, i32 0, i32 11, i32 0, i32 9>
  %28 = shufflevector <12 x i32> %25, <12 x i32> %22, <8 x i32> <i32 3, i32 15, i32 4, i32 16, i32 5, i32 17, i32 6, i32 poison>
  %29 = shufflevector <8 x i32> %28, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %30 = lshr <8 x i32> %29, <i32 0, i32 7, i32 0, i32 5, i32 0, i32 3, i32 0, i32 1>
  %i.bkh = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 52
  %i.bki = load i32, ptr %i.bkh, align 1          ; 3 uses
  %i.bkj = tail call i32 @llvm.fshl.i32(i32 %i.bki, i32 %21, i32 11)
  %i.bkk = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 56
  %i.bkl = load i32, ptr %i.bkk, align 1          ; 3 uses
  %i.bkm = tail call i32 @llvm.fshl.i32(i32 %i.bkl, i32 %i.bki, i32 13)
  %i.bkn = shufflevector <4 x i32> %15, <4 x i32> poison, <8 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = shufflevector <8 x i32> %i.bkn, <8 x i32> %24, <12 x i32> <i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <12 x i32> %31, <12 x i32> %22, <8 x i32> <i32 0, i32 1, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bko = insertelement <8 x i32> %32, i32 %i.bkj, i64 3
  %i.bkp = insertelement <8 x i32> %i.bko, i32 %i.bki, i64 4
  %i.bkq = insertelement <8 x i32> %i.bkp, i32 %i.bkm, i64 5
  %i.bkr = insertelement <8 x i32> %i.bkq, i32 %i.bkl, i64 6
  %i.bks = insertelement <8 x i32> %i.bkr, i32 %i.bkl, i64 7
  %i.bkt = lshr <8 x i32> %i.bks, <i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bku = bitcast <8 x i32> %i.bkg to <16 x i16>
  %i.bkv = and <16 x i16> %i.bku, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.bkw = bitcast <8 x i32> %30 to <16 x i16>
  %i.bkx = and <16 x i16> %i.bkw, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.bky = shufflevector <16 x i16> %i.bkv, <16 x i16> %i.bkx, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.bky, ptr %.02630.i318.i, align 2, !tbaa !136
  %i.bkz = bitcast <8 x i32> %18 to <16 x i16>
  %i.bla = and <16 x i16> %i.bkz, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.blb = getelementptr inbounds nuw i8, ptr %.02630.i318.i, i64 32
  %i.blc = bitcast <8 x i32> %i.bkt to <16 x i16>
  %i.bld = and <16 x i16> %i.blc, <i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison, i16 32767, i16 poison>
  %i.ble = shufflevector <16 x i16> %i.bla, <16 x i16> %i.bld, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.ble, ptr %i.blb, align 2, !tbaa !136
  %i.blf = getelementptr inbounds nuw i8, ptr %.02531.i317.i, i64 60 ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %.02630.i318.i, i64 64 ; 2 uses
  %i.blh = add nuw nsw i32 %.032.i316.i, 1        ; 2 uses
  %exitcond.not.i319.i = icmp eq i32 %i.blh, %i.bjf
  br i1 %exitcond.not.i319.i, label %._crit_edge.i307.i, label %.lr.ph.i315.i, !llvm.loop !133

bb.ag:                                            ; preds = %bb.a
  %i.bli = shl nsw i32 %2, 4
  %i.blj = add nsw i32 %4, %i.bli
  %i.blk = icmp sgt i32 %2, 0
  br i1 %i.blk, label %.lr.ph.i.i326.i, label %_ZN5arrow8internal12unpack_widthILi16ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT1_ii.exit.i

.lr.ph.i.i326.i:                                  ; preds = %bb.ag, %bb.ah
  %.026.i.i327.i = phi ptr [ %i.blz, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i328.i = phi i32 [ %i.bln, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.bll = srem i32 %.02325.i.i328.i, 8           ; 2 uses
  %i.blm = sdiv i32 %.02325.i.i328.i, 8           ; 2 uses
  %.not.i.i329.i = icmp eq i32 %i.bll, 0
  br i1 %.not.i.i329.i, label %_ZN5arrow8internal12unpack_widthILi16ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i326.i
  %i.bln = add nsw i32 %.02325.i.i328.i, 16       ; 3 uses
  %i.blo = add nsw i32 %.02325.i.i328.i, 15
  %i.blp = sdiv i32 %i.blo, 8
  %i.blq = sub nsw i32 %i.blp, %i.blm             ; 2 uses
  %i.blr = add nsw i32 %i.blq, 1
  %i.bls = icmp slt i32 %i.blq, 3
  tail call void @llvm.assume(i1 %i.bls)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.blt = sext i32 %i.blm to i64
  %i.blu = getelementptr inbounds i8, ptr %0, i64 %i.blt
  %i.blv = sext i32 %i.blr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %i.blu, i64 %i.blv, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i330.i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.blw = zext nneg i32 %i.bll to i64
  %i.blx = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i330.i, %i.blw
  %i.bly = trunc i64 %i.blx to i16
  store i16 %i.bly, ptr %.026.i.i327.i, align 2, !tbaa !136
  %i.blz = getelementptr inbounds nuw i8, ptr %.026.i.i327.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bma = icmp slt i32 %i.bln, %i.blj
  br i1 %i.bma, label %.lr.ph.i.i326.i, label %_ZN5arrow8internal12unpack_widthILi16ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT1_ii.exit.i, !llvm.loop !134

_ZN5arrow8internal12unpack_widthILi16ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i326.i, %bb.ag
  %.023.lcssa.i.i325.i = phi i32 [ %4, %bb.ag ], [ %.02325.i.i328.i, %.lr.ph.i.i326.i ], [ %i.bln, %bb.ah ]
  %i.bmb = sub nsw i32 %.023.lcssa.i.i325.i, %4
  %i.bmc = sdiv i32 %i.bmb, 16                    ; 3 uses
  %i.bmd = shl nsw i32 %i.bmc, 4
  %i.bme = add nsw i32 %i.bmd, %4
  %i.bmf = sub nsw i32 %2, %i.bmc
  %i.bmg = sdiv i32 %i.bme, 8
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = getelementptr inbounds i8, ptr %0, i64 %i.bmh
  %i.bmj = sext i32 %i.bmc to i64
  %i.bmk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bmj
  %i.bml = sext i32 %i.bmf to i64
  %i.bmm = shl nsw i64 %i.bml, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bmk, ptr readonly align 1 %i.bmi, i64 %i.bmm, i1 false)
  br label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit

_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit: ; preds = %.lr.ph.i28.i311.i, %.lr.ph.i28.i292.i, %.lr.ph.i28.i273.i, %.lr.ph.i28.i254.i, %.lr.ph.i28.i235.i, %.lr.ph.i28.i216.i, %.lr.ph.i28.i197.i, %.lr.ph.i28.i180.i, %.lr.ph.i28.i161.i, %.lr.ph.i28.i142.i, %.lr.ph.i28.i123.i, %.lr.ph.i28.i105.i, %.lr.ph.i28.i87.i, %.lr.ph.i28.i73.i, %.lr.ph.i28.i.i, %vec.epilog.middle.block, %middle.block253, %vec.epilog.middle.block269, %middle.block301, %vec.epilog.middle.block322, %middle.block357, %vec.epilog.middle.block378, %bb.a, %bb.b, %._crit_edge.i.i, %._crit_edge.i69.i, %._crit_edge.i83.i, %._crit_edge.i101.i, %._crit_edge.i119.i, %._crit_edge.i138.i, %._crit_edge.i157.i, %._crit_edge.i176.i, %._crit_edge.i193.i, %._crit_edge.i212.i, %._crit_edge.i231.i, %._crit_edge.i250.i, %._crit_edge.i269.i, %._crit_edge.i288.i, %._crit_edge.i307.i, %_ZN5arrow8internal12unpack_widthILi16ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT1_ii.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow8internal11unpack_avx2IjEEvPKhPT_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  tail call fastcc void @_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii(ptr nofree noundef readonly %0, ptr nofree noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca i64, align 8                     ; 5 uses
  %i.ag = alloca i64, align 8                     ; 5 uses
  %i.ah = alloca i64, align 8                     ; 5 uses
  %i.ai = alloca i64, align 8                     ; 5 uses
  %i.aj = alloca i64, align 8                     ; 5 uses
  %i.ak = alloca i64, align 8                     ; 5 uses
  %i.al = alloca i64, align 8                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i64, align 8                     ; 5 uses
  %i.ao = alloca i64, align 8                     ; 5 uses
  %i.ap = alloca i64, align 8                     ; 5 uses
  %i.aq = alloca i64, align 8                     ; 5 uses
  %i.ar = alloca i64, align 8                     ; 5 uses
  %i.as = alloca i64, align 8                     ; 5 uses
  %i.at = alloca i64, align 8                     ; 5 uses
  %i.au = alloca i64, align 8                     ; 5 uses
  %i.av = alloca i64, align 8                     ; 5 uses
  %i.aw = alloca i64, align 8                     ; 5 uses
  %i.ax = alloca i64, align 8                     ; 5 uses
  %i.ay = alloca i64, align 8                     ; 5 uses
  %i.az = alloca i64, align 8                     ; 5 uses
  %i.ba = alloca i64, align 8                     ; 5 uses
  %i.bb = alloca i64, align 8                     ; 5 uses
  %i.bc = alloca i64, align 8                     ; 5 uses
  %i.bd = alloca i64, align 8                     ; 5 uses
  switch i32 %3, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.m
    i32 7, label %bb.o
    i32 8, label %bb.q
    i32 9, label %bb.s
    i32 10, label %bb.u
    i32 11, label %bb.w
    i32 12, label %bb.y
    i32 13, label %bb.aa
    i32 14, label %bb.ac
    i32 15, label %bb.ae
    i32 16, label %bb.ag
    i32 17, label %bb.ai
    i32 18, label %bb.ak
    i32 19, label %bb.am
    i32 20, label %bb.ao
    i32 21, label %bb.aq
    i32 22, label %bb.as
    i32 23, label %bb.au
    i32 24, label %bb.aw
    i32 25, label %bb.ay
    i32 26, label %bb.ba
    i32 27, label %bb.bc
    i32 28, label %bb.be
    i32 29, label %bb.bg
    i32 30, label %bb.bi
    i32 31, label %bb.bk
    i32 32, label %bb.bm
  ]

bb.b:                                             ; preds = %bb.a
  %i.be = sext i32 %2 to i64
  %i.bf = shl nsw i64 %i.be, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.bf, i1 false)
  br label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit

bb.c:                                             ; preds = %bb.a
  %i.bg = add nsw i32 %4, %2
  %i.bh = icmp sgt i32 %2, 0
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.026.i.i = phi ptr [ %i.br, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.bk, %bb.d ], [ %4, %bb.c ] ; 4 uses
  %i.bi = srem i32 %.02325.i.i, 8                 ; 2 uses
  %i.bj = sdiv i32 %.02325.i.i, 8
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal12unpack_exactILi1ELb1EjEEiPKhPT1_ii.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bk = add nsw i32 %.02325.i.i, 1              ; 3 uses
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = lshr i32 %i.bo, %i.bi
  %i.bq = and i32 %i.bp, 1
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12unpack_widthILi63ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %.02535, i64 192
  %i.dm = getelementptr inbounds nuw i8, ptr %.02535, i64 216
  %i.dn = load <4 x i64>, ptr %i.df, align 1
  %i.do = load <4 x i64>, ptr %i.dl, align 1
  %i.dp = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.do, <4 x i64> %i.dn, <4 x i64> <i64 24, i64 25, i64 26, i64 27>)
  %i.dq = and <4 x i64> %i.dp, splat (i64 9223372036854775807)
  store <4 x i64> %i.dq, ptr %i.dk, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %.02634, i64 224
  %i.ds = getelementptr inbounds nuw i8, ptr %.02535, i64 224
  %i.dt = getelementptr inbounds nuw i8, ptr %.02535, i64 248
  %i.du = load <4 x i64>, ptr %i.dm, align 1
  %i.dv = load <4 x i64>, ptr %i.ds, align 1
  %i.dw = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dv, <4 x i64> %i.du, <4 x i64> <i64 28, i64 29, i64 30, i64 31>)
  %i.dx = and <4 x i64> %i.dw, splat (i64 9223372036854775807)
  store <4 x i64> %i.dx, ptr %i.dr, align 1, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %.02634, i64 256
  %i.dz = getelementptr inbounds nuw i8, ptr %.02535, i64 256
  %i.ea = getelementptr inbounds nuw i8, ptr %.02535, i64 280
  %i.eb = load <4 x i64>, ptr %i.dt, align 1
  %i.ec = load <4 x i64>, ptr %i.dz, align 1
  %i.ed = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ec, <4 x i64> %i.eb, <4 x i64> <i64 32, i64 33, i64 34, i64 35>)
  %i.ee = and <4 x i64> %i.ed, splat (i64 9223372036854775807)
  store <4 x i64> %i.ee, ptr %i.dy, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %.02634, i64 288
  %i.eg = getelementptr inbounds nuw i8, ptr %.02535, i64 288
  %i.eh = getelementptr inbounds nuw i8, ptr %.02535, i64 312
  %i.ei = load <4 x i64>, ptr %i.ea, align 1
  %i.ej = load <4 x i64>, ptr %i.eg, align 1
  %i.ek = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ej, <4 x i64> %i.ei, <4 x i64> <i64 36, i64 37, i64 38, i64 39>)
  %i.el = and <4 x i64> %i.ek, splat (i64 9223372036854775807)
  store <4 x i64> %i.el, ptr %i.ef, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %.02634, i64 320
  %i.en = getelementptr inbounds nuw i8, ptr %.02535, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %.02535, i64 344
  %i.ep = load <4 x i64>, ptr %i.eh, align 1
  %i.eq = load <4 x i64>, ptr %i.en, align 1
  %i.er = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.eq, <4 x i64> %i.ep, <4 x i64> <i64 40, i64 41, i64 42, i64 43>)
  %i.es = and <4 x i64> %i.er, splat (i64 9223372036854775807)
  store <4 x i64> %i.es, ptr %i.em, align 1, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.02634, i64 352
  %i.eu = getelementptr inbounds nuw i8, ptr %.02535, i64 352
  %i.ev = getelementptr inbounds nuw i8, ptr %.02535, i64 376
  %i.ew = load <4 x i64>, ptr %i.eo, align 1
  %i.ex = load <4 x i64>, ptr %i.eu, align 1
  %i.ey = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.ex, <4 x i64> %i.ew, <4 x i64> <i64 44, i64 45, i64 46, i64 47>)
  %i.ez = and <4 x i64> %i.ey, splat (i64 9223372036854775807)
  store <4 x i64> %i.ez, ptr %i.et, align 1, !tbaa !11
  %i.fa = getelementptr inbounds nuw i8, ptr %.02634, i64 384
  %i.fb = getelementptr inbounds nuw i8, ptr %.02535, i64 384
  %i.fc = getelementptr inbounds nuw i8, ptr %.02535, i64 408
  %i.fd = load <4 x i64>, ptr %i.ev, align 1
  %i.fe = load <4 x i64>, ptr %i.fb, align 1
  %i.ff = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fe, <4 x i64> %i.fd, <4 x i64> <i64 48, i64 49, i64 50, i64 51>)
  %i.fg = and <4 x i64> %i.ff, splat (i64 9223372036854775807)
  store <4 x i64> %i.fg, ptr %i.fa, align 1, !tbaa !11
  %i.fh = getelementptr inbounds nuw i8, ptr %.02634, i64 416
  %i.fi = getelementptr inbounds nuw i8, ptr %.02535, i64 416
  %i.fj = getelementptr inbounds nuw i8, ptr %.02535, i64 440
  %i.fk = load <4 x i64>, ptr %i.fc, align 1
  %i.fl = load <4 x i64>, ptr %i.fi, align 1
  %i.fm = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fl, <4 x i64> %i.fk, <4 x i64> <i64 52, i64 53, i64 54, i64 55>)
  %i.fn = and <4 x i64> %i.fm, splat (i64 9223372036854775807)
  store <4 x i64> %i.fn, ptr %i.fh, align 1, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %.02634, i64 448
  %i.fp = getelementptr inbounds nuw i8, ptr %.02535, i64 448
  %i.fq = getelementptr inbounds nuw i8, ptr %.02535, i64 472
  %i.fr = load <4 x i64>, ptr %i.fj, align 1
  %i.fs = load <4 x i64>, ptr %i.fp, align 1
  %i.ft = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.fs, <4 x i64> %i.fr, <4 x i64> <i64 56, i64 57, i64 58, i64 59>)
  %i.fu = and <4 x i64> %i.ft, splat (i64 9223372036854775807)
  store <4 x i64> %i.fu, ptr %i.fo, align 1, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %.02634, i64 480
  %i.fw = getelementptr inbounds nuw i8, ptr %.02535, i64 480
  %i.fx = getelementptr inbounds nuw i8, ptr %.02535, i64 488
  %i.fy = load <2 x i64>, ptr %i.fq, align 1
  %i.fz = load i64, ptr %i.fx, align 1
  %i.ga = load <2 x i64>, ptr %i.fw, align 1
  %i.gb = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ga, <2 x i64> %i.fy, <2 x i64> <i64 60, i64 61>)
  %i.gc = getelementptr inbounds nuw i8, ptr %.02535, i64 496
  %i.gd = load i64, ptr %i.gc, align 1            ; 2 uses
  %i.ge = tail call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.fz, i64 62)
  %i.gf = shufflevector <2 x i64> %i.gb, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gg = insertelement <4 x i64> %i.gf, i64 %i.ge, i64 2
  %i.gh = insertelement <4 x i64> %i.gg, i64 %i.gd, i64 3
  %i.gi = lshr <4 x i64> %i.gh, <i64 0, i64 0, i64 0, i64 1>
  %i.gj = and <4 x i64> %i.gi, splat (i64 9223372036854775807)
  store <4 x i64> %i.gj, ptr %i.fv, align 1, !tbaa !11
  %i.gk = getelementptr inbounds nuw i8, ptr %.02535, i64 504 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.02634, i64 512 ; 2 uses
  %i.gm = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !487
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi64ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = shl nsw i32 %2, 6
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02838.i = phi i32 [ %i.g, %bb.d ], [ %3, %bb.a ] ; 5 uses
  %.02937.i = phi ptr [ %i.y, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.e = srem i32 %.02838.i, 8                    ; 3 uses
  %i.f = sdiv i32 %.02838.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02838.i, 64                ; 3 uses
  %i.h = add nsw i32 %.02838.i, 63
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 3 uses
  %i.k = icmp slt i32 %i.j, 9
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.j, i32 7)
  %.sroa.speculated.i = add nsw i32 %i.n, 1
  %i.o = sext i32 %.sroa.speculated.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.m, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p     ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !13
  %i.r = icmp sgt i32 %i.j, 7
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.a, align 8
  %.0..0..0..0..0..0.6.i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.u = sub nsw i32 64, %i.e
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.0..0..0..0..0..0.6.i, %i.v
  %i.x = or i64 %i.w, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.x, %bb.c ], [ %i.q, %bb.b ]
  store i64 %.0.i, ptr %.02937.i, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.02937.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp slt i32 %i.g, %i.c
  br i1 %i.z, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !488

_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.028.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02838.i, %.lr.ph.i ], [ %i.g, %bb.d ]
  %i.aa = sub nsw i32 %.028.lcssa.i, %3
  %i.ab = sdiv i32 %i.aa, 64                      ; 3 uses
  %i.ac = shl nsw i32 %i.ab, 6
  %i.ad = add nsw i32 %i.ac, %3
  %i.ae = sub nsw i32 %2, %i.ab
  %i.af = sdiv i32 %i.ad, 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %i.ak = sext i32 %i.ae to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aj, ptr align 1 %i.ah, i64 %i.al, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <9 x i32> @llvm.masked.load.v9i32.p0(ptr captures(none), <9 x i1>, <9 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <11 x i32> @llvm.masked.load.v11i32.p0(ptr captures(none), <11 x i1>, <11 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <12 x i32> @llvm.masked.load.v12i32.p0(ptr captures(none), <12 x i1>, <12 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshl.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i32> @llvm.masked.load.v5i32.p0(ptr captures(none), <5 x i1>, <5 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 4, i32 28}
!11 = !{!4, !4, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"branch_weights", i32 8, i32 24}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !7, !8, !9}
!21 = distinct !{!21, !7, !8, !9}
!22 = distinct !{!22, !7, !8}
!23 = distinct !{!23, !7}
!24 = !{!"bool", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!18}
!27 = !{!19}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !7, !8, !9}
!33 = distinct !{!33, !7, !8, !9}
!34 = distinct !{!34, !7, !8}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !7, !8, !9}
!41 = distinct !{!41, !7, !8, !9}
!42 = distinct !{!42, !7, !8}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, i1 false, !"LVerDomain"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !7, !8, !9}
!52 = distinct !{!52, !7, !8}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = !{!30}
!65 = !{!31}
!66 = !{!38}
!67 = !{!39}
!68 = !{!49}
!69 = !{!50}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, i1 false, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !7, !8, !9}
!75 = distinct !{!75, !7, !8, !9}
!76 = distinct !{!76, !7, !8}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !7, !8, !9}
!83 = distinct !{!83, !7, !8, !9}
!84 = distinct !{!84, !7, !8}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7}
!87 = distinct !{!87, !7}
!88 = distinct !{!88, !7}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !7, !8, !9}
!94 = distinct !{!94, !7, !8, !9}
!95 = distinct !{!95, !7, !8}
!96 = distinct !{!96, !7}
!97 = distinct !{!97, !7}
!98 = distinct !{!98, !7}
!99 = distinct !{!99, !7}
!100 = distinct !{!100, !7}
!101 = distinct !{!101, !7}
!102 = distinct !{!102, !7}
!103 = distinct !{!103, !7}
!104 = distinct !{!104, !7}
!105 = distinct !{!105, !7}
!106 = distinct !{!106, !7}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !7, !8, !9}
!111 = distinct !{!111, !7, !8}
!112 = distinct !{!112, !7}
!113 = distinct !{!113, !7}
!114 = distinct !{!114, !7}
!115 = distinct !{!115, !7}
!116 = distinct !{!116, !7}
!117 = distinct !{!117, !7}
!118 = distinct !{!118, !7}
!119 = distinct !{!119, !7}
!120 = distinct !{!120, !7}
!121 = distinct !{!121, !7}
!122 = distinct !{!122, !7}
!123 = distinct !{!123, !7}
!124 = distinct !{!124, !7}
!125 = distinct !{!125, !7}
!126 = distinct !{!126, !7}
!127 = distinct !{!127, !7}
!128 = distinct !{!128, !7}
!129 = distinct !{!129, !7}
!130 = distinct !{!130, !7}
!131 = distinct !{!131, !7}
!132 = distinct !{!132, !7}
!133 = distinct !{!133, !7}
!134 = distinct !{!134, !7}
!135 = !{!"short", !4, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!72}
!138 = !{!73}
!139 = !{!80}
!140 = !{!81}
!141 = !{!91}
!142 = !{!92}
!143 = !{!"branch_weights", i32 8, i32 8}
!144 = !{!108}
!145 = !{!109}
!146 = distinct !{!146, !7}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !7, !8, !9}
!151 = distinct !{!151, !7, !8, !9}
!152 = distinct !{!152, !7, !8}
!153 = distinct !{!153, !7}
!154 = distinct !{!154, !7}
!155 = distinct !{!155, i1 false, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !7, !8, !9}
!159 = distinct !{!159, !7, !8, !9}
!160 = distinct !{!160, !7, !8}
!161 = distinct !{!161, !7}
!162 = distinct !{!162, !7}
!163 = distinct !{!163, !7}
!164 = distinct !{!164, !7}
!165 = distinct !{!165, !7}
!166 = distinct !{!166, i1 false, !"LVerDomain"}
!167 = distinct !{!167, !166}
!168 = distinct !{!168, !166}
!169 = distinct !{!169, !7, !8, !9}
!170 = distinct !{!170, !7, !8}
!171 = distinct !{!171, !7}
!172 = distinct !{!172, !7}
!173 = distinct !{!173, !7}
end_hunk_2
