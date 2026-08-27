Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_blocks:bb.a
  %i.aod = zext i8 %i.aoc to i32
  %i.aoe = add nuw nsw i32 %i.any, %i.aod
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i
  %.3.us.us.us.us.us.us.i.us.us.us.i = phi i32 [ %i.aoe, %bb.ar ], [ %i.any, %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i ] ; 3 uses
  %i.aof = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.anj ; 2 uses
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !182
  %i.aoh = sext i16 %i.aog to i32
  %i.aoi = sub nsw i32 8, %i.aoh                  ; 2 uses
  %i.aoj = trunc i32 %i.aoi to i16
  store i16 %i.aoj, ptr %i.aof, align 2, !tbaa !182
  %gep320.i.us.us.us.i = getelementptr i8, ptr %invariant.gep319.i.us.us.us.i, i64 %indvars.iv272.i.us.us.us.i
  %i.aok = load i8, ptr %gep320.i.us.us.us.i, align 1, !tbaa !83
  %i.aol = zext i8 %i.aok to i32
  %i.aom = ashr i32 %i.aoi, 4
  %i.aon = sub nsw i32 %i.aol, %i.aom
  %i.aoo = mul nsw i32 %i.aon, %.3.us.us.us.us.us.us.i.us.us.us.i
  %i.aop = add nsw i32 %i.aoo, %.2167197.us.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %i.aoq = mul nuw nsw i32 %.3.us.us.us.us.us.us.i.us.us.us.i, %.3.us.us.us.us.us.us.i.us.us.us.i
  %i.aor = add nsw i32 %i.aoq, %.2164198.us.us.us.us.us.us.i.us.us.us.i ; 2 uses
  %indvars.iv.next273.i.us.us.us.i = add nuw nsw i64 %indvars.iv272.i.us.us.us.i, 1 ; 2 uses
  %i.aos = icmp samesign ult i64 %indvars.iv.next273.i.us.us.us.i, %i.ahx
  br i1 %i.aos, label %.lr.ph200.split.us.us.us.split.us.us.split.us.i.us.us.us.i, label %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i, !llvm.loop !483

._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i: ; preds = %bb.aq, %bb.as
  %.us-phi230.i.us.us.us.i = phi i32 [ %i.aop, %bb.as ], [ %i.anc, %bb.aq ] ; 2 uses
  %.us-phi231.i.us.us.us.i = phi i32 [ %i.aor, %bb.as ], [ %i.ane, %bb.aq ] ; 2 uses
  %indvars.iv.next277.i.us.us.us.i = add nuw nsw i64 %indvars.iv276.i.us.us.us.i, 1 ; 2 uses
  %i.aot = icmp samesign ult i64 %indvars.iv.next277.i.us.us.us.i, %i.ahy
  br i1 %i.aot, label %.lr.ph200.us.us.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !484

._crit_edge208.i.us.us.us.i:                      ; preds = %._crit_edge201.split.us219.i.split.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i, %.lr.ph207.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i
  %.1166.lcssa.i.us.us.us.i = phi i32 [ %.0165233.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i ], [ %.us-phi230.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph207.i.us.us.us.i ], [ %.us-phi.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i ], [ %.us-phi683.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i ], [ %.us-phi.us780.us.i, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 3 uses
  %.1163.lcssa.i.us.us.us.i = phi i32 [ %.0162234.i.us.us.us.i, %add_yblock.exit.i.us.us.us.i ], [ %.us-phi231.i.us.us.us.i, %._crit_edge201.split.us.us.us.split.us.us.i.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph207.i.us.us.us.i ], [ %.us-phi682.us.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.us.us.i ], [ %.us-phi684.us.us.us.i, %._crit_edge201.split.us.us.us.split.i.us.us.us.i ], [ %.us-phi761.us.us.i, %._crit_edge201.split.us219.i.split.us.us.us.i ] ; 4 uses
  %i.aou = add nuw nsw i32 %.0170232.i.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i = icmp eq i32 %i.aou, 4
  br i1 %exitcond.not.i.us.us.us.i, label %bb.at, label %bb.t, !llvm.loop !485

bb.at:                                            ; preds = %._crit_edge208.i.us.us.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.lt, ptr noundef nonnull align 2 dereferenceable(10) %2, i64 10, i1 false), !tbaa.struct !460
  %.not174.i.us.us.us.i = icmp eq i32 %.1163.lcssa.i.us.us.us.i, 0
  br i1 %.not174.i.us.us.us.i, label %get_dc.exit.us.us.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aov = sext i32 %.1166.lcssa.i.us.us.us.i to i64
  %i.aow = shl nsw i64 %i.aov, 6
  %i.aox = ashr i32 %.1163.lcssa.i.us.us.us.i, 1
  %i.aoy = sext i32 %i.aox to i64                 ; 2 uses
  %i.aoz = icmp slt i32 %.1166.lcssa.i.us.us.us.i, 0
  %i.apa = sub nsw i64 0, %i.aoy
  %.p.i.us.us.us.i = select i1 %i.aoz, i64 %i.apa, i64 %i.aoy
  %i.apb = add nsw i64 %.p.i.us.us.us.i, %i.aow
  %i.apc = sext i32 %.1163.lcssa.i.us.us.us.i to i64
  %i.apd = sdiv i64 %i.apb, %i.apc
  %i.ape = trunc i64 %i.apd to i32                ; 3 uses
  %.not.i179.i.us.us.us.i = icmp ult i32 %i.ape, 256
  %isnotneg.i.i.us.us.us.i = icmp sgt i32 %i.ape, -1
  %i.apf = sext i1 %isnotneg.i.i.us.us.us.i to i32
  %.0.i.i.us.us.us.i = select i1 %.not.i179.i.us.us.us.i, i32 %i.ape, i32 %i.apf
  %i.apg = and i32 %.0.i.i.us.us.us.i, 255
  br label %get_dc.exit.us.us.us.i

