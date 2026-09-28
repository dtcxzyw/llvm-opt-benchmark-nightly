Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hevcdec?download=true
inline.NumInlined: 143
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
begin_hunk_0_@decode_nal_units:bb.a
  store i32 %i.amn, ptr %i.cm, align 8, !tbaa !220
  %.not.i5.i644.i.i.i = icmp eq i32 %i.ami, 32
  br i1 %.not.i5.i644.i.i.i, label %get_ue_golomb_long.exit647.thread.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.amo = icmp samesign ugt i32 %i.ami, 6
  %i.amp = lshr i32 %i.amn, 3
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.amq
  %i.ams = load i32, ptr %i.amr, align 1, !tbaa !76
  %i.amt = call i32 @llvm.bswap.i32(i32 %i.ams)
  %i.amu = and i32 %i.amn, 7
  %i.amv = shl i32 %i.amt, %i.amu                 ; 2 uses
  br i1 %i.amo, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.amw = lshr i32 %i.amv, %i.ami
  %reass.sub185 = sub i32 %i.amn, %i.ami
  %i.amx = add i32 %reass.sub185, 32
  %i.amy = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.amx)
  br label %get_ue_golomb_long.exit647.i.i.i

bb.et:                                            ; preds = %bb.er
  %i.amz = lshr i32 %i.amv, 16
  %i.ana = add i32 %i.amn, 16
  %i.anb = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.ana) ; 4 uses
  store i32 %i.anb, ptr %i.cm, align 8, !tbaa !220
  %i.anc = sub nuw nsw i32 16, %i.ami             ; 2 uses
  %i.and = shl nuw i32 %i.amz, %i.anc
  %i.ane = lshr i32 %i.anb, 3
  %i.anf = zext nneg i32 %i.ane to i64
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.anf
  %i.anh = load i32, ptr %i.ang, align 1, !tbaa !76
  %i.ani = call i32 @llvm.bswap.i32(i32 %i.anh)
  %i.anj = and i32 %i.anb, 7
  %i.ank = shl i32 %i.ani, %i.anj
  %i.anl = or disjoint i32 %i.amh, 16
  %i.anm = lshr i32 %i.ank, %i.anl
  %i.ann = add i32 %i.anb, %i.anc
  %i.ano = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.ann)
  %i.anp = or i32 %i.anm, %i.and
  br label %get_ue_golomb_long.exit647.i.i.i

get_ue_golomb_long.exit647.i.i.i:                 ; preds = %bb.et, %bb.es
  %.sink.i.i = phi i32 [ %i.amy, %bb.es ], [ %i.ano, %bb.et ] ; 8 uses
  %.0.i.i645.i.i.i = phi i32 [ %i.amw, %bb.es ], [ %i.anp, %bb.et ]
  store i32 %.sink.i.i, ptr %i.cm, align 8, !tbaa !220
  %i.anq = add i32 %.0.i.i645.i.i.i, -1           ; 5 uses
  %.val585.i.i.i = load i32, ptr %i.dc, align 4, !tbaa !229
  %i.anr = sub nsw i32 %.val585.i.i.i, %.sink.i.i
  %i.ans = icmp ugt i32 %i.anq, %i.anr
  %i.ant = icmp ugt i32 %i.anq, 65535
  %or.cond21.i.i.i = or i1 %i.ant, %i.ans
  br i1 %or.cond21.i.i.i, label %get_ue_golomb_long.exit647.thread.i.i.i, label %bb.eu

get_ue_golomb_long.exit647.thread.i.i.i:          ; preds = %get_ue_golomb_long.exit647.i.i.i, %bb.eq
  %i.anu = phi i32 [ %i.anq, %get_ue_golomb_long.exit647.i.i.i ], [ -1, %bb.eq ]
  %i.anv = load ptr, ptr %i.v, align 8, !tbaa !78
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.anv, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef %i.anu) #15
  br label %hls_slice_header.exit.thread.i.i

