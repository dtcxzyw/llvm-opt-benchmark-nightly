Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ptw?download=true
inline.NumInlined: 386
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_phys_addr_nogpc:bb.a

bb.la:                                            ; preds = %regime_ttbr.exit22.i, %regime_ttbr.exit.i
  %storemerge.i = phi i32 [ %i.ant, %regime_ttbr.exit22.i ], [ %i.anc, %regime_ttbr.exit.i ]
  %i.anu = lshr i32 %i.alv, 18
  %i.anv = and i32 %i.anu, 16380
  %i.anw = or i32 %storemerge.i, %i.anv
  %i.anx = zext i32 %i.anw to i64
  %i.any = tail call fastcc zeroext i1 @S1_ptw_translate(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.anx, ptr noundef nonnull %6), !inline_history !19
  br i1 %i.any, label %bb.lb, label %.thread241

bb.lb:                                            ; preds = %bb.la
  %i.anz = tail call fastcc i32 @arm_ldl_ptw(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6), !inline_history !19 ; 14 uses
  %i.aoa = load i32, ptr %6, align 8
  %.not.i151 = icmp eq i32 %i.aoa, 0
  br i1 %.not.i151, label %bb.lc, label %.thread241

bb.lc:                                            ; preds = %bb.lb
  %i.aob = and i32 %i.anz, 3                      ; 3 uses
  switch i32 %i.aob, label %bb.le [
    i32 0, label %.thread241.sink.split
    i32 3, label %bb.ld
  ]

bb.ld:                                            ; preds = %bb.lc
  %i.aoc = getelementptr i8, ptr %0, i64 79944
  %.val145.i = load i64, ptr %i.aoc, align 8
  %i.aod = and i64 %.val145.i, 12
  %.not248 = icmp eq i64 %i.aod, 0
  br i1 %.not248, label %.thread241.sink.split, label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %i.aoe = icmp eq i32 %i.aob, 1                  ; 3 uses
  %i.aof = and i32 %i.anz, 262144
  %.not136.i = icmp eq i32 %i.aof, 0              ; 2 uses
  %or.cond143.i = or i1 %i.aoe, %.not136.i
  %i.aog = lshr i32 %i.anz, 5
  %i.aoh = and i32 %i.aog, 15                     ; 5 uses
  %.0128.i = select i1 %or.cond143.i, i32 %i.aoh, i32 0 ; 4 uses
  %i.aoi = zext nneg i32 %i.alw to i64
  %i.aoj = icmp samesign ult i32 %i.alw, 136
  tail call void @llvm.assume(i1 %i.aoj)
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr @arm_mmuidx_table, i64 %i.aoi
  %i.aol = load i32, ptr %i.aok, align 4          ; 2 uses
  %i.aom = and i32 %i.aol, 32
  %i.aon = icmp ne i32 %i.aom, 0
  tail call void @llvm.assume(i1 %i.aon)
  %i.aoo = lshr i32 %i.aol, 3
  %i.aop = and i32 %i.aoo, 3                      ; 2 uses
  %i.aoq = icmp eq i32 %i.aop, 1
  %.0125.in.in.i.v = select i1 %i.aoq, i64 1024, i64 1032
  %.0125.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0125.in.in.i.v
  %.0125.in.i = load i64, ptr %.0125.in.in.i, align 8
  %.0125.i = trunc i64 %.0125.in.i to i32
  %.0123.i = select i1 %i.aoe, i32 2, i32 1       ; 3 uses
  %i.aor = shl nuw nsw i32 %.0128.i, 1
  %i.aos = lshr i32 %.0125.i, %i.aor              ; 2 uses
  %i.aot = and i32 %i.aos, 3                      ; 3 uses
  %i.aou = and i32 %i.aos, 1
  %or.cond.i152 = icmp eq i32 %i.aou, 0
  br i1 %or.cond.i152, label %.thread241.sink.split, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  br i1 %i.aoe, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  br i1 %.not136.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.aov = and i32 %i.anz, -16777216
  %i.aow = and i32 %i.alv, 16777215
  %i.aox = or disjoint i32 %i.aov, %i.aow
  %i.aoy = zext i32 %i.aox to i64
  %i.aoz = lshr i32 %i.anz, 20
  %i.apa = and i32 %i.aoz, 15
  %i.apb = zext nneg i32 %i.apa to i64
  %i.apc = shl nuw nsw i64 %i.apb, 32
  %i.apd = or disjoint i64 %i.apc, %i.aoy
  %i.ape = zext nneg i32 %i.aoh to i64
  %i.apf = shl nuw nsw i64 %i.ape, 36
  %i.apg = or disjoint i64 %i.apd, %i.apf
  br label %bb.lj