get_dc.exit.us.us.us.i:                           ; preds = %bb.au, %bb.at
  %.0171.i.us.us.us.i = phi i32 [ %i.apg, %bb.au ], [ 0, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv909.i
  store i32 %.0171.i.us.us.us.i, ptr %i.aph, align 4, !tbaa !84
  %indvars.iv.next910.i = add nuw nsw i64 %indvars.iv909.i, 1 ; 2 uses
  %i.api = load i32, ptr %i.au, align 16, !tbaa !103
  %i.apj = sext i32 %i.api to i64
  %i.apk = icmp slt i64 %indvars.iv.next910.i, %i.apj
  br i1 %i.apk, label %bb.p, label %._crit_edge688.us.us.us.i, !llvm.loop !486

._crit_edge688.us.us.us.i:                        ; preds = %get_dc.exit.us.us.us.i, %.loopexit.us.us.us.i
  br i1 %.not483.us.us.i, label %._crit_edge688.us.us.us._crit_edge.i, label %bb.av

._crit_edge688.us.us.us._crit_edge.i:             ; preds = %._crit_edge688.us.us.us.i
  %.pre942.i = load i32, ptr %i.e, align 16, !tbaa !115
  %.pre944.i = load i32, ptr %i.p, align 8, !tbaa !80
  %.pre946.i = load ptr, ptr %i.ak, align 8, !tbaa !215
  br label %bb.ay

bb.av:                                            ; preds = %._crit_edge688.us.us.us.i
  %i.apl = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !217
  %i.apm = and i8 %i.apl, 1
  %.not487.us.us.us.i = icmp eq i8 %i.apm, 0
  %.pre943.i = load i32, ptr %i.e, align 16, !tbaa !115 ; 2 uses
  %.pre945.i = load i32, ptr %i.p, align 8, !tbaa !80 ; 2 uses
  %.pre947.i = load ptr, ptr %i.ak, align 8, !tbaa !215 ; 2 uses
  br i1 %.not487.us.us.us.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.apn = load i8, ptr %.sroa.6569.0..sroa_idx.us.us.us.i, align 1, !tbaa !83
  %i.apo = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2, !tbaa !83
  %i.app = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !83
  %i.apq = shl i32 %.pre943.i, %.pre945.i
  %i.apr = sext i32 %i.apq to i64
  %i.aps = mul nsw i64 %indvars.iv925.i, %i.apr
  %i.apt = getelementptr [10 x i8], ptr %.pre947.i, i64 %i.aps
  %i.apu = getelementptr [10 x i8], ptr %i.apt, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %17, ptr noundef nonnull align 2 dereferenceable(10) %i.apu, i64 10, i1 false), !tbaa.struct !460
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 5
  store i8 %i.apn, ptr %i.apv, align 1, !tbaa !83
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apu, i64 6
  store i8 %i.apo, ptr %i.apw, align 2, !tbaa !83
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apu, i64 7
  store i8 %i.app, ptr %i.apx, align 1, !tbaa !83
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apu, i64 8 ; 2 uses
  %i.apz = load i8, ptr %i.apy, align 2, !tbaa !217
  %i.aqa = or i8 %i.apz, 1
  store i8 %i.aqa, ptr %i.apy, align 2, !tbaa !217
  %i.aqb = trunc nuw nsw i64 %indvars.iv920.i.a to i32
  %i.aqc = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.aqb, i32 noundef %i.bw, ptr noundef nonnull %i.c)
  %i.aqd = load i32, ptr %i.az, align 8, !tbaa !487
  %i.aqe = add nsw i32 %i.aqd, %i.aqc             ; 2 uses
  %.not614.us.us.us.i = icmp eq i32 %i.aqe, 2147483647
  br i1 %.not614.us.us.us.i, label %bb.ax, label %check_block_intra.exit513.us.us.us.i

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.apu, ptr noundef nonnull align 2 dereferenceable(10) %17, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_intra.exit513.us.us.us.i

check_block_intra.exit513.us.us.us.i:             ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.bb

bb.ay:                                            ; preds = %bb.av, %._crit_edge688.us.us.us._crit_edge.i
  %i.aqf = phi ptr [ %.pre946.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre947.i, %bb.av ]
  %i.aqg = phi i32 [ %.pre944.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre945.i, %bb.av ]
  %i.aqh = phi i32 [ %.pre942.i, %._crit_edge688.us.us.us._crit_edge.i ], [ %.pre943.i, %bb.av ]
  %i.aqi = load i16, ptr %i.cc, align 2, !tbaa !219 ; 2 uses
  %i.aqj = sext i16 %i.aqi to i32                 ; 2 uses
  %i.aqk = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !220 ; 2 uses
  %i.aql = sext i16 %i.aqk to i32                 ; 2 uses
  %i.aqm = shl i32 %i.aqh, %i.aqg
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = mul nsw i64 %indvars.iv925.i, %i.aqn
  %i.aqp = getelementptr [10 x i8], ptr %i.aqf, i64 %i.aqo
  %i.aqq = getelementptr [10 x i8], ptr %i.aqp, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %5, ptr noundef nonnull align 2 dereferenceable(10) %i.aqq, i64 10, i1 false), !tbaa.struct !460
  %i.aqr = mul nsw i32 %i.aql, 31
  %i.aqs = add nsw i32 %i.aqr, %i.aqj
  %i.aqt = and i32 %i.aqs, 1023
  %i.aqu = load i32, ptr %i.am, align 16, !tbaa !445
  %i.aqv = ashr i32 %i.aqj, 10
  %i.aqw = shl nsw i32 %i.aql, 6
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4
  %i.aqy = load i8, ptr %i.aqx, align 2, !tbaa !221
  %i.aqz = zext i8 %i.aqy to i32
  %i.ara = shl nuw nsw i32 %i.aqz, 12
  %i.arb = add nsw i32 %i.aqw, %i.aqv
  %i.arc = add i32 %i.arb, %i.aqu
  %i.ard = add i32 %i.arc, %i.ara                 ; 2 uses
  %i.are = zext nneg i32 %i.aqt to i64
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.are ; 2 uses
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !84
  %i.arh = icmp eq i32 %i.arg, %i.ard
  br i1 %i.arh, label %check_block_inter.exit536.us.us.us.i.a, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.ard, ptr %i.arf, align 4, !tbaa !84
  store i16 %i.aqi, ptr %i.aqq, align 2, !tbaa !219
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqq, i64 2
  store i16 %i.aqk, ptr %i.ari, align 2, !tbaa !220
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8 ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 2, !tbaa !217
  %i.arl = and i8 %i.ark, -2
  store i8 %i.arl, ptr %i.arj, align 2, !tbaa !217
  %i.arm = trunc nuw nsw i64 %indvars.iv920.i.a to i32
  %i.arn = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.arm, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %.not615.us.us.us.i = icmp eq i32 %i.arn, 2147483647
  br i1 %.not615.us.us.us.i, label %bb.ba, label %check_block_inter.exit536.us.us.us.i.a

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.aqq, ptr noundef nonnull align 2 dereferenceable(10) %5, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit536.us.us.us.i.a

check_block_inter.exit536.us.us.us.i.a:           ; preds = %bb.ba, %bb.az, %bb.ay
  %.22.us.us.us.i = phi i32 [ 2147483647, %bb.ay ], [ 2147483647, %bb.ba ], [ %i.arn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bb

bb.bb:                                            ; preds = %check_block_inter.exit536.us.us.us.i.a, %check_block_intra.exit513.us.us.us.i
  %.0590.us.us.us.i = phi i32 [ %.22.us.us.us.i, %check_block_inter.exit536.us.us.us.i.a ], [ %i.aqe, %check_block_intra.exit513.us.us.us.i ] ; 2 uses
  %i.aro = load i32, ptr %i.cc, align 2           ; 2 uses
  %.sroa.5.0.copyload.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !83 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6569.0..sroa_idx.us.us.us.i, i64 5, i1 false), !tbaa.struct !488
  %i.arp = load i32, ptr %i.ba, align 8, !tbaa !489
  %i.arq = icmp sgt i32 %i.arp, 0
  br i1 %i.arq, label %.lr.ph710.us.us.us.i, label %.._crit_edge711.us.us.us.i_crit_edge

.._crit_edge711.us.us.us.i_crit_edge:             ; preds = %bb.bb
  %.pre = trunc nuw nsw i64 %indvars.iv920.i.a to i32
  br label %._crit_edge711.us.us.us.i