bb.eu:                                            ; preds = %get_ue_golomb_long.exit647.i.i.i
  store i32 %i.anq, ptr %i.el, align 8, !tbaa !454
  %.not720.i.i.i = icmp eq i32 %i.anq, 0
  br i1 %.not720.i.i.i, label %.loopexit731.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.anw = lshr i32 %.sink.i.i, 3
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 1, !tbaa !76
  %i.aoa = call i32 @llvm.bswap.i32(i32 %i.anz)
  %i.aob = and i32 %.sink.i.i, 7
  %i.aoc = shl i32 %i.aoa, %i.aob                 ; 3 uses
  %i.aod = and i32 %i.aoc, -65536
  %i.aoe = add i32 %.sink.i.i, 16
  %i.aof = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.aoe) ; 2 uses
  %i.aog = lshr i32 %i.aof, 3
  %i.aoh = zext nneg i32 %i.aog to i64
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.aoh
  %i.aoj = load i32, ptr %i.aoi, align 1, !tbaa !76
  %i.aok = call i32 @llvm.bswap.i32(i32 %i.aoj)
  %i.aol = and i32 %i.aof, 7
  %i.aom = shl i32 %i.aok, %i.aol
  %i.aon = lshr i32 %i.aom, 16
  %i.aoo = or disjoint i32 %i.aon, %i.aod
  %.not.i.i653.i.i.i = icmp ult i32 %i.aoc, 65536 ; 2 uses
  %i.aop = lshr i32 %i.aoc, 16
  %spec.select.i.i654.i.i.i = select i1 %.not.i.i653.i.i.i, i32 %i.aoo, i32 %i.aop ; 3 uses
  %spec.select12.i.i655.i.i.i = select i1 %.not.i.i653.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i656.i.i.i = icmp samesign ult i32 %spec.select.i.i654.i.i.i, 256 ; 2 uses
  %i.aoq = lshr i32 %spec.select.i.i654.i.i.i, 8
  %i.aor = or disjoint i32 %spec.select12.i.i655.i.i.i, 8
  %.110.i.i657.i.i.i = select i1 %.not11.i.i656.i.i.i, i32 %spec.select.i.i654.i.i.i, i32 %i.aoq
  %.1.i.i658.i.i.i = select i1 %.not11.i.i656.i.i.i, i32 %spec.select12.i.i655.i.i.i, i32 %i.aor
  %i.aos = zext nneg i32 %.110.i.i657.i.i.i to i64
  %i.aot = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aos
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !76
  %i.aov = zext i8 %i.aou to i32                  ; 2 uses
  %i.aow = add nuw nsw i32 %.1.i.i658.i.i.i, %i.aov ; 6 uses
  %i.aox = sub nsw i32 31, %i.aow                 ; 2 uses
  %i.aoy = sub nsw i32 0, %.sink.i.i              ; 2 uses
  %i.aoz = sub nsw i32 %.sroa.76.0.copyload.i.i635.i.i.i, %.sink.i.i
  %i.apa = icmp slt i32 %i.aox, %i.aoy
  %..i.i.i659.i.i.i = call i32 @llvm.smin.i32(i32 range(i32 -248, 32) %i.aox, i32 %i.aoz)
  %.0.i.i.i660.i.i.i = select i1 %i.apa, i32 %i.aoy, i32 %..i.i.i659.i.i.i
  %i.apb = add nsw i32 %.0.i.i.i660.i.i.i, %.sink.i.i ; 5 uses
  store i32 %i.apb, ptr %i.cm, align 8, !tbaa !220
  %.not.i5.i661.i.i.i = icmp eq i32 %i.aow, 32
  br i1 %.not.i5.i661.i.i.i, label %get_ue_golomb_long.exit664.thread.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.apc = icmp samesign ugt i32 %i.aow, 6
  %i.apd = lshr i32 %i.apb, 3
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 1, !tbaa !76
  %i.aph = call i32 @llvm.bswap.i32(i32 %i.apg)
  %i.api = and i32 %i.apb, 7
  %i.apj = shl i32 %i.aph, %i.api                 ; 2 uses
  br i1 %i.apc, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.apk = lshr i32 %i.apj, %i.aow
  %reass.sub186 = sub i32 %i.apb, %i.aow
  %i.apl = add i32 %reass.sub186, 32
  %i.apm = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.apl)
  br label %get_ue_golomb_long.exit664.i.i.i

