inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_opts:bb.a
  %i.alu = lshr i64 %i.all, %i.alr
  %i.alv = add nuw i64 %i.alu, 9
  br label %.thread4163

.thread4163:                                      ; preds = %.critedge992.i565, %.thread4160, %bb.ia
  %.0898.i550 = phi i64 [ %i.alv, %.thread4160 ], [ %i.all, %bb.ia ], [ %i.all, %.critedge992.i565 ] ; 2 uses
  %.0896.i551 = phi i32 [ 60, %.thread4160 ], [ %i.alo, %bb.ia ], [ 11, %.critedge992.i565 ] ; 3 uses
  %.sroa.19.0.in.i552 = phi i32 [ %i.alt, %.thread4160 ], [ %i.alk, %bb.ia ], [ %i.alk, %.critedge992.i565 ]
  %.sroa.025.0.i553 = phi i64 [ %i.als, %.thread4160 ], [ %i.alh, %bb.ia ], [ %i.alh, %.critedge992.i565 ] ; 2 uses
  %i.alw = zext nneg i32 %.0896.i551 to i64       ; 2 uses
  %notmask.i554 = shl nsw i64 -1, %i.alw
  %i.alx = xor i64 %notmask.i554, -1
  %i.aly = and i64 %.sroa.025.0.i553, %i.alx
  %i.alz = shl nuw nsw i64 %i.aly, 3              ; 2 uses
  %i.ama = add nsw i32 %.0896.i551, -1
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = shl nuw nsw i64 8, %i.amb              ; 2 uses
  %i.amd = lshr i64 %.sroa.025.0.i553, %i.alw
  %i.ame = add i64 %i.amc, %.0898.i550
  %i.amf = icmp uge i64 %i.alz, %i.ame            ; 2 uses
  %i.amg = zext i1 %i.amf to i64
  %i.amh = add nuw nsw i64 %i.amd, %i.amg         ; 3 uses
  %i.ami = icmp eq i64 %i.amh, 0
  br i1 %i.ami, label %bb.ik, label %bb.ib, !prof !8

bb.ib:                                            ; preds = %.thread4163
  %i.amj = add nsw i32 %.sroa.19.0.in.i552, %.0896.i551
  %i.amk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.amh, i1 true) ; 2 uses
  %i.aml = trunc nuw nsw i64 %i.amk to i32
  %i.amm = shl i64 %i.amh, %i.amk
  %i.amn = lshr i64 %i.amm, 11                    ; 2 uses
  %i.amo = sub nsw i32 %i.amj, %i.aml             ; 5 uses
  %i.amp = icmp sgt i32 %i.amo, 960
  br i1 %i.amp, label %diy_fp_to_ieee_raw.exit1506, label %bb.ic, !prof !8

bb.ic:                                            ; preds = %bb.ib
  %i.amq = icmp sgt i32 %i.amo, -1086
  br i1 %i.amq, label %bb.id, label %bb.ie, !prof !25

bb.id:                                            ; preds = %bb.ic
  %i.amr = add nsw i32 %i.amo, 1086
  %i.ams = zext nneg i32 %i.amr to i64
  %i.amt = shl nuw nsw i64 %i.ams, 52
  %i.amu = and i64 %i.amn, 4503599627370495
  %i.amv = or disjoint i64 %i.amt, %i.amu
  br label %bb.ik

bb.ie:                                            ; preds = %bb.ic
  %i.amw = icmp samesign ugt i32 %i.amo, -1138
  br i1 %i.amw, label %bb.if, label %bb.ik, !prof !25

bb.if:                                            ; preds = %bb.ie
  %i.amx = sub nuw nsw i32 -1085, %i.amo
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = lshr i64 %i.amn, %i.amy
  br label %bb.ik

diy_fp_to_ieee_raw.exit1506:                      ; preds = %bb.ib
  %i.ana = and i32 %2, 128
  %.not4911 = icmp eq i32 %i.ana, 0
  br i1 %.not4911, label %bb.ih, label %bb.ig, !prof !25

bb.ig:                                            ; preds = %diy_fp_to_ieee_raw.exit1506
  %i.anb = load ptr, ptr %i.l, align 8, !tbaa !92
  store i8 0, ptr %i.anb, align 1, !tbaa !81
  %i.anc = ptrtoint ptr %.33.i537 to i64
  %i.and = ptrtoint ptr %i.gl to i64
  %i.ane = sub i64 %i.anc, %i.and
  %i.anf = shl i64 %i.ane, 8
  %i.ang = or disjoint i64 %i.anf, 1
  store i64 %i.ang, ptr %.5665.i, align 8, !tbaa !79
  %i.anh = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.anh, align 8, !tbaa !81
  store ptr %.33.i537, ptr %i.l, align 8, !tbaa !92
  br label %.split4204

bb.ih:                                            ; preds = %diy_fp_to_ieee_raw.exit1506
  br i1 %.not4873, label %bb.ij, label %bb.ii, !prof !25

bb.ii:                                            ; preds = %bb.ih
  store i64 20, ptr %.5665.i, align 8, !tbaa !79
  %i.ani = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.anj = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.ani, ptr %i.anj, align 8, !tbaa !81
  br label %.split4204

bb.ij:                                            ; preds = %bb.ih
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !92
  br label %.split4204.thread

bb.ik:                                            ; preds = %.thread4163, %bb.id, %bb.if, %bb.ie
  %.0.i1505.ph = phi i64 [ 0, %bb.ie ], [ %i.amz, %bb.if ], [ %i.amv, %bb.id ], [ 0, %.thread4163 ] ; 7 uses
  %i.ank = sub i64 %i.amc, %.0898.i550
  %.not987.i556 = icmp ule i64 %i.alz, %i.ank
  %spec.select.i557 = or i1 %.not987.i556, %i.amf
  br i1 %spec.select.i557, label %bb.il, label %bb.im, !prof !25

bb.il:                                            ; preds = %bb.ik
  store i64 20, ptr %.5665.i, align 8, !tbaa !79
  %i.anl = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.anm = or disjoint i64 %.0.i1505.ph, %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.anm, ptr %i.ann, align 8, !tbaa !81
  br label %.split4204

bb.im:                                            ; preds = %bb.ik
  %.not988.i558 = icmp samesign ult i64 %.0.i1505.ph, 4503599627370496 ; 2 uses
  %i.ano = and i64 %.0.i1505.ph, 4503599627370495
  %i.anp = or disjoint i64 %i.ano, 4503599627370496
  %i.anq = lshr i64 %.0.i1505.ph, 52
  %i.anr = trunc nuw nsw i64 %i.anq to i32
  %i.ans = add nsw i32 %i.anr, -1076
  %.sroa.9.0.i559 = select i1 %.not988.i558, i32 -1075, i32 %i.ans ; 5 uses
  %.sroa.018.0.i560 = select i1 %.not988.i558, i64 %.0.i1505.ph, i64 %i.anp
  %i.ant = shl nuw nsw i64 %.sroa.018.0.i560, 1
  %i.anu = or disjoint i64 %i.ant, 1
  call fastcc void @bigint_set_buf(ptr noundef %7, i64 noundef %.22894.i538, ptr noundef %i.b, ptr noundef %.3863.i541, ptr noundef %.3867.i540, ptr noundef %.23.i539)
  %i.anv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 29 uses
  store i64 %i.anu, ptr %i.anv, align 8, !tbaa !91
  %i.anw = load i32, ptr %i.b, align 4, !tbaa !114 ; 6 uses
  %i.anx = icmp sgt i32 %i.anw, -1
  br i1 %i.anx, label %.preheader5054, label %bb.iu

.preheader5054:                                   ; preds = %bb.im
  %.promoted5894 = load i32, ptr %7, align 8      ; 2 uses
  %i.any = icmp samesign ugt i32 %i.anw, 18
  br i1 %i.any, label %.lr.ph5897, label %._crit_edge5898

.lr.ph5897:                                       ; preds = %.preheader5054
  %i.anz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %bb.in

bb.in:                                            ; preds = %.lr.ph5897, %bigint_mul_u64.exit1694
  %.0.i15165896 = phi i32 [ %i.anw, %.lr.ph5897 ], [ %i.apn, %bigint_mul_u64.exit1694 ] ; 2 uses
  %i.aoa = phi i32 [ %.promoted5894, %.lr.ph5897 ], [ %i.apm, %bigint_mul_u64.exit1694 ] ; 9 uses
  %.not6511 = icmp eq i32 %i.aoa, 0
  br i1 %.not6511, label %._crit_edge5884, label %.lr.ph5883.preheader

.lr.ph5883.preheader:                             ; preds = %bb.in
  %wide.trip.count7057 = zext i32 %i.aoa to i64
  br label %.lr.ph5883

.lr.ph5883:                                       ; preds = %.lr.ph5883.preheader, %bb.io
  %indvars.iv7054 = phi i64 [ 0, %.lr.ph5883.preheader ], [ %indvars.iv.next7055, %bb.io ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv7054
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !91
  %.not.i1693 = icmp eq i64 %i.aoc, 0
  br i1 %.not.i1693, label %bb.io, label %._crit_edge5884.loopexit

bb.io:                                            ; preds = %.lr.ph5883
  %indvars.iv.next7055 = add nuw nsw i64 %indvars.iv7054, 1 ; 2 uses
  %exitcond7058.not = icmp eq i64 %indvars.iv.next7055, %wide.trip.count7057
  br i1 %exitcond7058.not, label %bigint_mul_u64.exit1694, label %.lr.ph5883, !llvm.loop !135

._crit_edge5884.loopexit:                         ; preds = %.lr.ph5883
  %i.aod = trunc nuw i64 %indvars.iv7054 to i32
  br label %._crit_edge5884

._crit_edge5884:                                  ; preds = %._crit_edge5884.loopexit, %bb.in
  %.018.i1689.lcssa = phi i32 [ 0, %bb.in ], [ %i.aod, %._crit_edge5884.loopexit ] ; 2 uses
  %i.aoe = icmp ult i32 %.018.i1689.lcssa, %i.aoa
  br i1 %i.aoe, label %.lr.ph5891.preheader, label %bigint_mul_u64.exit1694

.lr.ph5891.preheader:                             ; preds = %._crit_edge5884
  %i.aof = zext i32 %.018.i1689.lcssa to i64      ; 4 uses
  %wide.trip.count7062 = zext i32 %i.aoa to i64   ; 2 uses
  %i.aog = sub nsw i64 %wide.trip.count7062, %i.aof ; 3 uses
  %xtraiter11048 = and i64 %i.aog, 1
  %i.aoh = add nsw i64 %wide.trip.count7062, -1
  %i.aoi = icmp eq i64 %i.aoh, %i.aof
  br i1 %i.aoi, label %.lr.ph5891.epil.preheader, label %.lr.ph5891.preheader.new

.lr.ph5891.preheader.new:                         ; preds = %.lr.ph5891.preheader
  %unroll_iter11053 = and i64 %i.aog, -2
  br label %.lr.ph5891

.lr.ph5891:                                       ; preds = %.lr.ph5891, %.lr.ph5891.preheader.new
  %indvars.iv7059 = phi i64 [ %i.aof, %.lr.ph5891.preheader.new ], [ %indvars.iv.next7060.1, %.lr.ph5891 ] ; 3 uses
  %.0.i16915889 = phi i64 [ 0, %.lr.ph5891.preheader.new ], [ %i.aoy, %.lr.ph5891 ]
  %niter11054 = phi i64 [ 0, %.lr.ph5891.preheader.new ], [ %niter11054.next.1, %.lr.ph5891 ]
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv7059 ; 2 uses
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !91
  %i.aol = zext i64 %i.aok to i128
  %i.aom = mul nuw i128 %i.aol, 10000000000000000000
  %i.aon = zext i64 %.0.i16915889 to i128
  %i.aoo = add nuw i128 %i.aom, %i.aon            ; 2 uses
  %i.aop = lshr i128 %i.aoo, 64
  %i.aoq = trunc i128 %i.aoo to i64
  store i64 %i.aoq, ptr %i.aoj, align 8, !tbaa !91
  %i.aor = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv7059
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8 ; 2 uses
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !91
  %i.aou = zext i64 %i.aot to i128
  %i.aov = mul nuw i128 %i.aou, 10000000000000000000
  %i.aow = add nuw i128 %i.aov, %i.aop            ; 2 uses
  %i.aox = lshr i128 %i.aow, 64                   ; 2 uses
  %i.aoy = trunc nuw i128 %i.aox to i64           ; 3 uses
  %i.aoz = trunc i128 %i.aow to i64
  store i64 %i.aoz, ptr %i.aos, align 8, !tbaa !91
  %indvars.iv.next7060.1 = add nuw nsw i64 %indvars.iv7059, 2 ; 2 uses
  %niter11054.next.1 = add i64 %niter11054, 2     ; 2 uses
  %niter11054.ncmp.1 = icmp eq i64 %niter11054.next.1, %unroll_iter11053
  br i1 %niter11054.ncmp.1, label %._crit_edge5892.unr-lcssa, label %.lr.ph5891, !llvm.loop !136

._crit_edge5892.unr-lcssa:                        ; preds = %.lr.ph5891
  %lcmp.mod11049.not = icmp eq i64 %xtraiter11048, 0
  br i1 %lcmp.mod11049.not, label %._crit_edge5892, label %.lr.ph5891.epil.preheader

.lr.ph5891.epil.preheader:                        ; preds = %._crit_edge5892.unr-lcssa, %.lr.ph5891.preheader
  %indvars.iv7059.epil.init = phi i64 [ %i.aof, %.lr.ph5891.preheader ], [ %indvars.iv.next7060.1, %._crit_edge5892.unr-lcssa ]
  %.0.i16915889.epil.init = phi i64 [ 0, %.lr.ph5891.preheader ], [ %i.aoy, %._crit_edge5892.unr-lcssa ]
  %lcmp.mod11052 = trunc i64 %i.aog to i1
  call void @llvm.assume(i1 %lcmp.mod11052)
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %indvars.iv7059.epil.init ; 2 uses
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !91
  %i.apc = zext i64 %i.apb to i128
  %i.apd = mul nuw i128 %i.apc, 10000000000000000000
  %i.ape = zext i64 %.0.i16915889.epil.init to i128
  %i.apf = add nuw i128 %i.apd, %i.ape            ; 2 uses
  %i.apg = lshr i128 %i.apf, 64                   ; 2 uses
  %i.aph = trunc nuw i128 %i.apg to i64
  %i.api = trunc i128 %i.apf to i64
  store i64 %i.api, ptr %i.apa, align 8, !tbaa !91
  br label %._crit_edge5892

._crit_edge5892:                                  ; preds = %._crit_edge5892.unr-lcssa, %.lr.ph5891.epil.preheader
  %.lcssa10519 = phi i128 [ %i.aox, %._crit_edge5892.unr-lcssa ], [ %i.apg, %.lr.ph5891.epil.preheader ]
  %.lcssa10518 = phi i64 [ %i.aoy, %._crit_edge5892.unr-lcssa ], [ %i.aph, %.lr.ph5891.epil.preheader ]
  %.not19.i1692 = icmp eq i128 %.lcssa10519, 0
  br i1 %.not19.i1692, label %bigint_mul_u64.exit1694, label %bb.ip

bb.ip:                                            ; preds = %._crit_edge5892
  %i.apj = add i32 %i.aoa, 1
  %i.apk = zext i32 %i.aoa to i64
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %i.apk
  store i64 %.lcssa10518, ptr %i.apl, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1694

bigint_mul_u64.exit1694:                          ; preds = %bb.io, %._crit_edge5884, %._crit_edge5892, %bb.ip
  %i.apm = phi i32 [ %i.aoa, %._crit_edge5892 ], [ %i.apj, %bb.ip ], [ %i.aoa, %._crit_edge5884 ], [ %i.aoa, %bb.io ] ; 2 uses
  %i.apn = add nsw i32 %.0.i15165896, -19         ; 2 uses
  %i.apo = icmp sgt i32 %.0.i15165896, 37
  br i1 %i.apo, label %bb.in, label %._crit_edge5898, !llvm.loop !137

._crit_edge5898:                                  ; preds = %bigint_mul_u64.exit1694, %.preheader5054
  %i.app = phi i32 [ %.promoted5894, %.preheader5054 ], [ %i.apm, %bigint_mul_u64.exit1694 ] ; 7 uses
  %.0.i1516.lcssa = phi i32 [ %i.anw, %.preheader5054 ], [ %i.apn, %bigint_mul_u64.exit1694 ] ; 2 uses
  store i32 %i.app, ptr %7, align 8
  %.not.i1517 = icmp eq i32 %.0.i1516.lcssa, 0
  br i1 %.not.i1517, label %bigint_mul_pow10.exit1518, label %bb.iq

bb.iq:                                            ; preds = %._crit_edge5898
  %i.apq = sext i32 %.0.i1516.lcssa to i64
  %i.apr = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.apq
  %i.aps = load i64, ptr %i.apr, align 8, !tbaa !91
  %i.apt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %.not6512 = icmp eq i32 %i.app, 0
  br i1 %.not6512, label %._crit_edge5904, label %.lr.ph5903.preheader

.lr.ph5903.preheader:                             ; preds = %bb.iq
  %wide.trip.count7067 = zext i32 %i.app to i64
  br label %.lr.ph5903

.lr.ph5903:                                       ; preds = %.lr.ph5903.preheader, %bb.ir
  %indvars.iv7064 = phi i64 [ 0, %.lr.ph5903.preheader ], [ %indvars.iv.next7065, %bb.ir ] ; 3 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %indvars.iv7064
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !91
  %.not.i1699 = icmp eq i64 %i.apv, 0
  br i1 %.not.i1699, label %bb.ir, label %._crit_edge5904.loopexit

bb.ir:                                            ; preds = %.lr.ph5903
  %indvars.iv.next7065 = add nuw nsw i64 %indvars.iv7064, 1 ; 2 uses
  %exitcond7068.not = icmp eq i64 %indvars.iv.next7065, %wide.trip.count7067
  br i1 %exitcond7068.not, label %bigint_mul_pow10.exit1518, label %.lr.ph5903, !llvm.loop !135

._crit_edge5904.loopexit:                         ; preds = %.lr.ph5903
  %i.apw = trunc nuw i64 %indvars.iv7064 to i32
  br label %._crit_edge5904

._crit_edge5904:                                  ; preds = %._crit_edge5904.loopexit, %bb.iq
  %.018.i1695.lcssa = phi i32 [ 0, %bb.iq ], [ %i.apw, %._crit_edge5904.loopexit ] ; 2 uses
  %i.apx = icmp ult i32 %.018.i1695.lcssa, %i.app
  br i1 %i.apx, label %.lr.ph5911, label %bigint_mul_pow10.exit1518

.lr.ph5911:                                       ; preds = %._crit_edge5904
  %i.apy = zext i64 %i.aps to i128                ; 3 uses
  %i.apz = zext i32 %.018.i1695.lcssa to i64      ; 4 uses
  %wide.trip.count7072 = zext i32 %i.app to i64   ; 2 uses
  %i.aqa = sub nsw i64 %wide.trip.count7072, %i.apz ; 3 uses
  %xtraiter11056 = and i64 %i.aqa, 1
  %i.aqb = add nsw i64 %wide.trip.count7072, -1
  %i.aqc = icmp eq i64 %i.aqb, %i.apz
  br i1 %i.aqc, label %.epil.preheader11055, label %.lr.ph5911.new

.lr.ph5911.new:                                   ; preds = %.lr.ph5911
  %unroll_iter11061 = and i64 %i.aqa, -2
  br label %bb.is

bb.is:                                            ; preds = %bb.is, %.lr.ph5911.new
  %indvars.iv7069 = phi i64 [ %i.apz, %.lr.ph5911.new ], [ %indvars.iv.next7070.1, %bb.is ] ; 3 uses
  %.0.i16975909 = phi i64 [ 0, %.lr.ph5911.new ], [ %i.aqs, %bb.is ]
  %niter11062 = phi i64 [ 0, %.lr.ph5911.new ], [ %niter11062.next.1, %bb.is ]
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %indvars.iv7069 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !91
  %i.aqf = zext i64 %i.aqe to i128
  %i.aqg = mul nuw i128 %i.aqf, %i.apy
  %i.aqh = zext i64 %.0.i16975909 to i128
  %i.aqi = add nuw i128 %i.aqg, %i.aqh            ; 2 uses
  %i.aqj = lshr i128 %i.aqi, 64
  %i.aqk = trunc i128 %i.aqi to i64
  store i64 %i.aqk, ptr %i.aqd, align 8, !tbaa !91
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %indvars.iv7069
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 8 ; 2 uses
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !91
  %i.aqo = zext i64 %i.aqn to i128
  %i.aqp = mul nuw i128 %i.aqo, %i.apy
  %i.aqq = add nuw i128 %i.aqp, %i.aqj            ; 2 uses
  %i.aqr = lshr i128 %i.aqq, 64                   ; 2 uses
  %i.aqs = trunc nuw i128 %i.aqr to i64           ; 3 uses
  %i.aqt = trunc i128 %i.aqq to i64
  store i64 %i.aqt, ptr %i.aqm, align 8, !tbaa !91
  %indvars.iv.next7070.1 = add nuw nsw i64 %indvars.iv7069, 2 ; 2 uses
  %niter11062.next.1 = add i64 %niter11062, 2     ; 2 uses
  %niter11062.ncmp.1 = icmp eq i64 %niter11062.next.1, %unroll_iter11061
  br i1 %niter11062.ncmp.1, label %._crit_edge5912.unr-lcssa, label %bb.is, !llvm.loop !136

._crit_edge5912.unr-lcssa:                        ; preds = %bb.is
  %lcmp.mod11057.not = icmp eq i64 %xtraiter11056, 0
  br i1 %lcmp.mod11057.not, label %._crit_edge5912, label %.epil.preheader11055

.epil.preheader11055:                             ; preds = %._crit_edge5912.unr-lcssa, %.lr.ph5911
  %indvars.iv7069.epil.init = phi i64 [ %i.apz, %.lr.ph5911 ], [ %indvars.iv.next7070.1, %._crit_edge5912.unr-lcssa ]
  %.0.i16975909.epil.init = phi i64 [ 0, %.lr.ph5911 ], [ %i.aqs, %._crit_edge5912.unr-lcssa ]
  %lcmp.mod11060 = trunc i64 %i.aqa to i1
  call void @llvm.assume(i1 %lcmp.mod11060)
  %i.aqu = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %indvars.iv7069.epil.init ; 2 uses
  %i.aqv = load i64, ptr %i.aqu, align 8, !tbaa !91
  %i.aqw = zext i64 %i.aqv to i128
  %i.aqx = mul nuw i128 %i.aqw, %i.apy
  %i.aqy = zext i64 %.0.i16975909.epil.init to i128
  %i.aqz = add nuw i128 %i.aqx, %i.aqy            ; 2 uses
  %i.ara = lshr i128 %i.aqz, 64                   ; 2 uses
  %i.arb = trunc nuw i128 %i.ara to i64
  %i.arc = trunc i128 %i.aqz to i64
  store i64 %i.arc, ptr %i.aqu, align 8, !tbaa !91
  br label %._crit_edge5912

._crit_edge5912:                                  ; preds = %._crit_edge5912.unr-lcssa, %.epil.preheader11055
  %.lcssa10515 = phi i128 [ %i.aqr, %._crit_edge5912.unr-lcssa ], [ %i.ara, %.epil.preheader11055 ]
  %.lcssa10514 = phi i64 [ %i.aqs, %._crit_edge5912.unr-lcssa ], [ %i.arb, %.epil.preheader11055 ]
  %.not19.i1698 = icmp eq i128 %.lcssa10515, 0
  br i1 %.not19.i1698, label %bigint_mul_pow10.exit1518, label %bb.it

bb.it:                                            ; preds = %._crit_edge5912
  %i.ard = add i32 %i.app, 1
  store i32 %i.ard, ptr %7, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit1518.sink.split

bb.iu:                                            ; preds = %bb.im
  %i.are = sub nsw i32 0, %i.anw                  ; 2 uses
  %i.arf = icmp samesign ult i32 %i.anw, -18
  br i1 %i.arf, label %.lr.ph5864, label %.thread8169

.thread8169:                                      ; preds = %bb.iu
  store i32 1, ptr %8, align 8
  %i.arg = zext nneg i32 %i.are to i64
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.arg
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !91
  br label %.lr.ph5870.preheader

.lr.ph5864:                                       ; preds = %bb.iu, %bigint_mul_u64.exit1682
  %.0.i15195862 = phi i32 [ %i.asw, %bigint_mul_u64.exit1682 ], [ %i.are, %bb.iu ] ; 2 uses
  %i.arj = phi i32 [ %i.asv, %bigint_mul_u64.exit1682 ], [ 1, %bb.iu ] ; 9 uses
  %.not6509 = icmp eq i32 %i.arj, 0
  br i1 %.not6509, label %._crit_edge5850, label %.lr.ph5849.preheader

.lr.ph5849.preheader:                             ; preds = %.lr.ph5864
  %wide.trip.count7037 = zext i32 %i.arj to i64
  br label %.lr.ph5849

.lr.ph5849:                                       ; preds = %.lr.ph5849.preheader, %bb.iv
  %indvars.iv7034 = phi i64 [ 0, %.lr.ph5849.preheader ], [ %indvars.iv.next7035, %bb.iv ] ; 3 uses
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7034
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !91
  %.not.i1681 = icmp eq i64 %i.arl, 0
  br i1 %.not.i1681, label %bb.iv, label %._crit_edge5850.loopexit

bb.iv:                                            ; preds = %.lr.ph5849
  %indvars.iv.next7035 = add nuw nsw i64 %indvars.iv7034, 1 ; 2 uses
  %exitcond7038.not = icmp eq i64 %indvars.iv.next7035, %wide.trip.count7037
  br i1 %exitcond7038.not, label %bigint_mul_u64.exit1682, label %.lr.ph5849, !llvm.loop !135

._crit_edge5850.loopexit:                         ; preds = %.lr.ph5849
  %i.arm = trunc nuw i64 %indvars.iv7034 to i32
  br label %._crit_edge5850

._crit_edge5850:                                  ; preds = %._crit_edge5850.loopexit, %.lr.ph5864
  %.018.i1677.lcssa = phi i32 [ 0, %.lr.ph5864 ], [ %i.arm, %._crit_edge5850.loopexit ] ; 2 uses
  %i.arn = icmp ult i32 %.018.i1677.lcssa, %i.arj
  br i1 %i.arn, label %.lr.ph5857.preheader, label %bigint_mul_u64.exit1682

.lr.ph5857.preheader:                             ; preds = %._crit_edge5850
  %i.aro = zext i32 %.018.i1677.lcssa to i64      ; 4 uses
  %wide.trip.count7042 = zext i32 %i.arj to i64   ; 2 uses
  %i.arp = sub nsw i64 %wide.trip.count7042, %i.aro ; 3 uses
  %xtraiter11033 = and i64 %i.arp, 1
  %i.arq = add nsw i64 %wide.trip.count7042, -1
  %i.arr = icmp eq i64 %i.arq, %i.aro
  br i1 %i.arr, label %.lr.ph5857.epil.preheader, label %.lr.ph5857.preheader.new

.lr.ph5857.preheader.new:                         ; preds = %.lr.ph5857.preheader
  %unroll_iter11038 = and i64 %i.arp, -2
  br label %.lr.ph5857

.lr.ph5857:                                       ; preds = %.lr.ph5857, %.lr.ph5857.preheader.new
  %indvars.iv7039 = phi i64 [ %i.aro, %.lr.ph5857.preheader.new ], [ %indvars.iv.next7040.1, %.lr.ph5857 ] ; 3 uses
  %.0.i16795855 = phi i64 [ 0, %.lr.ph5857.preheader.new ], [ %i.ash, %.lr.ph5857 ]
  %niter11039 = phi i64 [ 0, %.lr.ph5857.preheader.new ], [ %niter11039.next.1, %.lr.ph5857 ]
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7039 ; 2 uses
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !91
  %i.aru = zext i64 %i.art to i128
  %i.arv = mul nuw i128 %i.aru, 10000000000000000000
  %i.arw = zext i64 %.0.i16795855 to i128
  %i.arx = add nuw i128 %i.arv, %i.arw            ; 2 uses
  %i.ary = lshr i128 %i.arx, 64
  %i.arz = trunc i128 %i.arx to i64
  store i64 %i.arz, ptr %i.ars, align 8, !tbaa !91
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7039
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8 ; 2 uses
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !91
  %i.asd = zext i64 %i.asc to i128
  %i.ase = mul nuw i128 %i.asd, 10000000000000000000
  %i.asf = add nuw i128 %i.ase, %i.ary            ; 2 uses
  %i.asg = lshr i128 %i.asf, 64                   ; 2 uses
  %i.ash = trunc nuw i128 %i.asg to i64           ; 3 uses
  %i.asi = trunc i128 %i.asf to i64
  store i64 %i.asi, ptr %i.asb, align 8, !tbaa !91
  %indvars.iv.next7040.1 = add nuw nsw i64 %indvars.iv7039, 2 ; 2 uses
  %niter11039.next.1 = add i64 %niter11039, 2     ; 2 uses
  %niter11039.ncmp.1 = icmp eq i64 %niter11039.next.1, %unroll_iter11038
  br i1 %niter11039.ncmp.1, label %._crit_edge5858.unr-lcssa, label %.lr.ph5857, !llvm.loop !136

._crit_edge5858.unr-lcssa:                        ; preds = %.lr.ph5857
  %lcmp.mod11034.not = icmp eq i64 %xtraiter11033, 0
  br i1 %lcmp.mod11034.not, label %._crit_edge5858, label %.lr.ph5857.epil.preheader

.lr.ph5857.epil.preheader:                        ; preds = %._crit_edge5858.unr-lcssa, %.lr.ph5857.preheader
  %indvars.iv7039.epil.init = phi i64 [ %i.aro, %.lr.ph5857.preheader ], [ %indvars.iv.next7040.1, %._crit_edge5858.unr-lcssa ]
  %.0.i16795855.epil.init = phi i64 [ 0, %.lr.ph5857.preheader ], [ %i.ash, %._crit_edge5858.unr-lcssa ]
  %lcmp.mod11037 = trunc i64 %i.arp to i1
  call void @llvm.assume(i1 %lcmp.mod11037)
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7039.epil.init ; 2 uses
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !91
  %i.asl = zext i64 %i.ask to i128
  %i.asm = mul nuw i128 %i.asl, 10000000000000000000
  %i.asn = zext i64 %.0.i16795855.epil.init to i128
  %i.aso = add nuw i128 %i.asm, %i.asn            ; 2 uses
  %i.asp = lshr i128 %i.aso, 64                   ; 2 uses
  %i.asq = trunc nuw i128 %i.asp to i64
  %i.asr = trunc i128 %i.aso to i64
  store i64 %i.asr, ptr %i.asj, align 8, !tbaa !91
  br label %._crit_edge5858

._crit_edge5858:                                  ; preds = %._crit_edge5858.unr-lcssa, %.lr.ph5857.epil.preheader
  %.lcssa10528 = phi i128 [ %i.asg, %._crit_edge5858.unr-lcssa ], [ %i.asp, %.lr.ph5857.epil.preheader ]
  %.lcssa10527 = phi i64 [ %i.ash, %._crit_edge5858.unr-lcssa ], [ %i.asq, %.lr.ph5857.epil.preheader ]
  %.not19.i1680 = icmp eq i128 %.lcssa10528, 0
  br i1 %.not19.i1680, label %bigint_mul_u64.exit1682, label %bb.iw

bb.iw:                                            ; preds = %._crit_edge5858
  %i.ass = add i32 %i.arj, 1
  %i.ast = zext i32 %i.arj to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.ast
  store i64 %.lcssa10527, ptr %i.asu, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1682

bigint_mul_u64.exit1682:                          ; preds = %bb.iv, %._crit_edge5850, %._crit_edge5858, %bb.iw
  %i.asv = phi i32 [ %i.arj, %._crit_edge5858 ], [ %i.ass, %bb.iw ], [ %i.arj, %._crit_edge5850 ], [ %i.arj, %bb.iv ] ; 5 uses
  %i.asw = add nsw i32 %.0.i15195862, -19         ; 3 uses
  %i.asx = icmp sgt i32 %.0.i15195862, 37
  br i1 %i.asx, label %.lr.ph5864, label %._crit_edge5865, !llvm.loop !137

._crit_edge5865:                                  ; preds = %bigint_mul_u64.exit1682
  store i32 %i.asv, ptr %8, align 8
  %.not.i1520 = icmp eq i32 %i.asw, 0
  br i1 %.not.i1520, label %bigint_mul_pow10.exit1518, label %bb.ix

bb.ix:                                            ; preds = %._crit_edge5865
  %i.asy = sext i32 %i.asw to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.asy
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !91 ; 2 uses
  %.not6510 = icmp eq i32 %i.asv, 0
  br i1 %.not6510, label %._crit_edge5871, label %.lr.ph5870.preheader

.lr.ph5870.preheader:                             ; preds = %.thread8169, %bb.ix
  %i.atb = phi i64 [ %i.ari, %.thread8169 ], [ %i.ata, %bb.ix ]
  %i.atc = phi i32 [ 1, %.thread8169 ], [ %i.asv, %bb.ix ] ; 3 uses
  %wide.trip.count7047 = zext i32 %i.atc to i64
  br label %.lr.ph5870

.lr.ph5870:                                       ; preds = %.lr.ph5870.preheader, %bb.iy
  %indvars.iv7044 = phi i64 [ 0, %.lr.ph5870.preheader ], [ %indvars.iv.next7045, %bb.iy ] ; 3 uses
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7044
  %i.ate = load i64, ptr %i.atd, align 8, !tbaa !91
  %.not.i1687 = icmp eq i64 %i.ate, 0
  br i1 %.not.i1687, label %bb.iy, label %._crit_edge5871.loopexit

bb.iy:                                            ; preds = %.lr.ph5870
  %indvars.iv.next7045 = add nuw nsw i64 %indvars.iv7044, 1 ; 2 uses
  %exitcond7048.not = icmp eq i64 %indvars.iv.next7045, %wide.trip.count7047
  br i1 %exitcond7048.not, label %bigint_mul_pow10.exit1518, label %.lr.ph5870, !llvm.loop !135

._crit_edge5871.loopexit:                         ; preds = %.lr.ph5870
  %i.atf = trunc nuw i64 %indvars.iv7044 to i32
  br label %._crit_edge5871

._crit_edge5871:                                  ; preds = %._crit_edge5871.loopexit, %bb.ix
  %i.atg = phi i64 [ %i.ata, %bb.ix ], [ %i.atb, %._crit_edge5871.loopexit ]
  %i.ath = phi i32 [ 0, %bb.ix ], [ %i.atc, %._crit_edge5871.loopexit ] ; 6 uses
  %.018.i1683.lcssa = phi i32 [ 0, %bb.ix ], [ %i.atf, %._crit_edge5871.loopexit ] ; 2 uses
  %i.ati = icmp ult i32 %.018.i1683.lcssa, %i.ath
  br i1 %i.ati, label %.lr.ph5878, label %bigint_mul_pow10.exit1518

.lr.ph5878:                                       ; preds = %._crit_edge5871
  %i.atj = zext i64 %i.atg to i128                ; 3 uses
  %i.atk = zext i32 %.018.i1683.lcssa to i64      ; 4 uses
  %wide.trip.count7052 = zext i32 %i.ath to i64   ; 2 uses
  %i.atl = sub nsw i64 %wide.trip.count7052, %i.atk ; 3 uses
  %xtraiter11041 = and i64 %i.atl, 1
  %i.atm = add nsw i64 %wide.trip.count7052, -1
  %i.atn = icmp eq i64 %i.atm, %i.atk
  br i1 %i.atn, label %.epil.preheader11040, label %.lr.ph5878.new

.lr.ph5878.new:                                   ; preds = %.lr.ph5878
  %unroll_iter11046 = and i64 %i.atl, -2
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iz, %.lr.ph5878.new
  %indvars.iv7049 = phi i64 [ %i.atk, %.lr.ph5878.new ], [ %indvars.iv.next7050.1, %bb.iz ] ; 3 uses
  %.0.i16855876 = phi i64 [ 0, %.lr.ph5878.new ], [ %i.aud, %bb.iz ]
  %niter11047 = phi i64 [ 0, %.lr.ph5878.new ], [ %niter11047.next.1, %bb.iz ]
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7049 ; 2 uses
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !91
  %i.atq = zext i64 %i.atp to i128
  %i.atr = mul nuw i128 %i.atq, %i.atj
  %i.ats = zext i64 %.0.i16855876 to i128
  %i.att = add nuw i128 %i.atr, %i.ats            ; 2 uses
  %i.atu = lshr i128 %i.att, 64
  %i.atv = trunc i128 %i.att to i64
  store i64 %i.atv, ptr %i.ato, align 8, !tbaa !91
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7049
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 8 ; 2 uses
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !91
  %i.atz = zext i64 %i.aty to i128
  %i.aua = mul nuw i128 %i.atz, %i.atj
  %i.aub = add nuw i128 %i.aua, %i.atu            ; 2 uses
  %i.auc = lshr i128 %i.aub, 64                   ; 2 uses
  %i.aud = trunc nuw i128 %i.auc to i64           ; 3 uses
  %i.aue = trunc i128 %i.aub to i64
  store i64 %i.aue, ptr %i.atx, align 8, !tbaa !91
  %indvars.iv.next7050.1 = add nuw nsw i64 %indvars.iv7049, 2 ; 2 uses
  %niter11047.next.1 = add i64 %niter11047, 2     ; 2 uses
  %niter11047.ncmp.1 = icmp eq i64 %niter11047.next.1, %unroll_iter11046
  br i1 %niter11047.ncmp.1, label %._crit_edge5879.unr-lcssa, label %bb.iz, !llvm.loop !136

._crit_edge5879.unr-lcssa:                        ; preds = %bb.iz
  %lcmp.mod11042.not = icmp eq i64 %xtraiter11041, 0
  br i1 %lcmp.mod11042.not, label %._crit_edge5879, label %.epil.preheader11040

.epil.preheader11040:                             ; preds = %._crit_edge5879.unr-lcssa, %.lr.ph5878
  %indvars.iv7049.epil.init = phi i64 [ %i.atk, %.lr.ph5878 ], [ %indvars.iv.next7050.1, %._crit_edge5879.unr-lcssa ]
  %.0.i16855876.epil.init = phi i64 [ 0, %.lr.ph5878 ], [ %i.aud, %._crit_edge5879.unr-lcssa ]
  %lcmp.mod11045 = trunc i64 %i.atl to i1
  call void @llvm.assume(i1 %lcmp.mod11045)
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7049.epil.init ; 2 uses
  %i.aug = load i64, ptr %i.auf, align 8, !tbaa !91
  %i.auh = zext i64 %i.aug to i128
  %i.aui = mul nuw i128 %i.auh, %i.atj
  %i.auj = zext i64 %.0.i16855876.epil.init to i128
  %i.auk = add nuw i128 %i.aui, %i.auj            ; 2 uses
  %i.aul = lshr i128 %i.auk, 64                   ; 2 uses
  %i.aum = trunc nuw i128 %i.aul to i64
  %i.aun = trunc i128 %i.auk to i64
  store i64 %i.aun, ptr %i.auf, align 8, !tbaa !91
  br label %._crit_edge5879

._crit_edge5879:                                  ; preds = %._crit_edge5879.unr-lcssa, %.epil.preheader11040
  %.lcssa10523 = phi i128 [ %i.auc, %._crit_edge5879.unr-lcssa ], [ %i.aul, %.epil.preheader11040 ]
  %.lcssa10522 = phi i64 [ %i.aud, %._crit_edge5879.unr-lcssa ], [ %i.aum, %.epil.preheader11040 ]
  %.not19.i1686 = icmp eq i128 %.lcssa10523, 0
  br i1 %.not19.i1686, label %bigint_mul_pow10.exit1518, label %bb.ja

bb.ja:                                            ; preds = %._crit_edge5879
  %i.auo = add i32 %i.ath, 1
  br label %bigint_mul_pow10.exit1518.sink.split

bigint_mul_pow10.exit1518.sink.split:             ; preds = %bb.it, %bb.ja
  %.sink9022 = phi i32 [ %i.ath, %bb.ja ], [ %i.app, %bb.it ]
  %i.aup = phi ptr [ %8, %bb.ja ], [ %7, %bb.it ]
  %.lcssa8684.sink = phi i64 [ %.lcssa10522, %bb.ja ], [ %.lcssa10514, %bb.it ]
  %.ph = phi i32 [ %i.auo, %bb.ja ], [ 1, %bb.it ]
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  %i.aur = zext i32 %.sink9022 to i64
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.auq, i64 %i.aur
  store i64 %.lcssa8684.sink, ptr %i.aus, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1518

bigint_mul_pow10.exit1518:                        ; preds = %bb.iy, %bb.ir, %bigint_mul_pow10.exit1518.sink.split, %._crit_edge5871, %._crit_edge5904, %._crit_edge5865, %._crit_edge5879, %._crit_edge5898, %._crit_edge5912
  %i.aut = phi i32 [ %i.asv, %._crit_edge5865 ], [ %i.ath, %._crit_edge5879 ], [ %i.ath, %._crit_edge5871 ], [ 1, %._crit_edge5898 ], [ 1, %._crit_edge5912 ], [ 1, %bb.ir ], [ %.ph, %bigint_mul_pow10.exit1518.sink.split ], [ 1, %._crit_edge5904 ], [ %i.atc, %bb.iy ] ; 16 uses
  %i.auu = icmp sgt i32 %.sroa.9.0.i559, 0
  br i1 %i.auu, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %bigint_mul_pow10.exit1518
  %i.auv = and i32 %.sroa.9.0.i559, 63            ; 3 uses
  %i.auw = lshr i32 %.sroa.9.0.i559, 6            ; 14 uses
  %i.aux = icmp eq i32 %i.auv, 0
  br i1 %i.aux, label %.preheader5049, label %bb.jc, !prof !8

.preheader5049:                                   ; preds = %bb.jb
  %.not46.i15535940 = icmp eq i32 %i.aut, 0
  br i1 %.not46.i15535940, label %.lr.ph5947.preheader, label %.lr.ph5942

.lr.ph5942:                                       ; preds = %.preheader5049
  %i.auy = add nsw i32 %i.auw, -1                 ; 6 uses
  %i.auz = zext i32 %i.aut to i64                 ; 9 uses
  %min.iters.check10090 = icmp ult i32 %i.aut, 30
  br i1 %min.iters.check10090, label %scalar.ph10089.preheader, label %vector.scevcheck10086

vector.scevcheck10086:                            ; preds = %.lr.ph5942
  %i.ava = add nsw i64 %i.auz, -1                 ; 2 uses
  %i.avb = add i32 %i.aut, %i.auw
  %i.avc = add i32 %i.avb, -1
  %i.avd = trunc i64 %i.ava to i32
  %i.ave = icmp ult i32 %i.avc, %i.avd
  %i.avf = icmp ugt i64 %i.ava, 4294967295
  %i.avg = or i1 %i.ave, %i.avf
  br i1 %i.avg, label %scalar.ph10089.preheader, label %vector.memcheck10087

vector.memcheck10087:                             ; preds = %vector.scevcheck10086
  %i.avh = add i32 %i.aut, %i.auw
  %i.avi = add i32 %i.avh, -1
  %i.avj = zext i32 %i.avi to i64
  %i.avk = sub nsw i64 %i.auz, %i.avj
  %i.avl = shl nsw i64 %i.avk, 3
  %i.avm = add nsw i64 %i.avl, -9
  %diff.check10088 = icmp ult i64 %i.avm, 31
  br i1 %diff.check10088, label %scalar.ph10089.preheader, label %vector.ph10091

vector.ph10091:                                   ; preds = %vector.memcheck10087
  %n.vec10092 = and i64 %i.auz, 4294967292        ; 2 uses
  %i.avn = and i64 %i.auz, 3
  br label %vector.body10093

vector.body10093:                                 ; preds = %vector.body10093, %vector.ph10091
  %index10094 = phi i64 [ 0, %vector.ph10091 ], [ %index.next10097, %vector.body10093 ] ; 2 uses
  %i.avo = sub i64 %i.auz, %index10094            ; 2 uses
  %i.avp = getelementptr [8 x i8], ptr %8, i64 %i.avo ; 2 uses
  %i.avq = getelementptr i8, ptr %i.avp, i64 -8
  %i.avr = getelementptr i8, ptr %i.avp, i64 -24
  %wide.load10095 = load <2 x i64>, ptr %i.avq, align 8, !tbaa !91
  %wide.load10096 = load <2 x i64>, ptr %i.avr, align 8, !tbaa !91
  %i.avs = trunc nuw i64 %i.avo to i32
  %i.avt = add i32 %i.auy, %i.avs
  %i.avu = zext i32 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.avu ; 2 uses
  %i.avw = getelementptr inbounds i8, ptr %i.avv, i64 -8
  %i.avx = getelementptr inbounds i8, ptr %i.avv, i64 -24
  store <2 x i64> %wide.load10095, ptr %i.avw, align 8, !tbaa !91
  store <2 x i64> %wide.load10096, ptr %i.avx, align 8, !tbaa !91
  %index.next10097 = add nuw i64 %index10094, 4   ; 2 uses
  %i.avy = icmp eq i64 %index.next10097, %n.vec10092
  br i1 %i.avy, label %middle.block10098, label %vector.body10093, !llvm.loop !140

middle.block10098:                                ; preds = %vector.body10093
  %cmp.n10099 = icmp eq i64 %n.vec10092, %i.auz
  br i1 %cmp.n10099, label %.lr.ph5947.preheader, label %scalar.ph10089.preheader

scalar.ph10089.preheader:                         ; preds = %vector.memcheck10087, %vector.scevcheck10086, %.lr.ph5942, %middle.block10098
  %indvars.iv7089.ph = phi i64 [ %i.auz, %vector.memcheck10087 ], [ %i.auz, %vector.scevcheck10086 ], [ %i.auz, %.lr.ph5942 ], [ %i.avn, %middle.block10098 ] ; 4 uses
  %i.avz = add nsw i64 %indvars.iv7089.ph, -1
  %xtraiter11072 = and i64 %indvars.iv7089.ph, 3  ; 2 uses
  %lcmp.mod11073.not = icmp eq i64 %xtraiter11072, 0
  br i1 %lcmp.mod11073.not, label %scalar.ph10089.prol.loopexit, label %scalar.ph10089.prol

scalar.ph10089.prol:                              ; preds = %scalar.ph10089.preheader, %scalar.ph10089.prol
  %indvars.iv7089.prol = phi i64 [ %i.awa, %scalar.ph10089.prol ], [ %indvars.iv7089.ph, %scalar.ph10089.preheader ] ; 3 uses
  %prol.iter11074 = phi i64 [ %prol.iter11074.next, %scalar.ph10089.prol ], [ 0, %scalar.ph10089.preheader ]
  %i.awa = add nsw i64 %indvars.iv7089.prol, -1   ; 2 uses
  %i.awb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv7089.prol
  %i.awc = load i64, ptr %i.awb, align 8, !tbaa !91
  %i.awd = trunc nuw i64 %indvars.iv7089.prol to i32
  %i.awe = add i32 %i.auy, %i.awd
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.awf
  store i64 %i.awc, ptr %i.awg, align 8, !tbaa !91
  %prol.iter11074.next = add i64 %prol.iter11074, 1 ; 2 uses
  %prol.iter11074.cmp.not = icmp eq i64 %prol.iter11074.next, %xtraiter11072
  br i1 %prol.iter11074.cmp.not, label %scalar.ph10089.prol.loopexit, label %scalar.ph10089.prol, !llvm.loop !143

scalar.ph10089.prol.loopexit:                     ; preds = %scalar.ph10089.prol, %scalar.ph10089.preheader
  %indvars.iv7089.unr = phi i64 [ %indvars.iv7089.ph, %scalar.ph10089.preheader ], [ %i.awa, %scalar.ph10089.prol ]
  %i.awh = icmp ult i64 %i.avz, 3
  br i1 %i.awh, label %.lr.ph5947.preheader, label %scalar.ph10089

scalar.ph10089:                                   ; preds = %scalar.ph10089.prol.loopexit, %scalar.ph10089
  %indvars.iv7089 = phi i64 [ %i.axd, %scalar.ph10089 ], [ %indvars.iv7089.unr, %scalar.ph10089.prol.loopexit ] ; 6 uses
  %i.awi = add nsw i64 %indvars.iv7089, -1        ; 2 uses
  %i.awj = getelementptr [8 x i8], ptr %8, i64 %indvars.iv7089
  %i.awk = load i64, ptr %i.awj, align 8, !tbaa !91
  %i.awl = trunc nuw i64 %indvars.iv7089 to i32
  %i.awm = add i32 %i.auy, %i.awl
  %i.awn = zext i32 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.awn
  store i64 %i.awk, ptr %i.awo, align 8, !tbaa !91
  %i.awp = add nsw i64 %indvars.iv7089, -2        ; 2 uses
  %i.awq = getelementptr [8 x i8], ptr %8, i64 %i.awi
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !91
  %i.aws = trunc nuw i64 %i.awi to i32
  %i.awt = add i32 %i.auy, %i.aws
  %i.awu = zext i32 %i.awt to i64
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.awu
  store i64 %i.awr, ptr %i.awv, align 8, !tbaa !91
  %i.aww = add nsw i64 %indvars.iv7089, -3        ; 2 uses
  %i.awx = getelementptr [8 x i8], ptr %8, i64 %i.awp
  %i.awy = load i64, ptr %i.awx, align 8, !tbaa !91
  %i.awz = trunc nuw i64 %i.awp to i32
  %i.axa = add i32 %i.auy, %i.awz
  %i.axb = zext i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.axb
  store i64 %i.awy, ptr %i.axc, align 8, !tbaa !91
  %i.axd = add nsw i64 %indvars.iv7089, -4        ; 2 uses
  %i.axe = getelementptr [8 x i8], ptr %8, i64 %i.aww
  %i.axf = load i64, ptr %i.axe, align 8, !tbaa !91
  %i.axg = trunc nuw i64 %i.aww to i32
  %i.axh = add i32 %i.auy, %i.axg
  %i.axi = zext i32 %i.axh to i64
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.axi
  store i64 %i.axf, ptr %i.axj, align 8, !tbaa !91
  %.not46.i1553.wide.3 = icmp eq i64 %i.axd, 0
  br i1 %.not46.i1553.wide.3, label %.lr.ph5947.preheader, label %scalar.ph10089, !llvm.loop !145

.lr.ph5947.preheader:                             ; preds = %scalar.ph10089.prol.loopexit, %scalar.ph10089, %middle.block10098, %.preheader5049
  %i.axk = add i32 %i.aut, %i.auw                 ; 2 uses
  store i32 %i.axk, ptr %8, align 8, !tbaa !138
  %i.axl = add nsw i32 %i.auw, -1
  %i.axm = zext i32 %i.axl to i64
  %i.axn = shl nuw nsw i64 %i.axm, 3
  %i.axo = add nuw nsw i64 %i.axn, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.anv, i8 0, i64 %i.axo, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1556

bb.jc:                                            ; preds = %bb.jb
  %i.axp = zext i32 %i.aut to i64                 ; 10 uses
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.axp
  store i64 0, ptr %i.axq, align 8, !tbaa !91
  %.not.i15495931 = icmp eq i32 %i.aut, 0
  %.pre7698 = zext nneg i32 %i.auv to i64         ; 5 uses
  br i1 %.not.i15495931, label %._crit_edge5935, label %.lr.ph5934

.lr.ph5934:                                       ; preds = %bb.jc
  %i.axr = sub nuw nsw i32 64, %i.auv
  %i.axs = zext nneg i32 %i.axr to i64            ; 4 uses
end_hunk_0
begin_hunk_1_@yyjson_read_opts:bb.a
  %i.flg = lshr i64 %i.fkx, %i.fld
  %i.flh = add nuw i64 %i.flg, 9
  br label %.thread4310

.thread4310:                                      ; preds = %.critedge992.i696, %.thread4307, %bb.afg
  %.0898.i681 = phi i64 [ %i.flh, %.thread4307 ], [ %i.fkx, %bb.afg ], [ %i.fkx, %.critedge992.i696 ] ; 2 uses
  %.0896.i682 = phi i32 [ 60, %.thread4307 ], [ %i.fla, %bb.afg ], [ 11, %.critedge992.i696 ] ; 3 uses
  %.sroa.19.0.in.i683 = phi i32 [ %i.flf, %.thread4307 ], [ %i.fkw, %bb.afg ], [ %i.fkw, %.critedge992.i696 ]
  %.sroa.025.0.i684 = phi i64 [ %i.fle, %.thread4307 ], [ %i.fkt, %bb.afg ], [ %i.fkt, %.critedge992.i696 ] ; 2 uses
  %i.fli = zext nneg i32 %.0896.i682 to i64       ; 2 uses
  %notmask.i685 = shl nsw i64 -1, %i.fli
  %i.flj = xor i64 %notmask.i685, -1
  %i.flk = and i64 %.sroa.025.0.i684, %i.flj
  %i.fll = shl nuw nsw i64 %i.flk, 3              ; 2 uses
  %i.flm = add nsw i32 %.0896.i682, -1
  %i.fln = zext nneg i32 %i.flm to i64
  %i.flo = shl nuw nsw i64 8, %i.fln              ; 2 uses
  %i.flp = lshr i64 %.sroa.025.0.i684, %i.fli
  %i.flq = add i64 %i.flo, %.0898.i681
  %i.flr = icmp uge i64 %i.fll, %i.flq            ; 2 uses
  %i.fls = zext i1 %i.flr to i64
  %i.flt = add nuw nsw i64 %i.flp, %i.fls         ; 3 uses
  %i.flu = icmp eq i64 %i.flt, 0
  br i1 %i.flu, label %bb.afq, label %bb.afh, !prof !8

bb.afh:                                           ; preds = %.thread4310
  %i.flv = add nsw i32 %.sroa.19.0.in.i683, %.0896.i682
  %i.flw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.flt, i1 true) ; 2 uses
  %i.flx = trunc nuw nsw i64 %i.flw to i32
  %i.fly = shl i64 %i.flt, %i.flw
  %i.flz = lshr i64 %i.fly, 11                    ; 2 uses
  %i.fma = sub nsw i32 %i.flv, %i.flx             ; 5 uses
  %i.fmb = icmp sgt i32 %i.fma, 960
  br i1 %i.fmb, label %diy_fp_to_ieee_raw.exit, label %bb.afi, !prof !8

bb.afi:                                           ; preds = %bb.afh
  %i.fmc = icmp sgt i32 %i.fma, -1086
  br i1 %i.fmc, label %bb.afj, label %bb.afk, !prof !25

bb.afj:                                           ; preds = %bb.afi
  %i.fmd = add nsw i32 %i.fma, 1086
  %i.fme = zext nneg i32 %i.fmd to i64
  %i.fmf = shl nuw nsw i64 %i.fme, 52
  %i.fmg = and i64 %i.flz, 4503599627370495
  %i.fmh = or disjoint i64 %i.fmf, %i.fmg
  br label %bb.afq

bb.afk:                                           ; preds = %bb.afi
  %i.fmi = icmp samesign ugt i32 %i.fma, -1138
  br i1 %i.fmi, label %bb.afl, label %bb.afq, !prof !25

bb.afl:                                           ; preds = %bb.afk
  %i.fmj = sub nuw nsw i32 -1085, %i.fma
  %i.fmk = zext nneg i32 %i.fmj to i64
  %i.fml = lshr i64 %i.flz, %i.fmk
  br label %bb.afq

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.afh
  %i.fmm = and i32 %2, 128
  %.not4843 = icmp eq i32 %i.fmm, 0
  br i1 %.not4843, label %bb.afn, label %bb.afm, !prof !25

bb.afm:                                           ; preds = %diy_fp_to_ieee_raw.exit
  %i.fmn = load ptr, ptr %i.l, align 8, !tbaa !92
  store i8 0, ptr %i.fmn, align 1, !tbaa !81
  %i.fmo = ptrtoint ptr %.33.i668 to i64
  %i.fmp = ptrtoint ptr %i.efl to i64
  %i.fmq = sub i64 %i.fmo, %i.fmp
  %i.fmr = shl i64 %i.fmq, 8
  %i.fms = or disjoint i64 %i.fmr, 1
  store i64 %i.fms, ptr %i.efq, align 8, !tbaa !79
  %i.fmt = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.efl, ptr %i.fmt, align 8, !tbaa !81
  store ptr %.33.i668, ptr %i.l, align 8, !tbaa !92
  br label %.split4352

bb.afn:                                           ; preds = %diy_fp_to_ieee_raw.exit
  br i1 %.not4805, label %bb.afp, label %bb.afo, !prof !25

bb.afo:                                           ; preds = %bb.afn
  store i64 20, ptr %i.efq, align 8, !tbaa !79
  %i.fmu = select i1 %i.efu, i64 -4503599627370496, i64 9218868437227405312
  %i.fmv = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fmu, ptr %i.fmv, align 8, !tbaa !81
  br label %.split4352

bb.afp:                                           ; preds = %bb.afn
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !92
  br label %.split4352.thread

bb.afq:                                           ; preds = %.thread4310, %bb.afj, %bb.afl, %bb.afk
  %.0.i1504.ph = phi i64 [ 0, %bb.afk ], [ %i.fml, %bb.afl ], [ %i.fmh, %bb.afj ], [ 0, %.thread4310 ] ; 7 uses
  %i.fmw = sub i64 %i.flo, %.0898.i681
  %.not987.i687 = icmp ule i64 %i.fll, %i.fmw
  %spec.select.i688 = or i1 %.not987.i687, %i.flr
  br i1 %spec.select.i688, label %bb.afr, label %bb.afs, !prof !25

bb.afr:                                           ; preds = %bb.afq
  store i64 20, ptr %i.efq, align 8, !tbaa !79
  %i.fmx = select i1 %i.efu, i64 -9223372036854775808, i64 0
  %i.fmy = or disjoint i64 %.0.i1504.ph, %i.fmx
  %i.fmz = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fmy, ptr %i.fmz, align 8, !tbaa !81
  br label %.split4352

bb.afs:                                           ; preds = %bb.afq
  %.not988.i689 = icmp samesign ult i64 %.0.i1504.ph, 4503599627370496 ; 2 uses
  %i.fna = and i64 %.0.i1504.ph, 4503599627370495
  %i.fnb = or disjoint i64 %i.fna, 4503599627370496
  %i.fnc = lshr i64 %.0.i1504.ph, 52
  %i.fnd = trunc nuw nsw i64 %i.fnc to i32
  %i.fne = add nsw i32 %i.fnd, -1076
  %.sroa.9.0.i690 = select i1 %.not988.i689, i32 -1075, i32 %i.fne ; 5 uses
  %.sroa.018.0.i691 = select i1 %.not988.i689, i64 %.0.i1504.ph, i64 %i.fnb
  %i.fnf = shl nuw nsw i64 %.sroa.018.0.i691, 1
  %i.fng = or disjoint i64 %i.fnf, 1
  call fastcc void @bigint_set_buf(ptr noundef %5, i64 noundef %.22894.i669, ptr noundef %i.a, ptr noundef %.3863.i672, ptr noundef %.3867.i671, ptr noundef %.23.i670)
  %i.fnh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.fng, ptr %i.fnh, align 8, !tbaa !91
  %i.fni = load i32, ptr %i.a, align 4, !tbaa !114 ; 6 uses
  %i.fnj = icmp sgt i32 %i.fni, -1
  br i1 %i.fnj, label %.preheader5092, label %bb.aga

.preheader5092:                                   ; preds = %bb.afs
  %.promoted5668 = load i32, ptr %5, align 8      ; 2 uses
  %i.fnk = icmp samesign ugt i32 %i.fni, 18
  br i1 %i.fnk, label %.lr.ph5671, label %._crit_edge5672

.lr.ph5671:                                       ; preds = %.preheader5092
  %i.fnl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.aft

bb.aft:                                           ; preds = %.lr.ph5671, %bigint_mul_u64.exit1718
  %.0.i15115670 = phi i32 [ %i.fni, %.lr.ph5671 ], [ %i.foz, %bigint_mul_u64.exit1718 ] ; 2 uses
  %i.fnm = phi i32 [ %.promoted5668, %.lr.ph5671 ], [ %i.foy, %bigint_mul_u64.exit1718 ] ; 9 uses
  %.not6503 = icmp eq i32 %i.fnm, 0
  br i1 %.not6503, label %._crit_edge5658, label %.lr.ph5657.preheader

.lr.ph5657.preheader:                             ; preds = %bb.aft
  %wide.trip.count6996 = zext i32 %i.fnm to i64
  br label %.lr.ph5657

.lr.ph5657:                                       ; preds = %.lr.ph5657.preheader, %bb.afu
  %indvars.iv6993 = phi i64 [ 0, %.lr.ph5657.preheader ], [ %indvars.iv.next6994, %bb.afu ] ; 3 uses
  %i.fnn = getelementptr inbounds nuw [8 x i8], ptr %i.fnl, i64 %indvars.iv6993
  %i.fno = load i64, ptr %i.fnn, align 8, !tbaa !91
  %.not.i1717 = icmp eq i64 %i.fno, 0
  br i1 %.not.i1717, label %bb.afu, label %._crit_edge5658.loopexit

bb.afu:                                           ; preds = %.lr.ph5657
  %indvars.iv.next6994 = add nuw nsw i64 %indvars.iv6993, 1 ; 2 uses
  %exitcond6997.not = icmp eq i64 %indvars.iv.next6994, %wide.trip.count6996
  br i1 %exitcond6997.not, label %bigint_mul_u64.exit1718, label %.lr.ph5657, !llvm.loop !135

._crit_edge5658.loopexit:                         ; preds = %.lr.ph5657
  %i.fnp = trunc nuw i64 %indvars.iv6993 to i32
  br label %._crit_edge5658

._crit_edge5658:                                  ; preds = %._crit_edge5658.loopexit, %bb.aft
  %.018.i1713.lcssa = phi i32 [ 0, %bb.aft ], [ %i.fnp, %._crit_edge5658.loopexit ] ; 2 uses
  %i.fnq = icmp ult i32 %.018.i1713.lcssa, %i.fnm
  br i1 %i.fnq, label %.lr.ph5665.preheader, label %bigint_mul_u64.exit1718

.lr.ph5665.preheader:                             ; preds = %._crit_edge5658
  %i.fnr = zext i32 %.018.i1713.lcssa to i64      ; 4 uses
  %wide.trip.count7001 = zext i32 %i.fnm to i64   ; 2 uses
  %i.fns = sub nsw i64 %wide.trip.count7001, %i.fnr ; 3 uses
  %xtraiter11008 = and i64 %i.fns, 1
  %i.fnt = add nsw i64 %wide.trip.count7001, -1
  %i.fnu = icmp eq i64 %i.fnt, %i.fnr
  br i1 %i.fnu, label %.lr.ph5665.epil.preheader, label %.lr.ph5665.preheader.new

.lr.ph5665.preheader.new:                         ; preds = %.lr.ph5665.preheader
  %unroll_iter11013 = and i64 %i.fns, -2
  br label %.lr.ph5665

.lr.ph5665:                                       ; preds = %.lr.ph5665, %.lr.ph5665.preheader.new
  %indvars.iv6998 = phi i64 [ %i.fnr, %.lr.ph5665.preheader.new ], [ %indvars.iv.next6999.1, %.lr.ph5665 ] ; 3 uses
  %.0.i17155663 = phi i64 [ 0, %.lr.ph5665.preheader.new ], [ %i.fok, %.lr.ph5665 ]
  %niter11014 = phi i64 [ 0, %.lr.ph5665.preheader.new ], [ %niter11014.next.1, %.lr.ph5665 ]
  %i.fnv = getelementptr inbounds nuw [8 x i8], ptr %i.fnl, i64 %indvars.iv6998 ; 2 uses
  %i.fnw = load i64, ptr %i.fnv, align 8, !tbaa !91
  %i.fnx = zext i64 %i.fnw to i128
  %i.fny = mul nuw i128 %i.fnx, 10000000000000000000
  %i.fnz = zext i64 %.0.i17155663 to i128
  %i.foa = add nuw i128 %i.fny, %i.fnz            ; 2 uses
  %i.fob = lshr i128 %i.foa, 64
  %i.foc = trunc i128 %i.foa to i64
  store i64 %i.foc, ptr %i.fnv, align 8, !tbaa !91
  %i.fod = getelementptr inbounds nuw [8 x i8], ptr %i.fnl, i64 %indvars.iv6998
  %i.foe = getelementptr inbounds nuw i8, ptr %i.fod, i64 8 ; 2 uses
  %i.fof = load i64, ptr %i.foe, align 8, !tbaa !91
  %i.fog = zext i64 %i.fof to i128
  %i.foh = mul nuw i128 %i.fog, 10000000000000000000
  %i.foi = add nuw i128 %i.foh, %i.fob            ; 2 uses
  %i.foj = lshr i128 %i.foi, 64                   ; 2 uses
  %i.fok = trunc nuw i128 %i.foj to i64           ; 3 uses
  %i.fol = trunc i128 %i.foi to i64
  store i64 %i.fol, ptr %i.foe, align 8, !tbaa !91
  %indvars.iv.next6999.1 = add nuw nsw i64 %indvars.iv6998, 2 ; 2 uses
  %niter11014.next.1 = add i64 %niter11014, 2     ; 2 uses
  %niter11014.ncmp.1 = icmp eq i64 %niter11014.next.1, %unroll_iter11013
  br i1 %niter11014.ncmp.1, label %._crit_edge5666.unr-lcssa, label %.lr.ph5665, !llvm.loop !136

._crit_edge5666.unr-lcssa:                        ; preds = %.lr.ph5665
  %lcmp.mod11009.not = icmp eq i64 %xtraiter11008, 0
  br i1 %lcmp.mod11009.not, label %._crit_edge5666, label %.lr.ph5665.epil.preheader

.lr.ph5665.epil.preheader:                        ; preds = %._crit_edge5666.unr-lcssa, %.lr.ph5665.preheader
  %indvars.iv6998.epil.init = phi i64 [ %i.fnr, %.lr.ph5665.preheader ], [ %indvars.iv.next6999.1, %._crit_edge5666.unr-lcssa ]
  %.0.i17155663.epil.init = phi i64 [ 0, %.lr.ph5665.preheader ], [ %i.fok, %._crit_edge5666.unr-lcssa ]
  %lcmp.mod11012 = trunc i64 %i.fns to i1
  call void @llvm.assume(i1 %lcmp.mod11012)
  %i.fom = getelementptr inbounds nuw [8 x i8], ptr %i.fnl, i64 %indvars.iv6998.epil.init ; 2 uses
  %i.fon = load i64, ptr %i.fom, align 8, !tbaa !91
  %i.foo = zext i64 %i.fon to i128
  %i.fop = mul nuw i128 %i.foo, 10000000000000000000
  %i.foq = zext i64 %.0.i17155663.epil.init to i128
  %i.for = add nuw i128 %i.fop, %i.foq            ; 2 uses
  %i.fos = lshr i128 %i.for, 64                   ; 2 uses
  %i.fot = trunc nuw i128 %i.fos to i64
  %i.fou = trunc i128 %i.for to i64
  store i64 %i.fou, ptr %i.fom, align 8, !tbaa !91
  br label %._crit_edge5666

._crit_edge5666:                                  ; preds = %._crit_edge5666.unr-lcssa, %.lr.ph5665.epil.preheader
  %.lcssa10752 = phi i128 [ %i.foj, %._crit_edge5666.unr-lcssa ], [ %i.fos, %.lr.ph5665.epil.preheader ]
  %.lcssa10751 = phi i64 [ %i.fok, %._crit_edge5666.unr-lcssa ], [ %i.fot, %.lr.ph5665.epil.preheader ]
  %.not19.i1716 = icmp eq i128 %.lcssa10752, 0
  br i1 %.not19.i1716, label %bigint_mul_u64.exit1718, label %bb.afv

bb.afv:                                           ; preds = %._crit_edge5666
  %i.fov = add i32 %i.fnm, 1
  %i.fow = zext i32 %i.fnm to i64
  %i.fox = getelementptr inbounds nuw [8 x i8], ptr %i.fnl, i64 %i.fow
  store i64 %.lcssa10751, ptr %i.fox, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1718

bigint_mul_u64.exit1718:                          ; preds = %bb.afu, %._crit_edge5658, %._crit_edge5666, %bb.afv
  %i.foy = phi i32 [ %i.fnm, %._crit_edge5666 ], [ %i.fov, %bb.afv ], [ %i.fnm, %._crit_edge5658 ], [ %i.fnm, %bb.afu ] ; 2 uses
  %i.foz = add nsw i32 %.0.i15115670, -19         ; 2 uses
  %i.fpa = icmp sgt i32 %.0.i15115670, 37
  br i1 %i.fpa, label %bb.aft, label %._crit_edge5672, !llvm.loop !137

._crit_edge5672:                                  ; preds = %bigint_mul_u64.exit1718, %.preheader5092
  %i.fpb = phi i32 [ %.promoted5668, %.preheader5092 ], [ %i.foy, %bigint_mul_u64.exit1718 ] ; 7 uses
  %.0.i1511.lcssa = phi i32 [ %i.fni, %.preheader5092 ], [ %i.foz, %bigint_mul_u64.exit1718 ] ; 2 uses
  store i32 %i.fpb, ptr %5, align 8
  %.not.i1512 = icmp eq i32 %.0.i1511.lcssa, 0
  br i1 %.not.i1512, label %bigint_mul_pow10.exit, label %bb.afw

bb.afw:                                           ; preds = %._crit_edge5672
  %i.fpc = sext i32 %.0.i1511.lcssa to i64
  %i.fpd = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.fpc
  %i.fpe = load i64, ptr %i.fpd, align 8, !tbaa !91
  %i.fpf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not6504 = icmp eq i32 %i.fpb, 0
  br i1 %.not6504, label %._crit_edge5678, label %.lr.ph5677.preheader

.lr.ph5677.preheader:                             ; preds = %bb.afw
  %wide.trip.count7006 = zext i32 %i.fpb to i64
  br label %.lr.ph5677

.lr.ph5677:                                       ; preds = %.lr.ph5677.preheader, %bb.afx
  %indvars.iv7003 = phi i64 [ 0, %.lr.ph5677.preheader ], [ %indvars.iv.next7004, %bb.afx ] ; 3 uses
  %i.fpg = getelementptr inbounds nuw [8 x i8], ptr %i.fpf, i64 %indvars.iv7003
  %i.fph = load i64, ptr %i.fpg, align 8, !tbaa !91
  %.not.i1723 = icmp eq i64 %i.fph, 0
  br i1 %.not.i1723, label %bb.afx, label %._crit_edge5678.loopexit

bb.afx:                                           ; preds = %.lr.ph5677
  %indvars.iv.next7004 = add nuw nsw i64 %indvars.iv7003, 1 ; 2 uses
  %exitcond7007.not = icmp eq i64 %indvars.iv.next7004, %wide.trip.count7006
  br i1 %exitcond7007.not, label %bigint_mul_pow10.exit, label %.lr.ph5677, !llvm.loop !135

._crit_edge5678.loopexit:                         ; preds = %.lr.ph5677
  %i.fpi = trunc nuw i64 %indvars.iv7003 to i32
  br label %._crit_edge5678

._crit_edge5678:                                  ; preds = %._crit_edge5678.loopexit, %bb.afw
  %.018.i1719.lcssa = phi i32 [ 0, %bb.afw ], [ %i.fpi, %._crit_edge5678.loopexit ] ; 2 uses
  %i.fpj = icmp ult i32 %.018.i1719.lcssa, %i.fpb
  br i1 %i.fpj, label %.lr.ph5685, label %bigint_mul_pow10.exit

.lr.ph5685:                                       ; preds = %._crit_edge5678
  %i.fpk = zext i64 %i.fpe to i128                ; 3 uses
  %i.fpl = zext i32 %.018.i1719.lcssa to i64      ; 4 uses
  %wide.trip.count7011 = zext i32 %i.fpb to i64   ; 2 uses
  %i.fpm = sub nsw i64 %wide.trip.count7011, %i.fpl ; 3 uses
  %xtraiter11016 = and i64 %i.fpm, 1
  %i.fpn = add nsw i64 %wide.trip.count7011, -1
  %i.fpo = icmp eq i64 %i.fpn, %i.fpl
  br i1 %i.fpo, label %.epil.preheader11015, label %.lr.ph5685.new

.lr.ph5685.new:                                   ; preds = %.lr.ph5685
  %unroll_iter11021 = and i64 %i.fpm, -2
  br label %bb.afy

bb.afy:                                           ; preds = %bb.afy, %.lr.ph5685.new
  %indvars.iv7008 = phi i64 [ %i.fpl, %.lr.ph5685.new ], [ %indvars.iv.next7009.1, %bb.afy ] ; 3 uses
  %.0.i17215683 = phi i64 [ 0, %.lr.ph5685.new ], [ %i.fqe, %bb.afy ]
  %niter11022 = phi i64 [ 0, %.lr.ph5685.new ], [ %niter11022.next.1, %bb.afy ]
  %i.fpp = getelementptr inbounds nuw [8 x i8], ptr %i.fpf, i64 %indvars.iv7008 ; 2 uses
  %i.fpq = load i64, ptr %i.fpp, align 8, !tbaa !91
  %i.fpr = zext i64 %i.fpq to i128
  %i.fps = mul nuw i128 %i.fpr, %i.fpk
  %i.fpt = zext i64 %.0.i17215683 to i128
  %i.fpu = add nuw i128 %i.fps, %i.fpt            ; 2 uses
  %i.fpv = lshr i128 %i.fpu, 64
  %i.fpw = trunc i128 %i.fpu to i64
  store i64 %i.fpw, ptr %i.fpp, align 8, !tbaa !91
  %i.fpx = getelementptr inbounds nuw [8 x i8], ptr %i.fpf, i64 %indvars.iv7008
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpx, i64 8 ; 2 uses
  %i.fpz = load i64, ptr %i.fpy, align 8, !tbaa !91
  %i.fqa = zext i64 %i.fpz to i128
  %i.fqb = mul nuw i128 %i.fqa, %i.fpk
  %i.fqc = add nuw i128 %i.fqb, %i.fpv            ; 2 uses
  %i.fqd = lshr i128 %i.fqc, 64                   ; 2 uses
  %i.fqe = trunc nuw i128 %i.fqd to i64           ; 3 uses
  %i.fqf = trunc i128 %i.fqc to i64
  store i64 %i.fqf, ptr %i.fpy, align 8, !tbaa !91
  %indvars.iv.next7009.1 = add nuw nsw i64 %indvars.iv7008, 2 ; 2 uses
  %niter11022.next.1 = add i64 %niter11022, 2     ; 2 uses
  %niter11022.ncmp.1 = icmp eq i64 %niter11022.next.1, %unroll_iter11021
  br i1 %niter11022.ncmp.1, label %._crit_edge5686.unr-lcssa, label %bb.afy, !llvm.loop !136

._crit_edge5686.unr-lcssa:                        ; preds = %bb.afy
  %lcmp.mod11017.not = icmp eq i64 %xtraiter11016, 0
  br i1 %lcmp.mod11017.not, label %._crit_edge5686, label %.epil.preheader11015

.epil.preheader11015:                             ; preds = %._crit_edge5686.unr-lcssa, %.lr.ph5685
  %indvars.iv7008.epil.init = phi i64 [ %i.fpl, %.lr.ph5685 ], [ %indvars.iv.next7009.1, %._crit_edge5686.unr-lcssa ]
  %.0.i17215683.epil.init = phi i64 [ 0, %.lr.ph5685 ], [ %i.fqe, %._crit_edge5686.unr-lcssa ]
  %lcmp.mod11020 = trunc i64 %i.fpm to i1
  call void @llvm.assume(i1 %lcmp.mod11020)
  %i.fqg = getelementptr inbounds nuw [8 x i8], ptr %i.fpf, i64 %indvars.iv7008.epil.init ; 2 uses
  %i.fqh = load i64, ptr %i.fqg, align 8, !tbaa !91
  %i.fqi = zext i64 %i.fqh to i128
  %i.fqj = mul nuw i128 %i.fqi, %i.fpk
  %i.fqk = zext i64 %.0.i17215683.epil.init to i128
  %i.fql = add nuw i128 %i.fqj, %i.fqk            ; 2 uses
  %i.fqm = lshr i128 %i.fql, 64                   ; 2 uses
  %i.fqn = trunc nuw i128 %i.fqm to i64
  %i.fqo = trunc i128 %i.fql to i64
  store i64 %i.fqo, ptr %i.fqg, align 8, !tbaa !91
  br label %._crit_edge5686

._crit_edge5686:                                  ; preds = %._crit_edge5686.unr-lcssa, %.epil.preheader11015
  %.lcssa10748 = phi i128 [ %i.fqd, %._crit_edge5686.unr-lcssa ], [ %i.fqm, %.epil.preheader11015 ]
  %.lcssa10747 = phi i64 [ %i.fqe, %._crit_edge5686.unr-lcssa ], [ %i.fqn, %.epil.preheader11015 ]
  %.not19.i1722 = icmp eq i128 %.lcssa10748, 0
  br i1 %.not19.i1722, label %bigint_mul_pow10.exit, label %bb.afz

bb.afz:                                           ; preds = %._crit_edge5686
  %i.fqp = add i32 %i.fpb, 1
  store i32 %i.fqp, ptr %5, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit.sink.split

bb.aga:                                           ; preds = %bb.afs
  %i.fqq = sub nsw i32 0, %i.fni                  ; 2 uses
  %i.fqr = icmp samesign ult i32 %i.fni, -18
  br i1 %i.fqr, label %.lr.ph5638, label %.thread8244

.thread8244:                                      ; preds = %bb.aga
  store i32 1, ptr %6, align 8
  %i.fqs = zext nneg i32 %i.fqq to i64
  %i.fqt = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.fqs
  %i.fqu = load i64, ptr %i.fqt, align 8, !tbaa !91
  br label %.lr.ph5644.preheader

.lr.ph5638:                                       ; preds = %bb.aga, %bigint_mul_u64.exit1706
  %.0.i15135636 = phi i32 [ %i.fsi, %bigint_mul_u64.exit1706 ], [ %i.fqq, %bb.aga ] ; 2 uses
  %i.fqv = phi i32 [ %i.fsh, %bigint_mul_u64.exit1706 ], [ 1, %bb.aga ] ; 9 uses
  %.not6501 = icmp eq i32 %i.fqv, 0
  br i1 %.not6501, label %._crit_edge5624, label %.lr.ph5623.preheader

.lr.ph5623.preheader:                             ; preds = %.lr.ph5638
  %wide.trip.count = zext i32 %i.fqv to i64
  br label %.lr.ph5623

.lr.ph5623:                                       ; preds = %.lr.ph5623.preheader, %bb.agb
  %indvars.iv = phi i64 [ 0, %.lr.ph5623.preheader ], [ %indvars.iv.next, %bb.agb ] ; 3 uses
  %i.fqw = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv
  %i.fqx = load i64, ptr %i.fqw, align 8, !tbaa !91
  %.not.i1705 = icmp eq i64 %i.fqx, 0
  br i1 %.not.i1705, label %bb.agb, label %._crit_edge5624.loopexit

bb.agb:                                           ; preds = %.lr.ph5623
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit1706, label %.lr.ph5623, !llvm.loop !135

._crit_edge5624.loopexit:                         ; preds = %.lr.ph5623
  %i.fqy = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge5624

._crit_edge5624:                                  ; preds = %._crit_edge5624.loopexit, %.lr.ph5638
  %.018.i1701.lcssa = phi i32 [ 0, %.lr.ph5638 ], [ %i.fqy, %._crit_edge5624.loopexit ] ; 2 uses
  %i.fqz = icmp ult i32 %.018.i1701.lcssa, %i.fqv
  br i1 %i.fqz, label %.lr.ph5631.preheader, label %bigint_mul_u64.exit1706

.lr.ph5631.preheader:                             ; preds = %._crit_edge5624
  %i.fra = zext i32 %.018.i1701.lcssa to i64      ; 4 uses
  %wide.trip.count6981 = zext i32 %i.fqv to i64   ; 2 uses
  %i.frb = sub nsw i64 %wide.trip.count6981, %i.fra ; 3 uses
  %xtraiter = and i64 %i.frb, 1
  %i.frc = add nsw i64 %wide.trip.count6981, -1
  %i.frd = icmp eq i64 %i.frc, %i.fra
  br i1 %i.frd, label %.lr.ph5631.epil.preheader, label %.lr.ph5631.preheader.new

.lr.ph5631.preheader.new:                         ; preds = %.lr.ph5631.preheader
  %unroll_iter = and i64 %i.frb, -2
  br label %.lr.ph5631

.lr.ph5631:                                       ; preds = %.lr.ph5631, %.lr.ph5631.preheader.new
  %indvars.iv6978 = phi i64 [ %i.fra, %.lr.ph5631.preheader.new ], [ %indvars.iv.next6979.1, %.lr.ph5631 ] ; 3 uses
  %.0.i17035629 = phi i64 [ 0, %.lr.ph5631.preheader.new ], [ %i.frt, %.lr.ph5631 ]
  %niter = phi i64 [ 0, %.lr.ph5631.preheader.new ], [ %niter.next.1, %.lr.ph5631 ]
  %i.fre = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6978 ; 2 uses
  %i.frf = load i64, ptr %i.fre, align 8, !tbaa !91
  %i.frg = zext i64 %i.frf to i128
  %i.frh = mul nuw i128 %i.frg, 10000000000000000000
  %i.fri = zext i64 %.0.i17035629 to i128
  %i.frj = add nuw i128 %i.frh, %i.fri            ; 2 uses
  %i.frk = lshr i128 %i.frj, 64
  %i.frl = trunc i128 %i.frj to i64
  store i64 %i.frl, ptr %i.fre, align 8, !tbaa !91
  %i.frm = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6978
  %i.frn = getelementptr inbounds nuw i8, ptr %i.frm, i64 8 ; 2 uses
  %i.fro = load i64, ptr %i.frn, align 8, !tbaa !91
  %i.frp = zext i64 %i.fro to i128
  %i.frq = mul nuw i128 %i.frp, 10000000000000000000
  %i.frr = add nuw i128 %i.frq, %i.frk            ; 2 uses
  %i.frs = lshr i128 %i.frr, 64                   ; 2 uses
  %i.frt = trunc nuw i128 %i.frs to i64           ; 3 uses
  %i.fru = trunc i128 %i.frr to i64
  store i64 %i.fru, ptr %i.frn, align 8, !tbaa !91
  %indvars.iv.next6979.1 = add nuw nsw i64 %indvars.iv6978, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge5632.unr-lcssa, label %.lr.ph5631, !llvm.loop !136

._crit_edge5632.unr-lcssa:                        ; preds = %.lr.ph5631
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge5632, label %.lr.ph5631.epil.preheader

.lr.ph5631.epil.preheader:                        ; preds = %._crit_edge5632.unr-lcssa, %.lr.ph5631.preheader
  %indvars.iv6978.epil.init = phi i64 [ %i.fra, %.lr.ph5631.preheader ], [ %indvars.iv.next6979.1, %._crit_edge5632.unr-lcssa ]
  %.0.i17035629.epil.init = phi i64 [ 0, %.lr.ph5631.preheader ], [ %i.frt, %._crit_edge5632.unr-lcssa ]
  %lcmp.mod11000 = trunc i64 %i.frb to i1
  call void @llvm.assume(i1 %lcmp.mod11000)
  %i.frv = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6978.epil.init ; 2 uses
  %i.frw = load i64, ptr %i.frv, align 8, !tbaa !91
  %i.frx = zext i64 %i.frw to i128
  %i.fry = mul nuw i128 %i.frx, 10000000000000000000
  %i.frz = zext i64 %.0.i17035629.epil.init to i128
  %i.fsa = add nuw i128 %i.fry, %i.frz            ; 2 uses
  %i.fsb = lshr i128 %i.fsa, 64                   ; 2 uses
  %i.fsc = trunc nuw i128 %i.fsb to i64
  %i.fsd = trunc i128 %i.fsa to i64
  store i64 %i.fsd, ptr %i.frv, align 8, !tbaa !91
  br label %._crit_edge5632

._crit_edge5632:                                  ; preds = %._crit_edge5632.unr-lcssa, %.lr.ph5631.epil.preheader
  %.lcssa10761 = phi i128 [ %i.frs, %._crit_edge5632.unr-lcssa ], [ %i.fsb, %.lr.ph5631.epil.preheader ]
  %.lcssa10760 = phi i64 [ %i.frt, %._crit_edge5632.unr-lcssa ], [ %i.fsc, %.lr.ph5631.epil.preheader ]
  %.not19.i1704 = icmp eq i128 %.lcssa10761, 0
  br i1 %.not19.i1704, label %bigint_mul_u64.exit1706, label %bb.agc

bb.agc:                                           ; preds = %._crit_edge5632
  %i.fse = add i32 %i.fqv, 1
  %i.fsf = zext i32 %i.fqv to i64
  %i.fsg = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fsf
  store i64 %.lcssa10760, ptr %i.fsg, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1706

bigint_mul_u64.exit1706:                          ; preds = %bb.agb, %._crit_edge5624, %._crit_edge5632, %bb.agc
  %i.fsh = phi i32 [ %i.fqv, %._crit_edge5632 ], [ %i.fse, %bb.agc ], [ %i.fqv, %._crit_edge5624 ], [ %i.fqv, %bb.agb ] ; 5 uses
  %i.fsi = add nsw i32 %.0.i15135636, -19         ; 3 uses
  %i.fsj = icmp sgt i32 %.0.i15135636, 37
  br i1 %i.fsj, label %.lr.ph5638, label %._crit_edge5639, !llvm.loop !137

._crit_edge5639:                                  ; preds = %bigint_mul_u64.exit1706
  store i32 %i.fsh, ptr %6, align 8
  %.not.i1514 = icmp eq i32 %i.fsi, 0
  br i1 %.not.i1514, label %bigint_mul_pow10.exit, label %bb.agd

bb.agd:                                           ; preds = %._crit_edge5639
  %i.fsk = sext i32 %i.fsi to i64
  %i.fsl = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.fsk
  %i.fsm = load i64, ptr %i.fsl, align 8, !tbaa !91 ; 2 uses
  %.not6502 = icmp eq i32 %i.fsh, 0
  br i1 %.not6502, label %._crit_edge5645, label %.lr.ph5644.preheader

.lr.ph5644.preheader:                             ; preds = %.thread8244, %bb.agd
  %i.fsn = phi i64 [ %i.fqu, %.thread8244 ], [ %i.fsm, %bb.agd ]
  %i.fso = phi i32 [ 1, %.thread8244 ], [ %i.fsh, %bb.agd ] ; 3 uses
  %wide.trip.count6986 = zext i32 %i.fso to i64
  br label %.lr.ph5644

.lr.ph5644:                                       ; preds = %.lr.ph5644.preheader, %bb.age
  %indvars.iv6983 = phi i64 [ 0, %.lr.ph5644.preheader ], [ %indvars.iv.next6984, %bb.age ] ; 3 uses
  %i.fsp = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6983
  %i.fsq = load i64, ptr %i.fsp, align 8, !tbaa !91
  %.not.i1711 = icmp eq i64 %i.fsq, 0
  br i1 %.not.i1711, label %bb.age, label %._crit_edge5645.loopexit

bb.age:                                           ; preds = %.lr.ph5644
  %indvars.iv.next6984 = add nuw nsw i64 %indvars.iv6983, 1 ; 2 uses
  %exitcond6987.not = icmp eq i64 %indvars.iv.next6984, %wide.trip.count6986
  br i1 %exitcond6987.not, label %bigint_mul_pow10.exit, label %.lr.ph5644, !llvm.loop !135

._crit_edge5645.loopexit:                         ; preds = %.lr.ph5644
  %i.fsr = trunc nuw i64 %indvars.iv6983 to i32
  br label %._crit_edge5645

._crit_edge5645:                                  ; preds = %._crit_edge5645.loopexit, %bb.agd
  %i.fss = phi i64 [ %i.fsm, %bb.agd ], [ %i.fsn, %._crit_edge5645.loopexit ]
  %i.fst = phi i32 [ 0, %bb.agd ], [ %i.fso, %._crit_edge5645.loopexit ] ; 6 uses
  %.018.i1707.lcssa = phi i32 [ 0, %bb.agd ], [ %i.fsr, %._crit_edge5645.loopexit ] ; 2 uses
  %i.fsu = icmp ult i32 %.018.i1707.lcssa, %i.fst
  br i1 %i.fsu, label %.lr.ph5652, label %bigint_mul_pow10.exit

.lr.ph5652:                                       ; preds = %._crit_edge5645
  %i.fsv = zext i64 %i.fss to i128                ; 3 uses
  %i.fsw = zext i32 %.018.i1707.lcssa to i64      ; 4 uses
  %wide.trip.count6991 = zext i32 %i.fst to i64   ; 2 uses
  %i.fsx = sub nsw i64 %wide.trip.count6991, %i.fsw ; 3 uses
  %xtraiter11001 = and i64 %i.fsx, 1
  %i.fsy = add nsw i64 %wide.trip.count6991, -1
  %i.fsz = icmp eq i64 %i.fsy, %i.fsw
  br i1 %i.fsz, label %.epil.preheader, label %.lr.ph5652.new

.lr.ph5652.new:                                   ; preds = %.lr.ph5652
  %unroll_iter11006 = and i64 %i.fsx, -2
  br label %bb.agf

bb.agf:                                           ; preds = %bb.agf, %.lr.ph5652.new
  %indvars.iv6988 = phi i64 [ %i.fsw, %.lr.ph5652.new ], [ %indvars.iv.next6989.1, %bb.agf ] ; 3 uses
  %.0.i17095650 = phi i64 [ 0, %.lr.ph5652.new ], [ %i.ftp, %bb.agf ]
  %niter11007 = phi i64 [ 0, %.lr.ph5652.new ], [ %niter11007.next.1, %bb.agf ]
  %i.fta = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6988 ; 2 uses
  %i.ftb = load i64, ptr %i.fta, align 8, !tbaa !91
  %i.ftc = zext i64 %i.ftb to i128
  %i.ftd = mul nuw i128 %i.ftc, %i.fsv
  %i.fte = zext i64 %.0.i17095650 to i128
  %i.ftf = add nuw i128 %i.ftd, %i.fte            ; 2 uses
  %i.ftg = lshr i128 %i.ftf, 64
  %i.fth = trunc i128 %i.ftf to i64
  store i64 %i.fth, ptr %i.fta, align 8, !tbaa !91
  %i.fti = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6988
  %i.ftj = getelementptr inbounds nuw i8, ptr %i.fti, i64 8 ; 2 uses
  %i.ftk = load i64, ptr %i.ftj, align 8, !tbaa !91
  %i.ftl = zext i64 %i.ftk to i128
  %i.ftm = mul nuw i128 %i.ftl, %i.fsv
  %i.ftn = add nuw i128 %i.ftm, %i.ftg            ; 2 uses
  %i.fto = lshr i128 %i.ftn, 64                   ; 2 uses
  %i.ftp = trunc nuw i128 %i.fto to i64           ; 3 uses
  %i.ftq = trunc i128 %i.ftn to i64
  store i64 %i.ftq, ptr %i.ftj, align 8, !tbaa !91
  %indvars.iv.next6989.1 = add nuw nsw i64 %indvars.iv6988, 2 ; 2 uses
  %niter11007.next.1 = add i64 %niter11007, 2     ; 2 uses
  %niter11007.ncmp.1 = icmp eq i64 %niter11007.next.1, %unroll_iter11006
  br i1 %niter11007.ncmp.1, label %._crit_edge5653.unr-lcssa, label %bb.agf, !llvm.loop !136

._crit_edge5653.unr-lcssa:                        ; preds = %bb.agf
  %lcmp.mod11002.not = icmp eq i64 %xtraiter11001, 0
  br i1 %lcmp.mod11002.not, label %._crit_edge5653, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge5653.unr-lcssa, %.lr.ph5652
  %indvars.iv6988.epil.init = phi i64 [ %i.fsw, %.lr.ph5652 ], [ %indvars.iv.next6989.1, %._crit_edge5653.unr-lcssa ]
  %.0.i17095650.epil.init = phi i64 [ 0, %.lr.ph5652 ], [ %i.ftp, %._crit_edge5653.unr-lcssa ]
  %lcmp.mod11005 = trunc i64 %i.fsx to i1
  call void @llvm.assume(i1 %lcmp.mod11005)
  %i.ftr = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %indvars.iv6988.epil.init ; 2 uses
  %i.fts = load i64, ptr %i.ftr, align 8, !tbaa !91
  %i.ftt = zext i64 %i.fts to i128
  %i.ftu = mul nuw i128 %i.ftt, %i.fsv
  %i.ftv = zext i64 %.0.i17095650.epil.init to i128
  %i.ftw = add nuw i128 %i.ftu, %i.ftv            ; 2 uses
  %i.ftx = lshr i128 %i.ftw, 64                   ; 2 uses
  %i.fty = trunc nuw i128 %i.ftx to i64
  %i.ftz = trunc i128 %i.ftw to i64
  store i64 %i.ftz, ptr %i.ftr, align 8, !tbaa !91
  br label %._crit_edge5653

._crit_edge5653:                                  ; preds = %._crit_edge5653.unr-lcssa, %.epil.preheader
  %.lcssa10756 = phi i128 [ %i.fto, %._crit_edge5653.unr-lcssa ], [ %i.ftx, %.epil.preheader ]
  %.lcssa10755 = phi i64 [ %i.ftp, %._crit_edge5653.unr-lcssa ], [ %i.fty, %.epil.preheader ]
  %.not19.i1710 = icmp eq i128 %.lcssa10756, 0
  br i1 %.not19.i1710, label %bigint_mul_pow10.exit, label %bb.agg

bb.agg:                                           ; preds = %._crit_edge5653
  %i.fua = add i32 %i.fst, 1
  br label %bigint_mul_pow10.exit.sink.split

bigint_mul_pow10.exit.sink.split:                 ; preds = %bb.afz, %bb.agg
  %.sink9056 = phi i32 [ %i.fst, %bb.agg ], [ %i.fpb, %bb.afz ]
  %i.fub = phi ptr [ %6, %bb.agg ], [ %5, %bb.afz ]
  %.lcssa8787.sink = phi i64 [ %.lcssa10755, %bb.agg ], [ %.lcssa10747, %bb.afz ]
  %.ph9052 = phi i32 [ %i.fua, %bb.agg ], [ 1, %bb.afz ]
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.fub, i64 8
  %i.fud = zext i32 %.sink9056 to i64
  %i.fue = getelementptr inbounds nuw [8 x i8], ptr %i.fuc, i64 %i.fud
  store i64 %.lcssa8787.sink, ptr %i.fue, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit

bigint_mul_pow10.exit:                            ; preds = %bb.age, %bb.afx, %bigint_mul_pow10.exit.sink.split, %._crit_edge5645, %._crit_edge5678, %._crit_edge5639, %._crit_edge5653, %._crit_edge5672, %._crit_edge5686
  %i.fuf = phi i32 [ %i.fsh, %._crit_edge5639 ], [ %i.fst, %._crit_edge5653 ], [ %i.fst, %._crit_edge5645 ], [ 1, %._crit_edge5672 ], [ 1, %._crit_edge5686 ], [ 1, %bb.afx ], [ %.ph9052, %bigint_mul_pow10.exit.sink.split ], [ 1, %._crit_edge5678 ], [ %i.fso, %bb.age ] ; 16 uses
  %i.fug = icmp sgt i32 %.sroa.9.0.i690, 0
  br i1 %i.fug, label %bb.agh, label %bb.agj

bb.agh:                                           ; preds = %bigint_mul_pow10.exit
  %i.fuh = and i32 %.sroa.9.0.i690, 63            ; 3 uses
  %i.fui = lshr i32 %.sroa.9.0.i690, 6            ; 14 uses
  %i.fuj = icmp eq i32 %i.fuh, 0
  br i1 %i.fuj, label %.preheader5087, label %bb.agi, !prof !8

.preheader5087:                                   ; preds = %bb.agh
  %.not46.i5714 = icmp eq i32 %i.fuf, 0
  br i1 %.not46.i5714, label %.lr.ph5721.preheader, label %.lr.ph5716

.lr.ph5716:                                       ; preds = %.preheader5087
  %i.fuk = add nsw i32 %i.fui, -1                 ; 6 uses
  %i.ful = zext i32 %i.fuf to i64                 ; 9 uses
  %min.iters.check10014 = icmp ult i32 %i.fuf, 30
  br i1 %min.iters.check10014, label %scalar.ph10013.preheader, label %vector.scevcheck10010

vector.scevcheck10010:                            ; preds = %.lr.ph5716
  %i.fum = add nsw i64 %i.ful, -1                 ; 2 uses
  %i.fun = add i32 %i.fuf, %i.fui
  %i.fuo = add i32 %i.fun, -1
  %i.fup = trunc i64 %i.fum to i32
  %i.fuq = icmp ult i32 %i.fuo, %i.fup
  %i.fur = icmp ugt i64 %i.fum, 4294967295
  %i.fus = or i1 %i.fuq, %i.fur
  br i1 %i.fus, label %scalar.ph10013.preheader, label %vector.memcheck10011

vector.memcheck10011:                             ; preds = %vector.scevcheck10010
  %i.fut = add i32 %i.fuf, %i.fui
  %i.fuu = add i32 %i.fut, -1
  %i.fuv = zext i32 %i.fuu to i64
  %i.fuw = sub nsw i64 %i.ful, %i.fuv
  %i.fux = shl nsw i64 %i.fuw, 3
  %i.fuy = add nsw i64 %i.fux, -9
  %diff.check10012 = icmp ult i64 %i.fuy, 31
  br i1 %diff.check10012, label %scalar.ph10013.preheader, label %vector.ph10015

vector.ph10015:                                   ; preds = %vector.memcheck10011
  %n.vec10016 = and i64 %i.ful, 4294967292        ; 2 uses
  %i.fuz = and i64 %i.ful, 3
  br label %vector.body10017

vector.body10017:                                 ; preds = %vector.body10017, %vector.ph10015
  %index10018 = phi i64 [ 0, %vector.ph10015 ], [ %index.next10021, %vector.body10017 ] ; 2 uses
  %i.fva = sub i64 %i.ful, %index10018            ; 2 uses
  %i.fvb = getelementptr [8 x i8], ptr %6, i64 %i.fva ; 2 uses
  %i.fvc = getelementptr i8, ptr %i.fvb, i64 -8
  %i.fvd = getelementptr i8, ptr %i.fvb, i64 -24
  %wide.load10019 = load <2 x i64>, ptr %i.fvc, align 8, !tbaa !91
  %wide.load10020 = load <2 x i64>, ptr %i.fvd, align 8, !tbaa !91
  %i.fve = trunc nuw i64 %i.fva to i32
  %i.fvf = add i32 %i.fuk, %i.fve
  %i.fvg = zext i32 %i.fvf to i64
  %i.fvh = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fvg ; 2 uses
  %i.fvi = getelementptr inbounds i8, ptr %i.fvh, i64 -8
  %i.fvj = getelementptr inbounds i8, ptr %i.fvh, i64 -24
  store <2 x i64> %wide.load10019, ptr %i.fvi, align 8, !tbaa !91
  store <2 x i64> %wide.load10020, ptr %i.fvj, align 8, !tbaa !91
  %index.next10021 = add nuw i64 %index10018, 4   ; 2 uses
  %i.fvk = icmp eq i64 %index.next10021, %n.vec10016
  br i1 %i.fvk, label %middle.block10022, label %vector.body10017, !llvm.loop !175

middle.block10022:                                ; preds = %vector.body10017
  %cmp.n10023 = icmp eq i64 %n.vec10016, %i.ful
  br i1 %cmp.n10023, label %.lr.ph5721.preheader, label %scalar.ph10013.preheader

scalar.ph10013.preheader:                         ; preds = %vector.memcheck10011, %vector.scevcheck10010, %.lr.ph5716, %middle.block10022
  %indvars.iv7028.ph = phi i64 [ %i.ful, %vector.memcheck10011 ], [ %i.ful, %vector.scevcheck10010 ], [ %i.ful, %.lr.ph5716 ], [ %i.fuz, %middle.block10022 ] ; 4 uses
  %i.fvl = add nsw i64 %indvars.iv7028.ph, -1
  %xtraiter11030 = and i64 %indvars.iv7028.ph, 3  ; 2 uses
  %lcmp.mod11031.not = icmp eq i64 %xtraiter11030, 0
  br i1 %lcmp.mod11031.not, label %scalar.ph10013.prol.loopexit, label %scalar.ph10013.prol

scalar.ph10013.prol:                              ; preds = %scalar.ph10013.preheader, %scalar.ph10013.prol
  %indvars.iv7028.prol = phi i64 [ %i.fvm, %scalar.ph10013.prol ], [ %indvars.iv7028.ph, %scalar.ph10013.preheader ] ; 3 uses
  %prol.iter11032 = phi i64 [ %prol.iter11032.next, %scalar.ph10013.prol ], [ 0, %scalar.ph10013.preheader ]
  %i.fvm = add nsw i64 %indvars.iv7028.prol, -1   ; 2 uses
  %i.fvn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7028.prol
  %i.fvo = load i64, ptr %i.fvn, align 8, !tbaa !91
  %i.fvp = trunc nuw i64 %indvars.iv7028.prol to i32
  %i.fvq = add i32 %i.fuk, %i.fvp
  %i.fvr = zext i32 %i.fvq to i64
  %i.fvs = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fvr
  store i64 %i.fvo, ptr %i.fvs, align 8, !tbaa !91
  %prol.iter11032.next = add i64 %prol.iter11032, 1 ; 2 uses
  %prol.iter11032.cmp.not = icmp eq i64 %prol.iter11032.next, %xtraiter11030
  br i1 %prol.iter11032.cmp.not, label %scalar.ph10013.prol.loopexit, label %scalar.ph10013.prol, !llvm.loop !176

scalar.ph10013.prol.loopexit:                     ; preds = %scalar.ph10013.prol, %scalar.ph10013.preheader
  %indvars.iv7028.unr = phi i64 [ %indvars.iv7028.ph, %scalar.ph10013.preheader ], [ %i.fvm, %scalar.ph10013.prol ]
  %i.fvt = icmp ult i64 %i.fvl, 3
  br i1 %i.fvt, label %.lr.ph5721.preheader, label %scalar.ph10013

scalar.ph10013:                                   ; preds = %scalar.ph10013.prol.loopexit, %scalar.ph10013
  %indvars.iv7028 = phi i64 [ %i.fwp, %scalar.ph10013 ], [ %indvars.iv7028.unr, %scalar.ph10013.prol.loopexit ] ; 6 uses
  %i.fvu = add nsw i64 %indvars.iv7028, -1        ; 2 uses
  %i.fvv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7028
  %i.fvw = load i64, ptr %i.fvv, align 8, !tbaa !91
  %i.fvx = trunc nuw i64 %indvars.iv7028 to i32
  %i.fvy = add i32 %i.fuk, %i.fvx
  %i.fvz = zext i32 %i.fvy to i64
  %i.fwa = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fvz
  store i64 %i.fvw, ptr %i.fwa, align 8, !tbaa !91
  %i.fwb = add nsw i64 %indvars.iv7028, -2        ; 2 uses
  %i.fwc = getelementptr [8 x i8], ptr %6, i64 %i.fvu
  %i.fwd = load i64, ptr %i.fwc, align 8, !tbaa !91
  %i.fwe = trunc nuw i64 %i.fvu to i32
  %i.fwf = add i32 %i.fuk, %i.fwe
  %i.fwg = zext i32 %i.fwf to i64
  %i.fwh = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fwg
  store i64 %i.fwd, ptr %i.fwh, align 8, !tbaa !91
  %i.fwi = add nsw i64 %indvars.iv7028, -3        ; 2 uses
  %i.fwj = getelementptr [8 x i8], ptr %6, i64 %i.fwb
  %i.fwk = load i64, ptr %i.fwj, align 8, !tbaa !91
  %i.fwl = trunc nuw i64 %i.fwb to i32
  %i.fwm = add i32 %i.fuk, %i.fwl
  %i.fwn = zext i32 %i.fwm to i64
  %i.fwo = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fwn
  store i64 %i.fwk, ptr %i.fwo, align 8, !tbaa !91
  %i.fwp = add nsw i64 %indvars.iv7028, -4        ; 2 uses
  %i.fwq = getelementptr [8 x i8], ptr %6, i64 %i.fwi
  %i.fwr = load i64, ptr %i.fwq, align 8, !tbaa !91
  %i.fws = trunc nuw i64 %i.fwi to i32
  %i.fwt = add i32 %i.fuk, %i.fws
  %i.fwu = zext i32 %i.fwt to i64
  %i.fwv = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fwu
  store i64 %i.fwr, ptr %i.fwv, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.fwp, 0
  br i1 %.not46.i.wide.3, label %.lr.ph5721.preheader, label %scalar.ph10013, !llvm.loop !177

.lr.ph5721.preheader:                             ; preds = %scalar.ph10013.prol.loopexit, %scalar.ph10013, %middle.block10022, %.preheader5087
  %i.fww = add i32 %i.fuf, %i.fui                 ; 2 uses
  store i32 %i.fww, ptr %6, align 8, !tbaa !138
  %i.fwx = add nsw i32 %i.fui, -1
  %i.fwy = zext i32 %i.fwx to i64
  %i.fwz = shl nuw nsw i64 %i.fwy, 3
  %i.fxa = add nuw nsw i64 %i.fwz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fnh, i8 0, i64 %i.fxa, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bb.agi:                                           ; preds = %bb.agh
  %i.fxb = zext i32 %i.fuf to i64                 ; 10 uses
  %i.fxc = getelementptr inbounds nuw [8 x i8], ptr %i.fnh, i64 %i.fxb
  store i64 0, ptr %i.fxc, align 8, !tbaa !91
  %.not.i15355705 = icmp eq i32 %i.fuf, 0
  %.pre7720 = zext nneg i32 %i.fuh to i64         ; 5 uses
  br i1 %.not.i15355705, label %._crit_edge5709, label %.lr.ph5708

.lr.ph5708:                                       ; preds = %bb.agi
  %i.fxd = sub nuw nsw i32 64, %i.fuh
  %i.fxe = zext nneg i32 %i.fxd to i64            ; 4 uses
end_hunk_1
begin_hunk_2_@yyjson_read_opts:bb.a
  %i.iad = lshr i64 %i.hzu, %i.iaa
  %i.iae = add nuw i64 %i.iad, 9
  br label %.thread4378

.thread4378:                                      ; preds = %.critedge992.i, %.thread4375, %bb.aqp
  %.0898.i = phi i64 [ %i.iae, %.thread4375 ], [ %i.hzu, %bb.aqp ], [ %i.hzu, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread4375 ], [ %i.hzx, %bb.aqp ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.iac, %.thread4375 ], [ %i.hzt, %bb.aqp ], [ %i.hzt, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.iab, %.thread4375 ], [ %i.hzq, %bb.aqp ], [ %i.hzq, %.critedge992.i ] ; 2 uses
  %i.iaf = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.iaf
  %i.iag = xor i64 %notmask.i, -1
  %i.iah = and i64 %.sroa.025.0.i, %i.iag
  %i.iai = shl nuw nsw i64 %i.iah, 3              ; 2 uses
  %i.iaj = add nsw i32 %.0896.i, -1
  %i.iak = zext nneg i32 %i.iaj to i64
  %i.ial = shl nuw nsw i64 8, %i.iak              ; 2 uses
  %i.iam = lshr i64 %.sroa.025.0.i, %i.iaf
  %i.ian = add i64 %i.ial, %.0898.i
  %i.iao = icmp uge i64 %i.iai, %i.ian            ; 2 uses
  %i.iap = zext i1 %i.iao to i64
  %i.iaq = add nuw nsw i64 %i.iam, %i.iap         ; 3 uses
  %i.iar = icmp eq i64 %i.iaq, 0
  br i1 %i.iar, label %bb.aqz, label %bb.aqq, !prof !8

bb.aqq:                                           ; preds = %.thread4378
  %i.ias = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.iat = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.iaq, i1 true) ; 2 uses
  %i.iau = trunc nuw nsw i64 %i.iat to i32
  %i.iav = shl i64 %i.iaq, %i.iat
  %i.iaw = lshr i64 %i.iav, 11                    ; 2 uses
  %i.iax = sub nsw i32 %i.ias, %i.iau             ; 5 uses
  %i.iay = icmp sgt i32 %i.iax, 960
  br i1 %i.iay, label %diy_fp_to_ieee_raw.exit1510, label %bb.aqr, !prof !8

bb.aqr:                                           ; preds = %bb.aqq
  %i.iaz = icmp sgt i32 %i.iax, -1086
  br i1 %i.iaz, label %bb.aqs, label %bb.aqt, !prof !25

bb.aqs:                                           ; preds = %bb.aqr
  %i.iba = add nsw i32 %i.iax, 1086
  %i.ibb = zext nneg i32 %i.iba to i64
  %i.ibc = shl nuw nsw i64 %i.ibb, 52
  %i.ibd = and i64 %i.iaw, 4503599627370495
  %i.ibe = or disjoint i64 %i.ibc, %i.ibd
  br label %bb.aqz

bb.aqt:                                           ; preds = %bb.aqr
  %i.ibf = icmp samesign ugt i32 %i.iax, -1138
  br i1 %i.ibf, label %bb.aqu, label %bb.aqz, !prof !25

bb.aqu:                                           ; preds = %bb.aqt
  %i.ibg = sub nuw nsw i32 -1085, %i.iax
  %i.ibh = zext nneg i32 %i.ibg to i64
  %i.ibi = lshr i64 %i.iaw, %i.ibh
  br label %bb.aqz

diy_fp_to_ieee_raw.exit1510:                      ; preds = %bb.aqq
  %i.ibj = and i32 %2, 128
  %.not4760 = icmp eq i32 %i.ibj, 0
  br i1 %.not4760, label %bb.aqw, label %bb.aqv, !prof !25

bb.aqv:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  %i.ibk = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.ibk, align 1, !tbaa !81
  %i.ibl = ptrtoint ptr %.33.i357 to i64
  %i.ibm = ptrtoint ptr %i.guu to i64
  %i.ibn = sub i64 %i.ibl, %i.ibm
  %i.ibo = shl i64 %i.ibn, 8
  %i.ibp = or disjoint i64 %i.ibo, 1
  store i64 %i.ibp, ptr %.5665.i347, align 8, !tbaa !79
  %i.ibq = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.guu, ptr %i.ibq, align 8, !tbaa !81
  store ptr %.33.i357, ptr %i.h, align 8, !tbaa !92
  br label %.split4420

bb.aqw:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  br i1 %.not4722, label %bb.aqy, label %bb.aqx, !prof !25

bb.aqx:                                           ; preds = %bb.aqw
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.ibr = select i1 %i.guz, i64 -4503599627370496, i64 9218868437227405312
  %i.ibs = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ibr, ptr %i.ibs, align 8, !tbaa !81
  br label %.split4420

bb.aqy:                                           ; preds = %bb.aqw
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  br label %.split4420.thread

bb.aqz:                                           ; preds = %.thread4378, %bb.aqs, %bb.aqu, %bb.aqt
  %.0.i1509.ph = phi i64 [ 0, %bb.aqt ], [ %i.ibi, %bb.aqu ], [ %i.ibe, %bb.aqs ], [ 0, %.thread4378 ] ; 7 uses
  %i.ibt = sub i64 %i.ial, %.0898.i
  %.not987.i = icmp ule i64 %i.iai, %i.ibt
  %spec.select.i = or i1 %.not987.i, %i.iao
  br i1 %spec.select.i, label %bb.ara, label %bb.arb, !prof !25

bb.ara:                                           ; preds = %bb.aqz
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.ibu = select i1 %i.guz, i64 -9223372036854775808, i64 0
  %i.ibv = or disjoint i64 %.0.i1509.ph, %i.ibu
  %i.ibw = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ibv, ptr %i.ibw, align 8, !tbaa !81
  br label %.split4420

bb.arb:                                           ; preds = %bb.aqz
  %.not988.i = icmp samesign ult i64 %.0.i1509.ph, 4503599627370496 ; 2 uses
  %i.ibx = and i64 %.0.i1509.ph, 4503599627370495
  %i.iby = or disjoint i64 %i.ibx, 4503599627370496
  %i.ibz = lshr i64 %.0.i1509.ph, 52
  %i.ica = trunc nuw nsw i64 %i.ibz to i32
  %i.icb = add nsw i32 %i.ica, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.icb ; 5 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i1509.ph, i64 %i.iby
  %i.icc = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.icd = or disjoint i64 %i.icc, 1
  call fastcc void @bigint_set_buf(ptr noundef %11, i64 noundef %.22894.i, ptr noundef %i.d, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i358)
  %i.ice = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 29 uses
  store i64 %i.icd, ptr %i.ice, align 8, !tbaa !91
  %i.icf = load i32, ptr %i.d, align 4, !tbaa !114 ; 6 uses
  %i.icg = icmp sgt i32 %i.icf, -1
  br i1 %i.icg, label %.preheader4964, label %bb.arj

.preheader4964:                                   ; preds = %bb.arb
  %.promoted6372 = load i32, ptr %11, align 8     ; 2 uses
  %i.ich = icmp samesign ugt i32 %i.icf, 18
  br i1 %i.ich, label %.lr.ph6375, label %._crit_edge6376

.lr.ph6375:                                       ; preds = %.preheader4964
  %i.ici = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  br label %bb.arc

bb.arc:                                           ; preds = %.lr.ph6375, %bigint_mul_u64.exit1646
  %.0.i15286374 = phi i32 [ %i.icf, %.lr.ph6375 ], [ %i.idw, %bigint_mul_u64.exit1646 ] ; 2 uses
  %i.icj = phi i32 [ %.promoted6372, %.lr.ph6375 ], [ %i.idv, %bigint_mul_u64.exit1646 ] ; 9 uses
  %.not6527 = icmp eq i32 %i.icj, 0
  br i1 %.not6527, label %._crit_edge6362, label %.lr.ph6361.preheader

.lr.ph6361.preheader:                             ; preds = %bb.arc
  %wide.trip.count7179 = zext i32 %i.icj to i64
  br label %.lr.ph6361

.lr.ph6361:                                       ; preds = %.lr.ph6361.preheader, %bb.ard
  %indvars.iv7176 = phi i64 [ 0, %.lr.ph6361.preheader ], [ %indvars.iv.next7177, %bb.ard ] ; 3 uses
  %i.ick = getelementptr inbounds nuw [8 x i8], ptr %i.ici, i64 %indvars.iv7176
  %i.icl = load i64, ptr %i.ick, align 8, !tbaa !91
  %.not.i1645 = icmp eq i64 %i.icl, 0
  br i1 %.not.i1645, label %bb.ard, label %._crit_edge6362.loopexit

bb.ard:                                           ; preds = %.lr.ph6361
  %indvars.iv.next7177 = add nuw nsw i64 %indvars.iv7176, 1 ; 2 uses
  %exitcond7180.not = icmp eq i64 %indvars.iv.next7177, %wide.trip.count7179
  br i1 %exitcond7180.not, label %bigint_mul_u64.exit1646, label %.lr.ph6361, !llvm.loop !135

._crit_edge6362.loopexit:                         ; preds = %.lr.ph6361
  %i.icm = trunc nuw i64 %indvars.iv7176 to i32
  br label %._crit_edge6362

._crit_edge6362:                                  ; preds = %._crit_edge6362.loopexit, %bb.arc
  %.018.i1641.lcssa = phi i32 [ 0, %bb.arc ], [ %i.icm, %._crit_edge6362.loopexit ] ; 2 uses
  %i.icn = icmp ult i32 %.018.i1641.lcssa, %i.icj
  br i1 %i.icn, label %.lr.ph6369.preheader, label %bigint_mul_u64.exit1646

.lr.ph6369.preheader:                             ; preds = %._crit_edge6362
  %i.ico = zext i32 %.018.i1641.lcssa to i64      ; 4 uses
  %wide.trip.count7184 = zext i32 %i.icj to i64   ; 2 uses
  %i.icp = sub nsw i64 %wide.trip.count7184, %i.ico ; 3 uses
  %xtraiter11132 = and i64 %i.icp, 1
  %i.icq = add nsw i64 %wide.trip.count7184, -1
  %i.icr = icmp eq i64 %i.icq, %i.ico
  br i1 %i.icr, label %.lr.ph6369.epil.preheader, label %.lr.ph6369.preheader.new

.lr.ph6369.preheader.new:                         ; preds = %.lr.ph6369.preheader
  %unroll_iter11137 = and i64 %i.icp, -2
  br label %.lr.ph6369

.lr.ph6369:                                       ; preds = %.lr.ph6369, %.lr.ph6369.preheader.new
  %indvars.iv7181 = phi i64 [ %i.ico, %.lr.ph6369.preheader.new ], [ %indvars.iv.next7182.1, %.lr.ph6369 ] ; 3 uses
  %.0.i16436367 = phi i64 [ 0, %.lr.ph6369.preheader.new ], [ %i.idh, %.lr.ph6369 ]
  %niter11138 = phi i64 [ 0, %.lr.ph6369.preheader.new ], [ %niter11138.next.1, %.lr.ph6369 ]
  %i.ics = getelementptr inbounds nuw [8 x i8], ptr %i.ici, i64 %indvars.iv7181 ; 2 uses
  %i.ict = load i64, ptr %i.ics, align 8, !tbaa !91
  %i.icu = zext i64 %i.ict to i128
  %i.icv = mul nuw i128 %i.icu, 10000000000000000000
  %i.icw = zext i64 %.0.i16436367 to i128
  %i.icx = add nuw i128 %i.icv, %i.icw            ; 2 uses
  %i.icy = lshr i128 %i.icx, 64
  %i.icz = trunc i128 %i.icx to i64
  store i64 %i.icz, ptr %i.ics, align 8, !tbaa !91
  %i.ida = getelementptr inbounds nuw [8 x i8], ptr %i.ici, i64 %indvars.iv7181
  %i.idb = getelementptr inbounds nuw i8, ptr %i.ida, i64 8 ; 2 uses
  %i.idc = load i64, ptr %i.idb, align 8, !tbaa !91
  %i.idd = zext i64 %i.idc to i128
  %i.ide = mul nuw i128 %i.idd, 10000000000000000000
  %i.idf = add nuw i128 %i.ide, %i.icy            ; 2 uses
  %i.idg = lshr i128 %i.idf, 64                   ; 2 uses
  %i.idh = trunc nuw i128 %i.idg to i64           ; 3 uses
  %i.idi = trunc i128 %i.idf to i64
  store i64 %i.idi, ptr %i.idb, align 8, !tbaa !91
  %indvars.iv.next7182.1 = add nuw nsw i64 %indvars.iv7181, 2 ; 2 uses
  %niter11138.next.1 = add i64 %niter11138, 2     ; 2 uses
  %niter11138.ncmp.1 = icmp eq i64 %niter11138.next.1, %unroll_iter11137
  br i1 %niter11138.ncmp.1, label %._crit_edge6370.unr-lcssa, label %.lr.ph6369, !llvm.loop !136

._crit_edge6370.unr-lcssa:                        ; preds = %.lr.ph6369
  %lcmp.mod11133.not = icmp eq i64 %xtraiter11132, 0
  br i1 %lcmp.mod11133.not, label %._crit_edge6370, label %.lr.ph6369.epil.preheader

.lr.ph6369.epil.preheader:                        ; preds = %._crit_edge6370.unr-lcssa, %.lr.ph6369.preheader
  %indvars.iv7181.epil.init = phi i64 [ %i.ico, %.lr.ph6369.preheader ], [ %indvars.iv.next7182.1, %._crit_edge6370.unr-lcssa ]
  %.0.i16436367.epil.init = phi i64 [ 0, %.lr.ph6369.preheader ], [ %i.idh, %._crit_edge6370.unr-lcssa ]
  %lcmp.mod11136 = trunc i64 %i.icp to i1
  call void @llvm.assume(i1 %lcmp.mod11136)
  %i.idj = getelementptr inbounds nuw [8 x i8], ptr %i.ici, i64 %indvars.iv7181.epil.init ; 2 uses
  %i.idk = load i64, ptr %i.idj, align 8, !tbaa !91
  %i.idl = zext i64 %i.idk to i128
  %i.idm = mul nuw i128 %i.idl, 10000000000000000000
  %i.idn = zext i64 %.0.i16436367.epil.init to i128
  %i.ido = add nuw i128 %i.idm, %i.idn            ; 2 uses
  %i.idp = lshr i128 %i.ido, 64                   ; 2 uses
  %i.idq = trunc nuw i128 %i.idp to i64
  %i.idr = trunc i128 %i.ido to i64
  store i64 %i.idr, ptr %i.idj, align 8, !tbaa !91
  br label %._crit_edge6370

._crit_edge6370:                                  ; preds = %._crit_edge6370.unr-lcssa, %.lr.ph6369.epil.preheader
  %.lcssa10288 = phi i128 [ %i.idg, %._crit_edge6370.unr-lcssa ], [ %i.idp, %.lr.ph6369.epil.preheader ]
  %.lcssa10287 = phi i64 [ %i.idh, %._crit_edge6370.unr-lcssa ], [ %i.idq, %.lr.ph6369.epil.preheader ]
  %.not19.i1644 = icmp eq i128 %.lcssa10288, 0
  br i1 %.not19.i1644, label %bigint_mul_u64.exit1646, label %bb.are

bb.are:                                           ; preds = %._crit_edge6370
  %i.ids = add i32 %i.icj, 1
  %i.idt = zext i32 %i.icj to i64
  %i.idu = getelementptr inbounds nuw [8 x i8], ptr %i.ici, i64 %i.idt
  store i64 %.lcssa10287, ptr %i.idu, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1646

bigint_mul_u64.exit1646:                          ; preds = %bb.ard, %._crit_edge6362, %._crit_edge6370, %bb.are
  %i.idv = phi i32 [ %i.icj, %._crit_edge6370 ], [ %i.ids, %bb.are ], [ %i.icj, %._crit_edge6362 ], [ %i.icj, %bb.ard ] ; 2 uses
  %i.idw = add nsw i32 %.0.i15286374, -19         ; 2 uses
  %i.idx = icmp sgt i32 %.0.i15286374, 37
  br i1 %i.idx, label %bb.arc, label %._crit_edge6376, !llvm.loop !137

._crit_edge6376:                                  ; preds = %bigint_mul_u64.exit1646, %.preheader4964
  %i.idy = phi i32 [ %.promoted6372, %.preheader4964 ], [ %i.idv, %bigint_mul_u64.exit1646 ] ; 7 uses
  %.0.i1528.lcssa = phi i32 [ %i.icf, %.preheader4964 ], [ %i.idw, %bigint_mul_u64.exit1646 ] ; 2 uses
  store i32 %i.idy, ptr %11, align 8
  %.not.i1529 = icmp eq i32 %.0.i1528.lcssa, 0
  br i1 %.not.i1529, label %bigint_mul_pow10.exit1530, label %bb.arf

bb.arf:                                           ; preds = %._crit_edge6376
  %i.idz = sext i32 %.0.i1528.lcssa to i64
  %i.iea = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.idz
  %i.ieb = load i64, ptr %i.iea, align 8, !tbaa !91
  %i.iec = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %.not6528 = icmp eq i32 %i.idy, 0
  br i1 %.not6528, label %._crit_edge6382, label %.lr.ph6381.preheader

.lr.ph6381.preheader:                             ; preds = %bb.arf
  %wide.trip.count7189 = zext i32 %i.idy to i64
  br label %.lr.ph6381

.lr.ph6381:                                       ; preds = %.lr.ph6381.preheader, %bb.arg
  %indvars.iv7186 = phi i64 [ 0, %.lr.ph6381.preheader ], [ %indvars.iv.next7187, %bb.arg ] ; 3 uses
  %i.ied = getelementptr inbounds nuw [8 x i8], ptr %i.iec, i64 %indvars.iv7186
  %i.iee = load i64, ptr %i.ied, align 8, !tbaa !91
  %.not.i1651 = icmp eq i64 %i.iee, 0
  br i1 %.not.i1651, label %bb.arg, label %._crit_edge6382.loopexit

bb.arg:                                           ; preds = %.lr.ph6381
  %indvars.iv.next7187 = add nuw nsw i64 %indvars.iv7186, 1 ; 2 uses
  %exitcond7190.not = icmp eq i64 %indvars.iv.next7187, %wide.trip.count7189
  br i1 %exitcond7190.not, label %bigint_mul_pow10.exit1530, label %.lr.ph6381, !llvm.loop !135

._crit_edge6382.loopexit:                         ; preds = %.lr.ph6381
  %i.ief = trunc nuw i64 %indvars.iv7186 to i32
  br label %._crit_edge6382

._crit_edge6382:                                  ; preds = %._crit_edge6382.loopexit, %bb.arf
  %.018.i1647.lcssa = phi i32 [ 0, %bb.arf ], [ %i.ief, %._crit_edge6382.loopexit ] ; 2 uses
  %i.ieg = icmp ult i32 %.018.i1647.lcssa, %i.idy
  br i1 %i.ieg, label %.lr.ph6389, label %bigint_mul_pow10.exit1530

.lr.ph6389:                                       ; preds = %._crit_edge6382
  %i.ieh = zext i64 %i.ieb to i128                ; 3 uses
  %i.iei = zext i32 %.018.i1647.lcssa to i64      ; 4 uses
  %wide.trip.count7194 = zext i32 %i.idy to i64   ; 2 uses
  %i.iej = sub nsw i64 %wide.trip.count7194, %i.iei ; 3 uses
  %xtraiter11140 = and i64 %i.iej, 1
  %i.iek = add nsw i64 %wide.trip.count7194, -1
  %i.iel = icmp eq i64 %i.iek, %i.iei
  br i1 %i.iel, label %.epil.preheader11139, label %.lr.ph6389.new

.lr.ph6389.new:                                   ; preds = %.lr.ph6389
  %unroll_iter11145 = and i64 %i.iej, -2
  br label %bb.arh

bb.arh:                                           ; preds = %bb.arh, %.lr.ph6389.new
  %indvars.iv7191 = phi i64 [ %i.iei, %.lr.ph6389.new ], [ %indvars.iv.next7192.1, %bb.arh ] ; 3 uses
  %.0.i16496387 = phi i64 [ 0, %.lr.ph6389.new ], [ %i.ifb, %bb.arh ]
  %niter11146 = phi i64 [ 0, %.lr.ph6389.new ], [ %niter11146.next.1, %bb.arh ]
  %i.iem = getelementptr inbounds nuw [8 x i8], ptr %i.iec, i64 %indvars.iv7191 ; 2 uses
  %i.ien = load i64, ptr %i.iem, align 8, !tbaa !91
  %i.ieo = zext i64 %i.ien to i128
  %i.iep = mul nuw i128 %i.ieo, %i.ieh
  %i.ieq = zext i64 %.0.i16496387 to i128
  %i.ier = add nuw i128 %i.iep, %i.ieq            ; 2 uses
  %i.ies = lshr i128 %i.ier, 64
  %i.iet = trunc i128 %i.ier to i64
  store i64 %i.iet, ptr %i.iem, align 8, !tbaa !91
  %i.ieu = getelementptr inbounds nuw [8 x i8], ptr %i.iec, i64 %indvars.iv7191
  %i.iev = getelementptr inbounds nuw i8, ptr %i.ieu, i64 8 ; 2 uses
  %i.iew = load i64, ptr %i.iev, align 8, !tbaa !91
  %i.iex = zext i64 %i.iew to i128
  %i.iey = mul nuw i128 %i.iex, %i.ieh
  %i.iez = add nuw i128 %i.iey, %i.ies            ; 2 uses
  %i.ifa = lshr i128 %i.iez, 64                   ; 2 uses
  %i.ifb = trunc nuw i128 %i.ifa to i64           ; 3 uses
  %i.ifc = trunc i128 %i.iez to i64
  store i64 %i.ifc, ptr %i.iev, align 8, !tbaa !91
  %indvars.iv.next7192.1 = add nuw nsw i64 %indvars.iv7191, 2 ; 2 uses
  %niter11146.next.1 = add i64 %niter11146, 2     ; 2 uses
  %niter11146.ncmp.1 = icmp eq i64 %niter11146.next.1, %unroll_iter11145
  br i1 %niter11146.ncmp.1, label %._crit_edge6390.unr-lcssa, label %bb.arh, !llvm.loop !136

._crit_edge6390.unr-lcssa:                        ; preds = %bb.arh
  %lcmp.mod11141.not = icmp eq i64 %xtraiter11140, 0
  br i1 %lcmp.mod11141.not, label %._crit_edge6390, label %.epil.preheader11139

.epil.preheader11139:                             ; preds = %._crit_edge6390.unr-lcssa, %.lr.ph6389
  %indvars.iv7191.epil.init = phi i64 [ %i.iei, %.lr.ph6389 ], [ %indvars.iv.next7192.1, %._crit_edge6390.unr-lcssa ]
  %.0.i16496387.epil.init = phi i64 [ 0, %.lr.ph6389 ], [ %i.ifb, %._crit_edge6390.unr-lcssa ]
  %lcmp.mod11144 = trunc i64 %i.iej to i1
  call void @llvm.assume(i1 %lcmp.mod11144)
  %i.ifd = getelementptr inbounds nuw [8 x i8], ptr %i.iec, i64 %indvars.iv7191.epil.init ; 2 uses
  %i.ife = load i64, ptr %i.ifd, align 8, !tbaa !91
  %i.iff = zext i64 %i.ife to i128
  %i.ifg = mul nuw i128 %i.iff, %i.ieh
  %i.ifh = zext i64 %.0.i16496387.epil.init to i128
  %i.ifi = add nuw i128 %i.ifg, %i.ifh            ; 2 uses
  %i.ifj = lshr i128 %i.ifi, 64                   ; 2 uses
  %i.ifk = trunc nuw i128 %i.ifj to i64
  %i.ifl = trunc i128 %i.ifi to i64
  store i64 %i.ifl, ptr %i.ifd, align 8, !tbaa !91
  br label %._crit_edge6390

._crit_edge6390:                                  ; preds = %._crit_edge6390.unr-lcssa, %.epil.preheader11139
  %.lcssa10284 = phi i128 [ %i.ifa, %._crit_edge6390.unr-lcssa ], [ %i.ifj, %.epil.preheader11139 ]
  %.lcssa10283 = phi i64 [ %i.ifb, %._crit_edge6390.unr-lcssa ], [ %i.ifk, %.epil.preheader11139 ]
  %.not19.i1650 = icmp eq i128 %.lcssa10284, 0
  br i1 %.not19.i1650, label %bigint_mul_pow10.exit1530, label %bb.ari

bb.ari:                                           ; preds = %._crit_edge6390
  %i.ifm = add i32 %i.idy, 1
  store i32 %i.ifm, ptr %11, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit1530.sink.split

bb.arj:                                           ; preds = %bb.arb
  %i.ifn = sub nsw i32 0, %i.icf                  ; 2 uses
  %i.ifo = icmp samesign ult i32 %i.icf, -18
  br i1 %i.ifo, label %.lr.ph6342, label %.thread8287

.thread8287:                                      ; preds = %bb.arj
  store i32 1, ptr %12, align 8
  %i.ifp = zext nneg i32 %i.ifn to i64
  %i.ifq = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.ifp
  %i.ifr = load i64, ptr %i.ifq, align 8, !tbaa !91
  br label %.lr.ph6348.preheader

.lr.ph6342:                                       ; preds = %bb.arj, %bigint_mul_u64.exit
  %.0.i15316340 = phi i32 [ %i.ihf, %bigint_mul_u64.exit ], [ %i.ifn, %bb.arj ] ; 2 uses
  %i.ifs = phi i32 [ %i.ihe, %bigint_mul_u64.exit ], [ 1, %bb.arj ] ; 9 uses
  %.not6525 = icmp eq i32 %i.ifs, 0
  br i1 %.not6525, label %._crit_edge6328, label %.lr.ph6327.preheader

.lr.ph6327.preheader:                             ; preds = %.lr.ph6342
  %wide.trip.count7159 = zext i32 %i.ifs to i64
  br label %.lr.ph6327

.lr.ph6327:                                       ; preds = %.lr.ph6327.preheader, %bb.ark
  %indvars.iv7156 = phi i64 [ 0, %.lr.ph6327.preheader ], [ %indvars.iv.next7157, %bb.ark ] ; 3 uses
  %i.ift = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7156
  %i.ifu = load i64, ptr %i.ift, align 8, !tbaa !91
  %.not.i1634 = icmp eq i64 %i.ifu, 0
  br i1 %.not.i1634, label %bb.ark, label %._crit_edge6328.loopexit

bb.ark:                                           ; preds = %.lr.ph6327
  %indvars.iv.next7157 = add nuw nsw i64 %indvars.iv7156, 1 ; 2 uses
  %exitcond7160.not = icmp eq i64 %indvars.iv.next7157, %wide.trip.count7159
  br i1 %exitcond7160.not, label %bigint_mul_u64.exit, label %.lr.ph6327, !llvm.loop !135

._crit_edge6328.loopexit:                         ; preds = %.lr.ph6327
  %i.ifv = trunc nuw i64 %indvars.iv7156 to i32
  br label %._crit_edge6328

._crit_edge6328:                                  ; preds = %._crit_edge6328.loopexit, %.lr.ph6342
  %.018.i.lcssa = phi i32 [ 0, %.lr.ph6342 ], [ %i.ifv, %._crit_edge6328.loopexit ] ; 2 uses
  %i.ifw = icmp ult i32 %.018.i.lcssa, %i.ifs
  br i1 %i.ifw, label %.lr.ph6335.preheader, label %bigint_mul_u64.exit

.lr.ph6335.preheader:                             ; preds = %._crit_edge6328
  %i.ifx = zext i32 %.018.i.lcssa to i64          ; 4 uses
  %wide.trip.count7164 = zext i32 %i.ifs to i64   ; 2 uses
  %i.ify = sub nsw i64 %wide.trip.count7164, %i.ifx ; 3 uses
  %xtraiter11117 = and i64 %i.ify, 1
  %i.ifz = add nsw i64 %wide.trip.count7164, -1
  %i.iga = icmp eq i64 %i.ifz, %i.ifx
  br i1 %i.iga, label %.lr.ph6335.epil.preheader, label %.lr.ph6335.preheader.new

.lr.ph6335.preheader.new:                         ; preds = %.lr.ph6335.preheader
  %unroll_iter11122 = and i64 %i.ify, -2
  br label %.lr.ph6335

.lr.ph6335:                                       ; preds = %.lr.ph6335, %.lr.ph6335.preheader.new
  %indvars.iv7161 = phi i64 [ %i.ifx, %.lr.ph6335.preheader.new ], [ %indvars.iv.next7162.1, %.lr.ph6335 ] ; 3 uses
  %.0.i16336333 = phi i64 [ 0, %.lr.ph6335.preheader.new ], [ %i.igq, %.lr.ph6335 ]
  %niter11123 = phi i64 [ 0, %.lr.ph6335.preheader.new ], [ %niter11123.next.1, %.lr.ph6335 ]
  %i.igb = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7161 ; 2 uses
  %i.igc = load i64, ptr %i.igb, align 8, !tbaa !91
  %i.igd = zext i64 %i.igc to i128
  %i.ige = mul nuw i128 %i.igd, 10000000000000000000
  %i.igf = zext i64 %.0.i16336333 to i128
  %i.igg = add nuw i128 %i.ige, %i.igf            ; 2 uses
  %i.igh = lshr i128 %i.igg, 64
  %i.igi = trunc i128 %i.igg to i64
  store i64 %i.igi, ptr %i.igb, align 8, !tbaa !91
  %i.igj = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7161
  %i.igk = getelementptr inbounds nuw i8, ptr %i.igj, i64 8 ; 2 uses
  %i.igl = load i64, ptr %i.igk, align 8, !tbaa !91
  %i.igm = zext i64 %i.igl to i128
  %i.ign = mul nuw i128 %i.igm, 10000000000000000000
  %i.igo = add nuw i128 %i.ign, %i.igh            ; 2 uses
  %i.igp = lshr i128 %i.igo, 64                   ; 2 uses
  %i.igq = trunc nuw i128 %i.igp to i64           ; 3 uses
  %i.igr = trunc i128 %i.igo to i64
  store i64 %i.igr, ptr %i.igk, align 8, !tbaa !91
  %indvars.iv.next7162.1 = add nuw nsw i64 %indvars.iv7161, 2 ; 2 uses
  %niter11123.next.1 = add i64 %niter11123, 2     ; 2 uses
  %niter11123.ncmp.1 = icmp eq i64 %niter11123.next.1, %unroll_iter11122
  br i1 %niter11123.ncmp.1, label %._crit_edge6336.unr-lcssa, label %.lr.ph6335, !llvm.loop !136

._crit_edge6336.unr-lcssa:                        ; preds = %.lr.ph6335
  %lcmp.mod11118.not = icmp eq i64 %xtraiter11117, 0
  br i1 %lcmp.mod11118.not, label %._crit_edge6336, label %.lr.ph6335.epil.preheader

.lr.ph6335.epil.preheader:                        ; preds = %._crit_edge6336.unr-lcssa, %.lr.ph6335.preheader
  %indvars.iv7161.epil.init = phi i64 [ %i.ifx, %.lr.ph6335.preheader ], [ %indvars.iv.next7162.1, %._crit_edge6336.unr-lcssa ]
  %.0.i16336333.epil.init = phi i64 [ 0, %.lr.ph6335.preheader ], [ %i.igq, %._crit_edge6336.unr-lcssa ]
  %lcmp.mod11121 = trunc i64 %i.ify to i1
  call void @llvm.assume(i1 %lcmp.mod11121)
  %i.igs = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7161.epil.init ; 2 uses
  %i.igt = load i64, ptr %i.igs, align 8, !tbaa !91
  %i.igu = zext i64 %i.igt to i128
  %i.igv = mul nuw i128 %i.igu, 10000000000000000000
  %i.igw = zext i64 %.0.i16336333.epil.init to i128
  %i.igx = add nuw i128 %i.igv, %i.igw            ; 2 uses
  %i.igy = lshr i128 %i.igx, 64                   ; 2 uses
  %i.igz = trunc nuw i128 %i.igy to i64
  %i.iha = trunc i128 %i.igx to i64
  store i64 %i.iha, ptr %i.igs, align 8, !tbaa !91
  br label %._crit_edge6336

._crit_edge6336:                                  ; preds = %._crit_edge6336.unr-lcssa, %.lr.ph6335.epil.preheader
  %.lcssa10297 = phi i128 [ %i.igp, %._crit_edge6336.unr-lcssa ], [ %i.igy, %.lr.ph6335.epil.preheader ]
  %.lcssa10296 = phi i64 [ %i.igq, %._crit_edge6336.unr-lcssa ], [ %i.igz, %.lr.ph6335.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa10297, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.arl

bb.arl:                                           ; preds = %._crit_edge6336
  %i.ihb = add i32 %i.ifs, 1
  %i.ihc = zext i32 %i.ifs to i64
  %i.ihd = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ihc
  store i64 %.lcssa10296, ptr %i.ihd, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.ark, %._crit_edge6328, %._crit_edge6336, %bb.arl
  %i.ihe = phi i32 [ %i.ifs, %._crit_edge6336 ], [ %i.ihb, %bb.arl ], [ %i.ifs, %._crit_edge6328 ], [ %i.ifs, %bb.ark ] ; 5 uses
  %i.ihf = add nsw i32 %.0.i15316340, -19         ; 3 uses
  %i.ihg = icmp sgt i32 %.0.i15316340, 37
  br i1 %i.ihg, label %.lr.ph6342, label %._crit_edge6343, !llvm.loop !137

._crit_edge6343:                                  ; preds = %bigint_mul_u64.exit
  store i32 %i.ihe, ptr %12, align 8
  %.not.i1532 = icmp eq i32 %i.ihf, 0
  br i1 %.not.i1532, label %bigint_mul_pow10.exit1530, label %bb.arm

bb.arm:                                           ; preds = %._crit_edge6343
  %i.ihh = sext i32 %i.ihf to i64
  %i.ihi = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.ihh
  %i.ihj = load i64, ptr %i.ihi, align 8, !tbaa !91 ; 2 uses
  %.not6526 = icmp eq i32 %i.ihe, 0
  br i1 %.not6526, label %._crit_edge6349, label %.lr.ph6348.preheader

.lr.ph6348.preheader:                             ; preds = %.thread8287, %bb.arm
  %i.ihk = phi i64 [ %i.ifr, %.thread8287 ], [ %i.ihj, %bb.arm ]
  %i.ihl = phi i32 [ 1, %.thread8287 ], [ %i.ihe, %bb.arm ] ; 3 uses
  %wide.trip.count7169 = zext i32 %i.ihl to i64
  br label %.lr.ph6348

.lr.ph6348:                                       ; preds = %.lr.ph6348.preheader, %bb.arn
  %indvars.iv7166 = phi i64 [ 0, %.lr.ph6348.preheader ], [ %indvars.iv.next7167, %bb.arn ] ; 3 uses
  %i.ihm = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7166
  %i.ihn = load i64, ptr %i.ihm, align 8, !tbaa !91
  %.not.i1639 = icmp eq i64 %i.ihn, 0
  br i1 %.not.i1639, label %bb.arn, label %._crit_edge6349.loopexit

bb.arn:                                           ; preds = %.lr.ph6348
  %indvars.iv.next7167 = add nuw nsw i64 %indvars.iv7166, 1 ; 2 uses
  %exitcond7170.not = icmp eq i64 %indvars.iv.next7167, %wide.trip.count7169
  br i1 %exitcond7170.not, label %bigint_mul_pow10.exit1530, label %.lr.ph6348, !llvm.loop !135

._crit_edge6349.loopexit:                         ; preds = %.lr.ph6348
  %i.iho = trunc nuw i64 %indvars.iv7166 to i32
  br label %._crit_edge6349

._crit_edge6349:                                  ; preds = %._crit_edge6349.loopexit, %bb.arm
  %i.ihp = phi i64 [ %i.ihj, %bb.arm ], [ %i.ihk, %._crit_edge6349.loopexit ]
  %i.ihq = phi i32 [ 0, %bb.arm ], [ %i.ihl, %._crit_edge6349.loopexit ] ; 6 uses
  %.018.i1635.lcssa = phi i32 [ 0, %bb.arm ], [ %i.iho, %._crit_edge6349.loopexit ] ; 2 uses
  %i.ihr = icmp ult i32 %.018.i1635.lcssa, %i.ihq
  br i1 %i.ihr, label %.lr.ph6356, label %bigint_mul_pow10.exit1530

.lr.ph6356:                                       ; preds = %._crit_edge6349
  %i.ihs = zext i64 %i.ihp to i128                ; 3 uses
  %i.iht = zext i32 %.018.i1635.lcssa to i64      ; 4 uses
  %wide.trip.count7174 = zext i32 %i.ihq to i64   ; 2 uses
  %i.ihu = sub nsw i64 %wide.trip.count7174, %i.iht ; 3 uses
  %xtraiter11125 = and i64 %i.ihu, 1
  %i.ihv = add nsw i64 %wide.trip.count7174, -1
  %i.ihw = icmp eq i64 %i.ihv, %i.iht
  br i1 %i.ihw, label %.epil.preheader11124, label %.lr.ph6356.new

.lr.ph6356.new:                                   ; preds = %.lr.ph6356
  %unroll_iter11130 = and i64 %i.ihu, -2
  br label %bb.aro

bb.aro:                                           ; preds = %bb.aro, %.lr.ph6356.new
  %indvars.iv7171 = phi i64 [ %i.iht, %.lr.ph6356.new ], [ %indvars.iv.next7172.1, %bb.aro ] ; 3 uses
  %.0.i16376354 = phi i64 [ 0, %.lr.ph6356.new ], [ %i.iim, %bb.aro ]
  %niter11131 = phi i64 [ 0, %.lr.ph6356.new ], [ %niter11131.next.1, %bb.aro ]
  %i.ihx = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7171 ; 2 uses
  %i.ihy = load i64, ptr %i.ihx, align 8, !tbaa !91
  %i.ihz = zext i64 %i.ihy to i128
  %i.iia = mul nuw i128 %i.ihz, %i.ihs
  %i.iib = zext i64 %.0.i16376354 to i128
  %i.iic = add nuw i128 %i.iia, %i.iib            ; 2 uses
  %i.iid = lshr i128 %i.iic, 64
  %i.iie = trunc i128 %i.iic to i64
  store i64 %i.iie, ptr %i.ihx, align 8, !tbaa !91
  %i.iif = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7171
  %i.iig = getelementptr inbounds nuw i8, ptr %i.iif, i64 8 ; 2 uses
  %i.iih = load i64, ptr %i.iig, align 8, !tbaa !91
  %i.iii = zext i64 %i.iih to i128
  %i.iij = mul nuw i128 %i.iii, %i.ihs
  %i.iik = add nuw i128 %i.iij, %i.iid            ; 2 uses
  %i.iil = lshr i128 %i.iik, 64                   ; 2 uses
  %i.iim = trunc nuw i128 %i.iil to i64           ; 3 uses
  %i.iin = trunc i128 %i.iik to i64
  store i64 %i.iin, ptr %i.iig, align 8, !tbaa !91
  %indvars.iv.next7172.1 = add nuw nsw i64 %indvars.iv7171, 2 ; 2 uses
  %niter11131.next.1 = add i64 %niter11131, 2     ; 2 uses
  %niter11131.ncmp.1 = icmp eq i64 %niter11131.next.1, %unroll_iter11130
  br i1 %niter11131.ncmp.1, label %._crit_edge6357.unr-lcssa, label %bb.aro, !llvm.loop !136

._crit_edge6357.unr-lcssa:                        ; preds = %bb.aro
  %lcmp.mod11126.not = icmp eq i64 %xtraiter11125, 0
  br i1 %lcmp.mod11126.not, label %._crit_edge6357, label %.epil.preheader11124

.epil.preheader11124:                             ; preds = %._crit_edge6357.unr-lcssa, %.lr.ph6356
  %indvars.iv7171.epil.init = phi i64 [ %i.iht, %.lr.ph6356 ], [ %indvars.iv.next7172.1, %._crit_edge6357.unr-lcssa ]
  %.0.i16376354.epil.init = phi i64 [ 0, %.lr.ph6356 ], [ %i.iim, %._crit_edge6357.unr-lcssa ]
  %lcmp.mod11129 = trunc i64 %i.ihu to i1
  call void @llvm.assume(i1 %lcmp.mod11129)
  %i.iio = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %indvars.iv7171.epil.init ; 2 uses
  %i.iip = load i64, ptr %i.iio, align 8, !tbaa !91
  %i.iiq = zext i64 %i.iip to i128
  %i.iir = mul nuw i128 %i.iiq, %i.ihs
  %i.iis = zext i64 %.0.i16376354.epil.init to i128
  %i.iit = add nuw i128 %i.iir, %i.iis            ; 2 uses
  %i.iiu = lshr i128 %i.iit, 64                   ; 2 uses
  %i.iiv = trunc nuw i128 %i.iiu to i64
  %i.iiw = trunc i128 %i.iit to i64
  store i64 %i.iiw, ptr %i.iio, align 8, !tbaa !91
  br label %._crit_edge6357

._crit_edge6357:                                  ; preds = %._crit_edge6357.unr-lcssa, %.epil.preheader11124
  %.lcssa10292 = phi i128 [ %i.iil, %._crit_edge6357.unr-lcssa ], [ %i.iiu, %.epil.preheader11124 ]
  %.lcssa10291 = phi i64 [ %i.iim, %._crit_edge6357.unr-lcssa ], [ %i.iiv, %.epil.preheader11124 ]
  %.not19.i1638 = icmp eq i128 %.lcssa10292, 0
  br i1 %.not19.i1638, label %bigint_mul_pow10.exit1530, label %bb.arp

bb.arp:                                           ; preds = %._crit_edge6357
  %i.iix = add i32 %i.ihq, 1
  br label %bigint_mul_pow10.exit1530.sink.split

bigint_mul_pow10.exit1530.sink.split:             ; preds = %bb.ari, %bb.arp
  %.sink9100 = phi i32 [ %i.ihq, %bb.arp ], [ %i.idy, %bb.ari ]
  %i.iiy = phi ptr [ %12, %bb.arp ], [ %11, %bb.ari ]
  %.lcssa8431.sink = phi i64 [ %.lcssa10291, %bb.arp ], [ %.lcssa10283, %bb.ari ]
  %.ph9096 = phi i32 [ %i.iix, %bb.arp ], [ 1, %bb.ari ]
  %i.iiz = getelementptr inbounds nuw i8, ptr %i.iiy, i64 8
  %i.ija = zext i32 %.sink9100 to i64
  %i.ijb = getelementptr inbounds nuw [8 x i8], ptr %i.iiz, i64 %i.ija
  store i64 %.lcssa8431.sink, ptr %i.ijb, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1530

bigint_mul_pow10.exit1530:                        ; preds = %bb.arn, %bb.arg, %bigint_mul_pow10.exit1530.sink.split, %._crit_edge6349, %._crit_edge6382, %._crit_edge6343, %._crit_edge6357, %._crit_edge6376, %._crit_edge6390
  %i.ijc = phi i32 [ %i.ihe, %._crit_edge6343 ], [ %i.ihq, %._crit_edge6357 ], [ %i.ihq, %._crit_edge6349 ], [ 1, %._crit_edge6376 ], [ 1, %._crit_edge6390 ], [ 1, %bb.arg ], [ %.ph9096, %bigint_mul_pow10.exit1530.sink.split ], [ 1, %._crit_edge6382 ], [ %i.ihl, %bb.arn ] ; 16 uses
  %i.ijd = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.ijd, label %bb.arq, label %bb.ars

bb.arq:                                           ; preds = %bigint_mul_pow10.exit1530
  %i.ije = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ijf = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.ijg = icmp eq i32 %i.ije, 0
  br i1 %i.ijg, label %.preheader4959, label %bb.arr, !prof !8

.preheader4959:                                   ; preds = %bb.arq
  %.not46.i15896418 = icmp eq i32 %i.ijc, 0
  br i1 %.not46.i15896418, label %.lr.ph6425.preheader, label %.lr.ph6420

.lr.ph6420:                                       ; preds = %.preheader4959
  %i.ijh = add nsw i32 %i.ijf, -1                 ; 6 uses
  %i.iji = zext i32 %i.ijc to i64                 ; 9 uses
  %min.iters.check10242 = icmp ult i32 %i.ijc, 30
  br i1 %min.iters.check10242, label %scalar.ph10241.preheader, label %vector.scevcheck10238

vector.scevcheck10238:                            ; preds = %.lr.ph6420
  %i.ijj = add nsw i64 %i.iji, -1                 ; 2 uses
  %i.ijk = add i32 %i.ijc, %i.ijf
  %i.ijl = add i32 %i.ijk, -1
  %i.ijm = trunc i64 %i.ijj to i32
  %i.ijn = icmp ult i32 %i.ijl, %i.ijm
  %i.ijo = icmp ugt i64 %i.ijj, 4294967295
  %i.ijp = or i1 %i.ijn, %i.ijo
  br i1 %i.ijp, label %scalar.ph10241.preheader, label %vector.memcheck10239

vector.memcheck10239:                             ; preds = %vector.scevcheck10238
  %i.ijq = add i32 %i.ijc, %i.ijf
  %i.ijr = add i32 %i.ijq, -1
  %i.ijs = zext i32 %i.ijr to i64
  %i.ijt = sub nsw i64 %i.iji, %i.ijs
  %i.iju = shl nsw i64 %i.ijt, 3
  %i.ijv = add nsw i64 %i.iju, -9
  %diff.check10240 = icmp ult i64 %i.ijv, 31
  br i1 %diff.check10240, label %scalar.ph10241.preheader, label %vector.ph10243

vector.ph10243:                                   ; preds = %vector.memcheck10239
  %n.vec10244 = and i64 %i.iji, 4294967292        ; 2 uses
  %i.ijw = and i64 %i.iji, 3
  br label %vector.body10245

vector.body10245:                                 ; preds = %vector.body10245, %vector.ph10243
  %index10246 = phi i64 [ 0, %vector.ph10243 ], [ %index.next10249, %vector.body10245 ] ; 2 uses
  %i.ijx = sub i64 %i.iji, %index10246            ; 2 uses
  %i.ijy = getelementptr [8 x i8], ptr %12, i64 %i.ijx ; 2 uses
  %i.ijz = getelementptr i8, ptr %i.ijy, i64 -8
  %i.ika = getelementptr i8, ptr %i.ijy, i64 -24
  %wide.load10247 = load <2 x i64>, ptr %i.ijz, align 8, !tbaa !91
  %wide.load10248 = load <2 x i64>, ptr %i.ika, align 8, !tbaa !91
  %i.ikb = trunc nuw i64 %i.ijx to i32
  %i.ikc = add i32 %i.ijh, %i.ikb
  %i.ikd = zext i32 %i.ikc to i64
  %i.ike = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ikd ; 2 uses
  %i.ikf = getelementptr inbounds i8, ptr %i.ike, i64 -8
  %i.ikg = getelementptr inbounds i8, ptr %i.ike, i64 -24
  store <2 x i64> %wide.load10247, ptr %i.ikf, align 8, !tbaa !91
  store <2 x i64> %wide.load10248, ptr %i.ikg, align 8, !tbaa !91
  %index.next10249 = add nuw i64 %index10246, 4   ; 2 uses
  %i.ikh = icmp eq i64 %index.next10249, %n.vec10244
  br i1 %i.ikh, label %middle.block10250, label %vector.body10245, !llvm.loop !191

middle.block10250:                                ; preds = %vector.body10245
  %cmp.n10251 = icmp eq i64 %n.vec10244, %i.iji
  br i1 %cmp.n10251, label %.lr.ph6425.preheader, label %scalar.ph10241.preheader

scalar.ph10241.preheader:                         ; preds = %vector.memcheck10239, %vector.scevcheck10238, %.lr.ph6420, %middle.block10250
  %indvars.iv7211.ph = phi i64 [ %i.iji, %vector.memcheck10239 ], [ %i.iji, %vector.scevcheck10238 ], [ %i.iji, %.lr.ph6420 ], [ %i.ijw, %middle.block10250 ] ; 4 uses
  %i.iki = add nsw i64 %indvars.iv7211.ph, -1
  %xtraiter11156 = and i64 %indvars.iv7211.ph, 3  ; 2 uses
  %lcmp.mod11157.not = icmp eq i64 %xtraiter11156, 0
  br i1 %lcmp.mod11157.not, label %scalar.ph10241.prol.loopexit, label %scalar.ph10241.prol

scalar.ph10241.prol:                              ; preds = %scalar.ph10241.preheader, %scalar.ph10241.prol
  %indvars.iv7211.prol = phi i64 [ %i.ikj, %scalar.ph10241.prol ], [ %indvars.iv7211.ph, %scalar.ph10241.preheader ] ; 3 uses
  %prol.iter11158 = phi i64 [ %prol.iter11158.next, %scalar.ph10241.prol ], [ 0, %scalar.ph10241.preheader ]
  %i.ikj = add nsw i64 %indvars.iv7211.prol, -1   ; 2 uses
  %i.ikk = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7211.prol
  %i.ikl = load i64, ptr %i.ikk, align 8, !tbaa !91
  %i.ikm = trunc nuw i64 %indvars.iv7211.prol to i32
  %i.ikn = add i32 %i.ijh, %i.ikm
  %i.iko = zext i32 %i.ikn to i64
  %i.ikp = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.iko
  store i64 %i.ikl, ptr %i.ikp, align 8, !tbaa !91
  %prol.iter11158.next = add i64 %prol.iter11158, 1 ; 2 uses
  %prol.iter11158.cmp.not = icmp eq i64 %prol.iter11158.next, %xtraiter11156
  br i1 %prol.iter11158.cmp.not, label %scalar.ph10241.prol.loopexit, label %scalar.ph10241.prol, !llvm.loop !192

scalar.ph10241.prol.loopexit:                     ; preds = %scalar.ph10241.prol, %scalar.ph10241.preheader
  %indvars.iv7211.unr = phi i64 [ %indvars.iv7211.ph, %scalar.ph10241.preheader ], [ %i.ikj, %scalar.ph10241.prol ]
  %i.ikq = icmp ult i64 %i.iki, 3
  br i1 %i.ikq, label %.lr.ph6425.preheader, label %scalar.ph10241

scalar.ph10241:                                   ; preds = %scalar.ph10241.prol.loopexit, %scalar.ph10241
  %indvars.iv7211 = phi i64 [ %i.ilm, %scalar.ph10241 ], [ %indvars.iv7211.unr, %scalar.ph10241.prol.loopexit ] ; 6 uses
  %i.ikr = add nsw i64 %indvars.iv7211, -1        ; 2 uses
  %i.iks = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7211
  %i.ikt = load i64, ptr %i.iks, align 8, !tbaa !91
  %i.iku = trunc nuw i64 %indvars.iv7211 to i32
  %i.ikv = add i32 %i.ijh, %i.iku
  %i.ikw = zext i32 %i.ikv to i64
  %i.ikx = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ikw
  store i64 %i.ikt, ptr %i.ikx, align 8, !tbaa !91
  %i.iky = add nsw i64 %indvars.iv7211, -2        ; 2 uses
  %i.ikz = getelementptr [8 x i8], ptr %12, i64 %i.ikr
  %i.ila = load i64, ptr %i.ikz, align 8, !tbaa !91
  %i.ilb = trunc nuw i64 %i.ikr to i32
  %i.ilc = add i32 %i.ijh, %i.ilb
  %i.ild = zext i32 %i.ilc to i64
  %i.ile = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ild
  store i64 %i.ila, ptr %i.ile, align 8, !tbaa !91
  %i.ilf = add nsw i64 %indvars.iv7211, -3        ; 2 uses
  %i.ilg = getelementptr [8 x i8], ptr %12, i64 %i.iky
  %i.ilh = load i64, ptr %i.ilg, align 8, !tbaa !91
  %i.ili = trunc nuw i64 %i.iky to i32
  %i.ilj = add i32 %i.ijh, %i.ili
  %i.ilk = zext i32 %i.ilj to i64
  %i.ill = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ilk
  store i64 %i.ilh, ptr %i.ill, align 8, !tbaa !91
  %i.ilm = add nsw i64 %indvars.iv7211, -4        ; 2 uses
  %i.iln = getelementptr [8 x i8], ptr %12, i64 %i.ilf
  %i.ilo = load i64, ptr %i.iln, align 8, !tbaa !91
  %i.ilp = trunc nuw i64 %i.ilf to i32
  %i.ilq = add i32 %i.ijh, %i.ilp
  %i.ilr = zext i32 %i.ilq to i64
  %i.ils = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ilr
  store i64 %i.ilo, ptr %i.ils, align 8, !tbaa !91
  %.not46.i1589.wide.3 = icmp eq i64 %i.ilm, 0
  br i1 %.not46.i1589.wide.3, label %.lr.ph6425.preheader, label %scalar.ph10241, !llvm.loop !193

.lr.ph6425.preheader:                             ; preds = %scalar.ph10241.prol.loopexit, %scalar.ph10241, %middle.block10250, %.preheader4959
  %i.ilt = add i32 %i.ijc, %i.ijf                 ; 2 uses
  store i32 %i.ilt, ptr %12, align 8, !tbaa !138
  %i.ilu = add nsw i32 %i.ijf, -1
  %i.ilv = zext i32 %i.ilu to i64
  %i.ilw = shl nuw nsw i64 %i.ilv, 3
  %i.ilx = add nuw nsw i64 %i.ilw, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ice, i8 0, i64 %i.ilx, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1592

bb.arr:                                           ; preds = %bb.arq
  %i.ily = zext i32 %i.ijc to i64                 ; 10 uses
  %i.ilz = getelementptr inbounds nuw [8 x i8], ptr %i.ice, i64 %i.ily
  store i64 0, ptr %i.ilz, align 8, !tbaa !91
  %.not.i15856409 = icmp eq i32 %i.ijc, 0
  %.pre7654 = zext nneg i32 %i.ije to i64         ; 5 uses
  br i1 %.not.i15856409, label %._crit_edge6413, label %.lr.ph6412

.lr.ph6412:                                       ; preds = %bb.arr
  %i.ima = sub nuw nsw i32 64, %i.ije
  %i.imb = zext nneg i32 %i.ima to i64            ; 4 uses
end_hunk_2
begin_hunk_3_@yyjson_read_opts:bb.a
  %i.mxg = lshr i64 %i.mwx, %i.mxd
  %i.mxh = add nuw i64 %i.mxg, 9
  br label %.thread4527

.thread4527:                                      ; preds = %.critedge992.i434, %.thread4524, %bb.bna
  %.0898.i419 = phi i64 [ %i.mxh, %.thread4524 ], [ %i.mwx, %bb.bna ], [ %i.mwx, %.critedge992.i434 ] ; 2 uses
  %.0896.i420 = phi i32 [ 60, %.thread4524 ], [ %i.mxa, %bb.bna ], [ 11, %.critedge992.i434 ] ; 3 uses
  %.sroa.19.0.in.i421 = phi i32 [ %i.mxf, %.thread4524 ], [ %i.mww, %bb.bna ], [ %i.mww, %.critedge992.i434 ]
  %.sroa.025.0.i422 = phi i64 [ %i.mxe, %.thread4524 ], [ %i.mwt, %bb.bna ], [ %i.mwt, %.critedge992.i434 ] ; 2 uses
  %i.mxi = zext nneg i32 %.0896.i420 to i64       ; 2 uses
  %notmask.i423 = shl nsw i64 -1, %i.mxi
  %i.mxj = xor i64 %notmask.i423, -1
  %i.mxk = and i64 %.sroa.025.0.i422, %i.mxj
  %i.mxl = shl nuw nsw i64 %i.mxk, 3              ; 2 uses
  %i.mxm = add nsw i32 %.0896.i420, -1
  %i.mxn = zext nneg i32 %i.mxm to i64
  %i.mxo = shl nuw nsw i64 8, %i.mxn              ; 2 uses
  %i.mxp = lshr i64 %.sroa.025.0.i422, %i.mxi
  %i.mxq = add i64 %i.mxo, %.0898.i419
  %i.mxr = icmp uge i64 %i.mxl, %i.mxq            ; 2 uses
  %i.mxs = zext i1 %i.mxr to i64
  %i.mxt = add nuw nsw i64 %i.mxp, %i.mxs         ; 3 uses
  %i.mxu = icmp eq i64 %i.mxt, 0
  br i1 %i.mxu, label %bb.bnk, label %bb.bnb, !prof !8

bb.bnb:                                           ; preds = %.thread4527
  %i.mxv = add nsw i32 %.sroa.19.0.in.i421, %.0896.i420
  %i.mxw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.mxt, i1 true) ; 2 uses
  %i.mxx = trunc nuw nsw i64 %i.mxw to i32
  %i.mxy = shl i64 %i.mxt, %i.mxw
  %i.mxz = lshr i64 %i.mxy, 11                    ; 2 uses
  %i.mya = sub nsw i32 %i.mxv, %i.mxx             ; 5 uses
  %i.myb = icmp sgt i32 %i.mya, 960
  br i1 %i.myb, label %diy_fp_to_ieee_raw.exit1508, label %bb.bnc, !prof !8

bb.bnc:                                           ; preds = %bb.bnb
  %i.myc = icmp sgt i32 %i.mya, -1086
  br i1 %i.myc, label %bb.bnd, label %bb.bne, !prof !25

bb.bnd:                                           ; preds = %bb.bnc
  %i.myd = add nsw i32 %i.mya, 1086
  %i.mye = zext nneg i32 %i.myd to i64
  %i.myf = shl nuw nsw i64 %i.mye, 52
  %i.myg = and i64 %i.mxz, 4503599627370495
  %i.myh = or disjoint i64 %i.myf, %i.myg
  br label %bb.bnk

bb.bne:                                           ; preds = %bb.bnc
  %i.myi = icmp samesign ugt i32 %i.mya, -1138
  br i1 %i.myi, label %bb.bnf, label %bb.bnk, !prof !25

bb.bnf:                                           ; preds = %bb.bne
  %i.myj = sub nuw nsw i32 -1085, %i.mya
  %i.myk = zext nneg i32 %i.myj to i64
  %i.myl = lshr i64 %i.mxz, %i.myk
  br label %bb.bnk

diy_fp_to_ieee_raw.exit1508:                      ; preds = %bb.bnb
  %i.mym = and i32 %2, 128
  %.not4696 = icmp eq i32 %i.mym, 0
  br i1 %.not4696, label %bb.bnh, label %bb.bng, !prof !25

bb.bng:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  %i.myn = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.myn, align 1, !tbaa !81
  %i.myo = ptrtoint ptr %.33.i406 to i64
  %i.myp = ptrtoint ptr %i.lrl to i64
  %i.myq = sub i64 %i.myo, %i.myp
  %i.myr = shl i64 %i.myq, 8
  %i.mys = or disjoint i64 %i.myr, 1
  store i64 %i.mys, ptr %i.lrq, align 8, !tbaa !79
  %i.myt = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lrl, ptr %i.myt, align 8, !tbaa !81
  store ptr %.33.i406, ptr %i.h, align 8, !tbaa !92
  br label %.split4569

bb.bnh:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  br i1 %.not4658, label %bb.bnj, label %bb.bni, !prof !25

bb.bni:                                           ; preds = %bb.bnh
  store i64 20, ptr %i.lrq, align 8, !tbaa !79
  %i.myu = select i1 %i.lru, i64 -4503599627370496, i64 9218868437227405312
  %i.myv = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.myu, ptr %i.myv, align 8, !tbaa !81
  br label %.split4569

bb.bnj:                                           ; preds = %bb.bnh
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  br label %.split4569.thread

bb.bnk:                                           ; preds = %.thread4527, %bb.bnd, %bb.bnf, %bb.bne
  %.0.i1507.ph = phi i64 [ 0, %bb.bne ], [ %i.myl, %bb.bnf ], [ %i.myh, %bb.bnd ], [ 0, %.thread4527 ] ; 7 uses
  %i.myw = sub i64 %i.mxo, %.0898.i419
  %.not987.i425 = icmp ule i64 %i.mxl, %i.myw
  %spec.select.i426 = or i1 %.not987.i425, %i.mxr
  br i1 %spec.select.i426, label %bb.bnl, label %bb.bnm, !prof !25

bb.bnl:                                           ; preds = %bb.bnk
  store i64 20, ptr %i.lrq, align 8, !tbaa !79
  %i.myx = select i1 %i.lru, i64 -9223372036854775808, i64 0
  %i.myy = or disjoint i64 %.0.i1507.ph, %i.myx
  %i.myz = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.myy, ptr %i.myz, align 8, !tbaa !81
  br label %.split4569

bb.bnm:                                           ; preds = %bb.bnk
  %.not988.i427 = icmp samesign ult i64 %.0.i1507.ph, 4503599627370496 ; 2 uses
  %i.mza = and i64 %.0.i1507.ph, 4503599627370495
  %i.mzb = or disjoint i64 %i.mza, 4503599627370496
  %i.mzc = lshr i64 %.0.i1507.ph, 52
  %i.mzd = trunc nuw nsw i64 %i.mzc to i32
  %i.mze = add nsw i32 %i.mzd, -1076
  %.sroa.9.0.i428 = select i1 %.not988.i427, i32 -1075, i32 %i.mze ; 5 uses
  %.sroa.018.0.i429 = select i1 %.not988.i427, i64 %.0.i1507.ph, i64 %i.mzb
  %i.mzf = shl nuw nsw i64 %.sroa.018.0.i429, 1
  %i.mzg = or disjoint i64 %i.mzf, 1
  call fastcc void @bigint_set_buf(ptr noundef %9, i64 noundef %.22894.i407, ptr noundef %i.c, ptr noundef %.3863.i410, ptr noundef %.3867.i409, ptr noundef %.23.i408)
  %i.mzh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 29 uses
  store i64 %i.mzg, ptr %i.mzh, align 8, !tbaa !91
  %i.mzi = load i32, ptr %i.c, align 4, !tbaa !114 ; 6 uses
  %i.mzj = icmp sgt i32 %i.mzi, -1
  br i1 %i.mzj, label %.preheader5002, label %bb.bnu

.preheader5002:                                   ; preds = %bb.bnm
  %.promoted6174 = load i32, ptr %9, align 8      ; 2 uses
  %i.mzk = icmp samesign ugt i32 %i.mzi, 18
  br i1 %i.mzk, label %.lr.ph6177, label %._crit_edge6178

.lr.ph6177:                                       ; preds = %.preheader5002
  %i.mzl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.bnn

bb.bnn:                                           ; preds = %.lr.ph6177, %bigint_mul_u64.exit1670
  %.0.i15226176 = phi i32 [ %i.mzi, %.lr.ph6177 ], [ %i.naz, %bigint_mul_u64.exit1670 ] ; 2 uses
  %i.mzm = phi i32 [ %.promoted6174, %.lr.ph6177 ], [ %i.nay, %bigint_mul_u64.exit1670 ] ; 9 uses
  %.not6519 = icmp eq i32 %i.mzm, 0
  br i1 %.not6519, label %._crit_edge6164, label %.lr.ph6163.preheader

.lr.ph6163.preheader:                             ; preds = %bb.bnn
  %wide.trip.count7118 = zext i32 %i.mzm to i64
  br label %.lr.ph6163

.lr.ph6163:                                       ; preds = %.lr.ph6163.preheader, %bb.bno
  %indvars.iv7115 = phi i64 [ 0, %.lr.ph6163.preheader ], [ %indvars.iv.next7116, %bb.bno ] ; 3 uses
  %i.mzn = getelementptr inbounds nuw [8 x i8], ptr %i.mzl, i64 %indvars.iv7115
  %i.mzo = load i64, ptr %i.mzn, align 8, !tbaa !91
  %.not.i1669 = icmp eq i64 %i.mzo, 0
  br i1 %.not.i1669, label %bb.bno, label %._crit_edge6164.loopexit

bb.bno:                                           ; preds = %.lr.ph6163
  %indvars.iv.next7116 = add nuw nsw i64 %indvars.iv7115, 1 ; 2 uses
  %exitcond7119.not = icmp eq i64 %indvars.iv.next7116, %wide.trip.count7118
  br i1 %exitcond7119.not, label %bigint_mul_u64.exit1670, label %.lr.ph6163, !llvm.loop !135

._crit_edge6164.loopexit:                         ; preds = %.lr.ph6163
  %i.mzp = trunc nuw i64 %indvars.iv7115 to i32
  br label %._crit_edge6164

._crit_edge6164:                                  ; preds = %._crit_edge6164.loopexit, %bb.bnn
  %.018.i1665.lcssa = phi i32 [ 0, %bb.bnn ], [ %i.mzp, %._crit_edge6164.loopexit ] ; 2 uses
  %i.mzq = icmp ult i32 %.018.i1665.lcssa, %i.mzm
  br i1 %i.mzq, label %.lr.ph6171.preheader, label %bigint_mul_u64.exit1670

.lr.ph6171.preheader:                             ; preds = %._crit_edge6164
  %i.mzr = zext i32 %.018.i1665.lcssa to i64      ; 4 uses
  %wide.trip.count7123 = zext i32 %i.mzm to i64   ; 2 uses
  %i.mzs = sub nsw i64 %wide.trip.count7123, %i.mzr ; 3 uses
  %xtraiter11090 = and i64 %i.mzs, 1
  %i.mzt = add nsw i64 %wide.trip.count7123, -1
  %i.mzu = icmp eq i64 %i.mzt, %i.mzr
  br i1 %i.mzu, label %.lr.ph6171.epil.preheader, label %.lr.ph6171.preheader.new

.lr.ph6171.preheader.new:                         ; preds = %.lr.ph6171.preheader
  %unroll_iter11095 = and i64 %i.mzs, -2
  br label %.lr.ph6171

.lr.ph6171:                                       ; preds = %.lr.ph6171, %.lr.ph6171.preheader.new
  %indvars.iv7120 = phi i64 [ %i.mzr, %.lr.ph6171.preheader.new ], [ %indvars.iv.next7121.1, %.lr.ph6171 ] ; 3 uses
  %.0.i16676169 = phi i64 [ 0, %.lr.ph6171.preheader.new ], [ %i.nak, %.lr.ph6171 ]
  %niter11096 = phi i64 [ 0, %.lr.ph6171.preheader.new ], [ %niter11096.next.1, %.lr.ph6171 ]
  %i.mzv = getelementptr inbounds nuw [8 x i8], ptr %i.mzl, i64 %indvars.iv7120 ; 2 uses
  %i.mzw = load i64, ptr %i.mzv, align 8, !tbaa !91
  %i.mzx = zext i64 %i.mzw to i128
  %i.mzy = mul nuw i128 %i.mzx, 10000000000000000000
  %i.mzz = zext i64 %.0.i16676169 to i128
  %i.naa = add nuw i128 %i.mzy, %i.mzz            ; 2 uses
  %i.nab = lshr i128 %i.naa, 64
  %i.nac = trunc i128 %i.naa to i64
  store i64 %i.nac, ptr %i.mzv, align 8, !tbaa !91
  %i.nad = getelementptr inbounds nuw [8 x i8], ptr %i.mzl, i64 %indvars.iv7120
  %i.nae = getelementptr inbounds nuw i8, ptr %i.nad, i64 8 ; 2 uses
  %i.naf = load i64, ptr %i.nae, align 8, !tbaa !91
  %i.nag = zext i64 %i.naf to i128
  %i.nah = mul nuw i128 %i.nag, 10000000000000000000
  %i.nai = add nuw i128 %i.nah, %i.nab            ; 2 uses
  %i.naj = lshr i128 %i.nai, 64                   ; 2 uses
  %i.nak = trunc nuw i128 %i.naj to i64           ; 3 uses
  %i.nal = trunc i128 %i.nai to i64
  store i64 %i.nal, ptr %i.nae, align 8, !tbaa !91
  %indvars.iv.next7121.1 = add nuw nsw i64 %indvars.iv7120, 2 ; 2 uses
  %niter11096.next.1 = add i64 %niter11096, 2     ; 2 uses
  %niter11096.ncmp.1 = icmp eq i64 %niter11096.next.1, %unroll_iter11095
  br i1 %niter11096.ncmp.1, label %._crit_edge6172.unr-lcssa, label %.lr.ph6171, !llvm.loop !136

._crit_edge6172.unr-lcssa:                        ; preds = %.lr.ph6171
  %lcmp.mod11091.not = icmp eq i64 %xtraiter11090, 0
  br i1 %lcmp.mod11091.not, label %._crit_edge6172, label %.lr.ph6171.epil.preheader

.lr.ph6171.epil.preheader:                        ; preds = %._crit_edge6172.unr-lcssa, %.lr.ph6171.preheader
  %indvars.iv7120.epil.init = phi i64 [ %i.mzr, %.lr.ph6171.preheader ], [ %indvars.iv.next7121.1, %._crit_edge6172.unr-lcssa ]
  %.0.i16676169.epil.init = phi i64 [ 0, %.lr.ph6171.preheader ], [ %i.nak, %._crit_edge6172.unr-lcssa ]
  %lcmp.mod11094 = trunc i64 %i.mzs to i1
  call void @llvm.assume(i1 %lcmp.mod11094)
  %i.nam = getelementptr inbounds nuw [8 x i8], ptr %i.mzl, i64 %indvars.iv7120.epil.init ; 2 uses
  %i.nan = load i64, ptr %i.nam, align 8, !tbaa !91
  %i.nao = zext i64 %i.nan to i128
  %i.nap = mul nuw i128 %i.nao, 10000000000000000000
  %i.naq = zext i64 %.0.i16676169.epil.init to i128
  %i.nar = add nuw i128 %i.nap, %i.naq            ; 2 uses
  %i.nas = lshr i128 %i.nar, 64                   ; 2 uses
  %i.nat = trunc nuw i128 %i.nas to i64
  %i.nau = trunc i128 %i.nar to i64
  store i64 %i.nau, ptr %i.nam, align 8, !tbaa !91
  br label %._crit_edge6172

._crit_edge6172:                                  ; preds = %._crit_edge6172.unr-lcssa, %.lr.ph6171.epil.preheader
  %.lcssa10380 = phi i128 [ %i.naj, %._crit_edge6172.unr-lcssa ], [ %i.nas, %.lr.ph6171.epil.preheader ]
  %.lcssa10379 = phi i64 [ %i.nak, %._crit_edge6172.unr-lcssa ], [ %i.nat, %.lr.ph6171.epil.preheader ]
  %.not19.i1668 = icmp eq i128 %.lcssa10380, 0
  br i1 %.not19.i1668, label %bigint_mul_u64.exit1670, label %bb.bnp

bb.bnp:                                           ; preds = %._crit_edge6172
  %i.nav = add i32 %i.mzm, 1
  %i.naw = zext i32 %i.mzm to i64
  %i.nax = getelementptr inbounds nuw [8 x i8], ptr %i.mzl, i64 %i.naw
  store i64 %.lcssa10379, ptr %i.nax, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1670

bigint_mul_u64.exit1670:                          ; preds = %bb.bno, %._crit_edge6164, %._crit_edge6172, %bb.bnp
  %i.nay = phi i32 [ %i.mzm, %._crit_edge6172 ], [ %i.nav, %bb.bnp ], [ %i.mzm, %._crit_edge6164 ], [ %i.mzm, %bb.bno ] ; 2 uses
  %i.naz = add nsw i32 %.0.i15226176, -19         ; 2 uses
  %i.nba = icmp sgt i32 %.0.i15226176, 37
  br i1 %i.nba, label %bb.bnn, label %._crit_edge6178, !llvm.loop !137

._crit_edge6178:                                  ; preds = %bigint_mul_u64.exit1670, %.preheader5002
  %i.nbb = phi i32 [ %.promoted6174, %.preheader5002 ], [ %i.nay, %bigint_mul_u64.exit1670 ] ; 7 uses
  %.0.i1522.lcssa = phi i32 [ %i.mzi, %.preheader5002 ], [ %i.naz, %bigint_mul_u64.exit1670 ] ; 2 uses
  store i32 %i.nbb, ptr %9, align 8
  %.not.i1523 = icmp eq i32 %.0.i1522.lcssa, 0
  br i1 %.not.i1523, label %bigint_mul_pow10.exit1524, label %bb.bnq

bb.bnq:                                           ; preds = %._crit_edge6178
  %i.nbc = sext i32 %.0.i1522.lcssa to i64
  %i.nbd = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.nbc
  %i.nbe = load i64, ptr %i.nbd, align 8, !tbaa !91
  %i.nbf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not6520 = icmp eq i32 %i.nbb, 0
  br i1 %.not6520, label %._crit_edge6184, label %.lr.ph6183.preheader

.lr.ph6183.preheader:                             ; preds = %bb.bnq
  %wide.trip.count7128 = zext i32 %i.nbb to i64
  br label %.lr.ph6183

.lr.ph6183:                                       ; preds = %.lr.ph6183.preheader, %bb.bnr
  %indvars.iv7125 = phi i64 [ 0, %.lr.ph6183.preheader ], [ %indvars.iv.next7126, %bb.bnr ] ; 3 uses
  %i.nbg = getelementptr inbounds nuw [8 x i8], ptr %i.nbf, i64 %indvars.iv7125
  %i.nbh = load i64, ptr %i.nbg, align 8, !tbaa !91
  %.not.i1675 = icmp eq i64 %i.nbh, 0
  br i1 %.not.i1675, label %bb.bnr, label %._crit_edge6184.loopexit

bb.bnr:                                           ; preds = %.lr.ph6183
  %indvars.iv.next7126 = add nuw nsw i64 %indvars.iv7125, 1 ; 2 uses
  %exitcond7129.not = icmp eq i64 %indvars.iv.next7126, %wide.trip.count7128
  br i1 %exitcond7129.not, label %bigint_mul_pow10.exit1524, label %.lr.ph6183, !llvm.loop !135

._crit_edge6184.loopexit:                         ; preds = %.lr.ph6183
  %i.nbi = trunc nuw i64 %indvars.iv7125 to i32
  br label %._crit_edge6184

._crit_edge6184:                                  ; preds = %._crit_edge6184.loopexit, %bb.bnq
  %.018.i1671.lcssa = phi i32 [ 0, %bb.bnq ], [ %i.nbi, %._crit_edge6184.loopexit ] ; 2 uses
  %i.nbj = icmp ult i32 %.018.i1671.lcssa, %i.nbb
  br i1 %i.nbj, label %.lr.ph6191, label %bigint_mul_pow10.exit1524

.lr.ph6191:                                       ; preds = %._crit_edge6184
  %i.nbk = zext i64 %i.nbe to i128                ; 3 uses
  %i.nbl = zext i32 %.018.i1671.lcssa to i64      ; 4 uses
  %wide.trip.count7133 = zext i32 %i.nbb to i64   ; 2 uses
  %i.nbm = sub nsw i64 %wide.trip.count7133, %i.nbl ; 3 uses
  %xtraiter11098 = and i64 %i.nbm, 1
  %i.nbn = add nsw i64 %wide.trip.count7133, -1
  %i.nbo = icmp eq i64 %i.nbn, %i.nbl
  br i1 %i.nbo, label %.epil.preheader11097, label %.lr.ph6191.new

.lr.ph6191.new:                                   ; preds = %.lr.ph6191
  %unroll_iter11103 = and i64 %i.nbm, -2
  br label %bb.bns

bb.bns:                                           ; preds = %bb.bns, %.lr.ph6191.new
  %indvars.iv7130 = phi i64 [ %i.nbl, %.lr.ph6191.new ], [ %indvars.iv.next7131.1, %bb.bns ] ; 3 uses
  %.0.i16736189 = phi i64 [ 0, %.lr.ph6191.new ], [ %i.nce, %bb.bns ]
  %niter11104 = phi i64 [ 0, %.lr.ph6191.new ], [ %niter11104.next.1, %bb.bns ]
  %i.nbp = getelementptr inbounds nuw [8 x i8], ptr %i.nbf, i64 %indvars.iv7130 ; 2 uses
  %i.nbq = load i64, ptr %i.nbp, align 8, !tbaa !91
  %i.nbr = zext i64 %i.nbq to i128
  %i.nbs = mul nuw i128 %i.nbr, %i.nbk
  %i.nbt = zext i64 %.0.i16736189 to i128
  %i.nbu = add nuw i128 %i.nbs, %i.nbt            ; 2 uses
  %i.nbv = lshr i128 %i.nbu, 64
  %i.nbw = trunc i128 %i.nbu to i64
  store i64 %i.nbw, ptr %i.nbp, align 8, !tbaa !91
  %i.nbx = getelementptr inbounds nuw [8 x i8], ptr %i.nbf, i64 %indvars.iv7130
  %i.nby = getelementptr inbounds nuw i8, ptr %i.nbx, i64 8 ; 2 uses
  %i.nbz = load i64, ptr %i.nby, align 8, !tbaa !91
  %i.nca = zext i64 %i.nbz to i128
  %i.ncb = mul nuw i128 %i.nca, %i.nbk
  %i.ncc = add nuw i128 %i.ncb, %i.nbv            ; 2 uses
  %i.ncd = lshr i128 %i.ncc, 64                   ; 2 uses
  %i.nce = trunc nuw i128 %i.ncd to i64           ; 3 uses
  %i.ncf = trunc i128 %i.ncc to i64
  store i64 %i.ncf, ptr %i.nby, align 8, !tbaa !91
  %indvars.iv.next7131.1 = add nuw nsw i64 %indvars.iv7130, 2 ; 2 uses
  %niter11104.next.1 = add i64 %niter11104, 2     ; 2 uses
  %niter11104.ncmp.1 = icmp eq i64 %niter11104.next.1, %unroll_iter11103
  br i1 %niter11104.ncmp.1, label %._crit_edge6192.unr-lcssa, label %bb.bns, !llvm.loop !136

._crit_edge6192.unr-lcssa:                        ; preds = %bb.bns
  %lcmp.mod11099.not = icmp eq i64 %xtraiter11098, 0
  br i1 %lcmp.mod11099.not, label %._crit_edge6192, label %.epil.preheader11097

.epil.preheader11097:                             ; preds = %._crit_edge6192.unr-lcssa, %.lr.ph6191
  %indvars.iv7130.epil.init = phi i64 [ %i.nbl, %.lr.ph6191 ], [ %indvars.iv.next7131.1, %._crit_edge6192.unr-lcssa ]
  %.0.i16736189.epil.init = phi i64 [ 0, %.lr.ph6191 ], [ %i.nce, %._crit_edge6192.unr-lcssa ]
  %lcmp.mod11102 = trunc i64 %i.nbm to i1
  call void @llvm.assume(i1 %lcmp.mod11102)
  %i.ncg = getelementptr inbounds nuw [8 x i8], ptr %i.nbf, i64 %indvars.iv7130.epil.init ; 2 uses
  %i.nch = load i64, ptr %i.ncg, align 8, !tbaa !91
  %i.nci = zext i64 %i.nch to i128
  %i.ncj = mul nuw i128 %i.nci, %i.nbk
  %i.nck = zext i64 %.0.i16736189.epil.init to i128
  %i.ncl = add nuw i128 %i.ncj, %i.nck            ; 2 uses
  %i.ncm = lshr i128 %i.ncl, 64                   ; 2 uses
  %i.ncn = trunc nuw i128 %i.ncm to i64
  %i.nco = trunc i128 %i.ncl to i64
  store i64 %i.nco, ptr %i.ncg, align 8, !tbaa !91
  br label %._crit_edge6192

._crit_edge6192:                                  ; preds = %._crit_edge6192.unr-lcssa, %.epil.preheader11097
  %.lcssa10376 = phi i128 [ %i.ncd, %._crit_edge6192.unr-lcssa ], [ %i.ncm, %.epil.preheader11097 ]
  %.lcssa10375 = phi i64 [ %i.nce, %._crit_edge6192.unr-lcssa ], [ %i.ncn, %.epil.preheader11097 ]
  %.not19.i1674 = icmp eq i128 %.lcssa10376, 0
  br i1 %.not19.i1674, label %bigint_mul_pow10.exit1524, label %bb.bnt

bb.bnt:                                           ; preds = %._crit_edge6192
  %i.ncp = add i32 %i.nbb, 1
  store i32 %i.ncp, ptr %9, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit1524.sink.split

bb.bnu:                                           ; preds = %bb.bnm
  %i.ncq = sub nsw i32 0, %i.mzi                  ; 2 uses
  %i.ncr = icmp samesign ult i32 %i.mzi, -18
  br i1 %i.ncr, label %.lr.ph6144, label %.thread8363

.thread8363:                                      ; preds = %bb.bnu
  store i32 1, ptr %10, align 8
  %i.ncs = zext nneg i32 %i.ncq to i64
  %i.nct = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.ncs
  %i.ncu = load i64, ptr %i.nct, align 8, !tbaa !91
  br label %.lr.ph6150.preheader

.lr.ph6144:                                       ; preds = %bb.bnu, %bigint_mul_u64.exit1658
  %.0.i15256142 = phi i32 [ %i.nei, %bigint_mul_u64.exit1658 ], [ %i.ncq, %bb.bnu ] ; 2 uses
  %i.ncv = phi i32 [ %i.neh, %bigint_mul_u64.exit1658 ], [ 1, %bb.bnu ] ; 9 uses
  %.not6517 = icmp eq i32 %i.ncv, 0
  br i1 %.not6517, label %._crit_edge6130, label %.lr.ph6129.preheader

.lr.ph6129.preheader:                             ; preds = %.lr.ph6144
  %wide.trip.count7098 = zext i32 %i.ncv to i64
  br label %.lr.ph6129

.lr.ph6129:                                       ; preds = %.lr.ph6129.preheader, %bb.bnv
  %indvars.iv7095 = phi i64 [ 0, %.lr.ph6129.preheader ], [ %indvars.iv.next7096, %bb.bnv ] ; 3 uses
  %i.ncw = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7095
  %i.ncx = load i64, ptr %i.ncw, align 8, !tbaa !91
  %.not.i1657 = icmp eq i64 %i.ncx, 0
  br i1 %.not.i1657, label %bb.bnv, label %._crit_edge6130.loopexit

bb.bnv:                                           ; preds = %.lr.ph6129
  %indvars.iv.next7096 = add nuw nsw i64 %indvars.iv7095, 1 ; 2 uses
  %exitcond7099.not = icmp eq i64 %indvars.iv.next7096, %wide.trip.count7098
  br i1 %exitcond7099.not, label %bigint_mul_u64.exit1658, label %.lr.ph6129, !llvm.loop !135

._crit_edge6130.loopexit:                         ; preds = %.lr.ph6129
  %i.ncy = trunc nuw i64 %indvars.iv7095 to i32
  br label %._crit_edge6130

._crit_edge6130:                                  ; preds = %._crit_edge6130.loopexit, %.lr.ph6144
  %.018.i1653.lcssa = phi i32 [ 0, %.lr.ph6144 ], [ %i.ncy, %._crit_edge6130.loopexit ] ; 2 uses
  %i.ncz = icmp ult i32 %.018.i1653.lcssa, %i.ncv
  br i1 %i.ncz, label %.lr.ph6137.preheader, label %bigint_mul_u64.exit1658

.lr.ph6137.preheader:                             ; preds = %._crit_edge6130
  %i.nda = zext i32 %.018.i1653.lcssa to i64      ; 4 uses
  %wide.trip.count7103 = zext i32 %i.ncv to i64   ; 2 uses
  %i.ndb = sub nsw i64 %wide.trip.count7103, %i.nda ; 3 uses
  %xtraiter11075 = and i64 %i.ndb, 1
  %i.ndc = add nsw i64 %wide.trip.count7103, -1
  %i.ndd = icmp eq i64 %i.ndc, %i.nda
  br i1 %i.ndd, label %.lr.ph6137.epil.preheader, label %.lr.ph6137.preheader.new

.lr.ph6137.preheader.new:                         ; preds = %.lr.ph6137.preheader
  %unroll_iter11080 = and i64 %i.ndb, -2
  br label %.lr.ph6137

.lr.ph6137:                                       ; preds = %.lr.ph6137, %.lr.ph6137.preheader.new
  %indvars.iv7100 = phi i64 [ %i.nda, %.lr.ph6137.preheader.new ], [ %indvars.iv.next7101.1, %.lr.ph6137 ] ; 3 uses
  %.0.i16556135 = phi i64 [ 0, %.lr.ph6137.preheader.new ], [ %i.ndt, %.lr.ph6137 ]
  %niter11081 = phi i64 [ 0, %.lr.ph6137.preheader.new ], [ %niter11081.next.1, %.lr.ph6137 ]
  %i.nde = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7100 ; 2 uses
  %i.ndf = load i64, ptr %i.nde, align 8, !tbaa !91
  %i.ndg = zext i64 %i.ndf to i128
  %i.ndh = mul nuw i128 %i.ndg, 10000000000000000000
  %i.ndi = zext i64 %.0.i16556135 to i128
  %i.ndj = add nuw i128 %i.ndh, %i.ndi            ; 2 uses
  %i.ndk = lshr i128 %i.ndj, 64
  %i.ndl = trunc i128 %i.ndj to i64
  store i64 %i.ndl, ptr %i.nde, align 8, !tbaa !91
  %i.ndm = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7100
  %i.ndn = getelementptr inbounds nuw i8, ptr %i.ndm, i64 8 ; 2 uses
  %i.ndo = load i64, ptr %i.ndn, align 8, !tbaa !91
  %i.ndp = zext i64 %i.ndo to i128
  %i.ndq = mul nuw i128 %i.ndp, 10000000000000000000
  %i.ndr = add nuw i128 %i.ndq, %i.ndk            ; 2 uses
  %i.nds = lshr i128 %i.ndr, 64                   ; 2 uses
  %i.ndt = trunc nuw i128 %i.nds to i64           ; 3 uses
  %i.ndu = trunc i128 %i.ndr to i64
  store i64 %i.ndu, ptr %i.ndn, align 8, !tbaa !91
  %indvars.iv.next7101.1 = add nuw nsw i64 %indvars.iv7100, 2 ; 2 uses
  %niter11081.next.1 = add i64 %niter11081, 2     ; 2 uses
  %niter11081.ncmp.1 = icmp eq i64 %niter11081.next.1, %unroll_iter11080
  br i1 %niter11081.ncmp.1, label %._crit_edge6138.unr-lcssa, label %.lr.ph6137, !llvm.loop !136

._crit_edge6138.unr-lcssa:                        ; preds = %.lr.ph6137
  %lcmp.mod11076.not = icmp eq i64 %xtraiter11075, 0
  br i1 %lcmp.mod11076.not, label %._crit_edge6138, label %.lr.ph6137.epil.preheader

.lr.ph6137.epil.preheader:                        ; preds = %._crit_edge6138.unr-lcssa, %.lr.ph6137.preheader
  %indvars.iv7100.epil.init = phi i64 [ %i.nda, %.lr.ph6137.preheader ], [ %indvars.iv.next7101.1, %._crit_edge6138.unr-lcssa ]
  %.0.i16556135.epil.init = phi i64 [ 0, %.lr.ph6137.preheader ], [ %i.ndt, %._crit_edge6138.unr-lcssa ]
  %lcmp.mod11079 = trunc i64 %i.ndb to i1
  call void @llvm.assume(i1 %lcmp.mod11079)
  %i.ndv = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7100.epil.init ; 2 uses
  %i.ndw = load i64, ptr %i.ndv, align 8, !tbaa !91
  %i.ndx = zext i64 %i.ndw to i128
  %i.ndy = mul nuw i128 %i.ndx, 10000000000000000000
  %i.ndz = zext i64 %.0.i16556135.epil.init to i128
  %i.nea = add nuw i128 %i.ndy, %i.ndz            ; 2 uses
  %i.neb = lshr i128 %i.nea, 64                   ; 2 uses
  %i.nec = trunc nuw i128 %i.neb to i64
  %i.ned = trunc i128 %i.nea to i64
  store i64 %i.ned, ptr %i.ndv, align 8, !tbaa !91
  br label %._crit_edge6138

._crit_edge6138:                                  ; preds = %._crit_edge6138.unr-lcssa, %.lr.ph6137.epil.preheader
  %.lcssa10389 = phi i128 [ %i.nds, %._crit_edge6138.unr-lcssa ], [ %i.neb, %.lr.ph6137.epil.preheader ]
  %.lcssa10388 = phi i64 [ %i.ndt, %._crit_edge6138.unr-lcssa ], [ %i.nec, %.lr.ph6137.epil.preheader ]
  %.not19.i1656 = icmp eq i128 %.lcssa10389, 0
  br i1 %.not19.i1656, label %bigint_mul_u64.exit1658, label %bb.bnw

bb.bnw:                                           ; preds = %._crit_edge6138
  %i.nee = add i32 %i.ncv, 1
  %i.nef = zext i32 %i.ncv to i64
  %i.neg = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nef
  store i64 %.lcssa10388, ptr %i.neg, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1658

bigint_mul_u64.exit1658:                          ; preds = %bb.bnv, %._crit_edge6130, %._crit_edge6138, %bb.bnw
  %i.neh = phi i32 [ %i.ncv, %._crit_edge6138 ], [ %i.nee, %bb.bnw ], [ %i.ncv, %._crit_edge6130 ], [ %i.ncv, %bb.bnv ] ; 5 uses
  %i.nei = add nsw i32 %.0.i15256142, -19         ; 3 uses
  %i.nej = icmp sgt i32 %.0.i15256142, 37
  br i1 %i.nej, label %.lr.ph6144, label %._crit_edge6145, !llvm.loop !137

._crit_edge6145:                                  ; preds = %bigint_mul_u64.exit1658
  store i32 %i.neh, ptr %10, align 8
  %.not.i1526 = icmp eq i32 %i.nei, 0
  br i1 %.not.i1526, label %bigint_mul_pow10.exit1524, label %bb.bnx

bb.bnx:                                           ; preds = %._crit_edge6145
  %i.nek = sext i32 %i.nei to i64
  %i.nel = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.nek
  %i.nem = load i64, ptr %i.nel, align 8, !tbaa !91 ; 2 uses
  %.not6518 = icmp eq i32 %i.neh, 0
  br i1 %.not6518, label %._crit_edge6151, label %.lr.ph6150.preheader

.lr.ph6150.preheader:                             ; preds = %.thread8363, %bb.bnx
  %i.nen = phi i64 [ %i.ncu, %.thread8363 ], [ %i.nem, %bb.bnx ]
  %i.neo = phi i32 [ 1, %.thread8363 ], [ %i.neh, %bb.bnx ] ; 3 uses
  %wide.trip.count7108 = zext i32 %i.neo to i64
  br label %.lr.ph6150

.lr.ph6150:                                       ; preds = %.lr.ph6150.preheader, %bb.bny
  %indvars.iv7105 = phi i64 [ 0, %.lr.ph6150.preheader ], [ %indvars.iv.next7106, %bb.bny ] ; 3 uses
  %i.nep = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7105
  %i.neq = load i64, ptr %i.nep, align 8, !tbaa !91
  %.not.i1663 = icmp eq i64 %i.neq, 0
  br i1 %.not.i1663, label %bb.bny, label %._crit_edge6151.loopexit

bb.bny:                                           ; preds = %.lr.ph6150
  %indvars.iv.next7106 = add nuw nsw i64 %indvars.iv7105, 1 ; 2 uses
  %exitcond7109.not = icmp eq i64 %indvars.iv.next7106, %wide.trip.count7108
  br i1 %exitcond7109.not, label %bigint_mul_pow10.exit1524, label %.lr.ph6150, !llvm.loop !135

._crit_edge6151.loopexit:                         ; preds = %.lr.ph6150
  %i.ner = trunc nuw i64 %indvars.iv7105 to i32
  br label %._crit_edge6151

._crit_edge6151:                                  ; preds = %._crit_edge6151.loopexit, %bb.bnx
  %i.nes = phi i64 [ %i.nem, %bb.bnx ], [ %i.nen, %._crit_edge6151.loopexit ]
  %i.net = phi i32 [ 0, %bb.bnx ], [ %i.neo, %._crit_edge6151.loopexit ] ; 6 uses
  %.018.i1659.lcssa = phi i32 [ 0, %bb.bnx ], [ %i.ner, %._crit_edge6151.loopexit ] ; 2 uses
  %i.neu = icmp ult i32 %.018.i1659.lcssa, %i.net
  br i1 %i.neu, label %.lr.ph6158, label %bigint_mul_pow10.exit1524

.lr.ph6158:                                       ; preds = %._crit_edge6151
  %i.nev = zext i64 %i.nes to i128                ; 3 uses
  %i.new = zext i32 %.018.i1659.lcssa to i64      ; 4 uses
  %wide.trip.count7113 = zext i32 %i.net to i64   ; 2 uses
  %i.nex = sub nsw i64 %wide.trip.count7113, %i.new ; 3 uses
  %xtraiter11083 = and i64 %i.nex, 1
  %i.ney = add nsw i64 %wide.trip.count7113, -1
  %i.nez = icmp eq i64 %i.ney, %i.new
  br i1 %i.nez, label %.epil.preheader11082, label %.lr.ph6158.new

.lr.ph6158.new:                                   ; preds = %.lr.ph6158
  %unroll_iter11088 = and i64 %i.nex, -2
  br label %bb.bnz

bb.bnz:                                           ; preds = %bb.bnz, %.lr.ph6158.new
  %indvars.iv7110 = phi i64 [ %i.new, %.lr.ph6158.new ], [ %indvars.iv.next7111.1, %bb.bnz ] ; 3 uses
  %.0.i16616156 = phi i64 [ 0, %.lr.ph6158.new ], [ %i.nfp, %bb.bnz ]
  %niter11089 = phi i64 [ 0, %.lr.ph6158.new ], [ %niter11089.next.1, %bb.bnz ]
  %i.nfa = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7110 ; 2 uses
  %i.nfb = load i64, ptr %i.nfa, align 8, !tbaa !91
  %i.nfc = zext i64 %i.nfb to i128
  %i.nfd = mul nuw i128 %i.nfc, %i.nev
  %i.nfe = zext i64 %.0.i16616156 to i128
  %i.nff = add nuw i128 %i.nfd, %i.nfe            ; 2 uses
  %i.nfg = lshr i128 %i.nff, 64
  %i.nfh = trunc i128 %i.nff to i64
  store i64 %i.nfh, ptr %i.nfa, align 8, !tbaa !91
  %i.nfi = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7110
  %i.nfj = getelementptr inbounds nuw i8, ptr %i.nfi, i64 8 ; 2 uses
  %i.nfk = load i64, ptr %i.nfj, align 8, !tbaa !91
  %i.nfl = zext i64 %i.nfk to i128
  %i.nfm = mul nuw i128 %i.nfl, %i.nev
  %i.nfn = add nuw i128 %i.nfm, %i.nfg            ; 2 uses
  %i.nfo = lshr i128 %i.nfn, 64                   ; 2 uses
  %i.nfp = trunc nuw i128 %i.nfo to i64           ; 3 uses
  %i.nfq = trunc i128 %i.nfn to i64
  store i64 %i.nfq, ptr %i.nfj, align 8, !tbaa !91
  %indvars.iv.next7111.1 = add nuw nsw i64 %indvars.iv7110, 2 ; 2 uses
  %niter11089.next.1 = add i64 %niter11089, 2     ; 2 uses
  %niter11089.ncmp.1 = icmp eq i64 %niter11089.next.1, %unroll_iter11088
  br i1 %niter11089.ncmp.1, label %._crit_edge6159.unr-lcssa, label %bb.bnz, !llvm.loop !136

._crit_edge6159.unr-lcssa:                        ; preds = %bb.bnz
  %lcmp.mod11084.not = icmp eq i64 %xtraiter11083, 0
  br i1 %lcmp.mod11084.not, label %._crit_edge6159, label %.epil.preheader11082

.epil.preheader11082:                             ; preds = %._crit_edge6159.unr-lcssa, %.lr.ph6158
  %indvars.iv7110.epil.init = phi i64 [ %i.new, %.lr.ph6158 ], [ %indvars.iv.next7111.1, %._crit_edge6159.unr-lcssa ]
  %.0.i16616156.epil.init = phi i64 [ 0, %.lr.ph6158 ], [ %i.nfp, %._crit_edge6159.unr-lcssa ]
  %lcmp.mod11087 = trunc i64 %i.nex to i1
  call void @llvm.assume(i1 %lcmp.mod11087)
  %i.nfr = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %indvars.iv7110.epil.init ; 2 uses
  %i.nfs = load i64, ptr %i.nfr, align 8, !tbaa !91
  %i.nft = zext i64 %i.nfs to i128
  %i.nfu = mul nuw i128 %i.nft, %i.nev
  %i.nfv = zext i64 %.0.i16616156.epil.init to i128
  %i.nfw = add nuw i128 %i.nfu, %i.nfv            ; 2 uses
  %i.nfx = lshr i128 %i.nfw, 64                   ; 2 uses
  %i.nfy = trunc nuw i128 %i.nfx to i64
  %i.nfz = trunc i128 %i.nfw to i64
  store i64 %i.nfz, ptr %i.nfr, align 8, !tbaa !91
  br label %._crit_edge6159

._crit_edge6159:                                  ; preds = %._crit_edge6159.unr-lcssa, %.epil.preheader11082
  %.lcssa10384 = phi i128 [ %i.nfo, %._crit_edge6159.unr-lcssa ], [ %i.nfx, %.epil.preheader11082 ]
  %.lcssa10383 = phi i64 [ %i.nfp, %._crit_edge6159.unr-lcssa ], [ %i.nfy, %.epil.preheader11082 ]
  %.not19.i1662 = icmp eq i128 %.lcssa10384, 0
  br i1 %.not19.i1662, label %bigint_mul_pow10.exit1524, label %bb.boa

bb.boa:                                           ; preds = %._crit_edge6159
  %i.nga = add i32 %i.net, 1
  br label %bigint_mul_pow10.exit1524.sink.split

bigint_mul_pow10.exit1524.sink.split:             ; preds = %bb.bnt, %bb.boa
  %.sink9135 = phi i32 [ %i.net, %bb.boa ], [ %i.nbb, %bb.bnt ]
  %i.ngb = phi ptr [ %10, %bb.boa ], [ %9, %bb.bnt ]
  %.lcssa8530.sink = phi i64 [ %.lcssa10383, %bb.boa ], [ %.lcssa10375, %bb.bnt ]
  %.ph9131 = phi i32 [ %i.nga, %bb.boa ], [ 1, %bb.bnt ]
  %i.ngc = getelementptr inbounds nuw i8, ptr %i.ngb, i64 8
  %i.ngd = zext i32 %.sink9135 to i64
  %i.nge = getelementptr inbounds nuw [8 x i8], ptr %i.ngc, i64 %i.ngd
  store i64 %.lcssa8530.sink, ptr %i.nge, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1524

bigint_mul_pow10.exit1524:                        ; preds = %bb.bny, %bb.bnr, %bigint_mul_pow10.exit1524.sink.split, %._crit_edge6151, %._crit_edge6184, %._crit_edge6145, %._crit_edge6159, %._crit_edge6178, %._crit_edge6192
  %i.ngf = phi i32 [ %i.neh, %._crit_edge6145 ], [ %i.net, %._crit_edge6159 ], [ %i.net, %._crit_edge6151 ], [ 1, %._crit_edge6178 ], [ 1, %._crit_edge6192 ], [ 1, %bb.bnr ], [ %.ph9131, %bigint_mul_pow10.exit1524.sink.split ], [ 1, %._crit_edge6184 ], [ %i.neo, %bb.bny ] ; 16 uses
  %i.ngg = icmp sgt i32 %.sroa.9.0.i428, 0
  br i1 %i.ngg, label %bb.bob, label %bb.bod

bb.bob:                                           ; preds = %bigint_mul_pow10.exit1524
  %i.ngh = and i32 %.sroa.9.0.i428, 63            ; 3 uses
  %i.ngi = lshr i32 %.sroa.9.0.i428, 6            ; 14 uses
  %i.ngj = icmp eq i32 %i.ngh, 0
  br i1 %i.ngj, label %.preheader4997, label %bb.boc, !prof !8

.preheader4997:                                   ; preds = %bb.bob
  %.not46.i15716220 = icmp eq i32 %i.ngf, 0
  br i1 %.not46.i15716220, label %.lr.ph6227.preheader, label %.lr.ph6222

.lr.ph6222:                                       ; preds = %.preheader4997
  %i.ngk = add nsw i32 %i.ngi, -1                 ; 6 uses
  %i.ngl = zext i32 %i.ngf to i64                 ; 9 uses
  %min.iters.check10166 = icmp ult i32 %i.ngf, 30
  br i1 %min.iters.check10166, label %scalar.ph10165.preheader, label %vector.scevcheck10162

vector.scevcheck10162:                            ; preds = %.lr.ph6222
  %i.ngm = add nsw i64 %i.ngl, -1                 ; 2 uses
  %i.ngn = add i32 %i.ngf, %i.ngi
  %i.ngo = add i32 %i.ngn, -1
  %i.ngp = trunc i64 %i.ngm to i32
  %i.ngq = icmp ult i32 %i.ngo, %i.ngp
  %i.ngr = icmp ugt i64 %i.ngm, 4294967295
  %i.ngs = or i1 %i.ngq, %i.ngr
  br i1 %i.ngs, label %scalar.ph10165.preheader, label %vector.memcheck10163

vector.memcheck10163:                             ; preds = %vector.scevcheck10162
  %i.ngt = add i32 %i.ngf, %i.ngi
  %i.ngu = add i32 %i.ngt, -1
  %i.ngv = zext i32 %i.ngu to i64
  %i.ngw = sub nsw i64 %i.ngl, %i.ngv
  %i.ngx = shl nsw i64 %i.ngw, 3
  %i.ngy = add nsw i64 %i.ngx, -9
  %diff.check10164 = icmp ult i64 %i.ngy, 31
  br i1 %diff.check10164, label %scalar.ph10165.preheader, label %vector.ph10167

vector.ph10167:                                   ; preds = %vector.memcheck10163
  %n.vec10168 = and i64 %i.ngl, 4294967292        ; 2 uses
  %i.ngz = and i64 %i.ngl, 3
  br label %vector.body10169

vector.body10169:                                 ; preds = %vector.body10169, %vector.ph10167
  %index10170 = phi i64 [ 0, %vector.ph10167 ], [ %index.next10173, %vector.body10169 ] ; 2 uses
  %i.nha = sub i64 %i.ngl, %index10170            ; 2 uses
  %i.nhb = getelementptr [8 x i8], ptr %10, i64 %i.nha ; 2 uses
  %i.nhc = getelementptr i8, ptr %i.nhb, i64 -8
  %i.nhd = getelementptr i8, ptr %i.nhb, i64 -24
  %wide.load10171 = load <2 x i64>, ptr %i.nhc, align 8, !tbaa !91
  %wide.load10172 = load <2 x i64>, ptr %i.nhd, align 8, !tbaa !91
  %i.nhe = trunc nuw i64 %i.nha to i32
  %i.nhf = add i32 %i.ngk, %i.nhe
  %i.nhg = zext i32 %i.nhf to i64
  %i.nhh = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nhg ; 2 uses
  %i.nhi = getelementptr inbounds i8, ptr %i.nhh, i64 -8
  %i.nhj = getelementptr inbounds i8, ptr %i.nhh, i64 -24
  store <2 x i64> %wide.load10171, ptr %i.nhi, align 8, !tbaa !91
  store <2 x i64> %wide.load10172, ptr %i.nhj, align 8, !tbaa !91
  %index.next10173 = add nuw i64 %index10170, 4   ; 2 uses
  %i.nhk = icmp eq i64 %index.next10173, %n.vec10168
  br i1 %i.nhk, label %middle.block10174, label %vector.body10169, !llvm.loop !210

middle.block10174:                                ; preds = %vector.body10169
  %cmp.n10175 = icmp eq i64 %n.vec10168, %i.ngl
  br i1 %cmp.n10175, label %.lr.ph6227.preheader, label %scalar.ph10165.preheader

scalar.ph10165.preheader:                         ; preds = %vector.memcheck10163, %vector.scevcheck10162, %.lr.ph6222, %middle.block10174
  %indvars.iv7150.ph = phi i64 [ %i.ngl, %vector.memcheck10163 ], [ %i.ngl, %vector.scevcheck10162 ], [ %i.ngl, %.lr.ph6222 ], [ %i.ngz, %middle.block10174 ] ; 4 uses
  %i.nhl = add nsw i64 %indvars.iv7150.ph, -1
  %xtraiter11114 = and i64 %indvars.iv7150.ph, 3  ; 2 uses
  %lcmp.mod11115.not = icmp eq i64 %xtraiter11114, 0
  br i1 %lcmp.mod11115.not, label %scalar.ph10165.prol.loopexit, label %scalar.ph10165.prol

scalar.ph10165.prol:                              ; preds = %scalar.ph10165.preheader, %scalar.ph10165.prol
  %indvars.iv7150.prol = phi i64 [ %i.nhm, %scalar.ph10165.prol ], [ %indvars.iv7150.ph, %scalar.ph10165.preheader ] ; 3 uses
  %prol.iter11116 = phi i64 [ %prol.iter11116.next, %scalar.ph10165.prol ], [ 0, %scalar.ph10165.preheader ]
  %i.nhm = add nsw i64 %indvars.iv7150.prol, -1   ; 2 uses
  %i.nhn = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7150.prol
  %i.nho = load i64, ptr %i.nhn, align 8, !tbaa !91
  %i.nhp = trunc nuw i64 %indvars.iv7150.prol to i32
  %i.nhq = add i32 %i.ngk, %i.nhp
  %i.nhr = zext i32 %i.nhq to i64
  %i.nhs = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nhr
  store i64 %i.nho, ptr %i.nhs, align 8, !tbaa !91
  %prol.iter11116.next = add i64 %prol.iter11116, 1 ; 2 uses
  %prol.iter11116.cmp.not = icmp eq i64 %prol.iter11116.next, %xtraiter11114
  br i1 %prol.iter11116.cmp.not, label %scalar.ph10165.prol.loopexit, label %scalar.ph10165.prol, !llvm.loop !211

scalar.ph10165.prol.loopexit:                     ; preds = %scalar.ph10165.prol, %scalar.ph10165.preheader
  %indvars.iv7150.unr = phi i64 [ %indvars.iv7150.ph, %scalar.ph10165.preheader ], [ %i.nhm, %scalar.ph10165.prol ]
  %i.nht = icmp ult i64 %i.nhl, 3
  br i1 %i.nht, label %.lr.ph6227.preheader, label %scalar.ph10165

scalar.ph10165:                                   ; preds = %scalar.ph10165.prol.loopexit, %scalar.ph10165
  %indvars.iv7150 = phi i64 [ %i.nip, %scalar.ph10165 ], [ %indvars.iv7150.unr, %scalar.ph10165.prol.loopexit ] ; 6 uses
  %i.nhu = add nsw i64 %indvars.iv7150, -1        ; 2 uses
  %i.nhv = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7150
  %i.nhw = load i64, ptr %i.nhv, align 8, !tbaa !91
  %i.nhx = trunc nuw i64 %indvars.iv7150 to i32
  %i.nhy = add i32 %i.ngk, %i.nhx
  %i.nhz = zext i32 %i.nhy to i64
  %i.nia = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nhz
  store i64 %i.nhw, ptr %i.nia, align 8, !tbaa !91
  %i.nib = add nsw i64 %indvars.iv7150, -2        ; 2 uses
  %i.nic = getelementptr [8 x i8], ptr %10, i64 %i.nhu
  %i.nid = load i64, ptr %i.nic, align 8, !tbaa !91
  %i.nie = trunc nuw i64 %i.nhu to i32
  %i.nif = add i32 %i.ngk, %i.nie
  %i.nig = zext i32 %i.nif to i64
  %i.nih = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nig
  store i64 %i.nid, ptr %i.nih, align 8, !tbaa !91
  %i.nii = add nsw i64 %indvars.iv7150, -3        ; 2 uses
  %i.nij = getelementptr [8 x i8], ptr %10, i64 %i.nib
  %i.nik = load i64, ptr %i.nij, align 8, !tbaa !91
  %i.nil = trunc nuw i64 %i.nib to i32
  %i.nim = add i32 %i.ngk, %i.nil
  %i.nin = zext i32 %i.nim to i64
  %i.nio = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.nin
  store i64 %i.nik, ptr %i.nio, align 8, !tbaa !91
  %i.nip = add nsw i64 %indvars.iv7150, -4        ; 2 uses
  %i.niq = getelementptr [8 x i8], ptr %10, i64 %i.nii
  %i.nir = load i64, ptr %i.niq, align 8, !tbaa !91
  %i.nis = trunc nuw i64 %i.nii to i32
  %i.nit = add i32 %i.ngk, %i.nis
  %i.niu = zext i32 %i.nit to i64
  %i.niv = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.niu
  store i64 %i.nir, ptr %i.niv, align 8, !tbaa !91
  %.not46.i1571.wide.3 = icmp eq i64 %i.nip, 0
  br i1 %.not46.i1571.wide.3, label %.lr.ph6227.preheader, label %scalar.ph10165, !llvm.loop !212

.lr.ph6227.preheader:                             ; preds = %scalar.ph10165.prol.loopexit, %scalar.ph10165, %middle.block10174, %.preheader4997
  %i.niw = add i32 %i.ngf, %i.ngi                 ; 2 uses
  store i32 %i.niw, ptr %10, align 8, !tbaa !138
  %i.nix = add nsw i32 %i.ngi, -1
  %i.niy = zext i32 %i.nix to i64
  %i.niz = shl nuw nsw i64 %i.niy, 3
  %i.nja = add nuw nsw i64 %i.niz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mzh, i8 0, i64 %i.nja, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1574

bb.boc:                                           ; preds = %bb.bob
  %i.njb = zext i32 %i.ngf to i64                 ; 10 uses
  %i.njc = getelementptr inbounds nuw [8 x i8], ptr %i.mzh, i64 %i.njb
  store i64 0, ptr %i.njc, align 8, !tbaa !91
  %.not.i15676211 = icmp eq i32 %i.ngf, 0
  %.pre7676 = zext nneg i32 %i.ngh to i64         ; 5 uses
  br i1 %.not.i15676211, label %._crit_edge6215, label %.lr.ph6214

.lr.ph6214:                                       ; preds = %bb.boc
  %i.njd = sub nuw nsw i32 64, %i.ngh
  %i.nje = zext nneg i32 %i.njd to i64            ; 4 uses
end_hunk_3
begin_hunk_4_@read_root_single:bb.a
  %i.aer = add nuw i64 %i.aeq, 9
  br label %.thread616

.thread616:                                       ; preds = %.critedge992.i, %.thread613, %bb.gx
  %.0898.i = phi i64 [ %i.aer, %.thread613 ], [ %i.aeh, %bb.gx ], [ %i.aeh, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread613 ], [ %i.aek, %bb.gx ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.aep, %.thread613 ], [ %i.aeg, %bb.gx ], [ %i.aeg, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.aeo, %.thread613 ], [ %i.aed, %bb.gx ], [ %i.aed, %.critedge992.i ] ; 2 uses
  %i.aes = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aes
  %i.aet = xor i64 %notmask.i, -1
  %i.aeu = and i64 %.sroa.025.0.i, %i.aet
  %i.aev = shl nuw nsw i64 %i.aeu, 3              ; 2 uses
  %i.aew = add nsw i32 %.0896.i, -1
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = shl nuw nsw i64 8, %i.aex              ; 2 uses
  %i.aez = lshr i64 %.sroa.025.0.i, %i.aes
  %i.afa = add i64 %i.aey, %.0898.i
  %i.afb = icmp uge i64 %i.aev, %i.afa            ; 2 uses
  %i.afc = zext i1 %i.afb to i64
  %i.afd = add nuw nsw i64 %i.aez, %i.afc         ; 3 uses
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %bb.hh, label %bb.gy, !prof !8

bb.gy:                                            ; preds = %.thread616
  %i.aff = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.afg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.afd, i1 true) ; 2 uses
  %i.afh = trunc nuw nsw i64 %i.afg to i32
  %i.afi = shl i64 %i.afd, %i.afg
  %i.afj = lshr i64 %i.afi, 11                    ; 2 uses
  %i.afk = sub nsw i32 %i.aff, %i.afh             ; 5 uses
  %i.afl = icmp sgt i32 %i.afk, 960
  br i1 %i.afl, label %diy_fp_to_ieee_raw.exit, label %bb.gz, !prof !8

bb.gz:                                            ; preds = %bb.gy
  %i.afm = icmp sgt i32 %i.afk, -1086
  br i1 %i.afm, label %bb.ha, label %bb.hb, !prof !25

bb.ha:                                            ; preds = %bb.gz
  %i.afn = add nsw i32 %i.afk, 1086
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = shl nuw nsw i64 %i.afo, 52
  %i.afq = and i64 %i.afj, 4503599627370495
  %i.afr = or disjoint i64 %i.afp, %i.afq
  br label %bb.hh

bb.hb:                                            ; preds = %bb.gz
  %i.afs = icmp samesign ugt i32 %i.afk, -1138
  br i1 %i.afs, label %bb.hc, label %bb.hh, !prof !25

bb.hc:                                            ; preds = %bb.hb
  %i.aft = sub nuw nsw i32 -1085, %i.afk
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = lshr i64 %i.afj, %i.afu
  br label %bb.hh

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.gy
  %i.afw = and i32 %4, 128
  %.not700 = icmp eq i32 %i.afw, 0
  br i1 %.not700, label %bb.he, label %bb.hd, !prof !25

bb.hd:                                            ; preds = %diy_fp_to_ieee_raw.exit
  store i8 0, ptr %i.d, align 1, !tbaa !81
  %i.afx = ptrtoint ptr %.33.i to i64
  %i.afy = ptrtoint ptr %1 to i64
  %i.afz = sub i64 %i.afx, %i.afy
  %i.aga = shl i64 %i.afz, 8
  %i.agb = or disjoint i64 %i.aga, 1
  store i64 %i.agb, ptr %i.j, align 8, !tbaa !79
  %i.agc = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.agc, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit.thread632

bb.he:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.agd = and i32 %4, 16
  %.not701 = icmp eq i32 %i.agd, 0
  br i1 %.not701, label %bb.hg, label %bb.hf, !prof !25

bb.hf:                                            ; preds = %bb.he
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.age = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.agf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.age, ptr %i.agf, align 8, !tbaa !81
  br label %read_num.exit.thread632

bb.hg:                                            ; preds = %bb.he
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !92
  br label %read_num.exit

bb.hh:                                            ; preds = %.thread616, %bb.ha, %bb.hc, %bb.hb
  %.0.i254.ph = phi i64 [ 0, %bb.hb ], [ %i.afv, %bb.hc ], [ %i.afr, %bb.ha ], [ 0, %.thread616 ] ; 7 uses
  %i.agg = sub i64 %i.aey, %.0898.i
  %.not987.i = icmp ule i64 %i.aev, %i.agg
  %spec.select.i = or i1 %.not987.i, %i.afb
  br i1 %spec.select.i, label %bb.hi, label %bb.hj, !prof !25

bb.hi:                                            ; preds = %bb.hh
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.agh = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.agi = or disjoint i64 %.0.i254.ph, %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.agi, ptr %i.agj, align 8, !tbaa !81
  br label %read_num.exit.thread632

bb.hj:                                            ; preds = %bb.hh
  %.not988.i = icmp samesign ult i64 %.0.i254.ph, 4503599627370496 ; 2 uses
  %i.agk = and i64 %.0.i254.ph, 4503599627370495
  %i.agl = or disjoint i64 %i.agk, 4503599627370496
  %i.agm = lshr i64 %.0.i254.ph, 52
  %i.agn = trunc nuw nsw i64 %i.agm to i32
  %i.ago = add nsw i32 %i.agn, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.ago ; 5 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i254.ph, i64 %i.agl
  %i.agp = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.agq = or disjoint i64 %i.agp, 1
  call fastcc void @bigint_set_buf(ptr noundef %6, i64 noundef %.22894.i, ptr noundef %i.a, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i)
  %i.agr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 29 uses
  store i64 %i.agq, ptr %i.agr, align 8, !tbaa !91
  %i.ags = load i32, ptr %i.a, align 4, !tbaa !114 ; 6 uses
  %i.agt = icmp sgt i32 %i.ags, -1
  br i1 %i.agt, label %.preheader731, label %bb.hr

.preheader731:                                    ; preds = %bb.hj
  %.promoted854 = load i32, ptr %6, align 8       ; 2 uses
  %i.agu = icmp samesign ugt i32 %i.ags, 18
  br i1 %i.agu, label %.lr.ph857, label %._crit_edge858

.lr.ph857:                                        ; preds = %.preheader731
  %i.agv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  br label %bb.hk

bb.hk:                                            ; preds = %.lr.ph857, %bigint_mul_u64.exit290
  %.0.i255856 = phi i32 [ %i.ags, %.lr.ph857 ], [ %i.aij, %bigint_mul_u64.exit290 ] ; 2 uses
  %i.agw = phi i32 [ %.promoted854, %.lr.ph857 ], [ %i.aii, %bigint_mul_u64.exit290 ] ; 9 uses
  %.not978 = icmp eq i32 %i.agw, 0
  br i1 %.not978, label %._crit_edge844, label %.lr.ph843.preheader

.lr.ph843.preheader:                              ; preds = %bb.hk
  %wide.trip.count1060 = zext i32 %i.agw to i64
  br label %.lr.ph843

.lr.ph843:                                        ; preds = %.lr.ph843.preheader, %bb.hl
  %indvars.iv1057 = phi i64 [ 0, %.lr.ph843.preheader ], [ %indvars.iv.next1058, %bb.hl ] ; 3 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1057
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !91
  %.not.i289 = icmp eq i64 %i.agy, 0
  br i1 %.not.i289, label %bb.hl, label %._crit_edge844.loopexit

bb.hl:                                            ; preds = %.lr.ph843
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 1 ; 2 uses
  %exitcond1061.not = icmp eq i64 %indvars.iv.next1058, %wide.trip.count1060
  br i1 %exitcond1061.not, label %bigint_mul_u64.exit290, label %.lr.ph843, !llvm.loop !135

._crit_edge844.loopexit:                          ; preds = %.lr.ph843
  %i.agz = trunc nuw i64 %indvars.iv1057 to i32
  br label %._crit_edge844

._crit_edge844:                                   ; preds = %._crit_edge844.loopexit, %bb.hk
  %.018.i285.lcssa = phi i32 [ 0, %bb.hk ], [ %i.agz, %._crit_edge844.loopexit ] ; 2 uses
  %i.aha = icmp ult i32 %.018.i285.lcssa, %i.agw
  br i1 %i.aha, label %.lr.ph851.preheader, label %bigint_mul_u64.exit290

.lr.ph851.preheader:                              ; preds = %._crit_edge844
  %i.ahb = zext i32 %.018.i285.lcssa to i64       ; 4 uses
  %wide.trip.count1065 = zext i32 %i.agw to i64   ; 2 uses
  %i.ahc = sub nsw i64 %wide.trip.count1065, %i.ahb ; 3 uses
  %xtraiter1588 = and i64 %i.ahc, 1
  %i.ahd = add nsw i64 %wide.trip.count1065, -1
  %i.ahe = icmp eq i64 %i.ahd, %i.ahb
  br i1 %i.ahe, label %.lr.ph851.epil.preheader, label %.lr.ph851.preheader.new

.lr.ph851.preheader.new:                          ; preds = %.lr.ph851.preheader
  %unroll_iter1593 = and i64 %i.ahc, -2
  br label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851, %.lr.ph851.preheader.new
  %indvars.iv1062 = phi i64 [ %i.ahb, %.lr.ph851.preheader.new ], [ %indvars.iv.next1063.1, %.lr.ph851 ] ; 3 uses
  %.0.i287849 = phi i64 [ 0, %.lr.ph851.preheader.new ], [ %i.ahu, %.lr.ph851 ]
  %niter1594 = phi i64 [ 0, %.lr.ph851.preheader.new ], [ %niter1594.next.1, %.lr.ph851 ]
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062 ; 2 uses
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !91
  %i.ahh = zext i64 %i.ahg to i128
  %i.ahi = mul nuw i128 %i.ahh, 10000000000000000000
  %i.ahj = zext i64 %.0.i287849 to i128
  %i.ahk = add nuw i128 %i.ahi, %i.ahj            ; 2 uses
  %i.ahl = lshr i128 %i.ahk, 64
  %i.ahm = trunc i128 %i.ahk to i64
  store i64 %i.ahm, ptr %i.ahf, align 8, !tbaa !91
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8 ; 2 uses
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !91
  %i.ahq = zext i64 %i.ahp to i128
  %i.ahr = mul nuw i128 %i.ahq, 10000000000000000000
  %i.ahs = add nuw i128 %i.ahr, %i.ahl            ; 2 uses
  %i.aht = lshr i128 %i.ahs, 64                   ; 2 uses
  %i.ahu = trunc nuw i128 %i.aht to i64           ; 3 uses
  %i.ahv = trunc i128 %i.ahs to i64
  store i64 %i.ahv, ptr %i.aho, align 8, !tbaa !91
  %indvars.iv.next1063.1 = add nuw nsw i64 %indvars.iv1062, 2 ; 2 uses
  %niter1594.next.1 = add i64 %niter1594, 2       ; 2 uses
  %niter1594.ncmp.1 = icmp eq i64 %niter1594.next.1, %unroll_iter1593
  br i1 %niter1594.ncmp.1, label %._crit_edge852.unr-lcssa, label %.lr.ph851, !llvm.loop !136

._crit_edge852.unr-lcssa:                         ; preds = %.lr.ph851
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %._crit_edge852, label %.lr.ph851.epil.preheader

.lr.ph851.epil.preheader:                         ; preds = %._crit_edge852.unr-lcssa, %.lr.ph851.preheader
  %indvars.iv1062.epil.init = phi i64 [ %i.ahb, %.lr.ph851.preheader ], [ %indvars.iv.next1063.1, %._crit_edge852.unr-lcssa ]
  %.0.i287849.epil.init = phi i64 [ 0, %.lr.ph851.preheader ], [ %i.ahu, %._crit_edge852.unr-lcssa ]
  %lcmp.mod1592 = trunc i64 %i.ahc to i1
  call void @llvm.assume(i1 %lcmp.mod1592)
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %indvars.iv1062.epil.init ; 2 uses
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !91
  %i.ahy = zext i64 %i.ahx to i128
  %i.ahz = mul nuw i128 %i.ahy, 10000000000000000000
  %i.aia = zext i64 %.0.i287849.epil.init to i128
  %i.aib = add nuw i128 %i.ahz, %i.aia            ; 2 uses
  %i.aic = lshr i128 %i.aib, 64                   ; 2 uses
  %i.aid = trunc nuw i128 %i.aic to i64
  %i.aie = trunc i128 %i.aib to i64
  store i64 %i.aie, ptr %i.ahw, align 8, !tbaa !91
  br label %._crit_edge852

._crit_edge852:                                   ; preds = %._crit_edge852.unr-lcssa, %.lr.ph851.epil.preheader
  %.lcssa1550 = phi i128 [ %i.aht, %._crit_edge852.unr-lcssa ], [ %i.aic, %.lr.ph851.epil.preheader ]
  %.lcssa1549 = phi i64 [ %i.ahu, %._crit_edge852.unr-lcssa ], [ %i.aid, %.lr.ph851.epil.preheader ]
  %.not19.i288 = icmp eq i128 %.lcssa1550, 0
  br i1 %.not19.i288, label %bigint_mul_u64.exit290, label %bb.hm

bb.hm:                                            ; preds = %._crit_edge852
  %i.aif = add i32 %i.agw, 1
  %i.aig = zext i32 %i.agw to i64
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.aig
  store i64 %.lcssa1549, ptr %i.aih, align 8, !tbaa !91
  br label %bigint_mul_u64.exit290

bigint_mul_u64.exit290:                           ; preds = %bb.hl, %._crit_edge844, %._crit_edge852, %bb.hm
  %i.aii = phi i32 [ %i.agw, %._crit_edge852 ], [ %i.aif, %bb.hm ], [ %i.agw, %._crit_edge844 ], [ %i.agw, %bb.hl ] ; 2 uses
  %i.aij = add nsw i32 %.0.i255856, -19           ; 2 uses
  %i.aik = icmp sgt i32 %.0.i255856, 37
  br i1 %i.aik, label %bb.hk, label %._crit_edge858, !llvm.loop !137

._crit_edge858:                                   ; preds = %bigint_mul_u64.exit290, %.preheader731
  %i.ail = phi i32 [ %.promoted854, %.preheader731 ], [ %i.aii, %bigint_mul_u64.exit290 ] ; 7 uses
  %.0.i255.lcssa = phi i32 [ %i.ags, %.preheader731 ], [ %i.aij, %bigint_mul_u64.exit290 ] ; 2 uses
  store i32 %i.ail, ptr %6, align 8
  %.not.i256 = icmp eq i32 %.0.i255.lcssa, 0
  br i1 %.not.i256, label %bigint_mul_pow10.exit, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge858
  %i.aim = sext i32 %.0.i255.lcssa to i64
  %i.ain = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.aim
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !91
  %i.aip = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not979 = icmp eq i32 %i.ail, 0
  br i1 %.not979, label %._crit_edge864, label %.lr.ph863.preheader

.lr.ph863.preheader:                              ; preds = %bb.hn
  %wide.trip.count1070 = zext i32 %i.ail to i64
  br label %.lr.ph863

.lr.ph863:                                        ; preds = %.lr.ph863.preheader, %bb.ho
  %indvars.iv1067 = phi i64 [ 0, %.lr.ph863.preheader ], [ %indvars.iv.next1068, %bb.ho ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv1067
  %i.air = load i64, ptr %i.aiq, align 8, !tbaa !91
  %.not.i295 = icmp eq i64 %i.air, 0
  br i1 %.not.i295, label %bb.ho, label %._crit_edge864.loopexit

bb.ho:                                            ; preds = %.lr.ph863
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1 ; 2 uses
  %exitcond1071.not = icmp eq i64 %indvars.iv.next1068, %wide.trip.count1070
  br i1 %exitcond1071.not, label %bigint_mul_pow10.exit, label %.lr.ph863, !llvm.loop !135

._crit_edge864.loopexit:                          ; preds = %.lr.ph863
  %i.ais = trunc nuw i64 %indvars.iv1067 to i32
  br label %._crit_edge864

._crit_edge864:                                   ; preds = %._crit_edge864.loopexit, %bb.hn
  %.018.i291.lcssa = phi i32 [ 0, %bb.hn ], [ %i.ais, %._crit_edge864.loopexit ] ; 2 uses
  %i.ait = icmp ult i32 %.018.i291.lcssa, %i.ail
  br i1 %i.ait, label %.lr.ph871, label %bigint_mul_pow10.exit

.lr.ph871:                                        ; preds = %._crit_edge864
  %i.aiu = zext i64 %i.aio to i128                ; 3 uses
  %i.aiv = zext i32 %.018.i291.lcssa to i64       ; 4 uses
  %wide.trip.count1075 = zext i32 %i.ail to i64   ; 2 uses
  %i.aiw = sub nsw i64 %wide.trip.count1075, %i.aiv ; 3 uses
  %xtraiter1596 = and i64 %i.aiw, 1
  %i.aix = add nsw i64 %wide.trip.count1075, -1
  %i.aiy = icmp eq i64 %i.aix, %i.aiv
  br i1 %i.aiy, label %.epil.preheader1595, label %.lr.ph871.new

.lr.ph871.new:                                    ; preds = %.lr.ph871
  %unroll_iter1601 = and i64 %i.aiw, -2
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %.lr.ph871.new
  %indvars.iv1072 = phi i64 [ %i.aiv, %.lr.ph871.new ], [ %indvars.iv.next1073.1, %bb.hp ] ; 3 uses
  %.0.i293869 = phi i64 [ 0, %.lr.ph871.new ], [ %i.ajo, %bb.hp ]
  %niter1602 = phi i64 [ 0, %.lr.ph871.new ], [ %niter1602.next.1, %bb.hp ]
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv1072 ; 2 uses
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !91
  %i.ajb = zext i64 %i.aja to i128
  %i.ajc = mul nuw i128 %i.ajb, %i.aiu
  %i.ajd = zext i64 %.0.i293869 to i128
  %i.aje = add nuw i128 %i.ajc, %i.ajd            ; 2 uses
  %i.ajf = lshr i128 %i.aje, 64
  %i.ajg = trunc i128 %i.aje to i64
  store i64 %i.ajg, ptr %i.aiz, align 8, !tbaa !91
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv1072
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8 ; 2 uses
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !91
  %i.ajk = zext i64 %i.ajj to i128
  %i.ajl = mul nuw i128 %i.ajk, %i.aiu
  %i.ajm = add nuw i128 %i.ajl, %i.ajf            ; 2 uses
  %i.ajn = lshr i128 %i.ajm, 64                   ; 2 uses
  %i.ajo = trunc nuw i128 %i.ajn to i64           ; 3 uses
  %i.ajp = trunc i128 %i.ajm to i64
  store i64 %i.ajp, ptr %i.aji, align 8, !tbaa !91
  %indvars.iv.next1073.1 = add nuw nsw i64 %indvars.iv1072, 2 ; 2 uses
  %niter1602.next.1 = add i64 %niter1602, 2       ; 2 uses
  %niter1602.ncmp.1 = icmp eq i64 %niter1602.next.1, %unroll_iter1601
  br i1 %niter1602.ncmp.1, label %._crit_edge872.unr-lcssa, label %bb.hp, !llvm.loop !136

._crit_edge872.unr-lcssa:                         ; preds = %bb.hp
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1596, 0
  br i1 %lcmp.mod1597.not, label %._crit_edge872, label %.epil.preheader1595

.epil.preheader1595:                              ; preds = %._crit_edge872.unr-lcssa, %.lr.ph871
  %indvars.iv1072.epil.init = phi i64 [ %i.aiv, %.lr.ph871 ], [ %indvars.iv.next1073.1, %._crit_edge872.unr-lcssa ]
  %.0.i293869.epil.init = phi i64 [ 0, %.lr.ph871 ], [ %i.ajo, %._crit_edge872.unr-lcssa ]
  %lcmp.mod1600 = trunc i64 %i.aiw to i1
  call void @llvm.assume(i1 %lcmp.mod1600)
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.aip, i64 %indvars.iv1072.epil.init ; 2 uses
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !91
  %i.ajs = zext i64 %i.ajr to i128
  %i.ajt = mul nuw i128 %i.ajs, %i.aiu
  %i.aju = zext i64 %.0.i293869.epil.init to i128
  %i.ajv = add nuw i128 %i.ajt, %i.aju            ; 2 uses
  %i.ajw = lshr i128 %i.ajv, 64                   ; 2 uses
  %i.ajx = trunc nuw i128 %i.ajw to i64
  %i.ajy = trunc i128 %i.ajv to i64
  store i64 %i.ajy, ptr %i.ajq, align 8, !tbaa !91
  br label %._crit_edge872

._crit_edge872:                                   ; preds = %._crit_edge872.unr-lcssa, %.epil.preheader1595
  %.lcssa1546 = phi i128 [ %i.ajn, %._crit_edge872.unr-lcssa ], [ %i.ajw, %.epil.preheader1595 ]
  %.lcssa1545 = phi i64 [ %i.ajo, %._crit_edge872.unr-lcssa ], [ %i.ajx, %.epil.preheader1595 ]
  %.not19.i294 = icmp eq i128 %.lcssa1546, 0
  br i1 %.not19.i294, label %bigint_mul_pow10.exit, label %bb.hq

bb.hq:                                            ; preds = %._crit_edge872
  %i.ajz = add i32 %i.ail, 1
  store i32 %i.ajz, ptr %6, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit.sink.split

bb.hr:                                            ; preds = %bb.hj
  %i.aka = sub nsw i32 0, %i.ags                  ; 2 uses
  %i.akb = icmp samesign ult i32 %i.ags, -18
  br i1 %i.akb, label %.lr.ph824, label %.thread1271

.thread1271:                                      ; preds = %bb.hr
  store i32 1, ptr %7, align 8
  %i.akc = zext nneg i32 %i.aka to i64
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.akc
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !91
  br label %.lr.ph830.preheader

.lr.ph824:                                        ; preds = %bb.hr, %bigint_mul_u64.exit
  %.0.i257822 = phi i32 [ %i.als, %bigint_mul_u64.exit ], [ %i.aka, %bb.hr ] ; 2 uses
  %i.akf = phi i32 [ %i.alr, %bigint_mul_u64.exit ], [ 1, %bb.hr ] ; 9 uses
  %.not976 = icmp eq i32 %i.akf, 0
  br i1 %.not976, label %._crit_edge811, label %.lr.ph810.preheader

.lr.ph810.preheader:                              ; preds = %.lr.ph824
  %wide.trip.count = zext i32 %i.akf to i64
  br label %.lr.ph810

.lr.ph810:                                        ; preds = %.lr.ph810.preheader, %bb.hs
  %indvars.iv = phi i64 [ 0, %.lr.ph810.preheader ], [ %indvars.iv.next, %bb.hs ] ; 3 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !91
  %.not.i278 = icmp eq i64 %i.akh, 0
  br i1 %.not.i278, label %bb.hs, label %._crit_edge811.loopexit

bb.hs:                                            ; preds = %.lr.ph810
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit, label %.lr.ph810, !llvm.loop !135

._crit_edge811.loopexit:                          ; preds = %.lr.ph810
  %i.aki = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge811

._crit_edge811:                                   ; preds = %._crit_edge811.loopexit, %.lr.ph824
  %.018.i.lcssa = phi i32 [ 0, %.lr.ph824 ], [ %i.aki, %._crit_edge811.loopexit ] ; 2 uses
  %i.akj = icmp ult i32 %.018.i.lcssa, %i.akf
  br i1 %i.akj, label %.lr.ph818.preheader, label %bigint_mul_u64.exit

.lr.ph818.preheader:                              ; preds = %._crit_edge811
  %i.akk = zext i32 %.018.i.lcssa to i64          ; 4 uses
  %wide.trip.count1045 = zext i32 %i.akf to i64   ; 2 uses
  %i.akl = sub nsw i64 %wide.trip.count1045, %i.akk ; 3 uses
  %xtraiter = and i64 %i.akl, 1
  %i.akm = add nsw i64 %wide.trip.count1045, -1
  %i.akn = icmp eq i64 %i.akm, %i.akk
  br i1 %i.akn, label %.lr.ph818.epil.preheader, label %.lr.ph818.preheader.new

.lr.ph818.preheader.new:                          ; preds = %.lr.ph818.preheader
  %unroll_iter = and i64 %i.akl, -2
  br label %.lr.ph818

.lr.ph818:                                        ; preds = %.lr.ph818, %.lr.ph818.preheader.new
  %indvars.iv1042 = phi i64 [ %i.akk, %.lr.ph818.preheader.new ], [ %indvars.iv.next1043.1, %.lr.ph818 ] ; 3 uses
  %.0.i277816 = phi i64 [ 0, %.lr.ph818.preheader.new ], [ %i.ald, %.lr.ph818 ]
  %niter = phi i64 [ 0, %.lr.ph818.preheader.new ], [ %niter.next.1, %.lr.ph818 ]
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1042 ; 2 uses
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !91
  %i.akq = zext i64 %i.akp to i128
  %i.akr = mul nuw i128 %i.akq, 10000000000000000000
  %i.aks = zext i64 %.0.i277816 to i128
  %i.akt = add nuw i128 %i.akr, %i.aks            ; 2 uses
  %i.aku = lshr i128 %i.akt, 64
  %i.akv = trunc i128 %i.akt to i64
  store i64 %i.akv, ptr %i.ako, align 8, !tbaa !91
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1042
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8 ; 2 uses
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !91
  %i.akz = zext i64 %i.aky to i128
  %i.ala = mul nuw i128 %i.akz, 10000000000000000000
  %i.alb = add nuw i128 %i.ala, %i.aku            ; 2 uses
  %i.alc = lshr i128 %i.alb, 64                   ; 2 uses
  %i.ald = trunc nuw i128 %i.alc to i64           ; 3 uses
  %i.ale = trunc i128 %i.alb to i64
  store i64 %i.ale, ptr %i.akx, align 8, !tbaa !91
  %indvars.iv.next1043.1 = add nuw nsw i64 %indvars.iv1042, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge819.unr-lcssa, label %.lr.ph818, !llvm.loop !136

._crit_edge819.unr-lcssa:                         ; preds = %.lr.ph818
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge819, label %.lr.ph818.epil.preheader

.lr.ph818.epil.preheader:                         ; preds = %._crit_edge819.unr-lcssa, %.lr.ph818.preheader
  %indvars.iv1042.epil.init = phi i64 [ %i.akk, %.lr.ph818.preheader ], [ %indvars.iv.next1043.1, %._crit_edge819.unr-lcssa ]
  %.0.i277816.epil.init = phi i64 [ 0, %.lr.ph818.preheader ], [ %i.ald, %._crit_edge819.unr-lcssa ]
  %lcmp.mod1580 = trunc i64 %i.akl to i1
  call void @llvm.assume(i1 %lcmp.mod1580)
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1042.epil.init ; 2 uses
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !91
  %i.alh = zext i64 %i.alg to i128
  %i.ali = mul nuw i128 %i.alh, 10000000000000000000
  %i.alj = zext i64 %.0.i277816.epil.init to i128
  %i.alk = add nuw i128 %i.ali, %i.alj            ; 2 uses
  %i.all = lshr i128 %i.alk, 64                   ; 2 uses
  %i.alm = trunc nuw i128 %i.all to i64
  %i.aln = trunc i128 %i.alk to i64
  store i64 %i.aln, ptr %i.alf, align 8, !tbaa !91
  br label %._crit_edge819

._crit_edge819:                                   ; preds = %._crit_edge819.unr-lcssa, %.lr.ph818.epil.preheader
  %.lcssa1559 = phi i128 [ %i.alc, %._crit_edge819.unr-lcssa ], [ %i.all, %.lr.ph818.epil.preheader ]
  %.lcssa1558 = phi i64 [ %i.ald, %._crit_edge819.unr-lcssa ], [ %i.alm, %.lr.ph818.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa1559, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.ht

bb.ht:                                            ; preds = %._crit_edge819
  %i.alo = add i32 %i.akf, 1
  %i.alp = zext i32 %i.akf to i64
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.alp
  store i64 %.lcssa1558, ptr %i.alq, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.hs, %._crit_edge811, %._crit_edge819, %bb.ht
  %i.alr = phi i32 [ %i.akf, %._crit_edge819 ], [ %i.alo, %bb.ht ], [ %i.akf, %._crit_edge811 ], [ %i.akf, %bb.hs ] ; 5 uses
  %i.als = add nsw i32 %.0.i257822, -19           ; 3 uses
  %i.alt = icmp sgt i32 %.0.i257822, 37
  br i1 %i.alt, label %.lr.ph824, label %._crit_edge825, !llvm.loop !137

._crit_edge825:                                   ; preds = %bigint_mul_u64.exit
  store i32 %i.alr, ptr %7, align 8
  %.not.i258 = icmp eq i32 %i.als, 0
  br i1 %.not.i258, label %bigint_mul_pow10.exit, label %bb.hu

bb.hu:                                            ; preds = %._crit_edge825
  %i.alu = sext i32 %i.als to i64
  %i.alv = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.alu
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !91 ; 2 uses
  %.not977 = icmp eq i32 %i.alr, 0
  br i1 %.not977, label %._crit_edge831, label %.lr.ph830.preheader

.lr.ph830.preheader:                              ; preds = %.thread1271, %bb.hu
  %i.alx = phi i64 [ %i.ake, %.thread1271 ], [ %i.alw, %bb.hu ]
  %i.aly = phi i32 [ 1, %.thread1271 ], [ %i.alr, %bb.hu ] ; 3 uses
  %wide.trip.count1050 = zext i32 %i.aly to i64
  br label %.lr.ph830

.lr.ph830:                                        ; preds = %.lr.ph830.preheader, %bb.hv
  %indvars.iv1047 = phi i64 [ 0, %.lr.ph830.preheader ], [ %indvars.iv.next1048, %bb.hv ] ; 3 uses
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1047
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !91
  %.not.i283 = icmp eq i64 %i.ama, 0
  br i1 %.not.i283, label %bb.hv, label %._crit_edge831.loopexit

bb.hv:                                            ; preds = %.lr.ph830
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 1 ; 2 uses
  %exitcond1051.not = icmp eq i64 %indvars.iv.next1048, %wide.trip.count1050
  br i1 %exitcond1051.not, label %bigint_mul_pow10.exit, label %.lr.ph830, !llvm.loop !135

._crit_edge831.loopexit:                          ; preds = %.lr.ph830
  %i.amb = trunc nuw i64 %indvars.iv1047 to i32
  br label %._crit_edge831

._crit_edge831:                                   ; preds = %._crit_edge831.loopexit, %bb.hu
  %i.amc = phi i64 [ %i.alw, %bb.hu ], [ %i.alx, %._crit_edge831.loopexit ]
  %i.amd = phi i32 [ 0, %bb.hu ], [ %i.aly, %._crit_edge831.loopexit ] ; 6 uses
  %.018.i279.lcssa = phi i32 [ 0, %bb.hu ], [ %i.amb, %._crit_edge831.loopexit ] ; 2 uses
  %i.ame = icmp ult i32 %.018.i279.lcssa, %i.amd
  br i1 %i.ame, label %.lr.ph838, label %bigint_mul_pow10.exit

.lr.ph838:                                        ; preds = %._crit_edge831
  %i.amf = zext i64 %i.amc to i128                ; 3 uses
  %i.amg = zext i32 %.018.i279.lcssa to i64       ; 4 uses
  %wide.trip.count1055 = zext i32 %i.amd to i64   ; 2 uses
  %i.amh = sub nsw i64 %wide.trip.count1055, %i.amg ; 3 uses
  %xtraiter1581 = and i64 %i.amh, 1
  %i.ami = add nsw i64 %wide.trip.count1055, -1
  %i.amj = icmp eq i64 %i.ami, %i.amg
  br i1 %i.amj, label %.epil.preheader, label %.lr.ph838.new

.lr.ph838.new:                                    ; preds = %.lr.ph838
  %unroll_iter1586 = and i64 %i.amh, -2
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %.lr.ph838.new
  %indvars.iv1052 = phi i64 [ %i.amg, %.lr.ph838.new ], [ %indvars.iv.next1053.1, %bb.hw ] ; 3 uses
  %.0.i281836 = phi i64 [ 0, %.lr.ph838.new ], [ %i.amz, %bb.hw ]
  %niter1587 = phi i64 [ 0, %.lr.ph838.new ], [ %niter1587.next.1, %bb.hw ]
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1052 ; 2 uses
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !91
  %i.amm = zext i64 %i.aml to i128
  %i.amn = mul nuw i128 %i.amm, %i.amf
  %i.amo = zext i64 %.0.i281836 to i128
  %i.amp = add nuw i128 %i.amn, %i.amo            ; 2 uses
  %i.amq = lshr i128 %i.amp, 64
  %i.amr = trunc i128 %i.amp to i64
  store i64 %i.amr, ptr %i.amk, align 8, !tbaa !91
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1052
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8 ; 2 uses
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !91
  %i.amv = zext i64 %i.amu to i128
  %i.amw = mul nuw i128 %i.amv, %i.amf
  %i.amx = add nuw i128 %i.amw, %i.amq            ; 2 uses
  %i.amy = lshr i128 %i.amx, 64                   ; 2 uses
  %i.amz = trunc nuw i128 %i.amy to i64           ; 3 uses
  %i.ana = trunc i128 %i.amx to i64
  store i64 %i.ana, ptr %i.amt, align 8, !tbaa !91
  %indvars.iv.next1053.1 = add nuw nsw i64 %indvars.iv1052, 2 ; 2 uses
  %niter1587.next.1 = add i64 %niter1587, 2       ; 2 uses
  %niter1587.ncmp.1 = icmp eq i64 %niter1587.next.1, %unroll_iter1586
  br i1 %niter1587.ncmp.1, label %._crit_edge839.unr-lcssa, label %bb.hw, !llvm.loop !136

._crit_edge839.unr-lcssa:                         ; preds = %bb.hw
  %lcmp.mod1582.not = icmp eq i64 %xtraiter1581, 0
  br i1 %lcmp.mod1582.not, label %._crit_edge839, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge839.unr-lcssa, %.lr.ph838
  %indvars.iv1052.epil.init = phi i64 [ %i.amg, %.lr.ph838 ], [ %indvars.iv.next1053.1, %._crit_edge839.unr-lcssa ]
  %.0.i281836.epil.init = phi i64 [ 0, %.lr.ph838 ], [ %i.amz, %._crit_edge839.unr-lcssa ]
  %lcmp.mod1585 = trunc i64 %i.amh to i1
  call void @llvm.assume(i1 %lcmp.mod1585)
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1052.epil.init ; 2 uses
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !91
  %i.and = zext i64 %i.anc to i128
  %i.ane = mul nuw i128 %i.and, %i.amf
  %i.anf = zext i64 %.0.i281836.epil.init to i128
  %i.ang = add nuw i128 %i.ane, %i.anf            ; 2 uses
  %i.anh = lshr i128 %i.ang, 64                   ; 2 uses
  %i.ani = trunc nuw i128 %i.anh to i64
  %i.anj = trunc i128 %i.ang to i64
  store i64 %i.anj, ptr %i.anb, align 8, !tbaa !91
  br label %._crit_edge839

._crit_edge839:                                   ; preds = %._crit_edge839.unr-lcssa, %.epil.preheader
  %.lcssa1554 = phi i128 [ %i.amy, %._crit_edge839.unr-lcssa ], [ %i.anh, %.epil.preheader ]
  %.lcssa1553 = phi i64 [ %i.amz, %._crit_edge839.unr-lcssa ], [ %i.ani, %.epil.preheader ]
  %.not19.i282 = icmp eq i128 %.lcssa1554, 0
  br i1 %.not19.i282, label %bigint_mul_pow10.exit, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge839
  %i.ank = add i32 %i.amd, 1
  br label %bigint_mul_pow10.exit.sink.split

bigint_mul_pow10.exit.sink.split:                 ; preds = %bb.hq, %bb.hx
  %.sink1355 = phi i32 [ %i.amd, %bb.hx ], [ %i.ail, %bb.hq ]
  %i.anl = phi ptr [ %7, %bb.hx ], [ %6, %bb.hq ]
  %.lcssa1327.sink = phi i64 [ %.lcssa1553, %bb.hx ], [ %.lcssa1545, %bb.hq ]
  %.ph = phi i32 [ %i.ank, %bb.hx ], [ 1, %bb.hq ]
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = zext i32 %.sink1355 to i64
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %i.ann
  store i64 %.lcssa1327.sink, ptr %i.ano, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit

bigint_mul_pow10.exit:                            ; preds = %bb.hv, %bb.ho, %bigint_mul_pow10.exit.sink.split, %._crit_edge831, %._crit_edge864, %._crit_edge825, %._crit_edge839, %._crit_edge858, %._crit_edge872
  %i.anp = phi i32 [ %i.alr, %._crit_edge825 ], [ %i.amd, %._crit_edge839 ], [ %i.amd, %._crit_edge831 ], [ 1, %._crit_edge858 ], [ 1, %._crit_edge872 ], [ 1, %bb.ho ], [ %.ph, %bigint_mul_pow10.exit.sink.split ], [ 1, %._crit_edge864 ], [ %i.aly, %bb.hv ] ; 16 uses
  %i.anq = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.anq, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bigint_mul_pow10.exit
  %i.anr = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ans = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.ant = icmp eq i32 %i.anr, 0
  br i1 %i.ant, label %.preheader726, label %bb.hz, !prof !8

.preheader726:                                    ; preds = %bb.hy
  %.not46.i900 = icmp eq i32 %i.anp, 0
  br i1 %.not46.i900, label %.lr.ph907.preheader, label %.lr.ph902

.lr.ph902:                                        ; preds = %.preheader726
  %i.anu = add nsw i32 %i.ans, -1                 ; 6 uses
  %i.anv = zext i32 %i.anp to i64                 ; 9 uses
  %min.iters.check1499 = icmp ult i32 %i.anp, 30
  br i1 %min.iters.check1499, label %scalar.ph1498.preheader, label %vector.scevcheck1495

vector.scevcheck1495:                             ; preds = %.lr.ph902
  %i.anw = add nsw i64 %i.anv, -1                 ; 2 uses
  %i.anx = add i32 %i.anp, %i.ans
  %i.any = add i32 %i.anx, -1
  %i.anz = trunc i64 %i.anw to i32
  %i.aoa = icmp ult i32 %i.any, %i.anz
  %i.aob = icmp ugt i64 %i.anw, 4294967295
  %i.aoc = or i1 %i.aoa, %i.aob
  br i1 %i.aoc, label %scalar.ph1498.preheader, label %vector.memcheck1496

vector.memcheck1496:                              ; preds = %vector.scevcheck1495
  %i.aod = add i32 %i.anp, %i.ans
  %i.aoe = add i32 %i.aod, -1
  %i.aof = zext i32 %i.aoe to i64
  %i.aog = sub nsw i64 %i.anv, %i.aof
  %i.aoh = shl nsw i64 %i.aog, 3
  %i.aoi = add nsw i64 %i.aoh, -9
  %diff.check1497 = icmp ult i64 %i.aoi, 31
  br i1 %diff.check1497, label %scalar.ph1498.preheader, label %vector.ph1500

vector.ph1500:                                    ; preds = %vector.memcheck1496
  %n.vec1501 = and i64 %i.anv, 4294967292         ; 2 uses
  %i.aoj = and i64 %i.anv, 3
  br label %vector.body1502

vector.body1502:                                  ; preds = %vector.body1502, %vector.ph1500
  %index1503 = phi i64 [ 0, %vector.ph1500 ], [ %index.next1506, %vector.body1502 ] ; 2 uses
  %i.aok = sub i64 %i.anv, %index1503             ; 2 uses
  %i.aol = getelementptr [8 x i8], ptr %7, i64 %i.aok ; 2 uses
  %i.aom = getelementptr i8, ptr %i.aol, i64 -8
  %i.aon = getelementptr i8, ptr %i.aol, i64 -24
  %wide.load1504 = load <2 x i64>, ptr %i.aom, align 8, !tbaa !91
  %wide.load1505 = load <2 x i64>, ptr %i.aon, align 8, !tbaa !91
  %i.aoo = trunc nuw i64 %i.aok to i32
  %i.aop = add i32 %i.anu, %i.aoo
  %i.aoq = zext i32 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aoq ; 2 uses
  %i.aos = getelementptr inbounds i8, ptr %i.aor, i64 -8
  %i.aot = getelementptr inbounds i8, ptr %i.aor, i64 -24
  store <2 x i64> %wide.load1504, ptr %i.aos, align 8, !tbaa !91
  store <2 x i64> %wide.load1505, ptr %i.aot, align 8, !tbaa !91
  %index.next1506 = add nuw i64 %index1503, 4     ; 2 uses
  %i.aou = icmp eq i64 %index.next1506, %n.vec1501
  br i1 %i.aou, label %middle.block1507, label %vector.body1502, !llvm.loop !232

middle.block1507:                                 ; preds = %vector.body1502
  %cmp.n1508 = icmp eq i64 %n.vec1501, %i.anv
  br i1 %cmp.n1508, label %.lr.ph907.preheader, label %scalar.ph1498.preheader

scalar.ph1498.preheader:                          ; preds = %vector.memcheck1496, %vector.scevcheck1495, %.lr.ph902, %middle.block1507
  %indvars.iv1092.ph = phi i64 [ %i.anv, %vector.memcheck1496 ], [ %i.anv, %vector.scevcheck1495 ], [ %i.anv, %.lr.ph902 ], [ %i.aoj, %middle.block1507 ] ; 4 uses
  %i.aov = add nsw i64 %indvars.iv1092.ph, -1
  %xtraiter1610 = and i64 %indvars.iv1092.ph, 3   ; 2 uses
  %lcmp.mod1611.not = icmp eq i64 %xtraiter1610, 0
  br i1 %lcmp.mod1611.not, label %scalar.ph1498.prol.loopexit, label %scalar.ph1498.prol

scalar.ph1498.prol:                               ; preds = %scalar.ph1498.preheader, %scalar.ph1498.prol
  %indvars.iv1092.prol = phi i64 [ %i.aow, %scalar.ph1498.prol ], [ %indvars.iv1092.ph, %scalar.ph1498.preheader ] ; 3 uses
  %prol.iter1612 = phi i64 [ %prol.iter1612.next, %scalar.ph1498.prol ], [ 0, %scalar.ph1498.preheader ]
  %i.aow = add nsw i64 %indvars.iv1092.prol, -1   ; 2 uses
  %i.aox = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1092.prol
  %i.aoy = load i64, ptr %i.aox, align 8, !tbaa !91
  %i.aoz = trunc nuw i64 %indvars.iv1092.prol to i32
  %i.apa = add i32 %i.anu, %i.aoz
  %i.apb = zext i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.apb
  store i64 %i.aoy, ptr %i.apc, align 8, !tbaa !91
  %prol.iter1612.next = add i64 %prol.iter1612, 1 ; 2 uses
  %prol.iter1612.cmp.not = icmp eq i64 %prol.iter1612.next, %xtraiter1610
  br i1 %prol.iter1612.cmp.not, label %scalar.ph1498.prol.loopexit, label %scalar.ph1498.prol, !llvm.loop !233

scalar.ph1498.prol.loopexit:                      ; preds = %scalar.ph1498.prol, %scalar.ph1498.preheader
  %indvars.iv1092.unr = phi i64 [ %indvars.iv1092.ph, %scalar.ph1498.preheader ], [ %i.aow, %scalar.ph1498.prol ]
  %i.apd = icmp ult i64 %i.aov, 3
  br i1 %i.apd, label %.lr.ph907.preheader, label %scalar.ph1498

scalar.ph1498:                                    ; preds = %scalar.ph1498.prol.loopexit, %scalar.ph1498
  %indvars.iv1092 = phi i64 [ %i.apz, %scalar.ph1498 ], [ %indvars.iv1092.unr, %scalar.ph1498.prol.loopexit ] ; 6 uses
  %i.ape = add nsw i64 %indvars.iv1092, -1        ; 2 uses
  %i.apf = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1092
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !91
  %i.aph = trunc nuw i64 %indvars.iv1092 to i32
  %i.api = add i32 %i.anu, %i.aph
  %i.apj = zext i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.apj
  store i64 %i.apg, ptr %i.apk, align 8, !tbaa !91
  %i.apl = add nsw i64 %indvars.iv1092, -2        ; 2 uses
  %i.apm = getelementptr [8 x i8], ptr %7, i64 %i.ape
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !91
  %i.apo = trunc nuw i64 %i.ape to i32
  %i.app = add i32 %i.anu, %i.apo
  %i.apq = zext i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.apq
  store i64 %i.apn, ptr %i.apr, align 8, !tbaa !91
  %i.aps = add nsw i64 %indvars.iv1092, -3        ; 2 uses
  %i.apt = getelementptr [8 x i8], ptr %7, i64 %i.apl
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !91
  %i.apv = trunc nuw i64 %i.apl to i32
  %i.apw = add i32 %i.anu, %i.apv
  %i.apx = zext i32 %i.apw to i64
  %i.apy = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.apx
  store i64 %i.apu, ptr %i.apy, align 8, !tbaa !91
  %i.apz = add nsw i64 %indvars.iv1092, -4        ; 2 uses
  %i.aqa = getelementptr [8 x i8], ptr %7, i64 %i.aps
  %i.aqb = load i64, ptr %i.aqa, align 8, !tbaa !91
  %i.aqc = trunc nuw i64 %i.aps to i32
  %i.aqd = add i32 %i.anu, %i.aqc
  %i.aqe = zext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aqe
  store i64 %i.aqb, ptr %i.aqf, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.apz, 0
  br i1 %.not46.i.wide.3, label %.lr.ph907.preheader, label %scalar.ph1498, !llvm.loop !234

.lr.ph907.preheader:                              ; preds = %scalar.ph1498.prol.loopexit, %scalar.ph1498, %middle.block1507, %.preheader726
  %i.aqg = add i32 %i.anp, %i.ans                 ; 2 uses
  store i32 %i.aqg, ptr %7, align 8, !tbaa !138
  %i.aqh = add nsw i32 %i.ans, -1
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = shl nuw nsw i64 %i.aqi, 3
  %i.aqk = add nuw nsw i64 %i.aqj, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.agr, i8 0, i64 %i.aqk, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bb.hz:                                            ; preds = %bb.hy
  %i.aql = zext i32 %i.anp to i64                 ; 10 uses
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aql
  store i64 0, ptr %i.aqm, align 8, !tbaa !91
  %.not.i260891 = icmp eq i32 %i.anp, 0
  %.pre1152 = zext nneg i32 %i.anr to i64         ; 5 uses
  br i1 %.not.i260891, label %._crit_edge895, label %.lr.ph894

.lr.ph894:                                        ; preds = %bb.hz
  %i.aqn = sub nuw nsw i32 64, %i.anr
  %i.aqo = zext nneg i32 %i.aqn to i64            ; 4 uses
end_hunk_4
begin_hunk_5_@yyjson_read_number:bb.a
.thread123:                                       ; preds = %bb.gy, %bb.gz
  %.0897.i125 = phi i32 [ %i.ady, %bb.gz ], [ 64, %bb.gy ]
  %i.aea = add nsw i32 %.0897.i125, -60           ; 2 uses
  %i.aeb = zext nneg i32 %i.aea to i64            ; 2 uses
  %i.aec = lshr i64 %i.adr, %i.aeb
  %i.aed = add nsw i32 %i.aea, %i.adu
  %i.aee = lshr i64 %i.adv, %i.aeb
  %i.aef = add nuw i64 %i.aee, 9
  br label %.thread126

.thread126:                                       ; preds = %.critedge992.i, %.thread123, %bb.gz
  %.0898.i = phi i64 [ %i.aef, %.thread123 ], [ %i.adv, %bb.gz ], [ %i.adv, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread123 ], [ %i.ady, %bb.gz ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.aed, %.thread123 ], [ %i.adu, %bb.gz ], [ %i.adu, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.aec, %.thread123 ], [ %i.adr, %bb.gz ], [ %i.adr, %.critedge992.i ] ; 2 uses
  %i.aeg = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aeg
  %i.aeh = xor i64 %notmask.i, -1
  %i.aei = and i64 %.sroa.025.0.i, %i.aeh
  %i.aej = shl nuw nsw i64 %i.aei, 3              ; 2 uses
  %i.aek = add nsw i32 %.0896.i, -1
  %i.ael = zext nneg i32 %i.aek to i64
  %i.aem = shl nuw nsw i64 8, %i.ael              ; 2 uses
  %i.aen = lshr i64 %.sroa.025.0.i, %i.aeg
  %i.aeo = add i64 %i.aem, %.0898.i
  %i.aep = icmp uge i64 %i.aej, %i.aeo            ; 2 uses
  %i.aeq = zext i1 %i.aep to i64
  %i.aer = add nuw nsw i64 %i.aen, %i.aeq         ; 3 uses
  %i.aes = icmp eq i64 %i.aer, 0
  br i1 %i.aes, label %bb.hi, label %bb.ha, !prof !8

bb.ha:                                            ; preds = %.thread126
  %i.aet = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.aeu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.aer, i1 true) ; 2 uses
  %i.aev = trunc nuw nsw i64 %i.aeu to i32
  %i.aew = shl i64 %i.aer, %i.aeu
  %i.aex = lshr i64 %i.aew, 11                    ; 2 uses
  %i.aey = sub nsw i32 %i.aet, %i.aev             ; 5 uses
  %i.aez = icmp sgt i32 %i.aey, 960
  br i1 %i.aez, label %diy_fp_to_ieee_raw.exit, label %bb.hb, !prof !8

bb.hb:                                            ; preds = %bb.ha
  %i.afa = icmp sgt i32 %i.aey, -1086
  br i1 %i.afa, label %bb.hc, label %bb.hd, !prof !25

bb.hc:                                            ; preds = %bb.hb
  %i.afb = add nsw i32 %i.aey, 1086
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = shl nuw nsw i64 %i.afc, 52
  %i.afe = and i64 %i.aex, 4503599627370495
  %i.aff = or disjoint i64 %i.afd, %i.afe
  br label %bb.hi

bb.hd:                                            ; preds = %bb.hb
  %i.afg = icmp samesign ugt i32 %i.aey, -1138
  br i1 %i.afg, label %bb.he, label %bb.hi, !prof !25

bb.he:                                            ; preds = %bb.hd
  %i.afh = sub nuw nsw i32 -1085, %i.aey
  %i.afi = zext nneg i32 %i.afh to i64
  %i.afj = lshr i64 %i.aex, %i.afi
  br label %bb.hi

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.ha
  %i.afk = and i32 %2, 128
  %.not180 = icmp eq i32 %i.afk, 0
  br i1 %.not180, label %bb.hg, label %bb.hf, !prof !25

bb.hf:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.afl = ptrtoint ptr %.33.i to i64
  %i.afm = sub i64 %i.afl, %i.f
  %i.afn = shl i64 %i.afm, 8
  %i.afo = or disjoint i64 %i.afn, 1
  store i64 %i.afo, ptr %1, align 8, !tbaa !79
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.afp, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.hg:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.afq = and i32 %2, 16
  %.not181 = icmp eq i32 %i.afq, 0
  br i1 %.not181, label %read_num.exit, label %bb.hh, !prof !25

bb.hh:                                            ; preds = %bb.hg
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.afr = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.afr, ptr %i.afs, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.hi:                                            ; preds = %.thread126, %bb.hc, %bb.he, %bb.hd
  %.0.i28.ph = phi i64 [ 0, %bb.hd ], [ %i.afj, %bb.he ], [ %i.aff, %bb.hc ], [ 0, %.thread126 ] ; 7 uses
  %i.aft = sub i64 %i.aem, %.0898.i
  %.not987.i = icmp ule i64 %i.aej, %i.aft
  %spec.select.i = or i1 %.not987.i, %i.aep
  br i1 %spec.select.i, label %bb.hj, label %bb.hk, !prof !25

bb.hj:                                            ; preds = %bb.hi
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.afu = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.afv = or disjoint i64 %.0.i28.ph, %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.afv, ptr %i.afw, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.hk:                                            ; preds = %bb.hi
  %.not988.i = icmp samesign ult i64 %.0.i28.ph, 4503599627370496 ; 2 uses
  %i.afx = and i64 %.0.i28.ph, 4503599627370495
  %i.afy = or disjoint i64 %i.afx, 4503599627370496
  %i.afz = lshr i64 %.0.i28.ph, 52
  %i.aga = trunc nuw nsw i64 %i.afz to i32
  %i.agb = add nsw i32 %i.aga, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.agb ; 5 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i28.ph, i64 %i.afy
  %i.agc = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.agd = or disjoint i64 %i.agc, 1
  call fastcc void @bigint_set_buf(ptr noundef %5, i64 noundef %.22894.i, ptr noundef %i.a, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i)
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.agd, ptr %i.age, align 8, !tbaa !91
  %i.agf = load i32, ptr %i.a, align 4, !tbaa !114 ; 6 uses
  %i.agg = icmp sgt i32 %i.agf, -1
  br i1 %i.agg, label %.preheader198, label %bb.hs

.preheader198:                                    ; preds = %bb.hk
  %.promoted288 = load i32, ptr %5, align 8       ; 2 uses
  %i.agh = icmp samesign ugt i32 %i.agf, 18
  br i1 %i.agh, label %.lr.ph291, label %._crit_edge292

.lr.ph291:                                        ; preds = %.preheader198
  %i.agi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph291, %bigint_mul_u64.exit62
  %.0.i29290 = phi i32 [ %i.agf, %.lr.ph291 ], [ %i.ahw, %bigint_mul_u64.exit62 ] ; 2 uses
  %i.agj = phi i32 [ %.promoted288, %.lr.ph291 ], [ %i.ahv, %bigint_mul_u64.exit62 ] ; 9 uses
  %.not346 = icmp eq i32 %i.agj, 0
  br i1 %.not346, label %._crit_edge278, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %bb.hl
  %wide.trip.count392 = zext i32 %i.agj to i64
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %bb.hm
  %indvars.iv389 = phi i64 [ 0, %.lr.ph277.preheader ], [ %indvars.iv.next390, %bb.hm ] ; 3 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv389
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !91
  %.not.i61 = icmp eq i64 %i.agl, 0
  br i1 %.not.i61, label %bb.hm, label %._crit_edge278.loopexit

bb.hm:                                            ; preds = %.lr.ph277
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %bigint_mul_u64.exit62, label %.lr.ph277, !llvm.loop !135

._crit_edge278.loopexit:                          ; preds = %.lr.ph277
  %i.agm = trunc nuw i64 %indvars.iv389 to i32
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.loopexit, %bb.hl
  %.018.i57.lcssa = phi i32 [ 0, %bb.hl ], [ %i.agm, %._crit_edge278.loopexit ] ; 2 uses
  %i.agn = icmp ult i32 %.018.i57.lcssa, %i.agj
  br i1 %i.agn, label %.lr.ph285.preheader, label %bigint_mul_u64.exit62

.lr.ph285.preheader:                              ; preds = %._crit_edge278
  %i.ago = zext i32 %.018.i57.lcssa to i64        ; 4 uses
  %wide.trip.count397 = zext i32 %i.agj to i64    ; 2 uses
  %i.agp = sub nsw i64 %wide.trip.count397, %i.ago ; 3 uses
  %xtraiter745 = and i64 %i.agp, 1
  %i.agq = add nsw i64 %wide.trip.count397, -1
  %i.agr = icmp eq i64 %i.agq, %i.ago
  br i1 %i.agr, label %.lr.ph285.epil.preheader, label %.lr.ph285.preheader.new

.lr.ph285.preheader.new:                          ; preds = %.lr.ph285.preheader
  %unroll_iter750 = and i64 %i.agp, -2
  br label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph285, %.lr.ph285.preheader.new
  %indvars.iv394 = phi i64 [ %i.ago, %.lr.ph285.preheader.new ], [ %indvars.iv.next395.1, %.lr.ph285 ] ; 3 uses
  %.0.i59283 = phi i64 [ 0, %.lr.ph285.preheader.new ], [ %i.ahh, %.lr.ph285 ]
  %niter751 = phi i64 [ 0, %.lr.ph285.preheader.new ], [ %niter751.next.1, %.lr.ph285 ]
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv394 ; 2 uses
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !91
  %i.agu = zext i64 %i.agt to i128
  %i.agv = mul nuw i128 %i.agu, 10000000000000000000
  %i.agw = zext i64 %.0.i59283 to i128
  %i.agx = add nuw i128 %i.agv, %i.agw            ; 2 uses
  %i.agy = lshr i128 %i.agx, 64
  %i.agz = trunc i128 %i.agx to i64
  store i64 %i.agz, ptr %i.ags, align 8, !tbaa !91
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv394
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 8 ; 2 uses
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !91
  %i.ahd = zext i64 %i.ahc to i128
  %i.ahe = mul nuw i128 %i.ahd, 10000000000000000000
  %i.ahf = add nuw i128 %i.ahe, %i.agy            ; 2 uses
  %i.ahg = lshr i128 %i.ahf, 64                   ; 2 uses
  %i.ahh = trunc nuw i128 %i.ahg to i64           ; 3 uses
  %i.ahi = trunc i128 %i.ahf to i64
  store i64 %i.ahi, ptr %i.ahb, align 8, !tbaa !91
  %indvars.iv.next395.1 = add nuw nsw i64 %indvars.iv394, 2 ; 2 uses
  %niter751.next.1 = add i64 %niter751, 2         ; 2 uses
  %niter751.ncmp.1 = icmp eq i64 %niter751.next.1, %unroll_iter750
  br i1 %niter751.ncmp.1, label %._crit_edge286.unr-lcssa, label %.lr.ph285, !llvm.loop !136

._crit_edge286.unr-lcssa:                         ; preds = %.lr.ph285
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %._crit_edge286, label %.lr.ph285.epil.preheader

.lr.ph285.epil.preheader:                         ; preds = %._crit_edge286.unr-lcssa, %.lr.ph285.preheader
  %indvars.iv394.epil.init = phi i64 [ %i.ago, %.lr.ph285.preheader ], [ %indvars.iv.next395.1, %._crit_edge286.unr-lcssa ]
  %.0.i59283.epil.init = phi i64 [ 0, %.lr.ph285.preheader ], [ %i.ahh, %._crit_edge286.unr-lcssa ]
  %lcmp.mod749 = trunc i64 %i.agp to i1
  call void @llvm.assume(i1 %lcmp.mod749)
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %indvars.iv394.epil.init ; 2 uses
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !91
  %i.ahl = zext i64 %i.ahk to i128
  %i.ahm = mul nuw i128 %i.ahl, 10000000000000000000
  %i.ahn = zext i64 %.0.i59283.epil.init to i128
  %i.aho = add nuw i128 %i.ahm, %i.ahn            ; 2 uses
  %i.ahp = lshr i128 %i.aho, 64                   ; 2 uses
  %i.ahq = trunc nuw i128 %i.ahp to i64
  %i.ahr = trunc i128 %i.aho to i64
  store i64 %i.ahr, ptr %i.ahj, align 8, !tbaa !91
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge286.unr-lcssa, %.lr.ph285.epil.preheader
  %.lcssa707 = phi i128 [ %i.ahg, %._crit_edge286.unr-lcssa ], [ %i.ahp, %.lr.ph285.epil.preheader ]
  %.lcssa706 = phi i64 [ %i.ahh, %._crit_edge286.unr-lcssa ], [ %i.ahq, %.lr.ph285.epil.preheader ]
  %.not19.i60 = icmp eq i128 %.lcssa707, 0
  br i1 %.not19.i60, label %bigint_mul_u64.exit62, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge286
  %i.ahs = add i32 %i.agj, 1
  %i.aht = zext i32 %i.agj to i64
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %i.aht
  store i64 %.lcssa706, ptr %i.ahu, align 8, !tbaa !91
  br label %bigint_mul_u64.exit62

bigint_mul_u64.exit62:                            ; preds = %bb.hm, %._crit_edge278, %._crit_edge286, %bb.hn
  %i.ahv = phi i32 [ %i.agj, %._crit_edge286 ], [ %i.ahs, %bb.hn ], [ %i.agj, %._crit_edge278 ], [ %i.agj, %bb.hm ] ; 2 uses
  %i.ahw = add nsw i32 %.0.i29290, -19            ; 2 uses
  %i.ahx = icmp sgt i32 %.0.i29290, 37
  br i1 %i.ahx, label %bb.hl, label %._crit_edge292, !llvm.loop !137

._crit_edge292:                                   ; preds = %bigint_mul_u64.exit62, %.preheader198
  %i.ahy = phi i32 [ %.promoted288, %.preheader198 ], [ %i.ahv, %bigint_mul_u64.exit62 ] ; 7 uses
  %.0.i29.lcssa = phi i32 [ %i.agf, %.preheader198 ], [ %i.ahw, %bigint_mul_u64.exit62 ] ; 2 uses
  store i32 %i.ahy, ptr %5, align 8
  %.not.i30 = icmp eq i32 %.0.i29.lcssa, 0
  br i1 %.not.i30, label %bigint_mul_pow10.exit, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge292
  %i.ahz = sext i32 %.0.i29.lcssa to i64
  %i.aia = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.ahz
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !91
  %i.aic = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not347 = icmp eq i32 %i.ahy, 0
  br i1 %.not347, label %._crit_edge298, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %bb.ho
  %wide.trip.count402 = zext i32 %i.ahy to i64
  br label %.lr.ph297

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.hp
  %indvars.iv399 = phi i64 [ 0, %.lr.ph297.preheader ], [ %indvars.iv.next400, %bb.hp ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %indvars.iv399
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !91
  %.not.i67 = icmp eq i64 %i.aie, 0
  br i1 %.not.i67, label %bb.hp, label %._crit_edge298.loopexit

bb.hp:                                            ; preds = %.lr.ph297
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond403.not = icmp eq i64 %indvars.iv.next400, %wide.trip.count402
  br i1 %exitcond403.not, label %bigint_mul_pow10.exit, label %.lr.ph297, !llvm.loop !135

._crit_edge298.loopexit:                          ; preds = %.lr.ph297
  %i.aif = trunc nuw i64 %indvars.iv399 to i32
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.ho
  %.018.i63.lcssa = phi i32 [ 0, %bb.ho ], [ %i.aif, %._crit_edge298.loopexit ] ; 2 uses
  %i.aig = icmp ult i32 %.018.i63.lcssa, %i.ahy
  br i1 %i.aig, label %.lr.ph305, label %bigint_mul_pow10.exit

.lr.ph305:                                        ; preds = %._crit_edge298
  %i.aih = zext i64 %i.aib to i128                ; 3 uses
  %i.aii = zext i32 %.018.i63.lcssa to i64        ; 4 uses
  %wide.trip.count407 = zext i32 %i.ahy to i64    ; 2 uses
  %i.aij = sub nsw i64 %wide.trip.count407, %i.aii ; 3 uses
  %xtraiter753 = and i64 %i.aij, 1
  %i.aik = add nsw i64 %wide.trip.count407, -1
  %i.ail = icmp eq i64 %i.aik, %i.aii
  br i1 %i.ail, label %.epil.preheader752, label %.lr.ph305.new

.lr.ph305.new:                                    ; preds = %.lr.ph305
  %unroll_iter758 = and i64 %i.aij, -2
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %.lr.ph305.new
  %indvars.iv404 = phi i64 [ %i.aii, %.lr.ph305.new ], [ %indvars.iv.next405.1, %bb.hq ] ; 3 uses
  %.0.i65303 = phi i64 [ 0, %.lr.ph305.new ], [ %i.ajb, %bb.hq ]
  %niter759 = phi i64 [ 0, %.lr.ph305.new ], [ %niter759.next.1, %bb.hq ]
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %indvars.iv404 ; 2 uses
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !91
  %i.aio = zext i64 %i.ain to i128
  %i.aip = mul nuw i128 %i.aio, %i.aih
  %i.aiq = zext i64 %.0.i65303 to i128
  %i.air = add nuw i128 %i.aip, %i.aiq            ; 2 uses
  %i.ais = lshr i128 %i.air, 64
  %i.ait = trunc i128 %i.air to i64
  store i64 %i.ait, ptr %i.aim, align 8, !tbaa !91
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %indvars.iv404
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8 ; 2 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !91
  %i.aix = zext i64 %i.aiw to i128
  %i.aiy = mul nuw i128 %i.aix, %i.aih
  %i.aiz = add nuw i128 %i.aiy, %i.ais            ; 2 uses
  %i.aja = lshr i128 %i.aiz, 64                   ; 2 uses
  %i.ajb = trunc nuw i128 %i.aja to i64           ; 3 uses
  %i.ajc = trunc i128 %i.aiz to i64
  store i64 %i.ajc, ptr %i.aiv, align 8, !tbaa !91
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404, 2 ; 2 uses
  %niter759.next.1 = add i64 %niter759, 2         ; 2 uses
  %niter759.ncmp.1 = icmp eq i64 %niter759.next.1, %unroll_iter758
  br i1 %niter759.ncmp.1, label %._crit_edge306.unr-lcssa, label %bb.hq, !llvm.loop !136

._crit_edge306.unr-lcssa:                         ; preds = %bb.hq
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  br i1 %lcmp.mod754.not, label %._crit_edge306, label %.epil.preheader752

.epil.preheader752:                               ; preds = %._crit_edge306.unr-lcssa, %.lr.ph305
  %indvars.iv404.epil.init = phi i64 [ %i.aii, %.lr.ph305 ], [ %indvars.iv.next405.1, %._crit_edge306.unr-lcssa ]
  %.0.i65303.epil.init = phi i64 [ 0, %.lr.ph305 ], [ %i.ajb, %._crit_edge306.unr-lcssa ]
  %lcmp.mod757 = trunc i64 %i.aij to i1
  call void @llvm.assume(i1 %lcmp.mod757)
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %indvars.iv404.epil.init ; 2 uses
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !91
  %i.ajf = zext i64 %i.aje to i128
  %i.ajg = mul nuw i128 %i.ajf, %i.aih
  %i.ajh = zext i64 %.0.i65303.epil.init to i128
  %i.aji = add nuw i128 %i.ajg, %i.ajh            ; 2 uses
  %i.ajj = lshr i128 %i.aji, 64                   ; 2 uses
  %i.ajk = trunc nuw i128 %i.ajj to i64
  %i.ajl = trunc i128 %i.aji to i64
  store i64 %i.ajl, ptr %i.ajd, align 8, !tbaa !91
  br label %._crit_edge306

._crit_edge306:                                   ; preds = %._crit_edge306.unr-lcssa, %.epil.preheader752
  %.lcssa703 = phi i128 [ %i.aja, %._crit_edge306.unr-lcssa ], [ %i.ajj, %.epil.preheader752 ]
  %.lcssa = phi i64 [ %i.ajb, %._crit_edge306.unr-lcssa ], [ %i.ajk, %.epil.preheader752 ]
  %.not19.i66 = icmp eq i128 %.lcssa703, 0
  br i1 %.not19.i66, label %bigint_mul_pow10.exit, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge306
  %i.ajm = add i32 %i.ahy, 1
  store i32 %i.ajm, ptr %5, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit.sink.split

bb.hs:                                            ; preds = %bb.hk
  %i.ajn = sub nsw i32 0, %i.agf                  ; 2 uses
  %i.ajo = icmp samesign ult i32 %i.agf, -18
  br i1 %i.ajo, label %.lr.ph258, label %.thread566

.thread566:                                       ; preds = %bb.hs
  store i32 1, ptr %6, align 8
  %i.ajp = zext nneg i32 %i.ajn to i64
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.ajp
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !91
  br label %.lr.ph264.preheader

.lr.ph258:                                        ; preds = %bb.hs, %bigint_mul_u64.exit
  %.0.i31256 = phi i32 [ %i.alf, %bigint_mul_u64.exit ], [ %i.ajn, %bb.hs ] ; 2 uses
  %i.ajs = phi i32 [ %i.ale, %bigint_mul_u64.exit ], [ 1, %bb.hs ] ; 9 uses
  %.not344 = icmp eq i32 %i.ajs, 0
  br i1 %.not344, label %._crit_edge245, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %.lr.ph258
  %wide.trip.count = zext i32 %i.ajs to i64
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %bb.ht
  %indvars.iv = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next, %bb.ht ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !91
  %.not.i50 = icmp eq i64 %i.aju, 0
  br i1 %.not.i50, label %bb.ht, label %._crit_edge245.loopexit

bb.ht:                                            ; preds = %.lr.ph244
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit, label %.lr.ph244, !llvm.loop !135

._crit_edge245.loopexit:                          ; preds = %.lr.ph244
  %i.ajv = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge245

._crit_edge245:                                   ; preds = %._crit_edge245.loopexit, %.lr.ph258
  %.018.i.lcssa = phi i32 [ 0, %.lr.ph258 ], [ %i.ajv, %._crit_edge245.loopexit ] ; 2 uses
  %i.ajw = icmp ult i32 %.018.i.lcssa, %i.ajs
  br i1 %i.ajw, label %.lr.ph252.preheader, label %bigint_mul_u64.exit

.lr.ph252.preheader:                              ; preds = %._crit_edge245
  %i.ajx = zext i32 %.018.i.lcssa to i64          ; 4 uses
  %wide.trip.count377 = zext i32 %i.ajs to i64    ; 2 uses
  %i.ajy = sub nsw i64 %wide.trip.count377, %i.ajx ; 3 uses
  %xtraiter = and i64 %i.ajy, 1
  %i.ajz = add nsw i64 %wide.trip.count377, -1
  %i.aka = icmp eq i64 %i.ajz, %i.ajx
  br i1 %i.aka, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter = and i64 %i.ajy, -2
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %indvars.iv374 = phi i64 [ %i.ajx, %.lr.ph252.preheader.new ], [ %indvars.iv.next375.1, %.lr.ph252 ] ; 3 uses
  %.0.i49250 = phi i64 [ 0, %.lr.ph252.preheader.new ], [ %i.akq, %.lr.ph252 ]
  %niter = phi i64 [ 0, %.lr.ph252.preheader.new ], [ %niter.next.1, %.lr.ph252 ]
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv374 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !91
  %i.akd = zext i64 %i.akc to i128
  %i.ake = mul nuw i128 %i.akd, 10000000000000000000
  %i.akf = zext i64 %.0.i49250 to i128
  %i.akg = add nuw i128 %i.ake, %i.akf            ; 2 uses
  %i.akh = lshr i128 %i.akg, 64
  %i.aki = trunc i128 %i.akg to i64
  store i64 %i.aki, ptr %i.akb, align 8, !tbaa !91
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv374
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !91
  %i.akm = zext i64 %i.akl to i128
  %i.akn = mul nuw i128 %i.akm, 10000000000000000000
  %i.ako = add nuw i128 %i.akn, %i.akh            ; 2 uses
  %i.akp = lshr i128 %i.ako, 64                   ; 2 uses
  %i.akq = trunc nuw i128 %i.akp to i64           ; 3 uses
  %i.akr = trunc i128 %i.ako to i64
  store i64 %i.akr, ptr %i.akk, align 8, !tbaa !91
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge253.unr-lcssa, label %.lr.ph252, !llvm.loop !136

._crit_edge253.unr-lcssa:                         ; preds = %.lr.ph252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge253, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %._crit_edge253.unr-lcssa, %.lr.ph252.preheader
  %indvars.iv374.epil.init = phi i64 [ %i.ajx, %.lr.ph252.preheader ], [ %indvars.iv.next375.1, %._crit_edge253.unr-lcssa ]
  %.0.i49250.epil.init = phi i64 [ 0, %.lr.ph252.preheader ], [ %i.akq, %._crit_edge253.unr-lcssa ]
  %lcmp.mod737 = trunc i64 %i.ajy to i1
  call void @llvm.assume(i1 %lcmp.mod737)
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv374.epil.init ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !91
  %i.aku = zext i64 %i.akt to i128
  %i.akv = mul nuw i128 %i.aku, 10000000000000000000
  %i.akw = zext i64 %.0.i49250.epil.init to i128
  %i.akx = add nuw i128 %i.akv, %i.akw            ; 2 uses
  %i.aky = lshr i128 %i.akx, 64                   ; 2 uses
  %i.akz = trunc nuw i128 %i.aky to i64
  %i.ala = trunc i128 %i.akx to i64
  store i64 %i.ala, ptr %i.aks, align 8, !tbaa !91
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.unr-lcssa, %.lr.ph252.epil.preheader
  %.lcssa716 = phi i128 [ %i.akp, %._crit_edge253.unr-lcssa ], [ %i.aky, %.lr.ph252.epil.preheader ]
  %.lcssa715 = phi i64 [ %i.akq, %._crit_edge253.unr-lcssa ], [ %i.akz, %.lr.ph252.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa716, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.hu

bb.hu:                                            ; preds = %._crit_edge253
  %i.alb = add i32 %i.ajs, 1
  %i.alc = zext i32 %i.ajs to i64
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.alc
  store i64 %.lcssa715, ptr %i.ald, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.ht, %._crit_edge245, %._crit_edge253, %bb.hu
  %i.ale = phi i32 [ %i.ajs, %._crit_edge253 ], [ %i.alb, %bb.hu ], [ %i.ajs, %._crit_edge245 ], [ %i.ajs, %bb.ht ] ; 5 uses
  %i.alf = add nsw i32 %.0.i31256, -19            ; 3 uses
  %i.alg = icmp sgt i32 %.0.i31256, 37
  br i1 %i.alg, label %.lr.ph258, label %._crit_edge259, !llvm.loop !137

._crit_edge259:                                   ; preds = %bigint_mul_u64.exit
  store i32 %i.ale, ptr %6, align 8
  %.not.i32 = icmp eq i32 %i.alf, 0
  br i1 %.not.i32, label %bigint_mul_pow10.exit, label %bb.hv

bb.hv:                                            ; preds = %._crit_edge259
  %i.alh = sext i32 %i.alf to i64
  %i.ali = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.alh
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !91 ; 2 uses
  %.not345 = icmp eq i32 %i.ale, 0
  br i1 %.not345, label %._crit_edge265, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %.thread566, %bb.hv
  %i.alk = phi i64 [ %i.ajr, %.thread566 ], [ %i.alj, %bb.hv ]
  %i.all = phi i32 [ 1, %.thread566 ], [ %i.ale, %bb.hv ] ; 3 uses
  %wide.trip.count382 = zext i32 %i.all to i64
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.hw
  %indvars.iv379 = phi i64 [ 0, %.lr.ph264.preheader ], [ %indvars.iv.next380, %bb.hw ] ; 3 uses
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv379
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !91
  %.not.i55 = icmp eq i64 %i.aln, 0
  br i1 %.not.i55, label %bb.hw, label %._crit_edge265.loopexit

bb.hw:                                            ; preds = %.lr.ph264
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %bigint_mul_pow10.exit, label %.lr.ph264, !llvm.loop !135

._crit_edge265.loopexit:                          ; preds = %.lr.ph264
  %i.alo = trunc nuw i64 %indvars.iv379 to i32
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %._crit_edge265.loopexit, %bb.hv
  %i.alp = phi i64 [ %i.alj, %bb.hv ], [ %i.alk, %._crit_edge265.loopexit ]
  %i.alq = phi i32 [ 0, %bb.hv ], [ %i.all, %._crit_edge265.loopexit ] ; 6 uses
  %.018.i51.lcssa = phi i32 [ 0, %bb.hv ], [ %i.alo, %._crit_edge265.loopexit ] ; 2 uses
  %i.alr = icmp ult i32 %.018.i51.lcssa, %i.alq
  br i1 %i.alr, label %.lr.ph272, label %bigint_mul_pow10.exit

.lr.ph272:                                        ; preds = %._crit_edge265
  %i.als = zext i64 %i.alp to i128                ; 3 uses
  %i.alt = zext i32 %.018.i51.lcssa to i64        ; 4 uses
  %wide.trip.count387 = zext i32 %i.alq to i64    ; 2 uses
  %i.alu = sub nsw i64 %wide.trip.count387, %i.alt ; 3 uses
  %xtraiter738 = and i64 %i.alu, 1
  %i.alv = add nsw i64 %wide.trip.count387, -1
  %i.alw = icmp eq i64 %i.alv, %i.alt
  br i1 %i.alw, label %.epil.preheader, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter743 = and i64 %i.alu, -2
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hx, %.lr.ph272.new
  %indvars.iv384 = phi i64 [ %i.alt, %.lr.ph272.new ], [ %indvars.iv.next385.1, %bb.hx ] ; 3 uses
  %.0.i53270 = phi i64 [ 0, %.lr.ph272.new ], [ %i.amm, %bb.hx ]
  %niter744 = phi i64 [ 0, %.lr.ph272.new ], [ %niter744.next.1, %bb.hx ]
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv384 ; 2 uses
  %i.aly = load i64, ptr %i.alx, align 8, !tbaa !91
  %i.alz = zext i64 %i.aly to i128
  %i.ama = mul nuw i128 %i.alz, %i.als
  %i.amb = zext i64 %.0.i53270 to i128
  %i.amc = add nuw i128 %i.ama, %i.amb            ; 2 uses
  %i.amd = lshr i128 %i.amc, 64
  %i.ame = trunc i128 %i.amc to i64
  store i64 %i.ame, ptr %i.alx, align 8, !tbaa !91
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv384
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 8 ; 2 uses
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !91
  %i.ami = zext i64 %i.amh to i128
  %i.amj = mul nuw i128 %i.ami, %i.als
  %i.amk = add nuw i128 %i.amj, %i.amd            ; 2 uses
  %i.aml = lshr i128 %i.amk, 64                   ; 2 uses
  %i.amm = trunc nuw i128 %i.aml to i64           ; 3 uses
  %i.amn = trunc i128 %i.amk to i64
  store i64 %i.amn, ptr %i.amg, align 8, !tbaa !91
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %niter744.next.1 = add i64 %niter744, 2         ; 2 uses
  %niter744.ncmp.1 = icmp eq i64 %niter744.next.1, %unroll_iter743
  br i1 %niter744.ncmp.1, label %._crit_edge273.unr-lcssa, label %bb.hx, !llvm.loop !136

._crit_edge273.unr-lcssa:                         ; preds = %bb.hx
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %._crit_edge273, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge273.unr-lcssa, %.lr.ph272
  %indvars.iv384.epil.init = phi i64 [ %i.alt, %.lr.ph272 ], [ %indvars.iv.next385.1, %._crit_edge273.unr-lcssa ]
  %.0.i53270.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.amm, %._crit_edge273.unr-lcssa ]
  %lcmp.mod742 = trunc i64 %i.alu to i1
  call void @llvm.assume(i1 %lcmp.mod742)
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv384.epil.init ; 2 uses
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !91
  %i.amq = zext i64 %i.amp to i128
  %i.amr = mul nuw i128 %i.amq, %i.als
  %i.ams = zext i64 %.0.i53270.epil.init to i128
  %i.amt = add nuw i128 %i.amr, %i.ams            ; 2 uses
  %i.amu = lshr i128 %i.amt, 64                   ; 2 uses
  %i.amv = trunc nuw i128 %i.amu to i64
  %i.amw = trunc i128 %i.amt to i64
  store i64 %i.amw, ptr %i.amo, align 8, !tbaa !91
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.unr-lcssa, %.epil.preheader
  %.lcssa711 = phi i128 [ %i.aml, %._crit_edge273.unr-lcssa ], [ %i.amu, %.epil.preheader ]
  %.lcssa710 = phi i64 [ %i.amm, %._crit_edge273.unr-lcssa ], [ %i.amv, %.epil.preheader ]
  %.not19.i54 = icmp eq i128 %.lcssa711, 0
  br i1 %.not19.i54, label %bigint_mul_pow10.exit, label %bb.hy

bb.hy:                                            ; preds = %._crit_edge273
  %i.amx = add i32 %i.alq, 1
  br label %bigint_mul_pow10.exit.sink.split

bigint_mul_pow10.exit.sink.split:                 ; preds = %bb.hr, %bb.hy
  %.sink = phi i32 [ %i.alq, %bb.hy ], [ %i.ahy, %bb.hr ]
  %i.amy = phi ptr [ %6, %bb.hy ], [ %5, %bb.hr ]
  %.lcssa580.sink = phi i64 [ %.lcssa710, %bb.hy ], [ %.lcssa, %bb.hr ]
  %.ph = phi i32 [ %i.amx, %bb.hy ], [ 1, %bb.hr ]
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.ana = zext i32 %.sink to i64
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.amz, i64 %i.ana
  store i64 %.lcssa580.sink, ptr %i.anb, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit

bigint_mul_pow10.exit:                            ; preds = %bb.hw, %bb.hp, %bigint_mul_pow10.exit.sink.split, %._crit_edge265, %._crit_edge298, %._crit_edge259, %._crit_edge273, %._crit_edge292, %._crit_edge306
  %i.anc = phi i32 [ %i.ale, %._crit_edge259 ], [ %i.alq, %._crit_edge273 ], [ %i.alq, %._crit_edge265 ], [ 1, %._crit_edge292 ], [ 1, %._crit_edge306 ], [ 1, %bb.hp ], [ %.ph, %bigint_mul_pow10.exit.sink.split ], [ 1, %._crit_edge298 ], [ %i.all, %bb.hw ] ; 16 uses
  %i.and = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.and, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bigint_mul_pow10.exit
  %i.ane = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.anf = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.ang = icmp eq i32 %i.ane, 0
  br i1 %i.ang, label %.preheader193, label %bb.ia, !prof !8

.preheader193:                                    ; preds = %bb.hz
  %.not46.i334 = icmp eq i32 %i.anc, 0
  br i1 %.not46.i334, label %.lr.ph341.preheader, label %.lr.ph336

.lr.ph336:                                        ; preds = %.preheader193
  %i.anh = add nsw i32 %i.anf, -1                 ; 6 uses
  %i.ani = zext i32 %i.anc to i64                 ; 9 uses
  %min.iters.check691 = icmp ult i32 %i.anc, 30
  br i1 %min.iters.check691, label %scalar.ph690.preheader, label %vector.scevcheck687

vector.scevcheck687:                              ; preds = %.lr.ph336
  %i.anj = add nsw i64 %i.ani, -1                 ; 2 uses
  %i.ank = add i32 %i.anc, %i.anf
  %i.anl = add i32 %i.ank, -1
  %i.anm = trunc i64 %i.anj to i32
  %i.ann = icmp ult i32 %i.anl, %i.anm
  %i.ano = icmp ugt i64 %i.anj, 4294967295
  %i.anp = or i1 %i.ann, %i.ano
  br i1 %i.anp, label %scalar.ph690.preheader, label %vector.memcheck688

vector.memcheck688:                               ; preds = %vector.scevcheck687
  %i.anq = add i32 %i.anc, %i.anf
  %i.anr = add i32 %i.anq, -1
  %i.ans = zext i32 %i.anr to i64
  %i.ant = sub nsw i64 %i.ani, %i.ans
  %i.anu = shl nsw i64 %i.ant, 3
  %i.anv = add nsw i64 %i.anu, -9
  %diff.check689 = icmp ult i64 %i.anv, 31
  br i1 %diff.check689, label %scalar.ph690.preheader, label %vector.ph692

vector.ph692:                                     ; preds = %vector.memcheck688
  %n.vec693 = and i64 %i.ani, 4294967292          ; 2 uses
  %i.anw = and i64 %i.ani, 3
  br label %vector.body694

vector.body694:                                   ; preds = %vector.body694, %vector.ph692
  %index695 = phi i64 [ 0, %vector.ph692 ], [ %index.next698, %vector.body694 ] ; 2 uses
  %i.anx = sub i64 %i.ani, %index695              ; 2 uses
  %i.any = getelementptr [8 x i8], ptr %6, i64 %i.anx ; 2 uses
  %i.anz = getelementptr i8, ptr %i.any, i64 -8
  %i.aoa = getelementptr i8, ptr %i.any, i64 -24
  %wide.load696 = load <2 x i64>, ptr %i.anz, align 8, !tbaa !91
  %wide.load697 = load <2 x i64>, ptr %i.aoa, align 8, !tbaa !91
  %i.aob = trunc nuw i64 %i.anx to i32
  %i.aoc = add i32 %i.anh, %i.aob
  %i.aod = zext i32 %i.aoc to i64
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.aod ; 2 uses
  %i.aof = getelementptr inbounds i8, ptr %i.aoe, i64 -8
  %i.aog = getelementptr inbounds i8, ptr %i.aoe, i64 -24
  store <2 x i64> %wide.load696, ptr %i.aof, align 8, !tbaa !91
  store <2 x i64> %wide.load697, ptr %i.aog, align 8, !tbaa !91
  %index.next698 = add nuw i64 %index695, 4       ; 2 uses
  %i.aoh = icmp eq i64 %index.next698, %n.vec693
  br i1 %i.aoh, label %middle.block699, label %vector.body694, !llvm.loop !248

middle.block699:                                  ; preds = %vector.body694
  %cmp.n700 = icmp eq i64 %n.vec693, %i.ani
  br i1 %cmp.n700, label %.lr.ph341.preheader, label %scalar.ph690.preheader

scalar.ph690.preheader:                           ; preds = %vector.memcheck688, %vector.scevcheck687, %.lr.ph336, %middle.block699
  %indvars.iv424.ph = phi i64 [ %i.ani, %vector.memcheck688 ], [ %i.ani, %vector.scevcheck687 ], [ %i.ani, %.lr.ph336 ], [ %i.anw, %middle.block699 ] ; 4 uses
  %i.aoi = add nsw i64 %indvars.iv424.ph, -1
  %xtraiter767 = and i64 %indvars.iv424.ph, 3     ; 2 uses
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %scalar.ph690.prol.loopexit, label %scalar.ph690.prol

scalar.ph690.prol:                                ; preds = %scalar.ph690.preheader, %scalar.ph690.prol
  %indvars.iv424.prol = phi i64 [ %i.aoj, %scalar.ph690.prol ], [ %indvars.iv424.ph, %scalar.ph690.preheader ] ; 3 uses
  %prol.iter769 = phi i64 [ %prol.iter769.next, %scalar.ph690.prol ], [ 0, %scalar.ph690.preheader ]
  %i.aoj = add nsw i64 %indvars.iv424.prol, -1    ; 2 uses
  %i.aok = getelementptr [8 x i8], ptr %6, i64 %indvars.iv424.prol
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !91
  %i.aom = trunc nuw i64 %indvars.iv424.prol to i32
  %i.aon = add i32 %i.anh, %i.aom
  %i.aoo = zext i32 %i.aon to i64
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.aoo
  store i64 %i.aol, ptr %i.aop, align 8, !tbaa !91
  %prol.iter769.next = add i64 %prol.iter769, 1   ; 2 uses
  %prol.iter769.cmp.not = icmp eq i64 %prol.iter769.next, %xtraiter767
  br i1 %prol.iter769.cmp.not, label %scalar.ph690.prol.loopexit, label %scalar.ph690.prol, !llvm.loop !249

scalar.ph690.prol.loopexit:                       ; preds = %scalar.ph690.prol, %scalar.ph690.preheader
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %scalar.ph690.preheader ], [ %i.aoj, %scalar.ph690.prol ]
  %i.aoq = icmp ult i64 %i.aoi, 3
  br i1 %i.aoq, label %.lr.ph341.preheader, label %scalar.ph690

scalar.ph690:                                     ; preds = %scalar.ph690.prol.loopexit, %scalar.ph690
  %indvars.iv424 = phi i64 [ %i.apm, %scalar.ph690 ], [ %indvars.iv424.unr, %scalar.ph690.prol.loopexit ] ; 6 uses
  %i.aor = add nsw i64 %indvars.iv424, -1         ; 2 uses
  %i.aos = getelementptr [8 x i8], ptr %6, i64 %indvars.iv424
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !91
  %i.aou = trunc nuw i64 %indvars.iv424 to i32
  %i.aov = add i32 %i.anh, %i.aou
  %i.aow = zext i32 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.aow
  store i64 %i.aot, ptr %i.aox, align 8, !tbaa !91
  %i.aoy = add nsw i64 %indvars.iv424, -2         ; 2 uses
  %i.aoz = getelementptr [8 x i8], ptr %6, i64 %i.aor
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !91
  %i.apb = trunc nuw i64 %i.aor to i32
  %i.apc = add i32 %i.anh, %i.apb
  %i.apd = zext i32 %i.apc to i64
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.apd
  store i64 %i.apa, ptr %i.ape, align 8, !tbaa !91
  %i.apf = add nsw i64 %indvars.iv424, -3         ; 2 uses
  %i.apg = getelementptr [8 x i8], ptr %6, i64 %i.aoy
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !91
  %i.api = trunc nuw i64 %i.aoy to i32
  %i.apj = add i32 %i.anh, %i.api
  %i.apk = zext i32 %i.apj to i64
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.apk
  store i64 %i.aph, ptr %i.apl, align 8, !tbaa !91
  %i.apm = add nsw i64 %indvars.iv424, -4         ; 2 uses
  %i.apn = getelementptr [8 x i8], ptr %6, i64 %i.apf
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !91
  %i.app = trunc nuw i64 %i.apf to i32
  %i.apq = add i32 %i.anh, %i.app
  %i.apr = zext i32 %i.apq to i64
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.apr
  store i64 %i.apo, ptr %i.aps, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.apm, 0
  br i1 %.not46.i.wide.3, label %.lr.ph341.preheader, label %scalar.ph690, !llvm.loop !250

.lr.ph341.preheader:                              ; preds = %scalar.ph690.prol.loopexit, %scalar.ph690, %middle.block699, %.preheader193
  %i.apt = add i32 %i.anc, %i.anf
  %i.apu = add nsw i32 %i.anf, -1
  %i.apv = zext i32 %i.apu to i64
  %i.apw = shl nuw nsw i64 %i.apv, 3
  %i.apx = add nuw nsw i64 %i.apw, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.age, i8 0, i64 %i.apx, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bb.ia:                                            ; preds = %bb.hz
  %i.apy = zext i32 %i.anc to i64                 ; 10 uses
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.apy
  store i64 0, ptr %i.apz, align 8, !tbaa !91
  %.not.i34325 = icmp eq i32 %i.anc, 0
  %.pre458 = zext nneg i32 %i.ane to i64          ; 5 uses
  br i1 %.not.i34325, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.ia
  %i.aqa = sub nuw nsw i32 64, %i.ane
  %i.aqb = zext nneg i32 %i.aqa to i64            ; 4 uses
  %min.iters.check670 = icmp ult i32 %i.anc, 20
end_hunk_5
begin_hunk_6_@yyjson_incr_read:bb.a
  %i.ahm = add nuw i64 %i.ahl, 9
  br label %.thread3155

.thread3155:                                      ; preds = %.critedge992.i1036, %.thread3152, %bb.hq
  %.0898.i1021 = phi i64 [ %i.ahm, %.thread3152 ], [ %i.ahc, %bb.hq ], [ %i.ahc, %.critedge992.i1036 ] ; 2 uses
  %.0896.i1022 = phi i32 [ 60, %.thread3152 ], [ %i.ahf, %bb.hq ], [ 11, %.critedge992.i1036 ] ; 3 uses
  %.sroa.19.0.in.i1023 = phi i32 [ %i.ahk, %.thread3152 ], [ %i.ahb, %bb.hq ], [ %i.ahb, %.critedge992.i1036 ]
  %.sroa.025.0.i1024 = phi i64 [ %i.ahj, %.thread3152 ], [ %i.agy, %bb.hq ], [ %i.agy, %.critedge992.i1036 ] ; 2 uses
  %i.ahn = zext nneg i32 %.0896.i1022 to i64      ; 2 uses
  %notmask.i1025 = shl nsw i64 -1, %i.ahn
  %i.aho = xor i64 %notmask.i1025, -1
  %i.ahp = and i64 %.sroa.025.0.i1024, %i.aho
  %i.ahq = shl nuw nsw i64 %i.ahp, 3              ; 2 uses
  %i.ahr = add nsw i32 %.0896.i1022, -1
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = shl nuw nsw i64 8, %i.ahs              ; 2 uses
  %i.ahu = lshr i64 %.sroa.025.0.i1024, %i.ahn
  %i.ahv = add i64 %i.aht, %.0898.i1021
  %i.ahw = icmp uge i64 %i.ahq, %i.ahv            ; 2 uses
  %i.ahx = zext i1 %i.ahw to i64
  %i.ahy = add nuw nsw i64 %i.ahu, %i.ahx         ; 3 uses
  %i.ahz = icmp eq i64 %i.ahy, 0
  br i1 %i.ahz, label %bb.ia, label %bb.hr, !prof !8

bb.hr:                                            ; preds = %.thread3155
  %i.aia = add nsw i32 %.sroa.19.0.in.i1023, %.0896.i1022
  %i.aib = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.ahy, i1 true) ; 2 uses
  %i.aic = trunc nuw nsw i64 %i.aib to i32
  %i.aid = shl i64 %i.ahy, %i.aib
  %i.aie = lshr i64 %i.aid, 11                    ; 2 uses
  %i.aif = sub nsw i32 %i.aia, %i.aic             ; 5 uses
  %i.aig = icmp sgt i32 %i.aif, 960
  br i1 %i.aig, label %diy_fp_to_ieee_raw.exit, label %bb.hs, !prof !8

bb.hs:                                            ; preds = %bb.hr
  %i.aih = icmp sgt i32 %i.aif, -1086
  br i1 %i.aih, label %bb.ht, label %bb.hu, !prof !25

bb.ht:                                            ; preds = %bb.hs
  %i.aii = add nsw i32 %i.aif, 1086
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = shl nuw nsw i64 %i.aij, 52
  %i.ail = and i64 %i.aie, 4503599627370495
  %i.aim = or disjoint i64 %i.aik, %i.ail
  br label %bb.ia

bb.hu:                                            ; preds = %bb.hs
  %i.ain = icmp samesign ugt i32 %i.aif, -1138
  br i1 %i.ain, label %bb.hv, label %bb.ia, !prof !25

bb.hv:                                            ; preds = %bb.hu
  %i.aio = sub nuw nsw i32 -1085, %i.aif
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = lshr i64 %i.aie, %i.aip
  br label %bb.ia

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.hr
  %i.air = and i32 %.fr, 128
  %.not3494 = icmp eq i32 %i.air, 0
  br i1 %.not3494, label %bb.hx, label %bb.hw, !prof !25

bb.hw:                                            ; preds = %diy_fp_to_ieee_raw.exit
  store i8 0, ptr %i.f, align 1, !tbaa !81
  %i.ais = ptrtoint ptr %.33.i1008 to i64
  %i.ait = ptrtoint ptr %i.bq to i64
  %i.aiu = sub i64 %i.ais, %i.ait
  %i.aiv = shl i64 %i.aiu, 8
  %i.aiw = or disjoint i64 %i.aiv, 1
  store i64 %i.aiw, ptr %.0617, align 8, !tbaa !79
  %i.aix = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.aix, align 8, !tbaa !81
  store ptr %.33.i1008, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit1117.thread3171

bb.hx:                                            ; preds = %diy_fp_to_ieee_raw.exit
  %i.aiy = and i32 %.fr, 16
  %.not3495 = icmp eq i32 %i.aiy, 0
  br i1 %.not3495, label %bb.hz, label %bb.hy, !prof !25

bb.hy:                                            ; preds = %bb.hx
  store i64 20, ptr %.0617, align 8, !tbaa !79
  %i.aiz = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.aja = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.aiz, ptr %i.aja, align 8, !tbaa !81
  br label %read_num.exit1117.thread3171

bb.hz:                                            ; preds = %bb.hx
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit1117

bb.ia:                                            ; preds = %.thread3155, %bb.ht, %bb.hv, %bb.hu
  %.0.i1497.ph = phi i64 [ 0, %bb.hu ], [ %i.aiq, %bb.hv ], [ %i.aim, %bb.ht ], [ 0, %.thread3155 ] ; 7 uses
  %i.ajb = sub i64 %i.aht, %.0898.i1021
  %.not987.i1027 = icmp ule i64 %i.ahq, %i.ajb
  %spec.select.i1028 = or i1 %.not987.i1027, %i.ahw
  br i1 %spec.select.i1028, label %bb.ib, label %bb.ic, !prof !25

bb.ib:                                            ; preds = %bb.ia
  store i64 20, ptr %.0617, align 8, !tbaa !79
  %i.ajc = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.ajd = or disjoint i64 %.0.i1497.ph, %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.ajd, ptr %i.aje, align 8, !tbaa !81
  br label %read_num.exit1117.thread3171

bb.ic:                                            ; preds = %bb.ia
  %.not988.i1029 = icmp samesign ult i64 %.0.i1497.ph, 4503599627370496 ; 2 uses
  %i.ajf = and i64 %.0.i1497.ph, 4503599627370495
  %i.ajg = or disjoint i64 %i.ajf, 4503599627370496
  %i.ajh = lshr i64 %.0.i1497.ph, 52
  %i.aji = trunc nuw nsw i64 %i.ajh to i32
  %i.ajj = add nsw i32 %i.aji, -1076
  %.sroa.9.0.i1030 = select i1 %.not988.i1029, i32 -1075, i32 %i.ajj ; 5 uses
  %.sroa.018.0.i1031 = select i1 %.not988.i1029, i64 %.0.i1497.ph, i64 %i.ajg
  %i.ajk = shl nuw nsw i64 %.sroa.018.0.i1031, 1
  %i.ajl = or disjoint i64 %i.ajk, 1
  call fastcc void @bigint_set_buf(ptr noundef %3, i64 noundef %.22894.i1009, ptr noundef %i.a, ptr noundef %.3863.i1012, ptr noundef %.3867.i1011, ptr noundef %.23.i1010)
  %i.ajm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 29 uses
  store i64 %i.ajl, ptr %i.ajm, align 8, !tbaa !91
  %i.ajn = load i32, ptr %i.a, align 4, !tbaa !114 ; 6 uses
  %i.ajo = icmp sgt i32 %i.ajn, -1
  br i1 %i.ajo, label %.preheader3533, label %bb.ik

.preheader3533:                                   ; preds = %bb.ic
  %.promoted4320 = load i32, ptr %3, align 8      ; 2 uses
  %i.ajp = icmp samesign ugt i32 %i.ajn, 18
  br i1 %i.ajp, label %.lr.ph4323, label %._crit_edge4324

.lr.ph4323:                                       ; preds = %.preheader3533
  %i.ajq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.id

bb.id:                                            ; preds = %.lr.ph4323, %bigint_mul_u64.exit1651
  %.0.i15024322 = phi i32 [ %i.ajn, %.lr.ph4323 ], [ %i.ale, %bigint_mul_u64.exit1651 ] ; 2 uses
  %i.ajr = phi i32 [ %.promoted4320, %.lr.ph4323 ], [ %i.ald, %bigint_mul_u64.exit1651 ] ; 9 uses
  %.not4465 = icmp eq i32 %i.ajr, 0
  br i1 %.not4465, label %._crit_edge4310, label %.lr.ph4309.preheader

.lr.ph4309.preheader:                             ; preds = %bb.id
  %wide.trip.count4775 = zext i32 %i.ajr to i64
  br label %.lr.ph4309

.lr.ph4309:                                       ; preds = %.lr.ph4309.preheader, %bb.ie
  %indvars.iv4772 = phi i64 [ 0, %.lr.ph4309.preheader ], [ %indvars.iv.next4773, %bb.ie ] ; 3 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %indvars.iv4772
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !91
  %.not.i1650 = icmp eq i64 %i.ajt, 0
  br i1 %.not.i1650, label %bb.ie, label %._crit_edge4310.loopexit

bb.ie:                                            ; preds = %.lr.ph4309
  %indvars.iv.next4773 = add nuw nsw i64 %indvars.iv4772, 1 ; 2 uses
  %exitcond4776.not = icmp eq i64 %indvars.iv.next4773, %wide.trip.count4775
  br i1 %exitcond4776.not, label %bigint_mul_u64.exit1651, label %.lr.ph4309, !llvm.loop !135

._crit_edge4310.loopexit:                         ; preds = %.lr.ph4309
  %i.aju = trunc nuw i64 %indvars.iv4772 to i32
  br label %._crit_edge4310

._crit_edge4310:                                  ; preds = %._crit_edge4310.loopexit, %bb.id
  %.018.i1646.lcssa = phi i32 [ 0, %bb.id ], [ %i.aju, %._crit_edge4310.loopexit ] ; 2 uses
  %i.ajv = icmp ult i32 %.018.i1646.lcssa, %i.ajr
  br i1 %i.ajv, label %.lr.ph4317.preheader, label %bigint_mul_u64.exit1651

.lr.ph4317.preheader:                             ; preds = %._crit_edge4310
  %i.ajw = zext i32 %.018.i1646.lcssa to i64      ; 4 uses
  %wide.trip.count4780 = zext i32 %i.ajr to i64   ; 2 uses
  %i.ajx = sub nsw i64 %wide.trip.count4780, %i.ajw ; 3 uses
  %xtraiter6525 = and i64 %i.ajx, 1
  %i.ajy = add nsw i64 %wide.trip.count4780, -1
  %i.ajz = icmp eq i64 %i.ajy, %i.ajw
  br i1 %i.ajz, label %.lr.ph4317.epil.preheader, label %.lr.ph4317.preheader.new

.lr.ph4317.preheader.new:                         ; preds = %.lr.ph4317.preheader
  %unroll_iter6530 = and i64 %i.ajx, -2
  br label %.lr.ph4317

.lr.ph4317:                                       ; preds = %.lr.ph4317, %.lr.ph4317.preheader.new
  %indvars.iv4777 = phi i64 [ %i.ajw, %.lr.ph4317.preheader.new ], [ %indvars.iv.next4778.1, %.lr.ph4317 ] ; 3 uses
  %.0.i16484315 = phi i64 [ 0, %.lr.ph4317.preheader.new ], [ %i.akp, %.lr.ph4317 ]
  %niter6531 = phi i64 [ 0, %.lr.ph4317.preheader.new ], [ %niter6531.next.1, %.lr.ph4317 ]
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %indvars.iv4777 ; 2 uses
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !91
  %i.akc = zext i64 %i.akb to i128
  %i.akd = mul nuw i128 %i.akc, 10000000000000000000
  %i.ake = zext i64 %.0.i16484315 to i128
  %i.akf = add nuw i128 %i.akd, %i.ake            ; 2 uses
  %i.akg = lshr i128 %i.akf, 64
  %i.akh = trunc i128 %i.akf to i64
  store i64 %i.akh, ptr %i.aka, align 8, !tbaa !91
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %indvars.iv4777
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 8 ; 2 uses
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !91
  %i.akl = zext i64 %i.akk to i128
  %i.akm = mul nuw i128 %i.akl, 10000000000000000000
  %i.akn = add nuw i128 %i.akm, %i.akg            ; 2 uses
  %i.ako = lshr i128 %i.akn, 64                   ; 2 uses
  %i.akp = trunc nuw i128 %i.ako to i64           ; 3 uses
  %i.akq = trunc i128 %i.akn to i64
  store i64 %i.akq, ptr %i.akj, align 8, !tbaa !91
  %indvars.iv.next4778.1 = add nuw nsw i64 %indvars.iv4777, 2 ; 2 uses
  %niter6531.next.1 = add i64 %niter6531, 2       ; 2 uses
  %niter6531.ncmp.1 = icmp eq i64 %niter6531.next.1, %unroll_iter6530
  br i1 %niter6531.ncmp.1, label %._crit_edge4318.unr-lcssa, label %.lr.ph4317, !llvm.loop !136

._crit_edge4318.unr-lcssa:                        ; preds = %.lr.ph4317
  %lcmp.mod6526.not = icmp eq i64 %xtraiter6525, 0
  br i1 %lcmp.mod6526.not, label %._crit_edge4318, label %.lr.ph4317.epil.preheader

.lr.ph4317.epil.preheader:                        ; preds = %._crit_edge4318.unr-lcssa, %.lr.ph4317.preheader
  %indvars.iv4777.epil.init = phi i64 [ %i.ajw, %.lr.ph4317.preheader ], [ %indvars.iv.next4778.1, %._crit_edge4318.unr-lcssa ]
  %.0.i16484315.epil.init = phi i64 [ 0, %.lr.ph4317.preheader ], [ %i.akp, %._crit_edge4318.unr-lcssa ]
  %lcmp.mod6529 = trunc i64 %i.ajx to i1
  call void @llvm.assume(i1 %lcmp.mod6529)
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %indvars.iv4777.epil.init ; 2 uses
  %i.aks = load i64, ptr %i.akr, align 8, !tbaa !91
  %i.akt = zext i64 %i.aks to i128
  %i.aku = mul nuw i128 %i.akt, 10000000000000000000
  %i.akv = zext i64 %.0.i16484315.epil.init to i128
  %i.akw = add nuw i128 %i.aku, %i.akv            ; 2 uses
  %i.akx = lshr i128 %i.akw, 64                   ; 2 uses
  %i.aky = trunc nuw i128 %i.akx to i64
  %i.akz = trunc i128 %i.akw to i64
  store i64 %i.akz, ptr %i.akr, align 8, !tbaa !91
  br label %._crit_edge4318

._crit_edge4318:                                  ; preds = %._crit_edge4318.unr-lcssa, %.lr.ph4317.epil.preheader
  %.lcssa6221 = phi i128 [ %i.ako, %._crit_edge4318.unr-lcssa ], [ %i.akx, %.lr.ph4317.epil.preheader ]
  %.lcssa6220 = phi i64 [ %i.akp, %._crit_edge4318.unr-lcssa ], [ %i.aky, %.lr.ph4317.epil.preheader ]
  %.not19.i1649 = icmp eq i128 %.lcssa6221, 0
  br i1 %.not19.i1649, label %bigint_mul_u64.exit1651, label %bb.if

bb.if:                                            ; preds = %._crit_edge4318
  %i.ala = add i32 %i.ajr, 1
  %i.alb = zext i32 %i.ajr to i64
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.ajq, i64 %i.alb
  store i64 %.lcssa6220, ptr %i.alc, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1651

bigint_mul_u64.exit1651:                          ; preds = %bb.ie, %._crit_edge4310, %._crit_edge4318, %bb.if
  %i.ald = phi i32 [ %i.ajr, %._crit_edge4318 ], [ %i.ala, %bb.if ], [ %i.ajr, %._crit_edge4310 ], [ %i.ajr, %bb.ie ] ; 2 uses
  %i.ale = add nsw i32 %.0.i15024322, -19         ; 2 uses
  %i.alf = icmp sgt i32 %.0.i15024322, 37
  br i1 %i.alf, label %bb.id, label %._crit_edge4324, !llvm.loop !137

._crit_edge4324:                                  ; preds = %bigint_mul_u64.exit1651, %.preheader3533
  %i.alg = phi i32 [ %.promoted4320, %.preheader3533 ], [ %i.ald, %bigint_mul_u64.exit1651 ] ; 7 uses
  %.0.i1502.lcssa = phi i32 [ %i.ajn, %.preheader3533 ], [ %i.ale, %bigint_mul_u64.exit1651 ] ; 2 uses
  store i32 %i.alg, ptr %3, align 8
  %.not.i1503 = icmp eq i32 %.0.i1502.lcssa, 0
  br i1 %.not.i1503, label %bigint_mul_pow10.exit, label %bb.ig

bb.ig:                                            ; preds = %._crit_edge4324
  %i.alh = sext i32 %.0.i1502.lcssa to i64
  %i.ali = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.alh
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !91
  %i.alk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not4466 = icmp eq i32 %i.alg, 0
  br i1 %.not4466, label %._crit_edge4330, label %.lr.ph4329.preheader

.lr.ph4329.preheader:                             ; preds = %bb.ig
  %wide.trip.count4785 = zext i32 %i.alg to i64
  br label %.lr.ph4329

.lr.ph4329:                                       ; preds = %.lr.ph4329.preheader, %bb.ih
  %indvars.iv4782 = phi i64 [ 0, %.lr.ph4329.preheader ], [ %indvars.iv.next4783, %bb.ih ] ; 3 uses
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %indvars.iv4782
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !91
  %.not.i1656 = icmp eq i64 %i.alm, 0
  br i1 %.not.i1656, label %bb.ih, label %._crit_edge4330.loopexit

bb.ih:                                            ; preds = %.lr.ph4329
  %indvars.iv.next4783 = add nuw nsw i64 %indvars.iv4782, 1 ; 2 uses
  %exitcond4786.not = icmp eq i64 %indvars.iv.next4783, %wide.trip.count4785
  br i1 %exitcond4786.not, label %bigint_mul_pow10.exit, label %.lr.ph4329, !llvm.loop !135

._crit_edge4330.loopexit:                         ; preds = %.lr.ph4329
  %i.aln = trunc nuw i64 %indvars.iv4782 to i32
  br label %._crit_edge4330

._crit_edge4330:                                  ; preds = %._crit_edge4330.loopexit, %bb.ig
  %.018.i1652.lcssa = phi i32 [ 0, %bb.ig ], [ %i.aln, %._crit_edge4330.loopexit ] ; 2 uses
  %i.alo = icmp ult i32 %.018.i1652.lcssa, %i.alg
  br i1 %i.alo, label %.lr.ph4337, label %bigint_mul_pow10.exit

.lr.ph4337:                                       ; preds = %._crit_edge4330
  %i.alp = zext i64 %i.alj to i128                ; 3 uses
  %i.alq = zext i32 %.018.i1652.lcssa to i64      ; 4 uses
  %wide.trip.count4790 = zext i32 %i.alg to i64   ; 2 uses
  %i.alr = sub nsw i64 %wide.trip.count4790, %i.alq ; 3 uses
  %xtraiter6533 = and i64 %i.alr, 1
  %i.als = add nsw i64 %wide.trip.count4790, -1
  %i.alt = icmp eq i64 %i.als, %i.alq
  br i1 %i.alt, label %.epil.preheader6532, label %.lr.ph4337.new

.lr.ph4337.new:                                   ; preds = %.lr.ph4337
  %unroll_iter6538 = and i64 %i.alr, -2
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ii, %.lr.ph4337.new
  %indvars.iv4787 = phi i64 [ %i.alq, %.lr.ph4337.new ], [ %indvars.iv.next4788.1, %bb.ii ] ; 3 uses
  %.0.i16544335 = phi i64 [ 0, %.lr.ph4337.new ], [ %i.amj, %bb.ii ]
  %niter6539 = phi i64 [ 0, %.lr.ph4337.new ], [ %niter6539.next.1, %bb.ii ]
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %indvars.iv4787 ; 2 uses
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !91
  %i.alw = zext i64 %i.alv to i128
  %i.alx = mul nuw i128 %i.alw, %i.alp
  %i.aly = zext i64 %.0.i16544335 to i128
  %i.alz = add nuw i128 %i.alx, %i.aly            ; 2 uses
  %i.ama = lshr i128 %i.alz, 64
  %i.amb = trunc i128 %i.alz to i64
  store i64 %i.amb, ptr %i.alu, align 8, !tbaa !91
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %indvars.iv4787
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 2 uses
  %i.ame = load i64, ptr %i.amd, align 8, !tbaa !91
  %i.amf = zext i64 %i.ame to i128
  %i.amg = mul nuw i128 %i.amf, %i.alp
  %i.amh = add nuw i128 %i.amg, %i.ama            ; 2 uses
  %i.ami = lshr i128 %i.amh, 64                   ; 2 uses
  %i.amj = trunc nuw i128 %i.ami to i64           ; 3 uses
  %i.amk = trunc i128 %i.amh to i64
  store i64 %i.amk, ptr %i.amd, align 8, !tbaa !91
  %indvars.iv.next4788.1 = add nuw nsw i64 %indvars.iv4787, 2 ; 2 uses
  %niter6539.next.1 = add i64 %niter6539, 2       ; 2 uses
  %niter6539.ncmp.1 = icmp eq i64 %niter6539.next.1, %unroll_iter6538
  br i1 %niter6539.ncmp.1, label %._crit_edge4338.unr-lcssa, label %bb.ii, !llvm.loop !136

._crit_edge4338.unr-lcssa:                        ; preds = %bb.ii
  %lcmp.mod6534.not = icmp eq i64 %xtraiter6533, 0
  br i1 %lcmp.mod6534.not, label %._crit_edge4338, label %.epil.preheader6532

.epil.preheader6532:                              ; preds = %._crit_edge4338.unr-lcssa, %.lr.ph4337
  %indvars.iv4787.epil.init = phi i64 [ %i.alq, %.lr.ph4337 ], [ %indvars.iv.next4788.1, %._crit_edge4338.unr-lcssa ]
  %.0.i16544335.epil.init = phi i64 [ 0, %.lr.ph4337 ], [ %i.amj, %._crit_edge4338.unr-lcssa ]
  %lcmp.mod6537 = trunc i64 %i.alr to i1
  call void @llvm.assume(i1 %lcmp.mod6537)
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %indvars.iv4787.epil.init ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !91
  %i.amn = zext i64 %i.amm to i128
  %i.amo = mul nuw i128 %i.amn, %i.alp
  %i.amp = zext i64 %.0.i16544335.epil.init to i128
  %i.amq = add nuw i128 %i.amo, %i.amp            ; 2 uses
  %i.amr = lshr i128 %i.amq, 64                   ; 2 uses
  %i.ams = trunc nuw i128 %i.amr to i64
  %i.amt = trunc i128 %i.amq to i64
  store i64 %i.amt, ptr %i.aml, align 8, !tbaa !91
  br label %._crit_edge4338

._crit_edge4338:                                  ; preds = %._crit_edge4338.unr-lcssa, %.epil.preheader6532
  %.lcssa6217 = phi i128 [ %i.ami, %._crit_edge4338.unr-lcssa ], [ %i.amr, %.epil.preheader6532 ]
  %.lcssa6216 = phi i64 [ %i.amj, %._crit_edge4338.unr-lcssa ], [ %i.ams, %.epil.preheader6532 ]
  %.not19.i1655 = icmp eq i128 %.lcssa6217, 0
  br i1 %.not19.i1655, label %bigint_mul_pow10.exit, label %bb.ij

bb.ij:                                            ; preds = %._crit_edge4338
  %i.amu = add i32 %i.alg, 1
  store i32 %i.amu, ptr %3, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit.sink.split

bb.ik:                                            ; preds = %bb.ic
  %i.amv = sub nsw i32 0, %i.ajn                  ; 2 uses
  %i.amw = icmp samesign ult i32 %i.ajn, -18
  br i1 %i.amw, label %.lr.ph4290, label %.thread5358

.thread5358:                                      ; preds = %bb.ik
  store i32 1, ptr %4, align 8
  %i.amx = zext nneg i32 %i.amv to i64
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.amx
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !91
  br label %.lr.ph4296.preheader

.lr.ph4290:                                       ; preds = %bb.ik, %bigint_mul_u64.exit1639
  %.0.i15044288 = phi i32 [ %i.aon, %bigint_mul_u64.exit1639 ], [ %i.amv, %bb.ik ] ; 2 uses
  %i.ana = phi i32 [ %i.aom, %bigint_mul_u64.exit1639 ], [ 1, %bb.ik ] ; 9 uses
  %.not4463 = icmp eq i32 %i.ana, 0
  br i1 %.not4463, label %._crit_edge4276, label %.lr.ph4275.preheader

.lr.ph4275.preheader:                             ; preds = %.lr.ph4290
  %wide.trip.count4755 = zext i32 %i.ana to i64
  br label %.lr.ph4275

.lr.ph4275:                                       ; preds = %.lr.ph4275.preheader, %bb.il
  %indvars.iv4752 = phi i64 [ 0, %.lr.ph4275.preheader ], [ %indvars.iv.next4753, %bb.il ] ; 3 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4752
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !91
  %.not.i1638 = icmp eq i64 %i.anc, 0
  br i1 %.not.i1638, label %bb.il, label %._crit_edge4276.loopexit

bb.il:                                            ; preds = %.lr.ph4275
  %indvars.iv.next4753 = add nuw nsw i64 %indvars.iv4752, 1 ; 2 uses
  %exitcond4756.not = icmp eq i64 %indvars.iv.next4753, %wide.trip.count4755
  br i1 %exitcond4756.not, label %bigint_mul_u64.exit1639, label %.lr.ph4275, !llvm.loop !135

._crit_edge4276.loopexit:                         ; preds = %.lr.ph4275
  %i.and = trunc nuw i64 %indvars.iv4752 to i32
  br label %._crit_edge4276

._crit_edge4276:                                  ; preds = %._crit_edge4276.loopexit, %.lr.ph4290
  %.018.i1634.lcssa = phi i32 [ 0, %.lr.ph4290 ], [ %i.and, %._crit_edge4276.loopexit ] ; 2 uses
  %i.ane = icmp ult i32 %.018.i1634.lcssa, %i.ana
  br i1 %i.ane, label %.lr.ph4283.preheader, label %bigint_mul_u64.exit1639

.lr.ph4283.preheader:                             ; preds = %._crit_edge4276
  %i.anf = zext i32 %.018.i1634.lcssa to i64      ; 4 uses
  %wide.trip.count4760 = zext i32 %i.ana to i64   ; 2 uses
  %i.ang = sub nsw i64 %wide.trip.count4760, %i.anf ; 3 uses
  %xtraiter6510 = and i64 %i.ang, 1
  %i.anh = add nsw i64 %wide.trip.count4760, -1
  %i.ani = icmp eq i64 %i.anh, %i.anf
  br i1 %i.ani, label %.lr.ph4283.epil.preheader, label %.lr.ph4283.preheader.new

.lr.ph4283.preheader.new:                         ; preds = %.lr.ph4283.preheader
  %unroll_iter6515 = and i64 %i.ang, -2
  br label %.lr.ph4283

.lr.ph4283:                                       ; preds = %.lr.ph4283, %.lr.ph4283.preheader.new
  %indvars.iv4757 = phi i64 [ %i.anf, %.lr.ph4283.preheader.new ], [ %indvars.iv.next4758.1, %.lr.ph4283 ] ; 3 uses
  %.0.i16364281 = phi i64 [ 0, %.lr.ph4283.preheader.new ], [ %i.any, %.lr.ph4283 ]
  %niter6516 = phi i64 [ 0, %.lr.ph4283.preheader.new ], [ %niter6516.next.1, %.lr.ph4283 ]
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4757 ; 2 uses
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !91
  %i.anl = zext i64 %i.ank to i128
  %i.anm = mul nuw i128 %i.anl, 10000000000000000000
  %i.ann = zext i64 %.0.i16364281 to i128
  %i.ano = add nuw i128 %i.anm, %i.ann            ; 2 uses
  %i.anp = lshr i128 %i.ano, 64
  %i.anq = trunc i128 %i.ano to i64
  store i64 %i.anq, ptr %i.anj, align 8, !tbaa !91
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4757
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 8 ; 2 uses
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !91
  %i.anu = zext i64 %i.ant to i128
  %i.anv = mul nuw i128 %i.anu, 10000000000000000000
  %i.anw = add nuw i128 %i.anv, %i.anp            ; 2 uses
  %i.anx = lshr i128 %i.anw, 64                   ; 2 uses
  %i.any = trunc nuw i128 %i.anx to i64           ; 3 uses
  %i.anz = trunc i128 %i.anw to i64
  store i64 %i.anz, ptr %i.ans, align 8, !tbaa !91
  %indvars.iv.next4758.1 = add nuw nsw i64 %indvars.iv4757, 2 ; 2 uses
  %niter6516.next.1 = add i64 %niter6516, 2       ; 2 uses
  %niter6516.ncmp.1 = icmp eq i64 %niter6516.next.1, %unroll_iter6515
  br i1 %niter6516.ncmp.1, label %._crit_edge4284.unr-lcssa, label %.lr.ph4283, !llvm.loop !136

._crit_edge4284.unr-lcssa:                        ; preds = %.lr.ph4283
  %lcmp.mod6511.not = icmp eq i64 %xtraiter6510, 0
  br i1 %lcmp.mod6511.not, label %._crit_edge4284, label %.lr.ph4283.epil.preheader

.lr.ph4283.epil.preheader:                        ; preds = %._crit_edge4284.unr-lcssa, %.lr.ph4283.preheader
  %indvars.iv4757.epil.init = phi i64 [ %i.anf, %.lr.ph4283.preheader ], [ %indvars.iv.next4758.1, %._crit_edge4284.unr-lcssa ]
  %.0.i16364281.epil.init = phi i64 [ 0, %.lr.ph4283.preheader ], [ %i.any, %._crit_edge4284.unr-lcssa ]
  %lcmp.mod6514 = trunc i64 %i.ang to i1
  call void @llvm.assume(i1 %lcmp.mod6514)
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4757.epil.init ; 2 uses
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !91
  %i.aoc = zext i64 %i.aob to i128
  %i.aod = mul nuw i128 %i.aoc, 10000000000000000000
  %i.aoe = zext i64 %.0.i16364281.epil.init to i128
  %i.aof = add nuw i128 %i.aod, %i.aoe            ; 2 uses
  %i.aog = lshr i128 %i.aof, 64                   ; 2 uses
  %i.aoh = trunc nuw i128 %i.aog to i64
  %i.aoi = trunc i128 %i.aof to i64
  store i64 %i.aoi, ptr %i.aoa, align 8, !tbaa !91
  br label %._crit_edge4284

._crit_edge4284:                                  ; preds = %._crit_edge4284.unr-lcssa, %.lr.ph4283.epil.preheader
  %.lcssa6230 = phi i128 [ %i.anx, %._crit_edge4284.unr-lcssa ], [ %i.aog, %.lr.ph4283.epil.preheader ]
  %.lcssa6229 = phi i64 [ %i.any, %._crit_edge4284.unr-lcssa ], [ %i.aoh, %.lr.ph4283.epil.preheader ]
  %.not19.i1637 = icmp eq i128 %.lcssa6230, 0
  br i1 %.not19.i1637, label %bigint_mul_u64.exit1639, label %bb.im

bb.im:                                            ; preds = %._crit_edge4284
  %i.aoj = add i32 %i.ana, 1
  %i.aok = zext i32 %i.ana to i64
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.aok
  store i64 %.lcssa6229, ptr %i.aol, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1639

bigint_mul_u64.exit1639:                          ; preds = %bb.il, %._crit_edge4276, %._crit_edge4284, %bb.im
  %i.aom = phi i32 [ %i.ana, %._crit_edge4284 ], [ %i.aoj, %bb.im ], [ %i.ana, %._crit_edge4276 ], [ %i.ana, %bb.il ] ; 5 uses
  %i.aon = add nsw i32 %.0.i15044288, -19         ; 3 uses
  %i.aoo = icmp sgt i32 %.0.i15044288, 37
  br i1 %i.aoo, label %.lr.ph4290, label %._crit_edge4291, !llvm.loop !137

._crit_edge4291:                                  ; preds = %bigint_mul_u64.exit1639
  store i32 %i.aom, ptr %4, align 8
  %.not.i1505 = icmp eq i32 %i.aon, 0
  br i1 %.not.i1505, label %bigint_mul_pow10.exit, label %bb.in

bb.in:                                            ; preds = %._crit_edge4291
  %i.aop = sext i32 %i.aon to i64
  %i.aoq = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.aop
  %i.aor = load i64, ptr %i.aoq, align 8, !tbaa !91 ; 2 uses
  %.not4464 = icmp eq i32 %i.aom, 0
  br i1 %.not4464, label %._crit_edge4297, label %.lr.ph4296.preheader

.lr.ph4296.preheader:                             ; preds = %.thread5358, %bb.in
  %i.aos = phi i64 [ %i.amz, %.thread5358 ], [ %i.aor, %bb.in ]
  %i.aot = phi i32 [ 1, %.thread5358 ], [ %i.aom, %bb.in ] ; 3 uses
  %wide.trip.count4765 = zext i32 %i.aot to i64
  br label %.lr.ph4296

.lr.ph4296:                                       ; preds = %.lr.ph4296.preheader, %bb.io
  %indvars.iv4762 = phi i64 [ 0, %.lr.ph4296.preheader ], [ %indvars.iv.next4763, %bb.io ] ; 3 uses
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4762
  %i.aov = load i64, ptr %i.aou, align 8, !tbaa !91
  %.not.i1644 = icmp eq i64 %i.aov, 0
  br i1 %.not.i1644, label %bb.io, label %._crit_edge4297.loopexit

bb.io:                                            ; preds = %.lr.ph4296
  %indvars.iv.next4763 = add nuw nsw i64 %indvars.iv4762, 1 ; 2 uses
  %exitcond4766.not = icmp eq i64 %indvars.iv.next4763, %wide.trip.count4765
  br i1 %exitcond4766.not, label %bigint_mul_pow10.exit, label %.lr.ph4296, !llvm.loop !135

._crit_edge4297.loopexit:                         ; preds = %.lr.ph4296
  %i.aow = trunc nuw i64 %indvars.iv4762 to i32
  br label %._crit_edge4297

._crit_edge4297:                                  ; preds = %._crit_edge4297.loopexit, %bb.in
  %i.aox = phi i64 [ %i.aor, %bb.in ], [ %i.aos, %._crit_edge4297.loopexit ]
  %i.aoy = phi i32 [ 0, %bb.in ], [ %i.aot, %._crit_edge4297.loopexit ] ; 6 uses
  %.018.i1640.lcssa = phi i32 [ 0, %bb.in ], [ %i.aow, %._crit_edge4297.loopexit ] ; 2 uses
  %i.aoz = icmp ult i32 %.018.i1640.lcssa, %i.aoy
  br i1 %i.aoz, label %.lr.ph4304, label %bigint_mul_pow10.exit

.lr.ph4304:                                       ; preds = %._crit_edge4297
  %i.apa = zext i64 %i.aox to i128                ; 3 uses
  %i.apb = zext i32 %.018.i1640.lcssa to i64      ; 4 uses
  %wide.trip.count4770 = zext i32 %i.aoy to i64   ; 2 uses
  %i.apc = sub nsw i64 %wide.trip.count4770, %i.apb ; 3 uses
  %xtraiter6518 = and i64 %i.apc, 1
  %i.apd = add nsw i64 %wide.trip.count4770, -1
  %i.ape = icmp eq i64 %i.apd, %i.apb
  br i1 %i.ape, label %.epil.preheader6517, label %.lr.ph4304.new

.lr.ph4304.new:                                   ; preds = %.lr.ph4304
  %unroll_iter6523 = and i64 %i.apc, -2
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ip, %.lr.ph4304.new
  %indvars.iv4767 = phi i64 [ %i.apb, %.lr.ph4304.new ], [ %indvars.iv.next4768.1, %bb.ip ] ; 3 uses
  %.0.i16424302 = phi i64 [ 0, %.lr.ph4304.new ], [ %i.apu, %bb.ip ]
  %niter6524 = phi i64 [ 0, %.lr.ph4304.new ], [ %niter6524.next.1, %bb.ip ]
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4767 ; 2 uses
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !91
  %i.aph = zext i64 %i.apg to i128
  %i.api = mul nuw i128 %i.aph, %i.apa
  %i.apj = zext i64 %.0.i16424302 to i128
  %i.apk = add nuw i128 %i.api, %i.apj            ; 2 uses
  %i.apl = lshr i128 %i.apk, 64
  %i.apm = trunc i128 %i.apk to i64
  store i64 %i.apm, ptr %i.apf, align 8, !tbaa !91
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4767
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 8 ; 2 uses
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !91
  %i.apq = zext i64 %i.app to i128
  %i.apr = mul nuw i128 %i.apq, %i.apa
  %i.aps = add nuw i128 %i.apr, %i.apl            ; 2 uses
  %i.apt = lshr i128 %i.aps, 64                   ; 2 uses
  %i.apu = trunc nuw i128 %i.apt to i64           ; 3 uses
  %i.apv = trunc i128 %i.aps to i64
  store i64 %i.apv, ptr %i.apo, align 8, !tbaa !91
  %indvars.iv.next4768.1 = add nuw nsw i64 %indvars.iv4767, 2 ; 2 uses
  %niter6524.next.1 = add i64 %niter6524, 2       ; 2 uses
  %niter6524.ncmp.1 = icmp eq i64 %niter6524.next.1, %unroll_iter6523
  br i1 %niter6524.ncmp.1, label %._crit_edge4305.unr-lcssa, label %bb.ip, !llvm.loop !136

._crit_edge4305.unr-lcssa:                        ; preds = %bb.ip
  %lcmp.mod6519.not = icmp eq i64 %xtraiter6518, 0
  br i1 %lcmp.mod6519.not, label %._crit_edge4305, label %.epil.preheader6517

.epil.preheader6517:                              ; preds = %._crit_edge4305.unr-lcssa, %.lr.ph4304
  %indvars.iv4767.epil.init = phi i64 [ %i.apb, %.lr.ph4304 ], [ %indvars.iv.next4768.1, %._crit_edge4305.unr-lcssa ]
  %.0.i16424302.epil.init = phi i64 [ 0, %.lr.ph4304 ], [ %i.apu, %._crit_edge4305.unr-lcssa ]
  %lcmp.mod6522 = trunc i64 %i.apc to i1
  call void @llvm.assume(i1 %lcmp.mod6522)
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4767.epil.init ; 2 uses
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !91
  %i.apy = zext i64 %i.apx to i128
  %i.apz = mul nuw i128 %i.apy, %i.apa
  %i.aqa = zext i64 %.0.i16424302.epil.init to i128
  %i.aqb = add nuw i128 %i.apz, %i.aqa            ; 2 uses
  %i.aqc = lshr i128 %i.aqb, 64                   ; 2 uses
  %i.aqd = trunc nuw i128 %i.aqc to i64
  %i.aqe = trunc i128 %i.aqb to i64
  store i64 %i.aqe, ptr %i.apw, align 8, !tbaa !91
  br label %._crit_edge4305

._crit_edge4305:                                  ; preds = %._crit_edge4305.unr-lcssa, %.epil.preheader6517
  %.lcssa6225 = phi i128 [ %i.apt, %._crit_edge4305.unr-lcssa ], [ %i.aqc, %.epil.preheader6517 ]
  %.lcssa6224 = phi i64 [ %i.apu, %._crit_edge4305.unr-lcssa ], [ %i.aqd, %.epil.preheader6517 ]
  %.not19.i1643 = icmp eq i128 %.lcssa6225, 0
  br i1 %.not19.i1643, label %bigint_mul_pow10.exit, label %bb.iq

bb.iq:                                            ; preds = %._crit_edge4305
  %i.aqf = add i32 %i.aoy, 1
  br label %bigint_mul_pow10.exit.sink.split

bigint_mul_pow10.exit.sink.split:                 ; preds = %bb.ij, %bb.iq
  %.sink = phi i32 [ %i.aoy, %bb.iq ], [ %i.alg, %bb.ij ]
  %i.aqg = phi ptr [ %4, %bb.iq ], [ %3, %bb.ij ]
  %.lcssa5481.sink = phi i64 [ %.lcssa6224, %bb.iq ], [ %.lcssa6216, %bb.ij ]
  %.ph = phi i32 [ %i.aqf, %bb.iq ], [ 1, %bb.ij ]
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.aqi = zext i32 %.sink to i64
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %i.aqi
  store i64 %.lcssa5481.sink, ptr %i.aqj, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit

bigint_mul_pow10.exit:                            ; preds = %bb.io, %bb.ih, %bigint_mul_pow10.exit.sink.split, %._crit_edge4297, %._crit_edge4330, %._crit_edge4291, %._crit_edge4305, %._crit_edge4324, %._crit_edge4338
  %i.aqk = phi i32 [ %i.aom, %._crit_edge4291 ], [ %i.aoy, %._crit_edge4305 ], [ %i.aoy, %._crit_edge4297 ], [ 1, %._crit_edge4324 ], [ 1, %._crit_edge4338 ], [ 1, %bb.ih ], [ %.ph, %bigint_mul_pow10.exit.sink.split ], [ 1, %._crit_edge4330 ], [ %i.aot, %bb.io ] ; 16 uses
  %i.aql = icmp sgt i32 %.sroa.9.0.i1030, 0
  br i1 %i.aql, label %bb.ir, label %bb.it

bb.ir:                                            ; preds = %bigint_mul_pow10.exit
  %i.aqm = and i32 %.sroa.9.0.i1030, 63           ; 3 uses
  %i.aqn = lshr i32 %.sroa.9.0.i1030, 6           ; 14 uses
  %i.aqo = icmp eq i32 %i.aqm, 0
  br i1 %i.aqo, label %.preheader3528, label %bb.is, !prof !8

.preheader3528:                                   ; preds = %bb.ir
  %.not46.i4366 = icmp eq i32 %i.aqk, 0
  br i1 %.not46.i4366, label %.lr.ph4373.preheader, label %.lr.ph4368

.lr.ph4368:                                       ; preds = %.preheader3528
  %i.aqp = add nsw i32 %i.aqn, -1                 ; 6 uses
  %i.aqq = zext i32 %i.aqk to i64                 ; 9 uses
  %min.iters.check6184 = icmp ult i32 %i.aqk, 30
  br i1 %min.iters.check6184, label %scalar.ph6183.preheader, label %vector.scevcheck6180

vector.scevcheck6180:                             ; preds = %.lr.ph4368
  %i.aqr = add nsw i64 %i.aqq, -1                 ; 2 uses
  %i.aqs = add i32 %i.aqk, %i.aqn
  %i.aqt = add i32 %i.aqs, -1
  %i.aqu = trunc i64 %i.aqr to i32
  %i.aqv = icmp ult i32 %i.aqt, %i.aqu
  %i.aqw = icmp ugt i64 %i.aqr, 4294967295
  %i.aqx = or i1 %i.aqv, %i.aqw
  br i1 %i.aqx, label %scalar.ph6183.preheader, label %vector.memcheck6181

vector.memcheck6181:                              ; preds = %vector.scevcheck6180
  %i.aqy = add i32 %i.aqk, %i.aqn
  %i.aqz = add i32 %i.aqy, -1
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = sub nsw i64 %i.aqq, %i.ara
  %i.arc = shl nsw i64 %i.arb, 3
  %i.ard = add nsw i64 %i.arc, -9
  %diff.check6182 = icmp ult i64 %i.ard, 31
  br i1 %diff.check6182, label %scalar.ph6183.preheader, label %vector.ph6185

vector.ph6185:                                    ; preds = %vector.memcheck6181
  %n.vec6186 = and i64 %i.aqq, 4294967292         ; 2 uses
  %i.are = and i64 %i.aqq, 3
  br label %vector.body6187

vector.body6187:                                  ; preds = %vector.body6187, %vector.ph6185
  %index6188 = phi i64 [ 0, %vector.ph6185 ], [ %index.next6191, %vector.body6187 ] ; 2 uses
  %i.arf = sub i64 %i.aqq, %index6188             ; 2 uses
  %i.arg = getelementptr [8 x i8], ptr %4, i64 %i.arf ; 2 uses
  %i.arh = getelementptr i8, ptr %i.arg, i64 -8
  %i.ari = getelementptr i8, ptr %i.arg, i64 -24
  %wide.load6189 = load <2 x i64>, ptr %i.arh, align 8, !tbaa !91
  %wide.load6190 = load <2 x i64>, ptr %i.ari, align 8, !tbaa !91
  %i.arj = trunc nuw i64 %i.arf to i32
  %i.ark = add i32 %i.aqp, %i.arj
  %i.arl = zext i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.arl ; 2 uses
  %i.arn = getelementptr inbounds i8, ptr %i.arm, i64 -8
  %i.aro = getelementptr inbounds i8, ptr %i.arm, i64 -24
  store <2 x i64> %wide.load6189, ptr %i.arn, align 8, !tbaa !91
  store <2 x i64> %wide.load6190, ptr %i.aro, align 8, !tbaa !91
  %index.next6191 = add nuw i64 %index6188, 4     ; 2 uses
  %i.arp = icmp eq i64 %index.next6191, %n.vec6186
  br i1 %i.arp, label %middle.block6192, label %vector.body6187, !llvm.loop !275

middle.block6192:                                 ; preds = %vector.body6187
  %cmp.n6193 = icmp eq i64 %n.vec6186, %i.aqq
  br i1 %cmp.n6193, label %.lr.ph4373.preheader, label %scalar.ph6183.preheader

scalar.ph6183.preheader:                          ; preds = %vector.memcheck6181, %vector.scevcheck6180, %.lr.ph4368, %middle.block6192
  %indvars.iv4807.ph = phi i64 [ %i.aqq, %vector.memcheck6181 ], [ %i.aqq, %vector.scevcheck6180 ], [ %i.aqq, %.lr.ph4368 ], [ %i.are, %middle.block6192 ] ; 4 uses
  %i.arq = add nsw i64 %indvars.iv4807.ph, -1
  %xtraiter6549 = and i64 %indvars.iv4807.ph, 3   ; 2 uses
  %lcmp.mod6550.not = icmp eq i64 %xtraiter6549, 0
  br i1 %lcmp.mod6550.not, label %scalar.ph6183.prol.loopexit, label %scalar.ph6183.prol

scalar.ph6183.prol:                               ; preds = %scalar.ph6183.preheader, %scalar.ph6183.prol
  %indvars.iv4807.prol = phi i64 [ %i.arr, %scalar.ph6183.prol ], [ %indvars.iv4807.ph, %scalar.ph6183.preheader ] ; 3 uses
  %prol.iter6551 = phi i64 [ %prol.iter6551.next, %scalar.ph6183.prol ], [ 0, %scalar.ph6183.preheader ]
  %i.arr = add nsw i64 %indvars.iv4807.prol, -1   ; 2 uses
  %i.ars = getelementptr [8 x i8], ptr %4, i64 %indvars.iv4807.prol
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !91
  %i.aru = trunc nuw i64 %indvars.iv4807.prol to i32
  %i.arv = add i32 %i.aqp, %i.aru
  %i.arw = zext i32 %i.arv to i64
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.arw
  store i64 %i.art, ptr %i.arx, align 8, !tbaa !91
  %prol.iter6551.next = add i64 %prol.iter6551, 1 ; 2 uses
  %prol.iter6551.cmp.not = icmp eq i64 %prol.iter6551.next, %xtraiter6549
  br i1 %prol.iter6551.cmp.not, label %scalar.ph6183.prol.loopexit, label %scalar.ph6183.prol, !llvm.loop !276

scalar.ph6183.prol.loopexit:                      ; preds = %scalar.ph6183.prol, %scalar.ph6183.preheader
  %indvars.iv4807.unr = phi i64 [ %indvars.iv4807.ph, %scalar.ph6183.preheader ], [ %i.arr, %scalar.ph6183.prol ]
  %i.ary = icmp ult i64 %i.arq, 3
  br i1 %i.ary, label %.lr.ph4373.preheader, label %scalar.ph6183

scalar.ph6183:                                    ; preds = %scalar.ph6183.prol.loopexit, %scalar.ph6183
  %indvars.iv4807 = phi i64 [ %i.asu, %scalar.ph6183 ], [ %indvars.iv4807.unr, %scalar.ph6183.prol.loopexit ] ; 6 uses
  %i.arz = add nsw i64 %indvars.iv4807, -1        ; 2 uses
  %i.asa = getelementptr [8 x i8], ptr %4, i64 %indvars.iv4807
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !91
  %i.asc = trunc nuw i64 %indvars.iv4807 to i32
  %i.asd = add i32 %i.aqp, %i.asc
  %i.ase = zext i32 %i.asd to i64
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.ase
  store i64 %i.asb, ptr %i.asf, align 8, !tbaa !91
  %i.asg = add nsw i64 %indvars.iv4807, -2        ; 2 uses
  %i.ash = getelementptr [8 x i8], ptr %4, i64 %i.arz
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !91
  %i.asj = trunc nuw i64 %i.arz to i32
  %i.ask = add i32 %i.aqp, %i.asj
  %i.asl = zext i32 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.asl
  store i64 %i.asi, ptr %i.asm, align 8, !tbaa !91
  %i.asn = add nsw i64 %indvars.iv4807, -3        ; 2 uses
  %i.aso = getelementptr [8 x i8], ptr %4, i64 %i.asg
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !91
  %i.asq = trunc nuw i64 %i.asg to i32
  %i.asr = add i32 %i.aqp, %i.asq
  %i.ass = zext i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.ass
  store i64 %i.asp, ptr %i.ast, align 8, !tbaa !91
  %i.asu = add nsw i64 %indvars.iv4807, -4        ; 2 uses
  %i.asv = getelementptr [8 x i8], ptr %4, i64 %i.asn
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !91
  %i.asx = trunc nuw i64 %i.asn to i32
  %i.asy = add i32 %i.aqp, %i.asx
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.asz
  store i64 %i.asw, ptr %i.ata, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.asu, 0
  br i1 %.not46.i.wide.3, label %.lr.ph4373.preheader, label %scalar.ph6183, !llvm.loop !277

.lr.ph4373.preheader:                             ; preds = %scalar.ph6183.prol.loopexit, %scalar.ph6183, %middle.block6192, %.preheader3528
  %i.atb = add i32 %i.aqk, %i.aqn
  %i.atc = add nsw i32 %i.aqn, -1
  %i.atd = zext i32 %i.atc to i64
  %i.ate = shl nuw nsw i64 %i.atd, 3
  %i.atf = add nuw nsw i64 %i.ate, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajm, i8 0, i64 %i.atf, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bb.is:                                            ; preds = %bb.ir
  %i.atg = zext i32 %i.aqk to i64                 ; 10 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.atg
  store i64 0, ptr %i.ath, align 8, !tbaa !91
  %.not.i15194357 = icmp eq i32 %i.aqk, 0
  %.pre4997 = zext nneg i32 %i.aqm to i64         ; 5 uses
  br i1 %.not.i15194357, label %._crit_edge4361, label %.lr.ph4360

.lr.ph4360:                                       ; preds = %bb.is
  %i.ati = sub nuw nsw i32 64, %i.aqm
  %i.atj = zext nneg i32 %i.ati to i64            ; 4 uses
  %min.iters.check6163 = icmp ult i32 %i.aqk, 20
end_hunk_6
begin_hunk_7_@yyjson_incr_read:bb.a
  br label %.thread3208

.thread3208:                                      ; preds = %.critedge992.i905, %.thread3205, %bb.vj
  %.0898.i890 = phi i64 [ %i.dfx, %.thread3205 ], [ %i.dfn, %bb.vj ], [ %i.dfn, %.critedge992.i905 ] ; 2 uses
  %.0896.i891 = phi i32 [ 60, %.thread3205 ], [ %i.dfq, %bb.vj ], [ 11, %.critedge992.i905 ] ; 3 uses
  %.sroa.19.0.in.i892 = phi i32 [ %i.dfv, %.thread3205 ], [ %i.dfm, %bb.vj ], [ %i.dfm, %.critedge992.i905 ]
  %.sroa.025.0.i893 = phi i64 [ %i.dfu, %.thread3205 ], [ %i.dfj, %bb.vj ], [ %i.dfj, %.critedge992.i905 ] ; 2 uses
  %i.dfy = zext nneg i32 %.0896.i891 to i64       ; 2 uses
  %notmask.i894 = shl nsw i64 -1, %i.dfy
  %i.dfz = xor i64 %notmask.i894, -1
  %i.dga = and i64 %.sroa.025.0.i893, %i.dfz
  %i.dgb = shl nuw nsw i64 %i.dga, 3              ; 2 uses
  %i.dgc = add nsw i32 %.0896.i891, -1
  %i.dgd = zext nneg i32 %i.dgc to i64
  %i.dge = shl nuw nsw i64 8, %i.dgd              ; 2 uses
  %i.dgf = lshr i64 %.sroa.025.0.i893, %i.dfy
  %i.dgg = add i64 %i.dge, %.0898.i890
  %i.dgh = icmp uge i64 %i.dgb, %i.dgg            ; 2 uses
  %i.dgi = zext i1 %i.dgh to i64
  %i.dgj = add nuw nsw i64 %i.dgf, %i.dgi         ; 3 uses
  %i.dgk = icmp eq i64 %i.dgj, 0
  br i1 %i.dgk, label %bb.vt, label %bb.vk, !prof !8

bb.vk:                                            ; preds = %.thread3208
  %i.dgl = add nsw i32 %.sroa.19.0.in.i892, %.0896.i891
  %i.dgm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.dgj, i1 true) ; 2 uses
  %i.dgn = trunc nuw nsw i64 %i.dgm to i32
  %i.dgo = shl i64 %i.dgj, %i.dgm
  %i.dgp = lshr i64 %i.dgo, 11                    ; 2 uses
  %i.dgq = sub nsw i32 %i.dgl, %i.dgn             ; 5 uses
  %i.dgr = icmp sgt i32 %i.dgq, 960
  br i1 %i.dgr, label %diy_fp_to_ieee_raw.exit1499, label %bb.vl, !prof !8

bb.vl:                                            ; preds = %bb.vk
  %i.dgs = icmp sgt i32 %i.dgq, -1086
  br i1 %i.dgs, label %bb.vm, label %bb.vn, !prof !25

bb.vm:                                            ; preds = %bb.vl
  %i.dgt = add nsw i32 %i.dgq, 1086
  %i.dgu = zext nneg i32 %i.dgt to i64
  %i.dgv = shl nuw nsw i64 %i.dgu, 52
  %i.dgw = and i64 %i.dgp, 4503599627370495
  %i.dgx = or disjoint i64 %i.dgv, %i.dgw
  br label %bb.vt

bb.vn:                                            ; preds = %bb.vl
  %i.dgy = icmp samesign ugt i32 %i.dgq, -1138
  br i1 %i.dgy, label %bb.vo, label %bb.vt, !prof !25

bb.vo:                                            ; preds = %bb.vn
  %i.dgz = sub nuw nsw i32 -1085, %i.dgq
  %i.dha = zext nneg i32 %i.dgz to i64
  %i.dhb = lshr i64 %i.dgp, %i.dha
  br label %bb.vt

diy_fp_to_ieee_raw.exit1499:                      ; preds = %bb.vk
  %i.dhc = and i32 %.fr, 128
  %.not3443 = icmp eq i32 %i.dhc, 0
  br i1 %.not3443, label %bb.vq, label %bb.vp, !prof !25

bb.vp:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dhd = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.dhd, align 1, !tbaa !81
  %i.dhe = ptrtoint ptr %.33.i877 to i64
  %i.dhf = ptrtoint ptr %i.cal to i64
  %i.dhg = sub i64 %i.dhe, %i.dhf
  %i.dhh = shl i64 %i.dhg, 8
  %i.dhi = or disjoint i64 %i.dhh, 1
  store i64 %i.dhi, ptr %.6623, align 8, !tbaa !79
  %i.dhj = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.cal, ptr %i.dhj, align 8, !tbaa !81
  store ptr %.33.i877, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit986.thread3225

bb.vq:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dhk = and i32 %.fr, 16
  %.not3444 = icmp eq i32 %i.dhk, 0
  br i1 %.not3444, label %bb.vs, label %bb.vr, !prof !25

bb.vr:                                            ; preds = %bb.vq
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.dhl = select i1 %i.cap, i64 -4503599627370496, i64 9218868437227405312
  %i.dhm = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dhl, ptr %i.dhm, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

bb.vs:                                            ; preds = %bb.vq
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit986

bb.vt:                                            ; preds = %.thread3208, %bb.vm, %bb.vo, %bb.vn
  %.0.i1498.ph = phi i64 [ 0, %bb.vn ], [ %i.dhb, %bb.vo ], [ %i.dgx, %bb.vm ], [ 0, %.thread3208 ] ; 7 uses
  %i.dhn = sub i64 %i.dge, %.0898.i890
  %.not987.i896 = icmp ule i64 %i.dgb, %i.dhn
  %spec.select.i897 = or i1 %.not987.i896, %i.dgh
  br i1 %spec.select.i897, label %bb.vu, label %bb.vv, !prof !25

bb.vu:                                            ; preds = %bb.vt
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.dho = select i1 %i.cap, i64 -9223372036854775808, i64 0
  %i.dhp = or disjoint i64 %.0.i1498.ph, %i.dho
  %i.dhq = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dhp, ptr %i.dhq, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

bb.vv:                                            ; preds = %bb.vt
  %.not988.i898 = icmp samesign ult i64 %.0.i1498.ph, 4503599627370496 ; 2 uses
  %i.dhr = and i64 %.0.i1498.ph, 4503599627370495
  %i.dhs = or disjoint i64 %i.dhr, 4503599627370496
  %i.dht = lshr i64 %.0.i1498.ph, 52
  %i.dhu = trunc nuw nsw i64 %i.dht to i32
  %i.dhv = add nsw i32 %i.dhu, -1076
  %.sroa.9.0.i899 = select i1 %.not988.i898, i32 -1075, i32 %i.dhv ; 5 uses
  %.sroa.018.0.i900 = select i1 %.not988.i898, i64 %.0.i1498.ph, i64 %i.dhs
  %i.dhw = shl nuw nsw i64 %.sroa.018.0.i900, 1
  %i.dhx = or disjoint i64 %i.dhw, 1
  call fastcc void @bigint_set_buf(ptr noundef %5, i64 noundef %.22894.i878, ptr noundef %i.b, ptr noundef %.3863.i881, ptr noundef %.3867.i880, ptr noundef %.23.i879)
  %i.dhy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.dhx, ptr %i.dhy, align 8, !tbaa !91
  %i.dhz = load i32, ptr %i.b, align 4, !tbaa !114 ; 6 uses
  %i.dia = icmp sgt i32 %i.dhz, -1
  br i1 %i.dia, label %.preheader3559, label %bb.wd

.preheader3559:                                   ; preds = %bb.vv
  %.promoted4121 = load i32, ptr %5, align 8      ; 2 uses
  %i.dib = icmp samesign ugt i32 %i.dhz, 18
  br i1 %i.dib, label %.lr.ph4124, label %._crit_edge4125

.lr.ph4124:                                       ; preds = %.preheader3559
  %i.dic = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.vw

bb.vw:                                            ; preds = %.lr.ph4124, %bigint_mul_u64.exit1627
  %.0.i15074123 = phi i32 [ %i.dhz, %.lr.ph4124 ], [ %i.djq, %bigint_mul_u64.exit1627 ] ; 2 uses
  %i.did = phi i32 [ %.promoted4121, %.lr.ph4124 ], [ %i.djp, %bigint_mul_u64.exit1627 ] ; 9 uses
  %.not4457 = icmp eq i32 %i.did, 0
  br i1 %.not4457, label %._crit_edge4111, label %.lr.ph4110.preheader

.lr.ph4110.preheader:                             ; preds = %bb.vw
  %wide.trip.count4714 = zext i32 %i.did to i64
  br label %.lr.ph4110

.lr.ph4110:                                       ; preds = %.lr.ph4110.preheader, %bb.vx
  %indvars.iv4711 = phi i64 [ 0, %.lr.ph4110.preheader ], [ %indvars.iv.next4712, %bb.vx ] ; 3 uses
  %i.die = getelementptr inbounds nuw [8 x i8], ptr %i.dic, i64 %indvars.iv4711
  %i.dif = load i64, ptr %i.die, align 8, !tbaa !91
  %.not.i1626 = icmp eq i64 %i.dif, 0
  br i1 %.not.i1626, label %bb.vx, label %._crit_edge4111.loopexit

bb.vx:                                            ; preds = %.lr.ph4110
  %indvars.iv.next4712 = add nuw nsw i64 %indvars.iv4711, 1 ; 2 uses
  %exitcond4715.not = icmp eq i64 %indvars.iv.next4712, %wide.trip.count4714
  br i1 %exitcond4715.not, label %bigint_mul_u64.exit1627, label %.lr.ph4110, !llvm.loop !135

._crit_edge4111.loopexit:                         ; preds = %.lr.ph4110
  %i.dig = trunc nuw i64 %indvars.iv4711 to i32
  br label %._crit_edge4111

._crit_edge4111:                                  ; preds = %._crit_edge4111.loopexit, %bb.vw
  %.018.i1622.lcssa = phi i32 [ 0, %bb.vw ], [ %i.dig, %._crit_edge4111.loopexit ] ; 2 uses
  %i.dih = icmp ult i32 %.018.i1622.lcssa, %i.did
  br i1 %i.dih, label %.lr.ph4118.preheader, label %bigint_mul_u64.exit1627

.lr.ph4118.preheader:                             ; preds = %._crit_edge4111
  %i.dii = zext i32 %.018.i1622.lcssa to i64      ; 4 uses
  %wide.trip.count4719 = zext i32 %i.did to i64   ; 2 uses
  %i.dij = sub nsw i64 %wide.trip.count4719, %i.dii ; 3 uses
  %xtraiter6483 = and i64 %i.dij, 1
  %i.dik = add nsw i64 %wide.trip.count4719, -1
  %i.dil = icmp eq i64 %i.dik, %i.dii
  br i1 %i.dil, label %.lr.ph4118.epil.preheader, label %.lr.ph4118.preheader.new

.lr.ph4118.preheader.new:                         ; preds = %.lr.ph4118.preheader
  %unroll_iter6488 = and i64 %i.dij, -2
  br label %.lr.ph4118

.lr.ph4118:                                       ; preds = %.lr.ph4118, %.lr.ph4118.preheader.new
  %indvars.iv4716 = phi i64 [ %i.dii, %.lr.ph4118.preheader.new ], [ %indvars.iv.next4717.1, %.lr.ph4118 ] ; 3 uses
  %.0.i16244116 = phi i64 [ 0, %.lr.ph4118.preheader.new ], [ %i.djb, %.lr.ph4118 ]
  %niter6489 = phi i64 [ 0, %.lr.ph4118.preheader.new ], [ %niter6489.next.1, %.lr.ph4118 ]
  %i.dim = getelementptr inbounds nuw [8 x i8], ptr %i.dic, i64 %indvars.iv4716 ; 2 uses
  %i.din = load i64, ptr %i.dim, align 8, !tbaa !91
  %i.dio = zext i64 %i.din to i128
  %i.dip = mul nuw i128 %i.dio, 10000000000000000000
  %i.diq = zext i64 %.0.i16244116 to i128
  %i.dir = add nuw i128 %i.dip, %i.diq            ; 2 uses
  %i.dis = lshr i128 %i.dir, 64
  %i.dit = trunc i128 %i.dir to i64
  store i64 %i.dit, ptr %i.dim, align 8, !tbaa !91
  %i.diu = getelementptr inbounds nuw [8 x i8], ptr %i.dic, i64 %indvars.iv4716
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 8 ; 2 uses
  %i.diw = load i64, ptr %i.div, align 8, !tbaa !91
  %i.dix = zext i64 %i.diw to i128
  %i.diy = mul nuw i128 %i.dix, 10000000000000000000
  %i.diz = add nuw i128 %i.diy, %i.dis            ; 2 uses
  %i.dja = lshr i128 %i.diz, 64                   ; 2 uses
  %i.djb = trunc nuw i128 %i.dja to i64           ; 3 uses
  %i.djc = trunc i128 %i.diz to i64
  store i64 %i.djc, ptr %i.div, align 8, !tbaa !91
  %indvars.iv.next4717.1 = add nuw nsw i64 %indvars.iv4716, 2 ; 2 uses
  %niter6489.next.1 = add i64 %niter6489, 2       ; 2 uses
  %niter6489.ncmp.1 = icmp eq i64 %niter6489.next.1, %unroll_iter6488
  br i1 %niter6489.ncmp.1, label %._crit_edge4119.unr-lcssa, label %.lr.ph4118, !llvm.loop !136

._crit_edge4119.unr-lcssa:                        ; preds = %.lr.ph4118
  %lcmp.mod6484.not = icmp eq i64 %xtraiter6483, 0
  br i1 %lcmp.mod6484.not, label %._crit_edge4119, label %.lr.ph4118.epil.preheader

.lr.ph4118.epil.preheader:                        ; preds = %._crit_edge4119.unr-lcssa, %.lr.ph4118.preheader
  %indvars.iv4716.epil.init = phi i64 [ %i.dii, %.lr.ph4118.preheader ], [ %indvars.iv.next4717.1, %._crit_edge4119.unr-lcssa ]
  %.0.i16244116.epil.init = phi i64 [ 0, %.lr.ph4118.preheader ], [ %i.djb, %._crit_edge4119.unr-lcssa ]
  %lcmp.mod6487 = trunc i64 %i.dij to i1
  call void @llvm.assume(i1 %lcmp.mod6487)
  %i.djd = getelementptr inbounds nuw [8 x i8], ptr %i.dic, i64 %indvars.iv4716.epil.init ; 2 uses
  %i.dje = load i64, ptr %i.djd, align 8, !tbaa !91
  %i.djf = zext i64 %i.dje to i128
  %i.djg = mul nuw i128 %i.djf, 10000000000000000000
  %i.djh = zext i64 %.0.i16244116.epil.init to i128
  %i.dji = add nuw i128 %i.djg, %i.djh            ; 2 uses
  %i.djj = lshr i128 %i.dji, 64                   ; 2 uses
  %i.djk = trunc nuw i128 %i.djj to i64
  %i.djl = trunc i128 %i.dji to i64
  store i64 %i.djl, ptr %i.djd, align 8, !tbaa !91
  br label %._crit_edge4119

._crit_edge4119:                                  ; preds = %._crit_edge4119.unr-lcssa, %.lr.ph4118.epil.preheader
  %.lcssa6276 = phi i128 [ %i.dja, %._crit_edge4119.unr-lcssa ], [ %i.djj, %.lr.ph4118.epil.preheader ]
  %.lcssa6275 = phi i64 [ %i.djb, %._crit_edge4119.unr-lcssa ], [ %i.djk, %.lr.ph4118.epil.preheader ]
  %.not19.i1625 = icmp eq i128 %.lcssa6276, 0
  br i1 %.not19.i1625, label %bigint_mul_u64.exit1627, label %bb.vy

bb.vy:                                            ; preds = %._crit_edge4119
  %i.djm = add i32 %i.did, 1
  %i.djn = zext i32 %i.did to i64
  %i.djo = getelementptr inbounds nuw [8 x i8], ptr %i.dic, i64 %i.djn
  store i64 %.lcssa6275, ptr %i.djo, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1627

bigint_mul_u64.exit1627:                          ; preds = %bb.vx, %._crit_edge4111, %._crit_edge4119, %bb.vy
  %i.djp = phi i32 [ %i.did, %._crit_edge4119 ], [ %i.djm, %bb.vy ], [ %i.did, %._crit_edge4111 ], [ %i.did, %bb.vx ] ; 2 uses
  %i.djq = add nsw i32 %.0.i15074123, -19         ; 2 uses
  %i.djr = icmp sgt i32 %.0.i15074123, 37
  br i1 %i.djr, label %bb.vw, label %._crit_edge4125, !llvm.loop !137

._crit_edge4125:                                  ; preds = %bigint_mul_u64.exit1627, %.preheader3559
  %i.djs = phi i32 [ %.promoted4121, %.preheader3559 ], [ %i.djp, %bigint_mul_u64.exit1627 ] ; 7 uses
  %.0.i1507.lcssa = phi i32 [ %i.dhz, %.preheader3559 ], [ %i.djq, %bigint_mul_u64.exit1627 ] ; 2 uses
  store i32 %i.djs, ptr %5, align 8
  %.not.i1508 = icmp eq i32 %.0.i1507.lcssa, 0
  br i1 %.not.i1508, label %bigint_mul_pow10.exit1509, label %bb.vz

bb.vz:                                            ; preds = %._crit_edge4125
  %i.djt = sext i32 %.0.i1507.lcssa to i64
  %i.dju = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.djt
  %i.djv = load i64, ptr %i.dju, align 8, !tbaa !91
  %i.djw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not4458 = icmp eq i32 %i.djs, 0
  br i1 %.not4458, label %._crit_edge4131, label %.lr.ph4130.preheader

.lr.ph4130.preheader:                             ; preds = %bb.vz
  %wide.trip.count4724 = zext i32 %i.djs to i64
  br label %.lr.ph4130

.lr.ph4130:                                       ; preds = %.lr.ph4130.preheader, %bb.wa
  %indvars.iv4721 = phi i64 [ 0, %.lr.ph4130.preheader ], [ %indvars.iv.next4722, %bb.wa ] ; 3 uses
  %i.djx = getelementptr inbounds nuw [8 x i8], ptr %i.djw, i64 %indvars.iv4721
  %i.djy = load i64, ptr %i.djx, align 8, !tbaa !91
  %.not.i1632 = icmp eq i64 %i.djy, 0
  br i1 %.not.i1632, label %bb.wa, label %._crit_edge4131.loopexit

bb.wa:                                            ; preds = %.lr.ph4130
  %indvars.iv.next4722 = add nuw nsw i64 %indvars.iv4721, 1 ; 2 uses
  %exitcond4725.not = icmp eq i64 %indvars.iv.next4722, %wide.trip.count4724
  br i1 %exitcond4725.not, label %bigint_mul_pow10.exit1509, label %.lr.ph4130, !llvm.loop !135

._crit_edge4131.loopexit:                         ; preds = %.lr.ph4130
  %i.djz = trunc nuw i64 %indvars.iv4721 to i32
  br label %._crit_edge4131

._crit_edge4131:                                  ; preds = %._crit_edge4131.loopexit, %bb.vz
  %.018.i1628.lcssa = phi i32 [ 0, %bb.vz ], [ %i.djz, %._crit_edge4131.loopexit ] ; 2 uses
  %i.dka = icmp ult i32 %.018.i1628.lcssa, %i.djs
  br i1 %i.dka, label %.lr.ph4138, label %bigint_mul_pow10.exit1509

.lr.ph4138:                                       ; preds = %._crit_edge4131
  %i.dkb = zext i64 %i.djv to i128                ; 3 uses
  %i.dkc = zext i32 %.018.i1628.lcssa to i64      ; 4 uses
  %wide.trip.count4729 = zext i32 %i.djs to i64   ; 2 uses
  %i.dkd = sub nsw i64 %wide.trip.count4729, %i.dkc ; 3 uses
  %xtraiter6491 = and i64 %i.dkd, 1
  %i.dke = add nsw i64 %wide.trip.count4729, -1
  %i.dkf = icmp eq i64 %i.dke, %i.dkc
  br i1 %i.dkf, label %.epil.preheader6490, label %.lr.ph4138.new

.lr.ph4138.new:                                   ; preds = %.lr.ph4138
  %unroll_iter6496 = and i64 %i.dkd, -2
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wb, %.lr.ph4138.new
  %indvars.iv4726 = phi i64 [ %i.dkc, %.lr.ph4138.new ], [ %indvars.iv.next4727.1, %bb.wb ] ; 3 uses
  %.0.i16304136 = phi i64 [ 0, %.lr.ph4138.new ], [ %i.dkv, %bb.wb ]
  %niter6497 = phi i64 [ 0, %.lr.ph4138.new ], [ %niter6497.next.1, %bb.wb ]
  %i.dkg = getelementptr inbounds nuw [8 x i8], ptr %i.djw, i64 %indvars.iv4726 ; 2 uses
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !91
  %i.dki = zext i64 %i.dkh to i128
  %i.dkj = mul nuw i128 %i.dki, %i.dkb
  %i.dkk = zext i64 %.0.i16304136 to i128
  %i.dkl = add nuw i128 %i.dkj, %i.dkk            ; 2 uses
  %i.dkm = lshr i128 %i.dkl, 64
  %i.dkn = trunc i128 %i.dkl to i64
  store i64 %i.dkn, ptr %i.dkg, align 8, !tbaa !91
  %i.dko = getelementptr inbounds nuw [8 x i8], ptr %i.djw, i64 %indvars.iv4726
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 8 ; 2 uses
  %i.dkq = load i64, ptr %i.dkp, align 8, !tbaa !91
  %i.dkr = zext i64 %i.dkq to i128
  %i.dks = mul nuw i128 %i.dkr, %i.dkb
  %i.dkt = add nuw i128 %i.dks, %i.dkm            ; 2 uses
  %i.dku = lshr i128 %i.dkt, 64                   ; 2 uses
  %i.dkv = trunc nuw i128 %i.dku to i64           ; 3 uses
  %i.dkw = trunc i128 %i.dkt to i64
  store i64 %i.dkw, ptr %i.dkp, align 8, !tbaa !91
  %indvars.iv.next4727.1 = add nuw nsw i64 %indvars.iv4726, 2 ; 2 uses
  %niter6497.next.1 = add i64 %niter6497, 2       ; 2 uses
  %niter6497.ncmp.1 = icmp eq i64 %niter6497.next.1, %unroll_iter6496
  br i1 %niter6497.ncmp.1, label %._crit_edge4139.unr-lcssa, label %bb.wb, !llvm.loop !136

._crit_edge4139.unr-lcssa:                        ; preds = %bb.wb
  %lcmp.mod6492.not = icmp eq i64 %xtraiter6491, 0
  br i1 %lcmp.mod6492.not, label %._crit_edge4139, label %.epil.preheader6490

.epil.preheader6490:                              ; preds = %._crit_edge4139.unr-lcssa, %.lr.ph4138
  %indvars.iv4726.epil.init = phi i64 [ %i.dkc, %.lr.ph4138 ], [ %indvars.iv.next4727.1, %._crit_edge4139.unr-lcssa ]
  %.0.i16304136.epil.init = phi i64 [ 0, %.lr.ph4138 ], [ %i.dkv, %._crit_edge4139.unr-lcssa ]
  %lcmp.mod6495 = trunc i64 %i.dkd to i1
  call void @llvm.assume(i1 %lcmp.mod6495)
  %i.dkx = getelementptr inbounds nuw [8 x i8], ptr %i.djw, i64 %indvars.iv4726.epil.init ; 2 uses
  %i.dky = load i64, ptr %i.dkx, align 8, !tbaa !91
  %i.dkz = zext i64 %i.dky to i128
  %i.dla = mul nuw i128 %i.dkz, %i.dkb
  %i.dlb = zext i64 %.0.i16304136.epil.init to i128
  %i.dlc = add nuw i128 %i.dla, %i.dlb            ; 2 uses
  %i.dld = lshr i128 %i.dlc, 64                   ; 2 uses
  %i.dle = trunc nuw i128 %i.dld to i64
  %i.dlf = trunc i128 %i.dlc to i64
  store i64 %i.dlf, ptr %i.dkx, align 8, !tbaa !91
  br label %._crit_edge4139

._crit_edge4139:                                  ; preds = %._crit_edge4139.unr-lcssa, %.epil.preheader6490
  %.lcssa6272 = phi i128 [ %i.dku, %._crit_edge4139.unr-lcssa ], [ %i.dld, %.epil.preheader6490 ]
  %.lcssa6271 = phi i64 [ %i.dkv, %._crit_edge4139.unr-lcssa ], [ %i.dle, %.epil.preheader6490 ]
  %.not19.i1631 = icmp eq i128 %.lcssa6272, 0
  br i1 %.not19.i1631, label %bigint_mul_pow10.exit1509, label %bb.wc

bb.wc:                                            ; preds = %._crit_edge4139
  %i.dlg = add i32 %i.djs, 1
  store i32 %i.dlg, ptr %5, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit1509.sink.split

bb.wd:                                            ; preds = %bb.vv
  %i.dlh = sub nsw i32 0, %i.dhz                  ; 2 uses
  %i.dli = icmp samesign ult i32 %i.dhz, -18
  br i1 %i.dli, label %.lr.ph4091, label %.thread5400

.thread5400:                                      ; preds = %bb.wd
  store i32 1, ptr %6, align 8
  %i.dlj = zext nneg i32 %i.dlh to i64
  %i.dlk = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.dlj
  %i.dll = load i64, ptr %i.dlk, align 8, !tbaa !91
  br label %.lr.ph4097.preheader

.lr.ph4091:                                       ; preds = %bb.wd, %bigint_mul_u64.exit1615
  %.0.i15104089 = phi i32 [ %i.dmz, %bigint_mul_u64.exit1615 ], [ %i.dlh, %bb.wd ] ; 2 uses
  %i.dlm = phi i32 [ %i.dmy, %bigint_mul_u64.exit1615 ], [ 1, %bb.wd ] ; 9 uses
  %.not4455 = icmp eq i32 %i.dlm, 0
  br i1 %.not4455, label %._crit_edge4077, label %.lr.ph4076.preheader

.lr.ph4076.preheader:                             ; preds = %.lr.ph4091
  %wide.trip.count4694 = zext i32 %i.dlm to i64
  br label %.lr.ph4076

.lr.ph4076:                                       ; preds = %.lr.ph4076.preheader, %bb.we
  %indvars.iv4691 = phi i64 [ 0, %.lr.ph4076.preheader ], [ %indvars.iv.next4692, %bb.we ] ; 3 uses
  %i.dln = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4691
  %i.dlo = load i64, ptr %i.dln, align 8, !tbaa !91
  %.not.i1614 = icmp eq i64 %i.dlo, 0
  br i1 %.not.i1614, label %bb.we, label %._crit_edge4077.loopexit

bb.we:                                            ; preds = %.lr.ph4076
  %indvars.iv.next4692 = add nuw nsw i64 %indvars.iv4691, 1 ; 2 uses
  %exitcond4695.not = icmp eq i64 %indvars.iv.next4692, %wide.trip.count4694
  br i1 %exitcond4695.not, label %bigint_mul_u64.exit1615, label %.lr.ph4076, !llvm.loop !135

._crit_edge4077.loopexit:                         ; preds = %.lr.ph4076
  %i.dlp = trunc nuw i64 %indvars.iv4691 to i32
  br label %._crit_edge4077

._crit_edge4077:                                  ; preds = %._crit_edge4077.loopexit, %.lr.ph4091
  %.018.i1610.lcssa = phi i32 [ 0, %.lr.ph4091 ], [ %i.dlp, %._crit_edge4077.loopexit ] ; 2 uses
  %i.dlq = icmp ult i32 %.018.i1610.lcssa, %i.dlm
  br i1 %i.dlq, label %.lr.ph4084.preheader, label %bigint_mul_u64.exit1615

.lr.ph4084.preheader:                             ; preds = %._crit_edge4077
  %i.dlr = zext i32 %.018.i1610.lcssa to i64      ; 4 uses
  %wide.trip.count4699 = zext i32 %i.dlm to i64   ; 2 uses
  %i.dls = sub nsw i64 %wide.trip.count4699, %i.dlr ; 3 uses
  %xtraiter6468 = and i64 %i.dls, 1
  %i.dlt = add nsw i64 %wide.trip.count4699, -1
  %i.dlu = icmp eq i64 %i.dlt, %i.dlr
  br i1 %i.dlu, label %.lr.ph4084.epil.preheader, label %.lr.ph4084.preheader.new

.lr.ph4084.preheader.new:                         ; preds = %.lr.ph4084.preheader
  %unroll_iter6473 = and i64 %i.dls, -2
  br label %.lr.ph4084

.lr.ph4084:                                       ; preds = %.lr.ph4084, %.lr.ph4084.preheader.new
  %indvars.iv4696 = phi i64 [ %i.dlr, %.lr.ph4084.preheader.new ], [ %indvars.iv.next4697.1, %.lr.ph4084 ] ; 3 uses
  %.0.i16124082 = phi i64 [ 0, %.lr.ph4084.preheader.new ], [ %i.dmk, %.lr.ph4084 ]
  %niter6474 = phi i64 [ 0, %.lr.ph4084.preheader.new ], [ %niter6474.next.1, %.lr.ph4084 ]
  %i.dlv = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4696 ; 2 uses
  %i.dlw = load i64, ptr %i.dlv, align 8, !tbaa !91
  %i.dlx = zext i64 %i.dlw to i128
  %i.dly = mul nuw i128 %i.dlx, 10000000000000000000
  %i.dlz = zext i64 %.0.i16124082 to i128
  %i.dma = add nuw i128 %i.dly, %i.dlz            ; 2 uses
  %i.dmb = lshr i128 %i.dma, 64
  %i.dmc = trunc i128 %i.dma to i64
  store i64 %i.dmc, ptr %i.dlv, align 8, !tbaa !91
  %i.dmd = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4696
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dmd, i64 8 ; 2 uses
  %i.dmf = load i64, ptr %i.dme, align 8, !tbaa !91
  %i.dmg = zext i64 %i.dmf to i128
  %i.dmh = mul nuw i128 %i.dmg, 10000000000000000000
  %i.dmi = add nuw i128 %i.dmh, %i.dmb            ; 2 uses
  %i.dmj = lshr i128 %i.dmi, 64                   ; 2 uses
  %i.dmk = trunc nuw i128 %i.dmj to i64           ; 3 uses
  %i.dml = trunc i128 %i.dmi to i64
  store i64 %i.dml, ptr %i.dme, align 8, !tbaa !91
  %indvars.iv.next4697.1 = add nuw nsw i64 %indvars.iv4696, 2 ; 2 uses
  %niter6474.next.1 = add i64 %niter6474, 2       ; 2 uses
  %niter6474.ncmp.1 = icmp eq i64 %niter6474.next.1, %unroll_iter6473
  br i1 %niter6474.ncmp.1, label %._crit_edge4085.unr-lcssa, label %.lr.ph4084, !llvm.loop !136

._crit_edge4085.unr-lcssa:                        ; preds = %.lr.ph4084
  %lcmp.mod6469.not = icmp eq i64 %xtraiter6468, 0
  br i1 %lcmp.mod6469.not, label %._crit_edge4085, label %.lr.ph4084.epil.preheader

.lr.ph4084.epil.preheader:                        ; preds = %._crit_edge4085.unr-lcssa, %.lr.ph4084.preheader
  %indvars.iv4696.epil.init = phi i64 [ %i.dlr, %.lr.ph4084.preheader ], [ %indvars.iv.next4697.1, %._crit_edge4085.unr-lcssa ]
  %.0.i16124082.epil.init = phi i64 [ 0, %.lr.ph4084.preheader ], [ %i.dmk, %._crit_edge4085.unr-lcssa ]
  %lcmp.mod6472 = trunc i64 %i.dls to i1
  call void @llvm.assume(i1 %lcmp.mod6472)
  %i.dmm = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4696.epil.init ; 2 uses
  %i.dmn = load i64, ptr %i.dmm, align 8, !tbaa !91
  %i.dmo = zext i64 %i.dmn to i128
  %i.dmp = mul nuw i128 %i.dmo, 10000000000000000000
  %i.dmq = zext i64 %.0.i16124082.epil.init to i128
  %i.dmr = add nuw i128 %i.dmp, %i.dmq            ; 2 uses
  %i.dms = lshr i128 %i.dmr, 64                   ; 2 uses
  %i.dmt = trunc nuw i128 %i.dms to i64
  %i.dmu = trunc i128 %i.dmr to i64
  store i64 %i.dmu, ptr %i.dmm, align 8, !tbaa !91
  br label %._crit_edge4085

._crit_edge4085:                                  ; preds = %._crit_edge4085.unr-lcssa, %.lr.ph4084.epil.preheader
  %.lcssa6285 = phi i128 [ %i.dmj, %._crit_edge4085.unr-lcssa ], [ %i.dms, %.lr.ph4084.epil.preheader ]
  %.lcssa6284 = phi i64 [ %i.dmk, %._crit_edge4085.unr-lcssa ], [ %i.dmt, %.lr.ph4084.epil.preheader ]
  %.not19.i1613 = icmp eq i128 %.lcssa6285, 0
  br i1 %.not19.i1613, label %bigint_mul_u64.exit1615, label %bb.wf

bb.wf:                                            ; preds = %._crit_edge4085
  %i.dmv = add i32 %i.dlm, 1
  %i.dmw = zext i32 %i.dlm to i64
  %i.dmx = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dmw
  store i64 %.lcssa6284, ptr %i.dmx, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1615

bigint_mul_u64.exit1615:                          ; preds = %bb.we, %._crit_edge4077, %._crit_edge4085, %bb.wf
  %i.dmy = phi i32 [ %i.dlm, %._crit_edge4085 ], [ %i.dmv, %bb.wf ], [ %i.dlm, %._crit_edge4077 ], [ %i.dlm, %bb.we ] ; 5 uses
  %i.dmz = add nsw i32 %.0.i15104089, -19         ; 3 uses
  %i.dna = icmp sgt i32 %.0.i15104089, 37
  br i1 %i.dna, label %.lr.ph4091, label %._crit_edge4092, !llvm.loop !137

._crit_edge4092:                                  ; preds = %bigint_mul_u64.exit1615
  store i32 %i.dmy, ptr %6, align 8
  %.not.i1511 = icmp eq i32 %i.dmz, 0
  br i1 %.not.i1511, label %bigint_mul_pow10.exit1509, label %bb.wg

bb.wg:                                            ; preds = %._crit_edge4092
  %i.dnb = sext i32 %i.dmz to i64
  %i.dnc = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.dnb
  %i.dnd = load i64, ptr %i.dnc, align 8, !tbaa !91 ; 2 uses
  %.not4456 = icmp eq i32 %i.dmy, 0
  br i1 %.not4456, label %._crit_edge4098, label %.lr.ph4097.preheader

.lr.ph4097.preheader:                             ; preds = %.thread5400, %bb.wg
  %i.dne = phi i64 [ %i.dll, %.thread5400 ], [ %i.dnd, %bb.wg ]
  %i.dnf = phi i32 [ 1, %.thread5400 ], [ %i.dmy, %bb.wg ] ; 3 uses
  %wide.trip.count4704 = zext i32 %i.dnf to i64
  br label %.lr.ph4097

.lr.ph4097:                                       ; preds = %.lr.ph4097.preheader, %bb.wh
  %indvars.iv4701 = phi i64 [ 0, %.lr.ph4097.preheader ], [ %indvars.iv.next4702, %bb.wh ] ; 3 uses
  %i.dng = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4701
  %i.dnh = load i64, ptr %i.dng, align 8, !tbaa !91
  %.not.i1620 = icmp eq i64 %i.dnh, 0
  br i1 %.not.i1620, label %bb.wh, label %._crit_edge4098.loopexit

bb.wh:                                            ; preds = %.lr.ph4097
  %indvars.iv.next4702 = add nuw nsw i64 %indvars.iv4701, 1 ; 2 uses
  %exitcond4705.not = icmp eq i64 %indvars.iv.next4702, %wide.trip.count4704
  br i1 %exitcond4705.not, label %bigint_mul_pow10.exit1509, label %.lr.ph4097, !llvm.loop !135

._crit_edge4098.loopexit:                         ; preds = %.lr.ph4097
  %i.dni = trunc nuw i64 %indvars.iv4701 to i32
  br label %._crit_edge4098

._crit_edge4098:                                  ; preds = %._crit_edge4098.loopexit, %bb.wg
  %i.dnj = phi i64 [ %i.dnd, %bb.wg ], [ %i.dne, %._crit_edge4098.loopexit ]
  %i.dnk = phi i32 [ 0, %bb.wg ], [ %i.dnf, %._crit_edge4098.loopexit ] ; 6 uses
  %.018.i1616.lcssa = phi i32 [ 0, %bb.wg ], [ %i.dni, %._crit_edge4098.loopexit ] ; 2 uses
  %i.dnl = icmp ult i32 %.018.i1616.lcssa, %i.dnk
  br i1 %i.dnl, label %.lr.ph4105, label %bigint_mul_pow10.exit1509

.lr.ph4105:                                       ; preds = %._crit_edge4098
  %i.dnm = zext i64 %i.dnj to i128                ; 3 uses
  %i.dnn = zext i32 %.018.i1616.lcssa to i64      ; 4 uses
  %wide.trip.count4709 = zext i32 %i.dnk to i64   ; 2 uses
  %i.dno = sub nsw i64 %wide.trip.count4709, %i.dnn ; 3 uses
  %xtraiter6476 = and i64 %i.dno, 1
  %i.dnp = add nsw i64 %wide.trip.count4709, -1
  %i.dnq = icmp eq i64 %i.dnp, %i.dnn
  br i1 %i.dnq, label %.epil.preheader6475, label %.lr.ph4105.new

.lr.ph4105.new:                                   ; preds = %.lr.ph4105
  %unroll_iter6481 = and i64 %i.dno, -2
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wi, %.lr.ph4105.new
  %indvars.iv4706 = phi i64 [ %i.dnn, %.lr.ph4105.new ], [ %indvars.iv.next4707.1, %bb.wi ] ; 3 uses
  %.0.i16184103 = phi i64 [ 0, %.lr.ph4105.new ], [ %i.dog, %bb.wi ]
  %niter6482 = phi i64 [ 0, %.lr.ph4105.new ], [ %niter6482.next.1, %bb.wi ]
  %i.dnr = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4706 ; 2 uses
  %i.dns = load i64, ptr %i.dnr, align 8, !tbaa !91
  %i.dnt = zext i64 %i.dns to i128
  %i.dnu = mul nuw i128 %i.dnt, %i.dnm
  %i.dnv = zext i64 %.0.i16184103 to i128
  %i.dnw = add nuw i128 %i.dnu, %i.dnv            ; 2 uses
  %i.dnx = lshr i128 %i.dnw, 64
  %i.dny = trunc i128 %i.dnw to i64
  store i64 %i.dny, ptr %i.dnr, align 8, !tbaa !91
  %i.dnz = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4706
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 8 ; 2 uses
  %i.dob = load i64, ptr %i.doa, align 8, !tbaa !91
  %i.doc = zext i64 %i.dob to i128
  %i.dod = mul nuw i128 %i.doc, %i.dnm
  %i.doe = add nuw i128 %i.dod, %i.dnx            ; 2 uses
  %i.dof = lshr i128 %i.doe, 64                   ; 2 uses
  %i.dog = trunc nuw i128 %i.dof to i64           ; 3 uses
  %i.doh = trunc i128 %i.doe to i64
  store i64 %i.doh, ptr %i.doa, align 8, !tbaa !91
  %indvars.iv.next4707.1 = add nuw nsw i64 %indvars.iv4706, 2 ; 2 uses
  %niter6482.next.1 = add i64 %niter6482, 2       ; 2 uses
  %niter6482.ncmp.1 = icmp eq i64 %niter6482.next.1, %unroll_iter6481
  br i1 %niter6482.ncmp.1, label %._crit_edge4106.unr-lcssa, label %bb.wi, !llvm.loop !136

._crit_edge4106.unr-lcssa:                        ; preds = %bb.wi
  %lcmp.mod6477.not = icmp eq i64 %xtraiter6476, 0
  br i1 %lcmp.mod6477.not, label %._crit_edge4106, label %.epil.preheader6475

.epil.preheader6475:                              ; preds = %._crit_edge4106.unr-lcssa, %.lr.ph4105
  %indvars.iv4706.epil.init = phi i64 [ %i.dnn, %.lr.ph4105 ], [ %indvars.iv.next4707.1, %._crit_edge4106.unr-lcssa ]
  %.0.i16184103.epil.init = phi i64 [ 0, %.lr.ph4105 ], [ %i.dog, %._crit_edge4106.unr-lcssa ]
  %lcmp.mod6480 = trunc i64 %i.dno to i1
  call void @llvm.assume(i1 %lcmp.mod6480)
  %i.doi = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %indvars.iv4706.epil.init ; 2 uses
  %i.doj = load i64, ptr %i.doi, align 8, !tbaa !91
  %i.dok = zext i64 %i.doj to i128
  %i.dol = mul nuw i128 %i.dok, %i.dnm
  %i.dom = zext i64 %.0.i16184103.epil.init to i128
  %i.don = add nuw i128 %i.dol, %i.dom            ; 2 uses
  %i.doo = lshr i128 %i.don, 64                   ; 2 uses
  %i.dop = trunc nuw i128 %i.doo to i64
  %i.doq = trunc i128 %i.don to i64
  store i64 %i.doq, ptr %i.doi, align 8, !tbaa !91
  br label %._crit_edge4106

._crit_edge4106:                                  ; preds = %._crit_edge4106.unr-lcssa, %.epil.preheader6475
  %.lcssa6280 = phi i128 [ %i.dof, %._crit_edge4106.unr-lcssa ], [ %i.doo, %.epil.preheader6475 ]
  %.lcssa6279 = phi i64 [ %i.dog, %._crit_edge4106.unr-lcssa ], [ %i.dop, %.epil.preheader6475 ]
  %.not19.i1619 = icmp eq i128 %.lcssa6280, 0
  br i1 %.not19.i1619, label %bigint_mul_pow10.exit1509, label %bb.wj

bb.wj:                                            ; preds = %._crit_edge4106
  %i.dor = add i32 %i.dnk, 1
  br label %bigint_mul_pow10.exit1509.sink.split

bigint_mul_pow10.exit1509.sink.split:             ; preds = %bb.wc, %bb.wj
  %.sink5667 = phi i32 [ %i.dnk, %bb.wj ], [ %i.djs, %bb.wc ]
  %i.dos = phi ptr [ %6, %bb.wj ], [ %5, %bb.wc ]
  %.lcssa5524.sink = phi i64 [ %.lcssa6279, %bb.wj ], [ %.lcssa6271, %bb.wc ]
  %.ph5663 = phi i32 [ %i.dor, %bb.wj ], [ 1, %bb.wc ]
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dos, i64 8
  %i.dou = zext i32 %.sink5667 to i64
  %i.dov = getelementptr inbounds nuw [8 x i8], ptr %i.dot, i64 %i.dou
  store i64 %.lcssa5524.sink, ptr %i.dov, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1509

bigint_mul_pow10.exit1509:                        ; preds = %bb.wh, %bb.wa, %bigint_mul_pow10.exit1509.sink.split, %._crit_edge4098, %._crit_edge4131, %._crit_edge4092, %._crit_edge4106, %._crit_edge4125, %._crit_edge4139
  %i.dow = phi i32 [ %i.dmy, %._crit_edge4092 ], [ %i.dnk, %._crit_edge4106 ], [ %i.dnk, %._crit_edge4098 ], [ 1, %._crit_edge4125 ], [ 1, %._crit_edge4139 ], [ 1, %bb.wa ], [ %.ph5663, %bigint_mul_pow10.exit1509.sink.split ], [ 1, %._crit_edge4131 ], [ %i.dnf, %bb.wh ] ; 16 uses
  %i.dox = icmp sgt i32 %.sroa.9.0.i899, 0
  br i1 %i.dox, label %bb.wk, label %bb.wm

bb.wk:                                            ; preds = %bigint_mul_pow10.exit1509
  %i.doy = and i32 %.sroa.9.0.i899, 63            ; 3 uses
  %i.doz = lshr i32 %.sroa.9.0.i899, 6            ; 14 uses
  %i.dpa = icmp eq i32 %i.doy, 0
  br i1 %i.dpa, label %.preheader3554, label %bb.wl, !prof !8

.preheader3554:                                   ; preds = %bb.wk
  %.not46.i15374167 = icmp eq i32 %i.dow, 0
  br i1 %.not46.i15374167, label %.lr.ph4174.preheader, label %.lr.ph4169

.lr.ph4169:                                       ; preds = %.preheader3554
  %i.dpb = add nsw i32 %i.doz, -1                 ; 6 uses
  %i.dpc = zext i32 %i.dow to i64                 ; 9 uses
  %min.iters.check6108 = icmp ult i32 %i.dow, 30
  br i1 %min.iters.check6108, label %scalar.ph6107.preheader, label %vector.scevcheck6104

vector.scevcheck6104:                             ; preds = %.lr.ph4169
  %i.dpd = add nsw i64 %i.dpc, -1                 ; 2 uses
  %i.dpe = add i32 %i.dow, %i.doz
  %i.dpf = add i32 %i.dpe, -1
  %i.dpg = trunc i64 %i.dpd to i32
  %i.dph = icmp ult i32 %i.dpf, %i.dpg
  %i.dpi = icmp ugt i64 %i.dpd, 4294967295
  %i.dpj = or i1 %i.dph, %i.dpi
  br i1 %i.dpj, label %scalar.ph6107.preheader, label %vector.memcheck6105

vector.memcheck6105:                              ; preds = %vector.scevcheck6104
  %i.dpk = add i32 %i.dow, %i.doz
  %i.dpl = add i32 %i.dpk, -1
  %i.dpm = zext i32 %i.dpl to i64
  %i.dpn = sub nsw i64 %i.dpc, %i.dpm
  %i.dpo = shl nsw i64 %i.dpn, 3
  %i.dpp = add nsw i64 %i.dpo, -9
  %diff.check6106 = icmp ult i64 %i.dpp, 31
  br i1 %diff.check6106, label %scalar.ph6107.preheader, label %vector.ph6109

vector.ph6109:                                    ; preds = %vector.memcheck6105
  %n.vec6110 = and i64 %i.dpc, 4294967292         ; 2 uses
  %i.dpq = and i64 %i.dpc, 3
  br label %vector.body6111

vector.body6111:                                  ; preds = %vector.body6111, %vector.ph6109
  %index6112 = phi i64 [ 0, %vector.ph6109 ], [ %index.next6115, %vector.body6111 ] ; 2 uses
  %i.dpr = sub i64 %i.dpc, %index6112             ; 2 uses
  %i.dps = getelementptr [8 x i8], ptr %6, i64 %i.dpr ; 2 uses
  %i.dpt = getelementptr i8, ptr %i.dps, i64 -8
  %i.dpu = getelementptr i8, ptr %i.dps, i64 -24
  %wide.load6113 = load <2 x i64>, ptr %i.dpt, align 8, !tbaa !91
  %wide.load6114 = load <2 x i64>, ptr %i.dpu, align 8, !tbaa !91
  %i.dpv = trunc nuw i64 %i.dpr to i32
  %i.dpw = add i32 %i.dpb, %i.dpv
  %i.dpx = zext i32 %i.dpw to i64
  %i.dpy = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dpx ; 2 uses
  %i.dpz = getelementptr inbounds i8, ptr %i.dpy, i64 -8
  %i.dqa = getelementptr inbounds i8, ptr %i.dpy, i64 -24
  store <2 x i64> %wide.load6113, ptr %i.dpz, align 8, !tbaa !91
  store <2 x i64> %wide.load6114, ptr %i.dqa, align 8, !tbaa !91
  %index.next6115 = add nuw i64 %index6112, 4     ; 2 uses
  %i.dqb = icmp eq i64 %index.next6115, %n.vec6110
  br i1 %i.dqb, label %middle.block6116, label %vector.body6111, !llvm.loop !288

middle.block6116:                                 ; preds = %vector.body6111
  %cmp.n6117 = icmp eq i64 %n.vec6110, %i.dpc
  br i1 %cmp.n6117, label %.lr.ph4174.preheader, label %scalar.ph6107.preheader

scalar.ph6107.preheader:                          ; preds = %vector.memcheck6105, %vector.scevcheck6104, %.lr.ph4169, %middle.block6116
  %indvars.iv4746.ph = phi i64 [ %i.dpc, %vector.memcheck6105 ], [ %i.dpc, %vector.scevcheck6104 ], [ %i.dpc, %.lr.ph4169 ], [ %i.dpq, %middle.block6116 ] ; 4 uses
  %i.dqc = add nsw i64 %indvars.iv4746.ph, -1
  %xtraiter6507 = and i64 %indvars.iv4746.ph, 3   ; 2 uses
  %lcmp.mod6508.not = icmp eq i64 %xtraiter6507, 0
  br i1 %lcmp.mod6508.not, label %scalar.ph6107.prol.loopexit, label %scalar.ph6107.prol

scalar.ph6107.prol:                               ; preds = %scalar.ph6107.preheader, %scalar.ph6107.prol
  %indvars.iv4746.prol = phi i64 [ %i.dqd, %scalar.ph6107.prol ], [ %indvars.iv4746.ph, %scalar.ph6107.preheader ] ; 3 uses
  %prol.iter6509 = phi i64 [ %prol.iter6509.next, %scalar.ph6107.prol ], [ 0, %scalar.ph6107.preheader ]
  %i.dqd = add nsw i64 %indvars.iv4746.prol, -1   ; 2 uses
  %i.dqe = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4746.prol
  %i.dqf = load i64, ptr %i.dqe, align 8, !tbaa !91
  %i.dqg = trunc nuw i64 %indvars.iv4746.prol to i32
  %i.dqh = add i32 %i.dpb, %i.dqg
  %i.dqi = zext i32 %i.dqh to i64
  %i.dqj = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dqi
  store i64 %i.dqf, ptr %i.dqj, align 8, !tbaa !91
  %prol.iter6509.next = add i64 %prol.iter6509, 1 ; 2 uses
  %prol.iter6509.cmp.not = icmp eq i64 %prol.iter6509.next, %xtraiter6507
  br i1 %prol.iter6509.cmp.not, label %scalar.ph6107.prol.loopexit, label %scalar.ph6107.prol, !llvm.loop !289

scalar.ph6107.prol.loopexit:                      ; preds = %scalar.ph6107.prol, %scalar.ph6107.preheader
  %indvars.iv4746.unr = phi i64 [ %indvars.iv4746.ph, %scalar.ph6107.preheader ], [ %i.dqd, %scalar.ph6107.prol ]
  %i.dqk = icmp ult i64 %i.dqc, 3
  br i1 %i.dqk, label %.lr.ph4174.preheader, label %scalar.ph6107

scalar.ph6107:                                    ; preds = %scalar.ph6107.prol.loopexit, %scalar.ph6107
  %indvars.iv4746 = phi i64 [ %i.drg, %scalar.ph6107 ], [ %indvars.iv4746.unr, %scalar.ph6107.prol.loopexit ] ; 6 uses
  %i.dql = add nsw i64 %indvars.iv4746, -1        ; 2 uses
  %i.dqm = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4746
  %i.dqn = load i64, ptr %i.dqm, align 8, !tbaa !91
  %i.dqo = trunc nuw i64 %indvars.iv4746 to i32
  %i.dqp = add i32 %i.dpb, %i.dqo
  %i.dqq = zext i32 %i.dqp to i64
  %i.dqr = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dqq
  store i64 %i.dqn, ptr %i.dqr, align 8, !tbaa !91
  %i.dqs = add nsw i64 %indvars.iv4746, -2        ; 2 uses
  %i.dqt = getelementptr [8 x i8], ptr %6, i64 %i.dql
  %i.dqu = load i64, ptr %i.dqt, align 8, !tbaa !91
  %i.dqv = trunc nuw i64 %i.dql to i32
  %i.dqw = add i32 %i.dpb, %i.dqv
  %i.dqx = zext i32 %i.dqw to i64
  %i.dqy = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dqx
  store i64 %i.dqu, ptr %i.dqy, align 8, !tbaa !91
  %i.dqz = add nsw i64 %indvars.iv4746, -3        ; 2 uses
  %i.dra = getelementptr [8 x i8], ptr %6, i64 %i.dqs
  %i.drb = load i64, ptr %i.dra, align 8, !tbaa !91
  %i.drc = trunc nuw i64 %i.dqs to i32
  %i.drd = add i32 %i.dpb, %i.drc
  %i.dre = zext i32 %i.drd to i64
  %i.drf = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.dre
  store i64 %i.drb, ptr %i.drf, align 8, !tbaa !91
  %i.drg = add nsw i64 %indvars.iv4746, -4        ; 2 uses
  %i.drh = getelementptr [8 x i8], ptr %6, i64 %i.dqz
  %i.dri = load i64, ptr %i.drh, align 8, !tbaa !91
  %i.drj = trunc nuw i64 %i.dqz to i32
  %i.drk = add i32 %i.dpb, %i.drj
  %i.drl = zext i32 %i.drk to i64
  %i.drm = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.drl
  store i64 %i.dri, ptr %i.drm, align 8, !tbaa !91
  %.not46.i1537.wide.3 = icmp eq i64 %i.drg, 0
  br i1 %.not46.i1537.wide.3, label %.lr.ph4174.preheader, label %scalar.ph6107, !llvm.loop !290

.lr.ph4174.preheader:                             ; preds = %scalar.ph6107.prol.loopexit, %scalar.ph6107, %middle.block6116, %.preheader3554
  %i.drn = add i32 %i.dow, %i.doz                 ; 2 uses
  store i32 %i.drn, ptr %6, align 8, !tbaa !138
  %i.dro = add nsw i32 %i.doz, -1
  %i.drp = zext i32 %i.dro to i64
  %i.drq = shl nuw nsw i64 %i.drp, 3
  %i.drr = add nuw nsw i64 %i.drq, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dhy, i8 0, i64 %i.drr, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1540

bb.wl:                                            ; preds = %bb.wk
  %i.drs = zext i32 %i.dow to i64                 ; 10 uses
  %i.drt = getelementptr inbounds nuw [8 x i8], ptr %i.dhy, i64 %i.drs
  store i64 0, ptr %i.drt, align 8, !tbaa !91
  %.not.i15334158 = icmp eq i32 %i.dow, 0
  %.pre5019 = zext nneg i32 %i.doy to i64         ; 5 uses
  br i1 %.not.i15334158, label %._crit_edge4162, label %.lr.ph4161

.lr.ph4161:                                       ; preds = %bb.wl
  %i.dru = sub nuw nsw i32 64, %i.doy
  %i.drv = zext nneg i32 %i.dru to i64            ; 4 uses
end_hunk_7
begin_hunk_8_@yyjson_incr_read:bb.a
  br label %.thread3309

.thread3309:                                      ; preds = %.critedge992.i, %.thread3306, %bb.aqu
  %.0898.i = phi i64 [ %i.hxl, %.thread3306 ], [ %i.hxb, %bb.aqu ], [ %i.hxb, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread3306 ], [ %i.hxe, %bb.aqu ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hxj, %.thread3306 ], [ %i.hxa, %bb.aqu ], [ %i.hxa, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.hxi, %.thread3306 ], [ %i.hwx, %bb.aqu ], [ %i.hwx, %.critedge992.i ] ; 2 uses
  %i.hxm = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hxm
  %i.hxn = xor i64 %notmask.i, -1
  %i.hxo = and i64 %.sroa.025.0.i, %i.hxn
  %i.hxp = shl nuw nsw i64 %i.hxo, 3              ; 2 uses
  %i.hxq = add nsw i32 %.0896.i, -1
  %i.hxr = zext nneg i32 %i.hxq to i64
  %i.hxs = shl nuw nsw i64 8, %i.hxr              ; 2 uses
  %i.hxt = lshr i64 %.sroa.025.0.i, %i.hxm
  %i.hxu = add i64 %i.hxs, %.0898.i
  %i.hxv = icmp uge i64 %i.hxp, %i.hxu            ; 2 uses
  %i.hxw = zext i1 %i.hxv to i64
  %i.hxx = add nuw nsw i64 %i.hxt, %i.hxw         ; 3 uses
  %i.hxy = icmp eq i64 %i.hxx, 0
  br i1 %i.hxy, label %bb.are, label %bb.aqv, !prof !8

bb.aqv:                                           ; preds = %.thread3309
  %i.hxz = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.hya = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hxx, i1 true) ; 2 uses
  %i.hyb = trunc nuw nsw i64 %i.hya to i32
  %i.hyc = shl i64 %i.hxx, %i.hya
  %i.hyd = lshr i64 %i.hyc, 11                    ; 2 uses
  %i.hye = sub nsw i32 %i.hxz, %i.hyb             ; 5 uses
  %i.hyf = icmp sgt i32 %i.hye, 960
  br i1 %i.hyf, label %diy_fp_to_ieee_raw.exit1501, label %bb.aqw, !prof !8

bb.aqw:                                           ; preds = %bb.aqv
  %i.hyg = icmp sgt i32 %i.hye, -1086
  br i1 %i.hyg, label %bb.aqx, label %bb.aqy, !prof !25

bb.aqx:                                           ; preds = %bb.aqw
  %i.hyh = add nsw i32 %i.hye, 1086
  %i.hyi = zext nneg i32 %i.hyh to i64
  %i.hyj = shl nuw nsw i64 %i.hyi, 52
  %i.hyk = and i64 %i.hyd, 4503599627370495
  %i.hyl = or disjoint i64 %i.hyj, %i.hyk
  br label %bb.are

bb.aqy:                                           ; preds = %bb.aqw
  %i.hym = icmp samesign ugt i32 %i.hye, -1138
  br i1 %i.hym, label %bb.aqz, label %bb.are, !prof !25

bb.aqz:                                           ; preds = %bb.aqy
  %i.hyn = sub nuw nsw i32 -1085, %i.hye
  %i.hyo = zext nneg i32 %i.hyn to i64
  %i.hyp = lshr i64 %i.hyd, %i.hyo
  br label %bb.are

diy_fp_to_ieee_raw.exit1501:                      ; preds = %bb.aqv
  %i.hyq = and i32 %.fr, 128
  %.not3392 = icmp eq i32 %i.hyq, 0
  br i1 %.not3392, label %bb.arb, label %bb.ara, !prof !25

bb.ara:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hyr = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.hyr, align 1, !tbaa !81
  %i.hys = ptrtoint ptr %.33.i to i64
  %i.hyt = ptrtoint ptr %i.gro to i64
  %i.hyu = sub i64 %i.hys, %i.hyt
  %i.hyv = shl i64 %i.hyu, 8
  %i.hyw = or disjoint i64 %i.hyv, 1
  store i64 %i.hyw, ptr %i.grs, align 8, !tbaa !79
  %i.hyx = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gro, ptr %i.hyx, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit.thread3326

bb.arb:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hyy = and i32 %.fr, 16
  %.not3393 = icmp eq i32 %i.hyy, 0
  br i1 %.not3393, label %bb.ard, label %bb.arc, !prof !25

bb.arc:                                           ; preds = %bb.arb
  store i64 20, ptr %i.grs, align 8, !tbaa !79
  %i.hyz = select i1 %i.grv, i64 -4503599627370496, i64 9218868437227405312
  %i.hza = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hyz, ptr %i.hza, align 8, !tbaa !81
  br label %read_num.exit.thread3326

bb.ard:                                           ; preds = %bb.arb
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit

bb.are:                                           ; preds = %.thread3309, %bb.aqx, %bb.aqz, %bb.aqy
  %.0.i1500.ph = phi i64 [ 0, %bb.aqy ], [ %i.hyp, %bb.aqz ], [ %i.hyl, %bb.aqx ], [ 0, %.thread3309 ] ; 7 uses
  %i.hzb = sub i64 %i.hxs, %.0898.i
  %.not987.i = icmp ule i64 %i.hxp, %i.hzb
  %spec.select.i = or i1 %.not987.i, %i.hxv
  br i1 %spec.select.i, label %bb.arf, label %bb.arg, !prof !25

bb.arf:                                           ; preds = %bb.are
  store i64 20, ptr %i.grs, align 8, !tbaa !79
  %i.hzc = select i1 %i.grv, i64 -9223372036854775808, i64 0
  %i.hzd = or disjoint i64 %.0.i1500.ph, %i.hzc
  %i.hze = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hzd, ptr %i.hze, align 8, !tbaa !81
  br label %read_num.exit.thread3326

bb.arg:                                           ; preds = %bb.are
  %.not988.i = icmp samesign ult i64 %.0.i1500.ph, 4503599627370496 ; 2 uses
  %i.hzf = and i64 %.0.i1500.ph, 4503599627370495
  %i.hzg = or disjoint i64 %i.hzf, 4503599627370496
  %i.hzh = lshr i64 %.0.i1500.ph, 52
  %i.hzi = trunc nuw nsw i64 %i.hzh to i32
  %i.hzj = add nsw i32 %i.hzi, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.hzj ; 5 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i1500.ph, i64 %i.hzg
  %i.hzk = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.hzl = or disjoint i64 %i.hzk, 1
  call fastcc void @bigint_set_buf(ptr noundef %7, i64 noundef %.22894.i, ptr noundef %i.c, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i)
  %i.hzm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 29 uses
  store i64 %i.hzl, ptr %i.hzm, align 8, !tbaa !91
  %i.hzn = load i32, ptr %i.c, align 4, !tbaa !114 ; 6 uses
  %i.hzo = icmp sgt i32 %i.hzn, -1
  br i1 %i.hzo, label %.preheader3597, label %bb.aro

.preheader3597:                                   ; preds = %bb.arg
  %.promoted3907 = load i32, ptr %7, align 8      ; 2 uses
  %i.hzp = icmp samesign ugt i32 %i.hzn, 18
  br i1 %i.hzp, label %.lr.ph3910, label %._crit_edge3911

.lr.ph3910:                                       ; preds = %.preheader3597
  %i.hzq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %bb.arh

bb.arh:                                           ; preds = %.lr.ph3910, %bigint_mul_u64.exit1603
  %.0.i15133909 = phi i32 [ %i.hzn, %.lr.ph3910 ], [ %i.ibe, %bigint_mul_u64.exit1603 ] ; 2 uses
  %i.hzr = phi i32 [ %.promoted3907, %.lr.ph3910 ], [ %i.ibd, %bigint_mul_u64.exit1603 ] ; 9 uses
  %.not4449 = icmp eq i32 %i.hzr, 0
  br i1 %.not4449, label %._crit_edge3897, label %.lr.ph3896.preheader

.lr.ph3896.preheader:                             ; preds = %bb.arh
  %wide.trip.count4653 = zext i32 %i.hzr to i64
  br label %.lr.ph3896

.lr.ph3896:                                       ; preds = %.lr.ph3896.preheader, %bb.ari
  %indvars.iv4650 = phi i64 [ 0, %.lr.ph3896.preheader ], [ %indvars.iv.next4651, %bb.ari ] ; 3 uses
  %i.hzs = getelementptr inbounds nuw [8 x i8], ptr %i.hzq, i64 %indvars.iv4650
  %i.hzt = load i64, ptr %i.hzs, align 8, !tbaa !91
  %.not.i1602 = icmp eq i64 %i.hzt, 0
  br i1 %.not.i1602, label %bb.ari, label %._crit_edge3897.loopexit

bb.ari:                                           ; preds = %.lr.ph3896
  %indvars.iv.next4651 = add nuw nsw i64 %indvars.iv4650, 1 ; 2 uses
  %exitcond4654.not = icmp eq i64 %indvars.iv.next4651, %wide.trip.count4653
  br i1 %exitcond4654.not, label %bigint_mul_u64.exit1603, label %.lr.ph3896, !llvm.loop !135

._crit_edge3897.loopexit:                         ; preds = %.lr.ph3896
  %i.hzu = trunc nuw i64 %indvars.iv4650 to i32
  br label %._crit_edge3897

._crit_edge3897:                                  ; preds = %._crit_edge3897.loopexit, %bb.arh
  %.018.i1598.lcssa = phi i32 [ 0, %bb.arh ], [ %i.hzu, %._crit_edge3897.loopexit ] ; 2 uses
  %i.hzv = icmp ult i32 %.018.i1598.lcssa, %i.hzr
  br i1 %i.hzv, label %.lr.ph3904.preheader, label %bigint_mul_u64.exit1603

.lr.ph3904.preheader:                             ; preds = %._crit_edge3897
  %i.hzw = zext i32 %.018.i1598.lcssa to i64      ; 4 uses
  %wide.trip.count4658 = zext i32 %i.hzr to i64   ; 2 uses
  %i.hzx = sub nsw i64 %wide.trip.count4658, %i.hzw ; 3 uses
  %xtraiter6443 = and i64 %i.hzx, 1
  %i.hzy = add nsw i64 %wide.trip.count4658, -1
  %i.hzz = icmp eq i64 %i.hzy, %i.hzw
  br i1 %i.hzz, label %.lr.ph3904.epil.preheader, label %.lr.ph3904.preheader.new

.lr.ph3904.preheader.new:                         ; preds = %.lr.ph3904.preheader
  %unroll_iter6448 = and i64 %i.hzx, -2
  br label %.lr.ph3904

.lr.ph3904:                                       ; preds = %.lr.ph3904, %.lr.ph3904.preheader.new
  %indvars.iv4655 = phi i64 [ %i.hzw, %.lr.ph3904.preheader.new ], [ %indvars.iv.next4656.1, %.lr.ph3904 ] ; 3 uses
  %.0.i16003902 = phi i64 [ 0, %.lr.ph3904.preheader.new ], [ %i.iap, %.lr.ph3904 ]
  %niter6449 = phi i64 [ 0, %.lr.ph3904.preheader.new ], [ %niter6449.next.1, %.lr.ph3904 ]
  %i.iaa = getelementptr inbounds nuw [8 x i8], ptr %i.hzq, i64 %indvars.iv4655 ; 2 uses
  %i.iab = load i64, ptr %i.iaa, align 8, !tbaa !91
  %i.iac = zext i64 %i.iab to i128
  %i.iad = mul nuw i128 %i.iac, 10000000000000000000
  %i.iae = zext i64 %.0.i16003902 to i128
  %i.iaf = add nuw i128 %i.iad, %i.iae            ; 2 uses
  %i.iag = lshr i128 %i.iaf, 64
  %i.iah = trunc i128 %i.iaf to i64
  store i64 %i.iah, ptr %i.iaa, align 8, !tbaa !91
  %i.iai = getelementptr inbounds nuw [8 x i8], ptr %i.hzq, i64 %indvars.iv4655
  %i.iaj = getelementptr inbounds nuw i8, ptr %i.iai, i64 8 ; 2 uses
  %i.iak = load i64, ptr %i.iaj, align 8, !tbaa !91
  %i.ial = zext i64 %i.iak to i128
  %i.iam = mul nuw i128 %i.ial, 10000000000000000000
  %i.ian = add nuw i128 %i.iam, %i.iag            ; 2 uses
  %i.iao = lshr i128 %i.ian, 64                   ; 2 uses
  %i.iap = trunc nuw i128 %i.iao to i64           ; 3 uses
  %i.iaq = trunc i128 %i.ian to i64
  store i64 %i.iaq, ptr %i.iaj, align 8, !tbaa !91
  %indvars.iv.next4656.1 = add nuw nsw i64 %indvars.iv4655, 2 ; 2 uses
  %niter6449.next.1 = add i64 %niter6449, 2       ; 2 uses
  %niter6449.ncmp.1 = icmp eq i64 %niter6449.next.1, %unroll_iter6448
  br i1 %niter6449.ncmp.1, label %._crit_edge3905.unr-lcssa, label %.lr.ph3904, !llvm.loop !136

._crit_edge3905.unr-lcssa:                        ; preds = %.lr.ph3904
  %lcmp.mod6444.not = icmp eq i64 %xtraiter6443, 0
  br i1 %lcmp.mod6444.not, label %._crit_edge3905, label %.lr.ph3904.epil.preheader

.lr.ph3904.epil.preheader:                        ; preds = %._crit_edge3905.unr-lcssa, %.lr.ph3904.preheader
  %indvars.iv4655.epil.init = phi i64 [ %i.hzw, %.lr.ph3904.preheader ], [ %indvars.iv.next4656.1, %._crit_edge3905.unr-lcssa ]
  %.0.i16003902.epil.init = phi i64 [ 0, %.lr.ph3904.preheader ], [ %i.iap, %._crit_edge3905.unr-lcssa ]
  %lcmp.mod6447 = trunc i64 %i.hzx to i1
  call void @llvm.assume(i1 %lcmp.mod6447)
  %i.iar = getelementptr inbounds nuw [8 x i8], ptr %i.hzq, i64 %indvars.iv4655.epil.init ; 2 uses
  %i.ias = load i64, ptr %i.iar, align 8, !tbaa !91
  %i.iat = zext i64 %i.ias to i128
  %i.iau = mul nuw i128 %i.iat, 10000000000000000000
  %i.iav = zext i64 %.0.i16003902.epil.init to i128
  %i.iaw = add nuw i128 %i.iau, %i.iav            ; 2 uses
  %i.iax = lshr i128 %i.iaw, 64                   ; 2 uses
  %i.iay = trunc nuw i128 %i.iax to i64
  %i.iaz = trunc i128 %i.iaw to i64
  store i64 %i.iaz, ptr %i.iar, align 8, !tbaa !91
  br label %._crit_edge3905

._crit_edge3905:                                  ; preds = %._crit_edge3905.unr-lcssa, %.lr.ph3904.epil.preheader
  %.lcssa6350 = phi i128 [ %i.iao, %._crit_edge3905.unr-lcssa ], [ %i.iax, %.lr.ph3904.epil.preheader ]
  %.lcssa6349 = phi i64 [ %i.iap, %._crit_edge3905.unr-lcssa ], [ %i.iay, %.lr.ph3904.epil.preheader ]
  %.not19.i1601 = icmp eq i128 %.lcssa6350, 0
  br i1 %.not19.i1601, label %bigint_mul_u64.exit1603, label %bb.arj

bb.arj:                                           ; preds = %._crit_edge3905
  %i.iba = add i32 %i.hzr, 1
  %i.ibb = zext i32 %i.hzr to i64
  %i.ibc = getelementptr inbounds nuw [8 x i8], ptr %i.hzq, i64 %i.ibb
  store i64 %.lcssa6349, ptr %i.ibc, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1603

bigint_mul_u64.exit1603:                          ; preds = %bb.ari, %._crit_edge3897, %._crit_edge3905, %bb.arj
  %i.ibd = phi i32 [ %i.hzr, %._crit_edge3905 ], [ %i.iba, %bb.arj ], [ %i.hzr, %._crit_edge3897 ], [ %i.hzr, %bb.ari ] ; 2 uses
  %i.ibe = add nsw i32 %.0.i15133909, -19         ; 2 uses
  %i.ibf = icmp sgt i32 %.0.i15133909, 37
  br i1 %i.ibf, label %bb.arh, label %._crit_edge3911, !llvm.loop !137

._crit_edge3911:                                  ; preds = %bigint_mul_u64.exit1603, %.preheader3597
  %i.ibg = phi i32 [ %.promoted3907, %.preheader3597 ], [ %i.ibd, %bigint_mul_u64.exit1603 ] ; 7 uses
  %.0.i1513.lcssa = phi i32 [ %i.hzn, %.preheader3597 ], [ %i.ibe, %bigint_mul_u64.exit1603 ] ; 2 uses
  store i32 %i.ibg, ptr %7, align 8
  %.not.i1514 = icmp eq i32 %.0.i1513.lcssa, 0
  br i1 %.not.i1514, label %bigint_mul_pow10.exit1515, label %bb.ark

bb.ark:                                           ; preds = %._crit_edge3911
  %i.ibh = sext i32 %.0.i1513.lcssa to i64
  %i.ibi = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.ibh
  %i.ibj = load i64, ptr %i.ibi, align 8, !tbaa !91
  %i.ibk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %.not4450 = icmp eq i32 %i.ibg, 0
  br i1 %.not4450, label %._crit_edge3917, label %.lr.ph3916.preheader

.lr.ph3916.preheader:                             ; preds = %bb.ark
  %wide.trip.count4663 = zext i32 %i.ibg to i64
  br label %.lr.ph3916

.lr.ph3916:                                       ; preds = %.lr.ph3916.preheader, %bb.arl
  %indvars.iv4660 = phi i64 [ 0, %.lr.ph3916.preheader ], [ %indvars.iv.next4661, %bb.arl ] ; 3 uses
  %i.ibl = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv4660
  %i.ibm = load i64, ptr %i.ibl, align 8, !tbaa !91
  %.not.i1608 = icmp eq i64 %i.ibm, 0
  br i1 %.not.i1608, label %bb.arl, label %._crit_edge3917.loopexit

bb.arl:                                           ; preds = %.lr.ph3916
  %indvars.iv.next4661 = add nuw nsw i64 %indvars.iv4660, 1 ; 2 uses
  %exitcond4664.not = icmp eq i64 %indvars.iv.next4661, %wide.trip.count4663
  br i1 %exitcond4664.not, label %bigint_mul_pow10.exit1515, label %.lr.ph3916, !llvm.loop !135

._crit_edge3917.loopexit:                         ; preds = %.lr.ph3916
  %i.ibn = trunc nuw i64 %indvars.iv4660 to i32
  br label %._crit_edge3917

._crit_edge3917:                                  ; preds = %._crit_edge3917.loopexit, %bb.ark
  %.018.i1604.lcssa = phi i32 [ 0, %bb.ark ], [ %i.ibn, %._crit_edge3917.loopexit ] ; 2 uses
  %i.ibo = icmp ult i32 %.018.i1604.lcssa, %i.ibg
  br i1 %i.ibo, label %.lr.ph3924, label %bigint_mul_pow10.exit1515

.lr.ph3924:                                       ; preds = %._crit_edge3917
  %i.ibp = zext i64 %i.ibj to i128                ; 3 uses
  %i.ibq = zext i32 %.018.i1604.lcssa to i64      ; 4 uses
  %wide.trip.count4668 = zext i32 %i.ibg to i64   ; 2 uses
  %i.ibr = sub nsw i64 %wide.trip.count4668, %i.ibq ; 3 uses
  %xtraiter6451 = and i64 %i.ibr, 1
  %i.ibs = add nsw i64 %wide.trip.count4668, -1
  %i.ibt = icmp eq i64 %i.ibs, %i.ibq
  br i1 %i.ibt, label %.epil.preheader6450, label %.lr.ph3924.new

.lr.ph3924.new:                                   ; preds = %.lr.ph3924
  %unroll_iter6456 = and i64 %i.ibr, -2
  br label %bb.arm

bb.arm:                                           ; preds = %bb.arm, %.lr.ph3924.new
  %indvars.iv4665 = phi i64 [ %i.ibq, %.lr.ph3924.new ], [ %indvars.iv.next4666.1, %bb.arm ] ; 3 uses
  %.0.i16063922 = phi i64 [ 0, %.lr.ph3924.new ], [ %i.icj, %bb.arm ]
  %niter6457 = phi i64 [ 0, %.lr.ph3924.new ], [ %niter6457.next.1, %bb.arm ]
  %i.ibu = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv4665 ; 2 uses
  %i.ibv = load i64, ptr %i.ibu, align 8, !tbaa !91
  %i.ibw = zext i64 %i.ibv to i128
  %i.ibx = mul nuw i128 %i.ibw, %i.ibp
  %i.iby = zext i64 %.0.i16063922 to i128
  %i.ibz = add nuw i128 %i.ibx, %i.iby            ; 2 uses
  %i.ica = lshr i128 %i.ibz, 64
  %i.icb = trunc i128 %i.ibz to i64
  store i64 %i.icb, ptr %i.ibu, align 8, !tbaa !91
  %i.icc = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv4665
  %i.icd = getelementptr inbounds nuw i8, ptr %i.icc, i64 8 ; 2 uses
  %i.ice = load i64, ptr %i.icd, align 8, !tbaa !91
  %i.icf = zext i64 %i.ice to i128
  %i.icg = mul nuw i128 %i.icf, %i.ibp
  %i.ich = add nuw i128 %i.icg, %i.ica            ; 2 uses
  %i.ici = lshr i128 %i.ich, 64                   ; 2 uses
  %i.icj = trunc nuw i128 %i.ici to i64           ; 3 uses
  %i.ick = trunc i128 %i.ich to i64
  store i64 %i.ick, ptr %i.icd, align 8, !tbaa !91
  %indvars.iv.next4666.1 = add nuw nsw i64 %indvars.iv4665, 2 ; 2 uses
  %niter6457.next.1 = add i64 %niter6457, 2       ; 2 uses
  %niter6457.ncmp.1 = icmp eq i64 %niter6457.next.1, %unroll_iter6456
  br i1 %niter6457.ncmp.1, label %._crit_edge3925.unr-lcssa, label %bb.arm, !llvm.loop !136

._crit_edge3925.unr-lcssa:                        ; preds = %bb.arm
  %lcmp.mod6452.not = icmp eq i64 %xtraiter6451, 0
  br i1 %lcmp.mod6452.not, label %._crit_edge3925, label %.epil.preheader6450

.epil.preheader6450:                              ; preds = %._crit_edge3925.unr-lcssa, %.lr.ph3924
  %indvars.iv4665.epil.init = phi i64 [ %i.ibq, %.lr.ph3924 ], [ %indvars.iv.next4666.1, %._crit_edge3925.unr-lcssa ]
  %.0.i16063922.epil.init = phi i64 [ 0, %.lr.ph3924 ], [ %i.icj, %._crit_edge3925.unr-lcssa ]
  %lcmp.mod6455 = trunc i64 %i.ibr to i1
  call void @llvm.assume(i1 %lcmp.mod6455)
  %i.icl = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv4665.epil.init ; 2 uses
  %i.icm = load i64, ptr %i.icl, align 8, !tbaa !91
  %i.icn = zext i64 %i.icm to i128
  %i.ico = mul nuw i128 %i.icn, %i.ibp
  %i.icp = zext i64 %.0.i16063922.epil.init to i128
  %i.icq = add nuw i128 %i.ico, %i.icp            ; 2 uses
  %i.icr = lshr i128 %i.icq, 64                   ; 2 uses
  %i.ics = trunc nuw i128 %i.icr to i64
  %i.ict = trunc i128 %i.icq to i64
  store i64 %i.ict, ptr %i.icl, align 8, !tbaa !91
  br label %._crit_edge3925

._crit_edge3925:                                  ; preds = %._crit_edge3925.unr-lcssa, %.epil.preheader6450
  %.lcssa6346 = phi i128 [ %i.ici, %._crit_edge3925.unr-lcssa ], [ %i.icr, %.epil.preheader6450 ]
  %.lcssa6345 = phi i64 [ %i.icj, %._crit_edge3925.unr-lcssa ], [ %i.ics, %.epil.preheader6450 ]
  %.not19.i1607 = icmp eq i128 %.lcssa6346, 0
  br i1 %.not19.i1607, label %bigint_mul_pow10.exit1515, label %bb.arn

bb.arn:                                           ; preds = %._crit_edge3925
  %i.icu = add i32 %i.ibg, 1
  store i32 %i.icu, ptr %7, align 8, !tbaa !138
  br label %bigint_mul_pow10.exit1515.sink.split

bb.aro:                                           ; preds = %bb.arg
  %i.icv = sub nsw i32 0, %i.hzn                  ; 2 uses
  %i.icw = icmp samesign ult i32 %i.hzn, -18
  br i1 %i.icw, label %.lr.ph3877, label %.thread5445

.thread5445:                                      ; preds = %bb.aro
  store i32 1, ptr %8, align 8
  %i.icx = zext nneg i32 %i.icv to i64
  %i.icy = getelementptr inbounds nuw [8 x i8], ptr @u64_pow10_table, i64 %i.icx
  %i.icz = load i64, ptr %i.icy, align 8, !tbaa !91
  br label %.lr.ph3883.preheader

.lr.ph3877:                                       ; preds = %bb.aro, %bigint_mul_u64.exit
  %.0.i15163875 = phi i32 [ %i.ien, %bigint_mul_u64.exit ], [ %i.icv, %bb.aro ] ; 2 uses
  %i.ida = phi i32 [ %i.iem, %bigint_mul_u64.exit ], [ 1, %bb.aro ] ; 9 uses
  %.not4447 = icmp eq i32 %i.ida, 0
  br i1 %.not4447, label %._crit_edge3863, label %.lr.ph3862.preheader

.lr.ph3862.preheader:                             ; preds = %.lr.ph3877
  %wide.trip.count = zext i32 %i.ida to i64
  br label %.lr.ph3862

.lr.ph3862:                                       ; preds = %.lr.ph3862.preheader, %bb.arp
  %indvars.iv = phi i64 [ 0, %.lr.ph3862.preheader ], [ %indvars.iv.next, %bb.arp ] ; 3 uses
  %i.idb = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv
  %i.idc = load i64, ptr %i.idb, align 8, !tbaa !91
  %.not.i1591 = icmp eq i64 %i.idc, 0
  br i1 %.not.i1591, label %bb.arp, label %._crit_edge3863.loopexit

bb.arp:                                           ; preds = %.lr.ph3862
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit, label %.lr.ph3862, !llvm.loop !135

._crit_edge3863.loopexit:                         ; preds = %.lr.ph3862
  %i.idd = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge3863

._crit_edge3863:                                  ; preds = %._crit_edge3863.loopexit, %.lr.ph3877
  %.018.i.lcssa = phi i32 [ 0, %.lr.ph3877 ], [ %i.idd, %._crit_edge3863.loopexit ] ; 2 uses
  %i.ide = icmp ult i32 %.018.i.lcssa, %i.ida
  br i1 %i.ide, label %.lr.ph3870.preheader, label %bigint_mul_u64.exit

.lr.ph3870.preheader:                             ; preds = %._crit_edge3863
  %i.idf = zext i32 %.018.i.lcssa to i64          ; 4 uses
  %wide.trip.count4638 = zext i32 %i.ida to i64   ; 2 uses
  %i.idg = sub nsw i64 %wide.trip.count4638, %i.idf ; 3 uses
  %xtraiter = and i64 %i.idg, 1
  %i.idh = add nsw i64 %wide.trip.count4638, -1
  %i.idi = icmp eq i64 %i.idh, %i.idf
  br i1 %i.idi, label %.lr.ph3870.epil.preheader, label %.lr.ph3870.preheader.new

.lr.ph3870.preheader.new:                         ; preds = %.lr.ph3870.preheader
  %unroll_iter = and i64 %i.idg, -2
  br label %.lr.ph3870

.lr.ph3870:                                       ; preds = %.lr.ph3870, %.lr.ph3870.preheader.new
  %indvars.iv4635 = phi i64 [ %i.idf, %.lr.ph3870.preheader.new ], [ %indvars.iv.next4636.1, %.lr.ph3870 ] ; 3 uses
  %.0.i15903868 = phi i64 [ 0, %.lr.ph3870.preheader.new ], [ %i.idy, %.lr.ph3870 ]
  %niter = phi i64 [ 0, %.lr.ph3870.preheader.new ], [ %niter.next.1, %.lr.ph3870 ]
  %i.idj = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4635 ; 2 uses
  %i.idk = load i64, ptr %i.idj, align 8, !tbaa !91
  %i.idl = zext i64 %i.idk to i128
  %i.idm = mul nuw i128 %i.idl, 10000000000000000000
  %i.idn = zext i64 %.0.i15903868 to i128
  %i.ido = add nuw i128 %i.idm, %i.idn            ; 2 uses
  %i.idp = lshr i128 %i.ido, 64
  %i.idq = trunc i128 %i.ido to i64
  store i64 %i.idq, ptr %i.idj, align 8, !tbaa !91
  %i.idr = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4635
  %i.ids = getelementptr inbounds nuw i8, ptr %i.idr, i64 8 ; 2 uses
  %i.idt = load i64, ptr %i.ids, align 8, !tbaa !91
  %i.idu = zext i64 %i.idt to i128
  %i.idv = mul nuw i128 %i.idu, 10000000000000000000
  %i.idw = add nuw i128 %i.idv, %i.idp            ; 2 uses
  %i.idx = lshr i128 %i.idw, 64                   ; 2 uses
  %i.idy = trunc nuw i128 %i.idx to i64           ; 3 uses
  %i.idz = trunc i128 %i.idw to i64
  store i64 %i.idz, ptr %i.ids, align 8, !tbaa !91
  %indvars.iv.next4636.1 = add nuw nsw i64 %indvars.iv4635, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3871.unr-lcssa, label %.lr.ph3870, !llvm.loop !136

._crit_edge3871.unr-lcssa:                        ; preds = %.lr.ph3870
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge3871, label %.lr.ph3870.epil.preheader

.lr.ph3870.epil.preheader:                        ; preds = %._crit_edge3871.unr-lcssa, %.lr.ph3870.preheader
  %indvars.iv4635.epil.init = phi i64 [ %i.idf, %.lr.ph3870.preheader ], [ %indvars.iv.next4636.1, %._crit_edge3871.unr-lcssa ]
  %.0.i15903868.epil.init = phi i64 [ 0, %.lr.ph3870.preheader ], [ %i.idy, %._crit_edge3871.unr-lcssa ]
  %lcmp.mod6435 = trunc i64 %i.idg to i1
  call void @llvm.assume(i1 %lcmp.mod6435)
  %i.iea = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4635.epil.init ; 2 uses
  %i.ieb = load i64, ptr %i.iea, align 8, !tbaa !91
  %i.iec = zext i64 %i.ieb to i128
  %i.ied = mul nuw i128 %i.iec, 10000000000000000000
  %i.iee = zext i64 %.0.i15903868.epil.init to i128
  %i.ief = add nuw i128 %i.ied, %i.iee            ; 2 uses
  %i.ieg = lshr i128 %i.ief, 64                   ; 2 uses
  %i.ieh = trunc nuw i128 %i.ieg to i64
  %i.iei = trunc i128 %i.ief to i64
  store i64 %i.iei, ptr %i.iea, align 8, !tbaa !91
  br label %._crit_edge3871

._crit_edge3871:                                  ; preds = %._crit_edge3871.unr-lcssa, %.lr.ph3870.epil.preheader
  %.lcssa6359 = phi i128 [ %i.idx, %._crit_edge3871.unr-lcssa ], [ %i.ieg, %.lr.ph3870.epil.preheader ]
  %.lcssa6358 = phi i64 [ %i.idy, %._crit_edge3871.unr-lcssa ], [ %i.ieh, %.lr.ph3870.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa6359, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.arq

bb.arq:                                           ; preds = %._crit_edge3871
  %i.iej = add i32 %i.ida, 1
  %i.iek = zext i32 %i.ida to i64
  %i.iel = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.iek
  store i64 %.lcssa6358, ptr %i.iel, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.arp, %._crit_edge3863, %._crit_edge3871, %bb.arq
  %i.iem = phi i32 [ %i.ida, %._crit_edge3871 ], [ %i.iej, %bb.arq ], [ %i.ida, %._crit_edge3863 ], [ %i.ida, %bb.arp ] ; 5 uses
  %i.ien = add nsw i32 %.0.i15163875, -19         ; 3 uses
  %i.ieo = icmp sgt i32 %.0.i15163875, 37
  br i1 %i.ieo, label %.lr.ph3877, label %._crit_edge3878, !llvm.loop !137

._crit_edge3878:                                  ; preds = %bigint_mul_u64.exit
  store i32 %i.iem, ptr %8, align 8
  %.not.i1517 = icmp eq i32 %i.ien, 0
  br i1 %.not.i1517, label %bigint_mul_pow10.exit1515, label %bb.arr

bb.arr:                                           ; preds = %._crit_edge3878
  %i.iep = sext i32 %i.ien to i64
  %i.ieq = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.iep
  %i.ier = load i64, ptr %i.ieq, align 8, !tbaa !91 ; 2 uses
  %.not4448 = icmp eq i32 %i.iem, 0
  br i1 %.not4448, label %._crit_edge3884, label %.lr.ph3883.preheader

.lr.ph3883.preheader:                             ; preds = %.thread5445, %bb.arr
  %i.ies = phi i64 [ %i.icz, %.thread5445 ], [ %i.ier, %bb.arr ]
  %i.iet = phi i32 [ 1, %.thread5445 ], [ %i.iem, %bb.arr ] ; 3 uses
  %wide.trip.count4643 = zext i32 %i.iet to i64
  br label %.lr.ph3883

.lr.ph3883:                                       ; preds = %.lr.ph3883.preheader, %bb.ars
  %indvars.iv4640 = phi i64 [ 0, %.lr.ph3883.preheader ], [ %indvars.iv.next4641, %bb.ars ] ; 3 uses
  %i.ieu = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4640
  %i.iev = load i64, ptr %i.ieu, align 8, !tbaa !91
  %.not.i1596 = icmp eq i64 %i.iev, 0
  br i1 %.not.i1596, label %bb.ars, label %._crit_edge3884.loopexit

bb.ars:                                           ; preds = %.lr.ph3883
  %indvars.iv.next4641 = add nuw nsw i64 %indvars.iv4640, 1 ; 2 uses
  %exitcond4644.not = icmp eq i64 %indvars.iv.next4641, %wide.trip.count4643
  br i1 %exitcond4644.not, label %bigint_mul_pow10.exit1515, label %.lr.ph3883, !llvm.loop !135

._crit_edge3884.loopexit:                         ; preds = %.lr.ph3883
  %i.iew = trunc nuw i64 %indvars.iv4640 to i32
  br label %._crit_edge3884

._crit_edge3884:                                  ; preds = %._crit_edge3884.loopexit, %bb.arr
  %i.iex = phi i64 [ %i.ier, %bb.arr ], [ %i.ies, %._crit_edge3884.loopexit ]
  %i.iey = phi i32 [ 0, %bb.arr ], [ %i.iet, %._crit_edge3884.loopexit ] ; 6 uses
  %.018.i1592.lcssa = phi i32 [ 0, %bb.arr ], [ %i.iew, %._crit_edge3884.loopexit ] ; 2 uses
  %i.iez = icmp ult i32 %.018.i1592.lcssa, %i.iey
  br i1 %i.iez, label %.lr.ph3891, label %bigint_mul_pow10.exit1515

.lr.ph3891:                                       ; preds = %._crit_edge3884
  %i.ifa = zext i64 %i.iex to i128                ; 3 uses
  %i.ifb = zext i32 %.018.i1592.lcssa to i64      ; 4 uses
  %wide.trip.count4648 = zext i32 %i.iey to i64   ; 2 uses
  %i.ifc = sub nsw i64 %wide.trip.count4648, %i.ifb ; 3 uses
  %xtraiter6436 = and i64 %i.ifc, 1
  %i.ifd = add nsw i64 %wide.trip.count4648, -1
  %i.ife = icmp eq i64 %i.ifd, %i.ifb
  br i1 %i.ife, label %.epil.preheader, label %.lr.ph3891.new

.lr.ph3891.new:                                   ; preds = %.lr.ph3891
  %unroll_iter6441 = and i64 %i.ifc, -2
  br label %bb.art

bb.art:                                           ; preds = %bb.art, %.lr.ph3891.new
  %indvars.iv4645 = phi i64 [ %i.ifb, %.lr.ph3891.new ], [ %indvars.iv.next4646.1, %bb.art ] ; 3 uses
  %.0.i15943889 = phi i64 [ 0, %.lr.ph3891.new ], [ %i.ifu, %bb.art ]
  %niter6442 = phi i64 [ 0, %.lr.ph3891.new ], [ %niter6442.next.1, %bb.art ]
  %i.iff = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4645 ; 2 uses
  %i.ifg = load i64, ptr %i.iff, align 8, !tbaa !91
  %i.ifh = zext i64 %i.ifg to i128
  %i.ifi = mul nuw i128 %i.ifh, %i.ifa
  %i.ifj = zext i64 %.0.i15943889 to i128
  %i.ifk = add nuw i128 %i.ifi, %i.ifj            ; 2 uses
  %i.ifl = lshr i128 %i.ifk, 64
  %i.ifm = trunc i128 %i.ifk to i64
  store i64 %i.ifm, ptr %i.iff, align 8, !tbaa !91
  %i.ifn = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4645
  %i.ifo = getelementptr inbounds nuw i8, ptr %i.ifn, i64 8 ; 2 uses
  %i.ifp = load i64, ptr %i.ifo, align 8, !tbaa !91
  %i.ifq = zext i64 %i.ifp to i128
  %i.ifr = mul nuw i128 %i.ifq, %i.ifa
  %i.ifs = add nuw i128 %i.ifr, %i.ifl            ; 2 uses
  %i.ift = lshr i128 %i.ifs, 64                   ; 2 uses
  %i.ifu = trunc nuw i128 %i.ift to i64           ; 3 uses
  %i.ifv = trunc i128 %i.ifs to i64
  store i64 %i.ifv, ptr %i.ifo, align 8, !tbaa !91
  %indvars.iv.next4646.1 = add nuw nsw i64 %indvars.iv4645, 2 ; 2 uses
  %niter6442.next.1 = add i64 %niter6442, 2       ; 2 uses
  %niter6442.ncmp.1 = icmp eq i64 %niter6442.next.1, %unroll_iter6441
  br i1 %niter6442.ncmp.1, label %._crit_edge3892.unr-lcssa, label %bb.art, !llvm.loop !136

._crit_edge3892.unr-lcssa:                        ; preds = %bb.art
  %lcmp.mod6437.not = icmp eq i64 %xtraiter6436, 0
  br i1 %lcmp.mod6437.not, label %._crit_edge3892, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3892.unr-lcssa, %.lr.ph3891
  %indvars.iv4645.epil.init = phi i64 [ %i.ifb, %.lr.ph3891 ], [ %indvars.iv.next4646.1, %._crit_edge3892.unr-lcssa ]
  %.0.i15943889.epil.init = phi i64 [ 0, %.lr.ph3891 ], [ %i.ifu, %._crit_edge3892.unr-lcssa ]
  %lcmp.mod6440 = trunc i64 %i.ifc to i1
  call void @llvm.assume(i1 %lcmp.mod6440)
  %i.ifw = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %indvars.iv4645.epil.init ; 2 uses
  %i.ifx = load i64, ptr %i.ifw, align 8, !tbaa !91
  %i.ify = zext i64 %i.ifx to i128
  %i.ifz = mul nuw i128 %i.ify, %i.ifa
  %i.iga = zext i64 %.0.i15943889.epil.init to i128
  %i.igb = add nuw i128 %i.ifz, %i.iga            ; 2 uses
  %i.igc = lshr i128 %i.igb, 64                   ; 2 uses
  %i.igd = trunc nuw i128 %i.igc to i64
  %i.ige = trunc i128 %i.igb to i64
  store i64 %i.ige, ptr %i.ifw, align 8, !tbaa !91
  br label %._crit_edge3892

._crit_edge3892:                                  ; preds = %._crit_edge3892.unr-lcssa, %.epil.preheader
  %.lcssa6354 = phi i128 [ %i.ift, %._crit_edge3892.unr-lcssa ], [ %i.igc, %.epil.preheader ]
  %.lcssa6353 = phi i64 [ %i.ifu, %._crit_edge3892.unr-lcssa ], [ %i.igd, %.epil.preheader ]
  %.not19.i1595 = icmp eq i128 %.lcssa6354, 0
  br i1 %.not19.i1595, label %bigint_mul_pow10.exit1515, label %bb.aru

bb.aru:                                           ; preds = %._crit_edge3892
  %i.igf = add i32 %i.iey, 1
  br label %bigint_mul_pow10.exit1515.sink.split

bigint_mul_pow10.exit1515.sink.split:             ; preds = %bb.arn, %bb.aru
  %.sink5711 = phi i32 [ %i.iey, %bb.aru ], [ %i.ibg, %bb.arn ]
  %i.igg = phi ptr [ %8, %bb.aru ], [ %7, %bb.arn ]
  %.lcssa5585.sink = phi i64 [ %.lcssa6353, %bb.aru ], [ %.lcssa6345, %bb.arn ]
  %.ph5707 = phi i32 [ %i.igf, %bb.aru ], [ 1, %bb.arn ]
  %i.igh = getelementptr inbounds nuw i8, ptr %i.igg, i64 8
  %i.igi = zext i32 %.sink5711 to i64
  %i.igj = getelementptr inbounds nuw [8 x i8], ptr %i.igh, i64 %i.igi
  store i64 %.lcssa5585.sink, ptr %i.igj, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1515

bigint_mul_pow10.exit1515:                        ; preds = %bb.ars, %bb.arl, %bigint_mul_pow10.exit1515.sink.split, %._crit_edge3884, %._crit_edge3917, %._crit_edge3878, %._crit_edge3892, %._crit_edge3911, %._crit_edge3925
  %i.igk = phi i32 [ %i.iem, %._crit_edge3878 ], [ %i.iey, %._crit_edge3892 ], [ %i.iey, %._crit_edge3884 ], [ 1, %._crit_edge3911 ], [ 1, %._crit_edge3925 ], [ 1, %bb.arl ], [ %.ph5707, %bigint_mul_pow10.exit1515.sink.split ], [ 1, %._crit_edge3917 ], [ %i.iet, %bb.ars ] ; 16 uses
  %i.igl = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.igl, label %bb.arv, label %bb.arx

bb.arv:                                           ; preds = %bigint_mul_pow10.exit1515
  %i.igm = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ign = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.igo = icmp eq i32 %i.igm, 0
  br i1 %i.igo, label %.preheader3592, label %bb.arw, !prof !8

.preheader3592:                                   ; preds = %bb.arv
  %.not46.i15553953 = icmp eq i32 %i.igk, 0
  br i1 %.not46.i15553953, label %.lr.ph3960.preheader, label %.lr.ph3955

.lr.ph3955:                                       ; preds = %.preheader3592
  %i.igp = add nsw i32 %i.ign, -1                 ; 6 uses
  %i.igq = zext i32 %i.igk to i64                 ; 9 uses
  %min.iters.check6032 = icmp ult i32 %i.igk, 30
  br i1 %min.iters.check6032, label %scalar.ph6031.preheader, label %vector.scevcheck6028

vector.scevcheck6028:                             ; preds = %.lr.ph3955
  %i.igr = add nsw i64 %i.igq, -1                 ; 2 uses
  %i.igs = add i32 %i.igk, %i.ign
  %i.igt = add i32 %i.igs, -1
  %i.igu = trunc i64 %i.igr to i32
  %i.igv = icmp ult i32 %i.igt, %i.igu
  %i.igw = icmp ugt i64 %i.igr, 4294967295
  %i.igx = or i1 %i.igv, %i.igw
  br i1 %i.igx, label %scalar.ph6031.preheader, label %vector.memcheck6029

vector.memcheck6029:                              ; preds = %vector.scevcheck6028
  %i.igy = add i32 %i.igk, %i.ign
  %i.igz = add i32 %i.igy, -1
  %i.iha = zext i32 %i.igz to i64
  %i.ihb = sub nsw i64 %i.igq, %i.iha
  %i.ihc = shl nsw i64 %i.ihb, 3
  %i.ihd = add nsw i64 %i.ihc, -9
  %diff.check6030 = icmp ult i64 %i.ihd, 31
  br i1 %diff.check6030, label %scalar.ph6031.preheader, label %vector.ph6033

vector.ph6033:                                    ; preds = %vector.memcheck6029
  %n.vec6034 = and i64 %i.igq, 4294967292         ; 2 uses
  %i.ihe = and i64 %i.igq, 3
  br label %vector.body6035

vector.body6035:                                  ; preds = %vector.body6035, %vector.ph6033
  %index6036 = phi i64 [ 0, %vector.ph6033 ], [ %index.next6039, %vector.body6035 ] ; 2 uses
  %i.ihf = sub i64 %i.igq, %index6036             ; 2 uses
  %i.ihg = getelementptr [8 x i8], ptr %8, i64 %i.ihf ; 2 uses
  %i.ihh = getelementptr i8, ptr %i.ihg, i64 -8
  %i.ihi = getelementptr i8, ptr %i.ihg, i64 -24
  %wide.load6037 = load <2 x i64>, ptr %i.ihh, align 8, !tbaa !91
  %wide.load6038 = load <2 x i64>, ptr %i.ihi, align 8, !tbaa !91
  %i.ihj = trunc nuw i64 %i.ihf to i32
  %i.ihk = add i32 %i.igp, %i.ihj
  %i.ihl = zext i32 %i.ihk to i64
  %i.ihm = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.ihl ; 2 uses
  %i.ihn = getelementptr inbounds i8, ptr %i.ihm, i64 -8
  %i.iho = getelementptr inbounds i8, ptr %i.ihm, i64 -24
  store <2 x i64> %wide.load6037, ptr %i.ihn, align 8, !tbaa !91
  store <2 x i64> %wide.load6038, ptr %i.iho, align 8, !tbaa !91
  %index.next6039 = add nuw i64 %index6036, 4     ; 2 uses
  %i.ihp = icmp eq i64 %index.next6039, %n.vec6034
  br i1 %i.ihp, label %middle.block6040, label %vector.body6035, !llvm.loop !307

middle.block6040:                                 ; preds = %vector.body6035
  %cmp.n6041 = icmp eq i64 %n.vec6034, %i.igq
  br i1 %cmp.n6041, label %.lr.ph3960.preheader, label %scalar.ph6031.preheader

scalar.ph6031.preheader:                          ; preds = %vector.memcheck6029, %vector.scevcheck6028, %.lr.ph3955, %middle.block6040
  %indvars.iv4685.ph = phi i64 [ %i.igq, %vector.memcheck6029 ], [ %i.igq, %vector.scevcheck6028 ], [ %i.igq, %.lr.ph3955 ], [ %i.ihe, %middle.block6040 ] ; 4 uses
  %i.ihq = add nsw i64 %indvars.iv4685.ph, -1
  %xtraiter6465 = and i64 %indvars.iv4685.ph, 3   ; 2 uses
  %lcmp.mod6466.not = icmp eq i64 %xtraiter6465, 0
  br i1 %lcmp.mod6466.not, label %scalar.ph6031.prol.loopexit, label %scalar.ph6031.prol

scalar.ph6031.prol:                               ; preds = %scalar.ph6031.preheader, %scalar.ph6031.prol
  %indvars.iv4685.prol = phi i64 [ %i.ihr, %scalar.ph6031.prol ], [ %indvars.iv4685.ph, %scalar.ph6031.preheader ] ; 3 uses
  %prol.iter6467 = phi i64 [ %prol.iter6467.next, %scalar.ph6031.prol ], [ 0, %scalar.ph6031.preheader ]
  %i.ihr = add nsw i64 %indvars.iv4685.prol, -1   ; 2 uses
  %i.ihs = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4685.prol
  %i.iht = load i64, ptr %i.ihs, align 8, !tbaa !91
  %i.ihu = trunc nuw i64 %indvars.iv4685.prol to i32
  %i.ihv = add i32 %i.igp, %i.ihu
  %i.ihw = zext i32 %i.ihv to i64
  %i.ihx = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.ihw
  store i64 %i.iht, ptr %i.ihx, align 8, !tbaa !91
  %prol.iter6467.next = add i64 %prol.iter6467, 1 ; 2 uses
  %prol.iter6467.cmp.not = icmp eq i64 %prol.iter6467.next, %xtraiter6465
  br i1 %prol.iter6467.cmp.not, label %scalar.ph6031.prol.loopexit, label %scalar.ph6031.prol, !llvm.loop !308

scalar.ph6031.prol.loopexit:                      ; preds = %scalar.ph6031.prol, %scalar.ph6031.preheader
  %indvars.iv4685.unr = phi i64 [ %indvars.iv4685.ph, %scalar.ph6031.preheader ], [ %i.ihr, %scalar.ph6031.prol ]
  %i.ihy = icmp ult i64 %i.ihq, 3
  br i1 %i.ihy, label %.lr.ph3960.preheader, label %scalar.ph6031

scalar.ph6031:                                    ; preds = %scalar.ph6031.prol.loopexit, %scalar.ph6031
  %indvars.iv4685 = phi i64 [ %i.iiu, %scalar.ph6031 ], [ %indvars.iv4685.unr, %scalar.ph6031.prol.loopexit ] ; 6 uses
  %i.ihz = add nsw i64 %indvars.iv4685, -1        ; 2 uses
  %i.iia = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4685
  %i.iib = load i64, ptr %i.iia, align 8, !tbaa !91
  %i.iic = trunc nuw i64 %indvars.iv4685 to i32
  %i.iid = add i32 %i.igp, %i.iic
  %i.iie = zext i32 %i.iid to i64
  %i.iif = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.iie
  store i64 %i.iib, ptr %i.iif, align 8, !tbaa !91
  %i.iig = add nsw i64 %indvars.iv4685, -2        ; 2 uses
  %i.iih = getelementptr [8 x i8], ptr %8, i64 %i.ihz
  %i.iii = load i64, ptr %i.iih, align 8, !tbaa !91
  %i.iij = trunc nuw i64 %i.ihz to i32
  %i.iik = add i32 %i.igp, %i.iij
  %i.iil = zext i32 %i.iik to i64
  %i.iim = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.iil
  store i64 %i.iii, ptr %i.iim, align 8, !tbaa !91
  %i.iin = add nsw i64 %indvars.iv4685, -3        ; 2 uses
  %i.iio = getelementptr [8 x i8], ptr %8, i64 %i.iig
  %i.iip = load i64, ptr %i.iio, align 8, !tbaa !91
  %i.iiq = trunc nuw i64 %i.iig to i32
  %i.iir = add i32 %i.igp, %i.iiq
  %i.iis = zext i32 %i.iir to i64
  %i.iit = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.iis
  store i64 %i.iip, ptr %i.iit, align 8, !tbaa !91
  %i.iiu = add nsw i64 %indvars.iv4685, -4        ; 2 uses
  %i.iiv = getelementptr [8 x i8], ptr %8, i64 %i.iin
  %i.iiw = load i64, ptr %i.iiv, align 8, !tbaa !91
  %i.iix = trunc nuw i64 %i.iin to i32
  %i.iiy = add i32 %i.igp, %i.iix
  %i.iiz = zext i32 %i.iiy to i64
  %i.ija = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.iiz
  store i64 %i.iiw, ptr %i.ija, align 8, !tbaa !91
  %.not46.i1555.wide.3 = icmp eq i64 %i.iiu, 0
  br i1 %.not46.i1555.wide.3, label %.lr.ph3960.preheader, label %scalar.ph6031, !llvm.loop !309

.lr.ph3960.preheader:                             ; preds = %scalar.ph6031.prol.loopexit, %scalar.ph6031, %middle.block6040, %.preheader3592
  %i.ijb = add i32 %i.igk, %i.ign                 ; 2 uses
  store i32 %i.ijb, ptr %8, align 8, !tbaa !138
  %i.ijc = add nsw i32 %i.ign, -1
  %i.ijd = zext i32 %i.ijc to i64
  %i.ije = shl nuw nsw i64 %i.ijd, 3
  %i.ijf = add nuw nsw i64 %i.ije, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hzm, i8 0, i64 %i.ijf, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1558

bb.arw:                                           ; preds = %bb.arv
  %i.ijg = zext i32 %i.igk to i64                 ; 10 uses
  %i.ijh = getelementptr inbounds nuw [8 x i8], ptr %i.hzm, i64 %i.ijg
  store i64 0, ptr %i.ijh, align 8, !tbaa !91
  %.not.i15513944 = icmp eq i32 %i.igk, 0
  %.pre5041 = zext nneg i32 %i.igm to i64         ; 5 uses
  br i1 %.not.i15513944, label %._crit_edge3948, label %.lr.ph3947

.lr.ph3947:                                       ; preds = %bb.arw
  %i.iji = sub nuw nsw i32 64, %i.igm
  %i.ijj = zext nneg i32 %i.iji to i64            ; 4 uses
end_hunk_8
begin_hunk_9_@read_num_hex:bb.a
  br i1 %or.cond52, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ez = and i32 %2, 128
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.t, label %.preheader, !prof !25

bb.t:                                             ; preds = %bb.s
  store ptr @.str.95, ptr %4, align 8, !tbaa !92
  br label %bb.v

.preheader:                                       ; preds = %bb.s, %.preheader
  %.049 = phi ptr [ %i.fe, %.preheader ], [ %i.es, %bb.s ] ; 5 uses
  %i.fa = load i8, ptr %.049, align 1, !tbaa !81
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @hex_conv_table, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !81
  %.not53 = icmp eq i8 %i.fd, -16
  %i.fe = getelementptr inbounds nuw i8, ptr %.049, i64 1
  br i1 %.not53, label %bb.u, label %.preheader, !llvm.loop !466

bb.u:                                             ; preds = %.preheader
  %i.ff = load ptr, ptr %1, align 8, !tbaa !92
  store i8 0, ptr %i.ff, align 1, !tbaa !81
  %i.fg = ptrtoint ptr %.049 to i64
  %i.fh = ptrtoint ptr %i.a to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = shl i64 %i.fi, 8
  %i.fk = or disjoint i64 %i.fj, 1
  store i64 %i.fk, ptr %3, align 8, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.fl, align 8, !tbaa !81
  store ptr %.049, ptr %1, align 8, !tbaa !92
  store ptr %.049, ptr %0, align 8, !tbaa !92
  br label %bb.v

.thread:                                          ; preds = %bb.i, %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.p, %bb.b, %bb.r
  %.047.lcssa74 = phi i64 [ 16, %bb.r ], [ 8, %bb.i ], [ 12, %bb.m ], [ 7, %bb.h ], [ 11, %bb.l ], [ 6, %bb.g ], [ 13, %bb.n ], [ 5, %bb.f ], [ 9, %bb.j ], [ 4, %bb.e ], [ 14, %bb.o ], [ 3, %bb.d ], [ 10, %bb.k ], [ 2, %bb.c ], [ 15, %bb.p ], [ 1, %bb.b ]
  %.048.lcssa73 = phi i64 [ %i.er, %bb.r ], [ %i.bx, %bb.i ], [ %i.dh, %bb.m ], [ %i.bo, %bb.h ], [ %i.cy, %bb.l ], [ %i.bf, %bb.g ], [ %i.dq, %bb.n ], [ %i.aw, %bb.f ], [ %i.cg, %bb.j ], [ %i.an, %bb.e ], [ %i.dz, %bb.o ], [ %i.ae, %bb.d ], [ %i.cp, %bb.k ], [ %i.v, %bb.c ], [ %i.ei, %bb.p ], [ %i.m, %bb.b ] ; 2 uses
  %i.fm = select i1 %i.c, i64 12, i64 4
  store i64 %i.fm, ptr %3, align 8, !tbaa !79
  %i.fn = sub i64 0, %.048.lcssa73
  %i.fo = select i1 %i.c, i64 %i.fn, i64 %.048.lcssa73
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !81
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.047.lcssa74
  store ptr %i.fq, ptr %0, align 8, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u, %bb.t, %bb.q
  %.050 = phi i1 [ false, %bb.q ], [ true, %bb.u ], [ false, %bb.t ], [ true, %.thread ]
  ret i1 %.050
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bigint_set_buf(ptr nofree noundef nonnull captures(none) initializes((0, 4), (8, 16)) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(address) %5) unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !91
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult ptr %3, %5
  %i.c = icmp ult ptr %5, %4
  %i.d = and i1 %i.b, %i.c
  %i.e = ptrtoint ptr %4 to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.neg = sext i1 %i.d to i32
  %i.i = add i32 %.neg, %i.h                      ; 2 uses
  %i.j = load i8, ptr %3, align 1, !tbaa !81
  %i.k = icmp ugt i8 %i.j, 52
  %.neg56 = sext i1 %i.k to i64
  %i.l = add i64 %1, %.neg56
  %i.m = add i32 %i.i, -750                       ; 2 uses
  %i.n = icmp ult i32 %i.m, -769                  ; 3 uses
  %i.o = zext i32 %i.m to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %4, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.s = icmp eq ptr %i.r, %i.q
  %.neg57 = sext i1 %i.s to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %.neg57
  %.050 = select i1 %i.n, ptr %i.t, ptr %4        ; 3 uses
  %i.u = select i1 %i.n, i32 750, i32 %i.i
  %i.v = load i32, ptr %2, align 4, !tbaa !114
  %i.w = sub nsw i32 %i.v, %i.u
  store i32 %i.w, ptr %2, align 4, !tbaa !114
  store i32 1, ptr %0, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  store i64 %i.l, ptr %i.x, align 8, !tbaa !91
  %i.y = icmp ult ptr %3, %.050
  br i1 %i.y, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.c, %bigint_add_u64.exit
  %i.z = phi i32 [ %i.fs, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 7 uses
  %.promoted131 = phi i32 [ %.promoted131212, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 18 uses
  %i.aa = phi i32 [ %i.ft, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 4 uses
  %.promoted = phi i32 [ %.promoted205, %bigint_add_u64.exit ], [ 1, %bb.c ] ; 5 uses
  %.045152 = phi i64 [ %.2, %bigint_add_u64.exit ], [ 0, %bb.c ] ; 2 uses
  %.046151 = phi i32 [ %.147, %bigint_add_u64.exit ], [ 0, %bb.c ] ; 2 uses
  %.048150 = phi ptr [ %.149, %bigint_add_u64.exit ], [ %3, %bb.c ] ; 4 uses
  %.not58 = icmp eq ptr %.048150, %5
  br i1 %.not58, label %bb.q, label %bb.d, !prof !8

bb.d:                                             ; preds = %.lr.ph154
  %i.ab = mul i64 %.045152, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %.048150, i64 1 ; 5 uses
  %i.ad = load i8, ptr %.048150, align 1, !tbaa !81
  %i.ae = add i8 %i.ad, -48
  %i.af = zext i8 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af                    ; 3 uses
  %i.ah = add i32 %.046151, 1                     ; 5 uses
  %i.ai = icmp eq ptr %i.ac, %.050                ; 2 uses
  %i.aj = and i1 %i.n, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.ak = urem i64 %i.ag, 10
  %i.al = add i64 %i.ag, 1
  %i.am = sub i64 %i.al, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.am, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  %i.an = icmp eq i32 %i.ah, 19
  br i1 %i.an, label %.split.preheader, label %bb.h

.split.preheader:                                 ; preds = %bb.f
  %.not157 = icmp eq i32 %.promoted131, 0
  br i1 %.not157, label %._crit_edge121, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.split.preheader
  %wide.trip.count187 = zext i32 %.promoted131 to i64
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.g
  %indvars.iv184 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next185, %bb.g ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv184
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !91
  %.not.i65 = icmp eq i64 %i.ap, 0
  br i1 %.not.i65, label %bb.g, label %._crit_edge121.loopexit

bb.g:                                             ; preds = %.lr.ph120
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bigint_mul_pow10.exit61, label %.lr.ph120, !llvm.loop !135

._crit_edge121.loopexit:                          ; preds = %.lr.ph120
  %i.aq = trunc nuw i64 %indvars.iv184 to i32
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit, %.split.preheader
  %.018.i.lcssa = phi i32 [ 0, %.split.preheader ], [ %i.aq, %._crit_edge121.loopexit ] ; 2 uses
  %i.ar = icmp ult i32 %.018.i.lcssa, %.promoted131
  br i1 %i.ar, label %.lr.ph128.preheader, label %bigint_mul_pow10.exit61

.lr.ph128.preheader:                              ; preds = %._crit_edge121
  %i.as = zext i32 %.018.i.lcssa to i64           ; 4 uses
  %wide.trip.count192 = zext i32 %.promoted131 to i64 ; 2 uses
  %i.at = sub nsw i64 %wide.trip.count192, %i.as  ; 3 uses
  %xtraiter300 = and i64 %i.at, 1
  %i.au = add nsw i64 %wide.trip.count192, -1
  %i.av = icmp eq i64 %i.au, %i.as
  br i1 %i.av, label %.lr.ph128.epil.preheader, label %.lr.ph128.preheader.new

.lr.ph128.preheader.new:                          ; preds = %.lr.ph128.preheader
  %unroll_iter305 = and i64 %i.at, -2
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128, %.lr.ph128.preheader.new
  %indvars.iv189 = phi i64 [ %i.as, %.lr.ph128.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph128 ] ; 3 uses
  %.0.i64126 = phi i64 [ 0, %.lr.ph128.preheader.new ], [ %i.bl, %.lr.ph128 ]
  %niter306 = phi i64 [ 0, %.lr.ph128.preheader.new ], [ %niter306.next.1, %.lr.ph128 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !91
  %i.ay = zext i64 %i.ax to i128
  %i.az = mul nuw i128 %i.ay, 10000000000000000000
  %i.ba = zext i64 %.0.i64126 to i128
  %i.bb = add nuw i128 %i.az, %i.ba               ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc i128 %i.bb to i64
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !91
  %i.bh = zext i64 %i.bg to i128
  %i.bi = mul nuw i128 %i.bh, 10000000000000000000
  %i.bj = add nuw i128 %i.bi, %i.bc               ; 2 uses
  %i.bk = lshr i128 %i.bj, 64                     ; 2 uses
  %i.bl = trunc nuw i128 %i.bk to i64             ; 3 uses
  %i.bm = trunc i128 %i.bj to i64
  store i64 %i.bm, ptr %i.bf, align 8, !tbaa !91
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %._crit_edge129.unr-lcssa, label %.lr.ph128, !llvm.loop !136

._crit_edge129.unr-lcssa:                         ; preds = %.lr.ph128
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %._crit_edge129, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %._crit_edge129.unr-lcssa, %.lr.ph128.preheader
  %indvars.iv189.epil.init = phi i64 [ %i.as, %.lr.ph128.preheader ], [ %indvars.iv.next190.1, %._crit_edge129.unr-lcssa ]
  %.0.i64126.epil.init = phi i64 [ 0, %.lr.ph128.preheader ], [ %i.bl, %._crit_edge129.unr-lcssa ]
  %lcmp.mod304 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod304)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv189.epil.init ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.bp = zext i64 %i.bo to i128
  %i.bq = mul nuw i128 %i.bp, 10000000000000000000
  %i.br = zext i64 %.0.i64126.epil.init to i128
  %i.bs = add nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64                     ; 2 uses
  %i.bu = trunc nuw i128 %i.bt to i64
  %i.bv = trunc i128 %i.bs to i64
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !91
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %._crit_edge129.unr-lcssa, %.lr.ph128.epil.preheader
  %.lcssa285 = phi i128 [ %i.bk, %._crit_edge129.unr-lcssa ], [ %i.bt, %.lr.ph128.epil.preheader ]
  %.lcssa284 = phi i64 [ %i.bl, %._crit_edge129.unr-lcssa ], [ %i.bu, %.lr.ph128.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa285, 0
  br i1 %.not19.i, label %bigint_mul_pow10.exit61, label %bigint_mul_pow10.exit61.sink.split

bb.h:                                             ; preds = %bb.f
  br i1 %i.ai, label %.split51.preheader, label %bigint_add_u64.exit

.split51.preheader:                               ; preds = %bb.h
  %i.bw = icmp sgt i32 %i.ah, 18
  br i1 %i.bw, label %.lr.ph103, label %.split51._crit_edge

.lr.ph103:                                        ; preds = %.split51.preheader, %bigint_mul_u64.exit77
  %i.bx = phi i32 [ %i.dl, %bigint_mul_u64.exit77 ], [ %i.z, %.split51.preheader ] ; 3 uses
  %.promoted131216 = phi i32 [ %.promoted131215, %bigint_mul_u64.exit77 ], [ %.promoted131, %.split51.preheader ] ; 3 uses
  %i.by = phi i32 [ %i.dm, %bigint_mul_u64.exit77 ], [ %i.aa, %.split51.preheader ] ; 3 uses
  %.promoted209 = phi i32 [ %.promoted208, %bigint_mul_u64.exit77 ], [ %.promoted, %.split51.preheader ] ; 3 uses
  %i.bz = phi i32 [ %i.dn, %bigint_mul_u64.exit77 ], [ %.promoted, %.split51.preheader ] ; 9 uses
  %.0.i102 = phi i32 [ %i.do, %bigint_mul_u64.exit77 ], [ %i.ah, %.split51.preheader ] ; 2 uses
  %.not155 = icmp eq i32 %i.bz, 0
  br i1 %.not155, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph103
  %wide.trip.count = zext i32 %i.bz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !91
  %.not.i76 = icmp eq i64 %i.cb, 0
  br i1 %.not.i76, label %bb.i, label %._crit_edge.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bigint_mul_u64.exit77, label %.lr.ph, !llvm.loop !135

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cc = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph103
  %.018.i72.lcssa = phi i32 [ 0, %.lr.ph103 ], [ %i.cc, %._crit_edge.loopexit ] ; 2 uses
  %i.cd = icmp ult i32 %.018.i72.lcssa, %i.bz
  br i1 %i.cd, label %.lr.ph99.preheader, label %bigint_mul_u64.exit77

.lr.ph99.preheader:                               ; preds = %._crit_edge
  %i.ce = zext i32 %.018.i72.lcssa to i64         ; 4 uses
  %wide.trip.count172 = zext i32 %i.bz to i64     ; 2 uses
  %i.cf = sub nsw i64 %wide.trip.count172, %i.ce  ; 3 uses
  %xtraiter = and i64 %i.cf, 1
  %i.cg = add nsw i64 %wide.trip.count172, -1
  %i.ch = icmp eq i64 %i.cg, %i.ce
  br i1 %i.ch, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader.new

.lr.ph99.preheader.new:                           ; preds = %.lr.ph99.preheader
  %unroll_iter = and i64 %i.cf, -2
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader.new
  %indvars.iv169 = phi i64 [ %i.ce, %.lr.ph99.preheader.new ], [ %indvars.iv.next170.1, %.lr.ph99 ] ; 3 uses
  %.0.i7497 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %i.cx, %.lr.ph99 ]
  %niter = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %niter.next.1, %.lr.ph99 ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !91
  %i.ck = zext i64 %i.cj to i128
  %i.cl = mul nuw i128 %i.ck, 10000000000000000000
  %i.cm = zext i64 %.0.i7497 to i128
  %i.cn = add nuw i128 %i.cl, %i.cm               ; 2 uses
  %i.co = lshr i128 %i.cn, 64
  %i.cp = trunc i128 %i.cn to i64
  store i64 %i.cp, ptr %i.ci, align 8, !tbaa !91
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !91
  %i.ct = zext i64 %i.cs to i128
  %i.cu = mul nuw i128 %i.ct, 10000000000000000000
  %i.cv = add nuw i128 %i.cu, %i.co               ; 2 uses
  %i.cw = lshr i128 %i.cv, 64                     ; 2 uses
  %i.cx = trunc nuw i128 %i.cw to i64             ; 3 uses
  %i.cy = trunc i128 %i.cv to i64
  store i64 %i.cy, ptr %i.cr, align 8, !tbaa !91
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge100.unr-lcssa, label %.lr.ph99, !llvm.loop !136

._crit_edge100.unr-lcssa:                         ; preds = %.lr.ph99
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge100, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %._crit_edge100.unr-lcssa, %.lr.ph99.preheader
  %indvars.iv169.epil.init = phi i64 [ %i.ce, %.lr.ph99.preheader ], [ %indvars.iv.next170.1, %._crit_edge100.unr-lcssa ]
  %.0.i7497.epil.init = phi i64 [ 0, %.lr.ph99.preheader ], [ %i.cx, %._crit_edge100.unr-lcssa ]
  %lcmp.mod292 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv169.epil.init ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !91
  %i.db = zext i64 %i.da to i128
  %i.dc = mul nuw i128 %i.db, 10000000000000000000
  %i.dd = zext i64 %.0.i7497.epil.init to i128
  %i.de = add nuw i128 %i.dc, %i.dd               ; 2 uses
  %i.df = lshr i128 %i.de, 64                     ; 2 uses
  %i.dg = trunc nuw i128 %i.df to i64
  %i.dh = trunc i128 %i.de to i64
  store i64 %i.dh, ptr %i.cz, align 8, !tbaa !91
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.unr-lcssa, %.lr.ph99.epil.preheader
  %.lcssa276 = phi i128 [ %i.cw, %._crit_edge100.unr-lcssa ], [ %i.df, %.lr.ph99.epil.preheader ]
  %.lcssa = phi i64 [ %i.cx, %._crit_edge100.unr-lcssa ], [ %i.dg, %.lr.ph99.epil.preheader ]
  %.not19.i75 = icmp eq i128 %.lcssa276, 0
  br i1 %.not19.i75, label %bigint_mul_u64.exit77, label %bb.j

bb.j:                                             ; preds = %._crit_edge100
  %i.di = add i32 %i.bz, 1                        ; 6 uses
  store i32 %i.di, ptr %0, align 8, !tbaa !138
  %i.dj = zext i32 %i.bz to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.dj
  store i64 %.lcssa, ptr %i.dk, align 8, !tbaa !91
  br label %bigint_mul_u64.exit77

bigint_mul_u64.exit77:                            ; preds = %bb.i, %._crit_edge, %._crit_edge100, %bb.j
  %i.dl = phi i32 [ %i.bx, %._crit_edge100 ], [ %i.di, %bb.j ], [ %i.bx, %._crit_edge ], [ %i.bx, %bb.i ] ; 2 uses
  %.promoted131215 = phi i32 [ %.promoted131216, %._crit_edge100 ], [ %i.di, %bb.j ], [ %.promoted131216, %._crit_edge ], [ %.promoted131216, %bb.i ] ; 2 uses
  %i.dm = phi i32 [ %i.by, %._crit_edge100 ], [ %i.di, %bb.j ], [ %i.by, %._crit_edge ], [ %i.by, %bb.i ] ; 2 uses
  %.promoted208 = phi i32 [ %.promoted209, %._crit_edge100 ], [ %i.di, %bb.j ], [ %.promoted209, %._crit_edge ], [ %.promoted209, %bb.i ] ; 2 uses
  %i.dn = phi i32 [ %i.bz, %._crit_edge100 ], [ %i.di, %bb.j ], [ %i.bz, %._crit_edge ], [ %i.bz, %bb.i ]
  %i.do = add nsw i32 %.0.i102, -19               ; 2 uses
  %i.dp = icmp sgt i32 %.0.i102, 37
  br i1 %i.dp, label %.lr.ph103, label %.split51._crit_edge, !llvm.loop !137

.split51._crit_edge:                              ; preds = %bigint_mul_u64.exit77, %.split51.preheader
  %i.dq = phi i32 [ %i.z, %.split51.preheader ], [ %i.dl, %bigint_mul_u64.exit77 ] ; 4 uses
  %.promoted131214 = phi i32 [ %.promoted131, %.split51.preheader ], [ %.promoted131215, %bigint_mul_u64.exit77 ] ; 4 uses
  %i.dr = phi i32 [ %i.aa, %.split51.preheader ], [ %i.dm, %bigint_mul_u64.exit77 ] ; 12 uses
  %.promoted207 = phi i32 [ %.promoted, %.split51.preheader ], [ %.promoted208, %bigint_mul_u64.exit77 ]
  %.0.i.lcssa = phi i32 [ %i.ah, %.split51.preheader ], [ %i.do, %bigint_mul_u64.exit77 ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.lcssa, 0
  br i1 %.not.i, label %bigint_mul_pow10.exit61, label %bb.k

bb.k:                                             ; preds = %.split51._crit_edge
  %i.ds = sext i32 %.0.i.lcssa to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !91
  %.not156 = icmp eq i32 %i.dr, 0
  br i1 %.not156, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.k
  %wide.trip.count177 = zext i32 %i.dr to i64
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.l
  %indvars.iv174 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next175, %bb.l ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv174
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !91
  %.not.i82 = icmp eq i64 %i.dw, 0
  br i1 %.not.i82, label %bb.l, label %._crit_edge108.loopexit

bb.l:                                             ; preds = %.lr.ph107
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %bigint_mul_pow10.exit61, label %.lr.ph107, !llvm.loop !135

._crit_edge108.loopexit:                          ; preds = %.lr.ph107
  %i.dx = trunc nuw i64 %indvars.iv174 to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.k
  %.018.i78.lcssa = phi i32 [ 0, %bb.k ], [ %i.dx, %._crit_edge108.loopexit ] ; 2 uses
  %i.dy = icmp ult i32 %.018.i78.lcssa, %i.dr
  br i1 %i.dy, label %.lr.ph115, label %bigint_mul_pow10.exit61

.lr.ph115:                                        ; preds = %._crit_edge108
  %i.dz = zext i64 %i.du to i128                  ; 3 uses
  %i.ea = zext i32 %.018.i78.lcssa to i64         ; 4 uses
  %wide.trip.count182 = zext i32 %i.dr to i64     ; 2 uses
  %i.eb = sub nsw i64 %wide.trip.count182, %i.ea  ; 3 uses
  %xtraiter293 = and i64 %i.eb, 1
  %i.ec = add nsw i64 %wide.trip.count182, -1
  %i.ed = icmp eq i64 %i.ec, %i.ea
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter298 = and i64 %i.eb, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph115.new
  %indvars.iv179 = phi i64 [ %i.ea, %.lr.ph115.new ], [ %indvars.iv.next180.1, %bb.m ] ; 3 uses
  %.0.i80113 = phi i64 [ 0, %.lr.ph115.new ], [ %i.et, %bb.m ]
  %niter299 = phi i64 [ 0, %.lr.ph115.new ], [ %niter299.next.1, %bb.m ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !91
  %i.eg = zext i64 %i.ef to i128
  %i.eh = mul nuw i128 %i.eg, %i.dz
  %i.ei = zext i64 %.0.i80113 to i128
  %i.ej = add nuw i128 %i.eh, %i.ei               ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = trunc i128 %i.ej to i64
  store i64 %i.el, ptr %i.ee, align 8, !tbaa !91
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !91
  %i.ep = zext i64 %i.eo to i128
  %i.eq = mul nuw i128 %i.ep, %i.dz
  %i.er = add nuw i128 %i.eq, %i.ek               ; 2 uses
  %i.es = lshr i128 %i.er, 64                     ; 2 uses
  %i.et = trunc nuw i128 %i.es to i64             ; 3 uses
  %i.eu = trunc i128 %i.er to i64
  store i64 %i.eu, ptr %i.en, align 8, !tbaa !91
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge116.unr-lcssa, label %bb.m, !llvm.loop !136

._crit_edge116.unr-lcssa:                         ; preds = %bb.m
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %._crit_edge116, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.unr-lcssa, %.lr.ph115
  %indvars.iv179.epil.init = phi i64 [ %i.ea, %.lr.ph115 ], [ %indvars.iv.next180.1, %._crit_edge116.unr-lcssa ]
  %.0.i80113.epil.init = phi i64 [ 0, %.lr.ph115 ], [ %i.et, %._crit_edge116.unr-lcssa ]
  %lcmp.mod297 = trunc i64 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv179.epil.init ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !91
  %i.ex = zext i64 %i.ew to i128
  %i.ey = mul nuw i128 %i.ex, %i.dz
  %i.ez = zext i64 %.0.i80113.epil.init to i128
  %i.fa = add nuw i128 %i.ey, %i.ez               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64                     ; 2 uses
  %i.fc = trunc nuw i128 %i.fb to i64
  %i.fd = trunc i128 %i.fa to i64
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !91
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.unr-lcssa, %.epil.preheader
  %.lcssa282 = phi i128 [ %i.es, %._crit_edge116.unr-lcssa ], [ %i.fb, %.epil.preheader ]
  %.lcssa281 = phi i64 [ %i.et, %._crit_edge116.unr-lcssa ], [ %i.fc, %.epil.preheader ]
  %.not19.i81 = icmp eq i128 %.lcssa282, 0
  br i1 %.not19.i81, label %bigint_mul_pow10.exit61, label %bigint_mul_pow10.exit61.sink.split

bigint_mul_pow10.exit61.sink.split:               ; preds = %._crit_edge116, %._crit_edge129
  %.promoted131.sink257 = phi i32 [ %.promoted131, %._crit_edge129 ], [ %i.dr, %._crit_edge116 ] ; 2 uses
  %.lcssa250.sink = phi i64 [ %.lcssa284, %._crit_edge129 ], [ %.lcssa281, %._crit_edge116 ]
  %i.fe = add i32 %.promoted131.sink257, 1        ; 5 uses
  store i32 %i.fe, ptr %0, align 8, !tbaa !138
  %i.ff = zext i32 %.promoted131.sink257 to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ff
  store i64 %.lcssa250.sink, ptr %i.fg, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit61

bigint_mul_pow10.exit61:                          ; preds = %bb.l, %bb.g, %bigint_mul_pow10.exit61.sink.split, %._crit_edge108, %._crit_edge121, %._crit_edge129, %.split51._crit_edge, %._crit_edge116
  %i.fh = phi i32 [ %i.dq, %.split51._crit_edge ], [ %i.dq, %._crit_edge116 ], [ %i.dq, %._crit_edge108 ], [ %i.z, %._crit_edge129 ], [ %i.z, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %i.z, %._crit_edge121 ], [ %i.dq, %bb.l ] ; 8 uses
  %.promoted131213 = phi i32 [ %.promoted131214, %.split51._crit_edge ], [ %.promoted131214, %._crit_edge116 ], [ %.promoted131214, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %.promoted131214, %bb.l ]
  %i.fi = phi i32 [ %i.dr, %.split51._crit_edge ], [ %i.dr, %._crit_edge116 ], [ %i.dr, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dr, %bb.l ]
  %.promoted206 = phi i32 [ %.promoted207, %.split51._crit_edge ], [ %i.dr, %._crit_edge116 ], [ %i.dr, %._crit_edge108 ], [ %.promoted131, %._crit_edge129 ], [ %.promoted131, %bb.g ], [ %i.fe, %bigint_mul_pow10.exit61.sink.split ], [ %.promoted131, %._crit_edge121 ], [ %i.dr, %bb.l ]
  %i.fj = load i64, ptr %i.x, align 8, !tbaa !91  ; 2 uses
  %i.fk = add i64 %i.fj, %.1                      ; 2 uses
  store i64 %i.fk, ptr %i.x, align 8, !tbaa !91
  %.not.i62 = icmp ult i64 %i.fk, %i.fj
  br i1 %.not.i62, label %bb.n, label %bigint_add_u64.exit, !prof !8

bb.n:                                             ; preds = %bigint_mul_pow10.exit61
  %i.fl = icmp ugt i32 %i.fh, 1
  %wide.trip.count203 = zext i32 %i.fh to i64     ; 2 uses
  br i1 %i.fl, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.n, %bb.p
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.p ], [ 1, %bb.n ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv200 ; 3 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !91 ; 2 uses
  %.not21.i = icmp eq i64 %i.fn, -1
  br i1 %.not21.i, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %.lr.ph148
  %i.fo = add nuw i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !91
  br label %bigint_add_u64.exit

bb.p:                                             ; preds = %.lr.ph148
  store i64 0, ptr %i.fm, align 8, !tbaa !91
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !467

._crit_edge149:                                   ; preds = %bb.p, %bb.n
  %i.fp = add i32 %i.fh, 1                        ; 5 uses
  store i32 %i.fp, ptr %0, align 8, !tbaa !138
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %wide.trip.count203
  store i64 1, ptr %i.fq, align 8, !tbaa !91
  br label %bigint_add_u64.exit

bb.q:                                             ; preds = %.lr.ph154
  %i.fr = getelementptr inbounds nuw i8, ptr %.048150, i64 1
  br label %bigint_add_u64.exit

bigint_add_u64.exit:                              ; preds = %._crit_edge149, %bb.o, %bigint_mul_pow10.exit61, %bb.h, %bb.q
  %i.fs = phi i32 [ %i.z, %bb.q ], [ %i.z, %bb.h ], [ %i.fh, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.promoted131212 = phi i32 [ %.promoted131, %bb.q ], [ %.promoted131, %bb.h ], [ %.promoted131213, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %i.ft = phi i32 [ %i.aa, %bb.q ], [ %i.aa, %bb.h ], [ %i.fi, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.promoted205 = phi i32 [ %.promoted, %bb.q ], [ %.promoted, %bb.h ], [ %.promoted206, %bigint_mul_pow10.exit61 ], [ %i.fh, %bb.o ], [ %i.fp, %._crit_edge149 ]
  %.149 = phi ptr [ %i.fr, %bb.q ], [ %i.ac, %bb.h ], [ %i.ac, %bigint_mul_pow10.exit61 ], [ %i.ac, %bb.o ], [ %i.ac, %._crit_edge149 ] ; 2 uses
  %.147 = phi i32 [ %.046151, %bb.q ], [ %i.ah, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %.2 = phi i64 [ %.045152, %bb.q ], [ %.1, %bb.h ], [ 0, %bigint_mul_pow10.exit61 ], [ 0, %bb.o ], [ 0, %._crit_edge149 ]
  %i.fu = icmp ult ptr %.149, %.050
  br i1 %i.fu, label %.lr.ph154, label %.loopexit, !llvm.loop !468

.loopexit:                                        ; preds = %bigint_add_u64.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"pool_chunk", !14, i64 0, !15, i64 8}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS10pool_chunk", !11, i64 0}
!16 = !{!13, !15, i64 8}
!17 = !{!18, !14, i64 0}
!18 = !{!"pool_ctx", !14, i64 0, !15, i64 8}
end_hunk_9