bb.li:                                            ; preds = %bb.lg
  %i.aph = and i32 %i.anz, -1048576
  %i.api = and i32 %i.alv, 1048575
  %i.apj = or disjoint i32 %i.aph, %i.api
  %i.apk = zext i32 %i.apj to i64
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.sink = phi i8 [ 20, %bb.li ], [ 24, %bb.lh ]
  %.0126.i = phi i64 [ %i.apk, %bb.li ], [ %i.apg, %bb.lh ]
  %i.apl = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 %.sink, ptr %i.apl, align 1
  %i.apm = lshr i32 %i.anz, 10
  %i.apn = and i32 %i.apm, 3
  %i.apo = lshr i32 %i.anz, 13
  %i.app = and i32 %i.apo, 4
  %i.apq = or disjoint i32 %i.apn, %i.app
  %i.apr = and i32 %i.anz, 16
  %i.aps = and i32 %i.anz, 1
  %i.apt = lshr i32 %i.anz, 19
  br label %bb.lp

bb.lk:                                            ; preds = %bb.lf
  %i.apu = getelementptr i8, ptr %0, i64 79944
  %.val144.i = load i64, ptr %i.apu, align 8
  %i.apv = and i64 %.val144.i, 12
  %.not249 = icmp eq i64 %i.apv, 0
  %i.apw = lshr i32 %i.anz, 2
  %i.apx = and i32 %i.apw, 1
  %.0131.i = select i1 %.not249, i32 0, i32 %i.apx ; 2 uses
  %i.apy = lshr i32 %i.anz, 3                     ; 2 uses
  %i.apz = and i32 %i.anz, -1024
  %i.aqa = lshr i32 %i.alv, 10
  %i.aqb = and i32 %i.aqa, 1020
  %i.aqc = or disjoint i32 %i.apz, %i.aqb
  %i.aqd = zext i32 %i.aqc to i64
  %i.aqe = tail call fastcc zeroext i1 @S1_ptw_translate(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.aqd, ptr noundef nonnull %6), !inline_history !19
  br i1 %i.aqe, label %bb.ll, label %.thread241

bb.ll:                                            ; preds = %bb.lk
  %i.aqf = tail call fastcc i32 @arm_ldl_ptw(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6), !inline_history !19 ; 7 uses
  %i.aqg = load i32, ptr %6, align 8
  %.not138.i = icmp eq i32 %i.aqg, 0
  br i1 %.not138.i, label %bb.lm, label %.thread241

bb.lm:                                            ; preds = %bb.ll
  %i.aqh = lshr i32 %i.aqf, 4
  %i.aqi = and i32 %i.aqh, 3
  %i.aqj = lshr i32 %i.aqf, 7
  %i.aqk = and i32 %i.aqj, 4
  %i.aql = or disjoint i32 %i.aqi, %i.aqk         ; 2 uses
  %i.aqm = and i32 %i.aqf, 3
  switch i32 %i.aqm, label %default.unreachable662 [
    i32 0, label %.thread241.sink.split
    i32 1, label %bb.ln
    i32 2, label %bb.lo
    i32 3, label %bb.lo
  ]