bb.ey:                                            ; preds = %bb.ew
  %i.apn = lshr i32 %i.apj, 16
  %i.apo = add i32 %i.apb, 16
  %i.app = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.apo) ; 4 uses
  store i32 %i.app, ptr %i.cm, align 8, !tbaa !220
  %i.apq = sub nuw nsw i32 16, %i.aow             ; 2 uses
  %i.apr = shl nuw i32 %i.apn, %i.apq
  %i.aps = lshr i32 %i.app, 3
  %i.apt = zext nneg i32 %i.aps to i64
  %i.apu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i631.i.i.i, i64 %i.apt
  %i.apv = load i32, ptr %i.apu, align 1, !tbaa !76
  %i.apw = call i32 @llvm.bswap.i32(i32 %i.apv)
  %i.apx = and i32 %i.app, 7
  %i.apy = shl i32 %i.apw, %i.apx
  %i.apz = or disjoint i32 %i.aov, 16
  %i.aqa = lshr i32 %i.apy, %i.apz
  %i.aqb = add i32 %i.app, %i.apq
  %i.aqc = call i32 @llvm.umin.i32(i32 %.sroa.76.0.copyload.i.i635.i.i.i, i32 %i.aqb)
  %i.aqd = or i32 %i.aqa, %i.apr
  br label %get_ue_golomb_long.exit664.i.i.i

get_ue_golomb_long.exit664.i.i.i:                 ; preds = %bb.ey, %bb.ex
  %.sink778.i.i.i = phi i32 [ %i.apm, %bb.ex ], [ %i.aqc, %bb.ey ]
  %.0.i.i662.i.i.i = phi i32 [ %i.apk, %bb.ex ], [ %i.aqd, %bb.ey ] ; 7 uses
  store i32 %.sink778.i.i.i, ptr %i.cm, align 8, !tbaa !220
  %i.aqe = add i32 %.0.i.i662.i.i.i, -33
  %or.cond23.i.i.i = icmp ult i32 %i.aqe, -32
  br i1 %or.cond23.i.i.i, label %get_ue_golomb_long.exit664.thread.i.i.i, label %bb.ez

get_ue_golomb_long.exit664.thread.i.i.i:          ; preds = %get_ue_golomb_long.exit664.i.i.i, %bb.ev
  %.0.i.i662711.i.i.i = phi i32 [ %.0.i.i662.i.i.i, %get_ue_golomb_long.exit664.i.i.i ], [ 0, %bb.ev ]
  store i32 0, ptr %i.el, align 8, !tbaa !454
  %i.aqf = load ptr, ptr %i.v, align 8, !tbaa !78
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aqf, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %.0.i.i662711.i.i.i) #15
  br label %hls_slice_header.exit.thread.i.i

bb.ez:                                            ; preds = %get_ue_golomb_long.exit664.i.i.i
  call void @av_freep(ptr noundef nonnull %i.em) #15
  call void @av_freep(ptr noundef nonnull %i.en) #15
  call void @av_freep(ptr noundef nonnull %i.eo) #15
  %i.aqg = load i32, ptr %i.el, align 8, !tbaa !454
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = call ptr @av_malloc_array(i64 noundef %i.aqh, i64 noundef 4) #15
  store ptr %i.aqi, ptr %i.em, align 8, !tbaa !455
  %i.aqj = load i32, ptr %i.el, align 8, !tbaa !454
  %i.aqk = add nsw i32 %i.aqj, 1
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = call ptr @av_malloc_array(i64 noundef %i.aql, i64 noundef 4) #15
  store ptr %i.aqm, ptr %i.en, align 8, !tbaa !456
  %i.aqn = load i32, ptr %i.el, align 8, !tbaa !454
  %i.aqo = add nsw i32 %i.aqn, 1
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = call ptr @av_malloc_array(i64 noundef %i.aqp, i64 noundef 4) #15 ; 2 uses
  store ptr %i.aqq, ptr %i.eo, align 8, !tbaa !457
  %i.aqr = load ptr, ptr %i.em, align 8, !tbaa !455 ; 3 uses
  %.not532.i.i.i = icmp eq ptr %i.aqr, null
  br i1 %.not532.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aqs = load ptr, ptr %i.en, align 8, !tbaa !456
  %.not533.i.i.i = icmp eq ptr %i.aqs, null
  %.not534.i.i.i = icmp eq ptr %i.aqq, null
  %or.cond551.i.i.i = select i1 %.not533.i.i.i, i1 true, i1 %.not534.i.i.i
  br i1 %or.cond551.i.i.i, label %bb.fb, label %.preheader730.i.i.i