bb.bc:                                            ; preds = %.lr.ph710.us.us.us.i, %bb.cm
  %indvars.iv918.i = phi i64 [ 0, %.lr.ph710.us.us.us.i ], [ %indvars.iv.next919.i, %bb.cm ] ; 4 uses
  %.sroa.0.0710.us.us.us.i = phi i32 [ %i.aro, %.lr.ph710.us.us.us.i ], [ %.sroa.0.2.us.us.us.i, %bb.cm ] ; 2 uses
  %.sroa.5.0709.us.us.us.i = phi i8 [ %.sroa.5.0.copyload.us.us.us.i, %.lr.ph710.us.us.us.i ], [ %.sroa.5.2.us.us.us.i, %bb.cm ] ; 3 uses
  %.sroa.0.sroa.0.0705.us.us.us.i = phi i32 [ %.0590.us.us.us.i, %.lr.ph710.us.us.us.i ], [ %.sroa.0.sroa.0.1.us.us.us.i, %bb.cm ] ; 3 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv918.i
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !117
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %i.ca ; 9 uses
  %i.aru = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv918.i
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !118
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arv, i64 %i.ca
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !84
  %i.ary = zext i8 %.sroa.5.0709.us.us.us.i to i64
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ary
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !118
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.ca
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !84
  %i.asd = mul i32 %i.asc, 3
  %i.ase = lshr i32 %i.asd, 1
  %i.asf = icmp ugt i32 %i.arx, %i.ase
  br i1 %i.asf, label %bb.cm, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.asg = trunc i64 %indvars.iv918.i to i8
  store i8 %i.asg, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !221
  %i.ash = load i16, ptr %i.art, align 2, !tbaa !182 ; 2 uses
  %i.asi = sext i16 %i.ash to i32                 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.art, i64 2 ; 2 uses
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !182 ; 2 uses
  %i.asl = sext i16 %i.ask to i32                 ; 2 uses
  %i.asm = load i32, ptr %i.e, align 16, !tbaa !115
  %i.asn = load i32, ptr %i.p, align 8, !tbaa !80
  %i.aso = shl i32 %i.asm, %i.asn
  %i.asp = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.asq = sext i32 %i.aso to i64
  %i.asr = mul nsw i64 %indvars.iv925.i, %i.asq
  %i.ass = getelementptr [10 x i8], ptr %i.asp, i64 %i.asr
  %i.ast = getelementptr [10 x i8], ptr %i.ass, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %6, ptr noundef nonnull align 2 dereferenceable(10) %i.ast, i64 10, i1 false), !tbaa.struct !460
  %i.asu = mul nsw i32 %i.asl, 31
  %i.asv = add nsw i32 %i.asu, %i.asi
  %i.asw = and i32 %i.asv, 1023
  %i.asx = load i32, ptr %i.am, align 16, !tbaa !445
  %i.asy = ashr i32 %i.asi, 10
  %i.asz = shl nsw i32 %i.asl, 6
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.atb = load i8, ptr %i.ata, align 2, !tbaa !221
  %i.atc = zext i8 %i.atb to i32
  %i.atd = shl nuw nsw i32 %i.atc, 12
  %i.ate = add nsw i32 %i.asz, %i.asy
  %i.atf = add i32 %i.ate, %i.asx
  %i.atg = add i32 %i.atf, %i.atd                 ; 2 uses
  %i.ath = zext nneg i32 %i.asw to i64
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ath ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !84
  %i.atk = icmp eq i32 %i.atj, %i.atg
  br i1 %i.atk, label %check_block_inter.exit534.us.us.us.i.a, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %i.atg, ptr %i.ati, align 4, !tbaa !84
  store i16 %i.ash, ptr %i.ast, align 2, !tbaa !219
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ast, i64 2
  store i16 %i.ask, ptr %i.atl, align 2, !tbaa !220
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ast, i64 8 ; 2 uses
  %i.atn = load i8, ptr %i.atm, align 2, !tbaa !217
  %i.ato = and i8 %i.atn, -2
  store i8 %i.ato, ptr %i.atm, align 2, !tbaa !217
  %i.atp = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %.not616.us.us.us.i = icmp eq i32 %i.atp, 2147483647
  br i1 %.not616.us.us.us.i, label %bb.bf, label %check_block_inter.exit534.us.us.us.i.a

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ast, ptr noundef nonnull align 2 dereferenceable(10) %6, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit534.us.us.us.i.a

check_block_inter.exit534.us.us.us.i.a:           ; preds = %bb.bf, %bb.be, %bb.bd
  %.21.us.us.us.i = phi i32 [ 2147483647, %bb.bd ], [ 2147483647, %bb.bf ], [ %i.atp, %bb.be ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.atq = load i32, ptr %i.e, align 16, !tbaa !115
  %i.atr = load i32, ptr %i.p, align 8, !tbaa !80
  %i.ats = shl i32 %i.atq, %i.atr
  %i.att = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.atu = sext i32 %i.ats to i64
  %i.atv = mul nsw i64 %indvars.iv925.i, %i.atu
  %i.atw = getelementptr [10 x i8], ptr %i.att, i64 %i.atv
  %i.atx = getelementptr [10 x i8], ptr %i.atw, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %7, ptr noundef nonnull align 2 dereferenceable(10) %i.atx, i64 10, i1 false), !tbaa.struct !460
  %i.aty = load i32, ptr %i.am, align 16, !tbaa !445
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 4
  %i.aua = load i8, ptr %i.atz, align 2, !tbaa !221
  %i.aub = zext i8 %i.aua to i32
  %i.auc = shl nuw nsw i32 %i.aub, 12
  %i.aud = add i32 %i.auc, %i.aty                 ; 2 uses
  %i.aue = load i32, ptr %i.an, align 16, !tbaa !84
  %i.auf = icmp eq i32 %i.aue, %i.aud
  br i1 %i.auf, label %check_block_inter.exit532.us.us.us.i.a, label %bb.bg

bb.bg:                                            ; preds = %check_block_inter.exit534.us.us.us.i.a
  store i32 %i.aud, ptr %i.an, align 16, !tbaa !84
  store i16 0, ptr %i.atx, align 2, !tbaa !219
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atx, i64 2
  store i16 0, ptr %i.aug, align 2, !tbaa !220
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atx, i64 8 ; 2 uses
  %i.aui = load i8, ptr %i.auh, align 2, !tbaa !217
  %i.auj = and i8 %i.aui, -2
  store i8 %i.auj, ptr %i.auh, align 2, !tbaa !217
  %i.auk = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %i.aul = icmp slt i32 %i.auk, %.21.us.us.us.i
  br i1 %i.aul, label %check_block_inter.exit532.us.us.us.i.a, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.atx, ptr noundef nonnull align 2 dereferenceable(10) %7, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit532.us.us.us.i.a

