Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFObjectWriter?download=true
inline.NumInlined: 1918
inline.NumDeleted: 957
begin_hunk_0_@_ZN12_GLOBAL__N_19ELFWriter11writeObjectEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %.not.i.i.i.i95.i = icmp eq i32 %.val80.i, 1
  %i.anm = call i32 @llvm.bswap.i32(i32 %i.anf)
  %spec.select.i.i.i.i96.i = select i1 %.not.i.i.i.i95.i, i32 %i.anf, i32 %i.anm
  store i32 %spec.select.i.i.i.i96.i, ptr %i.u, align 4, !tbaa !83
  %i.ann = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val79.i, ptr noundef nonnull %i.u, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ano = getelementptr inbounds nuw i8, ptr %.sroa.0163.0178.i, i64 16 ; 4 uses
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !225
  %i.anq = lshr i32 %i.anp, 24
  %i.anr = trunc nuw i32 %i.anq to i8
  %.val94.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 %i.anr, ptr %i.t, align 1, !tbaa !43
  %i.ans = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val94.i, ptr noundef nonnull %i.t, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ant = load i32, ptr %i.ano, align 8, !tbaa !225
  %i.anu = lshr i32 %i.ant, 16
  %i.anv = trunc i32 %i.anu to i8
  %.val93.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.anv, ptr %i.s, align 1, !tbaa !43
  %i.anw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val93.i, ptr noundef nonnull %i.s, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.anx = load i32, ptr %i.ano, align 8, !tbaa !225
  %i.any = lshr i32 %i.anx, 8
  %i.anz = trunc i32 %i.any to i8
  %.val92.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 %i.anz, ptr %i.r, align 1, !tbaa !43
  %i.aoa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val92.i, ptr noundef nonnull %i.r, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aob = load i32, ptr %i.ano, align 8, !tbaa !225
  %i.aoc = trunc i32 %i.aob to i8
  %.val91.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 %i.aoc, ptr %i.q, align 1, !tbaa !43
  %i.aod = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val91.i, ptr noundef nonnull %i.q, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.amo, label %bb.dq, label %bb.dx

bb.dq:                                            ; preds = %bb.dp
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.0163.0178.i, i64 24
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !226 ; 2 uses
  %.val87.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val88.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.not.i.i.i.i97.i = icmp eq i32 %.val88.i, 1
  %i.aog = call i64 @llvm.bswap.i64(i64 %i.aof)
  %spec.select.i.i.i.i98.i = select i1 %.not.i.i.i.i97.i, i64 %i.aof, i64 %i.aog
  store i64 %spec.select.i.i.i.i98.i, ptr %i.p, align 8, !tbaa !95
  %i.aoh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val87.i, ptr noundef nonnull %i.p, i64 noundef 8) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.dx