.preheader730.i.i.i:                              ; preds = %bb.fa
  %i.aqt = load i32, ptr %i.el, align 8, !tbaa !454
  %i.aqu = icmp sgt i32 %i.aqt, 0
  br i1 %i.aqu, label %.lr.ph743.split.i.i.i, label %.loopexit731.i.i.i

.lr.ph743.split.i.i.i:                            ; preds = %.preheader730.i.i.i
  %4 = icmp samesign ult i32 %.0.i.i662.i.i.i, 26
  %5 = load ptr, ptr %3, align 8, !tbaa !221      ; 3 uses
  %i.aqv = add nsw i32 %.0.i.i662.i.i.i, -16      ; 2 uses
  %i.aqw = sub nuw nsw i32 48, %.0.i.i662.i.i.i
  %i.aqx = sub nuw nsw i32 32, %.0.i.i662.i.i.i
  br i1 %4, label %get_bits_long.exit.us745.i.i.i, label %get_bits_long.exit.i.i.i

get_bits_long.exit.us745.i.i.i:                   ; preds = %.lr.ph743.split.i.i.i, %get_bits_long.exit.us745.i.i.i
  %indvars.iv768.i.i.i = phi i64 [ %indvars.iv.next769.i.i.i, %get_bits_long.exit.us745.i.i.i ], [ 0, %.lr.ph743.split.i.i.i ] ; 2 uses
  %i.aqy = load i32, ptr %i.cm, align 8, !tbaa !220 ; 3 uses
  %i.aqz = load i32, ptr %i.cn, align 8, !tbaa !222
  %i.ara = lshr i32 %i.aqy, 3
  %i.arb = zext nneg i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw i8, ptr %5, i64 %i.arb
  %i.ard = load i32, ptr %i.arc, align 1, !tbaa !76
  %i.are = call i32 @llvm.bswap.i32(i32 %i.ard)
  %i.arf = and i32 %i.aqy, 7
  %i.arg = shl i32 %i.are, %i.arf
  %i.arh = lshr i32 %i.arg, %i.aqx
  %i.ari = add i32 %i.aqy, %.0.i.i662.i.i.i
  %i.arj = call i32 @llvm.umin.i32(i32 %i.aqz, i32 %i.ari)
  store i32 %i.arj, ptr %i.cm, align 8, !tbaa !220
  %i.ark = add i32 %i.arh, 1
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %indvars.iv768.i.i.i
  store i32 %i.ark, ptr %i.arl, align 4, !tbaa !102
  %indvars.iv.next769.i.i.i = add nuw nsw i64 %indvars.iv768.i.i.i, 1 ; 2 uses
  %i.arm = load i32, ptr %i.el, align 8, !tbaa !454
  %i.arn = sext i32 %i.arm to i64
  %i.aro = icmp slt i64 %indvars.iv.next769.i.i.i, %i.arn
  br i1 %i.aro, label %get_bits_long.exit.us745.i.i.i, label %.loopexit731.i.i.i, !llvm.loop !371

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  store i32 0, ptr %i.el, align 8, !tbaa !454
  %i.arp = load ptr, ptr %i.v, align 8, !tbaa !78
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.arp, i32 noundef 16, ptr noundef nonnull @.str.53) #15
  br label %hls_slice_header.exit.thread.i.i