check_block_inter.exit532.us.us.us.i.a:           ; preds = %bb.bh, %bb.bg, %check_block_inter.exit534.us.us.us.i.a
  %.20.us.us.us.i = phi i32 [ %.21.us.us.us.i, %check_block_inter.exit534.us.us.us.i.a ], [ %.21.us.us.us.i, %bb.bh ], [ %i.auk, %bb.bg ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not497.us.us.us.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %check_block_inter.exit532.us.us.us.i.a
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.art, i64 %i.be ; 2 uses
  %i.aun = load i16, ptr %i.aum, align 2, !tbaa !182 ; 2 uses
  %i.auo = sext i16 %i.aun to i32                 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aum, i64 2
  %i.auq = load i16, ptr %i.aup, align 2, !tbaa !182 ; 2 uses
  %i.aur = sext i16 %i.auq to i32                 ; 2 uses
  %i.aus = load i32, ptr %i.e, align 16, !tbaa !115
  %i.aut = load i32, ptr %i.p, align 8, !tbaa !80
  %i.auu = shl i32 %i.aus, %i.aut
  %i.auv = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.auw = sext i32 %i.auu to i64
  %i.aux = mul nsw i64 %indvars.iv925.i, %i.auw
  %i.auy = getelementptr [10 x i8], ptr %i.auv, i64 %i.aux
  %i.auz = getelementptr [10 x i8], ptr %i.auy, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %8, ptr noundef nonnull align 2 dereferenceable(10) %i.auz, i64 10, i1 false), !tbaa.struct !460
  %i.ava = mul nsw i32 %i.aur, 31
  %i.avb = add nsw i32 %i.ava, %i.auo
  %i.avc = and i32 %i.avb, 1023
  %i.avd = load i32, ptr %i.am, align 16, !tbaa !445
  %i.ave = ashr i32 %i.auo, 10
  %i.avf = shl nsw i32 %i.aur, 6
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auz, i64 4
  %i.avh = load i8, ptr %i.avg, align 2, !tbaa !221
  %i.avi = zext i8 %i.avh to i32
  %i.avj = shl nuw nsw i32 %i.avi, 12
  %i.avk = add nsw i32 %i.avf, %i.ave
  %i.avl = add i32 %i.avk, %i.avd
  %i.avm = add i32 %i.avl, %i.avj                 ; 2 uses
  %i.avn = zext nneg i32 %i.avc to i64
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.avn ; 2 uses
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !84
  %i.avq = icmp eq i32 %i.avp, %i.avm
  br i1 %i.avq, label %check_block_inter.exit530.us.us.us.i.a, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.avm, ptr %i.avo, align 4, !tbaa !84
  store i16 %i.aun, ptr %i.auz, align 2, !tbaa !219
  %i.avr = getelementptr inbounds nuw i8, ptr %i.auz, i64 2
  store i16 %i.auq, ptr %i.avr, align 2, !tbaa !220
  %i.avs = getelementptr inbounds nuw i8, ptr %i.auz, i64 8 ; 2 uses
  %i.avt = load i8, ptr %i.avs, align 2, !tbaa !217
  %i.avu = and i8 %i.avt, -2
  store i8 %i.avu, ptr %i.avs, align 2, !tbaa !217
  %i.avv = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %i.avw = icmp slt i32 %i.avv, %.20.us.us.us.i
  br i1 %i.avw, label %check_block_inter.exit530.us.us.us.i.a, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.auz, ptr noundef nonnull align 2 dereferenceable(10) %8, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit530.us.us.us.i.a

check_block_inter.exit530.us.us.us.i.a:           ; preds = %bb.bk, %bb.bj, %bb.bi
  %.19.us.us.us.i = phi i32 [ %.20.us.us.us.i, %bb.bi ], [ %.20.us.us.us.i, %bb.bk ], [ %i.avv, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bl

bb.bl:                                            ; preds = %check_block_inter.exit530.us.us.us.i.a, %check_block_inter.exit532.us.us.us.i.a
  %.1591.us.us.us.i = phi i32 [ %.20.us.us.us.i, %check_block_inter.exit532.us.us.us.i.a ], [ %.19.us.us.us.i, %check_block_inter.exit530.us.us.us.i.a ] ; 4 uses
  br i1 %.not498.us.us.us.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.avx = getelementptr inbounds i8, ptr %i.art, i64 -4
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !182 ; 2 uses
  %i.avz = sext i16 %i.avy to i32                 ; 2 uses
  %i.awa = getelementptr inbounds i8, ptr %i.art, i64 -2
  %i.awb = load i16, ptr %i.awa, align 2, !tbaa !182 ; 2 uses
  %i.awc = sext i16 %i.awb to i32                 ; 2 uses
  %i.awd = load i32, ptr %i.e, align 16, !tbaa !115
  %i.awe = load i32, ptr %i.p, align 8, !tbaa !80
  %i.awf = shl i32 %i.awd, %i.awe
  %i.awg = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.awh = sext i32 %i.awf to i64
  %i.awi = mul nsw i64 %indvars.iv925.i, %i.awh
  %i.awj = getelementptr [10 x i8], ptr %i.awg, i64 %i.awi
  %i.awk = getelementptr [10 x i8], ptr %i.awj, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %9, ptr noundef nonnull align 2 dereferenceable(10) %i.awk, i64 10, i1 false), !tbaa.struct !460
  %i.awl = mul nsw i32 %i.awc, 31
  %i.awm = add nsw i32 %i.awl, %i.avz
  %i.awn = and i32 %i.awm, 1023
  %i.awo = load i32, ptr %i.am, align 16, !tbaa !445
  %i.awp = ashr i32 %i.avz, 10
  %i.awq = shl nsw i32 %i.awc, 6
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.aws = load i8, ptr %i.awr, align 2, !tbaa !221
  %i.awt = zext i8 %i.aws to i32
  %i.awu = shl nuw nsw i32 %i.awt, 12
  %i.awv = add nsw i32 %i.awq, %i.awp
  %i.aww = add i32 %i.awv, %i.awo
  %i.awx = add i32 %i.aww, %i.awu                 ; 2 uses
end_hunk_0
begin_hunk_1_@encode_blocks:bb.a
  %i.bdu = add nsw i32 %i.bdt, %i.bdj
  %i.bdv = and i32 %i.bdu, 1023
  %i.bdw = load i32, ptr %i.am, align 16, !tbaa !445
  %i.bdx = ashr i32 %i.bdj, 10
  %i.bdy = shl nsw i32 %i.bdk, 6
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bds, i64 4
  %i.bea = load i8, ptr %i.bdz, align 2, !tbaa !221
  %i.beb = zext i8 %i.bea to i32
  %i.bec = shl nuw nsw i32 %i.beb, 12
  %i.bed = add i32 %i.bdy, %i.bdx
  %i.bee = add i32 %i.bed, %i.bdw
  %i.bef = add i32 %i.bee, %i.bec                 ; 2 uses
  %i.beg = zext nneg i32 %i.bdv to i64
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.beg ; 2 uses
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !84
  %i.bej = icmp eq i32 %i.bei, %i.bef
  br i1 %i.bej, label %check_block_inter.exit518.us.us.us.i.a, label %bb.cd

bb.cd:                                            ; preds = %check_block_inter.exit520.us.us.us.i.a
  store i32 %i.bef, ptr %i.beh, align 4, !tbaa !84
  %i.bek = trunc i32 %i.bdj to i16
  store i16 %i.bek, ptr %i.bds, align 2, !tbaa !219
  %i.bel = trunc i32 %i.bdk to i16
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bds, i64 2
  store i16 %i.bel, ptr %i.bem, align 2, !tbaa !220
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bds, i64 8 ; 2 uses
  %i.beo = load i8, ptr %i.ben, align 2, !tbaa !217
  %i.bep = and i8 %i.beo, -2
  store i8 %i.bep, ptr %i.ben, align 2, !tbaa !217
  %i.beq = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %i.ber = icmp slt i32 %i.beq, %.14.us.us.us.i
  br i1 %i.ber, label %check_block_inter.exit518.us.us.us.i.a, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bds, ptr noundef nonnull align 2 dereferenceable(10) %14, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit518.us.us.us.i.a