bb.dr:                                            ; preds = %bb.do
  %i.aoi = trunc i64 %i.anj to i32                ; 2 uses
  %.val77.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val78.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.not.i.i.i.i99.i = icmp eq i32 %.val78.i, 1
  %i.aoj = call i32 @llvm.bswap.i32(i32 %i.aoi)
  %spec.select.i.i.i.i100.i = select i1 %.not.i.i.i.i99.i, i32 %i.aoi, i32 %i.aoj
  store i32 %spec.select.i.i.i.i100.i, ptr %i.o, align 4, !tbaa !83
  %i.aok = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val77.i, ptr noundef nonnull %i.o, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.0163.0178.i, i64 16 ; 3 uses
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !225
  %i.aon = shl i32 %i.anf, 8
  %i.aoo = and i32 %i.aom, 255
  %i.aop = or disjoint i32 %i.aoo, %i.aon         ; 2 uses
  %.val75.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val76.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not.i.i.i.i101.i = icmp eq i32 %.val76.i, 1
  %i.aoq = call i32 @llvm.bswap.i32(i32 %i.aop)
  %spec.select.i.i.i.i102.i = select i1 %.not.i.i.i.i101.i, i32 %i.aop, i32 %i.aoq
  store i32 %spec.select.i.i.i.i102.i, ptr %i.n, align 4, !tbaa !83
  %i.aor = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val75.i, ptr noundef nonnull %i.n, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amo, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.0163.0178.i, i64 24
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !226
  %i.aou = trunc i64 %i.aot to i32                ; 2 uses
  %.val73.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val74.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i.i.i.i103.i = icmp eq i32 %.val74.i, 1
  %i.aov = call i32 @llvm.bswap.i32(i32 %i.aou)
  %spec.select.i.i.i.i104.i = select i1 %.not.i.i.i.i103.i, i32 %i.aou, i32 %i.aov
  store i32 %spec.select.i.i.i.i104.i, ptr %i.m, align 4, !tbaa !83
  %i.aow = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val73.i, ptr noundef nonnull %i.m, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.aox = load i32, ptr %i.aol, align 8, !tbaa !225 ; 3 uses
  %i.aoy = and i32 %i.aox, 65280
  %.not50.i159 = icmp eq i32 %i.aoy, 0
  br i1 %.not50.i159, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aoz = lshr i32 %i.aox, 8
  %i.apa = load i64, ptr %.sroa.0163.0178.i, align 8, !tbaa !223
  %i.apb = trunc i64 %i.apa to i32                ; 2 uses
  %.val71.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val72.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i.i.i.i105.i = icmp eq i32 %.val72.i, 1
  %i.apc = call i32 @llvm.bswap.i32(i32 %i.apb)
  %spec.select.i.i.i.i106.i = select i1 %.not.i.i.i.i105.i, i32 %i.apb, i32 %i.apc
  store i32 %spec.select.i.i.i.i106.i, ptr %i.l, align 4, !tbaa !83
  %i.apd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val71.i, ptr noundef nonnull %i.l, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ape = and i32 %i.aoz, 255                    ; 2 uses
  %.val69.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val70.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not.i.i.i.i107.i = icmp eq i32 %.val70.i, 1
  %i.apf = shl nuw i32 %i.ape, 24
  %spec.select.i.i.i.i108.i = select i1 %.not.i.i.i.i107.i, i32 %i.ape, i32 %i.apf
  store i32 %spec.select.i.i.i.i108.i, ptr %i.k, align 4, !tbaa !83
  %i.apg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val69.i, ptr noundef nonnull %i.k, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val67.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 0, ptr %i.j, align 4, !tbaa !83
  %i.aph = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val67.i, ptr noundef nonnull %i.j, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre.i160 = load i32, ptr %i.aol, align 8, !tbaa !225
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.api = phi i32 [ %.pre.i160, %bb.du ], [ %i.aox, %bb.dt ] ; 2 uses
  %i.apj = and i32 %i.api, 16711680
  %.not51.i = icmp eq i32 %i.apj, 0
  br i1 %.not51.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.apk = lshr i32 %i.api, 16
  %i.apl = load i64, ptr %.sroa.0163.0178.i, align 8, !tbaa !223
  %i.apm = trunc i64 %i.apl to i32                ; 2 uses
  %.val65.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val66.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not.i.i.i.i111.i = icmp eq i32 %.val66.i, 1
  %i.apn = call i32 @llvm.bswap.i32(i32 %i.apm)
  %spec.select.i.i.i.i112.i = select i1 %.not.i.i.i.i111.i, i32 %i.apm, i32 %i.apn
  store i32 %spec.select.i.i.i.i112.i, ptr %i.i, align 4, !tbaa !83
  %i.apo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val65.i, ptr noundef nonnull %i.i, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.app = and i32 %i.apk, 255                    ; 2 uses
  %.val63.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  %.val64.i = load i32, ptr %i.cs, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i.i.i.i113.i = icmp eq i32 %.val64.i, 1
  %i.apq = shl nuw i32 %i.app, 24
  %spec.select.i.i.i.i114.i = select i1 %.not.i.i.i.i113.i, i32 %i.app, i32 %i.apq
  store i32 %spec.select.i.i.i.i114.i, ptr %i.h, align 4, !tbaa !83
  %i.apr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val63.i, ptr noundef nonnull %i.h, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val61.i = load ptr, ptr %i.bd, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 0, ptr %i.g, align 4, !tbaa !83
  %i.aps = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.val61.i, ptr noundef nonnull %i.g, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.dq, %bb.dp
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.0163.0178.i, i64 32 ; 2 uses
  %.not169.i = icmp eq ptr %i.apt, %i.ana
  br i1 %.not169.i, label %_ZN12_GLOBAL__N_19ELFWriter16writeRelocationsERKN4llvm12MCSectionELFE.exit, label %.lr.ph179.i

bb.dy:                                            ; preds = %_ZNK4llvm15ELFObjectWriter8usesRelaERKNS_15MCTargetOptionsERKNS_12MCSectionELFE.exit.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.amc, i64 2
  %i.apv = load i8, ptr %i.apu, align 2, !tbaa !218, !range !152, !noundef !146
  %i.apw = trunc nuw i8 %i.apv to i1
  br i1 %i.apw, label %bb.dz, label %bb.ga