get_bits_long.exit.i.i.i:                         ; preds = %.lr.ph743.split.i.i.i, %get_bits_long.exit.i.i.i
  %indvars.iv765.i.i.i = phi i64 [ %indvars.iv.next766.i.i.i, %get_bits_long.exit.i.i.i ], [ 0, %.lr.ph743.split.i.i.i ] ; 2 uses
  %i.arq = load i32, ptr %i.cm, align 8, !tbaa !220 ; 3 uses
  %i.arr = load i32, ptr %i.cn, align 8, !tbaa !222 ; 2 uses
  %i.ars = lshr i32 %i.arq, 3
  %i.art = zext nneg i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr %5, i64 %i.art
  %i.arv = load i32, ptr %i.aru, align 1, !tbaa !76
  %i.arw = call i32 @llvm.bswap.i32(i32 %i.arv)
  %i.arx = and i32 %i.arq, 7
  %i.ary = shl i32 %i.arw, %i.arx
  %i.arz = lshr i32 %i.ary, 16
  %i.asa = add i32 %i.arq, 16
  %i.asb = call i32 @llvm.umin.i32(i32 %i.arr, i32 %i.asa) ; 4 uses
  store i32 %i.asb, ptr %i.cm, align 8, !tbaa !220
  %i.asc = shl nuw i32 %i.arz, %i.aqv
  %i.asd = lshr i32 %i.asb, 3
  %i.ase = zext nneg i32 %i.asd to i64
  %i.asf = getelementptr inbounds nuw i8, ptr %5, i64 %i.ase
  %i.asg = load i32, ptr %i.asf, align 1, !tbaa !76
  %i.ash = call i32 @llvm.bswap.i32(i32 %i.asg)
  %i.asi = and i32 %i.asb, 7
  %i.asj = shl i32 %i.ash, %i.asi
  %i.ask = lshr i32 %i.asj, %i.aqw
  %i.asl = add i32 %i.asb, %i.aqv
  %i.asm = call i32 @llvm.umin.i32(i32 %i.arr, i32 %i.asl)
  store i32 %i.asm, ptr %i.cm, align 8, !tbaa !220
  %i.asn = or i32 %i.ask, %i.asc
  %i.aso = add i32 %i.asn, 1
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %indvars.iv765.i.i.i
  store i32 %i.aso, ptr %i.asp, align 4, !tbaa !102
  %indvars.iv.next766.i.i.i = add nuw nsw i64 %indvars.iv765.i.i.i, 1 ; 2 uses
  %i.asq = load i32, ptr %i.el, align 8, !tbaa !454
  %i.asr = sext i32 %i.asq to i64
  %i.ass = icmp slt i64 %indvars.iv.next766.i.i.i, %i.asr
  br i1 %i.ass, label %get_bits_long.exit.i.i.i, label %.loopexit731.i.i.i, !llvm.loop !371

.loopexit731.i.i.i:                               ; preds = %get_bits_long.exit.i.i.i, %get_bits_long.exit.us745.i.i.i, %.preheader730.i.i.i, %bb.eu, %bb.ep
  %i.ast = getelementptr inbounds nuw i8, ptr %i.lw, i64 1628
  %i.asu = load i8, ptr %i.ast, align 4, !tbaa !458
  %.not535.i.i.i = icmp eq i8 %i.asu, 0
  %.pre787.i.i.i.a = load i32, ptr %i.cm, align 8, !tbaa !102 ; 7 uses
  %.pre788.i.i.i = load ptr, ptr %3, align 8, !tbaa !184 ; 5 uses
  %.pre789.i.i.i = load i32, ptr %i.cn, align 8, !tbaa !102 ; 12 uses
  br i1 %.not535.i.i.i, label %.loopexit731.i.i..loopexit.i.i_crit_edge.i, label %bb.fc

.loopexit731.i.i..loopexit.i.i_crit_edge.i:       ; preds = %.loopexit731.i.i.i
  %.val581.i.i.pre.i = load i32, ptr %i.dc, align 4
  br label %.loopexit.i.i.i