check_block_inter.exit518.us.us.us.i.a:           ; preds = %bb.ce, %bb.cd, %check_block_inter.exit520.us.us.us.i.a
  %.13.us.us.us.i = phi i32 [ %.14.us.us.us.i, %check_block_inter.exit520.us.us.us.i.a ], [ %.14.us.us.us.i, %bb.ce ], [ %i.beq, %bb.cd ] ; 3 uses
  %.0.i517.us.us.us.i.a = phi i32 [ %.0.i519.us.us.us.i.a, %check_block_inter.exit520.us.us.us.i.a ], [ %.0.i519.us.us.us.i.a, %bb.ce ], [ 1, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bes = add nsw i32 %i.bar, %i.baf             ; 3 uses
  %i.bet = sub nsw i32 %i.bah, %i.bap             ; 3 uses
  %i.beu = load i32, ptr %i.e, align 16, !tbaa !115
  %i.bev = load i32, ptr %i.p, align 8, !tbaa !80
  %i.bew = shl i32 %i.beu, %i.bev
  %i.bex = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.bey = sext i32 %i.bew to i64
  %i.bez = mul nsw i64 %indvars.iv925.i, %i.bey
  %i.bfa = getelementptr [10 x i8], ptr %i.bex, i64 %i.bez
  %i.bfb = getelementptr [10 x i8], ptr %i.bfa, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %15, ptr noundef nonnull align 2 dereferenceable(10) %i.bfb, i64 10, i1 false), !tbaa.struct !460
  %i.bfc = mul nsw i32 %i.bet, 31
  %i.bfd = add nsw i32 %i.bfc, %i.bes
  %i.bfe = and i32 %i.bfd, 1023
  %i.bff = load i32, ptr %i.am, align 16, !tbaa !445
  %i.bfg = ashr i32 %i.bes, 10
  %i.bfh = shl nsw i32 %i.bet, 6
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfb, i64 4
  %i.bfj = load i8, ptr %i.bfi, align 2, !tbaa !221
  %i.bfk = zext i8 %i.bfj to i32
  %i.bfl = shl nuw nsw i32 %i.bfk, 12
  %i.bfm = add i32 %i.bfh, %i.bfg
  %i.bfn = add i32 %i.bfm, %i.bff
  %i.bfo = add i32 %i.bfn, %i.bfl                 ; 2 uses
  %i.bfp = zext nneg i32 %i.bfe to i64
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bfp ; 2 uses
  %i.bfr = load i32, ptr %i.bfq, align 4, !tbaa !84
  %i.bfs = icmp eq i32 %i.bfr, %i.bfo
  br i1 %i.bfs, label %check_block_inter.exit516.us.us.us.i, label %bb.cf

bb.cf:                                            ; preds = %check_block_inter.exit518.us.us.us.i.a
  store i32 %i.bfo, ptr %i.bfq, align 4, !tbaa !84
  %i.bft = trunc i32 %i.bes to i16
  store i16 %i.bft, ptr %i.bfb, align 2, !tbaa !219
  %i.bfu = trunc i32 %i.bet to i16
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfb, i64 2
  store i16 %i.bfu, ptr %i.bfv, align 2, !tbaa !220
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfb, i64 8 ; 2 uses
  %i.bfx = load i8, ptr %i.bfw, align 2, !tbaa !217
  %i.bfy = and i8 %i.bfx, -2
  store i8 %i.bfy, ptr %i.bfw, align 2, !tbaa !217
  %i.bfz = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %i.bga = icmp slt i32 %i.bfz, %.13.us.us.us.i
  br i1 %i.bga, label %check_block_inter.exit516.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bfb, ptr noundef nonnull align 2 dereferenceable(10) %15, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit516.us.us.us.i

check_block_inter.exit516.us.us.us.i:             ; preds = %bb.cg, %bb.cf, %check_block_inter.exit518.us.us.us.i.a
  %.12.us.us.us.i = phi i32 [ %.13.us.us.us.i, %check_block_inter.exit518.us.us.us.i.a ], [ %.13.us.us.us.i, %bb.cg ], [ %i.bfz, %bb.cf ] ; 2 uses
  %.0.i515.us.us.us.i = phi i32 [ %.0.i517.us.us.us.i.a, %check_block_inter.exit518.us.us.us.i.a ], [ %.0.i517.us.us.us.i.a, %bb.cg ], [ 1, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.bgb = or i32 %.0.i515.us.us.us.i, %.1443690.us.us.us.i ; 2 uses
  %i.bgc = add nuw nsw i32 %.0438691.us.us.us.i, 1 ; 2 uses
  %exitcond912.not.i = icmp eq i32 %i.bgc, %.1440698.us.us.us.i
  br i1 %exitcond912.not.i, label %._crit_edge693.us.us.us.i, label %.lr.ph692.us.us.us.i, !llvm.loop !491

._crit_edge693.us.us.us.i:                        ; preds = %check_block_inter.exit516.us.us.us.i, %.preheader618.us.us.us.i
  %.7.lcssa.us.us.us.i = phi i32 [ %.6696.us.us.us.i, %.preheader618.us.us.us.i ], [ %.12.us.us.us.i, %check_block_inter.exit516.us.us.us.i ] ; 3 uses
  %.1443.lcssa.us.us.us.i = phi i32 [ %.0442697.us.us.us.i, %.preheader618.us.us.us.i ], [ %i.bgb, %check_block_inter.exit516.us.us.us.i ] ; 2 uses
  %i.bgd = add nuw nsw i32 %.1440698.us.us.us.i, 1 ; 2 uses
  %exitcond913.not.i = icmp eq i32 %i.bgd, %i.ban
  br i1 %exitcond913.not.i, label %._crit_edge699.us.us.us.i, label %.preheader618.us.us.us.i, !llvm.loop !492

._crit_edge699.us.us.us.i:                        ; preds = %._crit_edge693.us.us.us.i
  %i.bge = icmp eq i32 %.1443.lcssa.us.us.us.i, 0
  br i1 %i.bge, label %.preheader622.us.us.us.i.preheader, label %bb.bx, !llvm.loop !493

.preheader622.us.us.us.i.preheader:               ; preds = %bb.by, %._crit_edge699.us.us.us.i
  %.9702.us.us.us.i.ph = phi i32 [ %.7.lcssa.us.us.us.i, %._crit_edge699.us.us.us.i ], [ %.5.us.us.us.i, %bb.by ]
  br label %.preheader622.us.us.us.i

.preheader622.us.us.us.i:                         ; preds = %.preheader622.us.us.us.i.backedge, %.preheader622.us.us.us.i.preheader
  %indvars.iv914.i = phi i64 [ 0, %.preheader622.us.us.us.i.preheader ], [ %indvars.iv914.i.be, %.preheader622.us.us.us.i.backedge ] ; 2 uses
  %.2444703.us.us.us.i = phi i32 [ 0, %.preheader622.us.us.us.i.preheader ], [ %.2444703.us.us.us.i.be, %.preheader622.us.us.us.i.backedge ]
  %.9702.us.us.us.i = phi i32 [ %.9702.us.us.us.i.ph, %.preheader622.us.us.us.i.preheader ], [ %.11.us.us.us.i, %.preheader622.us.us.us.i.backedge ] ; 3 uses
  %i.bgf = load i16, ptr %i.cc, align 2, !tbaa !219
  %i.bgg = sext i16 %i.bgf to i32
  %i.bgh = getelementptr inbounds nuw [8 x i8], ptr @iterative_me.square, i64 %indvars.iv914.i ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 8, !tbaa !84
  %i.bgj = add nsw i32 %i.bgi, %i.bgg             ; 3 uses
  %i.bgk = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !220
  %i.bgl = sext i16 %i.bgk to i32
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 4
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !84
  %i.bgo = add nsw i32 %i.bgn, %i.bgl             ; 3 uses
  %i.bgp = load i32, ptr %i.e, align 16, !tbaa !115
  %i.bgq = load i32, ptr %i.p, align 8, !tbaa !80
  %i.bgr = shl i32 %i.bgp, %i.bgq
  %i.bgs = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.bgt = sext i32 %i.bgr to i64
  %i.bgu = mul nsw i64 %indvars.iv925.i, %i.bgt
  %i.bgv = getelementptr [10 x i8], ptr %i.bgs, i64 %i.bgu
  %i.bgw = getelementptr [10 x i8], ptr %i.bgv, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %16, ptr noundef nonnull align 2 dereferenceable(10) %i.bgw, i64 10, i1 false), !tbaa.struct !460
  %i.bgx = mul nsw i32 %i.bgo, 31
  %i.bgy = add nsw i32 %i.bgx, %i.bgj
  %i.bgz = and i32 %i.bgy, 1023
  %i.bha = load i32, ptr %i.am, align 16, !tbaa !445
  %i.bhb = ashr i32 %i.bgj, 10
  %i.bhc = shl nsw i32 %i.bgo, 6
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgw, i64 4
  %i.bhe = load i8, ptr %i.bhd, align 2, !tbaa !221
  %i.bhf = zext i8 %i.bhe to i32
  %i.bhg = shl nuw nsw i32 %i.bhf, 12
  %i.bhh = add i32 %i.bhc, %i.bhb
  %i.bhi = add i32 %i.bhh, %i.bha
  %i.bhj = add i32 %i.bhi, %i.bhg                 ; 2 uses
  %i.bhk = zext nneg i32 %i.bgz to i64
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bhk ; 2 uses
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !84
  %i.bhn = icmp eq i32 %i.bhm, %i.bhj
  br i1 %i.bhn, label %check_block_inter.exit.us.us.us.i, label %bb.ch