bb.dz:                                            ; preds = %bb.dy
  %i.apx = getelementptr i8, ptr %i.amu, i64 20
  %.val53.val.val.i = load i8, ptr %i.apx, align 4
  %i.apy = and i8 %.val53.val.val.i, 2
  %.not168.i = icmp eq i8 %i.apy, 0
  %i.apz = load ptr, ptr %i.amb, align 8, !tbaa !86 ; 6 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i147, i64 16
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !221 ; 6 uses
  %i.aqc = ptrtoint ptr %i.aqb to i64
  %i.aqd = ptrtoint ptr %i.apz to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd                 ; 2 uses
  %i.aqf = load ptr, ptr %i.bd, align 8, !tbaa !548, !nonnull !146, !align !147 ; 18 uses
  %.not122.i.i.i = icmp eq ptr %i.aqb, %i.apz     ; 4 uses
  br i1 %.not168.i, label %bb.fa, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not122.i.i.i, label %._crit_edge.i.i.i, label %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i
  %i.aqg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aqs, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.ea
  %.039.lcssa.i.i.i = phi i64 [ 3, %bb.ea ], [ %i.aqg, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.aqh = ashr exact i64 %i.aqe, 2
  %21 = add nuw nsw i64 %i.aqh, 4
  %22 = add nsw i64 %21, %.039.lcssa.i.i.i
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 32 ; 14 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqf, i64 24 ; 7 uses
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i, %._crit_edge.i.i.i
  %.019.i.i.i.i = phi i64 [ %22, %._crit_edge.i.i.i ], [ %i.aqk, %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i ] ; 2 uses
  %i.aqk = lshr i64 %.019.i.i.i.i, 7              ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.aqk, 0       ; 2 uses
  %i.aql = trunc i64 %.019.i.i.i.i to i8          ; 2 uses
  %i.aqm = or i8 %i.aql, -128
  %.0.i.i.i.i = select i1 %.not.i.not.i.i.i, i8 %i.aql, i8 %i.aqm ; 2 uses
  %i.aqn = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.aqo = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i.i.i.i117.i = icmp ult ptr %i.aqn, %i.aqo
  br i1 %.not.i.i.i.i117.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aqp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store ptr %i.aqq, ptr %i.aqi, align 8, !tbaa !552
  store i8 %.0.i.i.i.i, ptr %i.aqn, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i:           ; preds = %bb.ed, %bb.ec
  br i1 %.not.i.not.i.i.i, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i, label %bb.eb, !llvm.loop !540

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i.i
  br i1 %.not122.i.i.i, label %_ZN12_GLOBAL__N_19ELFWriter16writeRelocationsERKN4llvm12MCSectionELFE.exit, label %.lr.ph.i.i.i155

_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i: ; preds = %bb.ea, %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i
  %.039108.i.i.i = phi i64 [ %i.aqs, %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i ], [ 8, %bb.ea ]
  %.040107.i.i.i = phi ptr [ %i.aqt, %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i ], [ %i.apz, %bb.ea ] ; 2 uses
  %i.aqr = load i64, ptr %.040107.i.i.i, align 8, !tbaa !223, !noalias !588
  %i.aqs = or i64 %i.aqr, %.039108.i.i.i          ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %.040107.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i154 = icmp eq ptr %i.aqt, %i.aqb
  br i1 %.not.i.i.i154, label %._crit_edge.loopexit.i.i.i, label %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i

.lr.ph.i.i.i155:                                  ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i
  %.0114.i.i.i = phi ptr [ %i.ato, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i ], [ %i.apz, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i ] ; 5 uses
  %.041113.i.i.i = phi i32 [ %.1.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i ] ; 3 uses
  %.042112.i.i.i = phi i32 [ %.143.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i ] ; 3 uses
  %.044111.i.i.i = phi i64 [ %.145.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i ] ; 3 uses
  %.046110.i.i.i = phi i64 [ %i.aqz, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i.i ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0114.i.i.i, i64 8
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !224, !noalias !589 ; 2 uses
  %.not.i55.i.i.i = icmp eq ptr %i.aqv, null
  br i1 %.not.i55.i.i.i, label %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit56.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i155
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 12
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !579, !noalias !589
  br label %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit56.i.i.i

_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit56.i.i.i: ; preds = %bb.ee, %.lr.ph.i.i.i155
  %i.aqy = phi i32 [ %i.aqx, %bb.ee ], [ 0, %.lr.ph.i.i.i155 ] ; 3 uses
  %i.aqz = load i64, ptr %.0114.i.i.i, align 8, !tbaa !223, !noalias !589 ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.0114.i.i.i, i64 16
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !225, !noalias !589 ; 3 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.0114.i.i.i, i64 24
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !226, !noalias !589 ; 3 uses
  %i.are = sub i64 %i.aqz, %.046110.i.i.i
  %i.arf = lshr i64 %i.are, %.039.lcssa.i.i.i     ; 3 uses
  %i.arg = shl i64 %i.arf, 3
  %i.arh = icmp ne i32 %.042112.i.i.i, %i.aqy
  %i.ari = zext i1 %i.arh to i64
  %i.arj = or disjoint i64 %i.arg, %i.ari
  %.not49.i.i.i = icmp eq i32 %.041113.i.i.i, %i.arb
  %i.ark = select i1 %.not49.i.i.i, i64 0, i64 2
  %i.arl = or disjoint i64 %i.arj, %i.ark
  %.not50.i.i.i = icmp eq i64 %.044111.i.i.i, %i.ard
  %i.arm = select i1 %.not50.i.i.i, i64 0, i64 4
  %i.arn = or disjoint i64 %i.arl, %i.arm         ; 2 uses
  %i.aro = icmp ult i64 %i.arf, 16
  %i.arp = trunc i64 %i.arn to i8                 ; 3 uses
  br i1 %i.aro, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit56.i.i.i
  %i.arq = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.arr = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i57.i.i.i = icmp ult ptr %i.arq, %i.arr
  br i1 %.not.i57.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ars = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %i.arp) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 1
  store ptr %i.art, ptr %i.aqi, align 8, !tbaa !552
  store i8 %i.arp, ptr %i.arq, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i

bb.ei:                                            ; preds = %_ZZL10encodeCrelILb1EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit56.i.i.i
  %i.aru = or i8 %i.arp, -128                     ; 2 uses
  %i.arv = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.arw = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i59.i.i.i = icmp ult ptr %i.arv, %i.arw
  br i1 %.not.i59.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.arx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %i.aru) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit61.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 1
  store ptr %i.ary, ptr %i.aqi, align 8, !tbaa !552
  store i8 %i.aru, ptr %i.arv, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit61.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit61.i.i.i:           ; preds = %bb.ek, %bb.ej
  %i.arz = lshr i64 %i.arf, 4
  br label %bb.el