bb.fc:                                            ; preds = %.loopexit731.i.i.i
  %i.asv = lshr i32 %.pre787.i.i.i.a, 3
  %i.asw = zext nneg i32 %i.asv to i64
  %i.asx = getelementptr inbounds nuw i8, ptr %.pre788.i.i.i, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 1, !tbaa !76
  %i.asz = call i32 @llvm.bswap.i32(i32 %i.asy)
  %i.ata = and i32 %.pre787.i.i.i.a, 7
  %i.atb = shl i32 %i.asz, %i.ata                 ; 3 uses
  %i.atc = and i32 %i.atb, -65536
  %i.atd = add i32 %.pre787.i.i.i.a, 16
  %i.ate = call i32 @llvm.umin.i32(i32 %.pre789.i.i.i, i32 %i.atd) ; 2 uses
  %i.atf = lshr i32 %i.ate, 3
  %i.atg = zext nneg i32 %i.atf to i64
  %i.ath = getelementptr inbounds nuw i8, ptr %.pre788.i.i.i, i64 %i.atg
  %i.ati = load i32, ptr %i.ath, align 1, !tbaa !76
  %i.atj = call i32 @llvm.bswap.i32(i32 %i.ati)
  %i.atk = and i32 %i.ate, 7
  %i.atl = shl i32 %i.atj, %i.atk
  %i.atm = lshr i32 %i.atl, 16
  %i.atn = or disjoint i32 %i.atm, %i.atc
  %.not.i.i671.i.i.i = icmp ult i32 %i.atb, 65536 ; 2 uses
  %i.ato = lshr i32 %i.atb, 16
  %spec.select.i.i672.i.i.i = select i1 %.not.i.i671.i.i.i, i32 %i.atn, i32 %i.ato ; 3 uses
  %spec.select12.i.i673.i.i.i = select i1 %.not.i.i671.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i674.i.i.i = icmp samesign ult i32 %spec.select.i.i672.i.i.i, 256 ; 2 uses
  %i.atp = lshr i32 %spec.select.i.i672.i.i.i, 8
  %i.atq = or disjoint i32 %spec.select12.i.i673.i.i.i, 8
  %.110.i.i675.i.i.i = select i1 %.not11.i.i674.i.i.i, i32 %spec.select.i.i672.i.i.i, i32 %i.atp
  %.1.i.i676.i.i.i = select i1 %.not11.i.i674.i.i.i, i32 %spec.select12.i.i673.i.i.i, i32 %i.atq
  %i.atr = zext nneg i32 %.110.i.i675.i.i.i to i64
  %i.ats = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.atr
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !76
  %i.atu = zext i8 %i.att to i32                  ; 2 uses
  %i.atv = add nuw nsw i32 %.1.i.i676.i.i.i, %i.atu ; 6 uses
  %i.atw = sub nsw i32 31, %i.atv                 ; 2 uses
  %i.atx = sub nsw i32 0, %.pre787.i.i.i.a        ; 2 uses
  %i.aty = sub nsw i32 %.pre789.i.i.i, %.pre787.i.i.i.a
  %i.atz = icmp slt i32 %i.atw, %i.atx
  %..i.i.i677.i.i.i = call i32 @llvm.smin.i32(i32 range(i32 -248, 32) %i.atw, i32 %i.aty)
  %.0.i.i.i678.i.i.i = select i1 %i.atz, i32 %i.atx, i32 %..i.i.i677.i.i.i
  %i.aua = add nsw i32 %.0.i.i.i678.i.i.i, %.pre787.i.i.i.a ; 6 uses
  store i32 %i.aua, ptr %i.cm, align 8, !tbaa !220
  %.not.i5.i679.i.i.i = icmp eq i32 %i.atv, 32
  br i1 %.not.i5.i679.i.i.i, label %get_ue_golomb_long.exit682.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aub = icmp samesign ugt i32 %i.atv, 6
  %i.auc = lshr i32 %i.aua, 3
  %i.aud = zext nneg i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %.pre788.i.i.i, i64 %i.aud
  %i.auf = load i32, ptr %i.aue, align 1, !tbaa !76
  %i.aug = call i32 @llvm.bswap.i32(i32 %i.auf)
  %i.auh = and i32 %i.aua, 7
  %i.aui = shl i32 %i.aug, %i.auh                 ; 2 uses
  br i1 %i.aub, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.auj = lshr i32 %i.aui, %i.atv
  %reass.sub187 = sub i32 %i.aua, %i.atv
  %i.auk = add i32 %reass.sub187, 32
  %i.aul = call i32 @llvm.umin.i32(i32 %.pre789.i.i.i, i32 %i.auk) ; 2 uses
  store i32 %i.aul, ptr %i.cm, align 8, !tbaa !220
  br label %get_ue_golomb_long.exit682.i.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.aum = lshr i32 %i.aui, 16
  %i.aun = add i32 %i.aua, 16
  %i.auo = call i32 @llvm.umin.i32(i32 %.pre789.i.i.i, i32 %i.aun) ; 4 uses
  store i32 %i.auo, ptr %i.cm, align 8, !tbaa !220
  %i.aup = sub nuw nsw i32 16, %i.atv             ; 2 uses
  %i.auq = shl nuw i32 %i.aum, %i.aup
  %i.aur = lshr i32 %i.auo, 3
  %i.aus = zext nneg i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw i8, ptr %.pre788.i.i.i, i64 %i.aus
  %i.auu = load i32, ptr %i.aut, align 1, !tbaa !76
  %i.auv = call i32 @llvm.bswap.i32(i32 %i.auu)
  %i.auw = and i32 %i.auo, 7
  %i.aux = shl i32 %i.auv, %i.auw
  %i.auy = or disjoint i32 %i.atu, 16
  %i.auz = lshr i32 %i.aux, %i.auy
  %i.ava = add i32 %i.auo, %i.aup
  %i.avb = call i32 @llvm.umin.i32(i32 %.pre789.i.i.i, i32 %i.ava) ; 2 uses
  store i32 %i.avb, ptr %i.cm, align 8, !tbaa !220
  %i.avc = or i32 %i.auz, %i.auq
  br label %get_ue_golomb_long.exit682.i.i.i