bb.ch:                                            ; preds = %.preheader622.us.us.us.i
  store i32 %i.bhj, ptr %i.bhl, align 4, !tbaa !84
  %i.bho = trunc i32 %i.bgj to i16
  store i16 %i.bho, ptr %i.bgw, align 2, !tbaa !219
  %i.bhp = trunc i32 %i.bgo to i16
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bgw, i64 2
  store i16 %i.bhp, ptr %i.bhq, align 2, !tbaa !220
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8 ; 2 uses
  %i.bhs = load i8, ptr %i.bhr, align 2, !tbaa !217
  %i.bht = and i8 %i.bhs, -2
  store i8 %i.bht, ptr %i.bhr, align 2, !tbaa !217
  %i.bhu = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %i.buq, i32 noundef %i.bw, ptr noundef nonnull %i.c) ; 2 uses
  %i.bhv = icmp slt i32 %i.bhu, %.9702.us.us.us.i
  br i1 %i.bhv, label %check_block_inter.exit.us.us.us.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bgw, ptr noundef nonnull align 2 dereferenceable(10) %16, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_inter.exit.us.us.us.i

check_block_inter.exit.us.us.us.i:                ; preds = %bb.ci, %bb.ch, %.preheader622.us.us.us.i
  %.11.us.us.us.i = phi i32 [ %.9702.us.us.us.i, %.preheader622.us.us.us.i ], [ %.9702.us.us.us.i, %bb.ci ], [ %i.bhu, %bb.ch ] ; 3 uses
  %.0.i514.us.us.us.i = phi i32 [ 0, %.preheader622.us.us.us.i ], [ 0, %bb.ci ], [ 1, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.bhw = or i32 %.0.i514.us.us.us.i, %.2444703.us.us.us.i ; 2 uses
  %indvars.iv.next915.i = add nuw nsw i64 %indvars.iv914.i, 1 ; 2 uses
  %exitcond917.not.i = icmp eq i64 %indvars.iv.next915.i, 8
  br i1 %exitcond917.not.i, label %bb.cj, label %.preheader622.us.us.us.i.backedge

.preheader622.us.us.us.i.backedge:                ; preds = %check_block_inter.exit.us.us.us.i, %bb.cj
  %indvars.iv914.i.be = phi i64 [ %indvars.iv.next915.i, %check_block_inter.exit.us.us.us.i ], [ 0, %bb.cj ]
  %.2444703.us.us.us.i.be = phi i32 [ %i.bhw, %check_block_inter.exit.us.us.us.i ], [ 0, %bb.cj ]
  br label %.preheader622.us.us.us.i, !llvm.loop !494

bb.cj:                                            ; preds = %check_block_inter.exit.us.us.us.i
  %.not503.us.us.us.i = icmp eq i32 %i.bhw, 0
  br i1 %.not503.us.us.us.i, label %bb.ck, label %.preheader622.us.us.us.i.backedge

bb.ck:                                            ; preds = %bb.cj
  %i.bhx = load i16, ptr %i.cc, align 2, !tbaa !219
  store i16 %i.bhx, ptr %i.art, align 2, !tbaa !182
  %i.bhy = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !220
  store i16 %i.bhy, ptr %i.asj, align 2, !tbaa !182
  %i.bhz = icmp sgt i32 %.sroa.0.sroa.0.0705.us.us.us.i, %.11.us.us.us.i
  br i1 %i.bhz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.bia = load i32, ptr %i.cc, align 2
  %.sroa.5.0.copyload202.us.us.us.i = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6569.0..sroa_idx.us.us.us.i, i64 5, i1 false), !tbaa.struct !488
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.bc
  %.sroa.0.sroa.0.1.us.us.us.i = phi i32 [ %.sroa.0.sroa.0.0705.us.us.us.i, %bb.bc ], [ %.11.us.us.us.i, %bb.cl ], [ %.sroa.0.sroa.0.0705.us.us.us.i, %bb.ck ] ; 2 uses
  %.sroa.5.2.us.us.us.i = phi i8 [ %.sroa.5.0709.us.us.us.i, %bb.bc ], [ %.sroa.5.0.copyload202.us.us.us.i, %bb.cl ], [ %.sroa.5.0709.us.us.us.i, %bb.ck ] ; 2 uses
  %.sroa.0.2.us.us.us.i = phi i32 [ %.sroa.0.0710.us.us.us.i, %bb.bc ], [ %i.bia, %bb.cl ], [ %.sroa.0.0710.us.us.us.i, %bb.ck ] ; 2 uses
  %indvars.iv.next919.i = add nuw nsw i64 %indvars.iv918.i, 1 ; 2 uses
  %i.bib = load i32, ptr %i.ba, align 8, !tbaa !489
  %i.bic = sext i32 %i.bib to i64
  %i.bid = icmp slt i64 %indvars.iv.next919.i, %i.bic
  br i1 %i.bid, label %bb.bc, label %._crit_edge711.us.us.us.i, !llvm.loop !495