bb.el:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit61.i.i.i
  %.019.i62.i.i.i = phi i64 [ %i.arz, %_ZN4llvm11raw_ostreamlsEc.exit61.i.i.i ], [ %i.asa, %_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i ] ; 2 uses
  %i.asa = lshr i64 %.019.i62.i.i.i, 7            ; 2 uses
  %.not.i64.not.i.i.i = icmp eq i64 %i.asa, 0     ; 2 uses
  %i.asb = trunc i64 %.019.i62.i.i.i to i8        ; 2 uses
  %i.asc = or i8 %i.asb, -128
  %.0.i65.i.i.i = select i1 %.not.i64.not.i.i.i, i8 %i.asb, i8 %i.asc ; 2 uses
  %i.asd = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.ase = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i.i66.i.i.i = icmp ult ptr %i.asd, %i.ase
  br i1 %.not.i.i66.i.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.asf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i65.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 1
  store ptr %i.asg, ptr %i.aqi, align 8, !tbaa !552
  store i8 %.0.i65.i.i.i, ptr %i.asd, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i:         ; preds = %bb.en, %bb.em
  br i1 %.not.i64.not.i.i.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i, label %bb.el, !llvm.loop !540

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i:             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i67.i.i.i, %bb.eh, %bb.eg
  %i.ash = trunc i64 %i.arn to i32                ; 3 uses
  %i.asi = and i32 %i.ash, 1
  %.not51.i.i.i = icmp eq i32 %i.asi, 0
  br i1 %.not51.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i
  %i.asj = sub i32 %i.aqy, %.042112.i.i.i
  %i.ask = sext i32 %i.asj to i64
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i, %bb.eo
  %.024.i.i.i.i = phi i64 [ %i.ask, %bb.eo ], [ %i.asn, %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i ] ; 2 uses
  %i.asl = trunc i64 %.024.i.i.i.i to i8
  %i.asm = and i8 %i.asl, 127                     ; 2 uses
  %i.asn = ashr i64 %.024.i.i.i.i, 7              ; 2 uses
  %.not.i69.i.i.i = icmp samesign ugt i8 %i.asm, 63
  %i.aso = sext i1 %.not.i69.i.i.i to i64
  %.not30.i.not.i.i.i = icmp eq i64 %i.asn, %i.aso ; 2 uses
  %masksel.i.i.i.i = select i1 %.not30.i.not.i.i.i, i8 0, i8 -128
  %.0.i70.i.i.i = or disjoint i8 %masksel.i.i.i.i, %i.asm ; 2 uses
  %i.asp = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.asq = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i.i71.i.i.i = icmp ult ptr %i.asp, %i.asq
  br i1 %.not.i.i71.i.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.asr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i70.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i