bb.ln:                                            ; preds = %bb.lm
  %i.aqn = and i32 %i.aqf, -65536
  %i.aqo = and i32 %i.alv, 65535
  %i.aqp = or disjoint i32 %i.aqn, %i.aqo
  %i.aqq = zext i32 %i.aqp to i64
  %i.aqr = and i32 %i.aqf, 32768
  %i.aqs = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 16, ptr %i.aqs, align 1
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lm, %bb.lm
  %i.aqt = and i32 %i.aqf, -4096
  %i.aqu = and i32 %i.alv, 4095
  %i.aqv = or disjoint i32 %i.aqt, %i.aqu
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = and i32 %i.aqf, 1
  %i.aqy = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 12, ptr %i.aqy, align 1
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln, %bb.lj
  %.0133.i = phi i32 [ %i.apr, %bb.lj ], [ %i.aqr, %bb.ln ], [ %i.aqx, %bb.lo ]
  %.1132.i = phi i32 [ %i.aps, %bb.lj ], [ %.0131.i, %bb.ln ], [ %.0131.i, %bb.lo ]
  %.0130.i = phi i32 [ %i.apq, %bb.lj ], [ %i.aql, %bb.ln ], [ %i.aql, %bb.lo ] ; 4 uses
  %.1127.i = phi i64 [ %.0126.i, %bb.lj ], [ %i.aqq, %bb.ln ], [ %i.aqw, %bb.lo ]
  %.0124.in.in.i.in = phi i32 [ %i.apt, %bb.lj ], [ %i.apy, %bb.ln ], [ %i.apy, %bb.lo ]
  %.0124.in.in.i = and i32 %.0124.in.in.i.in, 1
  %.0124.in.not.i = icmp eq i32 %.0124.in.in.i, 0
  %i.aqz = load i32, ptr %i.e, align 4
  %spec.store.select.i = select i1 %.0124.in.not.i, i32 %i.aqz, i32 1 ; 3 uses
  %i.ara = icmp eq i32 %i.aot, 3
  br i1 %i.ara, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.arb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 7, ptr %i.arb, align 8
  br label %bb.lx

bb.lr:                                            ; preds = %bb.lp
  %.val.i153 = load i64, ptr %i.de, align 16
  %i.arc = and i64 %.val.i153, 4
  %.not140.i = icmp eq i64 %i.arc, 0
  br i1 %.not140.i, label %bb.lv, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.are = zext nneg i32 %i.aop to i64
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.are
  %i.arg = load i64, ptr %i.arf, align 8
  %i.arh = and i64 %i.arg, 536870912
  %.not141.i = icmp eq i64 %i.arh, 0
  br i1 %.not141.i, label %bb.lv, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ari = and i32 %.0130.i, 1
  %i.arj = icmp eq i32 %i.ari, 0
  br i1 %i.arj, label %.thread241.sink.split, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ark = lshr i32 %.0130.i, 1                   ; 4 uses
  %i.arl = tail call fastcc i32 @simple_ap_to_rw_prot(i32 noundef %i.alw, i32 noundef %i.ark), !inline_history !19
  %8 = icmp eq i32 %i.ark, 2
  %.finite = select i1 %8, i32 0, i32 1
  %9 = icmp eq i32 %i.ark, 1
  %.finite1015 = select i1 %9, i32 3, i32 %.finite
  %10 = icmp eq i32 %i.ark, 0
  %.finite1016 = select i1 %10, i32 0, i32 %.finite1015
  br label %bb.lw

bb.lv:                                            ; preds = %bb.ls, %bb.lr
  %i.arm = tail call fastcc i32 @ap_to_rw_prot(ptr noundef nonnull %0, i32 noundef %i.alw, i32 noundef %.0130.i, i32 noundef %i.aot), !inline_history !19
  %i.arn = tail call fastcc i32 @ap_to_rw_prot_is_user(ptr noundef nonnull %0, i32 noundef %i.alw, i32 noundef %.0130.i, i32 noundef %i.aot, i1 noundef zeroext true), !inline_history !19
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %.0121.i = phi i32 [ %.finite1016, %bb.lu ], [ %i.arn, %bb.lv ]
  %.0120.i = phi i32 [ %i.arl, %bb.lu ], [ %i.arm, %bb.lv ]
  %i.aro = load i32, ptr %i.c, align 8
  %i.arp = tail call fastcc i32 @get_S1prot(ptr noundef nonnull %0, i32 noundef %i.alw, i1 noundef zeroext false, i32 noundef %.0121.i, i32 noundef %.0120.i, i32 noundef %.0133.i, i32 noundef %.1132.i, i32 noundef %i.aro, i32 noundef %spec.store.select.i), !inline_history !19 ; 2 uses
  %i.arq = trunc nuw nsw i32 %i.arp to i8
  %i.arr = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %i.arq, ptr %i.arr, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.art = load i8, ptr %i.ars, align 1
  %i.aru = zext i8 %i.art to i32
  %i.arv = xor i32 %i.arp, -1
  %i.arw = and i32 %i.aru, %i.arv
  %.not142.i = icmp eq i32 %i.arw, 0
  br i1 %.not142.i, label %bb.lx, label %.thread241.sink.split