get_ue_golomb_long.exit682.i.i.i:                 ; preds = %bb.ff, %bb.fe, %bb.fc
  %.promoted749.i.i.i = phi i32 [ %i.aul, %bb.fe ], [ %i.avb, %bb.ff ], [ %i.aua, %bb.fc ] ; 4 uses
  %.0.i.i680.i.i.i = phi i32 [ %i.auj, %bb.fe ], [ %i.avc, %bb.ff ], [ 0, %bb.fc ] ; 2 uses
  %i.avd = add i32 %.0.i.i680.i.i.i, -1           ; 4 uses
  %i.ave = zext i32 %i.avd to i64
  %i.avf = shl nuw nsw i64 %i.ave, 3
  %.val583.i.i.i = load i32, ptr %i.dc, align 4, !tbaa !229 ; 3 uses
  %i.avg = sub nsw i32 %.val583.i.i.i, %.promoted749.i.i.i
  %i.avh = sext i32 %i.avg to i64
  %.not536.i.i.i = icmp sgt i64 %i.avf, %i.avh
  br i1 %.not536.i.i.i, label %.thread716.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %get_ue_golomb_long.exit682.i.i.i
  %.not757.i.i.i = icmp eq i32 %i.avd, 0
  br i1 %.not757.i.i.i, label %.loopexit.i.i.i, label %.lr.ph748.i.i.i.preheader

.lr.ph748.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  %i.avi = add i32 %.0.i.i680.i.i.i, -2
  %xtraiter362 = and i32 %i.avd, 3                ; 3 uses
  %i.avj = icmp ult i32 %i.avi, 3
  br i1 %i.avj, label %.lr.ph748.i.i.i.epil.preheader, label %.lr.ph748.i.i.i.preheader.new

.lr.ph748.i.i.i.preheader.new:                    ; preds = %.lr.ph748.i.i.i.preheader
  %unroll_iter369 = and i32 %i.avd, -4
  br label %.lr.ph748.i.i.i

.thread716.i.i.i:                                 ; preds = %get_ue_golomb_long.exit682.i.i.i
  %i.avk = load ptr, ptr %i.v, align 8, !tbaa !78
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.avk, i32 noundef 16, ptr noundef nonnull @.str.54) #15
  br label %hls_slice_header.exit.thread.i.i

.lr.ph748.i.i.i:                                  ; preds = %.lr.ph748.i.i.i, %.lr.ph748.i.i.i.preheader.new
end_hunk_0