bb.er:                                            ; preds = %bb.ep
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asp, i64 1
  store ptr %i.ass, ptr %i.aqi, align 8, !tbaa !552
  store i8 %.0.i70.i.i.i, ptr %i.asp, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i:         ; preds = %bb.er, %bb.eq
  br i1 %.not30.i.not.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i, label %bb.ep, !llvm.loop !545

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i
  %.143.i.i.i = phi i32 [ %.042112.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i ], [ %i.aqy, %_ZN4llvm11raw_ostreamlsEc.exit.i72.i.i.i ]
  %i.ast = and i32 %i.ash, 2
  %.not52.i.i.i = icmp eq i32 %i.ast, 0
  br i1 %.not52.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i, label %bb.es

bb.es:                                            ; preds = %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i
  %i.asu = sub i32 %i.arb, %.041113.i.i.i
  %i.asv = sext i32 %i.asu to i64
  br label %bb.et

bb.et:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i, %bb.es
  %.024.i73.i.i.i = phi i64 [ %i.asv, %bb.es ], [ %i.asy, %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i ] ; 2 uses
  %i.asw = trunc i64 %.024.i73.i.i.i to i8
  %i.asx = and i8 %i.asw, 127                     ; 2 uses
  %i.asy = ashr i64 %.024.i73.i.i.i, 7            ; 2 uses
  %.not.i75.i.i.i = icmp samesign ugt i8 %i.asx, 63
  %i.asz = sext i1 %.not.i75.i.i.i to i64
  %.not30.i76.not.i.i.i = icmp eq i64 %i.asy, %i.asz ; 2 uses
  %masksel.i77.i.i.i = select i1 %.not30.i76.not.i.i.i, i8 0, i8 -128
  %.0.i78.i.i.i = or disjoint i8 %masksel.i77.i.i.i, %i.asx ; 2 uses
  %i.ata = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.atb = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i.i79.i.i.i = icmp ult ptr %i.ata, %i.atb
  br i1 %.not.i.i79.i.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.atc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i78.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 1
  store ptr %i.atd, ptr %i.aqi, align 8, !tbaa !552
  store i8 %.0.i78.i.i.i, ptr %i.ata, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i:         ; preds = %bb.ev, %bb.eu
  br i1 %.not30.i76.not.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i, label %bb.et, !llvm.loop !545

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i
  %.1.i.i.i = phi i32 [ %.041113.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i.i ], [ %i.arb, %_ZN4llvm11raw_ostreamlsEc.exit.i80.i.i.i ]
  %i.ate = and i32 %i.ash, 4
  %.not53.i.i.i = icmp eq i32 %i.ate, 0
  br i1 %.not53.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i
  %i.atf = sub i64 %i.ard, %.044111.i.i.i
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i, %bb.ew
  %.024.i82.i.i.i = phi i64 [ %i.atf, %bb.ew ], [ %i.ati, %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i ] ; 2 uses
  %i.atg = trunc i64 %.024.i82.i.i.i to i8
  %i.ath = and i8 %i.atg, 127                     ; 2 uses
  %i.ati = ashr i64 %.024.i82.i.i.i, 7            ; 2 uses
  %.not.i84.i.i.i = icmp samesign ugt i8 %i.ath, 63
  %i.atj = sext i1 %.not.i84.i.i.i to i64
  %.not30.i85.not.i.i.i = icmp eq i64 %i.ati, %i.atj ; 2 uses
  %masksel.i86.i.i.i = select i1 %.not30.i85.not.i.i.i, i8 0, i8 -128
  %.0.i87.i.i.i = or disjoint i8 %masksel.i86.i.i.i, %i.ath ; 2 uses
  %i.atk = load ptr, ptr %i.aqi, align 8, !tbaa !552 ; 3 uses
  %i.atl = load ptr, ptr %i.aqj, align 8, !tbaa !554
  %.not.i.i88.i.i.i = icmp ult ptr %i.atk, %i.atl
  br i1 %.not.i.i88.i.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.atm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i87.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 1
  store ptr %i.atn, ptr %i.aqi, align 8, !tbaa !552
  store i8 %.0.i87.i.i.i, ptr %i.atk, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i:         ; preds = %bb.ez, %bb.ey
  br i1 %.not30.i85.not.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i, label %bb.ex, !llvm.loop !545

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i
  %.145.i.i.i = phi i64 [ %.044111.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit81.i.i.i ], [ %i.ard, %_ZN4llvm11raw_ostreamlsEc.exit.i89.i.i.i ]
  %i.ato = getelementptr inbounds nuw i8, ptr %.0114.i.i.i, i64 32 ; 2 uses
  %.not48.i.i.i = icmp eq ptr %i.ato, %i.aqb
  br i1 %.not48.i.i.i, label %_ZN12_GLOBAL__N_19ELFWriter16writeRelocationsERKN4llvm12MCSectionELFE.exit, label %.lr.ph.i.i.i155