bb.lx:                                            ; preds = %bb.lw, %bb.lq
  %i.arx = load i32, ptr %i.f, align 8
  %i.ary = shl i32 %spec.store.select.i, 1
  %i.arz = and i32 %i.ary, 6
  %i.asa = and i32 %i.arx, -8
  %i.asb = and i32 %spec.store.select.i, -3
  %i.asc = icmp eq i32 %i.asb, 0
  %i.asd = zext i1 %i.asc to i32
  %i.ase = or disjoint i32 %i.arz, %i.asd
  %i.asf = or disjoint i32 %i.ase, %i.asa
  store i32 %i.asf, ptr %i.f, align 8
  %i.asg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.1127.i, ptr %i.asg, align 8
  br label %get_phys_addr_twostage.exit

.thread241.sink.split:                            ; preds = %bb.lw, %bb.lt, %bb.lm, %bb.le, %bb.lc, %bb.ld, %bb.kv, %bb.kq
  %.sink472 = phi i32 [ 1, %bb.lt ], [ 6, %bb.lm ], [ 4, %bb.le ], [ 6, %bb.lc ], [ 6, %bb.kv ], [ 6, %bb.kq ], [ 6, %bb.ld ], [ 5, %bb.lw ]
  %.1129.i.ph = phi i32 [ %.0128.i, %bb.lt ], [ %i.aoh, %bb.lm ], [ %.0128.i, %bb.le ], [ %i.aob, %bb.lc ], [ 0, %bb.kv ], [ 0, %bb.kq ], [ 0, %bb.ld ], [ %.0128.i, %bb.lw ]
  %.1.i150.ph = phi i32 [ %.0123.i, %bb.lt ], [ 2, %bb.lm ], [ %.0123.i, %bb.le ], [ 1, %bb.lc ], [ 1, %bb.kv ], [ 1, %bb.kq ], [ 1, %bb.ld ], [ %.0123.i, %bb.lw ]
  store i32 %.sink472, ptr %6, align 8
  br label %.thread241

.thread241:                                       ; preds = %.thread241.sink.split, %bb.ll, %bb.lk, %bb.lb, %bb.la
  %.1129.i = phi i32 [ 0, %bb.lb ], [ %i.aoh, %bb.ll ], [ 0, %bb.la ], [ %i.aoh, %bb.lk ], [ %.1129.i.ph, %.thread241.sink.split ]
  %.1.i150 = phi i32 [ 1, %bb.lb ], [ 2, %bb.ll ], [ 1, %bb.la ], [ 2, %bb.lk ], [ %.1.i150.ph, %.thread241.sink.split ]
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.1129.i, ptr %i.ash, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %.1.i150, ptr %i.asi, align 4
  br label %get_phys_addr_twostage.exit

bb.ly:                                            ; preds = %bb.kl
  %i.asj = trunc i64 %.0111 to i32
  %i.ask = tail call fastcc zeroext i1 @get_phys_addr_v5(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.asj, ptr noundef %5, ptr noundef %6)
  br label %get_phys_addr_twostage.exit