._crit_edge711.us.us.us.i:                        ; preds = %bb.cm, %.._crit_edge711.us.us.us.i_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge711.us.us.us.i_crit_edge ], [ %i.buq, %bb.cm ]
  %.sroa.0.sroa.0.0.lcssa.us.us.us.i = phi i32 [ %.0590.us.us.us.i, %.._crit_edge711.us.us.us.i_crit_edge ], [ %.sroa.0.sroa.0.1.us.us.us.i, %bb.cm ]
  %.sroa.5.0.lcssa.us.us.us.i = phi i8 [ %.sroa.5.0.copyload.us.us.us.i, %.._crit_edge711.us.us.us.i_crit_edge ], [ %.sroa.5.2.us.us.us.i, %bb.cm ]
  %.sroa.0.0.lcssa.us.us.us.i = phi i32 [ %i.aro, %.._crit_edge711.us.us.us.i_crit_edge ], [ %.sroa.0.2.us.us.us.i, %bb.cm ]
  store i32 %.sroa.0.0.lcssa.us.us.us.i, ptr %i.cc, align 2
  store i8 %.sroa.5.0.lcssa.us.us.us.i, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6569.0..sroa_idx.us.us.us.i, ptr noundef nonnull align 8 dereferenceable(5) %.sroa.6.i, i64 5, i1 false), !tbaa.struct !488
  %i.bie = load i32, ptr %i.e, align 16, !tbaa !115
  %i.bif = load i32, ptr %i.p, align 8, !tbaa !80
  %i.big = shl i32 %i.bie, %i.bif
  %i.bih = load ptr, ptr %i.ak, align 8, !tbaa !215
  %i.bii = sext i32 %i.big to i64
  %i.bij = mul nsw i64 %indvars.iv925.i, %i.bii
  %i.bik = getelementptr [10 x i8], ptr %i.bih, i64 %i.bij
  %i.bil = getelementptr [10 x i8], ptr %i.bik, i64 %indvars.iv920.i.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %18, ptr noundef nonnull align 2 dereferenceable(10) %i.bil, i64 10, i1 false), !tbaa.struct !460
  %i.bim = load i32, ptr %i.a, align 4, !tbaa !84
  %i.bin = trunc i32 %i.bim to i8
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bil, i64 5
  store i8 %i.bin, ptr %i.bio, align 1, !tbaa !83
  %i.bip = load i32, ptr %i.bh, align 4, !tbaa !84
  %i.biq = trunc i32 %i.bip to i8
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bil, i64 6
  store i8 %i.biq, ptr %i.bir, align 2, !tbaa !83
  %i.bis = load i32, ptr %i.bi, align 4, !tbaa !84
  %i.bit = trunc i32 %i.bis to i8
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bil, i64 7
  store i8 %i.bit, ptr %i.biu, align 1, !tbaa !83
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bil, i64 8 ; 2 uses
  %i.biw = load i8, ptr %i.biv, align 2, !tbaa !217
  %i.bix = or i8 %i.biw, 1
  store i8 %i.bix, ptr %i.biv, align 2, !tbaa !217
  %i.biy = call fastcc i32 @get_block_rd(ptr noundef nonnull %0, i32 noundef %.pre-phi, i32 noundef %i.bw, ptr noundef nonnull %i.c)
  %i.biz = load i32, ptr %i.az, align 8, !tbaa !487
  %i.bja = add nsw i32 %i.biz, %i.biy
  %i.bjb = icmp slt i32 %i.bja, %.sroa.0.sroa.0.0.lcssa.us.us.us.i
  br i1 %i.bjb, label %check_block_intra.exit.us.us.us.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge711.us.us.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bil, ptr noundef nonnull align 2 dereferenceable(10) %18, i64 10, i1 false), !tbaa.struct !460
  br label %check_block_intra.exit.us.us.us.i

check_block_intra.exit.us.us.us.i:                ; preds = %bb.cn, %._crit_edge711.us.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.bjc = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !217 ; 2 uses
  %i.bjd = and i8 %i.bjc, 1
  %.not.i552.us.us.us.i = icmp eq i8 %i.bjd, 0
  %i.bje = and i8 %.pre941.i, 1
  %.not16.i553.us.us.us.i = icmp eq i8 %i.bje, 0
  %or.cond603.us.us.us.i = select i1 %.not.i552.us.us.us.i, i1 true, i1 %.not16.i553.us.us.us.i
  br i1 %or.cond603.us.us.us.i, label %same_block.exit558.us.us.us.i, label %.split.i

.split.i:                                         ; preds = %check_block_intra.exit.us.us.us.i
  %i.bjf = load i8, ptr %.sroa.6569.0..sroa_idx.us.us.us.i, align 1, !tbaa !83
  %i.bjg = load i8, ptr %.sroa.7.0..sroa_idx.us.us.us.i, align 2, !tbaa !83
  %i.bjh = load i8, ptr %.sroa.8.0..sroa_idx.us.us.us.i, align 1, !tbaa !83
  %i.bji = icmp eq i8 %i.bjf, %.sroa.6569.0.copyload.us.us.us.i
  %i.bjj = icmp eq i8 %i.bjg, %.sroa.7.0.copyload.us.us.us.i
  %i.bjk = and i1 %i.bji, %i.bjj
  %i.bjl = icmp eq i8 %i.bjh, %.sroa.8.0.copyload.us.us.us.i
  %.not18.i554.us.us.us.i = and i1 %i.bjk, %i.bjl
  br i1 %.not18.i554.us.us.us.i, label %bb.df, label %bb.co

same_block.exit558.us.us.us.i:                    ; preds = %check_block_intra.exit.us.us.us.i
  %i.bjm = load i16, ptr %i.cc, align 2, !tbaa !219
  %i.bjn = sext i16 %i.bjm to i32
  %i.bjo = sext i16 %.sroa.0.0.copyload.us.us.us.i.a to i32
  %i.bjp = sub nsw i32 %i.bjn, %i.bjo
  %i.bjq = load i16, ptr %.sroa.4567.0..sroa_idx.us.us.us.i, align 2, !tbaa !220
  %i.bjr = sext i16 %i.bjq to i32
  %i.bjs = sext i16 %.sroa.4567.0.copyload.us.us.us.i to i32
  %i.bjt = sub nsw i32 %i.bjr, %i.bjs
  %i.bju = load i8, ptr %.sroa.5.0..sroa_idx.us.us.us.i, align 2, !tbaa !221
  %i.bjv = zext i8 %i.bju to i32
  %i.bjw = zext i8 %.sroa.5.0.copyload568.us.us.us.i to i32
  %i.bjx = sub nsw i32 %i.bjv, %i.bjw
  %i.bjy = xor i8 %i.bjc, %.pre941.i
  %i.bjz = and i8 %i.bjy, 1
  %i.bka = zext nneg i8 %i.bjz to i32
  %i.bkb = or i32 %i.bjp, %i.bka
  %i.bkc = or i32 %i.bkb, %i.bjt
  %i.bkd = or i32 %i.bkc, %i.bjx
  %.not17.i557.us.us.us.i = icmp eq i32 %i.bkd, 0
  br i1 %.not17.i557.us.us.us.i, label %bb.df, label %bb.co