bb.fa:                                            ; preds = %bb.dz
  br i1 %.not122.i.i.i, label %._crit_edge.i.i121.i, label %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i

._crit_edge.loopexit.i.i120.i:                    ; preds = %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i
  %i.atp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aub, i1 false)
  br label %._crit_edge.i.i121.i

._crit_edge.i.i121.i:                             ; preds = %._crit_edge.loopexit.i.i120.i, %bb.fa
  %.058.lcssa.i.i.i = phi i32 [ 3, %bb.fa ], [ %i.atp, %._crit_edge.loopexit.i.i120.i ] ; 2 uses
  %i.atq = ashr exact i64 %i.aqe, 2
  %23 = add nuw nsw i64 %i.atq, 4
  %24 = zext nneg i32 %.058.lcssa.i.i.i to i64
  %25 = add nsw i64 %23, %24
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aqf, i64 32 ; 14 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.aqf, i64 24 ; 7 uses
  br label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i, %._crit_edge.i.i121.i
  %.019.i.i.i122.i = phi i64 [ %25, %._crit_edge.i.i121.i ], [ %i.att, %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i ] ; 2 uses
  %i.att = lshr i64 %.019.i.i.i122.i, 7           ; 2 uses
  %.not.i.not.i.i123.i = icmp eq i64 %i.att, 0    ; 2 uses
  %i.atu = trunc i64 %.019.i.i.i122.i to i8       ; 2 uses
  %i.atv = or i8 %i.atu, -128
  %.0.i.i.i124.i = select i1 %.not.i.not.i.i123.i, i8 %i.atu, i8 %i.atv ; 2 uses
  %i.atw = load ptr, ptr %i.atr, align 8, !tbaa !552 ; 3 uses
  %i.atx = load ptr, ptr %i.ats, align 8, !tbaa !554
  %.not.i.i.i.i125.i = icmp ult ptr %i.atw, %i.atx
  br i1 %.not.i.i.i.i125.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aty = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i.i.i124.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i

bb.fd:                                            ; preds = %bb.fb
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atw, i64 1
  store ptr %i.atz, ptr %i.atr, align 8, !tbaa !552
  store i8 %.0.i.i.i124.i, ptr %i.atw, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i:        ; preds = %bb.fd, %bb.fc
  br i1 %.not.i.not.i.i123.i, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i, label %bb.fb, !llvm.loop !540

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i.i126.i
  br i1 %.not122.i.i.i, label %_ZN12_GLOBAL__N_19ELFWriter16writeRelocationsERKN4llvm12MCSectionELFE.exit, label %.lr.ph.i.i128.i

_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i: ; preds = %bb.fa, %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i
  %.058124.i.i.i = phi i32 [ %i.aub, %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i ], [ 8, %bb.fa ]
  %.061123.i.i.i = phi ptr [ %i.auc, %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i ], [ %i.apz, %bb.fa ] ; 2 uses
  %i.aua = load i64, ptr %.061123.i.i.i, align 8, !tbaa !223
  %.sroa.034.0.extract.trunc.i.i.i = trunc i64 %i.aua to i32
  %i.aub = or i32 %.058124.i.i.i, %.sroa.034.0.extract.trunc.i.i.i ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %.061123.i.i.i, i64 32 ; 2 uses
  %.not.i.i119.i = icmp eq ptr %i.auc, %i.aqb
  br i1 %.not.i.i119.i, label %._crit_edge.loopexit.i.i120.i, label %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit.i.i.i