get_phys_addr_twostage.exit:                      ; preds = %.thread241, %bb.lx, %fault_s1ns.exit, %split, %bb.z, %bb.w, %ptw_idx_for_stage_2.exit164, %regime_translation_disabled.exit.thread217, %get_phys_addr_pmsav7.exit, %bb.ds, %bb.ly, %bb.du, %bb.b
  %.0110 = phi i1 [ %.0.in, %get_phys_addr_pmsav7.exit ], [ %i.qd, %bb.du ], [ true, %bb.w ], [ false, %fault_s1ns.exit ], [ %i.ask, %bb.ly ], [ %i.r, %bb.b ], [ %.0.in, %bb.ds ], [ false, %ptw_idx_for_stage_2.exit164 ], [ false, %regime_translation_disabled.exit.thread217 ], [ true, %bb.z ], [ true, %split ], [ false, %.thread241 ], [ true, %bb.lx ]
  ret i1 %.0110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @get_phys_addr(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ARMGranuleProtectionConfig, align 8 ; 9 uses
  %8 = alloca %struct.S1Translate, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 %4, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.b = tail call fastcc i32 @arm_mmu_idx_to_security_space(ptr noundef nonnull %0, i32 noundef %4)
  store i32 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 19
  %i.d = shl nuw i32 1, %2
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %i.c, align 1
  %i.f = call fastcc zeroext i1 @get_phys_addr_nogpc(ptr noundef nonnull %0, ptr noundef nonnull %8, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #13, !inline_history !13
  br i1 %i.f, label %bb.b, label %get_phys_addr_gpc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 65536
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %get_phys_addr_gpc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16496
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i64 %i.h, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.m = load <2 x i64>, ptr %i.l, align 8
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.n, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 79872
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 15
  store i8 %i.s, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.u = getelementptr i8, ptr %0, i64 79768
  %.val.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val.i, 1030792151040
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.t, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.y, i8 0, i64 6, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = call ptr @cpu_get_address_space(ptr noundef nonnull %i.j, i32 noundef 1) #12, !inline_history !13
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = lshr i32 %i.ae, 1
  %i.ag = and i32 %i.af, 3
  %i.ah = load i32, ptr %i.a, align 8
  %i.ai = call zeroext i1 @arm_granule_protection_check(ptr noundef nonnull byval(%struct.ARMGranuleProtectionConfig) align 8 %7, i64 noundef %i.ac, i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull %6), !inline_history !13 ; 2 uses
  br i1 %i.ai, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 23, ptr %6, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %get_phys_addr_gpc.exit

get_phys_addr_gpc.exit:                           ; preds = %bb.a, %bb.b, %.sink.split.i
  %.1.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret i1 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @arm_mmu_idx_to_security_space(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.i [
    i32 32, label %bb.b
    i32 33, label %bb.b
    i32 34, label %bb.b
    i32 35, label %bb.b
    i32 36, label %bb.b
    i32 37, label %bb.b
    i32 38, label %bb.b
    i32 39, label %bb.b
    i32 40, label %bb.b
    i32 41, label %bb.b
    i32 64, label %bb.b
    i32 67, label %bb.b
    i32 65, label %bb.b
    i32 66, label %bb.b
    i32 68, label %bb.b
    i32 42, label %bb.b
    i32 43, label %bb.b
    i32 49, label %bb.c
    i32 51, label %bb.j
    i32 131, label %bb.j
    i32 130, label %bb.j
    i32 129, label %bb.j
    i32 128, label %bb.j
    i32 48, label %bb.f
    i32 50, label %bb.f
    i32 135, label %bb.f
    i32 134, label %bb.f
    i32 133, label %bb.f
    i32 132, label %bb.f
    i32 44, label %bb.d
    i32 45, label %bb.d
    i32 46, label %bb.d
    i32 47, label %bb.d
    i32 52, label %bb.g
    i32 53, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #12
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @arm_security_space_below_el3(ptr noundef %0) #12
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1)
  br label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.c, align 16
  %i.d = and i64 %.val, 33554432
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 79768
  %.val8 = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val8, 67553994410557440
  %.not9 = icmp eq i64 %i.f, 0
  br i1 %.not9, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j
end_hunk_0