bb.co:                                            ; preds = %same_block.exit558.us.us.us.i, %.split.i
  %.not489.us.us.us.i = icmp eq ptr %i.cf, null
  br i1 %.not489.us.us.us.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bke = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.bkf = load i8, ptr %i.bke, align 2, !tbaa !217
  %i.bkg = and i8 %i.bkf, -3
  store i8 %i.bkg, ptr %i.bke, align 2, !tbaa !217
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.not490.us.us.us.i = icmp eq ptr %spec.select602.us.us.us.i, null
  br i1 %.not490.us.us.us.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bkh = getelementptr inbounds nuw i8, ptr %spec.select602.us.us.us.i, i64 8 ; 2 uses
  %i.bki = load i8, ptr %i.bkh, align 2, !tbaa !217
  %i.bkj = and i8 %i.bki, -3
  store i8 %i.bkj, ptr %i.bkh, align 2, !tbaa !217
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.not491.us.us.us.i = icmp eq ptr %i.ck, null
  br i1 %.not491.us.us.us.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.bkl = load i8, ptr %i.bkk, align 2, !tbaa !217
  %i.bkm = and i8 %i.bkl, -3
  store i8 %i.bkm, ptr %i.bkk, align 2, !tbaa !217
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %i.bt, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.bko = load i8, ptr %i.bkn, align 2, !tbaa !217
  %i.bkp = and i8 %i.bko, -3
  store i8 %i.bkp, ptr %i.bkn, align 2, !tbaa !217
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not493.us.us.us.i = icmp eq ptr %i.cn, null
  br i1 %.not493.us.us.us.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.bkr = load i8, ptr %i.bkq, align 2, !tbaa !217
  %i.bks = and i8 %i.bkr, -3
  store i8 %i.bks, ptr %i.bkq, align 2, !tbaa !217
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.not494.us.us.us.i = icmp eq ptr %i.cp, null
  br i1 %.not494.us.us.us.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.bku = load i8, ptr %i.bkt, align 2, !tbaa !217
  %i.bkv = and i8 %i.bku, -3
  store i8 %i.bkv, ptr %i.bkt, align 2, !tbaa !217
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.not495.us.us.us.i = icmp eq ptr %i.cr, null
  br i1 %.not495.us.us.us.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.bkx = load i8, ptr %i.bkw, align 2, !tbaa !217
  %i.bky = and i8 %i.bkx, -3
  store i8 %i.bky, ptr %i.bkw, align 2, !tbaa !217
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.not496.us.us.us.i = icmp eq ptr %i.ct, null
  br i1 %.not496.us.us.us.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.bla = load i8, ptr %i.bkz, align 2, !tbaa !217
  %i.blb = and i8 %i.bla, -3
  store i8 %i.blb, ptr %i.bkz, align 2, !tbaa !217
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.blc = add nsw i32 %.1446717.us.us.us.i, 1
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %same_block.exit558.us.us.us.i, %.split.i, %bb.d
  %.3448.us.us.us.i = phi i32 [ %.1446717.us.us.us.i, %bb.d ], [ %.1446717.us.us.us.i, %same_block.exit558.us.us.us.i ], [ %i.blc, %bb.de ], [ %.1446717.us.us.us.i, %.split.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %indvars.iv.next895.i = add nsw i32 %indvars.iv894.i, 1
  %exitcond924.not.i = icmp eq i64 %indvars.iv.next921.i.a, %wide.trip.count923.i
  br i1 %exitcond924.not.i, label %._crit_edge719.us.us.us.i, label %bb.d, !llvm.loop !496

.preheader618.us.us.us.i:                         ; preds = %._crit_edge693.us.us.us.i, %.preheader618.us.us.us.preheader.i
  %.1440698.us.us.us.i = phi i32 [ %i.bgd, %._crit_edge693.us.us.us.i ], [ 0, %.preheader618.us.us.us.preheader.i ] ; 4 uses
  %.0442697.us.us.us.i = phi i32 [ %.1443.lcssa.us.us.us.i, %._crit_edge693.us.us.us.i ], [ 0, %.preheader618.us.us.us.preheader.i ] ; 2 uses
  %.6696.us.us.us.i = phi i32 [ %.7.lcssa.us.us.us.i, %._crit_edge693.us.us.us.i ], [ %.5.us.us.us.i, %.preheader618.us.us.us.preheader.i ] ; 2 uses
  %.not815.i = icmp eq i32 %.1440698.us.us.us.i, 0
  br i1 %.not815.i, label %._crit_edge693.us.us.us.i, label %.lr.ph692.us.us.us.i

.lr.ph200.us.i.preheader.us.us.us.i:              ; preds = %.lr.ph207.split.us.i.us.us.us.i
  br i1 %i.sc, label %.lr.ph200.us.i.us.us.us.us.i, label %.lr.ph200.us.i.us724.us.us.i.preheader

.lr.ph200.us.i.us724.us.us.i.preheader:           ; preds = %.lr.ph200.us.i.preheader.us.us.us.i
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.pd
  %i.bld = add nsw i64 %umax230, %i.li
  %scevgep241 = getelementptr i8, ptr %i.kw, i64 %i.pe
  %i.ble = zext nneg i32 %smax.i to i64           ; 2 uses
  %i.blf = add nuw nsw i64 %i.ble, 1
  %i.blg = call i64 @llvm.umax.i64(i64 %i.blf, i64 %i.ahx)
  %i.blh = sub nsw i64 %i.blg, %i.ble             ; 3 uses
  %min.iters.check = icmp ult i64 %i.blh, 8
  %i.bli = trunc i64 %i.pq to i32
  %i.blj = icmp ugt i64 %i.pq, 4294967295
  %n.vec = and i64 %i.blh, -8                     ; 3 uses
  %i.blk = add nsw i64 %n.vec, %i.qw
  %cmp.n = icmp eq i64 %i.blh, %n.vec
  br label %.lr.ph200.us.i.us724.us.us.i

.preheader626.us.us.us.i:                         ; preds = %.prol.loopexit459, %.lr.ph670.us.us.us.i.new, %.loopexit628.us.us.us.thread.i
  %i.bll = add nsw i32 %i.iy, %i.da               ; 3 uses
  %i.blm = icmp slt i32 %i.ja, %i.bll
  br i1 %i.blm, label %.lr.ph672.us.us.us.i, label %._crit_edge673.us.us.us.i

.preheader627.us.us.us.i:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block350, %vec.epilog.middle.block, %.loopexit631.us.us.us.i.thread
  %i.bln = add nsw i32 %i.da, -1                  ; 2 uses
  %i.blo = icmp slt i32 %i.cv, %i.bln
  br i1 %i.blo, label %.lr.ph667.us.us.us.i, label %.loopexit628.us.us.us.thread.i

.preheader630.us.us.us.i:                         ; preds = %vec.epilog.scalar.ph383.prol.loopexit, %vec.epilog.scalar.ph383, %vec.epilog.middle.block393, %middle.block379
  %.not1090.i = icmp eq i32 %i.cu, 4
  br i1 %.not1090.i, label %.loopexit631.us.us.us.i, label %.lr.ph663.us.us.us.i

.lr.ph654.us.us.us.i:                             ; preds = %bb.f
  %i.blp = zext nneg i32 %i.cu to i64
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr @ff_obmc_tab, i64 %i.blp
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !107 ; 3 uses
  %i.bls = zext nneg i32 %i.da to i64             ; 17 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.da, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %umax.i to i64 ; 24 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 62
  br label %bb.g

.lr.ph657.us.us.us.i:                             ; preds = %._crit_edge655.us.us.us.i
end_hunk_1