.lr.ph.i.i128.i:                                  ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i
  %.0130.i.i.i = phi ptr [ %i.awu, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i ], [ %i.apz, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i ] ; 5 uses
  %.059129.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i ]
  %.060128.i.i.i = phi i32 [ %.1.i.i131.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i ] ; 3 uses
  %.062127.i.i.i = phi i32 [ %.163.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i ] ; 3 uses
  %.064126.i.i.i = phi i32 [ %.165.i.i.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i.i.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i.i127.i ] ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %.0130.i.i.i, i64 8
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !224 ; 2 uses
  %.not.i73.i.i.i = icmp eq ptr %i.aue, null
  br i1 %.not.i73.i.i.i, label %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit82.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i128.i
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 12
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !579
  br label %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit82.i.i.i

_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit82.i.i.i: ; preds = %bb.fe, %.lr.ph.i.i128.i
  %.sroa.2.0.insert.ext.i74.i.i.i = phi i32 [ %i.aug, %bb.fe ], [ 0, %.lr.ph.i.i128.i ] ; 3 uses
  %i.auh = load i64, ptr %.0130.i.i.i, align 8, !tbaa !223
  %i.aui = getelementptr inbounds nuw i8, ptr %.0130.i.i.i, i64 16
  %i.auj = load i32, ptr %i.aui, align 8, !tbaa !225 ; 3 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.0130.i.i.i, i64 24
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !226
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.auh to i32 ; 2 uses
  %i.aum = sub i32 %.sroa.0.0.extract.trunc.i.i.i, %.059129.i.i.i
  %i.aun = lshr i32 %i.aum, %.058.lcssa.i.i.i     ; 3 uses
  %i.auo = shl i32 %i.aun, 3
  %i.aup = icmp ne i32 %.064126.i.i.i, %.sroa.2.0.insert.ext.i74.i.i.i ; 2 uses
  %i.auq = zext i1 %i.aup to i32
  %i.aur = or disjoint i32 %i.auo, %i.auq
  %.not68.i.i.i = icmp eq i32 %.062127.i.i.i, %i.auj ; 2 uses
  %i.aus = select i1 %.not68.i.i.i, i32 0, i32 2
  %.sroa.8.12.extract.trunc.i.i.i = trunc i64 %i.aul to i32 ; 3 uses
  %.not69.i.i.i = icmp eq i32 %.060128.i.i.i, %.sroa.8.12.extract.trunc.i.i.i ; 2 uses
  %i.aut = select i1 %.not69.i.i.i, i32 0, i32 4
  %i.auu = or disjoint i32 %i.aur, %i.aus
  %i.auv = or disjoint i32 %i.auu, %i.aut
  %i.auw = icmp ult i32 %i.aun, 16
  %i.aux = trunc i32 %i.auv to i8                 ; 3 uses
  br i1 %i.auw, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit82.i.i.i
  %i.auy = load ptr, ptr %i.atr, align 8, !tbaa !552 ; 3 uses
  %i.auz = load ptr, ptr %i.ats, align 8, !tbaa !554
  %.not.i83.i.i.i = icmp ult ptr %i.auy, %i.auz
  br i1 %.not.i83.i.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ava = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %i.aux) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i

bb.fh:                                            ; preds = %bb.ff
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  store ptr %i.avb, ptr %i.atr, align 8, !tbaa !552
  store i8 %i.aux, ptr %i.auy, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i

bb.fi:                                            ; preds = %_ZZL10encodeCrelILb0EEvN4llvm8ArrayRefINS0_18ELFRelocationEntryEEERNS0_11raw_ostreamEENKUlRKS2_E_clES7_.exit82.i.i.i
  %i.avc = or i8 %i.aux, -128                     ; 2 uses
  %i.avd = load ptr, ptr %i.atr, align 8, !tbaa !552 ; 3 uses
  %i.ave = load ptr, ptr %i.ats, align 8, !tbaa !554
  %.not.i85.i.i.i = icmp ult ptr %i.avd, %i.ave
  br i1 %.not.i85.i.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.avf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %i.avc) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit87.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avd, i64 1
  store ptr %i.avg, ptr %i.atr, align 8, !tbaa !552
  store i8 %i.avc, ptr %i.avd, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit87.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit87.i.i.i:           ; preds = %bb.fk, %bb.fj
  %i.avh = lshr i32 %i.aun, 4
  %i.avi = zext nneg i32 %i.avh to i64
  br label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit87.i.i.i
  %.019.i88.i.i.i = phi i64 [ %i.avi, %_ZN4llvm11raw_ostreamlsEc.exit87.i.i.i ], [ %i.avj, %_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i ] ; 2 uses
  %i.avj = lshr i64 %.019.i88.i.i.i, 7            ; 2 uses
  %.not.i90.not.i.i.i = icmp eq i64 %i.avj, 0     ; 2 uses
  %i.avk = trunc i64 %.019.i88.i.i.i to i8        ; 2 uses
  %i.avl = or i8 %i.avk, -128
  %.0.i91.i.i.i = select i1 %.not.i90.not.i.i.i, i8 %i.avk, i8 %i.avl ; 2 uses
  %i.avm = load ptr, ptr %i.atr, align 8, !tbaa !552 ; 3 uses
  %i.avn = load ptr, ptr %i.ats, align 8, !tbaa !554
  %.not.i.i92.i.i.i = icmp ult ptr %i.avm, %i.avn
  br i1 %.not.i.i92.i.i.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.avo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i91.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i

bb.fn:                                            ; preds = %bb.fl
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 1
  store ptr %i.avp, ptr %i.atr, align 8, !tbaa !552
  store i8 %.0.i91.i.i.i, ptr %i.avm, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i:         ; preds = %bb.fn, %bb.fm
  br i1 %.not.i90.not.i.i.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i, label %bb.fl, !llvm.loop !540

_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i:          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i93.i.i.i, %bb.fh, %bb.fg
  br i1 %i.aup, label %bb.fo, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i130.i

bb.fo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i
  %i.avq = sub i32 %.sroa.2.0.insert.ext.i74.i.i.i, %.064126.i.i.i
  %i.avr = sext i32 %i.avq to i64
  br label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i, %bb.fo
  %.024.i.i.i132.i = phi i64 [ %i.avr, %bb.fo ], [ %i.avu, %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i ] ; 2 uses
  %i.avs = trunc i64 %.024.i.i.i132.i to i8
  %i.avt = and i8 %i.avs, 127                     ; 2 uses
  %i.avu = ashr i64 %.024.i.i.i132.i, 7           ; 2 uses
  %.not.i95.i.i.i = icmp samesign ugt i8 %i.avt, 63
  %i.avv = sext i1 %.not.i95.i.i.i to i64
  %.not30.i.not.i.i133.i = icmp eq i64 %i.avu, %i.avv ; 2 uses
  %masksel.i.i.i134.i = select i1 %.not30.i.not.i.i133.i, i8 0, i8 -128
  %.0.i96.i.i.i = or disjoint i8 %masksel.i.i.i134.i, %i.avt ; 2 uses
  %i.avw = load ptr, ptr %i.atr, align 8, !tbaa !552 ; 3 uses
  %i.avx = load ptr, ptr %i.ats, align 8, !tbaa !554
  %.not.i.i97.i.i.i = icmp ult ptr %i.avw, %i.avx
  br i1 %.not.i.i97.i.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.avy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aqf, i8 noundef zeroext %.0.i96.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 1
  store ptr %i.avz, ptr %i.atr, align 8, !tbaa !552
  store i8 %.0.i96.i.i.i, ptr %i.avw, align 1, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i:         ; preds = %bb.fr, %bb.fq
  br i1 %.not30.i.not.i.i133.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i130.i, label %bb.fp, !llvm.loop !545

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i130.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i
  %.165.i.i.i = phi i32 [ %.064126.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i.i129.i ], [ %.sroa.2.0.insert.ext.i74.i.i.i, %_ZN4llvm11raw_ostreamlsEc.exit.i98.i.i.i ]
  br i1 %.not68.i.i.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit107.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i.i130.i
  %i.awa = sub i32 %i.auj, %.062127.i.i.i
  %i.awb = sext i32 %i.awa to i64
  br label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i106.i.i.i, %bb.fs
  %.024.i99.i.i.i = phi i64 [ %i.awb, %bb.fs ], [ %i.awe, %_ZN4llvm11raw_ostreamlsEc.exit.i106.i.i.i ] ; 2 uses
  %i.awc = trunc i64 %.024.i99.i.i.i to i8
  %i.awd = and i8 %i.awc, 127                     ; 2 uses
  %i.awe = ashr i64 %.024.i99.i.i.i, 7            ; 2 uses
  %.not.i101.i.i.i = icmp samesign ugt i8 %i.awd, 63
  %i.awf = sext i1 %.not.i101.i.i.i to i64
  %.not30.i102.not.i.i.i = icmp eq i64 %i.awe, %i.awf ; 2 uses
  %masksel.i103.i.i.i = select i1 %.not30.i102.not.i.i.i, i8 0, i8 -128
end_hunk_0
