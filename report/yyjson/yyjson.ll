Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_read_opts:bb.a
  %i.ajr = icmp ult i64 %i.ajo, %i.aje
  %i.ajs = zext i1 %i.ajr to i64
  %i.ajt = add nuw i64 %i.ajs, %i.ajd
  br label %.split4203

.split4203:                                       ; preds = %bb.hy, %bb.hw
  %.03997 = phi i64 [ %i.ajd, %bb.hw ], [ %i.ajt, %bb.hy ] ; 2 uses
  %i.aju = icmp sgt i64 %.03997, -1               ; 2 uses
  %.neg983.i566 = sext i1 %i.aju to i32
  %i.ajv = zext i1 %i.aju to i64
  %i.ajw = shl i64 %.03997, %i.ajv                ; 2 uses
  %i.ajx = and i64 %i.ajw, 1024
  %i.ajy = add i64 %i.ajx, %i.ajw                 ; 2 uses
  %i.ajz = icmp ult i64 %i.ajy, 1024
  %spec.select4583.v = select i1 %i.ajz, i32 65, i32 64
  %i.aka = lshr i64 %i.ajy, 11
  %reass.sub6513 = sub nsw i32 %i.aiv, %i.aix
  %i.akb = add nsw i32 %reass.sub6513, 1086
  %spec.select4583 = add nsw i32 %i.akb, %.neg983.i566
  %i.akc = add nsw i32 %spec.select4583, %spec.select4583.v
  %i.akd = zext nneg i32 %i.akc to i64
  %i.ake = shl nuw nsw i64 %i.akd, 52
  %i.akf = and i64 %i.aka, 4503599627370495
  %i.akg = or disjoint i64 %i.ake, %i.akf
  store i64 20, ptr %.5665.i, align 8, !tbaa !79
  %i.akh = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.aki = or disjoint i64 %i.akg, %i.akh
  %i.akj = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.aki, ptr %i.akj, align 8, !tbaa !81
  store ptr %.33.i537, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

.critedge992.i565:                                ; preds = %..critedge992.i565_crit_edge, %bb.hx
  %.pre-phi7697 = phi i32 [ %.pre7696, %..critedge992.i565_crit_edge ], [ %i.aix, %bb.hx ]
  %.pre-phi7695 = phi i128 [ %.pre7694, %..critedge992.i565_crit_edge ], [ %i.aiz, %bb.hx ]
  %.pre-phi7693 = phi i32 [ %.pre7692, %..critedge992.i565_crit_edge ], [ %i.aiv, %bb.hx ]
  %.pre-phi7687 = phi i32 [ %.pre7686, %..critedge992.i565_crit_edge ], [ %i.aio, %bb.hx ] ; 2 uses
  %.pre-phi7683 = phi i64 [ %.pre7682, %..critedge992.i565_crit_edge ], [ %i.aiw, %bb.hx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.akk = select i1 %i.aik, i64 0, i64 4
  %i.akl = shl i64 %i.akk, %.pre-phi7683          ; 2 uses
  %i.akm = add i32 %.pre-phi7687, 686
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.akn
  %i.akp = load i64, ptr %i.ako, align 16, !tbaa !91
  %i.akq = add i32 %.pre-phi7687, 687
  %i.akr = sext i32 %i.akq to i64
  %i.aks = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.akr
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !91
  %i.aku = lshr i64 %i.akt, 63
  %i.akv = add i64 %i.aku, %i.akp
  %i.akw = zext i64 %i.akv to i128
  %i.akx = mul nuw i128 %.pre-phi7695, %i.akw     ; 2 uses
  %i.aky = lshr i128 %i.akx, 64
  %i.akz = trunc nuw i128 %i.aky to i64
  %i.ala = trunc i128 %i.akx to i64
  %i.alb = lshr i64 %i.ala, 63
  %i.alc = add nuw i64 %i.alb, %i.akz             ; 2 uses
  %.not986.i546 = icmp eq i64 %i.akl, 0
  %i.ald = select i1 %.not986.i546, i64 8, i64 9
  %i.ale = add i64 %i.ald, %i.akl
  %i.alf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.alc, i1 true) ; 3 uses
  %i.alg = trunc nuw nsw i64 %i.alf to i32
  %i.alh = shl i64 %i.alc, %i.alf                 ; 3 uses
  %i.ali = add nsw i32 %.pre-phi7693, 64
  %i.alj = add nuw nsw i32 %.pre-phi7697, %i.alg
  %i.alk = sub nsw i32 %i.ali, %i.alj             ; 7 uses
  %i.all = shl i64 %i.ale, %i.alf                 ; 3 uses
  %i.alm = icmp sgt i32 %i.alk, -1086
  br i1 %i.alm, label %.thread4163, label %bb.hz, !prof !25

bb.hz:                                            ; preds = %.critedge992.i565
  %i.aln = icmp samesign ult i32 %i.alk, -1137
  br i1 %i.aln, label %.thread4160, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.alo = sub nuw nsw i32 -1074, %i.alk          ; 2 uses
  %i.alp = icmp samesign ult i32 %i.alk, -1134
  br i1 %i.alp, label %.thread4160, label %.thread4163, !prof !134

.thread4160:                                      ; preds = %bb.hz, %bb.ia
  %.0897.i5494162 = phi i32 [ %i.alo, %bb.ia ], [ 64, %bb.hz ]
  %i.alq = add nsw i32 %.0897.i5494162, -60       ; 2 uses
  %i.alr = zext nneg i32 %i.alq to i64            ; 2 uses
  %i.als = lshr i64 %i.alh, %i.alr
  %i.alt = add nsw i32 %i.alq, %i.alk
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
  %.sroa.9.0.i559 = select i1 %.not988.i558, i32 -1075, i32 %i.ans ; 4 uses
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
  %xtraiter11048.a = and i64 %i.aog, 1
  %i.aoh = add nsw i64 %wide.trip.count7062, -1
  %i.aoi = icmp eq i64 %i.aoh, %i.aof
  br i1 %i.aoi, label %.lr.ph5891.epil.preheader, label %.lr.ph5891.preheader.new

.lr.ph5891.preheader.new:                         ; preds = %.lr.ph5891.preheader
  %unroll_iter11053.a = and i64 %i.aog, -2
  br label %.lr.ph5891

.lr.ph5891:                                       ; preds = %.lr.ph5891, %.lr.ph5891.preheader.new
  %indvars.iv7059 = phi i64 [ %i.aof, %.lr.ph5891.preheader.new ], [ %indvars.iv.next7060.1, %.lr.ph5891 ] ; 3 uses
  %.0.i16915889 = phi i64 [ 0, %.lr.ph5891.preheader.new ], [ %i.aoy, %.lr.ph5891 ]
  %niter11054.a = phi i64 [ 0, %.lr.ph5891.preheader.new ], [ %niter11054.next.1.a, %.lr.ph5891 ]
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
  %niter11054.next.1.a = add i64 %niter11054.a, 2 ; 2 uses
  %niter11054.ncmp.1.a = icmp eq i64 %niter11054.next.1.a, %unroll_iter11053.a
  br i1 %niter11054.ncmp.1.a, label %._crit_edge5892.unr-lcssa, label %.lr.ph5891, !llvm.loop !136

._crit_edge5892.unr-lcssa:                        ; preds = %.lr.ph5891
  %lcmp.mod11049.not.a = icmp eq i64 %xtraiter11048.a, 0
  br i1 %lcmp.mod11049.not.a, label %._crit_edge5892, label %.lr.ph5891.epil.preheader

.lr.ph5891.epil.preheader:                        ; preds = %._crit_edge5892.unr-lcssa, %.lr.ph5891.preheader
  %indvars.iv7059.epil.init = phi i64 [ %i.aof, %.lr.ph5891.preheader ], [ %indvars.iv.next7060.1, %._crit_edge5892.unr-lcssa ]
  %.0.i16915889.epil.init = phi i64 [ 0, %.lr.ph5891.preheader ], [ %i.aoy, %._crit_edge5892.unr-lcssa ]
  %lcmp.mod11052.a = trunc i64 %i.aog to i1
  call void @llvm.assume(i1 %lcmp.mod11052.a)
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
  %xtraiter11056.a = and i64 %i.aqa, 1
  %i.aqb = add nsw i64 %wide.trip.count7072, -1
  %i.aqc = icmp eq i64 %i.aqb, %i.apz
  br i1 %i.aqc, label %.epil.preheader11055.a, label %.lr.ph5911.new

.lr.ph5911.new:                                   ; preds = %.lr.ph5911
  %unroll_iter11061.a = and i64 %i.aqa, -2
  br label %bb.is

bb.is:                                            ; preds = %bb.is, %.lr.ph5911.new
  %indvars.iv7069 = phi i64 [ %i.apz, %.lr.ph5911.new ], [ %indvars.iv.next7070.1, %bb.is ] ; 3 uses
  %.0.i16975909 = phi i64 [ 0, %.lr.ph5911.new ], [ %i.aqs, %bb.is ]
  %niter11062.a = phi i64 [ 0, %.lr.ph5911.new ], [ %niter11062.next.1.a, %bb.is ]
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
end_hunk_0
begin_hunk_1_@yyjson_read_opts:bb.a
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
  %xtraiter11041.a = and i64 %i.atl, 1
  %i.atm = add nsw i64 %wide.trip.count7052, -1
  %i.atn = icmp eq i64 %i.atm, %i.atk
  br i1 %i.atn, label %.epil.preheader11040, label %.lr.ph5878.new

.lr.ph5878.new:                                   ; preds = %.lr.ph5878
  %unroll_iter11046.a = and i64 %i.atl, -2
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iz, %.lr.ph5878.new
  %indvars.iv7049 = phi i64 [ %i.atk, %.lr.ph5878.new ], [ %indvars.iv.next7050.1, %bb.iz ] ; 3 uses
  %.0.i16855876 = phi i64 [ 0, %.lr.ph5878.new ], [ %i.aud, %bb.iz ]
  %niter11047.a = phi i64 [ 0, %.lr.ph5878.new ], [ %niter11047.next.1.a, %bb.iz ]
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
  %niter11047.next.1.a = add i64 %niter11047.a, 2 ; 2 uses
  %niter11047.ncmp.1.a = icmp eq i64 %niter11047.next.1.a, %unroll_iter11046.a
  br i1 %niter11047.ncmp.1.a, label %._crit_edge5879.unr-lcssa, label %bb.iz, !llvm.loop !136

._crit_edge5879.unr-lcssa:                        ; preds = %bb.iz
  %lcmp.mod11042.not.a = icmp eq i64 %xtraiter11041.a, 0
  br i1 %lcmp.mod11042.not.a, label %._crit_edge5879, label %.epil.preheader11040

.epil.preheader11040:                             ; preds = %._crit_edge5879.unr-lcssa, %.lr.ph5878
  %indvars.iv7049.epil.init = phi i64 [ %i.atk, %.lr.ph5878 ], [ %indvars.iv.next7050.1, %._crit_edge5879.unr-lcssa ]
  %.0.i16855876.epil.init = phi i64 [ 0, %.lr.ph5878 ], [ %i.aud, %._crit_edge5879.unr-lcssa ]
  %lcmp.mod11045.a = trunc i64 %i.atl to i1
  call void @llvm.assume(i1 %lcmp.mod11045.a)
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
  %i.auw = lshr i32 %.sroa.9.0.i559, 6            ; 15 uses
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
  br label %.lr.ph5922.preheader

bb.jc:                                            ; preds = %bb.jb
  %i.axl = zext i32 %i.aut to i64                 ; 10 uses
  %i.axm = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.axl
  store i64 0, ptr %i.axm, align 8, !tbaa !91
  %.not.i15495931 = icmp eq i32 %i.aut, 0
  %.pre7698 = zext nneg i32 %i.auv to i64         ; 5 uses
  br i1 %.not.i15495931, label %._crit_edge5935, label %.lr.ph5934

.lr.ph5934:                                       ; preds = %bb.jc
  %i.axn = sub nuw nsw i32 64, %i.auv
  %i.axo = zext nneg i32 %i.axn to i64            ; 4 uses
  %min.iters.check10069 = icmp ult i32 %i.aut, 20
  br i1 %min.iters.check10069, label %scalar.ph10068.preheader, label %vector.scevcheck10063

vector.scevcheck10063:                            ; preds = %.lr.ph5934
  %i.axp = add nsw i64 %i.axl, -1                 ; 2 uses
  %i.axq = add i32 %i.aut, %i.auw
  %i.axr = trunc i64 %i.axp to i32
  %i.axs = icmp ult i32 %i.axq, %i.axr
  %i.axt = icmp ugt i64 %i.axp, 4294967295
  %i.axu = or i1 %i.axs, %i.axt
  br i1 %i.axu, label %scalar.ph10068.preheader, label %vector.memcheck10064

vector.memcheck10064:                             ; preds = %vector.scevcheck10063
  %i.axv = shl nuw nsw i64 %i.axl, 3              ; 2 uses
  %i.axw = add i32 %i.aut, %i.auw
  %i.axx = zext i32 %i.axw to i64
  %i.axy = shl nuw nsw i64 %i.axx, 3              ; 2 uses
  %i.axz = sub nsw i64 %i.axy, %i.axv
  %diff.check10065 = icmp ugt i64 %i.axz, -32
  %i.aya = sub nsw i64 %i.axv, %i.axy
  %i.ayb = add nsw i64 %i.aya, -9
  %diff.check10066 = icmp ult i64 %i.ayb, 31
  %conflict.rdx10067 = or i1 %diff.check10065, %diff.check10066
  br i1 %conflict.rdx10067, label %scalar.ph10068.preheader, label %vector.ph10070

vector.ph10070:                                   ; preds = %vector.memcheck10064
  %n.vec10071 = and i64 %i.axl, 4294967292        ; 2 uses
  %i.ayc = and i64 %i.axl, 3
  %broadcast.splatinsert10072 = insertelement <2 x i64> poison, i64 %i.axo, i64 0
  %broadcast.splat10073 = shufflevector <2 x i64> %broadcast.splatinsert10072, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10074.a = insertelement <2 x i64> poison, i64 %.pre7698, i64 0
  %broadcast.splat10075.a = shufflevector <2 x i64> %broadcast.splatinsert10074.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10076

vector.body10076:                                 ; preds = %vector.body10076, %vector.ph10070
  %index10077 = phi i64 [ 0, %vector.ph10070 ], [ %index.next10082, %vector.body10076 ] ; 2 uses
  %i.ayd = sub i64 %i.axl, %index10077            ; 3 uses
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.ayd ; 2 uses
  %i.ayf = getelementptr inbounds i8, ptr %i.aye, i64 -8
  %i.ayg = getelementptr inbounds i8, ptr %i.aye, i64 -24
  %wide.load10078 = load <2 x i64>, ptr %i.ayf, align 8, !tbaa !91
  %wide.load10079 = load <2 x i64>, ptr %i.ayg, align 8, !tbaa !91
  %i.ayh = shl <2 x i64> %wide.load10078, %broadcast.splat10075.a
  %i.ayi = shl <2 x i64> %wide.load10079, %broadcast.splat10075.a
  %i.ayj = getelementptr [8 x i8], ptr %8, i64 %i.ayd ; 2 uses
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 -8
  %i.ayl = getelementptr i8, ptr %i.ayj, i64 -24
  %wide.load10080.a = load <2 x i64>, ptr %i.ayk, align 8, !tbaa !91
  %wide.load10081.a = load <2 x i64>, ptr %i.ayl, align 8, !tbaa !91
  %i.aym = lshr <2 x i64> %wide.load10080.a, %broadcast.splat10073
  %i.ayn = lshr <2 x i64> %wide.load10081.a, %broadcast.splat10073
  %i.ayo = or <2 x i64> %i.aym, %i.ayh
  %i.ayp = or <2 x i64> %i.ayn, %i.ayi
  %i.ayq = trunc nuw i64 %i.ayd to i32
  %i.ayr = add i32 %i.auw, %i.ayq
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.ays ; 2 uses
  %i.ayu = getelementptr inbounds i8, ptr %i.ayt, i64 -8
  %i.ayv = getelementptr inbounds i8, ptr %i.ayt, i64 -24
  store <2 x i64> %i.ayo, ptr %i.ayu, align 8, !tbaa !91
  store <2 x i64> %i.ayp, ptr %i.ayv, align 8, !tbaa !91
  %index.next10082 = add nuw i64 %index10077, 4   ; 2 uses
  %i.ayw = icmp eq i64 %index.next10082, %n.vec10071
  br i1 %i.ayw, label %middle.block10083, label %vector.body10076, !llvm.loop !146

middle.block10083:                                ; preds = %vector.body10076
  %cmp.n10084 = icmp eq i64 %n.vec10071, %i.axl
  br i1 %cmp.n10084, label %._crit_edge5935, label %scalar.ph10068.preheader

scalar.ph10068.preheader:                         ; preds = %vector.memcheck10064, %vector.scevcheck10063, %.lr.ph5934, %middle.block10083
  %indvars.iv7084.ph = phi i64 [ %i.axl, %vector.memcheck10064 ], [ %i.axl, %vector.scevcheck10063 ], [ %i.axl, %.lr.ph5934 ], [ %i.ayc, %middle.block10083 ] ; 7 uses
  %xtraiter11069 = and i64 %indvars.iv7084.ph, 1
  %lcmp.mod11070.not = icmp eq i64 %xtraiter11069, 0
  br i1 %lcmp.mod11070.not, label %scalar.ph10068.prol.loopexit, label %scalar.ph10068.prol

scalar.ph10068.prol:                              ; preds = %scalar.ph10068.preheader
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7084.ph
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !91
  %i.ayz = shl i64 %i.ayy, %.pre7698
  %i.aza = add nsw i64 %indvars.iv7084.ph, -1
  %i.azb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv7084.ph
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !91
  %i.azd = lshr i64 %i.azc, %i.axo
  %i.aze = or i64 %i.azd, %i.ayz
  %i.azf = trunc nuw i64 %indvars.iv7084.ph to i32
  %i.azg = add i32 %i.auw, %i.azf
  %i.azh = zext i32 %i.azg to i64
  %i.azi = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.azh
  store i64 %i.aze, ptr %i.azi, align 8, !tbaa !91
  br label %scalar.ph10068.prol.loopexit

scalar.ph10068.prol.loopexit:                     ; preds = %scalar.ph10068.prol, %scalar.ph10068.preheader
  %indvars.iv7084.unr = phi i64 [ %indvars.iv7084.ph, %scalar.ph10068.preheader ], [ %i.aza, %scalar.ph10068.prol ]
  %i.azj = icmp eq i64 %indvars.iv7084.ph, 1
  br i1 %i.azj, label %._crit_edge5935, label %scalar.ph10068

scalar.ph10068:                                   ; preds = %scalar.ph10068.prol.loopexit, %scalar.ph10068
  %indvars.iv7084 = phi i64 [ %i.azz, %scalar.ph10068 ], [ %indvars.iv7084.unr, %scalar.ph10068.prol.loopexit ] ; 6 uses
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %indvars.iv7084
  %i.azl = load i64, ptr %i.azk, align 8, !tbaa !91
  %i.azm = shl i64 %i.azl, %.pre7698
  %i.azn = add nsw i64 %indvars.iv7084, -1        ; 2 uses
  %i.azo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv7084
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !91
  %i.azq = lshr i64 %i.azp, %i.axo
  %i.azr = or i64 %i.azq, %i.azm
  %i.azs = trunc nuw i64 %indvars.iv7084 to i32
  %i.azt = add i32 %i.auw, %i.azs
  %i.azu = zext i32 %i.azt to i64
  %i.azv = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.azu
  store i64 %i.azr, ptr %i.azv, align 8, !tbaa !91
  %i.azw = getelementptr [8 x i8], ptr %8, i64 %indvars.iv7084
  %i.azx = load i64, ptr %i.azw, align 8, !tbaa !91
  %i.azy = shl i64 %i.azx, %.pre7698
  %i.azz = add nsw i64 %indvars.iv7084, -2        ; 2 uses
  %i.baa = getelementptr [8 x i8], ptr %8, i64 %i.azn
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !91
  %i.bac = lshr i64 %i.bab, %i.axo
  %i.bad = or i64 %i.bac, %i.azy
  %i.bae = trunc nuw i64 %i.azn to i32
  %i.baf = add i32 %i.auw, %i.bae
  %i.bag = zext i32 %i.baf to i64
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.bag
  store i64 %i.bad, ptr %i.bah, align 8, !tbaa !91
  %.not.i1549.wide.1 = icmp eq i64 %i.azz, 0
  br i1 %.not.i1549.wide.1, label %._crit_edge5935, label %scalar.ph10068, !llvm.loop !147

._crit_edge5935:                                  ; preds = %scalar.ph10068.prol.loopexit, %scalar.ph10068, %middle.block10083, %bb.jc
  %i.bai = load i64, ptr %i.anv, align 8, !tbaa !91
  %i.baj = shl i64 %i.bai, %.pre7698
  %i.bak = zext nneg i32 %i.auw to i64
  %i.bal = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.bak
  store i64 %i.baj, ptr %i.bal, align 8, !tbaa !91
  %i.bam = add i32 %i.aut, %i.auw                 ; 2 uses
  %i.ban = zext i32 %i.bam to i64
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.ban
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !91
  %i.baq = icmp ne i64 %i.bap, 0
  %i.bar = zext i1 %i.baq to i32
  %i.bas = add i32 %i.bam, %i.bar                 ; 2 uses
  %.not45.i15515936 = icmp eq i32 %i.auw, 0
  br i1 %.not45.i15515936, label %bigint_mul_pow2.exit1556, label %.lr.ph5922.preheader

bb.jd:                                            ; preds = %bigint_mul_pow10.exit1518
  %i.bat = sub nsw i32 0, %.sroa.9.0.i559         ; 2 uses
  %i.bau = and i32 %i.bat, 63                     ; 3 uses
  %i.bav = lshr i32 %i.bat, 6                     ; 16 uses
  %i.baw = load i32, ptr %7, align 8, !tbaa !138  ; 12 uses
  %i.bax = icmp eq i32 %i.bau, 0
  br i1 %i.bax, label %.preheader5052, label %bb.je, !prof !8

.preheader5052:                                   ; preds = %bb.jd
  %.not46.i15625923 = icmp eq i32 %i.baw, 0
  br i1 %.not46.i15625923, label %._crit_edge5926, label %.lr.ph5925

.lr.ph5925:                                       ; preds = %.preheader5052
  %i.bay = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.baz = add nsw i32 %i.bav, -1                 ; 6 uses
  %i.bba = zext i32 %i.baw to i64                 ; 9 uses
  %min.iters.check10052 = icmp ult i32 %i.baw, 30
  br i1 %min.iters.check10052, label %scalar.ph10051.preheader, label %vector.scevcheck10048

vector.scevcheck10048:                            ; preds = %.lr.ph5925
  %i.bbb = add nsw i64 %i.bba, -1                 ; 2 uses
  %i.bbc = add i32 %i.baw, %i.bav
  %i.bbd = add i32 %i.bbc, -1
  %i.bbe = trunc i64 %i.bbb to i32
  %i.bbf = icmp ult i32 %i.bbd, %i.bbe
  %i.bbg = icmp ugt i64 %i.bbb, 4294967295
  %i.bbh = or i1 %i.bbf, %i.bbg
  br i1 %i.bbh, label %scalar.ph10051.preheader, label %vector.memcheck10049

vector.memcheck10049:                             ; preds = %vector.scevcheck10048
  %i.bbi = add i32 %i.baw, %i.bav
  %i.bbj = add i32 %i.bbi, -1
  %i.bbk = zext i32 %i.bbj to i64
  %i.bbl = sub nsw i64 %i.bba, %i.bbk
  %i.bbm = shl nsw i64 %i.bbl, 3
  %i.bbn = add nsw i64 %i.bbm, -9
  %diff.check10050 = icmp ult i64 %i.bbn, 31
  br i1 %diff.check10050, label %scalar.ph10051.preheader, label %vector.ph10053

vector.ph10053:                                   ; preds = %vector.memcheck10049
  %n.vec10054 = and i64 %i.bba, 4294967292        ; 2 uses
  %i.bbo = and i64 %i.bba, 3
  br label %vector.body10055

vector.body10055:                                 ; preds = %vector.body10055, %vector.ph10053
  %index10056 = phi i64 [ 0, %vector.ph10053 ], [ %index.next10059, %vector.body10055 ] ; 2 uses
  %i.bbp = sub i64 %i.bba, %index10056            ; 2 uses
  %i.bbq = getelementptr [8 x i8], ptr %7, i64 %i.bbp ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 -8
  %i.bbs = getelementptr i8, ptr %i.bbq, i64 -24
  %wide.load10057 = load <2 x i64>, ptr %i.bbr, align 8, !tbaa !91
  %wide.load10058 = load <2 x i64>, ptr %i.bbs, align 8, !tbaa !91
  %i.bbt = trunc nuw i64 %i.bbp to i32
  %i.bbu = add i32 %i.baz, %i.bbt
  %i.bbv = zext i32 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bbv ; 2 uses
  %i.bbx = getelementptr inbounds i8, ptr %i.bbw, i64 -8
  %i.bby = getelementptr inbounds i8, ptr %i.bbw, i64 -24
  store <2 x i64> %wide.load10057, ptr %i.bbx, align 8, !tbaa !91
  store <2 x i64> %wide.load10058, ptr %i.bby, align 8, !tbaa !91
  %index.next10059 = add nuw i64 %index10056, 4   ; 2 uses
  %i.bbz = icmp eq i64 %index.next10059, %n.vec10054
  br i1 %i.bbz, label %middle.block10060, label %vector.body10055, !llvm.loop !148

middle.block10060:                                ; preds = %vector.body10055
  %cmp.n10061 = icmp eq i64 %n.vec10054, %i.bba
  br i1 %cmp.n10061, label %._crit_edge5926, label %scalar.ph10051.preheader

scalar.ph10051.preheader:                         ; preds = %vector.memcheck10049, %vector.scevcheck10048, %.lr.ph5925, %middle.block10060
  %indvars.iv7079.ph = phi i64 [ %i.bba, %vector.memcheck10049 ], [ %i.bba, %vector.scevcheck10048 ], [ %i.bba, %.lr.ph5925 ], [ %i.bbo, %middle.block10060 ] ; 4 uses
  %i.bca = add nsw i64 %indvars.iv7079.ph, -1
  %xtraiter11066 = and i64 %indvars.iv7079.ph, 3  ; 2 uses
  %lcmp.mod11067.not = icmp eq i64 %xtraiter11066, 0
  br i1 %lcmp.mod11067.not, label %scalar.ph10051.prol.loopexit, label %scalar.ph10051.prol

scalar.ph10051.prol:                              ; preds = %scalar.ph10051.preheader, %scalar.ph10051.prol
  %indvars.iv7079.prol = phi i64 [ %i.bcb, %scalar.ph10051.prol ], [ %indvars.iv7079.ph, %scalar.ph10051.preheader ] ; 3 uses
  %prol.iter11068 = phi i64 [ %prol.iter11068.next, %scalar.ph10051.prol ], [ 0, %scalar.ph10051.preheader ]
  %i.bcb = add nsw i64 %indvars.iv7079.prol, -1   ; 2 uses
  %i.bcc = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7079.prol
  %i.bcd = load i64, ptr %i.bcc, align 8, !tbaa !91
  %i.bce = trunc nuw i64 %indvars.iv7079.prol to i32
  %i.bcf = add i32 %i.baz, %i.bce
  %i.bcg = zext i32 %i.bcf to i64
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bcg
  store i64 %i.bcd, ptr %i.bch, align 8, !tbaa !91
  %prol.iter11068.next = add i64 %prol.iter11068, 1 ; 2 uses
  %prol.iter11068.cmp.not = icmp eq i64 %prol.iter11068.next, %xtraiter11066
  br i1 %prol.iter11068.cmp.not, label %scalar.ph10051.prol.loopexit, label %scalar.ph10051.prol, !llvm.loop !149

scalar.ph10051.prol.loopexit:                     ; preds = %scalar.ph10051.prol, %scalar.ph10051.preheader
  %indvars.iv7079.unr = phi i64 [ %indvars.iv7079.ph, %scalar.ph10051.preheader ], [ %i.bcb, %scalar.ph10051.prol ]
  %i.bci = icmp ult i64 %i.bca, 3
  br i1 %i.bci, label %._crit_edge5926, label %scalar.ph10051

scalar.ph10051:                                   ; preds = %scalar.ph10051.prol.loopexit, %scalar.ph10051
  %indvars.iv7079 = phi i64 [ %i.bde, %scalar.ph10051 ], [ %indvars.iv7079.unr, %scalar.ph10051.prol.loopexit ] ; 6 uses
  %i.bcj = add nsw i64 %indvars.iv7079, -1        ; 2 uses
  %i.bck = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7079
  %i.bcl = load i64, ptr %i.bck, align 8, !tbaa !91
  %i.bcm = trunc nuw i64 %indvars.iv7079 to i32
  %i.bcn = add i32 %i.baz, %i.bcm
  %i.bco = zext i32 %i.bcn to i64
  %i.bcp = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bco
  store i64 %i.bcl, ptr %i.bcp, align 8, !tbaa !91
  %i.bcq = add nsw i64 %indvars.iv7079, -2        ; 2 uses
  %i.bcr = getelementptr [8 x i8], ptr %7, i64 %i.bcj
  %i.bcs = load i64, ptr %i.bcr, align 8, !tbaa !91
  %i.bct = trunc nuw i64 %i.bcj to i32
  %i.bcu = add i32 %i.baz, %i.bct
  %i.bcv = zext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bcv
  store i64 %i.bcs, ptr %i.bcw, align 8, !tbaa !91
  %i.bcx = add nsw i64 %indvars.iv7079, -3        ; 2 uses
  %i.bcy = getelementptr [8 x i8], ptr %7, i64 %i.bcq
  %i.bcz = load i64, ptr %i.bcy, align 8, !tbaa !91
  %i.bda = trunc nuw i64 %i.bcq to i32
  %i.bdb = add i32 %i.baz, %i.bda
  %i.bdc = zext i32 %i.bdb to i64
  %i.bdd = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bdc
  store i64 %i.bcz, ptr %i.bdd, align 8, !tbaa !91
  %i.bde = add nsw i64 %indvars.iv7079, -4        ; 2 uses
  %i.bdf = getelementptr [8 x i8], ptr %7, i64 %i.bcx
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !91
  %i.bdh = trunc nuw i64 %i.bcx to i32
  %i.bdi = add i32 %i.baz, %i.bdh
  %i.bdj = zext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw [8 x i8], ptr %i.bay, i64 %i.bdj
  store i64 %i.bdg, ptr %i.bdk, align 8, !tbaa !91
  %.not46.i1562.wide.3 = icmp eq i64 %i.bde, 0
  br i1 %.not46.i1562.wide.3, label %._crit_edge5926, label %scalar.ph10051, !llvm.loop !150

._crit_edge5926:                                  ; preds = %scalar.ph10051.prol.loopexit, %scalar.ph10051, %middle.block10060, %.preheader5052
  %i.bdl = add i32 %i.baw, %i.bav
  store i32 %i.bdl, ptr %7, align 8, !tbaa !138
  %.not47.i15645927 = icmp eq i32 %i.bav, 0
  br i1 %.not47.i15645927, label %bigint_mul_pow2.exit1556, label %.lr.ph5930

.lr.ph5930:                                       ; preds = %._crit_edge5926
  %i.bdm = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %.lr.ph5922.preheader

bb.je:                                            ; preds = %bb.jd
  %i.bdn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.bdo = zext i32 %i.baw to i64                 ; 10 uses
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bdo
  store i64 0, ptr %i.bdp, align 8, !tbaa !91
  %.not.i15585914 = icmp eq i32 %i.baw, 0
  %.pre7700 = zext nneg i32 %i.bau to i64         ; 5 uses
  br i1 %.not.i15585914, label %._crit_edge5918, label %.lr.ph5917

.lr.ph5917:                                       ; preds = %bb.je
  %i.bdq = sub nuw nsw i32 64, %i.bau
  %i.bdr = zext nneg i32 %i.bdq to i64            ; 4 uses
  %min.iters.check10031 = icmp ult i32 %i.baw, 20
  br i1 %min.iters.check10031, label %scalar.ph10030.preheader, label %vector.scevcheck10025

vector.scevcheck10025:                            ; preds = %.lr.ph5917
  %i.bds = add nsw i64 %i.bdo, -1                 ; 2 uses
  %i.bdt = add i32 %i.baw, %i.bav
  %i.bdu = trunc i64 %i.bds to i32
  %i.bdv = icmp ult i32 %i.bdt, %i.bdu
  %i.bdw = icmp ugt i64 %i.bds, 4294967295
  %i.bdx = or i1 %i.bdv, %i.bdw
  br i1 %i.bdx, label %scalar.ph10030.preheader, label %vector.memcheck10026

vector.memcheck10026:                             ; preds = %vector.scevcheck10025
  %i.bdy = shl nuw nsw i64 %i.bdo, 3              ; 2 uses
  %i.bdz = add i32 %i.baw, %i.bav
  %i.bea = zext i32 %i.bdz to i64
  %i.beb = shl nuw nsw i64 %i.bea, 3              ; 2 uses
  %i.bec = sub nsw i64 %i.beb, %i.bdy
  %diff.check10027 = icmp ugt i64 %i.bec, -32
  %i.bed = sub nsw i64 %i.bdy, %i.beb
  %i.bee = add nsw i64 %i.bed, -9
  %diff.check10028 = icmp ult i64 %i.bee, 31
  %conflict.rdx10029 = or i1 %diff.check10027, %diff.check10028
  br i1 %conflict.rdx10029, label %scalar.ph10030.preheader, label %vector.ph10032

vector.ph10032:                                   ; preds = %vector.memcheck10026
  %n.vec10033 = and i64 %i.bdo, 4294967292        ; 2 uses
  %i.bef = and i64 %i.bdo, 3
  %broadcast.splatinsert10034 = insertelement <2 x i64> poison, i64 %i.bdr, i64 0
  %broadcast.splat10035 = shufflevector <2 x i64> %broadcast.splatinsert10034, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10036.a = insertelement <2 x i64> poison, i64 %.pre7700, i64 0
  %broadcast.splat10037.a = shufflevector <2 x i64> %broadcast.splatinsert10036.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10038

vector.body10038:                                 ; preds = %vector.body10038, %vector.ph10032
  %index10039 = phi i64 [ 0, %vector.ph10032 ], [ %index.next10044, %vector.body10038 ] ; 2 uses
  %i.beg = sub i64 %i.bdo, %index10039            ; 3 uses
  %i.beh = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.beg ; 2 uses
  %i.bei = getelementptr inbounds i8, ptr %i.beh, i64 -8
  %i.bej = getelementptr inbounds i8, ptr %i.beh, i64 -24
  %wide.load10040 = load <2 x i64>, ptr %i.bei, align 8, !tbaa !91
  %wide.load10041 = load <2 x i64>, ptr %i.bej, align 8, !tbaa !91
  %i.bek = shl <2 x i64> %wide.load10040, %broadcast.splat10037.a
  %i.bel = shl <2 x i64> %wide.load10041, %broadcast.splat10037.a
  %i.bem = getelementptr [8 x i8], ptr %7, i64 %i.beg ; 2 uses
  %i.ben = getelementptr i8, ptr %i.bem, i64 -8
  %i.beo = getelementptr i8, ptr %i.bem, i64 -24
  %wide.load10042.a = load <2 x i64>, ptr %i.ben, align 8, !tbaa !91
  %wide.load10043.a = load <2 x i64>, ptr %i.beo, align 8, !tbaa !91
  %i.bep = lshr <2 x i64> %wide.load10042.a, %broadcast.splat10035
  %i.beq = lshr <2 x i64> %wide.load10043.a, %broadcast.splat10035
  %i.ber = or <2 x i64> %i.bep, %i.bek
  %i.bes = or <2 x i64> %i.beq, %i.bel
  %i.bet = trunc nuw i64 %i.beg to i32
  %i.beu = add i32 %i.bav, %i.bet
  %i.bev = zext i32 %i.beu to i64
  %i.bew = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bev ; 2 uses
  %i.bex = getelementptr inbounds i8, ptr %i.bew, i64 -8
  %i.bey = getelementptr inbounds i8, ptr %i.bew, i64 -24
  store <2 x i64> %i.ber, ptr %i.bex, align 8, !tbaa !91
  store <2 x i64> %i.bes, ptr %i.bey, align 8, !tbaa !91
  %index.next10044 = add nuw i64 %index10039, 4   ; 2 uses
  %i.bez = icmp eq i64 %index.next10044, %n.vec10033
  br i1 %i.bez, label %middle.block10045, label %vector.body10038, !llvm.loop !151

middle.block10045:                                ; preds = %vector.body10038
  %cmp.n10046 = icmp eq i64 %n.vec10033, %i.bdo
  br i1 %cmp.n10046, label %._crit_edge5918, label %scalar.ph10030.preheader

scalar.ph10030.preheader:                         ; preds = %vector.memcheck10026, %vector.scevcheck10025, %.lr.ph5917, %middle.block10045
  %indvars.iv7074.ph = phi i64 [ %i.bdo, %vector.memcheck10026 ], [ %i.bdo, %vector.scevcheck10025 ], [ %i.bdo, %.lr.ph5917 ], [ %i.bef, %middle.block10045 ] ; 7 uses
  %xtraiter11063.a = and i64 %indvars.iv7074.ph, 1
  %lcmp.mod11064.not.a = icmp eq i64 %xtraiter11063.a, 0
  br i1 %lcmp.mod11064.not.a, label %scalar.ph10030.prol.loopexit, label %scalar.ph10030.prol

scalar.ph10030.prol:                              ; preds = %scalar.ph10030.preheader
  %i.bfa = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %indvars.iv7074.ph
  %i.bfb = load i64, ptr %i.bfa, align 8, !tbaa !91
  %i.bfc = shl i64 %i.bfb, %.pre7700
  %i.bfd = add nsw i64 %indvars.iv7074.ph, -1
  %i.bfe = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074.ph
  %i.bff = load i64, ptr %i.bfe, align 8, !tbaa !91
  %i.bfg = lshr i64 %i.bff, %i.bdr
  %i.bfh = or i64 %i.bfg, %i.bfc
  %i.bfi = trunc nuw i64 %indvars.iv7074.ph to i32
  %i.bfj = add i32 %i.bav, %i.bfi
  %i.bfk = zext i32 %i.bfj to i64
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bfk
  store i64 %i.bfh, ptr %i.bfl, align 8, !tbaa !91
  br label %scalar.ph10030.prol.loopexit

scalar.ph10030.prol.loopexit:                     ; preds = %scalar.ph10030.prol, %scalar.ph10030.preheader
  %indvars.iv7074.unr = phi i64 [ %indvars.iv7074.ph, %scalar.ph10030.preheader ], [ %i.bfd, %scalar.ph10030.prol ]
  %i.bfm = icmp eq i64 %indvars.iv7074.ph, 1
  br i1 %i.bfm, label %._crit_edge5918, label %scalar.ph10030

scalar.ph10030:                                   ; preds = %scalar.ph10030.prol.loopexit, %scalar.ph10030
  %indvars.iv7074 = phi i64 [ %i.bgc, %scalar.ph10030 ], [ %indvars.iv7074.unr, %scalar.ph10030.prol.loopexit ] ; 6 uses
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %indvars.iv7074
  %i.bfo = load i64, ptr %i.bfn, align 8, !tbaa !91
  %i.bfp = shl i64 %i.bfo, %.pre7700
  %i.bfq = add nsw i64 %indvars.iv7074, -1        ; 2 uses
  %i.bfr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !91
  %i.bft = lshr i64 %i.bfs, %i.bdr
  %i.bfu = or i64 %i.bft, %i.bfp
  %i.bfv = trunc nuw i64 %indvars.iv7074 to i32
  %i.bfw = add i32 %i.bav, %i.bfv
  %i.bfx = zext i32 %i.bfw to i64
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bfx
  store i64 %i.bfu, ptr %i.bfy, align 8, !tbaa !91
  %i.bfz = getelementptr [8 x i8], ptr %7, i64 %indvars.iv7074
  %i.bga = load i64, ptr %i.bfz, align 8, !tbaa !91
  %i.bgb = shl i64 %i.bga, %.pre7700
  %i.bgc = add nsw i64 %indvars.iv7074, -2        ; 2 uses
  %i.bgd = getelementptr [8 x i8], ptr %7, i64 %i.bfq
  %i.bge = load i64, ptr %i.bgd, align 8, !tbaa !91
  %i.bgf = lshr i64 %i.bge, %i.bdr
  %i.bgg = or i64 %i.bgf, %i.bgb
  %i.bgh = trunc nuw i64 %i.bfq to i32
  %i.bgi = add i32 %i.bav, %i.bgh
  %i.bgj = zext i32 %i.bgi to i64
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgj
  store i64 %i.bgg, ptr %i.bgk, align 8, !tbaa !91
  %.not.i1558.wide.1 = icmp eq i64 %i.bgc, 0
  br i1 %.not.i1558.wide.1, label %._crit_edge5918, label %scalar.ph10030, !llvm.loop !152

._crit_edge5918:                                  ; preds = %scalar.ph10030.prol.loopexit, %scalar.ph10030, %middle.block10045, %bb.je
  %i.bgl = load i64, ptr %i.bdn, align 8, !tbaa !91
  %i.bgm = shl i64 %i.bgl, %.pre7700
  %i.bgn = zext nneg i32 %i.bav to i64
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgn
  store i64 %i.bgm, ptr %i.bgo, align 8, !tbaa !91
  %i.bgp = add i32 %i.baw, %i.bav                 ; 2 uses
  %i.bgq = zext i32 %i.bgp to i64
  %i.bgr = getelementptr inbounds nuw [8 x i8], ptr %i.bdn, i64 %i.bgq
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !91
  %i.bgt = icmp ne i64 %i.bgs, 0
  %i.bgu = zext i1 %i.bgt to i32
  %i.bgv = add i32 %i.bgp, %i.bgu
  store i32 %i.bgv, ptr %7, align 8, !tbaa !138
  %.not45.i15605919 = icmp eq i32 %i.bav, 0
  br i1 %.not45.i15605919, label %bigint_mul_pow2.exit1556, label %.lr.ph5922.preheader

.lr.ph5922.preheader:                             ; preds = %._crit_edge5918, %._crit_edge5935, %.lr.ph5947.preheader, %.lr.ph5930
  %.sink9041 = phi i32 [ %i.auw, %._crit_edge5935 ], [ %i.bav, %.lr.ph5930 ], [ %i.auw, %.lr.ph5947.preheader ], [ %i.bav, %._crit_edge5918 ]
  %.sink9036 = phi ptr [ %i.anv, %._crit_edge5935 ], [ %i.bdm, %.lr.ph5930 ], [ %i.anv, %.lr.ph5947.preheader ], [ %i.bdn, %._crit_edge5918 ]
  %.ph9035 = phi i32 [ %i.bas, %._crit_edge5935 ], [ %i.aut, %.lr.ph5930 ], [ %i.axk, %.lr.ph5947.preheader ], [ %i.aut, %._crit_edge5918 ]
  %15 = add nsw i32 %.sink9041, -1
  %i.bgw = zext i32 %15 to i64
  %16 = shl nuw nsw i64 %i.bgw, 3
  %17 = add nuw nsw i64 %16, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9036, i8 0, i64 %17, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1556

bigint_mul_pow2.exit1556:                         ; preds = %.lr.ph5922.preheader, %._crit_edge5918, %._crit_edge5926, %._crit_edge5935
  %18 = phi i32 [ %i.bas, %._crit_edge5935 ], [ %i.aut, %._crit_edge5918 ], [ %i.aut, %._crit_edge5926 ], [ %.ph9035, %.lr.ph5922.preheader ] ; 2 uses
  %i.bgx = load i32, ptr %7, align 8, !tbaa !138  ; 4 uses
  %i.bgy = icmp ult i32 %i.bgx, %18
  br i1 %i.bgy, label %bigint_cmp.exit1613.thread, label %bb.jf

bb.jf:                                            ; preds = %bigint_mul_pow2.exit1556
  %i.bgz = icmp ugt i32 %i.bgx, %18
  br i1 %i.bgz, label %bigint_cmp.exit1613.thread, label %.preheader5048

.preheader5048:                                   ; preds = %bb.jf
  %.not.i16079914 = icmp eq i32 %i.bgx, 0
  br i1 %.not.i16079914, label %bigint_cmp.exit1613.thread4170, label %.lr.ph9917

.lr.ph9917:                                       ; preds = %.preheader5048
  %i.bha = zext i32 %i.bgx to i64
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jh
  %i.bhb = add nsw i64 %indvars.iv70929915, -1    ; 2 uses
  %.not.i1607 = icmp eq i64 %i.bhb, 0
  br i1 %.not.i1607, label %bigint_cmp.exit1613.thread4170, label %bb.jh, !llvm.loop !153

bb.jh:                                            ; preds = %.lr.ph9917, %bb.jg
  %.016.i16059916 = phi i32 [ undef, %.lr.ph9917 ], [ %.1.i1610, %bb.jg ]
  %indvars.iv70929915 = phi i64 [ %i.bha, %.lr.ph9917 ], [ %i.bhb, %bb.jg ] ; 3 uses
  %i.bhc = getelementptr [8 x i8], ptr %7, i64 %indvars.iv70929915
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !91 ; 3 uses
  %i.bhe = getelementptr [8 x i8], ptr %8, i64 %indvars.iv70929915
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !91 ; 3 uses
  %.not4913 = icmp ult i64 %i.bhd, %i.bhf
  %.not4914 = icmp ugt i64 %i.bhd, %i.bhf
  %..016.i1608 = select i1 %.not4914, i32 1, i32 %.016.i16059916
  %.1.i1610 = select i1 %.not4913, i32 -1, i32 %..016.i1608 ; 3 uses
  %cond.i1611 = icmp eq i64 %i.bhd, %i.bhf
  br i1 %cond.i1611, label %bb.jg, label %bigint_cmp.exit1613, !llvm.loop !153

bigint_cmp.exit1613:                              ; preds = %bb.jh
  %.not989.i561 = icmp eq i32 %.1.i1610, 0
  br i1 %.not989.i561, label %bigint_cmp.exit1613.thread4170, label %bigint_cmp.exit1613.thread, !prof !124

bigint_cmp.exit1613.thread:                       ; preds = %bigint_mul_pow2.exit1556, %bb.jf, %bigint_cmp.exit1613
  %.2.i16124169 = phi i32 [ %.1.i1610, %bigint_cmp.exit1613 ], [ -1, %bigint_mul_pow2.exit1556 ], [ 1, %bb.jf ]
  %i.bhg = icmp sgt i32 %.2.i16124169, 0
  %i.bhh = zext i1 %i.bhg to i64
  br label %bb.ji

bigint_cmp.exit1613.thread4170:                   ; preds = %bb.jg, %.preheader5048, %bigint_cmp.exit1613
  %i.bhi = and i64 %.0.i1505.ph, 1
  br label %bb.ji

bb.ji:                                            ; preds = %bigint_cmp.exit1613.thread4170, %bigint_cmp.exit1613.thread
  %.pn.i562 = phi i64 [ %i.bhh, %bigint_cmp.exit1613.thread ], [ %i.bhi, %bigint_cmp.exit1613.thread4170 ]
  %.0895.i563 = add nuw nsw i64 %.pn.i562, %.0.i1505.ph ; 2 uses
  %i.bhj = icmp eq i64 %.0895.i563, 9218868437227405312
  br i1 %i.bhj, label %bb.jj, label %bb.jo, !prof !8

bb.jj:                                            ; preds = %bb.ji
  %i.bhk = and i32 %2, 128
  %.not4915 = icmp eq i32 %i.bhk, 0
  br i1 %.not4915, label %bb.jl, label %bb.jk, !prof !25

bb.jk:                                            ; preds = %bb.jj
  %i.bhl = load ptr, ptr %i.l, align 8, !tbaa !92
  store i8 0, ptr %i.bhl, align 1, !tbaa !81
  %i.bhm = ptrtoint ptr %.33.i537 to i64
  %i.bhn = ptrtoint ptr %i.gl to i64
  %i.bho = sub i64 %i.bhm, %i.bhn
  %i.bhp = shl i64 %i.bho, 8
  %i.bhq = or disjoint i64 %i.bhp, 1
  store i64 %i.bhq, ptr %.5665.i, align 8, !tbaa !79
  %i.bhr = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store ptr %i.gl, ptr %i.bhr, align 8, !tbaa !81
  store ptr %.33.i537, ptr %i.l, align 8, !tbaa !92
  br label %.split4204

bb.jl:                                            ; preds = %bb.jj
  br i1 %.not4873, label %bb.jn, label %bb.jm, !prof !25

bb.jm:                                            ; preds = %bb.jl
  store i64 20, ptr %.5665.i, align 8, !tbaa !79
  %i.bhs = select i1 %i.gq, i64 -4503599627370496, i64 9218868437227405312
  %i.bht = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.bhs, ptr %i.bht, align 8, !tbaa !81
  br label %.split4204

bb.jn:                                            ; preds = %bb.jl
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !92
  store ptr %i.gl, ptr %i.i, align 8, !tbaa !92
  br label %.split4204.thread

bb.jo:                                            ; preds = %bb.ji
  store i64 20, ptr %.5665.i, align 8, !tbaa !79
  %i.bhu = select i1 %i.gq, i64 -9223372036854775808, i64 0
  %i.bhv = or disjoint i64 %.0895.i563, %i.bhu
  %i.bhw = getelementptr inbounds nuw i8, ptr %.5665.i, i64 8
  store i64 %i.bhv, ptr %i.bhw, align 8, !tbaa !81
  br label %.split4204

.split4204.thread:                                ; preds = %bb.ij, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aje

.split4204:                                       ; preds = %bb.jo, %bb.jm, %bb.jk, %bb.il, %bb.ii, %bb.ig
  store ptr %.33.i537, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

.preheader5069:                                   ; preds = %bb.oo, %bb.op, %bb.ov, %bb.ou, %bb.pa, %bb.pq, %bb.aiu, %.split, %.split4190, %read_num.exit646, %read_str_opt.exit897, %read_true.exit779, %read_false.exit782, %read_null.exit785, %read_nan.exit832, %read_inf.exit1480, %.split4191, %.split4189, %.split4201, %.split4193, %.split4185, %.split4184, %.split4183, %.split4192, %.split4194, %.split4195, %.split4196, %.split4199, %.split4200, %.split4174, %.split4175, %.split4176, %.split4177, %.split4178, %.split4179, %.split4180, %.split4181, %.split4182, %.split4188, %.split4187, %.split4186, %.split4198, %.split4197, %.split4202, %.split4203, %.split4204
  %.10779.i.ph = phi i64 [ %.3772.i, %.split4203 ], [ %.3772.i, %.split4202 ], [ %.3772.i, %.split4201 ], [ %.3772.i, %.split4200 ], [ %.3772.i, %.split4199 ], [ %.3772.i, %.split4198 ], [ %.3772.i, %.split4197 ], [ %.3772.i, %.split4196 ], [ %.3772.i, %.split4195 ], [ %.3772.i, %.split4194 ], [ %.3772.i, %.split4193 ], [ %.3772.i, %.split4192 ], [ %.3772.i, %.split4191 ], [ %.3772.i, %.split4190 ], [ %.3772.i, %.split4189 ], [ %.3772.i, %read_inf.exit1480 ], [ %.3772.i, %.split4188 ], [ %.3772.i, %.split4187 ], [ %.3772.i, %.split4186 ], [ %.3772.i, %.split4185 ], [ %.3772.i, %.split4184 ], [ %.3772.i, %.split4183 ], [ %.3772.i, %.split4182 ], [ %.3772.i, %.split4181 ], [ %.3772.i, %.split4180 ], [ %.3772.i, %.split4179 ], [ %.3772.i, %.split4178 ], [ %.3772.i, %.split4177 ], [ %.3772.i, %.split4176 ], [ %.3772.i, %.split4175 ], [ %.3772.i, %.split4174 ], [ %.3772.i, %.split ], [ %.3772.i, %.split4204 ], [ %.9778.i, %bb.pa ], [ %.20789.i, %bb.aiu ], [ %.11780.i, %bb.pq ], [ %.7776.i, %read_nan.exit832 ], [ %.7776.i, %read_null.exit785 ], [ %.6775.i, %read_false.exit782 ], [ %.5774.i, %read_true.exit779 ], [ %.4773.i, %read_str_opt.exit897 ], [ %.3772.i, %read_num.exit646 ], [ %.8777.i8185, %bb.ou ], [ %.8777.i8185, %bb.ov ], [ %.8777.i8185, %bb.op ], [ %.8777.i8185, %bb.oo ] ; 3 uses
  %.2762.i.ph = phi i64 [ %i.gm, %.split4203 ], [ %i.gm, %.split4202 ], [ %i.gm, %.split4201 ], [ %i.gm, %.split4200 ], [ %i.gm, %.split4199 ], [ %i.gm, %.split4198 ], [ %i.gm, %.split4197 ], [ %i.gm, %.split4196 ], [ %i.gm, %.split4195 ], [ %i.gm, %.split4194 ], [ %i.gm, %.split4193 ], [ %i.gm, %.split4192 ], [ %i.gm, %.split4191 ], [ %i.gm, %.split4190 ], [ %i.gm, %.split4189 ], [ %i.gm, %read_inf.exit1480 ], [ %i.gm, %.split4188 ], [ %i.gm, %.split4187 ], [ %i.gm, %.split4186 ], [ %i.gm, %.split4185 ], [ %i.gm, %.split4184 ], [ %i.gm, %.split4183 ], [ %i.gm, %.split4182 ], [ %i.gm, %.split4181 ], [ %i.gm, %.split4180 ], [ %i.gm, %.split4179 ], [ %i.gm, %.split4178 ], [ %i.gm, %.split4177 ], [ %i.gm, %.split4176 ], [ %i.gm, %.split4175 ], [ %i.gm, %.split4174 ], [ %i.gm, %.split ], [ %i.gm, %.split4204 ], [ %i.cjz, %bb.pa ], [ %i.gna, %bb.aiu ], [ %i.cll, %bb.pq ], [ %i.cdy, %read_nan.exit832 ], [ %i.cdy, %read_null.exit785 ], [ %i.cdg, %read_false.exit782 ], [ %i.ccm, %read_true.exit779 ], [ %i.biq, %read_str_opt.exit897 ], [ %i.gm, %read_num.exit646 ], [ %i.cgo, %bb.ou ], [ %i.cgo, %bb.ov ], [ %i.cgo, %bb.op ], [ %i.cgo, %bb.oo ] ; 3 uses
  %.18744.i.ph = phi ptr [ %.5731.i, %.split4203 ], [ %.5731.i, %.split4202 ], [ %.5731.i, %.split4201 ], [ %.5731.i, %.split4200 ], [ %.5731.i, %.split4199 ], [ %.5731.i, %.split4198 ], [ %.5731.i, %.split4197 ], [ %.5731.i, %.split4196 ], [ %.5731.i, %.split4195 ], [ %.5731.i, %.split4194 ], [ %.5731.i, %.split4193 ], [ %.5731.i, %.split4192 ], [ %.5731.i, %.split4191 ], [ %.5731.i, %.split4190 ], [ %.5731.i, %.split4189 ], [ %.5731.i, %read_inf.exit1480 ], [ %.5731.i, %.split4188 ], [ %.5731.i, %.split4187 ], [ %.5731.i, %.split4186 ], [ %.5731.i, %.split4185 ], [ %.5731.i, %.split4184 ], [ %.5731.i, %.split4183 ], [ %.5731.i, %.split4182 ], [ %.5731.i, %.split4181 ], [ %.5731.i, %.split4180 ], [ %.5731.i, %.split4179 ], [ %.5731.i, %.split4178 ], [ %.5731.i, %.split4177 ], [ %.5731.i, %.split4176 ], [ %.5731.i, %.split4175 ], [ %.5731.i, %.split4174 ], [ %.5731.i, %.split ], [ %.5731.i, %.split4204 ], [ %.17743.i, %bb.pa ], [ %.32758.i, %bb.aiu ], [ %.19745.i, %bb.pq ], [ %.13739.i, %read_nan.exit832 ], [ %.13739.i, %read_null.exit785 ], [ %.11737.i, %read_false.exit782 ], [ %.9735.i, %read_true.exit779 ], [ %.7733.i, %read_str_opt.exit897 ], [ %.5731.i, %read_num.exit646 ], [ %.15741.i8187, %bb.ou ], [ %.15741.i8187, %bb.ov ], [ %.15741.i8187, %bb.op ], [ %.15741.i8187, %bb.oo ] ; 5 uses
  %.18711.i.ph = phi ptr [ %.5698.i, %.split4203 ], [ %.5698.i, %.split4202 ], [ %.5698.i, %.split4201 ], [ %.5698.i, %.split4200 ], [ %.5698.i, %.split4199 ], [ %.5698.i, %.split4198 ], [ %.5698.i, %.split4197 ], [ %.5698.i, %.split4196 ], [ %.5698.i, %.split4195 ], [ %.5698.i, %.split4194 ], [ %.5698.i, %.split4193 ], [ %.5698.i, %.split4192 ], [ %.5698.i, %.split4191 ], [ %.5698.i, %.split4190 ], [ %.5698.i, %.split4189 ], [ %.5698.i, %read_inf.exit1480 ], [ %.5698.i, %.split4188 ], [ %.5698.i, %.split4187 ], [ %.5698.i, %.split4186 ], [ %.5698.i, %.split4185 ], [ %.5698.i, %.split4184 ], [ %.5698.i, %.split4183 ], [ %.5698.i, %.split4182 ], [ %.5698.i, %.split4181 ], [ %.5698.i, %.split4180 ], [ %.5698.i, %.split4179 ], [ %.5698.i, %.split4178 ], [ %.5698.i, %.split4177 ], [ %.5698.i, %.split4176 ], [ %.5698.i, %.split4175 ], [ %.5698.i, %.split4174 ], [ %.5698.i, %.split ], [ %.5698.i, %.split4204 ], [ %.17710.i, %bb.pa ], [ %.32725.i, %bb.aiu ], [ %.19712.i, %bb.pq ], [ %.13706.i, %read_nan.exit832 ], [ %.13706.i, %read_null.exit785 ], [ %.11704.i, %read_false.exit782 ], [ %.9702.i, %read_true.exit779 ], [ %.7700.i, %read_str_opt.exit897 ], [ %.5698.i, %read_num.exit646 ], [ %.15708.i8191, %bb.ou ], [ %.15708.i8191, %bb.ov ], [ %.15708.i8191, %bb.op ], [ %.15708.i8191, %bb.oo ] ; 3 uses
  %.18678.i.ph = phi ptr [ %.5665.i, %.split4203 ], [ %.5665.i, %.split4202 ], [ %.5665.i, %.split4201 ], [ %.5665.i, %.split4200 ], [ %.5665.i, %.split4199 ], [ %.5665.i, %.split4198 ], [ %.5665.i, %.split4197 ], [ %.5665.i, %.split4196 ], [ %.5665.i, %.split4195 ], [ %.5665.i, %.split4194 ], [ %.5665.i, %.split4193 ], [ %.5665.i, %.split4192 ], [ %.5665.i, %.split4191 ], [ %.5665.i, %.split4190 ], [ %.5665.i, %.split4189 ], [ %.5665.i, %read_inf.exit1480 ], [ %.5665.i, %.split4188 ], [ %.5665.i, %.split4187 ], [ %.5665.i, %.split4186 ], [ %.5665.i, %.split4185 ], [ %.5665.i, %.split4184 ], [ %.5665.i, %.split4183 ], [ %.5665.i, %.split4182 ], [ %.5665.i, %.split4181 ], [ %.5665.i, %.split4180 ], [ %.5665.i, %.split4179 ], [ %.5665.i, %.split4178 ], [ %.5665.i, %.split4177 ], [ %.5665.i, %.split4176 ], [ %.5665.i, %.split4175 ], [ %.5665.i, %.split4174 ], [ %.5665.i, %.split ], [ %.5665.i, %.split4204 ], [ %.17677.i, %bb.pa ], [ %.32692.i, %bb.aiu ], [ %.19679.i, %bb.pq ], [ %.13673.i, %read_nan.exit832 ], [ %.13673.i, %read_null.exit785 ], [ %.11671.i, %read_false.exit782 ], [ %.9669.i, %read_true.exit779 ], [ %.7667.i, %read_str_opt.exit897 ], [ %.5665.i, %read_num.exit646 ], [ %.15675.i8193, %bb.ou ], [ %.15675.i8193, %bb.ov ], [ %.15675.i8193, %bb.op ], [ %.15675.i8193, %bb.oo ] ; 3 uses
  %.18.i.ph = phi ptr [ %.5653.i, %.split4203 ], [ %.5653.i, %.split4202 ], [ %.5653.i, %.split4201 ], [ %.5653.i, %.split4200 ], [ %.5653.i, %.split4199 ], [ %.5653.i, %.split4198 ], [ %.5653.i, %.split4197 ], [ %.5653.i, %.split4196 ], [ %.5653.i, %.split4195 ], [ %.5653.i, %.split4194 ], [ %.5653.i, %.split4193 ], [ %.5653.i, %.split4192 ], [ %.5653.i, %.split4191 ], [ %.5653.i, %.split4190 ], [ %.5653.i, %.split4189 ], [ %.5653.i, %read_inf.exit1480 ], [ %.5653.i, %.split4188 ], [ %.5653.i, %.split4187 ], [ %.5653.i, %.split4186 ], [ %.5653.i, %.split4185 ], [ %.5653.i, %.split4184 ], [ %.5653.i, %.split4183 ], [ %.5653.i, %.split4182 ], [ %.5653.i, %.split4181 ], [ %.5653.i, %.split4180 ], [ %.5653.i, %.split4179 ], [ %.5653.i, %.split4178 ], [ %.5653.i, %.split4177 ], [ %.5653.i, %.split4176 ], [ %.5653.i, %.split4175 ], [ %.5653.i, %.split4174 ], [ %.5653.i, %.split ], [ %.5653.i, %.split4204 ], [ %.17.i, %bb.pa ], [ %i.gmr, %bb.aiu ], [ %i.clc, %bb.pq ], [ %.13.i, %read_nan.exit832 ], [ %.13.i, %read_null.exit785 ], [ %.11659.i, %read_false.exit782 ], [ %.9657.i, %read_true.exit779 ], [ %.7655.i, %read_str_opt.exit897 ], [ %.5653.i, %read_num.exit646 ], [ %.15.i8197, %bb.ou ], [ %.15.i8197, %bb.ov ], [ %.15.i8197, %bb.op ], [ %.15.i8197, %bb.oo ] ; 3 uses
  %i.bhx = load ptr, ptr %i.i, align 8, !tbaa !92 ; 3 uses
  %.sroa.01.0.copyload.i8235792 = load i16, ptr %i.bhx, align 1 ; 2 uses
  %i.bhy = icmp eq i16 %.sroa.01.0.copyload.i8235792, 2604
  br i1 %i.bhy, label %._crit_edge5794, label %.lr.ph5793

.lr.ph5793:                                       ; preds = %.preheader5069
  %i.bhz = and i32 %2, 2056
  %.not4859 = icmp eq i32 %i.bhz, 0
  br label %bb.pf

read_num.exit646.thread:                          ; preds = %bb.ha, %bb.hh, %bb.hq, %bb.cc, %bb.gq, %bb.gw, %bb.ce, %bb.cg, %read_inf_or_nan.exit839.thread, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.aje

read_num.exit646:                                 ; preds = %bb.do, %bb.dr, %bb.du, %bb.hc, %bb.he, %bb.hg, %bb.hk, %bb.hn, %bb.hp
  %.sink9023 = phi ptr [ %i.no, %bb.do ], [ %i.nv, %bb.dr ], [ %i.oc, %bb.du ], [ %.31.i529.lcssa, %bb.hc ], [ %.31.i529.lcssa, %bb.he ], [ %.31.i529.lcssa, %bb.hg ], [ %.32.i531, %bb.hk ], [ %.32.i531, %bb.hn ], [ %.32.i531, %bb.hp ]
  store ptr %.sink9023, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %.preheader5069

bb.jp:                                            ; preds = %bb.bd
  switch i8 %i.fr, label %bb.nz [
    i8 34, label %bb.jq
    i8 116, label %bb.ng
    i8 102, label %bb.nj
    i8 110, label %bb.nm
    i8 93, label %bb.nx
  ]

bb.jq:                                            ; preds = %bb.jp
  %i.bia = getelementptr inbounds nuw i8, ptr %.3663.i.ph, i64 16 ; 3 uses
  %.not867.i = icmp ult ptr %i.bia, %.3696.i.ph
  br i1 %.not867.i, label %bb.js, label %bb.jr, !prof !25

bb.jr:                                            ; preds = %bb.jq
  %i.bib = lshr i64 %.2771.i.ph, 1
  %i.bic = add i64 %i.bib, %.2771.i.ph            ; 3 uses
  %i.bid = shl i64 %.2771.i.ph, 4
  %i.bie = shl i64 %i.bic, 4
  %i.bif = call ptr %.sroa.5.0.copyload2121(ptr noundef %.sroa.31.0.copyload2149, ptr noundef %.3729.i.ph, i64 noundef %i.bid, i64 noundef %i.bie) #33, !inline_history !111 ; 5 uses
  %.not868.i = icmp eq ptr %i.bif, null
  br i1 %.not868.i, label %bb.aji, label %.thread4205

.thread4205:                                      ; preds = %bb.jr
  %i.big = ptrtoint ptr %.3651.i.ph to i64
  %i.bih = ptrtoint ptr %.3729.i.ph to i64        ; 2 uses
  %i.bii = sub i64 %i.big, %i.bih
  %i.bij = ptrtoint ptr %i.bia to i64
  %i.bik = sub i64 %i.bij, %i.bih
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bik
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bii
  %i.bin = getelementptr [16 x i8], ptr %i.bif, i64 %i.bic
  %i.bio = getelementptr i8, ptr %i.bin, i64 -32
  %.pre7525 = load ptr, ptr %i.i, align 8, !tbaa !92
  br label %bb.js

bb.js:                                            ; preds = %.thread4205, %bb.jq
  %i.bip = phi ptr [ %.pre7525, %.thread4205 ], [ %.promoted5816, %bb.jq ]
  %.4773.i = phi i64 [ %i.bic, %.thread4205 ], [ %.2771.i.ph, %bb.jq ]
  %.7733.i = phi ptr [ %i.bif, %.thread4205 ], [ %.3729.i.ph, %bb.jq ] ; 22 uses
  %.7700.i = phi ptr [ %i.bio, %.thread4205 ], [ %.3696.i.ph, %bb.jq ]
  %.7667.i = phi ptr [ %i.bil, %.thread4205 ], [ %i.bia, %bb.jq ] ; 3 uses
  %.7655.i = phi ptr [ %i.bim, %.thread4205 ], [ %.3651.i.ph, %bb.jq ]
  %i.biq = add i64 %.1761.i.ph, 1
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 1 ; 3 uses
  %i.bis = and i32 %2, 64
  %.not4867 = icmp eq i32 %i.bis, 0               ; 3 uses
  br label %.backedge5045

.backedge5045:                                    ; preds = %.backedge5045.backedge, %bb.js
  %.04050 = phi ptr [ %i.bir, %bb.js ], [ %.04050.be, %.backedge5045.backedge ] ; 18 uses
  %i.bit = load i8, ptr %.04050, align 1, !tbaa !81 ; 2 uses
  %i.biu = zext i8 %i.bit to i64
  %i.biv = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.biu
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !81
  %i.bix = trunc i8 %i.biw to i1
  br i1 %i.bix, label %bb.jt, label %bb.kj, !prof !25

bb.jt:                                            ; preds = %.backedge5045
  %i.biy = getelementptr inbounds nuw i8, ptr %.04050, i64 1 ; 2 uses
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !81 ; 2 uses
  %i.bja = zext i8 %i.biz to i64
  %i.bjb = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bja
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !81
  %i.bjd = trunc i8 %i.bjc to i1
  br i1 %i.bjd, label %bb.ju, label %bb.kj, !prof !25

bb.ju:                                            ; preds = %bb.jt
  %i.bje = getelementptr inbounds nuw i8, ptr %.04050, i64 2 ; 2 uses
end_hunk_1
begin_hunk_2_@yyjson_read_opts:bb.a
  %i.fir = icmp ult i64 %i.fio, %i.fie
  %i.fis = zext i1 %i.fir to i64
  %i.fit = add nuw i64 %i.fis, %i.fid
  br label %.split4351

.split4351:                                       ; preds = %bb.afe, %bb.afc
  %.04000 = phi i64 [ %i.fid, %bb.afc ], [ %i.fit, %bb.afe ] ; 2 uses
  %i.fiu = icmp sgt i64 %.04000, -1               ; 2 uses
  %.neg983.i697 = sext i1 %i.fiu to i32
  %i.fiv = zext i1 %i.fiu to i64
  %i.fiw = shl i64 %.04000, %i.fiv                ; 2 uses
  %i.fix = and i64 %i.fiw, 1024
  %i.fiy = add i64 %i.fix, %i.fiw                 ; 2 uses
  %i.fiz = icmp ult i64 %i.fiy, 1024
  %spec.select4598.v = select i1 %i.fiz, i32 65, i32 64
  %i.fja = lshr i64 %i.fiy, 11
  %reass.sub6505 = sub nsw i32 %i.fhv, %i.fhx
  %i.fjb = add nsw i32 %reass.sub6505, 1086
  %spec.select4598 = add nsw i32 %i.fjb, %.neg983.i697
  %i.fjc = add nsw i32 %spec.select4598, %spec.select4598.v
  %i.fjd = zext nneg i32 %i.fjc to i64
  %i.fje = shl nuw nsw i64 %i.fjd, 52
  %i.fjf = and i64 %i.fja, 4503599627370495
  %i.fjg = or disjoint i64 %i.fje, %i.fjf
  store i64 20, ptr %i.efe, align 8, !tbaa !79
  %i.fjh = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.fji = or disjoint i64 %i.fjg, %i.fjh
  %i.fjj = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fji, ptr %i.fjj, align 8, !tbaa !81
  store ptr %.33.i668, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

.critedge992.i696:                                ; preds = %..critedge992.i696_crit_edge, %bb.afd
  %.pre-phi7719 = phi i32 [ %.pre7718, %..critedge992.i696_crit_edge ], [ %i.fhx, %bb.afd ]
  %.pre-phi7717 = phi i128 [ %.pre7716, %..critedge992.i696_crit_edge ], [ %i.fhz, %bb.afd ]
  %.pre-phi7715 = phi i32 [ %.pre7714, %..critedge992.i696_crit_edge ], [ %i.fhv, %bb.afd ]
  %.pre-phi7709 = phi i32 [ %.pre7708, %..critedge992.i696_crit_edge ], [ %i.fho, %bb.afd ] ; 2 uses
  %.pre-phi7705 = phi i64 [ %.pre7704, %..critedge992.i696_crit_edge ], [ %i.fhw, %bb.afd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.fjk = select i1 %i.fhk, i64 0, i64 4
  %i.fjl = shl i64 %i.fjk, %.pre-phi7705          ; 2 uses
  %i.fjm = add i32 %.pre-phi7709, 686
  %i.fjn = sext i32 %i.fjm to i64
  %i.fjo = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.fjn
  %i.fjp = load i64, ptr %i.fjo, align 16, !tbaa !91
  %i.fjq = add i32 %.pre-phi7709, 687
  %i.fjr = sext i32 %i.fjq to i64
  %i.fjs = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.fjr
  %i.fjt = load i64, ptr %i.fjs, align 8, !tbaa !91
  %i.fju = lshr i64 %i.fjt, 63
  %i.fjv = add i64 %i.fju, %i.fjp
  %i.fjw = zext i64 %i.fjv to i128
  %i.fjx = mul nuw i128 %.pre-phi7717, %i.fjw     ; 2 uses
  %i.fjy = lshr i128 %i.fjx, 64
  %i.fjz = trunc nuw i128 %i.fjy to i64
  %i.fka = trunc i128 %i.fjx to i64
  %i.fkb = lshr i64 %i.fka, 63
  %i.fkc = add nuw i64 %i.fkb, %i.fjz             ; 2 uses
  %.not986.i677 = icmp eq i64 %i.fjl, 0
  %i.fkd = select i1 %.not986.i677, i64 8, i64 9
  %i.fke = add i64 %i.fkd, %i.fjl
  %i.fkf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fkc, i1 true) ; 3 uses
  %i.fkg = trunc nuw nsw i64 %i.fkf to i32
  %i.fkh = shl i64 %i.fkc, %i.fkf                 ; 3 uses
  %i.fki = add nsw i32 %.pre-phi7715, 64
  %i.fkj = add nuw nsw i32 %.pre-phi7719, %i.fkg
  %i.fkk = sub nsw i32 %i.fki, %i.fkj             ; 7 uses
  %i.fkl = shl i64 %i.fke, %i.fkf                 ; 3 uses
  %i.fkm = icmp sgt i32 %i.fkk, -1086
  br i1 %i.fkm, label %.thread4310, label %bb.aff, !prof !25

bb.aff:                                           ; preds = %.critedge992.i696
  %i.fkn = icmp samesign ult i32 %i.fkk, -1137
  br i1 %i.fkn, label %.thread4307, label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  %i.fko = sub nuw nsw i32 -1074, %i.fkk          ; 2 uses
  %i.fkp = icmp samesign ult i32 %i.fkk, -1134
  br i1 %i.fkp, label %.thread4307, label %.thread4310, !prof !134

.thread4307:                                      ; preds = %bb.aff, %bb.afg
  %.0897.i6804309 = phi i32 [ %i.fko, %bb.afg ], [ 64, %bb.aff ]
  %i.fkq = add nsw i32 %.0897.i6804309, -60       ; 2 uses
  %i.fkr = zext nneg i32 %i.fkq to i64            ; 2 uses
  %i.fks = lshr i64 %i.fkh, %i.fkr
  %i.fkt = add nsw i32 %i.fkq, %i.fkk
  %i.fku = lshr i64 %i.fkl, %i.fkr
  %i.fkv = add nuw i64 %i.fku, 9
  br label %.thread4310

.thread4310:                                      ; preds = %.critedge992.i696, %.thread4307, %bb.afg
  %.0898.i681 = phi i64 [ %i.fkv, %.thread4307 ], [ %i.fkl, %bb.afg ], [ %i.fkl, %.critedge992.i696 ] ; 2 uses
  %.0896.i682 = phi i32 [ 60, %.thread4307 ], [ %i.fko, %bb.afg ], [ 11, %.critedge992.i696 ] ; 3 uses
  %.sroa.19.0.in.i683 = phi i32 [ %i.fkt, %.thread4307 ], [ %i.fkk, %bb.afg ], [ %i.fkk, %.critedge992.i696 ]
  %.sroa.025.0.i684 = phi i64 [ %i.fks, %.thread4307 ], [ %i.fkh, %bb.afg ], [ %i.fkh, %.critedge992.i696 ] ; 2 uses
  %i.fkw = zext nneg i32 %.0896.i682 to i64       ; 2 uses
  %notmask.i685 = shl nsw i64 -1, %i.fkw
  %i.fkx = xor i64 %notmask.i685, -1
  %i.fky = and i64 %.sroa.025.0.i684, %i.fkx
  %i.fkz = shl nuw nsw i64 %i.fky, 3              ; 2 uses
  %i.fla = add nsw i32 %.0896.i682, -1
  %i.flb = zext nneg i32 %i.fla to i64
  %i.flc = shl nuw nsw i64 8, %i.flb              ; 2 uses
  %i.fld = lshr i64 %.sroa.025.0.i684, %i.fkw
  %i.fle = add i64 %i.flc, %.0898.i681
  %i.flf = icmp uge i64 %i.fkz, %i.fle            ; 2 uses
  %i.flg = zext i1 %i.flf to i64
  %i.flh = add nuw nsw i64 %i.fld, %i.flg         ; 3 uses
  %i.fli = icmp eq i64 %i.flh, 0
  br i1 %i.fli, label %bb.afq, label %bb.afh, !prof !8

bb.afh:                                           ; preds = %.thread4310
  %i.flj = add nsw i32 %.sroa.19.0.in.i683, %.0896.i682
  %i.flk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.flh, i1 true) ; 2 uses
  %i.fll = trunc nuw nsw i64 %i.flk to i32
  %i.flm = shl i64 %i.flh, %i.flk
  %i.fln = lshr i64 %i.flm, 11                    ; 2 uses
  %i.flo = sub nsw i32 %i.flj, %i.fll             ; 5 uses
  %i.flp = icmp sgt i32 %i.flo, 960
  br i1 %i.flp, label %diy_fp_to_ieee_raw.exit, label %bb.afi, !prof !8

bb.afi:                                           ; preds = %bb.afh
  %i.flq = icmp sgt i32 %i.flo, -1086
  br i1 %i.flq, label %bb.afj, label %bb.afk, !prof !25

bb.afj:                                           ; preds = %bb.afi
  %i.flr = add nsw i32 %i.flo, 1086
  %i.fls = zext nneg i32 %i.flr to i64
  %i.flt = shl nuw nsw i64 %i.fls, 52
  %i.flu = and i64 %i.fln, 4503599627370495
  %i.flv = or disjoint i64 %i.flt, %i.flu
  br label %bb.afq

bb.afk:                                           ; preds = %bb.afi
  %i.flw = icmp samesign ugt i32 %i.flo, -1138
  br i1 %i.flw, label %bb.afl, label %bb.afq, !prof !25

bb.afl:                                           ; preds = %bb.afk
  %i.flx = sub nuw nsw i32 -1085, %i.flo
  %i.fly = zext nneg i32 %i.flx to i64
  %i.flz = lshr i64 %i.fln, %i.fly
  br label %bb.afq

diy_fp_to_ieee_raw.exit:                          ; preds = %bb.afh
  %i.fma = and i32 %2, 128
  %.not4843 = icmp eq i32 %i.fma, 0
  br i1 %.not4843, label %bb.afn, label %bb.afm, !prof !25

bb.afm:                                           ; preds = %diy_fp_to_ieee_raw.exit
  %i.fmb = load ptr, ptr %i.l, align 8, !tbaa !92
  store i8 0, ptr %i.fmb, align 1, !tbaa !81
  %i.fmc = ptrtoint ptr %.33.i668 to i64
  %i.fmd = ptrtoint ptr %i.eez to i64
  %i.fme = sub i64 %i.fmc, %i.fmd
  %i.fmf = shl i64 %i.fme, 8
  %i.fmg = or disjoint i64 %i.fmf, 1
  store i64 %i.fmg, ptr %i.efe, align 8, !tbaa !79
  %i.fmh = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.eez, ptr %i.fmh, align 8, !tbaa !81
  store ptr %.33.i668, ptr %i.l, align 8, !tbaa !92
  br label %.split4352

bb.afn:                                           ; preds = %diy_fp_to_ieee_raw.exit
  br i1 %.not4805, label %bb.afp, label %bb.afo, !prof !25

bb.afo:                                           ; preds = %bb.afn
  store i64 20, ptr %i.efe, align 8, !tbaa !79
  %i.fmi = select i1 %i.efi, i64 -4503599627370496, i64 9218868437227405312
  %i.fmj = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fmi, ptr %i.fmj, align 8, !tbaa !81
  br label %.split4352

bb.afp:                                           ; preds = %bb.afn
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !92
  br label %.split4352.thread

bb.afq:                                           ; preds = %.thread4310, %bb.afj, %bb.afl, %bb.afk
  %.0.i1504.ph = phi i64 [ 0, %bb.afk ], [ %i.flz, %bb.afl ], [ %i.flv, %bb.afj ], [ 0, %.thread4310 ] ; 7 uses
  %i.fmk = sub i64 %i.flc, %.0898.i681
  %.not987.i687 = icmp ule i64 %i.fkz, %i.fmk
  %spec.select.i688 = or i1 %.not987.i687, %i.flf
  br i1 %spec.select.i688, label %bb.afr, label %bb.afs, !prof !25

bb.afr:                                           ; preds = %bb.afq
  store i64 20, ptr %i.efe, align 8, !tbaa !79
  %i.fml = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.fmm = or disjoint i64 %.0.i1504.ph, %i.fml
  %i.fmn = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.fmm, ptr %i.fmn, align 8, !tbaa !81
  br label %.split4352

bb.afs:                                           ; preds = %bb.afq
  %.not988.i689 = icmp samesign ult i64 %.0.i1504.ph, 4503599627370496 ; 2 uses
  %i.fmo = and i64 %.0.i1504.ph, 4503599627370495
  %i.fmp = or disjoint i64 %i.fmo, 4503599627370496
  %i.fmq = lshr i64 %.0.i1504.ph, 52
  %i.fmr = trunc nuw nsw i64 %i.fmq to i32
  %i.fms = add nsw i32 %i.fmr, -1076
  %.sroa.9.0.i690 = select i1 %.not988.i689, i32 -1075, i32 %i.fms ; 4 uses
  %.sroa.018.0.i691 = select i1 %.not988.i689, i64 %.0.i1504.ph, i64 %i.fmp
  %i.fmt = shl nuw nsw i64 %.sroa.018.0.i691, 1
  %i.fmu = or disjoint i64 %i.fmt, 1
  call fastcc void @bigint_set_buf(ptr noundef %5, i64 noundef %.22894.i669, ptr noundef %i.a, ptr noundef %.3863.i672, ptr noundef %.3867.i671, ptr noundef %.23.i670)
  %i.fmv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.fmu, ptr %i.fmv, align 8, !tbaa !91
  %i.fmw = load i32, ptr %i.a, align 4, !tbaa !114 ; 6 uses
  %i.fmx = icmp sgt i32 %i.fmw, -1
  br i1 %i.fmx, label %.preheader5092, label %bb.aga

.preheader5092:                                   ; preds = %bb.afs
  %.promoted5668 = load i32, ptr %5, align 8      ; 2 uses
  %i.fmy = icmp samesign ugt i32 %i.fmw, 18
  br i1 %i.fmy, label %.lr.ph5671, label %._crit_edge5672

.lr.ph5671:                                       ; preds = %.preheader5092
  %i.fmz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.aft

bb.aft:                                           ; preds = %.lr.ph5671, %bigint_mul_u64.exit1718
  %.0.i15115670 = phi i32 [ %i.fmw, %.lr.ph5671 ], [ %i.fon, %bigint_mul_u64.exit1718 ] ; 2 uses
  %i.fna = phi i32 [ %.promoted5668, %.lr.ph5671 ], [ %i.fom, %bigint_mul_u64.exit1718 ] ; 9 uses
  %.not6503 = icmp eq i32 %i.fna, 0
  br i1 %.not6503, label %._crit_edge5658, label %.lr.ph5657.preheader

.lr.ph5657.preheader:                             ; preds = %bb.aft
  %wide.trip.count6996 = zext i32 %i.fna to i64
  br label %.lr.ph5657

.lr.ph5657:                                       ; preds = %.lr.ph5657.preheader, %bb.afu
  %indvars.iv6993 = phi i64 [ 0, %.lr.ph5657.preheader ], [ %indvars.iv.next6994, %bb.afu ] ; 3 uses
  %i.fnb = getelementptr inbounds nuw [8 x i8], ptr %i.fmz, i64 %indvars.iv6993
  %i.fnc = load i64, ptr %i.fnb, align 8, !tbaa !91
  %.not.i1717 = icmp eq i64 %i.fnc, 0
  br i1 %.not.i1717, label %bb.afu, label %._crit_edge5658.loopexit

bb.afu:                                           ; preds = %.lr.ph5657
  %indvars.iv.next6994 = add nuw nsw i64 %indvars.iv6993, 1 ; 2 uses
  %exitcond6997.not = icmp eq i64 %indvars.iv.next6994, %wide.trip.count6996
  br i1 %exitcond6997.not, label %bigint_mul_u64.exit1718, label %.lr.ph5657, !llvm.loop !135

._crit_edge5658.loopexit:                         ; preds = %.lr.ph5657
  %i.fnd = trunc nuw i64 %indvars.iv6993 to i32
  br label %._crit_edge5658

._crit_edge5658:                                  ; preds = %._crit_edge5658.loopexit, %bb.aft
  %.018.i1713.lcssa = phi i32 [ 0, %bb.aft ], [ %i.fnd, %._crit_edge5658.loopexit ] ; 2 uses
  %i.fne = icmp ult i32 %.018.i1713.lcssa, %i.fna
  br i1 %i.fne, label %.lr.ph5665.preheader, label %bigint_mul_u64.exit1718

.lr.ph5665.preheader:                             ; preds = %._crit_edge5658
  %i.fnf = zext i32 %.018.i1713.lcssa to i64      ; 4 uses
  %wide.trip.count7001 = zext i32 %i.fna to i64   ; 2 uses
  %i.fng = sub nsw i64 %wide.trip.count7001, %i.fnf ; 3 uses
  %xtraiter11008 = and i64 %i.fng, 1
  %i.fnh = add nsw i64 %wide.trip.count7001, -1
  %i.fni = icmp eq i64 %i.fnh, %i.fnf
  br i1 %i.fni, label %.lr.ph5665.epil.preheader, label %.lr.ph5665.preheader.new

.lr.ph5665.preheader.new:                         ; preds = %.lr.ph5665.preheader
  %unroll_iter11013 = and i64 %i.fng, -2
  br label %.lr.ph5665

.lr.ph5665:                                       ; preds = %.lr.ph5665, %.lr.ph5665.preheader.new
  %indvars.iv6998 = phi i64 [ %i.fnf, %.lr.ph5665.preheader.new ], [ %indvars.iv.next6999.1, %.lr.ph5665 ] ; 3 uses
  %.0.i17155663 = phi i64 [ 0, %.lr.ph5665.preheader.new ], [ %i.fny, %.lr.ph5665 ]
  %niter11014 = phi i64 [ 0, %.lr.ph5665.preheader.new ], [ %niter11014.next.1, %.lr.ph5665 ]
  %i.fnj = getelementptr inbounds nuw [8 x i8], ptr %i.fmz, i64 %indvars.iv6998 ; 2 uses
  %i.fnk = load i64, ptr %i.fnj, align 8, !tbaa !91
  %i.fnl = zext i64 %i.fnk to i128
  %i.fnm = mul nuw i128 %i.fnl, 10000000000000000000
  %i.fnn = zext i64 %.0.i17155663 to i128
  %i.fno = add nuw i128 %i.fnm, %i.fnn            ; 2 uses
  %i.fnp = lshr i128 %i.fno, 64
  %i.fnq = trunc i128 %i.fno to i64
  store i64 %i.fnq, ptr %i.fnj, align 8, !tbaa !91
  %i.fnr = getelementptr inbounds nuw [8 x i8], ptr %i.fmz, i64 %indvars.iv6998
  %i.fns = getelementptr inbounds nuw i8, ptr %i.fnr, i64 8 ; 2 uses
  %i.fnt = load i64, ptr %i.fns, align 8, !tbaa !91
  %i.fnu = zext i64 %i.fnt to i128
  %i.fnv = mul nuw i128 %i.fnu, 10000000000000000000
  %i.fnw = add nuw i128 %i.fnv, %i.fnp            ; 2 uses
  %i.fnx = lshr i128 %i.fnw, 64                   ; 2 uses
  %i.fny = trunc nuw i128 %i.fnx to i64           ; 3 uses
  %i.fnz = trunc i128 %i.fnw to i64
  store i64 %i.fnz, ptr %i.fns, align 8, !tbaa !91
  %indvars.iv.next6999.1 = add nuw nsw i64 %indvars.iv6998, 2 ; 2 uses
  %niter11014.next.1 = add i64 %niter11014, 2     ; 2 uses
  %niter11014.ncmp.1 = icmp eq i64 %niter11014.next.1, %unroll_iter11013
  br i1 %niter11014.ncmp.1, label %._crit_edge5666.unr-lcssa, label %.lr.ph5665, !llvm.loop !136

._crit_edge5666.unr-lcssa:                        ; preds = %.lr.ph5665
  %lcmp.mod11009.not = icmp eq i64 %xtraiter11008, 0
  br i1 %lcmp.mod11009.not, label %._crit_edge5666, label %.lr.ph5665.epil.preheader

.lr.ph5665.epil.preheader:                        ; preds = %._crit_edge5666.unr-lcssa, %.lr.ph5665.preheader
  %indvars.iv6998.epil.init = phi i64 [ %i.fnf, %.lr.ph5665.preheader ], [ %indvars.iv.next6999.1, %._crit_edge5666.unr-lcssa ]
  %.0.i17155663.epil.init = phi i64 [ 0, %.lr.ph5665.preheader ], [ %i.fny, %._crit_edge5666.unr-lcssa ]
  %lcmp.mod11012 = trunc i64 %i.fng to i1
  call void @llvm.assume(i1 %lcmp.mod11012)
  %i.foa = getelementptr inbounds nuw [8 x i8], ptr %i.fmz, i64 %indvars.iv6998.epil.init ; 2 uses
  %i.fob = load i64, ptr %i.foa, align 8, !tbaa !91
  %i.foc = zext i64 %i.fob to i128
  %i.fod = mul nuw i128 %i.foc, 10000000000000000000
  %i.foe = zext i64 %.0.i17155663.epil.init to i128
  %i.fof = add nuw i128 %i.fod, %i.foe            ; 2 uses
  %i.fog = lshr i128 %i.fof, 64                   ; 2 uses
  %i.foh = trunc nuw i128 %i.fog to i64
  %i.foi = trunc i128 %i.fof to i64
  store i64 %i.foi, ptr %i.foa, align 8, !tbaa !91
  br label %._crit_edge5666

._crit_edge5666:                                  ; preds = %._crit_edge5666.unr-lcssa, %.lr.ph5665.epil.preheader
  %.lcssa10752 = phi i128 [ %i.fnx, %._crit_edge5666.unr-lcssa ], [ %i.fog, %.lr.ph5665.epil.preheader ]
  %.lcssa10751 = phi i64 [ %i.fny, %._crit_edge5666.unr-lcssa ], [ %i.foh, %.lr.ph5665.epil.preheader ]
  %.not19.i1716 = icmp eq i128 %.lcssa10752, 0
  br i1 %.not19.i1716, label %bigint_mul_u64.exit1718, label %bb.afv

bb.afv:                                           ; preds = %._crit_edge5666
  %i.foj = add i32 %i.fna, 1
  %i.fok = zext i32 %i.fna to i64
  %i.fol = getelementptr inbounds nuw [8 x i8], ptr %i.fmz, i64 %i.fok
  store i64 %.lcssa10751, ptr %i.fol, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1718

bigint_mul_u64.exit1718:                          ; preds = %bb.afu, %._crit_edge5658, %._crit_edge5666, %bb.afv
  %i.fom = phi i32 [ %i.fna, %._crit_edge5666 ], [ %i.foj, %bb.afv ], [ %i.fna, %._crit_edge5658 ], [ %i.fna, %bb.afu ] ; 2 uses
  %i.fon = add nsw i32 %.0.i15115670, -19         ; 2 uses
  %i.foo = icmp sgt i32 %.0.i15115670, 37
  br i1 %i.foo, label %bb.aft, label %._crit_edge5672, !llvm.loop !137

._crit_edge5672:                                  ; preds = %bigint_mul_u64.exit1718, %.preheader5092
  %i.fop = phi i32 [ %.promoted5668, %.preheader5092 ], [ %i.fom, %bigint_mul_u64.exit1718 ] ; 7 uses
  %.0.i1511.lcssa = phi i32 [ %i.fmw, %.preheader5092 ], [ %i.fon, %bigint_mul_u64.exit1718 ] ; 2 uses
  store i32 %i.fop, ptr %5, align 8
  %.not.i1512 = icmp eq i32 %.0.i1511.lcssa, 0
  br i1 %.not.i1512, label %bigint_mul_pow10.exit, label %bb.afw

bb.afw:                                           ; preds = %._crit_edge5672
  %i.foq = sext i32 %.0.i1511.lcssa to i64
  %i.for = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.foq
  %i.fos = load i64, ptr %i.for, align 8, !tbaa !91
  %i.fot = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not6504 = icmp eq i32 %i.fop, 0
  br i1 %.not6504, label %._crit_edge5678, label %.lr.ph5677.preheader

.lr.ph5677.preheader:                             ; preds = %bb.afw
  %wide.trip.count7006 = zext i32 %i.fop to i64
  br label %.lr.ph5677

.lr.ph5677:                                       ; preds = %.lr.ph5677.preheader, %bb.afx
  %indvars.iv7003 = phi i64 [ 0, %.lr.ph5677.preheader ], [ %indvars.iv.next7004, %bb.afx ] ; 3 uses
  %i.fou = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %indvars.iv7003
  %i.fov = load i64, ptr %i.fou, align 8, !tbaa !91
  %.not.i1723 = icmp eq i64 %i.fov, 0
  br i1 %.not.i1723, label %bb.afx, label %._crit_edge5678.loopexit

bb.afx:                                           ; preds = %.lr.ph5677
  %indvars.iv.next7004 = add nuw nsw i64 %indvars.iv7003, 1 ; 2 uses
  %exitcond7007.not = icmp eq i64 %indvars.iv.next7004, %wide.trip.count7006
  br i1 %exitcond7007.not, label %bigint_mul_pow10.exit, label %.lr.ph5677, !llvm.loop !135

._crit_edge5678.loopexit:                         ; preds = %.lr.ph5677
  %i.fow = trunc nuw i64 %indvars.iv7003 to i32
  br label %._crit_edge5678

._crit_edge5678:                                  ; preds = %._crit_edge5678.loopexit, %bb.afw
  %.018.i1719.lcssa = phi i32 [ 0, %bb.afw ], [ %i.fow, %._crit_edge5678.loopexit ] ; 2 uses
  %i.fox = icmp ult i32 %.018.i1719.lcssa, %i.fop
  br i1 %i.fox, label %.lr.ph5685, label %bigint_mul_pow10.exit

.lr.ph5685:                                       ; preds = %._crit_edge5678
  %i.foy = zext i64 %i.fos to i128                ; 3 uses
  %i.foz = zext i32 %.018.i1719.lcssa to i64      ; 4 uses
  %wide.trip.count7011 = zext i32 %i.fop to i64   ; 2 uses
  %i.fpa = sub nsw i64 %wide.trip.count7011, %i.foz ; 3 uses
  %xtraiter11016 = and i64 %i.fpa, 1
  %i.fpb = add nsw i64 %wide.trip.count7011, -1
  %i.fpc = icmp eq i64 %i.fpb, %i.foz
  br i1 %i.fpc, label %.epil.preheader11015, label %.lr.ph5685.new

.lr.ph5685.new:                                   ; preds = %.lr.ph5685
  %unroll_iter11021 = and i64 %i.fpa, -2
  br label %bb.afy

bb.afy:                                           ; preds = %bb.afy, %.lr.ph5685.new
  %indvars.iv7008 = phi i64 [ %i.foz, %.lr.ph5685.new ], [ %indvars.iv.next7009.1, %bb.afy ] ; 3 uses
  %.0.i17215683 = phi i64 [ 0, %.lr.ph5685.new ], [ %i.fps, %bb.afy ]
  %niter11022 = phi i64 [ 0, %.lr.ph5685.new ], [ %niter11022.next.1, %bb.afy ]
  %i.fpd = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %indvars.iv7008 ; 2 uses
  %i.fpe = load i64, ptr %i.fpd, align 8, !tbaa !91
  %i.fpf = zext i64 %i.fpe to i128
  %i.fpg = mul nuw i128 %i.fpf, %i.foy
  %i.fph = zext i64 %.0.i17215683 to i128
  %i.fpi = add nuw i128 %i.fpg, %i.fph            ; 2 uses
  %i.fpj = lshr i128 %i.fpi, 64
  %i.fpk = trunc i128 %i.fpi to i64
  store i64 %i.fpk, ptr %i.fpd, align 8, !tbaa !91
  %i.fpl = getelementptr inbounds nuw [8 x i8], ptr %i.fot, i64 %indvars.iv7008
  %i.fpm = getelementptr inbounds nuw i8, ptr %i.fpl, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@yyjson_read_opts:bb.a
.lr.ph5631:                                       ; preds = %.lr.ph5631, %.lr.ph5631.preheader.new
  %indvars.iv6978 = phi i64 [ %i.fqo, %.lr.ph5631.preheader.new ], [ %indvars.iv.next6979.1, %.lr.ph5631 ] ; 3 uses
  %.0.i17035629 = phi i64 [ 0, %.lr.ph5631.preheader.new ], [ %i.frh, %.lr.ph5631 ]
  %niter = phi i64 [ 0, %.lr.ph5631.preheader.new ], [ %niter.next.1, %.lr.ph5631 ]
  %i.fqs = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6978 ; 2 uses
  %i.fqt = load i64, ptr %i.fqs, align 8, !tbaa !91
  %i.fqu = zext i64 %i.fqt to i128
  %i.fqv = mul nuw i128 %i.fqu, 10000000000000000000
  %i.fqw = zext i64 %.0.i17035629 to i128
  %i.fqx = add nuw i128 %i.fqv, %i.fqw            ; 2 uses
  %i.fqy = lshr i128 %i.fqx, 64
  %i.fqz = trunc i128 %i.fqx to i64
  store i64 %i.fqz, ptr %i.fqs, align 8, !tbaa !91
  %i.fra = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6978
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fra, i64 8 ; 2 uses
  %i.frc = load i64, ptr %i.frb, align 8, !tbaa !91
  %i.frd = zext i64 %i.frc to i128
  %i.fre = mul nuw i128 %i.frd, 10000000000000000000
  %i.frf = add nuw i128 %i.fre, %i.fqy            ; 2 uses
  %i.frg = lshr i128 %i.frf, 64                   ; 2 uses
  %i.frh = trunc nuw i128 %i.frg to i64           ; 3 uses
  %i.fri = trunc i128 %i.frf to i64
  store i64 %i.fri, ptr %i.frb, align 8, !tbaa !91
  %indvars.iv.next6979.1 = add nuw nsw i64 %indvars.iv6978, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge5632.unr-lcssa, label %.lr.ph5631, !llvm.loop !136

._crit_edge5632.unr-lcssa:                        ; preds = %.lr.ph5631
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge5632, label %.lr.ph5631.epil.preheader

.lr.ph5631.epil.preheader:                        ; preds = %._crit_edge5632.unr-lcssa, %.lr.ph5631.preheader
  %indvars.iv6978.epil.init = phi i64 [ %i.fqo, %.lr.ph5631.preheader ], [ %indvars.iv.next6979.1, %._crit_edge5632.unr-lcssa ]
  %.0.i17035629.epil.init = phi i64 [ 0, %.lr.ph5631.preheader ], [ %i.frh, %._crit_edge5632.unr-lcssa ]
  %lcmp.mod11000 = trunc i64 %i.fqp to i1
  call void @llvm.assume(i1 %lcmp.mod11000)
  %i.frj = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6978.epil.init ; 2 uses
  %i.frk = load i64, ptr %i.frj, align 8, !tbaa !91
  %i.frl = zext i64 %i.frk to i128
  %i.frm = mul nuw i128 %i.frl, 10000000000000000000
  %i.frn = zext i64 %.0.i17035629.epil.init to i128
  %i.fro = add nuw i128 %i.frm, %i.frn            ; 2 uses
  %i.frp = lshr i128 %i.fro, 64                   ; 2 uses
  %i.frq = trunc nuw i128 %i.frp to i64
  %i.frr = trunc i128 %i.fro to i64
  store i64 %i.frr, ptr %i.frj, align 8, !tbaa !91
  br label %._crit_edge5632

._crit_edge5632:                                  ; preds = %._crit_edge5632.unr-lcssa, %.lr.ph5631.epil.preheader
  %.lcssa10761 = phi i128 [ %i.frg, %._crit_edge5632.unr-lcssa ], [ %i.frp, %.lr.ph5631.epil.preheader ]
  %.lcssa10760 = phi i64 [ %i.frh, %._crit_edge5632.unr-lcssa ], [ %i.frq, %.lr.ph5631.epil.preheader ]
  %.not19.i1704 = icmp eq i128 %.lcssa10761, 0
  br i1 %.not19.i1704, label %bigint_mul_u64.exit1706, label %bb.agc

bb.agc:                                           ; preds = %._crit_edge5632
  %i.frs = add i32 %i.fqj, 1
  %i.frt = zext i32 %i.fqj to i64
  %i.fru = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.frt
  store i64 %.lcssa10760, ptr %i.fru, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1706

bigint_mul_u64.exit1706:                          ; preds = %bb.agb, %._crit_edge5624, %._crit_edge5632, %bb.agc
  %i.frv = phi i32 [ %i.fqj, %._crit_edge5632 ], [ %i.frs, %bb.agc ], [ %i.fqj, %._crit_edge5624 ], [ %i.fqj, %bb.agb ] ; 5 uses
  %i.frw = add nsw i32 %.0.i15135636, -19         ; 3 uses
  %i.frx = icmp sgt i32 %.0.i15135636, 37
  br i1 %i.frx, label %.lr.ph5638, label %._crit_edge5639, !llvm.loop !137

._crit_edge5639:                                  ; preds = %bigint_mul_u64.exit1706
  store i32 %i.frv, ptr %6, align 8
  %.not.i1514 = icmp eq i32 %i.frw, 0
  br i1 %.not.i1514, label %bigint_mul_pow10.exit, label %bb.agd

bb.agd:                                           ; preds = %._crit_edge5639
  %i.fry = sext i32 %i.frw to i64
  %i.frz = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.fry
  %i.fsa = load i64, ptr %i.frz, align 8, !tbaa !91 ; 2 uses
  %.not6502 = icmp eq i32 %i.frv, 0
  br i1 %.not6502, label %._crit_edge5645, label %.lr.ph5644.preheader

.lr.ph5644.preheader:                             ; preds = %.thread8244, %bb.agd
  %i.fsb = phi i64 [ %i.fqi, %.thread8244 ], [ %i.fsa, %bb.agd ]
  %i.fsc = phi i32 [ 1, %.thread8244 ], [ %i.frv, %bb.agd ] ; 3 uses
  %wide.trip.count6986 = zext i32 %i.fsc to i64
  br label %.lr.ph5644

.lr.ph5644:                                       ; preds = %.lr.ph5644.preheader, %bb.age
  %indvars.iv6983 = phi i64 [ 0, %.lr.ph5644.preheader ], [ %indvars.iv.next6984, %bb.age ] ; 3 uses
  %i.fsd = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6983
  %i.fse = load i64, ptr %i.fsd, align 8, !tbaa !91
  %.not.i1711 = icmp eq i64 %i.fse, 0
  br i1 %.not.i1711, label %bb.age, label %._crit_edge5645.loopexit

bb.age:                                           ; preds = %.lr.ph5644
  %indvars.iv.next6984 = add nuw nsw i64 %indvars.iv6983, 1 ; 2 uses
  %exitcond6987.not = icmp eq i64 %indvars.iv.next6984, %wide.trip.count6986
  br i1 %exitcond6987.not, label %bigint_mul_pow10.exit, label %.lr.ph5644, !llvm.loop !135

._crit_edge5645.loopexit:                         ; preds = %.lr.ph5644
  %i.fsf = trunc nuw i64 %indvars.iv6983 to i32
  br label %._crit_edge5645

._crit_edge5645:                                  ; preds = %._crit_edge5645.loopexit, %bb.agd
  %i.fsg = phi i64 [ %i.fsa, %bb.agd ], [ %i.fsb, %._crit_edge5645.loopexit ]
  %i.fsh = phi i32 [ 0, %bb.agd ], [ %i.fsc, %._crit_edge5645.loopexit ] ; 6 uses
  %.018.i1707.lcssa = phi i32 [ 0, %bb.agd ], [ %i.fsf, %._crit_edge5645.loopexit ] ; 2 uses
  %i.fsi = icmp ult i32 %.018.i1707.lcssa, %i.fsh
  br i1 %i.fsi, label %.lr.ph5652, label %bigint_mul_pow10.exit

.lr.ph5652:                                       ; preds = %._crit_edge5645
  %i.fsj = zext i64 %i.fsg to i128                ; 3 uses
  %i.fsk = zext i32 %.018.i1707.lcssa to i64      ; 4 uses
  %wide.trip.count6991 = zext i32 %i.fsh to i64   ; 2 uses
  %i.fsl = sub nsw i64 %wide.trip.count6991, %i.fsk ; 3 uses
  %xtraiter11001 = and i64 %i.fsl, 1
  %i.fsm = add nsw i64 %wide.trip.count6991, -1
  %i.fsn = icmp eq i64 %i.fsm, %i.fsk
  br i1 %i.fsn, label %.epil.preheader, label %.lr.ph5652.new

.lr.ph5652.new:                                   ; preds = %.lr.ph5652
  %unroll_iter11006 = and i64 %i.fsl, -2
  br label %bb.agf

bb.agf:                                           ; preds = %bb.agf, %.lr.ph5652.new
  %indvars.iv6988 = phi i64 [ %i.fsk, %.lr.ph5652.new ], [ %indvars.iv.next6989.1, %bb.agf ] ; 3 uses
  %.0.i17095650 = phi i64 [ 0, %.lr.ph5652.new ], [ %i.ftd, %bb.agf ]
  %niter11007 = phi i64 [ 0, %.lr.ph5652.new ], [ %niter11007.next.1, %bb.agf ]
  %i.fso = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6988 ; 2 uses
  %i.fsp = load i64, ptr %i.fso, align 8, !tbaa !91
  %i.fsq = zext i64 %i.fsp to i128
  %i.fsr = mul nuw i128 %i.fsq, %i.fsj
  %i.fss = zext i64 %.0.i17095650 to i128
  %i.fst = add nuw i128 %i.fsr, %i.fss            ; 2 uses
  %i.fsu = lshr i128 %i.fst, 64
  %i.fsv = trunc i128 %i.fst to i64
  store i64 %i.fsv, ptr %i.fso, align 8, !tbaa !91
  %i.fsw = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6988
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fsw, i64 8 ; 2 uses
  %i.fsy = load i64, ptr %i.fsx, align 8, !tbaa !91
  %i.fsz = zext i64 %i.fsy to i128
  %i.fta = mul nuw i128 %i.fsz, %i.fsj
  %i.ftb = add nuw i128 %i.fta, %i.fsu            ; 2 uses
  %i.ftc = lshr i128 %i.ftb, 64                   ; 2 uses
  %i.ftd = trunc nuw i128 %i.ftc to i64           ; 3 uses
  %i.fte = trunc i128 %i.ftb to i64
  store i64 %i.fte, ptr %i.fsx, align 8, !tbaa !91
  %indvars.iv.next6989.1 = add nuw nsw i64 %indvars.iv6988, 2 ; 2 uses
  %niter11007.next.1 = add i64 %niter11007, 2     ; 2 uses
  %niter11007.ncmp.1 = icmp eq i64 %niter11007.next.1, %unroll_iter11006
  br i1 %niter11007.ncmp.1, label %._crit_edge5653.unr-lcssa, label %bb.agf, !llvm.loop !136

._crit_edge5653.unr-lcssa:                        ; preds = %bb.agf
  %lcmp.mod11002.not = icmp eq i64 %xtraiter11001, 0
  br i1 %lcmp.mod11002.not, label %._crit_edge5653, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge5653.unr-lcssa, %.lr.ph5652
  %indvars.iv6988.epil.init = phi i64 [ %i.fsk, %.lr.ph5652 ], [ %indvars.iv.next6989.1, %._crit_edge5653.unr-lcssa ]
  %.0.i17095650.epil.init = phi i64 [ 0, %.lr.ph5652 ], [ %i.ftd, %._crit_edge5653.unr-lcssa ]
  %lcmp.mod11005 = trunc i64 %i.fsl to i1
  call void @llvm.assume(i1 %lcmp.mod11005)
  %i.ftf = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv6988.epil.init ; 2 uses
  %i.ftg = load i64, ptr %i.ftf, align 8, !tbaa !91
  %i.fth = zext i64 %i.ftg to i128
  %i.fti = mul nuw i128 %i.fth, %i.fsj
  %i.ftj = zext i64 %.0.i17095650.epil.init to i128
  %i.ftk = add nuw i128 %i.fti, %i.ftj            ; 2 uses
  %i.ftl = lshr i128 %i.ftk, 64                   ; 2 uses
  %i.ftm = trunc nuw i128 %i.ftl to i64
  %i.ftn = trunc i128 %i.ftk to i64
  store i64 %i.ftn, ptr %i.ftf, align 8, !tbaa !91
  br label %._crit_edge5653

._crit_edge5653:                                  ; preds = %._crit_edge5653.unr-lcssa, %.epil.preheader
  %.lcssa10756 = phi i128 [ %i.ftc, %._crit_edge5653.unr-lcssa ], [ %i.ftl, %.epil.preheader ]
  %.lcssa10755 = phi i64 [ %i.ftd, %._crit_edge5653.unr-lcssa ], [ %i.ftm, %.epil.preheader ]
  %.not19.i1710 = icmp eq i128 %.lcssa10756, 0
  br i1 %.not19.i1710, label %bigint_mul_pow10.exit, label %bb.agg

bb.agg:                                           ; preds = %._crit_edge5653
  %i.fto = add i32 %i.fsh, 1
  br label %bigint_mul_pow10.exit.sink.split

bigint_mul_pow10.exit.sink.split:                 ; preds = %bb.afz, %bb.agg
  %.sink9056 = phi i32 [ %i.fsh, %bb.agg ], [ %i.fop, %bb.afz ]
  %i.ftp = phi ptr [ %6, %bb.agg ], [ %5, %bb.afz ]
  %.lcssa8787.sink = phi i64 [ %.lcssa10755, %bb.agg ], [ %.lcssa10747, %bb.afz ]
  %.ph9052 = phi i32 [ %i.fto, %bb.agg ], [ 1, %bb.afz ]
  %i.ftq = getelementptr inbounds nuw i8, ptr %i.ftp, i64 8
  %i.ftr = zext i32 %.sink9056 to i64
  %i.fts = getelementptr inbounds nuw [8 x i8], ptr %i.ftq, i64 %i.ftr
  store i64 %.lcssa8787.sink, ptr %i.fts, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit

bigint_mul_pow10.exit:                            ; preds = %bb.age, %bb.afx, %bigint_mul_pow10.exit.sink.split, %._crit_edge5645, %._crit_edge5678, %._crit_edge5639, %._crit_edge5653, %._crit_edge5672, %._crit_edge5686
  %i.ftt = phi i32 [ %i.frv, %._crit_edge5639 ], [ %i.fsh, %._crit_edge5653 ], [ %i.fsh, %._crit_edge5645 ], [ 1, %._crit_edge5672 ], [ 1, %._crit_edge5686 ], [ 1, %bb.afx ], [ %.ph9052, %bigint_mul_pow10.exit.sink.split ], [ 1, %._crit_edge5678 ], [ %i.fsc, %bb.age ] ; 16 uses
  %i.ftu = icmp sgt i32 %.sroa.9.0.i690, 0
  br i1 %i.ftu, label %bb.agh, label %bb.agj

bb.agh:                                           ; preds = %bigint_mul_pow10.exit
  %i.ftv = and i32 %.sroa.9.0.i690, 63            ; 3 uses
  %i.ftw = lshr i32 %.sroa.9.0.i690, 6            ; 15 uses
  %i.ftx = icmp eq i32 %i.ftv, 0
  br i1 %i.ftx, label %.preheader5087, label %bb.agi, !prof !8

.preheader5087:                                   ; preds = %bb.agh
  %.not46.i5714 = icmp eq i32 %i.ftt, 0
  br i1 %.not46.i5714, label %.lr.ph5721.preheader, label %.lr.ph5716

.lr.ph5716:                                       ; preds = %.preheader5087
  %i.fty = add nsw i32 %i.ftw, -1                 ; 6 uses
  %i.ftz = zext i32 %i.ftt to i64                 ; 9 uses
  %min.iters.check10014 = icmp ult i32 %i.ftt, 30
  br i1 %min.iters.check10014, label %scalar.ph10013.preheader, label %vector.scevcheck10010

vector.scevcheck10010:                            ; preds = %.lr.ph5716
  %i.fua = add nsw i64 %i.ftz, -1                 ; 2 uses
  %i.fub = add i32 %i.ftt, %i.ftw
  %i.fuc = add i32 %i.fub, -1
  %i.fud = trunc i64 %i.fua to i32
  %i.fue = icmp ult i32 %i.fuc, %i.fud
  %i.fuf = icmp ugt i64 %i.fua, 4294967295
  %i.fug = or i1 %i.fue, %i.fuf
  br i1 %i.fug, label %scalar.ph10013.preheader, label %vector.memcheck10011

vector.memcheck10011:                             ; preds = %vector.scevcheck10010
  %i.fuh = add i32 %i.ftt, %i.ftw
  %i.fui = add i32 %i.fuh, -1
  %i.fuj = zext i32 %i.fui to i64
  %i.fuk = sub nsw i64 %i.ftz, %i.fuj
  %i.ful = shl nsw i64 %i.fuk, 3
  %i.fum = add nsw i64 %i.ful, -9
  %diff.check10012 = icmp ult i64 %i.fum, 31
  br i1 %diff.check10012, label %scalar.ph10013.preheader, label %vector.ph10015

vector.ph10015:                                   ; preds = %vector.memcheck10011
  %n.vec10016 = and i64 %i.ftz, 4294967292        ; 2 uses
  %i.fun = and i64 %i.ftz, 3
  br label %vector.body10017

vector.body10017:                                 ; preds = %vector.body10017, %vector.ph10015
  %index10018 = phi i64 [ 0, %vector.ph10015 ], [ %index.next10021, %vector.body10017 ] ; 2 uses
  %i.fuo = sub i64 %i.ftz, %index10018            ; 2 uses
  %i.fup = getelementptr [8 x i8], ptr %6, i64 %i.fuo ; 2 uses
  %i.fuq = getelementptr i8, ptr %i.fup, i64 -8
  %i.fur = getelementptr i8, ptr %i.fup, i64 -24
  %wide.load10019 = load <2 x i64>, ptr %i.fuq, align 8, !tbaa !91
  %wide.load10020 = load <2 x i64>, ptr %i.fur, align 8, !tbaa !91
  %i.fus = trunc nuw i64 %i.fuo to i32
  %i.fut = add i32 %i.fty, %i.fus
  %i.fuu = zext i32 %i.fut to i64
  %i.fuv = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fuu ; 2 uses
  %i.fuw = getelementptr inbounds i8, ptr %i.fuv, i64 -8
  %i.fux = getelementptr inbounds i8, ptr %i.fuv, i64 -24
  store <2 x i64> %wide.load10019, ptr %i.fuw, align 8, !tbaa !91
  store <2 x i64> %wide.load10020, ptr %i.fux, align 8, !tbaa !91
  %index.next10021 = add nuw i64 %index10018, 4   ; 2 uses
  %i.fuy = icmp eq i64 %index.next10021, %n.vec10016
  br i1 %i.fuy, label %middle.block10022, label %vector.body10017, !llvm.loop !175

middle.block10022:                                ; preds = %vector.body10017
  %cmp.n10023 = icmp eq i64 %n.vec10016, %i.ftz
  br i1 %cmp.n10023, label %.lr.ph5721.preheader, label %scalar.ph10013.preheader

scalar.ph10013.preheader:                         ; preds = %vector.memcheck10011, %vector.scevcheck10010, %.lr.ph5716, %middle.block10022
  %indvars.iv7028.ph = phi i64 [ %i.ftz, %vector.memcheck10011 ], [ %i.ftz, %vector.scevcheck10010 ], [ %i.ftz, %.lr.ph5716 ], [ %i.fun, %middle.block10022 ] ; 4 uses
  %i.fuz = add nsw i64 %indvars.iv7028.ph, -1
  %xtraiter11030 = and i64 %indvars.iv7028.ph, 3  ; 2 uses
  %lcmp.mod11031.not = icmp eq i64 %xtraiter11030, 0
  br i1 %lcmp.mod11031.not, label %scalar.ph10013.prol.loopexit, label %scalar.ph10013.prol

scalar.ph10013.prol:                              ; preds = %scalar.ph10013.preheader, %scalar.ph10013.prol
  %indvars.iv7028.prol = phi i64 [ %i.fva, %scalar.ph10013.prol ], [ %indvars.iv7028.ph, %scalar.ph10013.preheader ] ; 3 uses
  %prol.iter11032 = phi i64 [ %prol.iter11032.next, %scalar.ph10013.prol ], [ 0, %scalar.ph10013.preheader ]
  %i.fva = add nsw i64 %indvars.iv7028.prol, -1   ; 2 uses
  %i.fvb = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7028.prol
  %i.fvc = load i64, ptr %i.fvb, align 8, !tbaa !91
  %i.fvd = trunc nuw i64 %indvars.iv7028.prol to i32
  %i.fve = add i32 %i.fty, %i.fvd
  %i.fvf = zext i32 %i.fve to i64
  %i.fvg = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fvf
  store i64 %i.fvc, ptr %i.fvg, align 8, !tbaa !91
  %prol.iter11032.next = add i64 %prol.iter11032, 1 ; 2 uses
  %prol.iter11032.cmp.not = icmp eq i64 %prol.iter11032.next, %xtraiter11030
  br i1 %prol.iter11032.cmp.not, label %scalar.ph10013.prol.loopexit, label %scalar.ph10013.prol, !llvm.loop !176

scalar.ph10013.prol.loopexit:                     ; preds = %scalar.ph10013.prol, %scalar.ph10013.preheader
  %indvars.iv7028.unr = phi i64 [ %indvars.iv7028.ph, %scalar.ph10013.preheader ], [ %i.fva, %scalar.ph10013.prol ]
  %i.fvh = icmp ult i64 %i.fuz, 3
  br i1 %i.fvh, label %.lr.ph5721.preheader, label %scalar.ph10013

scalar.ph10013:                                   ; preds = %scalar.ph10013.prol.loopexit, %scalar.ph10013
  %indvars.iv7028 = phi i64 [ %i.fwd, %scalar.ph10013 ], [ %indvars.iv7028.unr, %scalar.ph10013.prol.loopexit ] ; 6 uses
  %i.fvi = add nsw i64 %indvars.iv7028, -1        ; 2 uses
  %i.fvj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7028
  %i.fvk = load i64, ptr %i.fvj, align 8, !tbaa !91
  %i.fvl = trunc nuw i64 %indvars.iv7028 to i32
  %i.fvm = add i32 %i.fty, %i.fvl
  %i.fvn = zext i32 %i.fvm to i64
  %i.fvo = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fvn
  store i64 %i.fvk, ptr %i.fvo, align 8, !tbaa !91
  %i.fvp = add nsw i64 %indvars.iv7028, -2        ; 2 uses
  %i.fvq = getelementptr [8 x i8], ptr %6, i64 %i.fvi
  %i.fvr = load i64, ptr %i.fvq, align 8, !tbaa !91
  %i.fvs = trunc nuw i64 %i.fvi to i32
  %i.fvt = add i32 %i.fty, %i.fvs
  %i.fvu = zext i32 %i.fvt to i64
  %i.fvv = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fvu
  store i64 %i.fvr, ptr %i.fvv, align 8, !tbaa !91
  %i.fvw = add nsw i64 %indvars.iv7028, -3        ; 2 uses
  %i.fvx = getelementptr [8 x i8], ptr %6, i64 %i.fvp
  %i.fvy = load i64, ptr %i.fvx, align 8, !tbaa !91
  %i.fvz = trunc nuw i64 %i.fvp to i32
  %i.fwa = add i32 %i.fty, %i.fvz
  %i.fwb = zext i32 %i.fwa to i64
  %i.fwc = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fwb
  store i64 %i.fvy, ptr %i.fwc, align 8, !tbaa !91
  %i.fwd = add nsw i64 %indvars.iv7028, -4        ; 2 uses
  %i.fwe = getelementptr [8 x i8], ptr %6, i64 %i.fvw
  %i.fwf = load i64, ptr %i.fwe, align 8, !tbaa !91
  %i.fwg = trunc nuw i64 %i.fvw to i32
  %i.fwh = add i32 %i.fty, %i.fwg
  %i.fwi = zext i32 %i.fwh to i64
  %i.fwj = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fwi
  store i64 %i.fwf, ptr %i.fwj, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.fwd, 0
  br i1 %.not46.i.wide.3, label %.lr.ph5721.preheader, label %scalar.ph10013, !llvm.loop !177

.lr.ph5721.preheader:                             ; preds = %scalar.ph10013.prol.loopexit, %scalar.ph10013, %middle.block10022, %.preheader5087
  %i.fwk = add i32 %i.ftt, %i.ftw                 ; 2 uses
  store i32 %i.fwk, ptr %6, align 8, !tbaa !138
  br label %.lr.ph5696.preheader

bb.agi:                                           ; preds = %bb.agh
  %i.fwl = zext i32 %i.ftt to i64                 ; 10 uses
  %i.fwm = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fwl
  store i64 0, ptr %i.fwm, align 8, !tbaa !91
  %.not.i15355705 = icmp eq i32 %i.ftt, 0
  %.pre7720 = zext nneg i32 %i.ftv to i64         ; 5 uses
  br i1 %.not.i15355705, label %._crit_edge5709, label %.lr.ph5708

.lr.ph5708:                                       ; preds = %bb.agi
  %i.fwn = sub nuw nsw i32 64, %i.ftv
  %i.fwo = zext nneg i32 %i.fwn to i64            ; 4 uses
  %min.iters.check9993 = icmp ult i32 %i.ftt, 20
  br i1 %min.iters.check9993, label %scalar.ph9992.preheader, label %vector.scevcheck9987

vector.scevcheck9987:                             ; preds = %.lr.ph5708
  %i.fwp = add nsw i64 %i.fwl, -1                 ; 2 uses
  %i.fwq = add i32 %i.ftt, %i.ftw
  %i.fwr = trunc i64 %i.fwp to i32
  %i.fws = icmp ult i32 %i.fwq, %i.fwr
  %i.fwt = icmp ugt i64 %i.fwp, 4294967295
  %i.fwu = or i1 %i.fws, %i.fwt
  br i1 %i.fwu, label %scalar.ph9992.preheader, label %vector.memcheck9988

vector.memcheck9988:                              ; preds = %vector.scevcheck9987
  %i.fwv = shl nuw nsw i64 %i.fwl, 3              ; 2 uses
  %i.fww = add i32 %i.ftt, %i.ftw
  %i.fwx = zext i32 %i.fww to i64
  %i.fwy = shl nuw nsw i64 %i.fwx, 3              ; 2 uses
  %i.fwz = sub nsw i64 %i.fwy, %i.fwv
  %diff.check9989 = icmp ugt i64 %i.fwz, -32
  %i.fxa = sub nsw i64 %i.fwv, %i.fwy
  %i.fxb = add nsw i64 %i.fxa, -9
  %diff.check9990 = icmp ult i64 %i.fxb, 31
  %conflict.rdx9991 = or i1 %diff.check9989, %diff.check9990
  br i1 %conflict.rdx9991, label %scalar.ph9992.preheader, label %vector.ph9994

vector.ph9994:                                    ; preds = %vector.memcheck9988
  %n.vec9995 = and i64 %i.fwl, 4294967292         ; 2 uses
  %i.fxc = and i64 %i.fwl, 3
  %broadcast.splatinsert9996 = insertelement <2 x i64> poison, i64 %i.fwo, i64 0
  %broadcast.splat9997 = shufflevector <2 x i64> %broadcast.splatinsert9996, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9998 = insertelement <2 x i64> poison, i64 %.pre7720, i64 0
  %broadcast.splat9999 = shufflevector <2 x i64> %broadcast.splatinsert9998, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10000

vector.body10000:                                 ; preds = %vector.body10000, %vector.ph9994
  %index10001 = phi i64 [ 0, %vector.ph9994 ], [ %index.next10006, %vector.body10000 ] ; 2 uses
  %i.fxd = sub i64 %i.fwl, %index10001            ; 3 uses
  %i.fxe = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fxd ; 2 uses
  %i.fxf = getelementptr inbounds i8, ptr %i.fxe, i64 -8
  %i.fxg = getelementptr inbounds i8, ptr %i.fxe, i64 -24
  %wide.load10002 = load <2 x i64>, ptr %i.fxf, align 8, !tbaa !91
  %wide.load10003 = load <2 x i64>, ptr %i.fxg, align 8, !tbaa !91
  %i.fxh = shl <2 x i64> %wide.load10002, %broadcast.splat9999
  %i.fxi = shl <2 x i64> %wide.load10003, %broadcast.splat9999
  %i.fxj = getelementptr [8 x i8], ptr %6, i64 %i.fxd ; 2 uses
  %i.fxk = getelementptr i8, ptr %i.fxj, i64 -8
  %i.fxl = getelementptr i8, ptr %i.fxj, i64 -24
  %wide.load10004 = load <2 x i64>, ptr %i.fxk, align 8, !tbaa !91
  %wide.load10005 = load <2 x i64>, ptr %i.fxl, align 8, !tbaa !91
  %i.fxm = lshr <2 x i64> %wide.load10004, %broadcast.splat9997
  %i.fxn = lshr <2 x i64> %wide.load10005, %broadcast.splat9997
  %i.fxo = or <2 x i64> %i.fxm, %i.fxh
  %i.fxp = or <2 x i64> %i.fxn, %i.fxi
  %i.fxq = trunc nuw i64 %i.fxd to i32
  %i.fxr = add i32 %i.ftw, %i.fxq
  %i.fxs = zext i32 %i.fxr to i64
  %i.fxt = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fxs ; 2 uses
  %i.fxu = getelementptr inbounds i8, ptr %i.fxt, i64 -8
  %i.fxv = getelementptr inbounds i8, ptr %i.fxt, i64 -24
  store <2 x i64> %i.fxo, ptr %i.fxu, align 8, !tbaa !91
  store <2 x i64> %i.fxp, ptr %i.fxv, align 8, !tbaa !91
  %index.next10006 = add nuw i64 %index10001, 4   ; 2 uses
  %i.fxw = icmp eq i64 %index.next10006, %n.vec9995
  br i1 %i.fxw, label %middle.block10007, label %vector.body10000, !llvm.loop !178

middle.block10007:                                ; preds = %vector.body10000
  %cmp.n10008 = icmp eq i64 %n.vec9995, %i.fwl
  br i1 %cmp.n10008, label %._crit_edge5709, label %scalar.ph9992.preheader

scalar.ph9992.preheader:                          ; preds = %vector.memcheck9988, %vector.scevcheck9987, %.lr.ph5708, %middle.block10007
  %indvars.iv7023.ph = phi i64 [ %i.fwl, %vector.memcheck9988 ], [ %i.fwl, %vector.scevcheck9987 ], [ %i.fwl, %.lr.ph5708 ], [ %i.fxc, %middle.block10007 ] ; 7 uses
  %xtraiter11027 = and i64 %indvars.iv7023.ph, 1
  %lcmp.mod11028.not = icmp eq i64 %xtraiter11027, 0
  br i1 %lcmp.mod11028.not, label %scalar.ph9992.prol.loopexit, label %scalar.ph9992.prol

scalar.ph9992.prol:                               ; preds = %scalar.ph9992.preheader
  %i.fxx = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv7023.ph
  %i.fxy = load i64, ptr %i.fxx, align 8, !tbaa !91
  %i.fxz = shl i64 %i.fxy, %.pre7720
  %i.fya = add nsw i64 %indvars.iv7023.ph, -1
  %i.fyb = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7023.ph
  %i.fyc = load i64, ptr %i.fyb, align 8, !tbaa !91
  %i.fyd = lshr i64 %i.fyc, %i.fwo
  %i.fye = or i64 %i.fyd, %i.fxz
  %i.fyf = trunc nuw i64 %indvars.iv7023.ph to i32
  %i.fyg = add i32 %i.ftw, %i.fyf
  %i.fyh = zext i32 %i.fyg to i64
  %i.fyi = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fyh
  store i64 %i.fye, ptr %i.fyi, align 8, !tbaa !91
  br label %scalar.ph9992.prol.loopexit

scalar.ph9992.prol.loopexit:                      ; preds = %scalar.ph9992.prol, %scalar.ph9992.preheader
  %indvars.iv7023.unr = phi i64 [ %indvars.iv7023.ph, %scalar.ph9992.preheader ], [ %i.fya, %scalar.ph9992.prol ]
  %i.fyj = icmp eq i64 %indvars.iv7023.ph, 1
  br i1 %i.fyj, label %._crit_edge5709, label %scalar.ph9992

scalar.ph9992:                                    ; preds = %scalar.ph9992.prol.loopexit, %scalar.ph9992
  %indvars.iv7023 = phi i64 [ %i.fyz, %scalar.ph9992 ], [ %indvars.iv7023.unr, %scalar.ph9992.prol.loopexit ] ; 6 uses
  %i.fyk = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %indvars.iv7023
  %i.fyl = load i64, ptr %i.fyk, align 8, !tbaa !91
  %i.fym = shl i64 %i.fyl, %.pre7720
  %i.fyn = add nsw i64 %indvars.iv7023, -1        ; 2 uses
  %i.fyo = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7023
  %i.fyp = load i64, ptr %i.fyo, align 8, !tbaa !91
  %i.fyq = lshr i64 %i.fyp, %i.fwo
  %i.fyr = or i64 %i.fyq, %i.fym
  %i.fys = trunc nuw i64 %indvars.iv7023 to i32
  %i.fyt = add i32 %i.ftw, %i.fys
  %i.fyu = zext i32 %i.fyt to i64
  %i.fyv = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fyu
  store i64 %i.fyr, ptr %i.fyv, align 8, !tbaa !91
  %i.fyw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv7023
  %i.fyx = load i64, ptr %i.fyw, align 8, !tbaa !91
  %i.fyy = shl i64 %i.fyx, %.pre7720
  %i.fyz = add nsw i64 %indvars.iv7023, -2        ; 2 uses
  %i.fza = getelementptr [8 x i8], ptr %6, i64 %i.fyn
  %i.fzb = load i64, ptr %i.fza, align 8, !tbaa !91
  %i.fzc = lshr i64 %i.fzb, %i.fwo
  %i.fzd = or i64 %i.fzc, %i.fyy
  %i.fze = trunc nuw i64 %i.fyn to i32
  %i.fzf = add i32 %i.ftw, %i.fze
  %i.fzg = zext i32 %i.fzf to i64
  %i.fzh = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fzg
  store i64 %i.fzd, ptr %i.fzh, align 8, !tbaa !91
  %.not.i1535.wide.1 = icmp eq i64 %i.fyz, 0
  br i1 %.not.i1535.wide.1, label %._crit_edge5709, label %scalar.ph9992, !llvm.loop !179

._crit_edge5709:                                  ; preds = %scalar.ph9992.prol.loopexit, %scalar.ph9992, %middle.block10007, %bb.agi
  %i.fzi = load i64, ptr %i.fmv, align 8, !tbaa !91
  %i.fzj = shl i64 %i.fzi, %.pre7720
  %i.fzk = zext nneg i32 %i.ftw to i64
  %i.fzl = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fzk
  store i64 %i.fzj, ptr %i.fzl, align 8, !tbaa !91
  %i.fzm = add i32 %i.ftt, %i.ftw                 ; 2 uses
  %i.fzn = zext i32 %i.fzm to i64
  %i.fzo = getelementptr inbounds nuw [8 x i8], ptr %i.fmv, i64 %i.fzn
  %i.fzp = load i64, ptr %i.fzo, align 8, !tbaa !91
  %i.fzq = icmp ne i64 %i.fzp, 0
  %i.fzr = zext i1 %i.fzq to i32
  %i.fzs = add i32 %i.fzm, %i.fzr                 ; 2 uses
  %.not45.i15365710 = icmp eq i32 %i.ftw, 0
  br i1 %.not45.i15365710, label %bigint_mul_pow2.exit, label %.lr.ph5696.preheader

bb.agj:                                           ; preds = %bigint_mul_pow10.exit
  %i.fzt = sub nsw i32 0, %.sroa.9.0.i690         ; 2 uses
  %i.fzu = and i32 %i.fzt, 63                     ; 3 uses
  %i.fzv = lshr i32 %i.fzt, 6                     ; 16 uses
  %i.fzw = load i32, ptr %5, align 8, !tbaa !138  ; 12 uses
  %i.fzx = icmp eq i32 %i.fzu, 0
  br i1 %i.fzx, label %.preheader5090, label %bb.agk, !prof !8

.preheader5090:                                   ; preds = %bb.agj
  %.not46.i15445697 = icmp eq i32 %i.fzw, 0
  br i1 %.not46.i15445697, label %._crit_edge5700, label %.lr.ph5699

.lr.ph5699:                                       ; preds = %.preheader5090
  %i.fzy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.fzz = add nsw i32 %i.fzv, -1                 ; 6 uses
  %i.gaa = zext i32 %i.fzw to i64                 ; 9 uses
  %min.iters.check9976 = icmp ult i32 %i.fzw, 30
  br i1 %min.iters.check9976, label %scalar.ph9975.preheader, label %vector.scevcheck9972

vector.scevcheck9972:                             ; preds = %.lr.ph5699
  %i.gab = add nsw i64 %i.gaa, -1                 ; 2 uses
  %i.gac = add i32 %i.fzw, %i.fzv
  %i.gad = add i32 %i.gac, -1
  %i.gae = trunc i64 %i.gab to i32
  %i.gaf = icmp ult i32 %i.gad, %i.gae
  %i.gag = icmp ugt i64 %i.gab, 4294967295
  %i.gah = or i1 %i.gaf, %i.gag
  br i1 %i.gah, label %scalar.ph9975.preheader, label %vector.memcheck9973

vector.memcheck9973:                              ; preds = %vector.scevcheck9972
  %i.gai = add i32 %i.fzw, %i.fzv
  %i.gaj = add i32 %i.gai, -1
  %i.gak = zext i32 %i.gaj to i64
  %i.gal = sub nsw i64 %i.gaa, %i.gak
  %i.gam = shl nsw i64 %i.gal, 3
  %i.gan = add nsw i64 %i.gam, -9
  %diff.check9974 = icmp ult i64 %i.gan, 31
  br i1 %diff.check9974, label %scalar.ph9975.preheader, label %vector.ph9977

vector.ph9977:                                    ; preds = %vector.memcheck9973
  %n.vec9978 = and i64 %i.gaa, 4294967292         ; 2 uses
  %i.gao = and i64 %i.gaa, 3
  br label %vector.body9979

vector.body9979:                                  ; preds = %vector.body9979, %vector.ph9977
  %index9980 = phi i64 [ 0, %vector.ph9977 ], [ %index.next9983, %vector.body9979 ] ; 2 uses
  %i.gap = sub i64 %i.gaa, %index9980             ; 2 uses
  %i.gaq = getelementptr [8 x i8], ptr %5, i64 %i.gap ; 2 uses
  %i.gar = getelementptr i8, ptr %i.gaq, i64 -8
  %i.gas = getelementptr i8, ptr %i.gaq, i64 -24
  %wide.load9981 = load <2 x i64>, ptr %i.gar, align 8, !tbaa !91
  %wide.load9982 = load <2 x i64>, ptr %i.gas, align 8, !tbaa !91
  %i.gat = trunc nuw i64 %i.gap to i32
  %i.gau = add i32 %i.fzz, %i.gat
  %i.gav = zext i32 %i.gau to i64
  %i.gaw = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gav ; 2 uses
  %i.gax = getelementptr inbounds i8, ptr %i.gaw, i64 -8
  %i.gay = getelementptr inbounds i8, ptr %i.gaw, i64 -24
  store <2 x i64> %wide.load9981, ptr %i.gax, align 8, !tbaa !91
  store <2 x i64> %wide.load9982, ptr %i.gay, align 8, !tbaa !91
  %index.next9983 = add nuw i64 %index9980, 4     ; 2 uses
  %i.gaz = icmp eq i64 %index.next9983, %n.vec9978
  br i1 %i.gaz, label %middle.block9984, label %vector.body9979, !llvm.loop !180

middle.block9984:                                 ; preds = %vector.body9979
  %cmp.n9985 = icmp eq i64 %n.vec9978, %i.gaa
  br i1 %cmp.n9985, label %._crit_edge5700, label %scalar.ph9975.preheader

scalar.ph9975.preheader:                          ; preds = %vector.memcheck9973, %vector.scevcheck9972, %.lr.ph5699, %middle.block9984
  %indvars.iv7018.ph = phi i64 [ %i.gaa, %vector.memcheck9973 ], [ %i.gaa, %vector.scevcheck9972 ], [ %i.gaa, %.lr.ph5699 ], [ %i.gao, %middle.block9984 ] ; 4 uses
  %i.gba = add nsw i64 %indvars.iv7018.ph, -1
  %xtraiter11025 = and i64 %indvars.iv7018.ph, 3  ; 2 uses
  %lcmp.mod11026.not = icmp eq i64 %xtraiter11025, 0
  br i1 %lcmp.mod11026.not, label %scalar.ph9975.prol.loopexit, label %scalar.ph9975.prol

scalar.ph9975.prol:                               ; preds = %scalar.ph9975.preheader, %scalar.ph9975.prol
  %indvars.iv7018.prol = phi i64 [ %i.gbb, %scalar.ph9975.prol ], [ %indvars.iv7018.ph, %scalar.ph9975.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph9975.prol ], [ 0, %scalar.ph9975.preheader ]
  %i.gbb = add nsw i64 %indvars.iv7018.prol, -1   ; 2 uses
  %i.gbc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7018.prol
  %i.gbd = load i64, ptr %i.gbc, align 8, !tbaa !91
  %i.gbe = trunc nuw i64 %indvars.iv7018.prol to i32
  %i.gbf = add i32 %i.fzz, %i.gbe
  %i.gbg = zext i32 %i.gbf to i64
  %i.gbh = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gbg
  store i64 %i.gbd, ptr %i.gbh, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter11025
  br i1 %prol.iter.cmp.not, label %scalar.ph9975.prol.loopexit, label %scalar.ph9975.prol, !llvm.loop !181

scalar.ph9975.prol.loopexit:                      ; preds = %scalar.ph9975.prol, %scalar.ph9975.preheader
  %indvars.iv7018.unr = phi i64 [ %indvars.iv7018.ph, %scalar.ph9975.preheader ], [ %i.gbb, %scalar.ph9975.prol ]
  %i.gbi = icmp ult i64 %i.gba, 3
  br i1 %i.gbi, label %._crit_edge5700, label %scalar.ph9975

scalar.ph9975:                                    ; preds = %scalar.ph9975.prol.loopexit, %scalar.ph9975
  %indvars.iv7018 = phi i64 [ %i.gce, %scalar.ph9975 ], [ %indvars.iv7018.unr, %scalar.ph9975.prol.loopexit ] ; 6 uses
  %i.gbj = add nsw i64 %indvars.iv7018, -1        ; 2 uses
  %i.gbk = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7018
  %i.gbl = load i64, ptr %i.gbk, align 8, !tbaa !91
  %i.gbm = trunc nuw i64 %indvars.iv7018 to i32
  %i.gbn = add i32 %i.fzz, %i.gbm
  %i.gbo = zext i32 %i.gbn to i64
  %i.gbp = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gbo
  store i64 %i.gbl, ptr %i.gbp, align 8, !tbaa !91
  %i.gbq = add nsw i64 %indvars.iv7018, -2        ; 2 uses
  %i.gbr = getelementptr [8 x i8], ptr %5, i64 %i.gbj
  %i.gbs = load i64, ptr %i.gbr, align 8, !tbaa !91
  %i.gbt = trunc nuw i64 %i.gbj to i32
  %i.gbu = add i32 %i.fzz, %i.gbt
  %i.gbv = zext i32 %i.gbu to i64
  %i.gbw = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gbv
  store i64 %i.gbs, ptr %i.gbw, align 8, !tbaa !91
  %i.gbx = add nsw i64 %indvars.iv7018, -3        ; 2 uses
  %i.gby = getelementptr [8 x i8], ptr %5, i64 %i.gbq
  %i.gbz = load i64, ptr %i.gby, align 8, !tbaa !91
  %i.gca = trunc nuw i64 %i.gbq to i32
  %i.gcb = add i32 %i.fzz, %i.gca
  %i.gcc = zext i32 %i.gcb to i64
  %i.gcd = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gcc
  store i64 %i.gbz, ptr %i.gcd, align 8, !tbaa !91
  %i.gce = add nsw i64 %indvars.iv7018, -4        ; 2 uses
  %i.gcf = getelementptr [8 x i8], ptr %5, i64 %i.gbx
  %i.gcg = load i64, ptr %i.gcf, align 8, !tbaa !91
  %i.gch = trunc nuw i64 %i.gbx to i32
  %i.gci = add i32 %i.fzz, %i.gch
  %i.gcj = zext i32 %i.gci to i64
  %i.gck = getelementptr inbounds nuw [8 x i8], ptr %i.fzy, i64 %i.gcj
  store i64 %i.gcg, ptr %i.gck, align 8, !tbaa !91
  %.not46.i1544.wide.3 = icmp eq i64 %i.gce, 0
  br i1 %.not46.i1544.wide.3, label %._crit_edge5700, label %scalar.ph9975, !llvm.loop !182

._crit_edge5700:                                  ; preds = %scalar.ph9975.prol.loopexit, %scalar.ph9975, %middle.block9984, %.preheader5090
  %i.gcl = add i32 %i.fzw, %i.fzv
  store i32 %i.gcl, ptr %5, align 8, !tbaa !138
  %.not47.i15465701 = icmp eq i32 %i.fzv, 0
  br i1 %.not47.i15465701, label %bigint_mul_pow2.exit, label %.lr.ph5704

.lr.ph5704:                                       ; preds = %._crit_edge5700
  %i.gcm = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph5696.preheader

bb.agk:                                           ; preds = %bb.agj
  %i.gcn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.gco = zext i32 %i.fzw to i64                 ; 10 uses
  %i.gcp = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gco
  store i64 0, ptr %i.gcp, align 8, !tbaa !91
  %.not.i15405688 = icmp eq i32 %i.fzw, 0
  %.pre7722 = zext nneg i32 %i.fzu to i64         ; 5 uses
  br i1 %.not.i15405688, label %._crit_edge5692, label %.lr.ph5691

.lr.ph5691:                                       ; preds = %bb.agk
  %i.gcq = sub nuw nsw i32 64, %i.fzu
  %i.gcr = zext nneg i32 %i.gcq to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.fzw, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph5691
  %i.gcs = add nsw i64 %i.gco, -1                 ; 2 uses
  %i.gct = add i32 %i.fzw, %i.fzv
  %i.gcu = trunc i64 %i.gcs to i32
  %i.gcv = icmp ult i32 %i.gct, %i.gcu
  %i.gcw = icmp ugt i64 %i.gcs, 4294967295
  %i.gcx = or i1 %i.gcv, %i.gcw
  br i1 %i.gcx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gcy = shl nuw nsw i64 %i.gco, 3              ; 2 uses
  %i.gcz = add i32 %i.fzw, %i.fzv
  %i.gda = zext i32 %i.gcz to i64
  %i.gdb = shl nuw nsw i64 %i.gda, 3              ; 2 uses
  %i.gdc = sub nsw i64 %i.gdb, %i.gcy
  %diff.check = icmp ugt i64 %i.gdc, -32
  %i.gdd = sub nsw i64 %i.gcy, %i.gdb
  %i.gde = add nsw i64 %i.gdd, -9
  %diff.check9966 = icmp ult i64 %i.gde, 31
  %conflict.rdx = or i1 %diff.check, %diff.check9966
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gco, 4294967292             ; 2 uses
  %i.gdf = and i64 %i.gco, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gcr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert9967 = insertelement <2 x i64> poison, i64 %.pre7722, i64 0
  %broadcast.splat9968 = shufflevector <2 x i64> %broadcast.splatinsert9967, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gdg = sub i64 %i.gco, %index                 ; 3 uses
  %i.gdh = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gdg ; 2 uses
  %i.gdi = getelementptr inbounds i8, ptr %i.gdh, i64 -8
  %i.gdj = getelementptr inbounds i8, ptr %i.gdh, i64 -24
  %wide.load = load <2 x i64>, ptr %i.gdi, align 8, !tbaa !91
  %wide.load9969 = load <2 x i64>, ptr %i.gdj, align 8, !tbaa !91
  %i.gdk = shl <2 x i64> %wide.load, %broadcast.splat9968
  %i.gdl = shl <2 x i64> %wide.load9969, %broadcast.splat9968
  %i.gdm = getelementptr [8 x i8], ptr %5, i64 %i.gdg ; 2 uses
  %i.gdn = getelementptr i8, ptr %i.gdm, i64 -8
  %i.gdo = getelementptr i8, ptr %i.gdm, i64 -24
  %wide.load9970 = load <2 x i64>, ptr %i.gdn, align 8, !tbaa !91
  %wide.load9971 = load <2 x i64>, ptr %i.gdo, align 8, !tbaa !91
  %i.gdp = lshr <2 x i64> %wide.load9970, %broadcast.splat
  %i.gdq = lshr <2 x i64> %wide.load9971, %broadcast.splat
  %i.gdr = or <2 x i64> %i.gdp, %i.gdk
  %i.gds = or <2 x i64> %i.gdq, %i.gdl
  %i.gdt = trunc nuw i64 %i.gdg to i32
  %i.gdu = add i32 %i.fzv, %i.gdt
  %i.gdv = zext i32 %i.gdu to i64
  %i.gdw = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gdv ; 2 uses
  %i.gdx = getelementptr inbounds i8, ptr %i.gdw, i64 -8
  %i.gdy = getelementptr inbounds i8, ptr %i.gdw, i64 -24
  store <2 x i64> %i.gdr, ptr %i.gdx, align 8, !tbaa !91
  store <2 x i64> %i.gds, ptr %i.gdy, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gdz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gdz, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.gco
  br i1 %cmp.n, label %._crit_edge5692, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph5691, %middle.block
  %indvars.iv7013.ph = phi i64 [ %i.gco, %vector.memcheck ], [ %i.gco, %vector.scevcheck ], [ %i.gco, %.lr.ph5691 ], [ %i.gdf, %middle.block ] ; 7 uses
  %xtraiter11023 = and i64 %indvars.iv7013.ph, 1
  %lcmp.mod11024.not = icmp eq i64 %xtraiter11023, 0
  br i1 %lcmp.mod11024.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gea = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %indvars.iv7013.ph
  %i.geb = load i64, ptr %i.gea, align 8, !tbaa !91
  %i.gec = shl i64 %i.geb, %.pre7722
  %i.ged = add nsw i64 %indvars.iv7013.ph, -1
  %i.gee = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013.ph
  %i.gef = load i64, ptr %i.gee, align 8, !tbaa !91
  %i.geg = lshr i64 %i.gef, %i.gcr
  %i.geh = or i64 %i.geg, %i.gec
  %i.gei = trunc nuw i64 %indvars.iv7013.ph to i32
  %i.gej = add i32 %i.fzv, %i.gei
  %i.gek = zext i32 %i.gej to i64
  %i.gel = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gek
  store i64 %i.geh, ptr %i.gel, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv7013.unr = phi i64 [ %indvars.iv7013.ph, %scalar.ph.preheader ], [ %i.ged, %scalar.ph.prol ]
  %i.gem = icmp eq i64 %indvars.iv7013.ph, 1
  br i1 %i.gem, label %._crit_edge5692, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv7013 = phi i64 [ %i.gfc, %scalar.ph ], [ %indvars.iv7013.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gen = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %indvars.iv7013
  %i.geo = load i64, ptr %i.gen, align 8, !tbaa !91
  %i.gep = shl i64 %i.geo, %.pre7722
  %i.geq = add nsw i64 %indvars.iv7013, -1        ; 2 uses
  %i.ger = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013
  %i.ges = load i64, ptr %i.ger, align 8, !tbaa !91
  %i.get = lshr i64 %i.ges, %i.gcr
  %i.geu = or i64 %i.get, %i.gep
  %i.gev = trunc nuw i64 %indvars.iv7013 to i32
  %i.gew = add i32 %i.fzv, %i.gev
  %i.gex = zext i32 %i.gew to i64
  %i.gey = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gex
  store i64 %i.geu, ptr %i.gey, align 8, !tbaa !91
  %i.gez = getelementptr [8 x i8], ptr %5, i64 %indvars.iv7013
  %i.gfa = load i64, ptr %i.gez, align 8, !tbaa !91
  %i.gfb = shl i64 %i.gfa, %.pre7722
  %i.gfc = add nsw i64 %indvars.iv7013, -2        ; 2 uses
  %i.gfd = getelementptr [8 x i8], ptr %5, i64 %i.geq
  %i.gfe = load i64, ptr %i.gfd, align 8, !tbaa !91
  %i.gff = lshr i64 %i.gfe, %i.gcr
  %i.gfg = or i64 %i.gff, %i.gfb
  %i.gfh = trunc nuw i64 %i.geq to i32
  %i.gfi = add i32 %i.fzv, %i.gfh
  %i.gfj = zext i32 %i.gfi to i64
  %i.gfk = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gfj
  store i64 %i.gfg, ptr %i.gfk, align 8, !tbaa !91
  %.not.i1540.wide.1 = icmp eq i64 %i.gfc, 0
  br i1 %.not.i1540.wide.1, label %._crit_edge5692, label %scalar.ph, !llvm.loop !184

._crit_edge5692:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.agk
  %i.gfl = load i64, ptr %i.gcn, align 8, !tbaa !91
  %i.gfm = shl i64 %i.gfl, %.pre7722
  %i.gfn = zext nneg i32 %i.fzv to i64
  %i.gfo = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gfn
  store i64 %i.gfm, ptr %i.gfo, align 8, !tbaa !91
  %i.gfp = add i32 %i.fzw, %i.fzv                 ; 2 uses
  %i.gfq = zext i32 %i.gfp to i64
  %i.gfr = getelementptr inbounds nuw [8 x i8], ptr %i.gcn, i64 %i.gfq
  %i.gfs = load i64, ptr %i.gfr, align 8, !tbaa !91
  %i.gft = icmp ne i64 %i.gfs, 0
  %i.gfu = zext i1 %i.gft to i32
  %i.gfv = add i32 %i.gfp, %i.gfu
  store i32 %i.gfv, ptr %5, align 8, !tbaa !138
  %.not45.i15425693 = icmp eq i32 %i.fzv, 0
  br i1 %.not45.i15425693, label %bigint_mul_pow2.exit, label %.lr.ph5696.preheader

.lr.ph5696.preheader:                             ; preds = %._crit_edge5692, %._crit_edge5709, %.lr.ph5721.preheader, %.lr.ph5704
  %.sink9082 = phi i32 [ %i.ftw, %._crit_edge5709 ], [ %i.fzv, %.lr.ph5704 ], [ %i.ftw, %.lr.ph5721.preheader ], [ %i.fzv, %._crit_edge5692 ]
  %.sink9077 = phi ptr [ %i.fmv, %._crit_edge5709 ], [ %i.gcm, %.lr.ph5704 ], [ %i.fmv, %.lr.ph5721.preheader ], [ %i.gcn, %._crit_edge5692 ]
  %.ph9076 = phi i32 [ %i.fzs, %._crit_edge5709 ], [ %i.ftt, %.lr.ph5704 ], [ %i.fwk, %.lr.ph5721.preheader ], [ %i.ftt, %._crit_edge5692 ]
  %19 = add nsw i32 %.sink9082, -1
  %i.gfw = zext i32 %19 to i64
  %20 = shl nuw nsw i64 %i.gfw, 3
  %21 = add nuw nsw i64 %20, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9077, i8 0, i64 %21, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %.lr.ph5696.preheader, %._crit_edge5692, %._crit_edge5700, %._crit_edge5709
  %22 = phi i32 [ %i.fzs, %._crit_edge5709 ], [ %i.ftt, %._crit_edge5692 ], [ %i.ftt, %._crit_edge5700 ], [ %.ph9076, %.lr.ph5696.preheader ] ; 2 uses
  %i.gfx = load i32, ptr %5, align 8, !tbaa !138  ; 4 uses
  %i.gfy = icmp ult i32 %i.gfx, %22
  br i1 %i.gfy, label %bigint_cmp.exit.thread, label %bb.agl

bb.agl:                                           ; preds = %bigint_mul_pow2.exit
  %i.gfz = icmp ugt i32 %i.gfx, %22
  br i1 %i.gfz, label %bigint_cmp.exit.thread, label %.preheader5086

.preheader5086:                                   ; preds = %bb.agl
  %.not.i16029900 = icmp eq i32 %i.gfx, 0
  br i1 %.not.i16029900, label %bigint_cmp.exit.thread4317, label %.lr.ph9903

.lr.ph9903:                                       ; preds = %.preheader5086
  %i.gga = zext i32 %i.gfx to i64
  br label %bb.agn

bb.agm:                                           ; preds = %bb.agn
  %i.ggb = add nsw i64 %indvars.iv70319901, -1    ; 2 uses
  %.not.i1602 = icmp eq i64 %i.ggb, 0
  br i1 %.not.i1602, label %bigint_cmp.exit.thread4317, label %bb.agn, !llvm.loop !153

bb.agn:                                           ; preds = %.lr.ph9903, %bb.agm
  %.016.i9902 = phi i32 [ undef, %.lr.ph9903 ], [ %.1.i1603, %bb.agm ]
  %indvars.iv70319901 = phi i64 [ %i.gga, %.lr.ph9903 ], [ %i.ggb, %bb.agm ] ; 3 uses
  %i.ggc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv70319901
  %i.ggd = load i64, ptr %i.ggc, align 8, !tbaa !91 ; 3 uses
  %i.gge = getelementptr [8 x i8], ptr %6, i64 %indvars.iv70319901
  %i.ggf = load i64, ptr %i.gge, align 8, !tbaa !91 ; 3 uses
  %.not4845 = icmp ult i64 %i.ggd, %i.ggf
  %.not4846 = icmp ugt i64 %i.ggd, %i.ggf
  %..016.i = select i1 %.not4846, i32 1, i32 %.016.i9902
  %.1.i1603 = select i1 %.not4845, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.ggd, %i.ggf
  br i1 %cond.i, label %bb.agm, label %bigint_cmp.exit, !llvm.loop !153

bigint_cmp.exit:                                  ; preds = %bb.agn
  %.not989.i692 = icmp eq i32 %.1.i1603, 0
  br i1 %.not989.i692, label %bigint_cmp.exit.thread4317, label %bigint_cmp.exit.thread, !prof !124

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.agl, %bigint_cmp.exit
  %.2.i16044316 = phi i32 [ %.1.i1603, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.agl ]
  %i.ggg = icmp sgt i32 %.2.i16044316, 0
  %i.ggh = zext i1 %i.ggg to i64
  br label %bb.ago

bigint_cmp.exit.thread4317:                       ; preds = %bb.agm, %.preheader5086, %bigint_cmp.exit
  %i.ggi = and i64 %.0.i1504.ph, 1
  br label %bb.ago

bb.ago:                                           ; preds = %bigint_cmp.exit.thread4317, %bigint_cmp.exit.thread
  %.pn.i693 = phi i64 [ %i.ggh, %bigint_cmp.exit.thread ], [ %i.ggi, %bigint_cmp.exit.thread4317 ]
  %.0895.i694 = add nuw nsw i64 %.pn.i693, %.0.i1504.ph ; 2 uses
  %i.ggj = icmp eq i64 %.0895.i694, 9218868437227405312
  br i1 %i.ggj, label %bb.agp, label %bb.agu, !prof !8

bb.agp:                                           ; preds = %bb.ago
  %i.ggk = and i32 %2, 128
  %.not4847 = icmp eq i32 %i.ggk, 0
  br i1 %.not4847, label %bb.agr, label %bb.agq, !prof !25

bb.agq:                                           ; preds = %bb.agp
  %i.ggl = load ptr, ptr %i.l, align 8, !tbaa !92
  store i8 0, ptr %i.ggl, align 1, !tbaa !81
  %i.ggm = ptrtoint ptr %.33.i668 to i64
  %i.ggn = ptrtoint ptr %i.eez to i64
  %i.ggo = sub i64 %i.ggm, %i.ggn
  %i.ggp = shl i64 %i.ggo, 8
  %i.ggq = or disjoint i64 %i.ggp, 1
  store i64 %i.ggq, ptr %i.efe, align 8, !tbaa !79
  %i.ggr = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store ptr %i.eez, ptr %i.ggr, align 8, !tbaa !81
  store ptr %.33.i668, ptr %i.l, align 8, !tbaa !92
  br label %.split4352

bb.agr:                                           ; preds = %bb.agp
  br i1 %.not4805, label %bb.agt, label %bb.ags, !prof !25

bb.ags:                                           ; preds = %bb.agr
  store i64 20, ptr %i.efe, align 8, !tbaa !79
  %i.ggs = select i1 %i.efi, i64 -4503599627370496, i64 9218868437227405312
  %i.ggt = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ggs, ptr %i.ggt, align 8, !tbaa !81
  br label %.split4352

bb.agt:                                           ; preds = %bb.agr
  store ptr @.str.93, ptr %i.j, align 8, !tbaa !92
  store ptr %i.eez, ptr %i.i, align 8, !tbaa !92
  br label %.split4352.thread

bb.agu:                                           ; preds = %bb.ago
  store i64 20, ptr %i.efe, align 8, !tbaa !79
  %i.ggu = select i1 %i.efi, i64 -9223372036854775808, i64 0
  %i.ggv = or disjoint i64 %.0895.i694, %i.ggu
  %i.ggw = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 24
  store i64 %i.ggv, ptr %i.ggw, align 8, !tbaa !81
  br label %.split4352

.split4352.thread:                                ; preds = %bb.afp, %bb.agt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.aje

.split4352:                                       ; preds = %bb.agu, %bb.ags, %bb.agq, %bb.afr, %bb.afo, %bb.afm
  store ptr %.33.i668, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

.preheader5074:                                   ; preds = %bb.ahu, %bb.ahv, %bb.aib, %bb.aia, %bb.pq, %bb.aie, %bb.aiu, %read_str_opt.exit882, %.split4321, %.split4338, %read_num.exit777, %read_true.exit780, %read_false.exit783, %read_null.exit786, %read_nan.exit834, %read_inf.exit1483, %.split4339, %.split4337, %.split4349, %.split4341, %.split4333, %.split4332, %.split4331, %.split4340, %.split4342, %.split4343, %.split4344, %.split4347, %.split4348, %.split4322, %.split4323, %.split4324, %.split4325, %.split4326, %.split4327, %.split4328, %.split4329, %.split4330, %.split4336, %.split4335, %.split4334, %.split4346, %.split4345, %.split4350, %.split4351, %.split4352
  %.19788.i.ph = phi i64 [ %.18787.i.ph, %.split4351 ], [ %.18787.i.ph, %.split4350 ], [ %.18787.i.ph, %.split4349 ], [ %.18787.i.ph, %.split4348 ], [ %.18787.i.ph, %.split4347 ], [ %.18787.i.ph, %.split4346 ], [ %.18787.i.ph, %.split4345 ], [ %.18787.i.ph, %.split4344 ], [ %.18787.i.ph, %.split4343 ], [ %.18787.i.ph, %.split4342 ], [ %.18787.i.ph, %.split4341 ], [ %.18787.i.ph, %.split4340 ], [ %.18787.i.ph, %.split4339 ], [ %.18787.i.ph, %.split4338 ], [ %.18787.i.ph, %.split4337 ], [ %.18787.i.ph, %read_inf.exit1483 ], [ %.18787.i.ph, %.split4336 ], [ %.18787.i.ph, %.split4335 ], [ %.18787.i.ph, %.split4334 ], [ %.18787.i.ph, %.split4333 ], [ %.18787.i.ph, %.split4332 ], [ %.18787.i.ph, %.split4331 ], [ %.18787.i.ph, %.split4330 ], [ %.18787.i.ph, %.split4329 ], [ %.18787.i.ph, %.split4328 ], [ %.18787.i.ph, %.split4327 ], [ %.18787.i.ph, %.split4326 ], [ %.18787.i.ph, %.split4325 ], [ %.18787.i.ph, %.split4324 ], [ %.18787.i.ph, %.split4323 ], [ %.18787.i.ph, %.split4322 ], [ %.18787.i.ph, %.split4321 ], [ %.18787.i.ph, %bb.aie ], [ %.18787.i.ph, %read_str_opt.exit882 ], [ %.18787.i.ph, %read_nan.exit834 ], [ %.18787.i.ph, %read_null.exit786 ], [ %.18787.i.ph, %read_false.exit783 ], [ %.18787.i.ph, %read_true.exit780 ], [ %.18787.i.ph, %read_num.exit777 ], [ %.18787.i.ph, %.split4352 ], [ %.11780.i, %bb.pq ], [ %.20789.i, %bb.aiu ], [ %.18787.i.ph, %bb.aia ], [ %.18787.i.ph, %bb.aib ], [ %.18787.i.ph, %bb.ahv ], [ %.18787.i.ph, %bb.ahu ] ; 3 uses
  %.7767.i.ph = phi i64 [ %i.eff, %.split4351 ], [ %i.eff, %.split4350 ], [ %i.eff, %.split4349 ], [ %i.eff, %.split4348 ], [ %i.eff, %.split4347 ], [ %i.eff, %.split4346 ], [ %i.eff, %.split4345 ], [ %i.eff, %.split4344 ], [ %i.eff, %.split4343 ], [ %i.eff, %.split4342 ], [ %i.eff, %.split4341 ], [ %i.eff, %.split4340 ], [ %i.eff, %.split4339 ], [ %i.eff, %.split4338 ], [ %i.eff, %.split4337 ], [ %i.eff, %read_inf.exit1483 ], [ %i.eff, %.split4336 ], [ %i.eff, %.split4335 ], [ %i.eff, %.split4334 ], [ %i.eff, %.split4333 ], [ %i.eff, %.split4332 ], [ %i.eff, %.split4331 ], [ %i.eff, %.split4330 ], [ %i.eff, %.split4329 ], [ %i.eff, %.split4328 ], [ %i.eff, %.split4327 ], [ %i.eff, %.split4326 ], [ %i.eff, %.split4325 ], [ %i.eff, %.split4324 ], [ %i.eff, %.split4323 ], [ %i.eff, %.split4322 ], [ %i.eff, %.split4321 ], [ %i.gll, %bb.aie ], [ %i.dlt, %read_str_opt.exit882 ], [ %i.ghk, %read_nan.exit834 ], [ %i.ghk, %read_null.exit786 ], [ %i.ghg, %read_false.exit783 ], [ %i.ghb, %read_true.exit780 ], [ %i.eff, %read_num.exit777 ], [ %i.eff, %.split4352 ], [ %i.cll, %bb.pq ], [ %i.gna, %bb.aiu ], [ %i.giy, %bb.aia ], [ %i.giy, %bb.aib ], [ %i.giy, %bb.ahv ], [ %i.giy, %bb.ahu ] ; 3 uses
  %.31757.i.ph = phi ptr [ %.30756.i.ph, %.split4351 ], [ %.30756.i.ph, %.split4350 ], [ %.30756.i.ph, %.split4349 ], [ %.30756.i.ph, %.split4348 ], [ %.30756.i.ph, %.split4347 ], [ %.30756.i.ph, %.split4346 ], [ %.30756.i.ph, %.split4345 ], [ %.30756.i.ph, %.split4344 ], [ %.30756.i.ph, %.split4343 ], [ %.30756.i.ph, %.split4342 ], [ %.30756.i.ph, %.split4341 ], [ %.30756.i.ph, %.split4340 ], [ %.30756.i.ph, %.split4339 ], [ %.30756.i.ph, %.split4338 ], [ %.30756.i.ph, %.split4337 ], [ %.30756.i.ph, %read_inf.exit1483 ], [ %.30756.i.ph, %.split4336 ], [ %.30756.i.ph, %.split4335 ], [ %.30756.i.ph, %.split4334 ], [ %.30756.i.ph, %.split4333 ], [ %.30756.i.ph, %.split4332 ], [ %.30756.i.ph, %.split4331 ], [ %.30756.i.ph, %.split4330 ], [ %.30756.i.ph, %.split4329 ], [ %.30756.i.ph, %.split4328 ], [ %.30756.i.ph, %.split4327 ], [ %.30756.i.ph, %.split4326 ], [ %.30756.i.ph, %.split4325 ], [ %.30756.i.ph, %.split4324 ], [ %.30756.i.ph, %.split4323 ], [ %.30756.i.ph, %.split4322 ], [ %.30756.i.ph, %.split4321 ], [ %.30756.i.ph, %bb.aie ], [ %.30756.i.ph, %read_str_opt.exit882 ], [ %.30756.i.ph, %read_nan.exit834 ], [ %.30756.i.ph, %read_null.exit786 ], [ %.30756.i.ph, %read_false.exit783 ], [ %.30756.i.ph, %read_true.exit780 ], [ %.30756.i.ph, %read_num.exit777 ], [ %.30756.i.ph, %.split4352 ], [ %.19745.i, %bb.pq ], [ %.32758.i, %bb.aiu ], [ %.30756.i.ph, %bb.aia ], [ %.30756.i.ph, %bb.aib ], [ %.30756.i.ph, %bb.ahv ], [ %.30756.i.ph, %bb.ahu ] ; 5 uses
  %.31724.i.ph = phi ptr [ %.30723.i.ph, %.split4351 ], [ %.30723.i.ph, %.split4350 ], [ %.30723.i.ph, %.split4349 ], [ %.30723.i.ph, %.split4348 ], [ %.30723.i.ph, %.split4347 ], [ %.30723.i.ph, %.split4346 ], [ %.30723.i.ph, %.split4345 ], [ %.30723.i.ph, %.split4344 ], [ %.30723.i.ph, %.split4343 ], [ %.30723.i.ph, %.split4342 ], [ %.30723.i.ph, %.split4341 ], [ %.30723.i.ph, %.split4340 ], [ %.30723.i.ph, %.split4339 ], [ %.30723.i.ph, %.split4338 ], [ %.30723.i.ph, %.split4337 ], [ %.30723.i.ph, %read_inf.exit1483 ], [ %.30723.i.ph, %.split4336 ], [ %.30723.i.ph, %.split4335 ], [ %.30723.i.ph, %.split4334 ], [ %.30723.i.ph, %.split4333 ], [ %.30723.i.ph, %.split4332 ], [ %.30723.i.ph, %.split4331 ], [ %.30723.i.ph, %.split4330 ], [ %.30723.i.ph, %.split4329 ], [ %.30723.i.ph, %.split4328 ], [ %.30723.i.ph, %.split4327 ], [ %.30723.i.ph, %.split4326 ], [ %.30723.i.ph, %.split4325 ], [ %.30723.i.ph, %.split4324 ], [ %.30723.i.ph, %.split4323 ], [ %.30723.i.ph, %.split4322 ], [ %.30723.i.ph, %.split4321 ], [ %.30723.i.ph, %bb.aie ], [ %.30723.i.ph, %read_str_opt.exit882 ], [ %.30723.i.ph, %read_nan.exit834 ], [ %.30723.i.ph, %read_null.exit786 ], [ %.30723.i.ph, %read_false.exit783 ], [ %.30723.i.ph, %read_true.exit780 ], [ %.30723.i.ph, %read_num.exit777 ], [ %.30723.i.ph, %.split4352 ], [ %.19712.i, %bb.pq ], [ %.32725.i, %bb.aiu ], [ %.30723.i.ph, %bb.aia ], [ %.30723.i.ph, %bb.aib ], [ %.30723.i.ph, %bb.ahv ], [ %.30723.i.ph, %bb.ahu ] ; 3 uses
  %.31691.i.ph = phi ptr [ %i.efe, %.split4351 ], [ %i.efe, %.split4350 ], [ %i.efe, %.split4349 ], [ %i.efe, %.split4348 ], [ %i.efe, %.split4347 ], [ %i.efe, %.split4346 ], [ %i.efe, %.split4345 ], [ %i.efe, %.split4344 ], [ %i.efe, %.split4343 ], [ %i.efe, %.split4342 ], [ %i.efe, %.split4341 ], [ %i.efe, %.split4340 ], [ %i.efe, %.split4339 ], [ %i.efe, %.split4338 ], [ %i.efe, %.split4337 ], [ %i.efe, %read_inf.exit1483 ], [ %i.efe, %.split4336 ], [ %i.efe, %.split4335 ], [ %i.efe, %.split4334 ], [ %i.efe, %.split4333 ], [ %i.efe, %.split4332 ], [ %i.efe, %.split4331 ], [ %i.efe, %.split4330 ], [ %i.efe, %.split4329 ], [ %i.efe, %.split4328 ], [ %i.efe, %.split4327 ], [ %i.efe, %.split4326 ], [ %i.efe, %.split4325 ], [ %i.efe, %.split4324 ], [ %i.efe, %.split4323 ], [ %i.efe, %.split4322 ], [ %i.efe, %.split4321 ], [ %i.glk, %bb.aie ], [ %i.dls, %read_str_opt.exit882 ], [ %i.ghj, %read_nan.exit834 ], [ %i.ghj, %read_null.exit786 ], [ %i.ghh, %read_false.exit783 ], [ %i.ghc, %read_true.exit780 ], [ %i.efe, %read_num.exit777 ], [ %i.efe, %.split4352 ], [ %.19679.i, %bb.pq ], [ %.32692.i, %bb.aiu ], [ %i.gix, %bb.aia ], [ %i.gix, %bb.aib ], [ %i.gix, %bb.ahv ], [ %i.gix, %bb.ahu ] ; 3 uses
  %.31.i.ph = phi ptr [ %.30.i.ph, %.split4351 ], [ %.30.i.ph, %.split4350 ], [ %.30.i.ph, %.split4349 ], [ %.30.i.ph, %.split4348 ], [ %.30.i.ph, %.split4347 ], [ %.30.i.ph, %.split4346 ], [ %.30.i.ph, %.split4345 ], [ %.30.i.ph, %.split4344 ], [ %.30.i.ph, %.split4343 ], [ %.30.i.ph, %.split4342 ], [ %.30.i.ph, %.split4341 ], [ %.30.i.ph, %.split4340 ], [ %.30.i.ph, %.split4339 ], [ %.30.i.ph, %.split4338 ], [ %.30.i.ph, %.split4337 ], [ %.30.i.ph, %read_inf.exit1483 ], [ %.30.i.ph, %.split4336 ], [ %.30.i.ph, %.split4335 ], [ %.30.i.ph, %.split4334 ], [ %.30.i.ph, %.split4333 ], [ %.30.i.ph, %.split4332 ], [ %.30.i.ph, %.split4331 ], [ %.30.i.ph, %.split4330 ], [ %.30.i.ph, %.split4329 ], [ %.30.i.ph, %.split4328 ], [ %.30.i.ph, %.split4327 ], [ %.30.i.ph, %.split4326 ], [ %.30.i.ph, %.split4325 ], [ %.30.i.ph, %.split4324 ], [ %.30.i.ph, %.split4323 ], [ %.30.i.ph, %.split4322 ], [ %.30.i.ph, %.split4321 ], [ %.30.i.ph, %bb.aie ], [ %.30.i.ph, %read_str_opt.exit882 ], [ %.30.i.ph, %read_nan.exit834 ], [ %.30.i.ph, %read_null.exit786 ], [ %.30.i.ph, %read_false.exit783 ], [ %.30.i.ph, %read_true.exit780 ], [ %.30.i.ph, %read_num.exit777 ], [ %.30.i.ph, %.split4352 ], [ %i.clc, %bb.pq ], [ %i.gmr, %bb.aiu ], [ %.30.i.ph, %bb.aia ], [ %.30.i.ph, %bb.aib ], [ %.30.i.ph, %bb.ahv ], [ %.30.i.ph, %bb.ahu ] ; 3 uses
  %i.ggx = load ptr, ptr %i.i, align 8, !tbaa !92 ; 3 uses
  %.sroa.01.0.copyload.i8225787 = load i16, ptr %i.ggx, align 1 ; 2 uses
  %i.ggy = icmp eq i16 %.sroa.01.0.copyload.i8225787, 2604
  br i1 %i.ggy, label %._crit_edge5789, label %.lr.ph5788

.lr.ph5788:                                       ; preds = %.preheader5074
  %i.ggz = and i32 %2, 2056
  %.not4926 = icmp eq i32 %i.ggz, 0
  br label %bb.aij

read_num.exit777.thread:                          ; preds = %bb.aeg, %bb.aen, %bb.aew, %bb.zi, %bb.adw, %bb.aec, %bb.zk, %bb.zm, %read_inf_or_nan.exit.thread, %bb.ado
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.aje

read_num.exit777:                                 ; preds = %bb.aau, %bb.aax, %bb.aba, %bb.aei, %bb.aek, %bb.aem, %bb.aeq, %bb.aet, %bb.aev
  %.sink9057 = phi ptr [ %i.emo, %bb.aau ], [ %i.emv, %bb.aax ], [ %i.enc, %bb.aba ], [ %.31.i660.lcssa, %bb.aei ], [ %.31.i660.lcssa, %bb.aek ], [ %.31.i660.lcssa, %bb.aem ], [ %.32.i662, %bb.aeq ], [ %.32.i662, %bb.aet ], [ %.32.i662, %bb.aev ]
  store ptr %.sink9057, ptr %i.i, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.preheader5074

bb.agv:                                           ; preds = %bb.yj
  switch i8 %i.eey, label %bb.ahh [
    i8 123, label %.loopexit5064
    i8 91, label %.loopexit5065
    i8 116, label %bb.agw
    i8 102, label %bb.agx
    i8 110, label %bb.agy
  ]

bb.agw:                                           ; preds = %bb.agv
  %.sroa.01.0.copyload.i1733 = load i32, ptr %i.eez, align 1
  %i.gha = icmp eq i32 %.sroa.01.0.copyload.i1733, 1702195828
  br i1 %i.gha, label %read_true.exit780, label %read_true.exit779.thread, !prof !25

read_true.exit780:                                ; preds = %bb.agw
  %i.ghb = add i64 %.5765.i.ph, 2
  %i.ghc = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 2 uses
  store i64 11, ptr %i.ghc, align 8, !tbaa !79
  %i.ghd = getelementptr inbounds nuw i8, ptr %i.eez, i64 4
  store ptr %i.ghd, ptr %i.i, align 8, !tbaa !92
  br label %.preheader5074

bb.agx:                                           ; preds = %bb.agv
  %i.ghe = getelementptr inbounds nuw i8, ptr %i.eez, i64 1
  %.sroa.01.0.copyload.i1729 = load i32, ptr %i.ghe, align 1
  %i.ghf = icmp eq i32 %.sroa.01.0.copyload.i1729, 1702063201
  br i1 %i.ghf, label %read_false.exit783, label %read_false.exit782.thread, !prof !25

read_false.exit783:                               ; preds = %bb.agx
  %i.ghg = add i64 %.5765.i.ph, 2
  %i.ghh = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 2 uses
  store i64 3, ptr %i.ghh, align 8, !tbaa !79
  %i.ghi = getelementptr inbounds nuw i8, ptr %i.eez, i64 5
  store ptr %i.ghi, ptr %i.i, align 8, !tbaa !92
  br label %.preheader5074

bb.agy:                                           ; preds = %bb.agv
  %i.ghj = getelementptr inbounds nuw i8, ptr %.30690.i.ph, i64 16 ; 4 uses
  %i.ghk = add i64 %.5765.i.ph, 2                 ; 2 uses
  %.sroa.01.0.copyload.i1725 = load i32, ptr %i.eez, align 1 ; 3 uses
  %i.ghl = icmp eq i32 %.sroa.01.0.copyload.i1725, 1819047278
  %i.ghm = trunc i32 %.sroa.01.0.copyload.i1725 to i8 ; 2 uses
  br i1 %i.ghl, label %read_null.exit786, label %bb.agz, !prof !25

read_null.exit786:                                ; preds = %bb.agy
  store i64 2, ptr %i.ghj, align 8, !tbaa !79
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.eez, i64 4
  store ptr %i.ghn, ptr %i.i, align 8, !tbaa !92
  br label %.preheader5074

bb.agz:                                           ; preds = %bb.agy
  br i1 %.not4805, label %read_nan.exit832.thread, label %bb.aha, !prof !25

bb.aha:                                           ; preds = %bb.agz
  %i.gho = icmp eq i8 %i.ghm, 45
  %i.ghp = icmp ne i8 %i.ghm, 43
  %i.ghq = and i32 %2, 512
  %i.ghr = icmp ne i32 %i.ghq, 0
  %or.cond4600 = or i1 %i.ghr, %i.ghp
  br i1 %or.cond4600, label %bb.ahb, label %read_nan.exit832.thread, !prof !119

bb.ahb:                                           ; preds = %bb.aha
  %.mask8123 = and i32 %.sroa.01.0.copyload.i1725, 255
  %i.ghs = zext nneg i32 %.mask8123 to i64
  %i.ght = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.ghs
  %i.ghu = load i8, ptr %i.ght, align 1, !tbaa !81 ; 2 uses
  %i.ghv = trunc i8 %i.ghu to i1
  %.mask4802 = and i8 %i.ghu, 1
  %i.ghw = zext nneg i8 %.mask4802 to i64
end_hunk_3
begin_hunk_4_@yyjson_read_opts:bb.a
  %i.hxc = icmp ult i64 %i.hwz, %i.hwp
  %i.hxd = zext i1 %i.hxc to i64
  %i.hxe = add nuw i64 %i.hxd, %i.hwo
  br label %.split4419

.split4419:                                       ; preds = %bb.aqn, %bb.aql
  %.03992 = phi i64 [ %i.hwo, %bb.aql ], [ %i.hxe, %bb.aqn ] ; 2 uses
  %i.hxf = icmp sgt i64 %.03992, -1               ; 2 uses
  %.neg983.i = sext i1 %i.hxf to i32
  %i.hxg = zext i1 %i.hxf to i64
  %i.hxh = shl i64 %.03992, %i.hxg                ; 2 uses
  %i.hxi = and i64 %i.hxh, 1024
  %i.hxj = add i64 %i.hxi, %i.hxh                 ; 2 uses
  %i.hxk = icmp ult i64 %i.hxj, 1024
  %spec.select4611.v = select i1 %i.hxk, i32 65, i32 64
  %i.hxl = lshr i64 %i.hxj, 11
  %reass.sub6529 = sub nsw i32 %i.hwg, %i.hwi
  %i.hxm = add nsw i32 %reass.sub6529, 1086
  %spec.select4611 = add nsw i32 %i.hxm, %.neg983.i
  %i.hxn = add nsw i32 %spec.select4611, %spec.select4611.v
  %i.hxo = zext nneg i32 %i.hxn to i64
  %i.hxp = shl nuw nsw i64 %i.hxo, 52
  %i.hxq = and i64 %i.hxl, 4503599627370495
  %i.hxr = or disjoint i64 %i.hxp, %i.hxq
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.hxs = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.hxt = or disjoint i64 %i.hxr, %i.hxs
  %i.hxu = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.hxt, ptr %i.hxu, align 8, !tbaa !81
  store ptr %.33.i357, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.aqm
  %.pre-phi7653 = phi i32 [ %.pre7652, %..critedge992.i_crit_edge ], [ %i.hwi, %bb.aqm ]
  %.pre-phi7651 = phi i128 [ %.pre7650, %..critedge992.i_crit_edge ], [ %i.hwk, %bb.aqm ]
  %.pre-phi7649 = phi i32 [ %.pre7648, %..critedge992.i_crit_edge ], [ %i.hwg, %bb.aqm ]
  %.pre-phi7643 = phi i32 [ %.pre7642, %..critedge992.i_crit_edge ], [ %i.hvz, %bb.aqm ] ; 2 uses
  %.pre-phi7639 = phi i64 [ %.pre7638, %..critedge992.i_crit_edge ], [ %i.hwh, %bb.aqm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.hxv = select i1 %i.hvv, i64 0, i64 4
  %i.hxw = shl i64 %i.hxv, %.pre-phi7639          ; 2 uses
  %i.hxx = add i32 %.pre-phi7643, 686
  %i.hxy = sext i32 %i.hxx to i64
  %i.hxz = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hxy
  %i.hya = load i64, ptr %i.hxz, align 16, !tbaa !91
  %i.hyb = add i32 %.pre-phi7643, 687
  %i.hyc = sext i32 %i.hyb to i64
  %i.hyd = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hyc
  %i.hye = load i64, ptr %i.hyd, align 8, !tbaa !91
  %i.hyf = lshr i64 %i.hye, 63
  %i.hyg = add i64 %i.hyf, %i.hya
  %i.hyh = zext i64 %i.hyg to i128
  %i.hyi = mul nuw i128 %.pre-phi7651, %i.hyh     ; 2 uses
  %i.hyj = lshr i128 %i.hyi, 64
  %i.hyk = trunc nuw i128 %i.hyj to i64
  %i.hyl = trunc i128 %i.hyi to i64
  %i.hym = lshr i64 %i.hyl, 63
  %i.hyn = add nuw i64 %i.hym, %i.hyk             ; 2 uses
  %.not986.i = icmp eq i64 %i.hxw, 0
  %i.hyo = select i1 %.not986.i, i64 8, i64 9
  %i.hyp = add i64 %i.hyo, %i.hxw
  %i.hyq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hyn, i1 true) ; 3 uses
  %i.hyr = trunc nuw nsw i64 %i.hyq to i32
  %i.hys = shl i64 %i.hyn, %i.hyq                 ; 3 uses
  %i.hyt = add nsw i32 %.pre-phi7649, 64
  %i.hyu = add nuw nsw i32 %.pre-phi7653, %i.hyr
  %i.hyv = sub nsw i32 %i.hyt, %i.hyu             ; 7 uses
  %i.hyw = shl i64 %i.hyp, %i.hyq                 ; 3 uses
  %i.hyx = icmp sgt i32 %i.hyv, -1086
  br i1 %i.hyx, label %.thread4378, label %bb.aqo, !prof !25

bb.aqo:                                           ; preds = %.critedge992.i
  %i.hyy = icmp samesign ult i32 %i.hyv, -1137
  br i1 %i.hyy, label %.thread4375, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  %i.hyz = sub nuw nsw i32 -1074, %i.hyv          ; 2 uses
  %i.hza = icmp samesign ult i32 %i.hyv, -1134
  br i1 %i.hza, label %.thread4375, label %.thread4378, !prof !190

.thread4375:                                      ; preds = %bb.aqo, %bb.aqp
  %.0897.i4377 = phi i32 [ %i.hyz, %bb.aqp ], [ 64, %bb.aqo ]
  %i.hzb = add nsw i32 %.0897.i4377, -60          ; 2 uses
  %i.hzc = zext nneg i32 %i.hzb to i64            ; 2 uses
  %i.hzd = lshr i64 %i.hys, %i.hzc
  %i.hze = add nsw i32 %i.hzb, %i.hyv
  %i.hzf = lshr i64 %i.hyw, %i.hzc
  %i.hzg = add nuw i64 %i.hzf, 9
  br label %.thread4378

.thread4378:                                      ; preds = %.critedge992.i, %.thread4375, %bb.aqp
  %.0898.i = phi i64 [ %i.hzg, %.thread4375 ], [ %i.hyw, %bb.aqp ], [ %i.hyw, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread4375 ], [ %i.hyz, %bb.aqp ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hze, %.thread4375 ], [ %i.hyv, %bb.aqp ], [ %i.hyv, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.hzd, %.thread4375 ], [ %i.hys, %bb.aqp ], [ %i.hys, %.critedge992.i ] ; 2 uses
  %i.hzh = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hzh
  %i.hzi = xor i64 %notmask.i, -1
  %i.hzj = and i64 %.sroa.025.0.i, %i.hzi
  %i.hzk = shl nuw nsw i64 %i.hzj, 3              ; 2 uses
  %i.hzl = add nsw i32 %.0896.i, -1
  %i.hzm = zext nneg i32 %i.hzl to i64
  %i.hzn = shl nuw nsw i64 8, %i.hzm              ; 2 uses
  %i.hzo = lshr i64 %.sroa.025.0.i, %i.hzh
  %i.hzp = add i64 %i.hzn, %.0898.i
  %i.hzq = icmp uge i64 %i.hzk, %i.hzp            ; 2 uses
  %i.hzr = zext i1 %i.hzq to i64
  %i.hzs = add nuw nsw i64 %i.hzo, %i.hzr         ; 3 uses
  %i.hzt = icmp eq i64 %i.hzs, 0
  br i1 %i.hzt, label %bb.aqz, label %bb.aqq, !prof !8

bb.aqq:                                           ; preds = %.thread4378
  %i.hzu = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.hzv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hzs, i1 true) ; 2 uses
  %i.hzw = trunc nuw nsw i64 %i.hzv to i32
  %i.hzx = shl i64 %i.hzs, %i.hzv
  %i.hzy = lshr i64 %i.hzx, 11                    ; 2 uses
  %i.hzz = sub nsw i32 %i.hzu, %i.hzw             ; 5 uses
  %i.iaa = icmp sgt i32 %i.hzz, 960
  br i1 %i.iaa, label %diy_fp_to_ieee_raw.exit1510, label %bb.aqr, !prof !8

bb.aqr:                                           ; preds = %bb.aqq
  %i.iab = icmp sgt i32 %i.hzz, -1086
  br i1 %i.iab, label %bb.aqs, label %bb.aqt, !prof !25

bb.aqs:                                           ; preds = %bb.aqr
  %i.iac = add nsw i32 %i.hzz, 1086
  %i.iad = zext nneg i32 %i.iac to i64
  %i.iae = shl nuw nsw i64 %i.iad, 52
  %i.iaf = and i64 %i.hzy, 4503599627370495
  %i.iag = or disjoint i64 %i.iae, %i.iaf
  br label %bb.aqz

bb.aqt:                                           ; preds = %bb.aqr
  %i.iah = icmp samesign ugt i32 %i.hzz, -1138
  br i1 %i.iah, label %bb.aqu, label %bb.aqz, !prof !25

bb.aqu:                                           ; preds = %bb.aqt
  %i.iai = sub nuw nsw i32 -1085, %i.hzz
  %i.iaj = zext nneg i32 %i.iai to i64
  %i.iak = lshr i64 %i.hzy, %i.iaj
  br label %bb.aqz

diy_fp_to_ieee_raw.exit1510:                      ; preds = %bb.aqq
  %i.ial = and i32 %2, 128
  %.not4760 = icmp eq i32 %i.ial, 0
  br i1 %.not4760, label %bb.aqw, label %bb.aqv, !prof !25

bb.aqv:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  %i.iam = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.iam, align 1, !tbaa !81
  %i.ian = ptrtoint ptr %.33.i357 to i64
  %i.iao = ptrtoint ptr %i.gtw to i64
  %i.iap = sub i64 %i.ian, %i.iao
  %i.iaq = shl i64 %i.iap, 8
  %i.iar = or disjoint i64 %i.iaq, 1
  store i64 %i.iar, ptr %.5665.i347, align 8, !tbaa !79
  %i.ias = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gtw, ptr %i.ias, align 8, !tbaa !81
  store ptr %.33.i357, ptr %i.h, align 8, !tbaa !92
  br label %.split4420

bb.aqw:                                           ; preds = %diy_fp_to_ieee_raw.exit1510
  br i1 %.not4722, label %bb.aqy, label %bb.aqx, !prof !25

bb.aqx:                                           ; preds = %bb.aqw
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.iat = select i1 %i.gub, i64 -4503599627370496, i64 9218868437227405312
  %i.iau = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.iat, ptr %i.iau, align 8, !tbaa !81
  br label %.split4420

bb.aqy:                                           ; preds = %bb.aqw
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  br label %.split4420.thread

bb.aqz:                                           ; preds = %.thread4378, %bb.aqs, %bb.aqu, %bb.aqt
  %.0.i1509.ph = phi i64 [ 0, %bb.aqt ], [ %i.iak, %bb.aqu ], [ %i.iag, %bb.aqs ], [ 0, %.thread4378 ] ; 7 uses
  %i.iav = sub i64 %i.hzn, %.0898.i
  %.not987.i = icmp ule i64 %i.hzk, %i.iav
  %spec.select.i = or i1 %.not987.i, %i.hzq
  br i1 %spec.select.i, label %bb.ara, label %bb.arb, !prof !25

bb.ara:                                           ; preds = %bb.aqz
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.iaw = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.iax = or disjoint i64 %.0.i1509.ph, %i.iaw
  %i.iay = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.iax, ptr %i.iay, align 8, !tbaa !81
  br label %.split4420

bb.arb:                                           ; preds = %bb.aqz
  %.not988.i = icmp samesign ult i64 %.0.i1509.ph, 4503599627370496 ; 2 uses
  %i.iaz = and i64 %.0.i1509.ph, 4503599627370495
  %i.iba = or disjoint i64 %i.iaz, 4503599627370496
  %i.ibb = lshr i64 %.0.i1509.ph, 52
  %i.ibc = trunc nuw nsw i64 %i.ibb to i32
  %i.ibd = add nsw i32 %i.ibc, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.ibd ; 4 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i1509.ph, i64 %i.iba
  %i.ibe = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.ibf = or disjoint i64 %i.ibe, 1
  call fastcc void @bigint_set_buf(ptr noundef %11, i64 noundef %.22894.i, ptr noundef %i.d, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i358)
  %i.ibg = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 29 uses
  store i64 %i.ibf, ptr %i.ibg, align 8, !tbaa !91
  %i.ibh = load i32, ptr %i.d, align 4, !tbaa !114 ; 6 uses
  %i.ibi = icmp sgt i32 %i.ibh, -1
  br i1 %i.ibi, label %.preheader4964, label %bb.arj

.preheader4964:                                   ; preds = %bb.arb
  %.promoted6372 = load i32, ptr %11, align 8     ; 2 uses
  %i.ibj = icmp samesign ugt i32 %i.ibh, 18
  br i1 %i.ibj, label %.lr.ph6375, label %._crit_edge6376

.lr.ph6375:                                       ; preds = %.preheader4964
  %i.ibk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  br label %bb.arc

bb.arc:                                           ; preds = %.lr.ph6375, %bigint_mul_u64.exit1646
  %.0.i15286374 = phi i32 [ %i.ibh, %.lr.ph6375 ], [ %i.icy, %bigint_mul_u64.exit1646 ] ; 2 uses
  %i.ibl = phi i32 [ %.promoted6372, %.lr.ph6375 ], [ %i.icx, %bigint_mul_u64.exit1646 ] ; 9 uses
  %.not6527 = icmp eq i32 %i.ibl, 0
  br i1 %.not6527, label %._crit_edge6362, label %.lr.ph6361.preheader

.lr.ph6361.preheader:                             ; preds = %bb.arc
  %wide.trip.count7179 = zext i32 %i.ibl to i64
  br label %.lr.ph6361

.lr.ph6361:                                       ; preds = %.lr.ph6361.preheader, %bb.ard
  %indvars.iv7176 = phi i64 [ 0, %.lr.ph6361.preheader ], [ %indvars.iv.next7177, %bb.ard ] ; 3 uses
  %i.ibm = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv7176
  %i.ibn = load i64, ptr %i.ibm, align 8, !tbaa !91
  %.not.i1645 = icmp eq i64 %i.ibn, 0
  br i1 %.not.i1645, label %bb.ard, label %._crit_edge6362.loopexit

bb.ard:                                           ; preds = %.lr.ph6361
  %indvars.iv.next7177 = add nuw nsw i64 %indvars.iv7176, 1 ; 2 uses
  %exitcond7180.not = icmp eq i64 %indvars.iv.next7177, %wide.trip.count7179
  br i1 %exitcond7180.not, label %bigint_mul_u64.exit1646, label %.lr.ph6361, !llvm.loop !135

._crit_edge6362.loopexit:                         ; preds = %.lr.ph6361
  %i.ibo = trunc nuw i64 %indvars.iv7176 to i32
  br label %._crit_edge6362

._crit_edge6362:                                  ; preds = %._crit_edge6362.loopexit, %bb.arc
  %.018.i1641.lcssa = phi i32 [ 0, %bb.arc ], [ %i.ibo, %._crit_edge6362.loopexit ] ; 2 uses
  %i.ibp = icmp ult i32 %.018.i1641.lcssa, %i.ibl
  br i1 %i.ibp, label %.lr.ph6369.preheader, label %bigint_mul_u64.exit1646

.lr.ph6369.preheader:                             ; preds = %._crit_edge6362
  %i.ibq = zext i32 %.018.i1641.lcssa to i64      ; 4 uses
  %wide.trip.count7184 = zext i32 %i.ibl to i64   ; 2 uses
  %i.ibr = sub nsw i64 %wide.trip.count7184, %i.ibq ; 3 uses
  %xtraiter11132 = and i64 %i.ibr, 1
  %i.ibs = add nsw i64 %wide.trip.count7184, -1
  %i.ibt = icmp eq i64 %i.ibs, %i.ibq
  br i1 %i.ibt, label %.lr.ph6369.epil.preheader, label %.lr.ph6369.preheader.new

.lr.ph6369.preheader.new:                         ; preds = %.lr.ph6369.preheader
  %unroll_iter11137 = and i64 %i.ibr, -2
  br label %.lr.ph6369

.lr.ph6369:                                       ; preds = %.lr.ph6369, %.lr.ph6369.preheader.new
  %indvars.iv7181 = phi i64 [ %i.ibq, %.lr.ph6369.preheader.new ], [ %indvars.iv.next7182.1, %.lr.ph6369 ] ; 3 uses
  %.0.i16436367 = phi i64 [ 0, %.lr.ph6369.preheader.new ], [ %i.icj, %.lr.ph6369 ]
  %niter11138 = phi i64 [ 0, %.lr.ph6369.preheader.new ], [ %niter11138.next.1, %.lr.ph6369 ]
  %i.ibu = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv7181 ; 2 uses
  %i.ibv = load i64, ptr %i.ibu, align 8, !tbaa !91
  %i.ibw = zext i64 %i.ibv to i128
  %i.ibx = mul nuw i128 %i.ibw, 10000000000000000000
  %i.iby = zext i64 %.0.i16436367 to i128
  %i.ibz = add nuw i128 %i.ibx, %i.iby            ; 2 uses
  %i.ica = lshr i128 %i.ibz, 64
  %i.icb = trunc i128 %i.ibz to i64
  store i64 %i.icb, ptr %i.ibu, align 8, !tbaa !91
  %i.icc = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv7181
  %i.icd = getelementptr inbounds nuw i8, ptr %i.icc, i64 8 ; 2 uses
  %i.ice = load i64, ptr %i.icd, align 8, !tbaa !91
  %i.icf = zext i64 %i.ice to i128
  %i.icg = mul nuw i128 %i.icf, 10000000000000000000
  %i.ich = add nuw i128 %i.icg, %i.ica            ; 2 uses
  %i.ici = lshr i128 %i.ich, 64                   ; 2 uses
  %i.icj = trunc nuw i128 %i.ici to i64           ; 3 uses
  %i.ick = trunc i128 %i.ich to i64
  store i64 %i.ick, ptr %i.icd, align 8, !tbaa !91
  %indvars.iv.next7182.1 = add nuw nsw i64 %indvars.iv7181, 2 ; 2 uses
  %niter11138.next.1 = add i64 %niter11138, 2     ; 2 uses
  %niter11138.ncmp.1 = icmp eq i64 %niter11138.next.1, %unroll_iter11137
  br i1 %niter11138.ncmp.1, label %._crit_edge6370.unr-lcssa, label %.lr.ph6369, !llvm.loop !136

._crit_edge6370.unr-lcssa:                        ; preds = %.lr.ph6369
  %lcmp.mod11133.not = icmp eq i64 %xtraiter11132, 0
  br i1 %lcmp.mod11133.not, label %._crit_edge6370, label %.lr.ph6369.epil.preheader

.lr.ph6369.epil.preheader:                        ; preds = %._crit_edge6370.unr-lcssa, %.lr.ph6369.preheader
  %indvars.iv7181.epil.init = phi i64 [ %i.ibq, %.lr.ph6369.preheader ], [ %indvars.iv.next7182.1, %._crit_edge6370.unr-lcssa ]
  %.0.i16436367.epil.init = phi i64 [ 0, %.lr.ph6369.preheader ], [ %i.icj, %._crit_edge6370.unr-lcssa ]
  %lcmp.mod11136 = trunc i64 %i.ibr to i1
  call void @llvm.assume(i1 %lcmp.mod11136)
  %i.icl = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %indvars.iv7181.epil.init ; 2 uses
  %i.icm = load i64, ptr %i.icl, align 8, !tbaa !91
  %i.icn = zext i64 %i.icm to i128
  %i.ico = mul nuw i128 %i.icn, 10000000000000000000
  %i.icp = zext i64 %.0.i16436367.epil.init to i128
  %i.icq = add nuw i128 %i.ico, %i.icp            ; 2 uses
  %i.icr = lshr i128 %i.icq, 64                   ; 2 uses
  %i.ics = trunc nuw i128 %i.icr to i64
  %i.ict = trunc i128 %i.icq to i64
  store i64 %i.ict, ptr %i.icl, align 8, !tbaa !91
  br label %._crit_edge6370

._crit_edge6370:                                  ; preds = %._crit_edge6370.unr-lcssa, %.lr.ph6369.epil.preheader
  %.lcssa10288 = phi i128 [ %i.ici, %._crit_edge6370.unr-lcssa ], [ %i.icr, %.lr.ph6369.epil.preheader ]
  %.lcssa10287 = phi i64 [ %i.icj, %._crit_edge6370.unr-lcssa ], [ %i.ics, %.lr.ph6369.epil.preheader ]
  %.not19.i1644 = icmp eq i128 %.lcssa10288, 0
  br i1 %.not19.i1644, label %bigint_mul_u64.exit1646, label %bb.are

bb.are:                                           ; preds = %._crit_edge6370
  %i.icu = add i32 %i.ibl, 1
  %i.icv = zext i32 %i.ibl to i64
  %i.icw = getelementptr inbounds nuw [8 x i8], ptr %i.ibk, i64 %i.icv
  store i64 %.lcssa10287, ptr %i.icw, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1646

bigint_mul_u64.exit1646:                          ; preds = %bb.ard, %._crit_edge6362, %._crit_edge6370, %bb.are
  %i.icx = phi i32 [ %i.ibl, %._crit_edge6370 ], [ %i.icu, %bb.are ], [ %i.ibl, %._crit_edge6362 ], [ %i.ibl, %bb.ard ] ; 2 uses
  %i.icy = add nsw i32 %.0.i15286374, -19         ; 2 uses
  %i.icz = icmp sgt i32 %.0.i15286374, 37
  br i1 %i.icz, label %bb.arc, label %._crit_edge6376, !llvm.loop !137

._crit_edge6376:                                  ; preds = %bigint_mul_u64.exit1646, %.preheader4964
  %i.ida = phi i32 [ %.promoted6372, %.preheader4964 ], [ %i.icx, %bigint_mul_u64.exit1646 ] ; 7 uses
  %.0.i1528.lcssa = phi i32 [ %i.ibh, %.preheader4964 ], [ %i.icy, %bigint_mul_u64.exit1646 ] ; 2 uses
  store i32 %i.ida, ptr %11, align 8
  %.not.i1529 = icmp eq i32 %.0.i1528.lcssa, 0
  br i1 %.not.i1529, label %bigint_mul_pow10.exit1530, label %bb.arf

bb.arf:                                           ; preds = %._crit_edge6376
  %i.idb = sext i32 %.0.i1528.lcssa to i64
  %i.idc = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.idb
  %i.idd = load i64, ptr %i.idc, align 8, !tbaa !91
  %i.ide = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %.not6528 = icmp eq i32 %i.ida, 0
  br i1 %.not6528, label %._crit_edge6382, label %.lr.ph6381.preheader

.lr.ph6381.preheader:                             ; preds = %bb.arf
  %wide.trip.count7189 = zext i32 %i.ida to i64
  br label %.lr.ph6381

.lr.ph6381:                                       ; preds = %.lr.ph6381.preheader, %bb.arg
  %indvars.iv7186 = phi i64 [ 0, %.lr.ph6381.preheader ], [ %indvars.iv.next7187, %bb.arg ] ; 3 uses
  %i.idf = getelementptr inbounds nuw [8 x i8], ptr %i.ide, i64 %indvars.iv7186
  %i.idg = load i64, ptr %i.idf, align 8, !tbaa !91
  %.not.i1651 = icmp eq i64 %i.idg, 0
  br i1 %.not.i1651, label %bb.arg, label %._crit_edge6382.loopexit

bb.arg:                                           ; preds = %.lr.ph6381
  %indvars.iv.next7187 = add nuw nsw i64 %indvars.iv7186, 1 ; 2 uses
  %exitcond7190.not = icmp eq i64 %indvars.iv.next7187, %wide.trip.count7189
  br i1 %exitcond7190.not, label %bigint_mul_pow10.exit1530, label %.lr.ph6381, !llvm.loop !135

._crit_edge6382.loopexit:                         ; preds = %.lr.ph6381
  %i.idh = trunc nuw i64 %indvars.iv7186 to i32
  br label %._crit_edge6382

._crit_edge6382:                                  ; preds = %._crit_edge6382.loopexit, %bb.arf
  %.018.i1647.lcssa = phi i32 [ 0, %bb.arf ], [ %i.idh, %._crit_edge6382.loopexit ] ; 2 uses
  %i.idi = icmp ult i32 %.018.i1647.lcssa, %i.ida
  br i1 %i.idi, label %.lr.ph6389, label %bigint_mul_pow10.exit1530

.lr.ph6389:                                       ; preds = %._crit_edge6382
  %i.idj = zext i64 %i.idd to i128                ; 3 uses
  %i.idk = zext i32 %.018.i1647.lcssa to i64      ; 4 uses
  %wide.trip.count7194 = zext i32 %i.ida to i64   ; 2 uses
  %i.idl = sub nsw i64 %wide.trip.count7194, %i.idk ; 3 uses
  %xtraiter11140 = and i64 %i.idl, 1
  %i.idm = add nsw i64 %wide.trip.count7194, -1
  %i.idn = icmp eq i64 %i.idm, %i.idk
  br i1 %i.idn, label %.epil.preheader11139, label %.lr.ph6389.new

.lr.ph6389.new:                                   ; preds = %.lr.ph6389
  %unroll_iter11145 = and i64 %i.idl, -2
  br label %bb.arh

bb.arh:                                           ; preds = %bb.arh, %.lr.ph6389.new
  %indvars.iv7191 = phi i64 [ %i.idk, %.lr.ph6389.new ], [ %indvars.iv.next7192.1, %bb.arh ] ; 3 uses
  %.0.i16496387 = phi i64 [ 0, %.lr.ph6389.new ], [ %i.ied, %bb.arh ]
  %niter11146 = phi i64 [ 0, %.lr.ph6389.new ], [ %niter11146.next.1, %bb.arh ]
  %i.ido = getelementptr inbounds nuw [8 x i8], ptr %i.ide, i64 %indvars.iv7191 ; 2 uses
  %i.idp = load i64, ptr %i.ido, align 8, !tbaa !91
  %i.idq = zext i64 %i.idp to i128
  %i.idr = mul nuw i128 %i.idq, %i.idj
  %i.ids = zext i64 %.0.i16496387 to i128
  %i.idt = add nuw i128 %i.idr, %i.ids            ; 2 uses
  %i.idu = lshr i128 %i.idt, 64
  %i.idv = trunc i128 %i.idt to i64
  store i64 %i.idv, ptr %i.ido, align 8, !tbaa !91
  %i.idw = getelementptr inbounds nuw [8 x i8], ptr %i.ide, i64 %indvars.iv7191
  %i.idx = getelementptr inbounds nuw i8, ptr %i.idw, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@yyjson_read_opts:bb.a
.lr.ph6335:                                       ; preds = %.lr.ph6335, %.lr.ph6335.preheader.new
  %indvars.iv7161 = phi i64 [ %i.iez, %.lr.ph6335.preheader.new ], [ %indvars.iv.next7162.1, %.lr.ph6335 ] ; 3 uses
  %.0.i16336333 = phi i64 [ 0, %.lr.ph6335.preheader.new ], [ %i.ifs, %.lr.ph6335 ]
  %niter11123 = phi i64 [ 0, %.lr.ph6335.preheader.new ], [ %niter11123.next.1, %.lr.ph6335 ]
  %i.ifd = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7161 ; 2 uses
  %i.ife = load i64, ptr %i.ifd, align 8, !tbaa !91
  %i.iff = zext i64 %i.ife to i128
  %i.ifg = mul nuw i128 %i.iff, 10000000000000000000
  %i.ifh = zext i64 %.0.i16336333 to i128
  %i.ifi = add nuw i128 %i.ifg, %i.ifh            ; 2 uses
  %i.ifj = lshr i128 %i.ifi, 64
  %i.ifk = trunc i128 %i.ifi to i64
  store i64 %i.ifk, ptr %i.ifd, align 8, !tbaa !91
  %i.ifl = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7161
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.ifl, i64 8 ; 2 uses
  %i.ifn = load i64, ptr %i.ifm, align 8, !tbaa !91
  %i.ifo = zext i64 %i.ifn to i128
  %i.ifp = mul nuw i128 %i.ifo, 10000000000000000000
  %i.ifq = add nuw i128 %i.ifp, %i.ifj            ; 2 uses
  %i.ifr = lshr i128 %i.ifq, 64                   ; 2 uses
  %i.ifs = trunc nuw i128 %i.ifr to i64           ; 3 uses
  %i.ift = trunc i128 %i.ifq to i64
  store i64 %i.ift, ptr %i.ifm, align 8, !tbaa !91
  %indvars.iv.next7162.1 = add nuw nsw i64 %indvars.iv7161, 2 ; 2 uses
  %niter11123.next.1 = add i64 %niter11123, 2     ; 2 uses
  %niter11123.ncmp.1 = icmp eq i64 %niter11123.next.1, %unroll_iter11122
  br i1 %niter11123.ncmp.1, label %._crit_edge6336.unr-lcssa, label %.lr.ph6335, !llvm.loop !136

._crit_edge6336.unr-lcssa:                        ; preds = %.lr.ph6335
  %lcmp.mod11118.not = icmp eq i64 %xtraiter11117, 0
  br i1 %lcmp.mod11118.not, label %._crit_edge6336, label %.lr.ph6335.epil.preheader

.lr.ph6335.epil.preheader:                        ; preds = %._crit_edge6336.unr-lcssa, %.lr.ph6335.preheader
  %indvars.iv7161.epil.init = phi i64 [ %i.iez, %.lr.ph6335.preheader ], [ %indvars.iv.next7162.1, %._crit_edge6336.unr-lcssa ]
  %.0.i16336333.epil.init = phi i64 [ 0, %.lr.ph6335.preheader ], [ %i.ifs, %._crit_edge6336.unr-lcssa ]
  %lcmp.mod11121 = trunc i64 %i.ifa to i1
  call void @llvm.assume(i1 %lcmp.mod11121)
  %i.ifu = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7161.epil.init ; 2 uses
  %i.ifv = load i64, ptr %i.ifu, align 8, !tbaa !91
  %i.ifw = zext i64 %i.ifv to i128
  %i.ifx = mul nuw i128 %i.ifw, 10000000000000000000
  %i.ify = zext i64 %.0.i16336333.epil.init to i128
  %i.ifz = add nuw i128 %i.ifx, %i.ify            ; 2 uses
  %i.iga = lshr i128 %i.ifz, 64                   ; 2 uses
  %i.igb = trunc nuw i128 %i.iga to i64
  %i.igc = trunc i128 %i.ifz to i64
  store i64 %i.igc, ptr %i.ifu, align 8, !tbaa !91
  br label %._crit_edge6336

._crit_edge6336:                                  ; preds = %._crit_edge6336.unr-lcssa, %.lr.ph6335.epil.preheader
  %.lcssa10297 = phi i128 [ %i.ifr, %._crit_edge6336.unr-lcssa ], [ %i.iga, %.lr.ph6335.epil.preheader ]
  %.lcssa10296 = phi i64 [ %i.ifs, %._crit_edge6336.unr-lcssa ], [ %i.igb, %.lr.ph6335.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa10297, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.arl

bb.arl:                                           ; preds = %._crit_edge6336
  %i.igd = add i32 %i.ieu, 1
  %i.ige = zext i32 %i.ieu to i64
  %i.igf = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ige
  store i64 %.lcssa10296, ptr %i.igf, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.ark, %._crit_edge6328, %._crit_edge6336, %bb.arl
  %i.igg = phi i32 [ %i.ieu, %._crit_edge6336 ], [ %i.igd, %bb.arl ], [ %i.ieu, %._crit_edge6328 ], [ %i.ieu, %bb.ark ] ; 5 uses
  %i.igh = add nsw i32 %.0.i15316340, -19         ; 3 uses
  %i.igi = icmp sgt i32 %.0.i15316340, 37
  br i1 %i.igi, label %.lr.ph6342, label %._crit_edge6343, !llvm.loop !137

._crit_edge6343:                                  ; preds = %bigint_mul_u64.exit
  store i32 %i.igg, ptr %12, align 8
  %.not.i1532 = icmp eq i32 %i.igh, 0
  br i1 %.not.i1532, label %bigint_mul_pow10.exit1530, label %bb.arm

bb.arm:                                           ; preds = %._crit_edge6343
  %i.igj = sext i32 %i.igh to i64
  %i.igk = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.igj
  %i.igl = load i64, ptr %i.igk, align 8, !tbaa !91 ; 2 uses
  %.not6526 = icmp eq i32 %i.igg, 0
  br i1 %.not6526, label %._crit_edge6349, label %.lr.ph6348.preheader

.lr.ph6348.preheader:                             ; preds = %.thread8287, %bb.arm
  %i.igm = phi i64 [ %i.iet, %.thread8287 ], [ %i.igl, %bb.arm ]
  %i.ign = phi i32 [ 1, %.thread8287 ], [ %i.igg, %bb.arm ] ; 3 uses
  %wide.trip.count7169 = zext i32 %i.ign to i64
  br label %.lr.ph6348

.lr.ph6348:                                       ; preds = %.lr.ph6348.preheader, %bb.arn
  %indvars.iv7166 = phi i64 [ 0, %.lr.ph6348.preheader ], [ %indvars.iv.next7167, %bb.arn ] ; 3 uses
  %i.igo = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7166
  %i.igp = load i64, ptr %i.igo, align 8, !tbaa !91
  %.not.i1639 = icmp eq i64 %i.igp, 0
  br i1 %.not.i1639, label %bb.arn, label %._crit_edge6349.loopexit

bb.arn:                                           ; preds = %.lr.ph6348
  %indvars.iv.next7167 = add nuw nsw i64 %indvars.iv7166, 1 ; 2 uses
  %exitcond7170.not = icmp eq i64 %indvars.iv.next7167, %wide.trip.count7169
  br i1 %exitcond7170.not, label %bigint_mul_pow10.exit1530, label %.lr.ph6348, !llvm.loop !135

._crit_edge6349.loopexit:                         ; preds = %.lr.ph6348
  %i.igq = trunc nuw i64 %indvars.iv7166 to i32
  br label %._crit_edge6349

._crit_edge6349:                                  ; preds = %._crit_edge6349.loopexit, %bb.arm
  %i.igr = phi i64 [ %i.igl, %bb.arm ], [ %i.igm, %._crit_edge6349.loopexit ]
  %i.igs = phi i32 [ 0, %bb.arm ], [ %i.ign, %._crit_edge6349.loopexit ] ; 6 uses
  %.018.i1635.lcssa = phi i32 [ 0, %bb.arm ], [ %i.igq, %._crit_edge6349.loopexit ] ; 2 uses
  %i.igt = icmp ult i32 %.018.i1635.lcssa, %i.igs
  br i1 %i.igt, label %.lr.ph6356, label %bigint_mul_pow10.exit1530

.lr.ph6356:                                       ; preds = %._crit_edge6349
  %i.igu = zext i64 %i.igr to i128                ; 3 uses
  %i.igv = zext i32 %.018.i1635.lcssa to i64      ; 4 uses
  %wide.trip.count7174 = zext i32 %i.igs to i64   ; 2 uses
  %i.igw = sub nsw i64 %wide.trip.count7174, %i.igv ; 3 uses
  %xtraiter11125 = and i64 %i.igw, 1
  %i.igx = add nsw i64 %wide.trip.count7174, -1
  %i.igy = icmp eq i64 %i.igx, %i.igv
  br i1 %i.igy, label %.epil.preheader11124, label %.lr.ph6356.new

.lr.ph6356.new:                                   ; preds = %.lr.ph6356
  %unroll_iter11130 = and i64 %i.igw, -2
  br label %bb.aro

bb.aro:                                           ; preds = %bb.aro, %.lr.ph6356.new
  %indvars.iv7171 = phi i64 [ %i.igv, %.lr.ph6356.new ], [ %indvars.iv.next7172.1, %bb.aro ] ; 3 uses
  %.0.i16376354 = phi i64 [ 0, %.lr.ph6356.new ], [ %i.iho, %bb.aro ]
  %niter11131 = phi i64 [ 0, %.lr.ph6356.new ], [ %niter11131.next.1, %bb.aro ]
  %i.igz = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7171 ; 2 uses
  %i.iha = load i64, ptr %i.igz, align 8, !tbaa !91
  %i.ihb = zext i64 %i.iha to i128
  %i.ihc = mul nuw i128 %i.ihb, %i.igu
  %i.ihd = zext i64 %.0.i16376354 to i128
  %i.ihe = add nuw i128 %i.ihc, %i.ihd            ; 2 uses
  %i.ihf = lshr i128 %i.ihe, 64
  %i.ihg = trunc i128 %i.ihe to i64
  store i64 %i.ihg, ptr %i.igz, align 8, !tbaa !91
  %i.ihh = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7171
  %i.ihi = getelementptr inbounds nuw i8, ptr %i.ihh, i64 8 ; 2 uses
  %i.ihj = load i64, ptr %i.ihi, align 8, !tbaa !91
  %i.ihk = zext i64 %i.ihj to i128
  %i.ihl = mul nuw i128 %i.ihk, %i.igu
  %i.ihm = add nuw i128 %i.ihl, %i.ihf            ; 2 uses
  %i.ihn = lshr i128 %i.ihm, 64                   ; 2 uses
  %i.iho = trunc nuw i128 %i.ihn to i64           ; 3 uses
  %i.ihp = trunc i128 %i.ihm to i64
  store i64 %i.ihp, ptr %i.ihi, align 8, !tbaa !91
  %indvars.iv.next7172.1 = add nuw nsw i64 %indvars.iv7171, 2 ; 2 uses
  %niter11131.next.1 = add i64 %niter11131, 2     ; 2 uses
  %niter11131.ncmp.1 = icmp eq i64 %niter11131.next.1, %unroll_iter11130
  br i1 %niter11131.ncmp.1, label %._crit_edge6357.unr-lcssa, label %bb.aro, !llvm.loop !136

._crit_edge6357.unr-lcssa:                        ; preds = %bb.aro
  %lcmp.mod11126.not = icmp eq i64 %xtraiter11125, 0
  br i1 %lcmp.mod11126.not, label %._crit_edge6357, label %.epil.preheader11124

.epil.preheader11124:                             ; preds = %._crit_edge6357.unr-lcssa, %.lr.ph6356
  %indvars.iv7171.epil.init = phi i64 [ %i.igv, %.lr.ph6356 ], [ %indvars.iv.next7172.1, %._crit_edge6357.unr-lcssa ]
  %.0.i16376354.epil.init = phi i64 [ 0, %.lr.ph6356 ], [ %i.iho, %._crit_edge6357.unr-lcssa ]
  %lcmp.mod11129 = trunc i64 %i.igw to i1
  call void @llvm.assume(i1 %lcmp.mod11129)
  %i.ihq = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7171.epil.init ; 2 uses
  %i.ihr = load i64, ptr %i.ihq, align 8, !tbaa !91
  %i.ihs = zext i64 %i.ihr to i128
  %i.iht = mul nuw i128 %i.ihs, %i.igu
  %i.ihu = zext i64 %.0.i16376354.epil.init to i128
  %i.ihv = add nuw i128 %i.iht, %i.ihu            ; 2 uses
  %i.ihw = lshr i128 %i.ihv, 64                   ; 2 uses
  %i.ihx = trunc nuw i128 %i.ihw to i64
  %i.ihy = trunc i128 %i.ihv to i64
  store i64 %i.ihy, ptr %i.ihq, align 8, !tbaa !91
  br label %._crit_edge6357

._crit_edge6357:                                  ; preds = %._crit_edge6357.unr-lcssa, %.epil.preheader11124
  %.lcssa10292 = phi i128 [ %i.ihn, %._crit_edge6357.unr-lcssa ], [ %i.ihw, %.epil.preheader11124 ]
  %.lcssa10291 = phi i64 [ %i.iho, %._crit_edge6357.unr-lcssa ], [ %i.ihx, %.epil.preheader11124 ]
  %.not19.i1638 = icmp eq i128 %.lcssa10292, 0
  br i1 %.not19.i1638, label %bigint_mul_pow10.exit1530, label %bb.arp

bb.arp:                                           ; preds = %._crit_edge6357
  %i.ihz = add i32 %i.igs, 1
  br label %bigint_mul_pow10.exit1530.sink.split

bigint_mul_pow10.exit1530.sink.split:             ; preds = %bb.ari, %bb.arp
  %.sink9100 = phi i32 [ %i.igs, %bb.arp ], [ %i.ida, %bb.ari ]
  %i.iia = phi ptr [ %12, %bb.arp ], [ %11, %bb.ari ]
  %.lcssa8431.sink = phi i64 [ %.lcssa10291, %bb.arp ], [ %.lcssa10283, %bb.ari ]
  %.ph9096 = phi i32 [ %i.ihz, %bb.arp ], [ 1, %bb.ari ]
  %i.iib = getelementptr inbounds nuw i8, ptr %i.iia, i64 8
  %i.iic = zext i32 %.sink9100 to i64
  %i.iid = getelementptr inbounds nuw [8 x i8], ptr %i.iib, i64 %i.iic
  store i64 %.lcssa8431.sink, ptr %i.iid, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1530

bigint_mul_pow10.exit1530:                        ; preds = %bb.arn, %bb.arg, %bigint_mul_pow10.exit1530.sink.split, %._crit_edge6349, %._crit_edge6382, %._crit_edge6343, %._crit_edge6357, %._crit_edge6376, %._crit_edge6390
  %i.iie = phi i32 [ %i.igg, %._crit_edge6343 ], [ %i.igs, %._crit_edge6357 ], [ %i.igs, %._crit_edge6349 ], [ 1, %._crit_edge6376 ], [ 1, %._crit_edge6390 ], [ 1, %bb.arg ], [ %.ph9096, %bigint_mul_pow10.exit1530.sink.split ], [ 1, %._crit_edge6382 ], [ %i.ign, %bb.arn ] ; 16 uses
  %i.iif = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.iif, label %bb.arq, label %bb.ars

bb.arq:                                           ; preds = %bigint_mul_pow10.exit1530
  %i.iig = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.iih = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
  %i.iii = icmp eq i32 %i.iig, 0
  br i1 %i.iii, label %.preheader4959, label %bb.arr, !prof !8

.preheader4959:                                   ; preds = %bb.arq
  %.not46.i15896418 = icmp eq i32 %i.iie, 0
  br i1 %.not46.i15896418, label %.lr.ph6425.preheader, label %.lr.ph6420

.lr.ph6420:                                       ; preds = %.preheader4959
  %i.iij = add nsw i32 %i.iih, -1                 ; 6 uses
  %i.iik = zext i32 %i.iie to i64                 ; 9 uses
  %min.iters.check10242 = icmp ult i32 %i.iie, 30
  br i1 %min.iters.check10242, label %scalar.ph10241.preheader, label %vector.scevcheck10238

vector.scevcheck10238:                            ; preds = %.lr.ph6420
  %i.iil = add nsw i64 %i.iik, -1                 ; 2 uses
  %i.iim = add i32 %i.iie, %i.iih
  %i.iin = add i32 %i.iim, -1
  %i.iio = trunc i64 %i.iil to i32
  %i.iip = icmp ult i32 %i.iin, %i.iio
  %i.iiq = icmp ugt i64 %i.iil, 4294967295
  %i.iir = or i1 %i.iip, %i.iiq
  br i1 %i.iir, label %scalar.ph10241.preheader, label %vector.memcheck10239

vector.memcheck10239:                             ; preds = %vector.scevcheck10238
  %i.iis = add i32 %i.iie, %i.iih
  %i.iit = add i32 %i.iis, -1
  %i.iiu = zext i32 %i.iit to i64
  %i.iiv = sub nsw i64 %i.iik, %i.iiu
  %i.iiw = shl nsw i64 %i.iiv, 3
  %i.iix = add nsw i64 %i.iiw, -9
  %diff.check10240 = icmp ult i64 %i.iix, 31
  br i1 %diff.check10240, label %scalar.ph10241.preheader, label %vector.ph10243

vector.ph10243:                                   ; preds = %vector.memcheck10239
  %n.vec10244 = and i64 %i.iik, 4294967292        ; 2 uses
  %i.iiy = and i64 %i.iik, 3
  br label %vector.body10245

vector.body10245:                                 ; preds = %vector.body10245, %vector.ph10243
  %index10246 = phi i64 [ 0, %vector.ph10243 ], [ %index.next10249, %vector.body10245 ] ; 2 uses
  %i.iiz = sub i64 %i.iik, %index10246            ; 2 uses
  %i.ija = getelementptr [8 x i8], ptr %12, i64 %i.iiz ; 2 uses
  %i.ijb = getelementptr i8, ptr %i.ija, i64 -8
  %i.ijc = getelementptr i8, ptr %i.ija, i64 -24
  %wide.load10247 = load <2 x i64>, ptr %i.ijb, align 8, !tbaa !91
  %wide.load10248 = load <2 x i64>, ptr %i.ijc, align 8, !tbaa !91
  %i.ijd = trunc nuw i64 %i.iiz to i32
  %i.ije = add i32 %i.iij, %i.ijd
  %i.ijf = zext i32 %i.ije to i64
  %i.ijg = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ijf ; 2 uses
  %i.ijh = getelementptr inbounds i8, ptr %i.ijg, i64 -8
  %i.iji = getelementptr inbounds i8, ptr %i.ijg, i64 -24
  store <2 x i64> %wide.load10247, ptr %i.ijh, align 8, !tbaa !91
  store <2 x i64> %wide.load10248, ptr %i.iji, align 8, !tbaa !91
  %index.next10249 = add nuw i64 %index10246, 4   ; 2 uses
  %i.ijj = icmp eq i64 %index.next10249, %n.vec10244
  br i1 %i.ijj, label %middle.block10250, label %vector.body10245, !llvm.loop !191

middle.block10250:                                ; preds = %vector.body10245
  %cmp.n10251 = icmp eq i64 %n.vec10244, %i.iik
  br i1 %cmp.n10251, label %.lr.ph6425.preheader, label %scalar.ph10241.preheader

scalar.ph10241.preheader:                         ; preds = %vector.memcheck10239, %vector.scevcheck10238, %.lr.ph6420, %middle.block10250
  %indvars.iv7211.ph = phi i64 [ %i.iik, %vector.memcheck10239 ], [ %i.iik, %vector.scevcheck10238 ], [ %i.iik, %.lr.ph6420 ], [ %i.iiy, %middle.block10250 ] ; 4 uses
  %i.ijk = add nsw i64 %indvars.iv7211.ph, -1
  %xtraiter11156 = and i64 %indvars.iv7211.ph, 3  ; 2 uses
  %lcmp.mod11157.not = icmp eq i64 %xtraiter11156, 0
  br i1 %lcmp.mod11157.not, label %scalar.ph10241.prol.loopexit, label %scalar.ph10241.prol

scalar.ph10241.prol:                              ; preds = %scalar.ph10241.preheader, %scalar.ph10241.prol
  %indvars.iv7211.prol = phi i64 [ %i.ijl, %scalar.ph10241.prol ], [ %indvars.iv7211.ph, %scalar.ph10241.preheader ] ; 3 uses
  %prol.iter11158 = phi i64 [ %prol.iter11158.next, %scalar.ph10241.prol ], [ 0, %scalar.ph10241.preheader ]
  %i.ijl = add nsw i64 %indvars.iv7211.prol, -1   ; 2 uses
  %i.ijm = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7211.prol
  %i.ijn = load i64, ptr %i.ijm, align 8, !tbaa !91
  %i.ijo = trunc nuw i64 %indvars.iv7211.prol to i32
  %i.ijp = add i32 %i.iij, %i.ijo
  %i.ijq = zext i32 %i.ijp to i64
  %i.ijr = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ijq
  store i64 %i.ijn, ptr %i.ijr, align 8, !tbaa !91
  %prol.iter11158.next = add i64 %prol.iter11158, 1 ; 2 uses
  %prol.iter11158.cmp.not = icmp eq i64 %prol.iter11158.next, %xtraiter11156
  br i1 %prol.iter11158.cmp.not, label %scalar.ph10241.prol.loopexit, label %scalar.ph10241.prol, !llvm.loop !192

scalar.ph10241.prol.loopexit:                     ; preds = %scalar.ph10241.prol, %scalar.ph10241.preheader
  %indvars.iv7211.unr = phi i64 [ %indvars.iv7211.ph, %scalar.ph10241.preheader ], [ %i.ijl, %scalar.ph10241.prol ]
  %i.ijs = icmp ult i64 %i.ijk, 3
  br i1 %i.ijs, label %.lr.ph6425.preheader, label %scalar.ph10241

scalar.ph10241:                                   ; preds = %scalar.ph10241.prol.loopexit, %scalar.ph10241
  %indvars.iv7211 = phi i64 [ %i.iko, %scalar.ph10241 ], [ %indvars.iv7211.unr, %scalar.ph10241.prol.loopexit ] ; 6 uses
  %i.ijt = add nsw i64 %indvars.iv7211, -1        ; 2 uses
  %i.iju = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7211
  %i.ijv = load i64, ptr %i.iju, align 8, !tbaa !91
  %i.ijw = trunc nuw i64 %indvars.iv7211 to i32
  %i.ijx = add i32 %i.iij, %i.ijw
  %i.ijy = zext i32 %i.ijx to i64
  %i.ijz = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ijy
  store i64 %i.ijv, ptr %i.ijz, align 8, !tbaa !91
  %i.ika = add nsw i64 %indvars.iv7211, -2        ; 2 uses
  %i.ikb = getelementptr [8 x i8], ptr %12, i64 %i.ijt
  %i.ikc = load i64, ptr %i.ikb, align 8, !tbaa !91
  %i.ikd = trunc nuw i64 %i.ijt to i32
  %i.ike = add i32 %i.iij, %i.ikd
  %i.ikf = zext i32 %i.ike to i64
  %i.ikg = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ikf
  store i64 %i.ikc, ptr %i.ikg, align 8, !tbaa !91
  %i.ikh = add nsw i64 %indvars.iv7211, -3        ; 2 uses
  %i.iki = getelementptr [8 x i8], ptr %12, i64 %i.ika
  %i.ikj = load i64, ptr %i.iki, align 8, !tbaa !91
  %i.ikk = trunc nuw i64 %i.ika to i32
  %i.ikl = add i32 %i.iij, %i.ikk
  %i.ikm = zext i32 %i.ikl to i64
  %i.ikn = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ikm
  store i64 %i.ikj, ptr %i.ikn, align 8, !tbaa !91
  %i.iko = add nsw i64 %indvars.iv7211, -4        ; 2 uses
  %i.ikp = getelementptr [8 x i8], ptr %12, i64 %i.ikh
  %i.ikq = load i64, ptr %i.ikp, align 8, !tbaa !91
  %i.ikr = trunc nuw i64 %i.ikh to i32
  %i.iks = add i32 %i.iij, %i.ikr
  %i.ikt = zext i32 %i.iks to i64
  %i.iku = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ikt
  store i64 %i.ikq, ptr %i.iku, align 8, !tbaa !91
  %.not46.i1589.wide.3 = icmp eq i64 %i.iko, 0
  br i1 %.not46.i1589.wide.3, label %.lr.ph6425.preheader, label %scalar.ph10241, !llvm.loop !193

.lr.ph6425.preheader:                             ; preds = %scalar.ph10241.prol.loopexit, %scalar.ph10241, %middle.block10250, %.preheader4959
  %i.ikv = add i32 %i.iie, %i.iih                 ; 2 uses
  store i32 %i.ikv, ptr %12, align 8, !tbaa !138
  br label %.lr.ph6400.preheader

bb.arr:                                           ; preds = %bb.arq
  %i.ikw = zext i32 %i.iie to i64                 ; 10 uses
  %i.ikx = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ikw
  store i64 0, ptr %i.ikx, align 8, !tbaa !91
  %.not.i15856409 = icmp eq i32 %i.iie, 0
  %.pre7654 = zext nneg i32 %i.iig to i64         ; 5 uses
  br i1 %.not.i15856409, label %._crit_edge6413, label %.lr.ph6412

.lr.ph6412:                                       ; preds = %bb.arr
  %i.iky = sub nuw nsw i32 64, %i.iig
  %i.ikz = zext nneg i32 %i.iky to i64            ; 4 uses
  %min.iters.check10221 = icmp ult i32 %i.iie, 20
  br i1 %min.iters.check10221, label %scalar.ph10220.preheader, label %vector.scevcheck10215

vector.scevcheck10215:                            ; preds = %.lr.ph6412
  %i.ila = add nsw i64 %i.ikw, -1                 ; 2 uses
  %i.ilb = add i32 %i.iie, %i.iih
  %i.ilc = trunc i64 %i.ila to i32
  %i.ild = icmp ult i32 %i.ilb, %i.ilc
  %i.ile = icmp ugt i64 %i.ila, 4294967295
  %i.ilf = or i1 %i.ild, %i.ile
  br i1 %i.ilf, label %scalar.ph10220.preheader, label %vector.memcheck10216

vector.memcheck10216:                             ; preds = %vector.scevcheck10215
  %i.ilg = shl nuw nsw i64 %i.ikw, 3              ; 2 uses
  %i.ilh = add i32 %i.iie, %i.iih
  %i.ili = zext i32 %i.ilh to i64
  %i.ilj = shl nuw nsw i64 %i.ili, 3              ; 2 uses
  %i.ilk = sub nsw i64 %i.ilj, %i.ilg
  %diff.check10217 = icmp ugt i64 %i.ilk, -32
  %i.ill = sub nsw i64 %i.ilg, %i.ilj
  %i.ilm = add nsw i64 %i.ill, -9
  %diff.check10218 = icmp ult i64 %i.ilm, 31
  %conflict.rdx10219 = or i1 %diff.check10217, %diff.check10218
  br i1 %conflict.rdx10219, label %scalar.ph10220.preheader, label %vector.ph10222

vector.ph10222:                                   ; preds = %vector.memcheck10216
  %n.vec10223 = and i64 %i.ikw, 4294967292        ; 2 uses
  %i.iln = and i64 %i.ikw, 3
  %broadcast.splatinsert10224 = insertelement <2 x i64> poison, i64 %i.ikz, i64 0
  %broadcast.splat10225 = shufflevector <2 x i64> %broadcast.splatinsert10224, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10226.a = insertelement <2 x i64> poison, i64 %.pre7654, i64 0
  %broadcast.splat10227.a = shufflevector <2 x i64> %broadcast.splatinsert10226.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10228

vector.body10228:                                 ; preds = %vector.body10228, %vector.ph10222
  %index10229 = phi i64 [ 0, %vector.ph10222 ], [ %index.next10234, %vector.body10228 ] ; 2 uses
  %i.ilo = sub i64 %i.ikw, %index10229            ; 3 uses
  %i.ilp = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ilo ; 2 uses
  %i.ilq = getelementptr inbounds i8, ptr %i.ilp, i64 -8
  %i.ilr = getelementptr inbounds i8, ptr %i.ilp, i64 -24
  %wide.load10230 = load <2 x i64>, ptr %i.ilq, align 8, !tbaa !91
  %wide.load10231 = load <2 x i64>, ptr %i.ilr, align 8, !tbaa !91
  %i.ils = shl <2 x i64> %wide.load10230, %broadcast.splat10227.a
  %i.ilt = shl <2 x i64> %wide.load10231, %broadcast.splat10227.a
  %i.ilu = getelementptr [8 x i8], ptr %12, i64 %i.ilo ; 2 uses
  %i.ilv = getelementptr i8, ptr %i.ilu, i64 -8
  %i.ilw = getelementptr i8, ptr %i.ilu, i64 -24
  %wide.load10232.a = load <2 x i64>, ptr %i.ilv, align 8, !tbaa !91
  %wide.load10233.a = load <2 x i64>, ptr %i.ilw, align 8, !tbaa !91
  %i.ilx = lshr <2 x i64> %wide.load10232.a, %broadcast.splat10225
  %i.ily = lshr <2 x i64> %wide.load10233.a, %broadcast.splat10225
  %i.ilz = or <2 x i64> %i.ilx, %i.ils
  %i.ima = or <2 x i64> %i.ily, %i.ilt
  %i.imb = trunc nuw i64 %i.ilo to i32
  %i.imc = add i32 %i.iih, %i.imb
  %i.imd = zext i32 %i.imc to i64
  %i.ime = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.imd ; 2 uses
  %i.imf = getelementptr inbounds i8, ptr %i.ime, i64 -8
  %i.img = getelementptr inbounds i8, ptr %i.ime, i64 -24
  store <2 x i64> %i.ilz, ptr %i.imf, align 8, !tbaa !91
  store <2 x i64> %i.ima, ptr %i.img, align 8, !tbaa !91
  %index.next10234 = add nuw i64 %index10229, 4   ; 2 uses
  %i.imh = icmp eq i64 %index.next10234, %n.vec10223
  br i1 %i.imh, label %middle.block10235, label %vector.body10228, !llvm.loop !194

middle.block10235:                                ; preds = %vector.body10228
  %cmp.n10236 = icmp eq i64 %n.vec10223, %i.ikw
  br i1 %cmp.n10236, label %._crit_edge6413, label %scalar.ph10220.preheader

scalar.ph10220.preheader:                         ; preds = %vector.memcheck10216, %vector.scevcheck10215, %.lr.ph6412, %middle.block10235
  %indvars.iv7206.ph = phi i64 [ %i.ikw, %vector.memcheck10216 ], [ %i.ikw, %vector.scevcheck10215 ], [ %i.ikw, %.lr.ph6412 ], [ %i.iln, %middle.block10235 ] ; 7 uses
  %xtraiter11153 = and i64 %indvars.iv7206.ph, 1
  %lcmp.mod11154.not = icmp eq i64 %xtraiter11153, 0
  br i1 %lcmp.mod11154.not, label %scalar.ph10220.prol.loopexit, label %scalar.ph10220.prol

scalar.ph10220.prol:                              ; preds = %scalar.ph10220.preheader
  %i.imi = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7206.ph
  %i.imj = load i64, ptr %i.imi, align 8, !tbaa !91
  %i.imk = shl i64 %i.imj, %.pre7654
  %i.iml = add nsw i64 %indvars.iv7206.ph, -1
  %i.imm = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7206.ph
  %i.imn = load i64, ptr %i.imm, align 8, !tbaa !91
  %i.imo = lshr i64 %i.imn, %i.ikz
  %i.imp = or i64 %i.imo, %i.imk
  %i.imq = trunc nuw i64 %indvars.iv7206.ph to i32
  %i.imr = add i32 %i.iih, %i.imq
  %i.ims = zext i32 %i.imr to i64
  %i.imt = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.ims
  store i64 %i.imp, ptr %i.imt, align 8, !tbaa !91
  br label %scalar.ph10220.prol.loopexit

scalar.ph10220.prol.loopexit:                     ; preds = %scalar.ph10220.prol, %scalar.ph10220.preheader
  %indvars.iv7206.unr = phi i64 [ %indvars.iv7206.ph, %scalar.ph10220.preheader ], [ %i.iml, %scalar.ph10220.prol ]
  %i.imu = icmp eq i64 %indvars.iv7206.ph, 1
  br i1 %i.imu, label %._crit_edge6413, label %scalar.ph10220

scalar.ph10220:                                   ; preds = %scalar.ph10220.prol.loopexit, %scalar.ph10220
  %indvars.iv7206 = phi i64 [ %i.ink, %scalar.ph10220 ], [ %indvars.iv7206.unr, %scalar.ph10220.prol.loopexit ] ; 6 uses
  %i.imv = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %indvars.iv7206
  %i.imw = load i64, ptr %i.imv, align 8, !tbaa !91
  %i.imx = shl i64 %i.imw, %.pre7654
  %i.imy = add nsw i64 %indvars.iv7206, -1        ; 2 uses
  %i.imz = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7206
  %i.ina = load i64, ptr %i.imz, align 8, !tbaa !91
  %i.inb = lshr i64 %i.ina, %i.ikz
  %i.inc = or i64 %i.inb, %i.imx
  %i.ind = trunc nuw i64 %indvars.iv7206 to i32
  %i.ine = add i32 %i.iih, %i.ind
  %i.inf = zext i32 %i.ine to i64
  %i.ing = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.inf
  store i64 %i.inc, ptr %i.ing, align 8, !tbaa !91
  %i.inh = getelementptr [8 x i8], ptr %12, i64 %indvars.iv7206
  %i.ini = load i64, ptr %i.inh, align 8, !tbaa !91
  %i.inj = shl i64 %i.ini, %.pre7654
  %i.ink = add nsw i64 %indvars.iv7206, -2        ; 2 uses
  %i.inl = getelementptr [8 x i8], ptr %12, i64 %i.imy
  %i.inm = load i64, ptr %i.inl, align 8, !tbaa !91
  %i.inn = lshr i64 %i.inm, %i.ikz
  %i.ino = or i64 %i.inn, %i.inj
  %i.inp = trunc nuw i64 %i.imy to i32
  %i.inq = add i32 %i.iih, %i.inp
  %i.inr = zext i32 %i.inq to i64
  %i.ins = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.inr
  store i64 %i.ino, ptr %i.ins, align 8, !tbaa !91
  %.not.i1585.wide.1 = icmp eq i64 %i.ink, 0
  br i1 %.not.i1585.wide.1, label %._crit_edge6413, label %scalar.ph10220, !llvm.loop !195

._crit_edge6413:                                  ; preds = %scalar.ph10220.prol.loopexit, %scalar.ph10220, %middle.block10235, %bb.arr
  %i.int = load i64, ptr %i.ibg, align 8, !tbaa !91
  %i.inu = shl i64 %i.int, %.pre7654
  %i.inv = zext nneg i32 %i.iih to i64
  %i.inw = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.inv
  store i64 %i.inu, ptr %i.inw, align 8, !tbaa !91
  %i.inx = add i32 %i.iie, %i.iih                 ; 2 uses
  %i.iny = zext i32 %i.inx to i64
  %i.inz = getelementptr inbounds nuw [8 x i8], ptr %i.ibg, i64 %i.iny
  %i.ioa = load i64, ptr %i.inz, align 8, !tbaa !91
  %i.iob = icmp ne i64 %i.ioa, 0
  %i.ioc = zext i1 %i.iob to i32
  %i.iod = add i32 %i.inx, %i.ioc                 ; 2 uses
  %.not45.i15876414 = icmp eq i32 %i.iih, 0
  br i1 %.not45.i15876414, label %bigint_mul_pow2.exit1592, label %.lr.ph6400.preheader

bb.ars:                                           ; preds = %bigint_mul_pow10.exit1530
  %i.ioe = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.iof = and i32 %i.ioe, 63                     ; 3 uses
  %i.iog = lshr i32 %i.ioe, 6                     ; 16 uses
  %i.ioh = load i32, ptr %11, align 8, !tbaa !138 ; 12 uses
  %i.ioi = icmp eq i32 %i.iof, 0
  br i1 %i.ioi, label %.preheader4962, label %bb.art, !prof !8

.preheader4962:                                   ; preds = %bb.ars
  %.not46.i15986401 = icmp eq i32 %i.ioh, 0
  br i1 %.not46.i15986401, label %._crit_edge6404, label %.lr.ph6403

.lr.ph6403:                                       ; preds = %.preheader4962
  %i.ioj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.iok = add nsw i32 %i.iog, -1                 ; 6 uses
  %i.iol = zext i32 %i.ioh to i64                 ; 9 uses
  %min.iters.check10204 = icmp ult i32 %i.ioh, 30
  br i1 %min.iters.check10204, label %scalar.ph10203.preheader, label %vector.scevcheck10200

vector.scevcheck10200:                            ; preds = %.lr.ph6403
  %i.iom = add nsw i64 %i.iol, -1                 ; 2 uses
  %i.ion = add i32 %i.ioh, %i.iog
  %i.ioo = add i32 %i.ion, -1
  %i.iop = trunc i64 %i.iom to i32
  %i.ioq = icmp ult i32 %i.ioo, %i.iop
  %i.ior = icmp ugt i64 %i.iom, 4294967295
  %i.ios = or i1 %i.ioq, %i.ior
  br i1 %i.ios, label %scalar.ph10203.preheader, label %vector.memcheck10201

vector.memcheck10201:                             ; preds = %vector.scevcheck10200
  %i.iot = add i32 %i.ioh, %i.iog
  %i.iou = add i32 %i.iot, -1
  %i.iov = zext i32 %i.iou to i64
  %i.iow = sub nsw i64 %i.iol, %i.iov
  %i.iox = shl nsw i64 %i.iow, 3
  %i.ioy = add nsw i64 %i.iox, -9
  %diff.check10202 = icmp ult i64 %i.ioy, 31
  br i1 %diff.check10202, label %scalar.ph10203.preheader, label %vector.ph10205

vector.ph10205:                                   ; preds = %vector.memcheck10201
  %n.vec10206 = and i64 %i.iol, 4294967292        ; 2 uses
  %i.ioz = and i64 %i.iol, 3
  br label %vector.body10207

vector.body10207:                                 ; preds = %vector.body10207, %vector.ph10205
  %index10208 = phi i64 [ 0, %vector.ph10205 ], [ %index.next10211, %vector.body10207 ] ; 2 uses
  %i.ipa = sub i64 %i.iol, %index10208            ; 2 uses
  %i.ipb = getelementptr [8 x i8], ptr %11, i64 %i.ipa ; 2 uses
  %i.ipc = getelementptr i8, ptr %i.ipb, i64 -8
  %i.ipd = getelementptr i8, ptr %i.ipb, i64 -24
  %wide.load10209 = load <2 x i64>, ptr %i.ipc, align 8, !tbaa !91
  %wide.load10210 = load <2 x i64>, ptr %i.ipd, align 8, !tbaa !91
  %i.ipe = trunc nuw i64 %i.ipa to i32
  %i.ipf = add i32 %i.iok, %i.ipe
  %i.ipg = zext i32 %i.ipf to i64
  %i.iph = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.ipg ; 2 uses
  %i.ipi = getelementptr inbounds i8, ptr %i.iph, i64 -8
  %i.ipj = getelementptr inbounds i8, ptr %i.iph, i64 -24
  store <2 x i64> %wide.load10209, ptr %i.ipi, align 8, !tbaa !91
  store <2 x i64> %wide.load10210, ptr %i.ipj, align 8, !tbaa !91
  %index.next10211 = add nuw i64 %index10208, 4   ; 2 uses
  %i.ipk = icmp eq i64 %index.next10211, %n.vec10206
  br i1 %i.ipk, label %middle.block10212, label %vector.body10207, !llvm.loop !196

middle.block10212:                                ; preds = %vector.body10207
  %cmp.n10213 = icmp eq i64 %n.vec10206, %i.iol
  br i1 %cmp.n10213, label %._crit_edge6404, label %scalar.ph10203.preheader

scalar.ph10203.preheader:                         ; preds = %vector.memcheck10201, %vector.scevcheck10200, %.lr.ph6403, %middle.block10212
  %indvars.iv7201.ph = phi i64 [ %i.iol, %vector.memcheck10201 ], [ %i.iol, %vector.scevcheck10200 ], [ %i.iol, %.lr.ph6403 ], [ %i.ioz, %middle.block10212 ] ; 4 uses
  %i.ipl = add nsw i64 %indvars.iv7201.ph, -1
  %xtraiter11150 = and i64 %indvars.iv7201.ph, 3  ; 2 uses
  %lcmp.mod11151.not = icmp eq i64 %xtraiter11150, 0
  br i1 %lcmp.mod11151.not, label %scalar.ph10203.prol.loopexit, label %scalar.ph10203.prol

scalar.ph10203.prol:                              ; preds = %scalar.ph10203.preheader, %scalar.ph10203.prol
  %indvars.iv7201.prol = phi i64 [ %i.ipm, %scalar.ph10203.prol ], [ %indvars.iv7201.ph, %scalar.ph10203.preheader ] ; 3 uses
  %prol.iter11152 = phi i64 [ %prol.iter11152.next, %scalar.ph10203.prol ], [ 0, %scalar.ph10203.preheader ]
  %i.ipm = add nsw i64 %indvars.iv7201.prol, -1   ; 2 uses
  %i.ipn = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7201.prol
  %i.ipo = load i64, ptr %i.ipn, align 8, !tbaa !91
  %i.ipp = trunc nuw i64 %indvars.iv7201.prol to i32
  %i.ipq = add i32 %i.iok, %i.ipp
  %i.ipr = zext i32 %i.ipq to i64
  %i.ips = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.ipr
  store i64 %i.ipo, ptr %i.ips, align 8, !tbaa !91
  %prol.iter11152.next = add i64 %prol.iter11152, 1 ; 2 uses
  %prol.iter11152.cmp.not = icmp eq i64 %prol.iter11152.next, %xtraiter11150
  br i1 %prol.iter11152.cmp.not, label %scalar.ph10203.prol.loopexit, label %scalar.ph10203.prol, !llvm.loop !197

scalar.ph10203.prol.loopexit:                     ; preds = %scalar.ph10203.prol, %scalar.ph10203.preheader
  %indvars.iv7201.unr = phi i64 [ %indvars.iv7201.ph, %scalar.ph10203.preheader ], [ %i.ipm, %scalar.ph10203.prol ]
  %i.ipt = icmp ult i64 %i.ipl, 3
  br i1 %i.ipt, label %._crit_edge6404, label %scalar.ph10203

scalar.ph10203:                                   ; preds = %scalar.ph10203.prol.loopexit, %scalar.ph10203
  %indvars.iv7201 = phi i64 [ %i.iqp, %scalar.ph10203 ], [ %indvars.iv7201.unr, %scalar.ph10203.prol.loopexit ] ; 6 uses
  %i.ipu = add nsw i64 %indvars.iv7201, -1        ; 2 uses
  %i.ipv = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7201
  %i.ipw = load i64, ptr %i.ipv, align 8, !tbaa !91
  %i.ipx = trunc nuw i64 %indvars.iv7201 to i32
  %i.ipy = add i32 %i.iok, %i.ipx
  %i.ipz = zext i32 %i.ipy to i64
  %i.iqa = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.ipz
  store i64 %i.ipw, ptr %i.iqa, align 8, !tbaa !91
  %i.iqb = add nsw i64 %indvars.iv7201, -2        ; 2 uses
  %i.iqc = getelementptr [8 x i8], ptr %11, i64 %i.ipu
  %i.iqd = load i64, ptr %i.iqc, align 8, !tbaa !91
  %i.iqe = trunc nuw i64 %i.ipu to i32
  %i.iqf = add i32 %i.iok, %i.iqe
  %i.iqg = zext i32 %i.iqf to i64
  %i.iqh = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.iqg
  store i64 %i.iqd, ptr %i.iqh, align 8, !tbaa !91
  %i.iqi = add nsw i64 %indvars.iv7201, -3        ; 2 uses
  %i.iqj = getelementptr [8 x i8], ptr %11, i64 %i.iqb
  %i.iqk = load i64, ptr %i.iqj, align 8, !tbaa !91
  %i.iql = trunc nuw i64 %i.iqb to i32
  %i.iqm = add i32 %i.iok, %i.iql
  %i.iqn = zext i32 %i.iqm to i64
  %i.iqo = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.iqn
  store i64 %i.iqk, ptr %i.iqo, align 8, !tbaa !91
  %i.iqp = add nsw i64 %indvars.iv7201, -4        ; 2 uses
  %i.iqq = getelementptr [8 x i8], ptr %11, i64 %i.iqi
  %i.iqr = load i64, ptr %i.iqq, align 8, !tbaa !91
  %i.iqs = trunc nuw i64 %i.iqi to i32
  %i.iqt = add i32 %i.iok, %i.iqs
  %i.iqu = zext i32 %i.iqt to i64
  %i.iqv = getelementptr inbounds nuw [8 x i8], ptr %i.ioj, i64 %i.iqu
  store i64 %i.iqr, ptr %i.iqv, align 8, !tbaa !91
  %.not46.i1598.wide.3 = icmp eq i64 %i.iqp, 0
  br i1 %.not46.i1598.wide.3, label %._crit_edge6404, label %scalar.ph10203, !llvm.loop !198

._crit_edge6404:                                  ; preds = %scalar.ph10203.prol.loopexit, %scalar.ph10203, %middle.block10212, %.preheader4962
  %i.iqw = add i32 %i.ioh, %i.iog
  store i32 %i.iqw, ptr %11, align 8, !tbaa !138
  %.not47.i16006405 = icmp eq i32 %i.iog, 0
  br i1 %.not47.i16006405, label %bigint_mul_pow2.exit1592, label %.lr.ph6408

.lr.ph6408:                                       ; preds = %._crit_edge6404
  %i.iqx = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %.lr.ph6400.preheader

bb.art:                                           ; preds = %bb.ars
  %i.iqy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.iqz = zext i32 %i.ioh to i64                 ; 10 uses
  %i.ira = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.iqz
  store i64 0, ptr %i.ira, align 8, !tbaa !91
  %.not.i15946392 = icmp eq i32 %i.ioh, 0
  %.pre7656 = zext nneg i32 %i.iof to i64         ; 5 uses
  br i1 %.not.i15946392, label %._crit_edge6396, label %.lr.ph6395

.lr.ph6395:                                       ; preds = %bb.art
  %i.irb = sub nuw nsw i32 64, %i.iof
  %i.irc = zext nneg i32 %i.irb to i64            ; 4 uses
  %min.iters.check10183 = icmp ult i32 %i.ioh, 20
  br i1 %min.iters.check10183, label %scalar.ph10182.preheader, label %vector.scevcheck10177

vector.scevcheck10177:                            ; preds = %.lr.ph6395
  %i.ird = add nsw i64 %i.iqz, -1                 ; 2 uses
  %i.ire = add i32 %i.ioh, %i.iog
  %i.irf = trunc i64 %i.ird to i32
  %i.irg = icmp ult i32 %i.ire, %i.irf
  %i.irh = icmp ugt i64 %i.ird, 4294967295
  %i.iri = or i1 %i.irg, %i.irh
  br i1 %i.iri, label %scalar.ph10182.preheader, label %vector.memcheck10178

vector.memcheck10178:                             ; preds = %vector.scevcheck10177
  %i.irj = shl nuw nsw i64 %i.iqz, 3              ; 2 uses
  %i.irk = add i32 %i.ioh, %i.iog
  %i.irl = zext i32 %i.irk to i64
  %i.irm = shl nuw nsw i64 %i.irl, 3              ; 2 uses
  %i.irn = sub nsw i64 %i.irm, %i.irj
  %diff.check10179 = icmp ugt i64 %i.irn, -32
  %i.iro = sub nsw i64 %i.irj, %i.irm
  %i.irp = add nsw i64 %i.iro, -9
  %diff.check10180 = icmp ult i64 %i.irp, 31
  %conflict.rdx10181 = or i1 %diff.check10179, %diff.check10180
  br i1 %conflict.rdx10181, label %scalar.ph10182.preheader, label %vector.ph10184

vector.ph10184:                                   ; preds = %vector.memcheck10178
  %n.vec10185 = and i64 %i.iqz, 4294967292        ; 2 uses
  %i.irq = and i64 %i.iqz, 3
  %broadcast.splatinsert10186 = insertelement <2 x i64> poison, i64 %i.irc, i64 0
  %broadcast.splat10187 = shufflevector <2 x i64> %broadcast.splatinsert10186, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10188.a = insertelement <2 x i64> poison, i64 %.pre7656, i64 0
  %broadcast.splat10189.a = shufflevector <2 x i64> %broadcast.splatinsert10188.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10190

vector.body10190:                                 ; preds = %vector.body10190, %vector.ph10184
  %index10191 = phi i64 [ 0, %vector.ph10184 ], [ %index.next10196, %vector.body10190 ] ; 2 uses
  %i.irr = sub i64 %i.iqz, %index10191            ; 3 uses
  %i.irs = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.irr ; 2 uses
  %i.irt = getelementptr inbounds i8, ptr %i.irs, i64 -8
  %i.iru = getelementptr inbounds i8, ptr %i.irs, i64 -24
  %wide.load10192 = load <2 x i64>, ptr %i.irt, align 8, !tbaa !91
  %wide.load10193 = load <2 x i64>, ptr %i.iru, align 8, !tbaa !91
  %i.irv = shl <2 x i64> %wide.load10192, %broadcast.splat10189.a
  %i.irw = shl <2 x i64> %wide.load10193, %broadcast.splat10189.a
  %i.irx = getelementptr [8 x i8], ptr %11, i64 %i.irr ; 2 uses
  %i.iry = getelementptr i8, ptr %i.irx, i64 -8
  %i.irz = getelementptr i8, ptr %i.irx, i64 -24
  %wide.load10194.a = load <2 x i64>, ptr %i.iry, align 8, !tbaa !91
  %wide.load10195.a = load <2 x i64>, ptr %i.irz, align 8, !tbaa !91
  %i.isa = lshr <2 x i64> %wide.load10194.a, %broadcast.splat10187
  %i.isb = lshr <2 x i64> %wide.load10195.a, %broadcast.splat10187
  %i.isc = or <2 x i64> %i.isa, %i.irv
  %i.isd = or <2 x i64> %i.isb, %i.irw
  %i.ise = trunc nuw i64 %i.irr to i32
  %i.isf = add i32 %i.iog, %i.ise
  %i.isg = zext i32 %i.isf to i64
  %i.ish = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.isg ; 2 uses
  %i.isi = getelementptr inbounds i8, ptr %i.ish, i64 -8
  %i.isj = getelementptr inbounds i8, ptr %i.ish, i64 -24
  store <2 x i64> %i.isc, ptr %i.isi, align 8, !tbaa !91
  store <2 x i64> %i.isd, ptr %i.isj, align 8, !tbaa !91
  %index.next10196 = add nuw i64 %index10191, 4   ; 2 uses
  %i.isk = icmp eq i64 %index.next10196, %n.vec10185
  br i1 %i.isk, label %middle.block10197, label %vector.body10190, !llvm.loop !199

middle.block10197:                                ; preds = %vector.body10190
  %cmp.n10198 = icmp eq i64 %n.vec10185, %i.iqz
  br i1 %cmp.n10198, label %._crit_edge6396, label %scalar.ph10182.preheader

scalar.ph10182.preheader:                         ; preds = %vector.memcheck10178, %vector.scevcheck10177, %.lr.ph6395, %middle.block10197
  %indvars.iv7196.ph = phi i64 [ %i.iqz, %vector.memcheck10178 ], [ %i.iqz, %vector.scevcheck10177 ], [ %i.iqz, %.lr.ph6395 ], [ %i.irq, %middle.block10197 ] ; 7 uses
  %xtraiter11147 = and i64 %indvars.iv7196.ph, 1
  %lcmp.mod11148.not = icmp eq i64 %xtraiter11147, 0
  br i1 %lcmp.mod11148.not, label %scalar.ph10182.prol.loopexit, label %scalar.ph10182.prol

scalar.ph10182.prol:                              ; preds = %scalar.ph10182.preheader
  %i.isl = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %indvars.iv7196.ph
  %i.ism = load i64, ptr %i.isl, align 8, !tbaa !91
  %i.isn = shl i64 %i.ism, %.pre7656
  %i.iso = add nsw i64 %indvars.iv7196.ph, -1
  %i.isp = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196.ph
  %i.isq = load i64, ptr %i.isp, align 8, !tbaa !91
  %i.isr = lshr i64 %i.isq, %i.irc
  %i.iss = or i64 %i.isr, %i.isn
  %i.ist = trunc nuw i64 %indvars.iv7196.ph to i32
  %i.isu = add i32 %i.iog, %i.ist
  %i.isv = zext i32 %i.isu to i64
  %i.isw = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.isv
  store i64 %i.iss, ptr %i.isw, align 8, !tbaa !91
  br label %scalar.ph10182.prol.loopexit

scalar.ph10182.prol.loopexit:                     ; preds = %scalar.ph10182.prol, %scalar.ph10182.preheader
  %indvars.iv7196.unr = phi i64 [ %indvars.iv7196.ph, %scalar.ph10182.preheader ], [ %i.iso, %scalar.ph10182.prol ]
  %i.isx = icmp eq i64 %indvars.iv7196.ph, 1
  br i1 %i.isx, label %._crit_edge6396, label %scalar.ph10182

scalar.ph10182:                                   ; preds = %scalar.ph10182.prol.loopexit, %scalar.ph10182
  %indvars.iv7196 = phi i64 [ %i.itn, %scalar.ph10182 ], [ %indvars.iv7196.unr, %scalar.ph10182.prol.loopexit ] ; 6 uses
  %i.isy = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %indvars.iv7196
  %i.isz = load i64, ptr %i.isy, align 8, !tbaa !91
  %i.ita = shl i64 %i.isz, %.pre7656
  %i.itb = add nsw i64 %indvars.iv7196, -1        ; 2 uses
  %i.itc = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196
  %i.itd = load i64, ptr %i.itc, align 8, !tbaa !91
  %i.ite = lshr i64 %i.itd, %i.irc
  %i.itf = or i64 %i.ite, %i.ita
  %i.itg = trunc nuw i64 %indvars.iv7196 to i32
  %i.ith = add i32 %i.iog, %i.itg
  %i.iti = zext i32 %i.ith to i64
  %i.itj = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.iti
  store i64 %i.itf, ptr %i.itj, align 8, !tbaa !91
  %i.itk = getelementptr [8 x i8], ptr %11, i64 %indvars.iv7196
  %i.itl = load i64, ptr %i.itk, align 8, !tbaa !91
  %i.itm = shl i64 %i.itl, %.pre7656
  %i.itn = add nsw i64 %indvars.iv7196, -2        ; 2 uses
  %i.ito = getelementptr [8 x i8], ptr %11, i64 %i.itb
  %i.itp = load i64, ptr %i.ito, align 8, !tbaa !91
  %i.itq = lshr i64 %i.itp, %i.irc
  %i.itr = or i64 %i.itq, %i.itm
  %i.its = trunc nuw i64 %i.itb to i32
  %i.itt = add i32 %i.iog, %i.its
  %i.itu = zext i32 %i.itt to i64
  %i.itv = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.itu
  store i64 %i.itr, ptr %i.itv, align 8, !tbaa !91
  %.not.i1594.wide.1 = icmp eq i64 %i.itn, 0
  br i1 %.not.i1594.wide.1, label %._crit_edge6396, label %scalar.ph10182, !llvm.loop !200

._crit_edge6396:                                  ; preds = %scalar.ph10182.prol.loopexit, %scalar.ph10182, %middle.block10197, %bb.art
  %i.itw = load i64, ptr %i.iqy, align 8, !tbaa !91
  %i.itx = shl i64 %i.itw, %.pre7656
  %i.ity = zext nneg i32 %i.iog to i64
  %i.itz = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.ity
  store i64 %i.itx, ptr %i.itz, align 8, !tbaa !91
  %i.iua = add i32 %i.ioh, %i.iog                 ; 2 uses
  %i.iub = zext i32 %i.iua to i64
  %i.iuc = getelementptr inbounds nuw [8 x i8], ptr %i.iqy, i64 %i.iub
  %i.iud = load i64, ptr %i.iuc, align 8, !tbaa !91
  %i.iue = icmp ne i64 %i.iud, 0
  %i.iuf = zext i1 %i.iue to i32
  %i.iug = add i32 %i.iua, %i.iuf
  store i32 %i.iug, ptr %11, align 8, !tbaa !138
  %.not45.i15966397 = icmp eq i32 %i.iog, 0
  br i1 %.not45.i15966397, label %bigint_mul_pow2.exit1592, label %.lr.ph6400.preheader

.lr.ph6400.preheader:                             ; preds = %._crit_edge6396, %._crit_edge6413, %.lr.ph6425.preheader, %.lr.ph6408
  %.sink9133 = phi i32 [ %i.iih, %._crit_edge6413 ], [ %i.iog, %.lr.ph6408 ], [ %i.iih, %.lr.ph6425.preheader ], [ %i.iog, %._crit_edge6396 ]
  %.sink9128 = phi ptr [ %i.ibg, %._crit_edge6413 ], [ %i.iqx, %.lr.ph6408 ], [ %i.ibg, %.lr.ph6425.preheader ], [ %i.iqy, %._crit_edge6396 ]
  %.ph9127 = phi i32 [ %i.iod, %._crit_edge6413 ], [ %i.iie, %.lr.ph6408 ], [ %i.ikv, %.lr.ph6425.preheader ], [ %i.iie, %._crit_edge6396 ]
  %23 = add nsw i32 %.sink9133, -1
  %i.iuh = zext i32 %23 to i64
  %24 = shl nuw nsw i64 %i.iuh, 3
  %25 = add nuw nsw i64 %24, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9128, i8 0, i64 %25, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1592

bigint_mul_pow2.exit1592:                         ; preds = %.lr.ph6400.preheader, %._crit_edge6396, %._crit_edge6404, %._crit_edge6413
  %26 = phi i32 [ %i.iod, %._crit_edge6413 ], [ %i.iie, %._crit_edge6396 ], [ %i.iie, %._crit_edge6404 ], [ %.ph9127, %.lr.ph6400.preheader ] ; 2 uses
  %i.iui = load i32, ptr %11, align 8, !tbaa !138 ; 4 uses
  %i.iuj = icmp ult i32 %i.iui, %26
  br i1 %i.iuj, label %bigint_cmp.exit1631.thread, label %bb.aru

bb.aru:                                           ; preds = %bigint_mul_pow2.exit1592
  %i.iuk = icmp ugt i32 %i.iui, %26
  br i1 %i.iuk, label %bigint_cmp.exit1631.thread, label %.preheader4958

.preheader4958:                                   ; preds = %bb.aru
  %.not.i16259952 = icmp eq i32 %i.iui, 0
  br i1 %.not.i16259952, label %bigint_cmp.exit1631.thread4385, label %.lr.ph9955

.lr.ph9955:                                       ; preds = %.preheader4958
  %i.iul = zext i32 %i.iui to i64
  br label %bb.arw

bb.arv:                                           ; preds = %bb.arw
  %i.ium = add nsw i64 %indvars.iv72149953, -1    ; 2 uses
  %.not.i1625 = icmp eq i64 %i.ium, 0
  br i1 %.not.i1625, label %bigint_cmp.exit1631.thread4385, label %bb.arw, !llvm.loop !153

bb.arw:                                           ; preds = %.lr.ph9955, %bb.arv
  %.016.i16239954 = phi i32 [ undef, %.lr.ph9955 ], [ %.1.i1628, %bb.arv ]
  %indvars.iv72149953 = phi i64 [ %i.iul, %.lr.ph9955 ], [ %i.ium, %bb.arv ] ; 3 uses
  %i.iun = getelementptr [8 x i8], ptr %11, i64 %indvars.iv72149953
  %i.iuo = load i64, ptr %i.iun, align 8, !tbaa !91 ; 3 uses
  %i.iup = getelementptr [8 x i8], ptr %12, i64 %indvars.iv72149953
  %i.iuq = load i64, ptr %i.iup, align 8, !tbaa !91 ; 3 uses
  %.not4762 = icmp ult i64 %i.iuo, %i.iuq
  %.not4763 = icmp ugt i64 %i.iuo, %i.iuq
  %..016.i1626 = select i1 %.not4763, i32 1, i32 %.016.i16239954
  %.1.i1628 = select i1 %.not4762, i32 -1, i32 %..016.i1626 ; 3 uses
  %cond.i1629 = icmp eq i64 %i.iuo, %i.iuq
  br i1 %cond.i1629, label %bb.arv, label %bigint_cmp.exit1631, !llvm.loop !153

bigint_cmp.exit1631:                              ; preds = %bb.arw
  %.not989.i = icmp eq i32 %.1.i1628, 0
  br i1 %.not989.i, label %bigint_cmp.exit1631.thread4385, label %bigint_cmp.exit1631.thread, !prof !124

bigint_cmp.exit1631.thread:                       ; preds = %bigint_mul_pow2.exit1592, %bb.aru, %bigint_cmp.exit1631
  %.2.i16304384 = phi i32 [ %.1.i1628, %bigint_cmp.exit1631 ], [ -1, %bigint_mul_pow2.exit1592 ], [ 1, %bb.aru ]
  %i.iur = icmp sgt i32 %.2.i16304384, 0
  %i.ius = zext i1 %i.iur to i64
  br label %bb.arx

bigint_cmp.exit1631.thread4385:                   ; preds = %bb.arv, %.preheader4958, %bigint_cmp.exit1631
  %i.iut = and i64 %.0.i1509.ph, 1
  br label %bb.arx

bb.arx:                                           ; preds = %bigint_cmp.exit1631.thread4385, %bigint_cmp.exit1631.thread
  %.pn.i360 = phi i64 [ %i.ius, %bigint_cmp.exit1631.thread ], [ %i.iut, %bigint_cmp.exit1631.thread4385 ]
  %.0895.i = add nuw nsw i64 %.pn.i360, %.0.i1509.ph ; 2 uses
  %i.iuu = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.iuu, label %bb.ary, label %bb.asd, !prof !8

bb.ary:                                           ; preds = %bb.arx
  %i.iuv = and i32 %2, 128
  %.not4764 = icmp eq i32 %i.iuv, 0
  br i1 %.not4764, label %bb.asa, label %bb.arz, !prof !25

bb.arz:                                           ; preds = %bb.ary
  %i.iuw = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.iuw, align 1, !tbaa !81
  %i.iux = ptrtoint ptr %.33.i357 to i64
  %i.iuy = ptrtoint ptr %i.gtw to i64
  %i.iuz = sub i64 %i.iux, %i.iuy
  %i.iva = shl i64 %i.iuz, 8
  %i.ivb = or disjoint i64 %i.iva, 1
  store i64 %i.ivb, ptr %.5665.i347, align 8, !tbaa !79
  %i.ivc = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store ptr %i.gtw, ptr %i.ivc, align 8, !tbaa !81
  store ptr %.33.i357, ptr %i.h, align 8, !tbaa !92
  br label %.split4420

bb.asa:                                           ; preds = %bb.ary
  br i1 %.not4722, label %bb.asc, label %bb.asb, !prof !25

bb.asb:                                           ; preds = %bb.asa
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.ivd = select i1 %i.gub, i64 -4503599627370496, i64 9218868437227405312
  %i.ive = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ivd, ptr %i.ive, align 8, !tbaa !81
  br label %.split4420

bb.asc:                                           ; preds = %bb.asa
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  store ptr %i.gtw, ptr %i.e, align 8, !tbaa !92
  br label %.split4420.thread

bb.asd:                                           ; preds = %bb.arx
  store i64 20, ptr %.5665.i347, align 8, !tbaa !79
  %i.ivf = select i1 %i.gub, i64 -9223372036854775808, i64 0
  %i.ivg = or disjoint i64 %.0895.i, %i.ivf
  %i.ivh = getelementptr inbounds nuw i8, ptr %.5665.i347, i64 8
  store i64 %i.ivg, ptr %i.ivh, align 8, !tbaa !81
  br label %.split4420

.split4420.thread:                                ; preds = %bb.aqy, %bb.asc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bqv

.split4420:                                       ; preds = %bb.asd, %bb.asb, %bb.arz, %bb.ara, %bb.aqx, %bb.aqv
  store ptr %.33.i357, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

.preheader4979:                                   ; preds = %bb.axd, %bb.axe, %bb.axk, %bb.axj, %bb.axp, %bb.ayc, %bb.bql, %.split4389, %.split4406, %read_num.exit, %read_str_opt.exit942, %read_true.exit, %read_false.exit, %read_null.exit, %read_nan.exit, %read_inf.exit1474, %.split4407, %.split4405, %.split4417, %.split4409, %.split4401, %.split4400, %.split4399, %.split4408, %.split4410, %.split4411, %.split4412, %.split4415, %.split4416, %.split4390, %.split4391, %.split4392, %.split4393, %.split4394, %.split4395, %.split4396, %.split4397, %.split4398, %.split4404, %.split4403, %.split4402, %.split4414, %.split4413, %.split4418, %.split4419, %.split4420
  %.10779.i181.ph = phi i64 [ %.3772.i344, %.split4419 ], [ %.3772.i344, %.split4418 ], [ %.3772.i344, %.split4417 ], [ %.3772.i344, %.split4416 ], [ %.3772.i344, %.split4415 ], [ %.3772.i344, %.split4414 ], [ %.3772.i344, %.split4413 ], [ %.3772.i344, %.split4412 ], [ %.3772.i344, %.split4411 ], [ %.3772.i344, %.split4410 ], [ %.3772.i344, %.split4409 ], [ %.3772.i344, %.split4408 ], [ %.3772.i344, %.split4407 ], [ %.3772.i344, %.split4406 ], [ %.3772.i344, %.split4405 ], [ %.3772.i344, %read_inf.exit1474 ], [ %.3772.i344, %.split4404 ], [ %.3772.i344, %.split4403 ], [ %.3772.i344, %.split4402 ], [ %.3772.i344, %.split4401 ], [ %.3772.i344, %.split4400 ], [ %.3772.i344, %.split4399 ], [ %.3772.i344, %.split4398 ], [ %.3772.i344, %.split4397 ], [ %.3772.i344, %.split4396 ], [ %.3772.i344, %.split4395 ], [ %.3772.i344, %.split4394 ], [ %.3772.i344, %.split4393 ], [ %.3772.i344, %.split4392 ], [ %.3772.i344, %.split4391 ], [ %.3772.i344, %.split4390 ], [ %.3772.i344, %.split4389 ], [ %.3772.i344, %.split4420 ], [ %.9778.i320, %bb.axp ], [ %.20789.i175, %bb.bql ], [ %.11780.i187, %bb.ayc ], [ %.7776.i272, %read_nan.exit ], [ %.7776.i272, %read_null.exit ], [ %.6775.i284, %read_false.exit ], [ %.5774.i296, %read_true.exit ], [ %.4773.i308, %read_str_opt.exit942 ], [ %.3772.i344, %read_num.exit ], [ %.8777.i3328304, %bb.axj ], [ %.8777.i3328304, %bb.axk ], [ %.8777.i3328304, %bb.axe ], [ %.8777.i3328304, %bb.axd ] ; 2 uses
  %.2762.i182.ph = phi i64 [ %i.gtx, %.split4419 ], [ %i.gtx, %.split4418 ], [ %i.gtx, %.split4417 ], [ %i.gtx, %.split4416 ], [ %i.gtx, %.split4415 ], [ %i.gtx, %.split4414 ], [ %i.gtx, %.split4413 ], [ %i.gtx, %.split4412 ], [ %i.gtx, %.split4411 ], [ %i.gtx, %.split4410 ], [ %i.gtx, %.split4409 ], [ %i.gtx, %.split4408 ], [ %i.gtx, %.split4407 ], [ %i.gtx, %.split4406 ], [ %i.gtx, %.split4405 ], [ %i.gtx, %read_inf.exit1474 ], [ %i.gtx, %.split4404 ], [ %i.gtx, %.split4403 ], [ %i.gtx, %.split4402 ], [ %i.gtx, %.split4401 ], [ %i.gtx, %.split4400 ], [ %i.gtx, %.split4399 ], [ %i.gtx, %.split4398 ], [ %i.gtx, %.split4397 ], [ %i.gtx, %.split4396 ], [ %i.gtx, %.split4395 ], [ %i.gtx, %.split4394 ], [ %i.gtx, %.split4393 ], [ %i.gtx, %.split4392 ], [ %i.gtx, %.split4391 ], [ %i.gtx, %.split4390 ], [ %i.gtx, %.split4389 ], [ %i.gtx, %.split4420 ], [ %i.jxi, %bb.axp ], [ %i.nxx, %bb.bql ], [ %i.jyr, %bb.ayc ], [ %i.jrh, %read_nan.exit ], [ %i.jrh, %read_null.exit ], [ %i.jqp, %read_false.exit ], [ %i.jpv, %read_true.exit ], [ %i.ivz, %read_str_opt.exit942 ], [ %i.gtx, %read_num.exit ], [ %i.jtx, %bb.axj ], [ %i.jtx, %bb.axk ], [ %i.jtx, %bb.axe ], [ %i.jtx, %bb.axd ] ; 2 uses
  %.18744.i183.ph = phi ptr [ %.5731.i345, %.split4419 ], [ %.5731.i345, %.split4418 ], [ %.5731.i345, %.split4417 ], [ %.5731.i345, %.split4416 ], [ %.5731.i345, %.split4415 ], [ %.5731.i345, %.split4414 ], [ %.5731.i345, %.split4413 ], [ %.5731.i345, %.split4412 ], [ %.5731.i345, %.split4411 ], [ %.5731.i345, %.split4410 ], [ %.5731.i345, %.split4409 ], [ %.5731.i345, %.split4408 ], [ %.5731.i345, %.split4407 ], [ %.5731.i345, %.split4406 ], [ %.5731.i345, %.split4405 ], [ %.5731.i345, %read_inf.exit1474 ], [ %.5731.i345, %.split4404 ], [ %.5731.i345, %.split4403 ], [ %.5731.i345, %.split4402 ], [ %.5731.i345, %.split4401 ], [ %.5731.i345, %.split4400 ], [ %.5731.i345, %.split4399 ], [ %.5731.i345, %.split4398 ], [ %.5731.i345, %.split4397 ], [ %.5731.i345, %.split4396 ], [ %.5731.i345, %.split4395 ], [ %.5731.i345, %.split4394 ], [ %.5731.i345, %.split4393 ], [ %.5731.i345, %.split4392 ], [ %.5731.i345, %.split4391 ], [ %.5731.i345, %.split4390 ], [ %.5731.i345, %.split4389 ], [ %.5731.i345, %.split4420 ], [ %.17743.i321, %bb.axp ], [ %.32758.i177, %bb.bql ], [ %.19745.i189, %bb.ayc ], [ %.13739.i273, %read_nan.exit ], [ %.13739.i273, %read_null.exit ], [ %.11737.i285, %read_false.exit ], [ %.9735.i297, %read_true.exit ], [ %.7733.i309, %read_str_opt.exit942 ], [ %.5731.i345, %read_num.exit ], [ %.15741.i3338306, %bb.axj ], [ %.15741.i3338306, %bb.axk ], [ %.15741.i3338306, %bb.axe ], [ %.15741.i3338306, %bb.axd ] ; 4 uses
  %.18711.i184.ph = phi ptr [ %.5698.i346, %.split4419 ], [ %.5698.i346, %.split4418 ], [ %.5698.i346, %.split4417 ], [ %.5698.i346, %.split4416 ], [ %.5698.i346, %.split4415 ], [ %.5698.i346, %.split4414 ], [ %.5698.i346, %.split4413 ], [ %.5698.i346, %.split4412 ], [ %.5698.i346, %.split4411 ], [ %.5698.i346, %.split4410 ], [ %.5698.i346, %.split4409 ], [ %.5698.i346, %.split4408 ], [ %.5698.i346, %.split4407 ], [ %.5698.i346, %.split4406 ], [ %.5698.i346, %.split4405 ], [ %.5698.i346, %read_inf.exit1474 ], [ %.5698.i346, %.split4404 ], [ %.5698.i346, %.split4403 ], [ %.5698.i346, %.split4402 ], [ %.5698.i346, %.split4401 ], [ %.5698.i346, %.split4400 ], [ %.5698.i346, %.split4399 ], [ %.5698.i346, %.split4398 ], [ %.5698.i346, %.split4397 ], [ %.5698.i346, %.split4396 ], [ %.5698.i346, %.split4395 ], [ %.5698.i346, %.split4394 ], [ %.5698.i346, %.split4393 ], [ %.5698.i346, %.split4392 ], [ %.5698.i346, %.split4391 ], [ %.5698.i346, %.split4390 ], [ %.5698.i346, %.split4389 ], [ %.5698.i346, %.split4420 ], [ %.17710.i322, %bb.axp ], [ %.32725.i178, %bb.bql ], [ %.19712.i190, %bb.ayc ], [ %.13706.i274, %read_nan.exit ], [ %.13706.i274, %read_null.exit ], [ %.11704.i286, %read_false.exit ], [ %.9702.i298, %read_true.exit ], [ %.7700.i310, %read_str_opt.exit942 ], [ %.5698.i346, %read_num.exit ], [ %.15708.i3348310, %bb.axj ], [ %.15708.i3348310, %bb.axk ], [ %.15708.i3348310, %bb.axe ], [ %.15708.i3348310, %bb.axd ] ; 2 uses
  %.18678.i185.ph = phi ptr [ %.5665.i347, %.split4419 ], [ %.5665.i347, %.split4418 ], [ %.5665.i347, %.split4417 ], [ %.5665.i347, %.split4416 ], [ %.5665.i347, %.split4415 ], [ %.5665.i347, %.split4414 ], [ %.5665.i347, %.split4413 ], [ %.5665.i347, %.split4412 ], [ %.5665.i347, %.split4411 ], [ %.5665.i347, %.split4410 ], [ %.5665.i347, %.split4409 ], [ %.5665.i347, %.split4408 ], [ %.5665.i347, %.split4407 ], [ %.5665.i347, %.split4406 ], [ %.5665.i347, %.split4405 ], [ %.5665.i347, %read_inf.exit1474 ], [ %.5665.i347, %.split4404 ], [ %.5665.i347, %.split4403 ], [ %.5665.i347, %.split4402 ], [ %.5665.i347, %.split4401 ], [ %.5665.i347, %.split4400 ], [ %.5665.i347, %.split4399 ], [ %.5665.i347, %.split4398 ], [ %.5665.i347, %.split4397 ], [ %.5665.i347, %.split4396 ], [ %.5665.i347, %.split4395 ], [ %.5665.i347, %.split4394 ], [ %.5665.i347, %.split4393 ], [ %.5665.i347, %.split4392 ], [ %.5665.i347, %.split4391 ], [ %.5665.i347, %.split4390 ], [ %.5665.i347, %.split4389 ], [ %.5665.i347, %.split4420 ], [ %.17677.i323, %bb.axp ], [ %.32692.i179, %bb.bql ], [ %.19679.i191, %bb.ayc ], [ %.13673.i275, %read_nan.exit ], [ %.13673.i275, %read_null.exit ], [ %.11671.i287, %read_false.exit ], [ %.9669.i299, %read_true.exit ], [ %.7667.i311, %read_str_opt.exit942 ], [ %.5665.i347, %read_num.exit ], [ %.15675.i3358312, %bb.axj ], [ %.15675.i3358312, %bb.axk ], [ %.15675.i3358312, %bb.axe ], [ %.15675.i3358312, %bb.axd ] ; 2 uses
  %.18.i186.ph = phi ptr [ %.5653.i348, %.split4419 ], [ %.5653.i348, %.split4418 ], [ %.5653.i348, %.split4417 ], [ %.5653.i348, %.split4416 ], [ %.5653.i348, %.split4415 ], [ %.5653.i348, %.split4414 ], [ %.5653.i348, %.split4413 ], [ %.5653.i348, %.split4412 ], [ %.5653.i348, %.split4411 ], [ %.5653.i348, %.split4410 ], [ %.5653.i348, %.split4409 ], [ %.5653.i348, %.split4408 ], [ %.5653.i348, %.split4407 ], [ %.5653.i348, %.split4406 ], [ %.5653.i348, %.split4405 ], [ %.5653.i348, %read_inf.exit1474 ], [ %.5653.i348, %.split4404 ], [ %.5653.i348, %.split4403 ], [ %.5653.i348, %.split4402 ], [ %.5653.i348, %.split4401 ], [ %.5653.i348, %.split4400 ], [ %.5653.i348, %.split4399 ], [ %.5653.i348, %.split4398 ], [ %.5653.i348, %.split4397 ], [ %.5653.i348, %.split4396 ], [ %.5653.i348, %.split4395 ], [ %.5653.i348, %.split4394 ], [ %.5653.i348, %.split4393 ], [ %.5653.i348, %.split4392 ], [ %.5653.i348, %.split4391 ], [ %.5653.i348, %.split4390 ], [ %.5653.i348, %.split4389 ], [ %.5653.i348, %.split4420 ], [ %.17.i324, %bb.axp ], [ %i.nxv, %bb.bql ], [ %i.jyp, %bb.ayc ], [ %.13.i276, %read_nan.exit ], [ %.13.i276, %read_null.exit ], [ %.11659.i288, %read_false.exit ], [ %.9657.i300, %read_true.exit ], [ %.7655.i312, %read_str_opt.exit942 ], [ %.5653.i348, %read_num.exit ], [ %.15.i3368316, %bb.axj ], [ %.15.i3368316, %bb.axk ], [ %.15.i3368316, %bb.axe ], [ %.15.i3368316, %bb.axd ] ; 2 uses
  %i.ivi = and i32 %2, 2056
  %.not4771 = icmp eq i32 %i.ivi, 0
  %.pre7573 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4981

read_num.exit.thread:                             ; preds = %bb.app, %bb.apw, %bb.aqf, %bb.akr, %bb.apf, %bb.apl, %bb.akt, %bb.akv, %read_inf_or_nan.exit847.thread, %bb.aox
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bqv

read_num.exit:                                    ; preds = %bb.amd, %bb.amg, %bb.amj, %bb.apr, %bb.apt, %bb.apv, %bb.apz, %bb.aqc, %bb.aqe
  %.sink9101 = phi ptr [ %i.haz, %bb.amd ], [ %i.hbg, %bb.amg ], [ %i.hbn, %bb.amj ], [ %.31.i354.lcssa, %bb.apr ], [ %.31.i354.lcssa, %bb.apt ], [ %.31.i354.lcssa, %bb.apv ], [ %.32.i355, %bb.apz ], [ %.32.i355, %bb.aqc ], [ %.32.i355, %bb.aqe ]
  store ptr %.sink9101, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %.preheader4979

bb.ase:                                           ; preds = %bb.ajs
  switch i8 %i.gtc, label %bb.awo [
    i8 34, label %bb.asf
    i8 116, label %bb.avv
    i8 102, label %bb.avy
    i8 110, label %bb.awb
    i8 93, label %bb.awm
  ]

bb.asf:                                           ; preds = %bb.ase
  %i.ivj = getelementptr inbounds nuw i8, ptr %.3663.i121.ph, i64 16 ; 3 uses
  %.not867.i301 = icmp ult ptr %i.ivj, %.3696.i120.ph
  br i1 %.not867.i301, label %bb.ash, label %bb.asg, !prof !25

bb.asg:                                           ; preds = %bb.asf
  %i.ivk = lshr i64 %.2771.i117.ph, 1
  %i.ivl = add i64 %i.ivk, %.2771.i117.ph         ; 3 uses
  %i.ivm = shl i64 %.2771.i117.ph, 4
  %i.ivn = shl i64 %i.ivl, 4
  %i.ivo = call ptr %.sroa.52178.0.copyload2180(ptr noundef %.sroa.312208.0.copyload2210, ptr noundef %.3729.i119.ph, i64 noundef %i.ivm, i64 noundef %i.ivn) #33, !inline_history !188 ; 5 uses
  %.not868.i302 = icmp eq ptr %i.ivo, null
  br i1 %.not868.i302, label %bb.bqz, label %.thread4421

.thread4421:                                      ; preds = %bb.asg
  %i.ivp = ptrtoint ptr %.3651.i122.ph to i64
  %i.ivq = ptrtoint ptr %.3729.i119.ph to i64     ; 2 uses
  %i.ivr = sub i64 %i.ivp, %i.ivq
  %i.ivs = ptrtoint ptr %i.ivj to i64
  %i.ivt = sub i64 %i.ivs, %i.ivq
  %i.ivu = getelementptr inbounds nuw i8, ptr %i.ivo, i64 %i.ivt
  %i.ivv = getelementptr inbounds nuw i8, ptr %i.ivo, i64 %i.ivr
  %i.ivw = getelementptr [16 x i8], ptr %i.ivo, i64 %i.ivl
  %i.ivx = getelementptr i8, ptr %i.ivw, i64 -32
  %.pre7588 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %bb.ash

bb.ash:                                           ; preds = %.thread4421, %bb.asf
  %i.ivy = phi ptr [ %.pre7588, %.thread4421 ], [ %.promoted6294, %bb.asf ]
  %.4773.i308 = phi i64 [ %i.ivl, %.thread4421 ], [ %.2771.i117.ph, %bb.asf ]
  %.7733.i309 = phi ptr [ %i.ivo, %.thread4421 ], [ %.3729.i119.ph, %bb.asf ] ; 22 uses
  %.7700.i310 = phi ptr [ %i.ivx, %.thread4421 ], [ %.3696.i120.ph, %bb.asf ]
  %.7667.i311 = phi ptr [ %i.ivu, %.thread4421 ], [ %i.ivj, %bb.asf ] ; 3 uses
  %.7655.i312 = phi ptr [ %i.ivv, %.thread4421 ], [ %.3651.i122.ph, %bb.asf ]
  %i.ivz = add i64 %.1761.i118.ph, 1
  %i.iwa = getelementptr inbounds nuw i8, ptr %i.ivy, i64 1 ; 3 uses
  %i.iwb = and i32 %2, 64
  %.not4716 = icmp eq i32 %i.iwb, 0               ; 3 uses
  br label %.backedge4955

.backedge4955:                                    ; preds = %.backedge4955.backedge, %bb.ash
  %.04128 = phi ptr [ %i.iwa, %bb.ash ], [ %.04128.be, %.backedge4955.backedge ] ; 18 uses
  %i.iwc = load i8, ptr %.04128, align 1, !tbaa !81 ; 2 uses
  %i.iwd = zext i8 %i.iwc to i64
  %i.iwe = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iwd
  %i.iwf = load i8, ptr %i.iwe, align 1, !tbaa !81
  %i.iwg = trunc i8 %i.iwf to i1
  br i1 %i.iwg, label %bb.asi, label %bb.asy, !prof !25

bb.asi:                                           ; preds = %.backedge4955
  %i.iwh = getelementptr inbounds nuw i8, ptr %.04128, i64 1 ; 2 uses
  %i.iwi = load i8, ptr %i.iwh, align 1, !tbaa !81 ; 2 uses
  %i.iwj = zext i8 %i.iwi to i64
  %i.iwk = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iwj
  %i.iwl = load i8, ptr %i.iwk, align 1, !tbaa !81
  %i.iwm = trunc i8 %i.iwl to i1
  br i1 %i.iwm, label %bb.asj, label %bb.asy, !prof !25

bb.asj:                                           ; preds = %bb.asi
  %i.iwn = getelementptr inbounds nuw i8, ptr %.04128, i64 2 ; 2 uses
  %i.iwo = load i8, ptr %i.iwn, align 1, !tbaa !81 ; 2 uses
  %i.iwp = zext i8 %i.iwo to i64
  %i.iwq = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iwp
  %i.iwr = load i8, ptr %i.iwq, align 1, !tbaa !81
  %i.iws = trunc i8 %i.iwr to i1
end_hunk_5
begin_hunk_6_@yyjson_read_opts:bb.a
  %i.mtt = icmp ult i64 %i.mtq, %i.mtg
  %i.mtu = zext i1 %i.mtt to i64
  %i.mtv = add nuw i64 %i.mtu, %i.mtf
  br label %.split4568

.split4568:                                       ; preds = %bb.bmy, %bb.bmw
  %.03994 = phi i64 [ %i.mtf, %bb.bmw ], [ %i.mtv, %bb.bmy ] ; 2 uses
  %i.mtw = icmp sgt i64 %.03994, -1               ; 2 uses
  %.neg983.i435 = sext i1 %i.mtw to i32
  %i.mtx = zext i1 %i.mtw to i64
  %i.mty = shl i64 %.03994, %i.mtx                ; 2 uses
  %i.mtz = and i64 %i.mty, 1024
  %i.mua = add i64 %i.mtz, %i.mty                 ; 2 uses
  %i.mub = icmp ult i64 %i.mua, 1024
  %spec.select4626.v = select i1 %i.mub, i32 65, i32 64
  %i.muc = lshr i64 %i.mua, 11
  %reass.sub6521 = sub nsw i32 %i.msx, %i.msz
  %i.mud = add nsw i32 %reass.sub6521, 1086
  %spec.select4626 = add nsw i32 %i.mud, %.neg983.i435
  %i.mue = add nsw i32 %spec.select4626, %spec.select4626.v
  %i.muf = zext nneg i32 %i.mue to i64
  %i.mug = shl nuw nsw i64 %i.muf, 52
  %i.muh = and i64 %i.muc, 4503599627370495
  %i.mui = or disjoint i64 %i.mug, %i.muh
  store i64 20, ptr %i.lqg, align 8, !tbaa !79
  %i.muj = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.muk = or disjoint i64 %i.mui, %i.muj
  %i.mul = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.muk, ptr %i.mul, align 8, !tbaa !81
  store ptr %.33.i406, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

.critedge992.i434:                                ; preds = %..critedge992.i434_crit_edge, %bb.bmx
  %.pre-phi7675 = phi i32 [ %.pre7674, %..critedge992.i434_crit_edge ], [ %i.msz, %bb.bmx ]
  %.pre-phi7673 = phi i128 [ %.pre7672, %..critedge992.i434_crit_edge ], [ %i.mtb, %bb.bmx ]
  %.pre-phi7671 = phi i32 [ %.pre7670, %..critedge992.i434_crit_edge ], [ %i.msx, %bb.bmx ]
  %.pre-phi7665 = phi i32 [ %.pre7664, %..critedge992.i434_crit_edge ], [ %i.msq, %bb.bmx ] ; 2 uses
  %.pre-phi7661 = phi i64 [ %.pre7660, %..critedge992.i434_crit_edge ], [ %i.msy, %bb.bmx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.mum = select i1 %i.msm, i64 0, i64 4
  %i.mun = shl i64 %i.mum, %.pre-phi7661          ; 2 uses
  %i.muo = add i32 %.pre-phi7665, 686
  %i.mup = sext i32 %i.muo to i64
  %i.muq = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.mup
  %i.mur = load i64, ptr %i.muq, align 16, !tbaa !91
  %i.mus = add i32 %.pre-phi7665, 687
  %i.mut = sext i32 %i.mus to i64
  %i.muu = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.mut
  %i.muv = load i64, ptr %i.muu, align 8, !tbaa !91
  %i.muw = lshr i64 %i.muv, 63
  %i.mux = add i64 %i.muw, %i.mur
  %i.muy = zext i64 %i.mux to i128
  %i.muz = mul nuw i128 %.pre-phi7673, %i.muy     ; 2 uses
  %i.mva = lshr i128 %i.muz, 64
  %i.mvb = trunc nuw i128 %i.mva to i64
  %i.mvc = trunc i128 %i.muz to i64
  %i.mvd = lshr i64 %i.mvc, 63
  %i.mve = add nuw i64 %i.mvd, %i.mvb             ; 2 uses
  %.not986.i415 = icmp eq i64 %i.mun, 0
  %i.mvf = select i1 %.not986.i415, i64 8, i64 9
  %i.mvg = add i64 %i.mvf, %i.mun
  %i.mvh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mve, i1 true) ; 3 uses
  %i.mvi = trunc nuw nsw i64 %i.mvh to i32
  %i.mvj = shl i64 %i.mve, %i.mvh                 ; 3 uses
  %i.mvk = add nsw i32 %.pre-phi7671, 64
  %i.mvl = add nuw nsw i32 %.pre-phi7675, %i.mvi
  %i.mvm = sub nsw i32 %i.mvk, %i.mvl             ; 7 uses
  %i.mvn = shl i64 %i.mvg, %i.mvh                 ; 3 uses
  %i.mvo = icmp sgt i32 %i.mvm, -1086
  br i1 %i.mvo, label %.thread4527, label %bb.bmz, !prof !25

bb.bmz:                                           ; preds = %.critedge992.i434
  %i.mvp = icmp samesign ult i32 %i.mvm, -1137
  br i1 %i.mvp, label %.thread4524, label %bb.bna

bb.bna:                                           ; preds = %bb.bmz
  %i.mvq = sub nuw nsw i32 -1074, %i.mvm          ; 2 uses
  %i.mvr = icmp samesign ult i32 %i.mvm, -1134
  br i1 %i.mvr, label %.thread4524, label %.thread4527, !prof !134

.thread4524:                                      ; preds = %bb.bmz, %bb.bna
  %.0897.i4184526 = phi i32 [ %i.mvq, %bb.bna ], [ 64, %bb.bmz ]
  %i.mvs = add nsw i32 %.0897.i4184526, -60       ; 2 uses
  %i.mvt = zext nneg i32 %i.mvs to i64            ; 2 uses
  %i.mvu = lshr i64 %i.mvj, %i.mvt
  %i.mvv = add nsw i32 %i.mvs, %i.mvm
  %i.mvw = lshr i64 %i.mvn, %i.mvt
  %i.mvx = add nuw i64 %i.mvw, 9
  br label %.thread4527

.thread4527:                                      ; preds = %.critedge992.i434, %.thread4524, %bb.bna
  %.0898.i419 = phi i64 [ %i.mvx, %.thread4524 ], [ %i.mvn, %bb.bna ], [ %i.mvn, %.critedge992.i434 ] ; 2 uses
  %.0896.i420 = phi i32 [ 60, %.thread4524 ], [ %i.mvq, %bb.bna ], [ 11, %.critedge992.i434 ] ; 3 uses
  %.sroa.19.0.in.i421 = phi i32 [ %i.mvv, %.thread4524 ], [ %i.mvm, %bb.bna ], [ %i.mvm, %.critedge992.i434 ]
  %.sroa.025.0.i422 = phi i64 [ %i.mvu, %.thread4524 ], [ %i.mvj, %bb.bna ], [ %i.mvj, %.critedge992.i434 ] ; 2 uses
  %i.mvy = zext nneg i32 %.0896.i420 to i64       ; 2 uses
  %notmask.i423 = shl nsw i64 -1, %i.mvy
  %i.mvz = xor i64 %notmask.i423, -1
  %i.mwa = and i64 %.sroa.025.0.i422, %i.mvz
  %i.mwb = shl nuw nsw i64 %i.mwa, 3              ; 2 uses
  %i.mwc = add nsw i32 %.0896.i420, -1
  %i.mwd = zext nneg i32 %i.mwc to i64
  %i.mwe = shl nuw nsw i64 8, %i.mwd              ; 2 uses
  %i.mwf = lshr i64 %.sroa.025.0.i422, %i.mvy
  %i.mwg = add i64 %i.mwe, %.0898.i419
  %i.mwh = icmp uge i64 %i.mwb, %i.mwg            ; 2 uses
  %i.mwi = zext i1 %i.mwh to i64
  %i.mwj = add nuw nsw i64 %i.mwf, %i.mwi         ; 3 uses
  %i.mwk = icmp eq i64 %i.mwj, 0
  br i1 %i.mwk, label %bb.bnk, label %bb.bnb, !prof !8

bb.bnb:                                           ; preds = %.thread4527
  %i.mwl = add nsw i32 %.sroa.19.0.in.i421, %.0896.i420
  %i.mwm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.mwj, i1 true) ; 2 uses
  %i.mwn = trunc nuw nsw i64 %i.mwm to i32
  %i.mwo = shl i64 %i.mwj, %i.mwm
  %i.mwp = lshr i64 %i.mwo, 11                    ; 2 uses
  %i.mwq = sub nsw i32 %i.mwl, %i.mwn             ; 5 uses
  %i.mwr = icmp sgt i32 %i.mwq, 960
  br i1 %i.mwr, label %diy_fp_to_ieee_raw.exit1508, label %bb.bnc, !prof !8

bb.bnc:                                           ; preds = %bb.bnb
  %i.mws = icmp sgt i32 %i.mwq, -1086
  br i1 %i.mws, label %bb.bnd, label %bb.bne, !prof !25

bb.bnd:                                           ; preds = %bb.bnc
  %i.mwt = add nsw i32 %i.mwq, 1086
  %i.mwu = zext nneg i32 %i.mwt to i64
  %i.mwv = shl nuw nsw i64 %i.mwu, 52
  %i.mww = and i64 %i.mwp, 4503599627370495
  %i.mwx = or disjoint i64 %i.mwv, %i.mww
  br label %bb.bnk

bb.bne:                                           ; preds = %bb.bnc
  %i.mwy = icmp samesign ugt i32 %i.mwq, -1138
  br i1 %i.mwy, label %bb.bnf, label %bb.bnk, !prof !25

bb.bnf:                                           ; preds = %bb.bne
  %i.mwz = sub nuw nsw i32 -1085, %i.mwq
  %i.mxa = zext nneg i32 %i.mwz to i64
  %i.mxb = lshr i64 %i.mwp, %i.mxa
  br label %bb.bnk

diy_fp_to_ieee_raw.exit1508:                      ; preds = %bb.bnb
  %i.mxc = and i32 %2, 128
  %.not4696 = icmp eq i32 %i.mxc, 0
  br i1 %.not4696, label %bb.bnh, label %bb.bng, !prof !25

bb.bng:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  %i.mxd = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.mxd, align 1, !tbaa !81
  %i.mxe = ptrtoint ptr %.33.i406 to i64
  %i.mxf = ptrtoint ptr %i.lqb to i64
  %i.mxg = sub i64 %i.mxe, %i.mxf
  %i.mxh = shl i64 %i.mxg, 8
  %i.mxi = or disjoint i64 %i.mxh, 1
  store i64 %i.mxi, ptr %i.lqg, align 8, !tbaa !79
  %i.mxj = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqb, ptr %i.mxj, align 8, !tbaa !81
  store ptr %.33.i406, ptr %i.h, align 8, !tbaa !92
  br label %.split4569

bb.bnh:                                           ; preds = %diy_fp_to_ieee_raw.exit1508
  br i1 %.not4658, label %bb.bnj, label %bb.bni, !prof !25

bb.bni:                                           ; preds = %bb.bnh
  store i64 20, ptr %i.lqg, align 8, !tbaa !79
  %i.mxk = select i1 %i.lqk, i64 -4503599627370496, i64 9218868437227405312
  %i.mxl = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mxk, ptr %i.mxl, align 8, !tbaa !81
  br label %.split4569

bb.bnj:                                           ; preds = %bb.bnh
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  br label %.split4569.thread

bb.bnk:                                           ; preds = %.thread4527, %bb.bnd, %bb.bnf, %bb.bne
  %.0.i1507.ph = phi i64 [ 0, %bb.bne ], [ %i.mxb, %bb.bnf ], [ %i.mwx, %bb.bnd ], [ 0, %.thread4527 ] ; 7 uses
  %i.mxm = sub i64 %i.mwe, %.0898.i419
  %.not987.i425 = icmp ule i64 %i.mwb, %i.mxm
  %spec.select.i426 = or i1 %.not987.i425, %i.mwh
  br i1 %spec.select.i426, label %bb.bnl, label %bb.bnm, !prof !25

bb.bnl:                                           ; preds = %bb.bnk
  store i64 20, ptr %i.lqg, align 8, !tbaa !79
  %i.mxn = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.mxo = or disjoint i64 %.0.i1507.ph, %i.mxn
  %i.mxp = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.mxo, ptr %i.mxp, align 8, !tbaa !81
  br label %.split4569

bb.bnm:                                           ; preds = %bb.bnk
  %.not988.i427 = icmp samesign ult i64 %.0.i1507.ph, 4503599627370496 ; 2 uses
  %i.mxq = and i64 %.0.i1507.ph, 4503599627370495
  %i.mxr = or disjoint i64 %i.mxq, 4503599627370496
  %i.mxs = lshr i64 %.0.i1507.ph, 52
  %i.mxt = trunc nuw nsw i64 %i.mxs to i32
  %i.mxu = add nsw i32 %i.mxt, -1076
  %.sroa.9.0.i428 = select i1 %.not988.i427, i32 -1075, i32 %i.mxu ; 4 uses
  %.sroa.018.0.i429 = select i1 %.not988.i427, i64 %.0.i1507.ph, i64 %i.mxr
  %i.mxv = shl nuw nsw i64 %.sroa.018.0.i429, 1
  %i.mxw = or disjoint i64 %i.mxv, 1
  call fastcc void @bigint_set_buf(ptr noundef %9, i64 noundef %.22894.i407, ptr noundef %i.c, ptr noundef %.3863.i410, ptr noundef %.3867.i409, ptr noundef %.23.i408)
  %i.mxx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 29 uses
  store i64 %i.mxw, ptr %i.mxx, align 8, !tbaa !91
  %i.mxy = load i32, ptr %i.c, align 4, !tbaa !114 ; 6 uses
  %i.mxz = icmp sgt i32 %i.mxy, -1
  br i1 %i.mxz, label %.preheader5002, label %bb.bnu

.preheader5002:                                   ; preds = %bb.bnm
  %.promoted6174 = load i32, ptr %9, align 8      ; 2 uses
  %i.mya = icmp samesign ugt i32 %i.mxy, 18
  br i1 %i.mya, label %.lr.ph6177, label %._crit_edge6178

.lr.ph6177:                                       ; preds = %.preheader5002
  %i.myb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.bnn

bb.bnn:                                           ; preds = %.lr.ph6177, %bigint_mul_u64.exit1670
  %.0.i15226176 = phi i32 [ %i.mxy, %.lr.ph6177 ], [ %i.mzp, %bigint_mul_u64.exit1670 ] ; 2 uses
  %i.myc = phi i32 [ %.promoted6174, %.lr.ph6177 ], [ %i.mzo, %bigint_mul_u64.exit1670 ] ; 9 uses
  %.not6519 = icmp eq i32 %i.myc, 0
  br i1 %.not6519, label %._crit_edge6164, label %.lr.ph6163.preheader

.lr.ph6163.preheader:                             ; preds = %bb.bnn
  %wide.trip.count7118 = zext i32 %i.myc to i64
  br label %.lr.ph6163

.lr.ph6163:                                       ; preds = %.lr.ph6163.preheader, %bb.bno
  %indvars.iv7115 = phi i64 [ 0, %.lr.ph6163.preheader ], [ %indvars.iv.next7116, %bb.bno ] ; 3 uses
  %i.myd = getelementptr inbounds nuw [8 x i8], ptr %i.myb, i64 %indvars.iv7115
  %i.mye = load i64, ptr %i.myd, align 8, !tbaa !91
  %.not.i1669 = icmp eq i64 %i.mye, 0
  br i1 %.not.i1669, label %bb.bno, label %._crit_edge6164.loopexit

bb.bno:                                           ; preds = %.lr.ph6163
  %indvars.iv.next7116 = add nuw nsw i64 %indvars.iv7115, 1 ; 2 uses
  %exitcond7119.not = icmp eq i64 %indvars.iv.next7116, %wide.trip.count7118
  br i1 %exitcond7119.not, label %bigint_mul_u64.exit1670, label %.lr.ph6163, !llvm.loop !135

._crit_edge6164.loopexit:                         ; preds = %.lr.ph6163
  %i.myf = trunc nuw i64 %indvars.iv7115 to i32
  br label %._crit_edge6164

._crit_edge6164:                                  ; preds = %._crit_edge6164.loopexit, %bb.bnn
  %.018.i1665.lcssa = phi i32 [ 0, %bb.bnn ], [ %i.myf, %._crit_edge6164.loopexit ] ; 2 uses
  %i.myg = icmp ult i32 %.018.i1665.lcssa, %i.myc
  br i1 %i.myg, label %.lr.ph6171.preheader, label %bigint_mul_u64.exit1670

.lr.ph6171.preheader:                             ; preds = %._crit_edge6164
  %i.myh = zext i32 %.018.i1665.lcssa to i64      ; 4 uses
  %wide.trip.count7123 = zext i32 %i.myc to i64   ; 2 uses
  %i.myi = sub nsw i64 %wide.trip.count7123, %i.myh ; 3 uses
  %xtraiter11090 = and i64 %i.myi, 1
  %i.myj = add nsw i64 %wide.trip.count7123, -1
  %i.myk = icmp eq i64 %i.myj, %i.myh
  br i1 %i.myk, label %.lr.ph6171.epil.preheader, label %.lr.ph6171.preheader.new

.lr.ph6171.preheader.new:                         ; preds = %.lr.ph6171.preheader
  %unroll_iter11095 = and i64 %i.myi, -2
  br label %.lr.ph6171

.lr.ph6171:                                       ; preds = %.lr.ph6171, %.lr.ph6171.preheader.new
  %indvars.iv7120 = phi i64 [ %i.myh, %.lr.ph6171.preheader.new ], [ %indvars.iv.next7121.1, %.lr.ph6171 ] ; 3 uses
  %.0.i16676169 = phi i64 [ 0, %.lr.ph6171.preheader.new ], [ %i.mza, %.lr.ph6171 ]
  %niter11096 = phi i64 [ 0, %.lr.ph6171.preheader.new ], [ %niter11096.next.1, %.lr.ph6171 ]
  %i.myl = getelementptr inbounds nuw [8 x i8], ptr %i.myb, i64 %indvars.iv7120 ; 2 uses
  %i.mym = load i64, ptr %i.myl, align 8, !tbaa !91
  %i.myn = zext i64 %i.mym to i128
  %i.myo = mul nuw i128 %i.myn, 10000000000000000000
  %i.myp = zext i64 %.0.i16676169 to i128
  %i.myq = add nuw i128 %i.myo, %i.myp            ; 2 uses
  %i.myr = lshr i128 %i.myq, 64
  %i.mys = trunc i128 %i.myq to i64
  store i64 %i.mys, ptr %i.myl, align 8, !tbaa !91
  %i.myt = getelementptr inbounds nuw [8 x i8], ptr %i.myb, i64 %indvars.iv7120
  %i.myu = getelementptr inbounds nuw i8, ptr %i.myt, i64 8 ; 2 uses
  %i.myv = load i64, ptr %i.myu, align 8, !tbaa !91
  %i.myw = zext i64 %i.myv to i128
  %i.myx = mul nuw i128 %i.myw, 10000000000000000000
  %i.myy = add nuw i128 %i.myx, %i.myr            ; 2 uses
  %i.myz = lshr i128 %i.myy, 64                   ; 2 uses
  %i.mza = trunc nuw i128 %i.myz to i64           ; 3 uses
  %i.mzb = trunc i128 %i.myy to i64
  store i64 %i.mzb, ptr %i.myu, align 8, !tbaa !91
  %indvars.iv.next7121.1 = add nuw nsw i64 %indvars.iv7120, 2 ; 2 uses
  %niter11096.next.1 = add i64 %niter11096, 2     ; 2 uses
  %niter11096.ncmp.1 = icmp eq i64 %niter11096.next.1, %unroll_iter11095
  br i1 %niter11096.ncmp.1, label %._crit_edge6172.unr-lcssa, label %.lr.ph6171, !llvm.loop !136

._crit_edge6172.unr-lcssa:                        ; preds = %.lr.ph6171
  %lcmp.mod11091.not = icmp eq i64 %xtraiter11090, 0
  br i1 %lcmp.mod11091.not, label %._crit_edge6172, label %.lr.ph6171.epil.preheader

.lr.ph6171.epil.preheader:                        ; preds = %._crit_edge6172.unr-lcssa, %.lr.ph6171.preheader
  %indvars.iv7120.epil.init = phi i64 [ %i.myh, %.lr.ph6171.preheader ], [ %indvars.iv.next7121.1, %._crit_edge6172.unr-lcssa ]
  %.0.i16676169.epil.init = phi i64 [ 0, %.lr.ph6171.preheader ], [ %i.mza, %._crit_edge6172.unr-lcssa ]
  %lcmp.mod11094 = trunc i64 %i.myi to i1
  call void @llvm.assume(i1 %lcmp.mod11094)
  %i.mzc = getelementptr inbounds nuw [8 x i8], ptr %i.myb, i64 %indvars.iv7120.epil.init ; 2 uses
  %i.mzd = load i64, ptr %i.mzc, align 8, !tbaa !91
  %i.mze = zext i64 %i.mzd to i128
  %i.mzf = mul nuw i128 %i.mze, 10000000000000000000
  %i.mzg = zext i64 %.0.i16676169.epil.init to i128
  %i.mzh = add nuw i128 %i.mzf, %i.mzg            ; 2 uses
  %i.mzi = lshr i128 %i.mzh, 64                   ; 2 uses
  %i.mzj = trunc nuw i128 %i.mzi to i64
  %i.mzk = trunc i128 %i.mzh to i64
  store i64 %i.mzk, ptr %i.mzc, align 8, !tbaa !91
  br label %._crit_edge6172

._crit_edge6172:                                  ; preds = %._crit_edge6172.unr-lcssa, %.lr.ph6171.epil.preheader
  %.lcssa10380 = phi i128 [ %i.myz, %._crit_edge6172.unr-lcssa ], [ %i.mzi, %.lr.ph6171.epil.preheader ]
  %.lcssa10379 = phi i64 [ %i.mza, %._crit_edge6172.unr-lcssa ], [ %i.mzj, %.lr.ph6171.epil.preheader ]
  %.not19.i1668 = icmp eq i128 %.lcssa10380, 0
  br i1 %.not19.i1668, label %bigint_mul_u64.exit1670, label %bb.bnp

bb.bnp:                                           ; preds = %._crit_edge6172
  %i.mzl = add i32 %i.myc, 1
  %i.mzm = zext i32 %i.myc to i64
  %i.mzn = getelementptr inbounds nuw [8 x i8], ptr %i.myb, i64 %i.mzm
  store i64 %.lcssa10379, ptr %i.mzn, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1670

bigint_mul_u64.exit1670:                          ; preds = %bb.bno, %._crit_edge6164, %._crit_edge6172, %bb.bnp
  %i.mzo = phi i32 [ %i.myc, %._crit_edge6172 ], [ %i.mzl, %bb.bnp ], [ %i.myc, %._crit_edge6164 ], [ %i.myc, %bb.bno ] ; 2 uses
  %i.mzp = add nsw i32 %.0.i15226176, -19         ; 2 uses
  %i.mzq = icmp sgt i32 %.0.i15226176, 37
  br i1 %i.mzq, label %bb.bnn, label %._crit_edge6178, !llvm.loop !137

._crit_edge6178:                                  ; preds = %bigint_mul_u64.exit1670, %.preheader5002
  %i.mzr = phi i32 [ %.promoted6174, %.preheader5002 ], [ %i.mzo, %bigint_mul_u64.exit1670 ] ; 7 uses
  %.0.i1522.lcssa = phi i32 [ %i.mxy, %.preheader5002 ], [ %i.mzp, %bigint_mul_u64.exit1670 ] ; 2 uses
  store i32 %i.mzr, ptr %9, align 8
  %.not.i1523 = icmp eq i32 %.0.i1522.lcssa, 0
  br i1 %.not.i1523, label %bigint_mul_pow10.exit1524, label %bb.bnq

bb.bnq:                                           ; preds = %._crit_edge6178
  %i.mzs = sext i32 %.0.i1522.lcssa to i64
  %i.mzt = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.mzs
  %i.mzu = load i64, ptr %i.mzt, align 8, !tbaa !91
  %i.mzv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not6520 = icmp eq i32 %i.mzr, 0
  br i1 %.not6520, label %._crit_edge6184, label %.lr.ph6183.preheader

.lr.ph6183.preheader:                             ; preds = %bb.bnq
  %wide.trip.count7128 = zext i32 %i.mzr to i64
  br label %.lr.ph6183

.lr.ph6183:                                       ; preds = %.lr.ph6183.preheader, %bb.bnr
  %indvars.iv7125 = phi i64 [ 0, %.lr.ph6183.preheader ], [ %indvars.iv.next7126, %bb.bnr ] ; 3 uses
  %i.mzw = getelementptr inbounds nuw [8 x i8], ptr %i.mzv, i64 %indvars.iv7125
  %i.mzx = load i64, ptr %i.mzw, align 8, !tbaa !91
  %.not.i1675 = icmp eq i64 %i.mzx, 0
  br i1 %.not.i1675, label %bb.bnr, label %._crit_edge6184.loopexit

bb.bnr:                                           ; preds = %.lr.ph6183
  %indvars.iv.next7126 = add nuw nsw i64 %indvars.iv7125, 1 ; 2 uses
  %exitcond7129.not = icmp eq i64 %indvars.iv.next7126, %wide.trip.count7128
  br i1 %exitcond7129.not, label %bigint_mul_pow10.exit1524, label %.lr.ph6183, !llvm.loop !135

._crit_edge6184.loopexit:                         ; preds = %.lr.ph6183
  %i.mzy = trunc nuw i64 %indvars.iv7125 to i32
  br label %._crit_edge6184

._crit_edge6184:                                  ; preds = %._crit_edge6184.loopexit, %bb.bnq
  %.018.i1671.lcssa = phi i32 [ 0, %bb.bnq ], [ %i.mzy, %._crit_edge6184.loopexit ] ; 2 uses
  %i.mzz = icmp ult i32 %.018.i1671.lcssa, %i.mzr
  br i1 %i.mzz, label %.lr.ph6191, label %bigint_mul_pow10.exit1524

.lr.ph6191:                                       ; preds = %._crit_edge6184
  %i.naa = zext i64 %i.mzu to i128                ; 3 uses
  %i.nab = zext i32 %.018.i1671.lcssa to i64      ; 4 uses
  %wide.trip.count7133 = zext i32 %i.mzr to i64   ; 2 uses
  %i.nac = sub nsw i64 %wide.trip.count7133, %i.nab ; 3 uses
  %xtraiter11098 = and i64 %i.nac, 1
  %i.nad = add nsw i64 %wide.trip.count7133, -1
  %i.nae = icmp eq i64 %i.nad, %i.nab
  br i1 %i.nae, label %.epil.preheader11097, label %.lr.ph6191.new

.lr.ph6191.new:                                   ; preds = %.lr.ph6191
  %unroll_iter11103 = and i64 %i.nac, -2
  br label %bb.bns

bb.bns:                                           ; preds = %bb.bns, %.lr.ph6191.new
  %indvars.iv7130 = phi i64 [ %i.nab, %.lr.ph6191.new ], [ %indvars.iv.next7131.1, %bb.bns ] ; 3 uses
  %.0.i16736189 = phi i64 [ 0, %.lr.ph6191.new ], [ %i.nau, %bb.bns ]
  %niter11104 = phi i64 [ 0, %.lr.ph6191.new ], [ %niter11104.next.1, %bb.bns ]
  %i.naf = getelementptr inbounds nuw [8 x i8], ptr %i.mzv, i64 %indvars.iv7130 ; 2 uses
  %i.nag = load i64, ptr %i.naf, align 8, !tbaa !91
  %i.nah = zext i64 %i.nag to i128
  %i.nai = mul nuw i128 %i.nah, %i.naa
  %i.naj = zext i64 %.0.i16736189 to i128
  %i.nak = add nuw i128 %i.nai, %i.naj            ; 2 uses
  %i.nal = lshr i128 %i.nak, 64
  %i.nam = trunc i128 %i.nak to i64
  store i64 %i.nam, ptr %i.naf, align 8, !tbaa !91
  %i.nan = getelementptr inbounds nuw [8 x i8], ptr %i.mzv, i64 %indvars.iv7130
  %i.nao = getelementptr inbounds nuw i8, ptr %i.nan, i64 8 ; 2 uses
end_hunk_6
begin_hunk_7_@yyjson_read_opts:bb.a
.lr.ph6137:                                       ; preds = %.lr.ph6137, %.lr.ph6137.preheader.new
  %indvars.iv7100 = phi i64 [ %i.nbq, %.lr.ph6137.preheader.new ], [ %indvars.iv.next7101.1, %.lr.ph6137 ] ; 3 uses
  %.0.i16556135 = phi i64 [ 0, %.lr.ph6137.preheader.new ], [ %i.ncj, %.lr.ph6137 ]
  %niter11081 = phi i64 [ 0, %.lr.ph6137.preheader.new ], [ %niter11081.next.1, %.lr.ph6137 ]
  %i.nbu = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7100 ; 2 uses
  %i.nbv = load i64, ptr %i.nbu, align 8, !tbaa !91
  %i.nbw = zext i64 %i.nbv to i128
  %i.nbx = mul nuw i128 %i.nbw, 10000000000000000000
  %i.nby = zext i64 %.0.i16556135 to i128
  %i.nbz = add nuw i128 %i.nbx, %i.nby            ; 2 uses
  %i.nca = lshr i128 %i.nbz, 64
  %i.ncb = trunc i128 %i.nbz to i64
  store i64 %i.ncb, ptr %i.nbu, align 8, !tbaa !91
  %i.ncc = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7100
  %i.ncd = getelementptr inbounds nuw i8, ptr %i.ncc, i64 8 ; 2 uses
  %i.nce = load i64, ptr %i.ncd, align 8, !tbaa !91
  %i.ncf = zext i64 %i.nce to i128
  %i.ncg = mul nuw i128 %i.ncf, 10000000000000000000
  %i.nch = add nuw i128 %i.ncg, %i.nca            ; 2 uses
  %i.nci = lshr i128 %i.nch, 64                   ; 2 uses
  %i.ncj = trunc nuw i128 %i.nci to i64           ; 3 uses
  %i.nck = trunc i128 %i.nch to i64
  store i64 %i.nck, ptr %i.ncd, align 8, !tbaa !91
  %indvars.iv.next7101.1 = add nuw nsw i64 %indvars.iv7100, 2 ; 2 uses
  %niter11081.next.1 = add i64 %niter11081, 2     ; 2 uses
  %niter11081.ncmp.1 = icmp eq i64 %niter11081.next.1, %unroll_iter11080
  br i1 %niter11081.ncmp.1, label %._crit_edge6138.unr-lcssa, label %.lr.ph6137, !llvm.loop !136

._crit_edge6138.unr-lcssa:                        ; preds = %.lr.ph6137
  %lcmp.mod11076.not = icmp eq i64 %xtraiter11075, 0
  br i1 %lcmp.mod11076.not, label %._crit_edge6138, label %.lr.ph6137.epil.preheader

.lr.ph6137.epil.preheader:                        ; preds = %._crit_edge6138.unr-lcssa, %.lr.ph6137.preheader
  %indvars.iv7100.epil.init = phi i64 [ %i.nbq, %.lr.ph6137.preheader ], [ %indvars.iv.next7101.1, %._crit_edge6138.unr-lcssa ]
  %.0.i16556135.epil.init = phi i64 [ 0, %.lr.ph6137.preheader ], [ %i.ncj, %._crit_edge6138.unr-lcssa ]
  %lcmp.mod11079 = trunc i64 %i.nbr to i1
  call void @llvm.assume(i1 %lcmp.mod11079)
  %i.ncl = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7100.epil.init ; 2 uses
  %i.ncm = load i64, ptr %i.ncl, align 8, !tbaa !91
  %i.ncn = zext i64 %i.ncm to i128
  %i.nco = mul nuw i128 %i.ncn, 10000000000000000000
  %i.ncp = zext i64 %.0.i16556135.epil.init to i128
  %i.ncq = add nuw i128 %i.nco, %i.ncp            ; 2 uses
  %i.ncr = lshr i128 %i.ncq, 64                   ; 2 uses
  %i.ncs = trunc nuw i128 %i.ncr to i64
  %i.nct = trunc i128 %i.ncq to i64
  store i64 %i.nct, ptr %i.ncl, align 8, !tbaa !91
  br label %._crit_edge6138

._crit_edge6138:                                  ; preds = %._crit_edge6138.unr-lcssa, %.lr.ph6137.epil.preheader
  %.lcssa10389 = phi i128 [ %i.nci, %._crit_edge6138.unr-lcssa ], [ %i.ncr, %.lr.ph6137.epil.preheader ]
  %.lcssa10388 = phi i64 [ %i.ncj, %._crit_edge6138.unr-lcssa ], [ %i.ncs, %.lr.ph6137.epil.preheader ]
  %.not19.i1656 = icmp eq i128 %.lcssa10389, 0
  br i1 %.not19.i1656, label %bigint_mul_u64.exit1658, label %bb.bnw

bb.bnw:                                           ; preds = %._crit_edge6138
  %i.ncu = add i32 %i.nbl, 1
  %i.ncv = zext i32 %i.nbl to i64
  %i.ncw = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.ncv
  store i64 %.lcssa10388, ptr %i.ncw, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1658

bigint_mul_u64.exit1658:                          ; preds = %bb.bnv, %._crit_edge6130, %._crit_edge6138, %bb.bnw
  %i.ncx = phi i32 [ %i.nbl, %._crit_edge6138 ], [ %i.ncu, %bb.bnw ], [ %i.nbl, %._crit_edge6130 ], [ %i.nbl, %bb.bnv ] ; 5 uses
  %i.ncy = add nsw i32 %.0.i15256142, -19         ; 3 uses
  %i.ncz = icmp sgt i32 %.0.i15256142, 37
  br i1 %i.ncz, label %.lr.ph6144, label %._crit_edge6145, !llvm.loop !137

._crit_edge6145:                                  ; preds = %bigint_mul_u64.exit1658
  store i32 %i.ncx, ptr %10, align 8
  %.not.i1526 = icmp eq i32 %i.ncy, 0
  br i1 %.not.i1526, label %bigint_mul_pow10.exit1524, label %bb.bnx

bb.bnx:                                           ; preds = %._crit_edge6145
  %i.nda = sext i32 %i.ncy to i64
  %i.ndb = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.nda
  %i.ndc = load i64, ptr %i.ndb, align 8, !tbaa !91 ; 2 uses
  %.not6518 = icmp eq i32 %i.ncx, 0
  br i1 %.not6518, label %._crit_edge6151, label %.lr.ph6150.preheader

.lr.ph6150.preheader:                             ; preds = %.thread8363, %bb.bnx
  %i.ndd = phi i64 [ %i.nbk, %.thread8363 ], [ %i.ndc, %bb.bnx ]
  %i.nde = phi i32 [ 1, %.thread8363 ], [ %i.ncx, %bb.bnx ] ; 3 uses
  %wide.trip.count7108 = zext i32 %i.nde to i64
  br label %.lr.ph6150

.lr.ph6150:                                       ; preds = %.lr.ph6150.preheader, %bb.bny
  %indvars.iv7105 = phi i64 [ 0, %.lr.ph6150.preheader ], [ %indvars.iv.next7106, %bb.bny ] ; 3 uses
  %i.ndf = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7105
  %i.ndg = load i64, ptr %i.ndf, align 8, !tbaa !91
  %.not.i1663 = icmp eq i64 %i.ndg, 0
  br i1 %.not.i1663, label %bb.bny, label %._crit_edge6151.loopexit

bb.bny:                                           ; preds = %.lr.ph6150
  %indvars.iv.next7106 = add nuw nsw i64 %indvars.iv7105, 1 ; 2 uses
  %exitcond7109.not = icmp eq i64 %indvars.iv.next7106, %wide.trip.count7108
  br i1 %exitcond7109.not, label %bigint_mul_pow10.exit1524, label %.lr.ph6150, !llvm.loop !135

._crit_edge6151.loopexit:                         ; preds = %.lr.ph6150
  %i.ndh = trunc nuw i64 %indvars.iv7105 to i32
  br label %._crit_edge6151

._crit_edge6151:                                  ; preds = %._crit_edge6151.loopexit, %bb.bnx
  %i.ndi = phi i64 [ %i.ndc, %bb.bnx ], [ %i.ndd, %._crit_edge6151.loopexit ]
  %i.ndj = phi i32 [ 0, %bb.bnx ], [ %i.nde, %._crit_edge6151.loopexit ] ; 6 uses
  %.018.i1659.lcssa = phi i32 [ 0, %bb.bnx ], [ %i.ndh, %._crit_edge6151.loopexit ] ; 2 uses
  %i.ndk = icmp ult i32 %.018.i1659.lcssa, %i.ndj
  br i1 %i.ndk, label %.lr.ph6158, label %bigint_mul_pow10.exit1524

.lr.ph6158:                                       ; preds = %._crit_edge6151
  %i.ndl = zext i64 %i.ndi to i128                ; 3 uses
  %i.ndm = zext i32 %.018.i1659.lcssa to i64      ; 4 uses
  %wide.trip.count7113 = zext i32 %i.ndj to i64   ; 2 uses
  %i.ndn = sub nsw i64 %wide.trip.count7113, %i.ndm ; 3 uses
  %xtraiter11083 = and i64 %i.ndn, 1
  %i.ndo = add nsw i64 %wide.trip.count7113, -1
  %i.ndp = icmp eq i64 %i.ndo, %i.ndm
  br i1 %i.ndp, label %.epil.preheader11082, label %.lr.ph6158.new

.lr.ph6158.new:                                   ; preds = %.lr.ph6158
  %unroll_iter11088 = and i64 %i.ndn, -2
  br label %bb.bnz

bb.bnz:                                           ; preds = %bb.bnz, %.lr.ph6158.new
  %indvars.iv7110 = phi i64 [ %i.ndm, %.lr.ph6158.new ], [ %indvars.iv.next7111.1, %bb.bnz ] ; 3 uses
  %.0.i16616156 = phi i64 [ 0, %.lr.ph6158.new ], [ %i.nef, %bb.bnz ]
  %niter11089 = phi i64 [ 0, %.lr.ph6158.new ], [ %niter11089.next.1, %bb.bnz ]
  %i.ndq = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7110 ; 2 uses
  %i.ndr = load i64, ptr %i.ndq, align 8, !tbaa !91
  %i.nds = zext i64 %i.ndr to i128
  %i.ndt = mul nuw i128 %i.nds, %i.ndl
  %i.ndu = zext i64 %.0.i16616156 to i128
  %i.ndv = add nuw i128 %i.ndt, %i.ndu            ; 2 uses
  %i.ndw = lshr i128 %i.ndv, 64
  %i.ndx = trunc i128 %i.ndv to i64
  store i64 %i.ndx, ptr %i.ndq, align 8, !tbaa !91
  %i.ndy = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7110
  %i.ndz = getelementptr inbounds nuw i8, ptr %i.ndy, i64 8 ; 2 uses
  %i.nea = load i64, ptr %i.ndz, align 8, !tbaa !91
  %i.neb = zext i64 %i.nea to i128
  %i.nec = mul nuw i128 %i.neb, %i.ndl
  %i.ned = add nuw i128 %i.nec, %i.ndw            ; 2 uses
  %i.nee = lshr i128 %i.ned, 64                   ; 2 uses
  %i.nef = trunc nuw i128 %i.nee to i64           ; 3 uses
  %i.neg = trunc i128 %i.ned to i64
  store i64 %i.neg, ptr %i.ndz, align 8, !tbaa !91
  %indvars.iv.next7111.1 = add nuw nsw i64 %indvars.iv7110, 2 ; 2 uses
  %niter11089.next.1 = add i64 %niter11089, 2     ; 2 uses
  %niter11089.ncmp.1 = icmp eq i64 %niter11089.next.1, %unroll_iter11088
  br i1 %niter11089.ncmp.1, label %._crit_edge6159.unr-lcssa, label %bb.bnz, !llvm.loop !136

._crit_edge6159.unr-lcssa:                        ; preds = %bb.bnz
  %lcmp.mod11084.not = icmp eq i64 %xtraiter11083, 0
  br i1 %lcmp.mod11084.not, label %._crit_edge6159, label %.epil.preheader11082

.epil.preheader11082:                             ; preds = %._crit_edge6159.unr-lcssa, %.lr.ph6158
  %indvars.iv7110.epil.init = phi i64 [ %i.ndm, %.lr.ph6158 ], [ %indvars.iv.next7111.1, %._crit_edge6159.unr-lcssa ]
  %.0.i16616156.epil.init = phi i64 [ 0, %.lr.ph6158 ], [ %i.nef, %._crit_edge6159.unr-lcssa ]
  %lcmp.mod11087 = trunc i64 %i.ndn to i1
  call void @llvm.assume(i1 %lcmp.mod11087)
  %i.neh = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7110.epil.init ; 2 uses
  %i.nei = load i64, ptr %i.neh, align 8, !tbaa !91
  %i.nej = zext i64 %i.nei to i128
  %i.nek = mul nuw i128 %i.nej, %i.ndl
  %i.nel = zext i64 %.0.i16616156.epil.init to i128
  %i.nem = add nuw i128 %i.nek, %i.nel            ; 2 uses
  %i.nen = lshr i128 %i.nem, 64                   ; 2 uses
  %i.neo = trunc nuw i128 %i.nen to i64
  %i.nep = trunc i128 %i.nem to i64
  store i64 %i.nep, ptr %i.neh, align 8, !tbaa !91
  br label %._crit_edge6159

._crit_edge6159:                                  ; preds = %._crit_edge6159.unr-lcssa, %.epil.preheader11082
  %.lcssa10384 = phi i128 [ %i.nee, %._crit_edge6159.unr-lcssa ], [ %i.nen, %.epil.preheader11082 ]
  %.lcssa10383 = phi i64 [ %i.nef, %._crit_edge6159.unr-lcssa ], [ %i.neo, %.epil.preheader11082 ]
  %.not19.i1662 = icmp eq i128 %.lcssa10384, 0
  br i1 %.not19.i1662, label %bigint_mul_pow10.exit1524, label %bb.boa

bb.boa:                                           ; preds = %._crit_edge6159
  %i.neq = add i32 %i.ndj, 1
  br label %bigint_mul_pow10.exit1524.sink.split

bigint_mul_pow10.exit1524.sink.split:             ; preds = %bb.bnt, %bb.boa
  %.sink9135 = phi i32 [ %i.ndj, %bb.boa ], [ %i.mzr, %bb.bnt ]
  %i.ner = phi ptr [ %10, %bb.boa ], [ %9, %bb.bnt ]
  %.lcssa8530.sink = phi i64 [ %.lcssa10383, %bb.boa ], [ %.lcssa10375, %bb.bnt ]
  %.ph9131 = phi i32 [ %i.neq, %bb.boa ], [ 1, %bb.bnt ]
  %i.nes = getelementptr inbounds nuw i8, ptr %i.ner, i64 8
  %i.net = zext i32 %.sink9135 to i64
  %i.neu = getelementptr inbounds nuw [8 x i8], ptr %i.nes, i64 %i.net
  store i64 %.lcssa8530.sink, ptr %i.neu, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1524

bigint_mul_pow10.exit1524:                        ; preds = %bb.bny, %bb.bnr, %bigint_mul_pow10.exit1524.sink.split, %._crit_edge6151, %._crit_edge6184, %._crit_edge6145, %._crit_edge6159, %._crit_edge6178, %._crit_edge6192
  %i.nev = phi i32 [ %i.ncx, %._crit_edge6145 ], [ %i.ndj, %._crit_edge6159 ], [ %i.ndj, %._crit_edge6151 ], [ 1, %._crit_edge6178 ], [ 1, %._crit_edge6192 ], [ 1, %bb.bnr ], [ %.ph9131, %bigint_mul_pow10.exit1524.sink.split ], [ 1, %._crit_edge6184 ], [ %i.nde, %bb.bny ] ; 16 uses
  %i.new = icmp sgt i32 %.sroa.9.0.i428, 0
  br i1 %i.new, label %bb.bob, label %bb.bod

bb.bob:                                           ; preds = %bigint_mul_pow10.exit1524
  %i.nex = and i32 %.sroa.9.0.i428, 63            ; 3 uses
  %i.ney = lshr i32 %.sroa.9.0.i428, 6            ; 15 uses
  %i.nez = icmp eq i32 %i.nex, 0
  br i1 %i.nez, label %.preheader4997, label %bb.boc, !prof !8

.preheader4997:                                   ; preds = %bb.bob
  %.not46.i15716220 = icmp eq i32 %i.nev, 0
  br i1 %.not46.i15716220, label %.lr.ph6227.preheader, label %.lr.ph6222

.lr.ph6222:                                       ; preds = %.preheader4997
  %i.nfa = add nsw i32 %i.ney, -1                 ; 6 uses
  %i.nfb = zext i32 %i.nev to i64                 ; 9 uses
  %min.iters.check10166 = icmp ult i32 %i.nev, 30
  br i1 %min.iters.check10166, label %scalar.ph10165.preheader, label %vector.scevcheck10162

vector.scevcheck10162:                            ; preds = %.lr.ph6222
  %i.nfc = add nsw i64 %i.nfb, -1                 ; 2 uses
  %i.nfd = add i32 %i.nev, %i.ney
  %i.nfe = add i32 %i.nfd, -1
  %i.nff = trunc i64 %i.nfc to i32
  %i.nfg = icmp ult i32 %i.nfe, %i.nff
  %i.nfh = icmp ugt i64 %i.nfc, 4294967295
  %i.nfi = or i1 %i.nfg, %i.nfh
  br i1 %i.nfi, label %scalar.ph10165.preheader, label %vector.memcheck10163

vector.memcheck10163:                             ; preds = %vector.scevcheck10162
  %i.nfj = add i32 %i.nev, %i.ney
  %i.nfk = add i32 %i.nfj, -1
  %i.nfl = zext i32 %i.nfk to i64
  %i.nfm = sub nsw i64 %i.nfb, %i.nfl
  %i.nfn = shl nsw i64 %i.nfm, 3
  %i.nfo = add nsw i64 %i.nfn, -9
  %diff.check10164 = icmp ult i64 %i.nfo, 31
  br i1 %diff.check10164, label %scalar.ph10165.preheader, label %vector.ph10167

vector.ph10167:                                   ; preds = %vector.memcheck10163
  %n.vec10168 = and i64 %i.nfb, 4294967292        ; 2 uses
  %i.nfp = and i64 %i.nfb, 3
  br label %vector.body10169

vector.body10169:                                 ; preds = %vector.body10169, %vector.ph10167
  %index10170 = phi i64 [ 0, %vector.ph10167 ], [ %index.next10173, %vector.body10169 ] ; 2 uses
  %i.nfq = sub i64 %i.nfb, %index10170            ; 2 uses
  %i.nfr = getelementptr [8 x i8], ptr %10, i64 %i.nfq ; 2 uses
  %i.nfs = getelementptr i8, ptr %i.nfr, i64 -8
  %i.nft = getelementptr i8, ptr %i.nfr, i64 -24
  %wide.load10171 = load <2 x i64>, ptr %i.nfs, align 8, !tbaa !91
  %wide.load10172 = load <2 x i64>, ptr %i.nft, align 8, !tbaa !91
  %i.nfu = trunc nuw i64 %i.nfq to i32
  %i.nfv = add i32 %i.nfa, %i.nfu
  %i.nfw = zext i32 %i.nfv to i64
  %i.nfx = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nfw ; 2 uses
  %i.nfy = getelementptr inbounds i8, ptr %i.nfx, i64 -8
  %i.nfz = getelementptr inbounds i8, ptr %i.nfx, i64 -24
  store <2 x i64> %wide.load10171, ptr %i.nfy, align 8, !tbaa !91
  store <2 x i64> %wide.load10172, ptr %i.nfz, align 8, !tbaa !91
  %index.next10173 = add nuw i64 %index10170, 4   ; 2 uses
  %i.nga = icmp eq i64 %index.next10173, %n.vec10168
  br i1 %i.nga, label %middle.block10174, label %vector.body10169, !llvm.loop !210

middle.block10174:                                ; preds = %vector.body10169
  %cmp.n10175 = icmp eq i64 %n.vec10168, %i.nfb
  br i1 %cmp.n10175, label %.lr.ph6227.preheader, label %scalar.ph10165.preheader

scalar.ph10165.preheader:                         ; preds = %vector.memcheck10163, %vector.scevcheck10162, %.lr.ph6222, %middle.block10174
  %indvars.iv7150.ph = phi i64 [ %i.nfb, %vector.memcheck10163 ], [ %i.nfb, %vector.scevcheck10162 ], [ %i.nfb, %.lr.ph6222 ], [ %i.nfp, %middle.block10174 ] ; 4 uses
  %i.ngb = add nsw i64 %indvars.iv7150.ph, -1
  %xtraiter11114 = and i64 %indvars.iv7150.ph, 3  ; 2 uses
  %lcmp.mod11115.not = icmp eq i64 %xtraiter11114, 0
  br i1 %lcmp.mod11115.not, label %scalar.ph10165.prol.loopexit, label %scalar.ph10165.prol

scalar.ph10165.prol:                              ; preds = %scalar.ph10165.preheader, %scalar.ph10165.prol
  %indvars.iv7150.prol = phi i64 [ %i.ngc, %scalar.ph10165.prol ], [ %indvars.iv7150.ph, %scalar.ph10165.preheader ] ; 3 uses
  %prol.iter11116 = phi i64 [ %prol.iter11116.next, %scalar.ph10165.prol ], [ 0, %scalar.ph10165.preheader ]
  %i.ngc = add nsw i64 %indvars.iv7150.prol, -1   ; 2 uses
  %i.ngd = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7150.prol
  %i.nge = load i64, ptr %i.ngd, align 8, !tbaa !91
  %i.ngf = trunc nuw i64 %indvars.iv7150.prol to i32
  %i.ngg = add i32 %i.nfa, %i.ngf
  %i.ngh = zext i32 %i.ngg to i64
  %i.ngi = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.ngh
  store i64 %i.nge, ptr %i.ngi, align 8, !tbaa !91
  %prol.iter11116.next = add i64 %prol.iter11116, 1 ; 2 uses
  %prol.iter11116.cmp.not = icmp eq i64 %prol.iter11116.next, %xtraiter11114
  br i1 %prol.iter11116.cmp.not, label %scalar.ph10165.prol.loopexit, label %scalar.ph10165.prol, !llvm.loop !211

scalar.ph10165.prol.loopexit:                     ; preds = %scalar.ph10165.prol, %scalar.ph10165.preheader
  %indvars.iv7150.unr = phi i64 [ %indvars.iv7150.ph, %scalar.ph10165.preheader ], [ %i.ngc, %scalar.ph10165.prol ]
  %i.ngj = icmp ult i64 %i.ngb, 3
  br i1 %i.ngj, label %.lr.ph6227.preheader, label %scalar.ph10165

scalar.ph10165:                                   ; preds = %scalar.ph10165.prol.loopexit, %scalar.ph10165
  %indvars.iv7150 = phi i64 [ %i.nhf, %scalar.ph10165 ], [ %indvars.iv7150.unr, %scalar.ph10165.prol.loopexit ] ; 6 uses
  %i.ngk = add nsw i64 %indvars.iv7150, -1        ; 2 uses
  %i.ngl = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7150
  %i.ngm = load i64, ptr %i.ngl, align 8, !tbaa !91
  %i.ngn = trunc nuw i64 %indvars.iv7150 to i32
  %i.ngo = add i32 %i.nfa, %i.ngn
  %i.ngp = zext i32 %i.ngo to i64
  %i.ngq = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.ngp
  store i64 %i.ngm, ptr %i.ngq, align 8, !tbaa !91
  %i.ngr = add nsw i64 %indvars.iv7150, -2        ; 2 uses
  %i.ngs = getelementptr [8 x i8], ptr %10, i64 %i.ngk
  %i.ngt = load i64, ptr %i.ngs, align 8, !tbaa !91
  %i.ngu = trunc nuw i64 %i.ngk to i32
  %i.ngv = add i32 %i.nfa, %i.ngu
  %i.ngw = zext i32 %i.ngv to i64
  %i.ngx = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.ngw
  store i64 %i.ngt, ptr %i.ngx, align 8, !tbaa !91
  %i.ngy = add nsw i64 %indvars.iv7150, -3        ; 2 uses
  %i.ngz = getelementptr [8 x i8], ptr %10, i64 %i.ngr
  %i.nha = load i64, ptr %i.ngz, align 8, !tbaa !91
  %i.nhb = trunc nuw i64 %i.ngr to i32
  %i.nhc = add i32 %i.nfa, %i.nhb
  %i.nhd = zext i32 %i.nhc to i64
  %i.nhe = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nhd
  store i64 %i.nha, ptr %i.nhe, align 8, !tbaa !91
  %i.nhf = add nsw i64 %indvars.iv7150, -4        ; 2 uses
  %i.nhg = getelementptr [8 x i8], ptr %10, i64 %i.ngy
  %i.nhh = load i64, ptr %i.nhg, align 8, !tbaa !91
  %i.nhi = trunc nuw i64 %i.ngy to i32
  %i.nhj = add i32 %i.nfa, %i.nhi
  %i.nhk = zext i32 %i.nhj to i64
  %i.nhl = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nhk
  store i64 %i.nhh, ptr %i.nhl, align 8, !tbaa !91
  %.not46.i1571.wide.3 = icmp eq i64 %i.nhf, 0
  br i1 %.not46.i1571.wide.3, label %.lr.ph6227.preheader, label %scalar.ph10165, !llvm.loop !212

.lr.ph6227.preheader:                             ; preds = %scalar.ph10165.prol.loopexit, %scalar.ph10165, %middle.block10174, %.preheader4997
  %i.nhm = add i32 %i.nev, %i.ney                 ; 2 uses
  store i32 %i.nhm, ptr %10, align 8, !tbaa !138
  br label %.lr.ph6202.preheader

bb.boc:                                           ; preds = %bb.bob
  %i.nhn = zext i32 %i.nev to i64                 ; 10 uses
  %i.nho = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nhn
  store i64 0, ptr %i.nho, align 8, !tbaa !91
  %.not.i15676211 = icmp eq i32 %i.nev, 0
  %.pre7676 = zext nneg i32 %i.nex to i64         ; 5 uses
  br i1 %.not.i15676211, label %._crit_edge6215, label %.lr.ph6214

.lr.ph6214:                                       ; preds = %bb.boc
  %i.nhp = sub nuw nsw i32 64, %i.nex
  %i.nhq = zext nneg i32 %i.nhp to i64            ; 4 uses
  %min.iters.check10145 = icmp ult i32 %i.nev, 20
  br i1 %min.iters.check10145, label %scalar.ph10144.preheader, label %vector.scevcheck10139

vector.scevcheck10139:                            ; preds = %.lr.ph6214
  %i.nhr = add nsw i64 %i.nhn, -1                 ; 2 uses
  %i.nhs = add i32 %i.nev, %i.ney
  %i.nht = trunc i64 %i.nhr to i32
  %i.nhu = icmp ult i32 %i.nhs, %i.nht
  %i.nhv = icmp ugt i64 %i.nhr, 4294967295
  %i.nhw = or i1 %i.nhu, %i.nhv
  br i1 %i.nhw, label %scalar.ph10144.preheader, label %vector.memcheck10140

vector.memcheck10140:                             ; preds = %vector.scevcheck10139
  %i.nhx = shl nuw nsw i64 %i.nhn, 3              ; 2 uses
  %i.nhy = add i32 %i.nev, %i.ney
  %i.nhz = zext i32 %i.nhy to i64
  %i.nia = shl nuw nsw i64 %i.nhz, 3              ; 2 uses
  %i.nib = sub nsw i64 %i.nia, %i.nhx
  %diff.check10141 = icmp ugt i64 %i.nib, -32
  %i.nic = sub nsw i64 %i.nhx, %i.nia
  %i.nid = add nsw i64 %i.nic, -9
  %diff.check10142 = icmp ult i64 %i.nid, 31
  %conflict.rdx10143 = or i1 %diff.check10141, %diff.check10142
  br i1 %conflict.rdx10143, label %scalar.ph10144.preheader, label %vector.ph10146

vector.ph10146:                                   ; preds = %vector.memcheck10140
  %n.vec10147 = and i64 %i.nhn, 4294967292        ; 2 uses
  %i.nie = and i64 %i.nhn, 3
  %broadcast.splatinsert10148 = insertelement <2 x i64> poison, i64 %i.nhq, i64 0
  %broadcast.splat10149 = shufflevector <2 x i64> %broadcast.splatinsert10148, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10150.a = insertelement <2 x i64> poison, i64 %.pre7676, i64 0
  %broadcast.splat10151.a = shufflevector <2 x i64> %broadcast.splatinsert10150.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10152

vector.body10152:                                 ; preds = %vector.body10152, %vector.ph10146
  %index10153 = phi i64 [ 0, %vector.ph10146 ], [ %index.next10158, %vector.body10152 ] ; 2 uses
  %i.nif = sub i64 %i.nhn, %index10153            ; 3 uses
  %i.nig = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nif ; 2 uses
  %i.nih = getelementptr inbounds i8, ptr %i.nig, i64 -8
  %i.nii = getelementptr inbounds i8, ptr %i.nig, i64 -24
  %wide.load10154 = load <2 x i64>, ptr %i.nih, align 8, !tbaa !91
  %wide.load10155 = load <2 x i64>, ptr %i.nii, align 8, !tbaa !91
  %i.nij = shl <2 x i64> %wide.load10154, %broadcast.splat10151.a
  %i.nik = shl <2 x i64> %wide.load10155, %broadcast.splat10151.a
  %i.nil = getelementptr [8 x i8], ptr %10, i64 %i.nif ; 2 uses
  %i.nim = getelementptr i8, ptr %i.nil, i64 -8
  %i.nin = getelementptr i8, ptr %i.nil, i64 -24
  %wide.load10156.a = load <2 x i64>, ptr %i.nim, align 8, !tbaa !91
  %wide.load10157.a = load <2 x i64>, ptr %i.nin, align 8, !tbaa !91
  %i.nio = lshr <2 x i64> %wide.load10156.a, %broadcast.splat10149
  %i.nip = lshr <2 x i64> %wide.load10157.a, %broadcast.splat10149
  %i.niq = or <2 x i64> %i.nio, %i.nij
  %i.nir = or <2 x i64> %i.nip, %i.nik
  %i.nis = trunc nuw i64 %i.nif to i32
  %i.nit = add i32 %i.ney, %i.nis
  %i.niu = zext i32 %i.nit to i64
  %i.niv = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.niu ; 2 uses
  %i.niw = getelementptr inbounds i8, ptr %i.niv, i64 -8
  %i.nix = getelementptr inbounds i8, ptr %i.niv, i64 -24
  store <2 x i64> %i.niq, ptr %i.niw, align 8, !tbaa !91
  store <2 x i64> %i.nir, ptr %i.nix, align 8, !tbaa !91
  %index.next10158 = add nuw i64 %index10153, 4   ; 2 uses
  %i.niy = icmp eq i64 %index.next10158, %n.vec10147
  br i1 %i.niy, label %middle.block10159, label %vector.body10152, !llvm.loop !213

middle.block10159:                                ; preds = %vector.body10152
  %cmp.n10160 = icmp eq i64 %n.vec10147, %i.nhn
  br i1 %cmp.n10160, label %._crit_edge6215, label %scalar.ph10144.preheader

scalar.ph10144.preheader:                         ; preds = %vector.memcheck10140, %vector.scevcheck10139, %.lr.ph6214, %middle.block10159
  %indvars.iv7145.ph = phi i64 [ %i.nhn, %vector.memcheck10140 ], [ %i.nhn, %vector.scevcheck10139 ], [ %i.nhn, %.lr.ph6214 ], [ %i.nie, %middle.block10159 ] ; 7 uses
  %xtraiter11111 = and i64 %indvars.iv7145.ph, 1
  %lcmp.mod11112.not = icmp eq i64 %xtraiter11111, 0
  br i1 %lcmp.mod11112.not, label %scalar.ph10144.prol.loopexit, label %scalar.ph10144.prol

scalar.ph10144.prol:                              ; preds = %scalar.ph10144.preheader
  %i.niz = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7145.ph
  %i.nja = load i64, ptr %i.niz, align 8, !tbaa !91
  %i.njb = shl i64 %i.nja, %.pre7676
  %i.njc = add nsw i64 %indvars.iv7145.ph, -1
  %i.njd = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7145.ph
  %i.nje = load i64, ptr %i.njd, align 8, !tbaa !91
  %i.njf = lshr i64 %i.nje, %i.nhq
  %i.njg = or i64 %i.njf, %i.njb
  %i.njh = trunc nuw i64 %indvars.iv7145.ph to i32
  %i.nji = add i32 %i.ney, %i.njh
  %i.njj = zext i32 %i.nji to i64
  %i.njk = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.njj
  store i64 %i.njg, ptr %i.njk, align 8, !tbaa !91
  br label %scalar.ph10144.prol.loopexit

scalar.ph10144.prol.loopexit:                     ; preds = %scalar.ph10144.prol, %scalar.ph10144.preheader
  %indvars.iv7145.unr = phi i64 [ %indvars.iv7145.ph, %scalar.ph10144.preheader ], [ %i.njc, %scalar.ph10144.prol ]
  %i.njl = icmp eq i64 %indvars.iv7145.ph, 1
  br i1 %i.njl, label %._crit_edge6215, label %scalar.ph10144

scalar.ph10144:                                   ; preds = %scalar.ph10144.prol.loopexit, %scalar.ph10144
  %indvars.iv7145 = phi i64 [ %i.nkb, %scalar.ph10144 ], [ %indvars.iv7145.unr, %scalar.ph10144.prol.loopexit ] ; 6 uses
  %i.njm = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %indvars.iv7145
  %i.njn = load i64, ptr %i.njm, align 8, !tbaa !91
  %i.njo = shl i64 %i.njn, %.pre7676
  %i.njp = add nsw i64 %indvars.iv7145, -1        ; 2 uses
  %i.njq = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7145
  %i.njr = load i64, ptr %i.njq, align 8, !tbaa !91
  %i.njs = lshr i64 %i.njr, %i.nhq
  %i.njt = or i64 %i.njs, %i.njo
  %i.nju = trunc nuw i64 %indvars.iv7145 to i32
  %i.njv = add i32 %i.ney, %i.nju
  %i.njw = zext i32 %i.njv to i64
  %i.njx = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.njw
  store i64 %i.njt, ptr %i.njx, align 8, !tbaa !91
  %i.njy = getelementptr [8 x i8], ptr %10, i64 %indvars.iv7145
  %i.njz = load i64, ptr %i.njy, align 8, !tbaa !91
  %i.nka = shl i64 %i.njz, %.pre7676
  %i.nkb = add nsw i64 %indvars.iv7145, -2        ; 2 uses
  %i.nkc = getelementptr [8 x i8], ptr %10, i64 %i.njp
  %i.nkd = load i64, ptr %i.nkc, align 8, !tbaa !91
  %i.nke = lshr i64 %i.nkd, %i.nhq
  %i.nkf = or i64 %i.nke, %i.nka
  %i.nkg = trunc nuw i64 %i.njp to i32
  %i.nkh = add i32 %i.ney, %i.nkg
  %i.nki = zext i32 %i.nkh to i64
  %i.nkj = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nki
  store i64 %i.nkf, ptr %i.nkj, align 8, !tbaa !91
  %.not.i1567.wide.1 = icmp eq i64 %i.nkb, 0
  br i1 %.not.i1567.wide.1, label %._crit_edge6215, label %scalar.ph10144, !llvm.loop !214

._crit_edge6215:                                  ; preds = %scalar.ph10144.prol.loopexit, %scalar.ph10144, %middle.block10159, %bb.boc
  %i.nkk = load i64, ptr %i.mxx, align 8, !tbaa !91
  %i.nkl = shl i64 %i.nkk, %.pre7676
  %i.nkm = zext nneg i32 %i.ney to i64
  %i.nkn = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nkm
  store i64 %i.nkl, ptr %i.nkn, align 8, !tbaa !91
  %i.nko = add i32 %i.nev, %i.ney                 ; 2 uses
  %i.nkp = zext i32 %i.nko to i64
  %i.nkq = getelementptr inbounds nuw [8 x i8], ptr %i.mxx, i64 %i.nkp
  %i.nkr = load i64, ptr %i.nkq, align 8, !tbaa !91
  %i.nks = icmp ne i64 %i.nkr, 0
  %i.nkt = zext i1 %i.nks to i32
  %i.nku = add i32 %i.nko, %i.nkt                 ; 2 uses
  %.not45.i15696216 = icmp eq i32 %i.ney, 0
  br i1 %.not45.i15696216, label %bigint_mul_pow2.exit1574, label %.lr.ph6202.preheader

bb.bod:                                           ; preds = %bigint_mul_pow10.exit1524
  %i.nkv = sub nsw i32 0, %.sroa.9.0.i428         ; 2 uses
  %i.nkw = and i32 %i.nkv, 63                     ; 3 uses
  %i.nkx = lshr i32 %i.nkv, 6                     ; 16 uses
  %i.nky = load i32, ptr %9, align 8, !tbaa !138  ; 12 uses
  %i.nkz = icmp eq i32 %i.nkw, 0
  br i1 %i.nkz, label %.preheader5000, label %bb.boe, !prof !8

.preheader5000:                                   ; preds = %bb.bod
  %.not46.i15806203 = icmp eq i32 %i.nky, 0
  br i1 %.not46.i15806203, label %._crit_edge6206, label %.lr.ph6205

.lr.ph6205:                                       ; preds = %.preheader5000
  %i.nla = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.nlb = add nsw i32 %i.nkx, -1                 ; 6 uses
  %i.nlc = zext i32 %i.nky to i64                 ; 9 uses
  %min.iters.check10128 = icmp ult i32 %i.nky, 30
  br i1 %min.iters.check10128, label %scalar.ph10127.preheader, label %vector.scevcheck10124

vector.scevcheck10124:                            ; preds = %.lr.ph6205
  %i.nld = add nsw i64 %i.nlc, -1                 ; 2 uses
  %i.nle = add i32 %i.nky, %i.nkx
  %i.nlf = add i32 %i.nle, -1
  %i.nlg = trunc i64 %i.nld to i32
  %i.nlh = icmp ult i32 %i.nlf, %i.nlg
  %i.nli = icmp ugt i64 %i.nld, 4294967295
  %i.nlj = or i1 %i.nlh, %i.nli
  br i1 %i.nlj, label %scalar.ph10127.preheader, label %vector.memcheck10125

vector.memcheck10125:                             ; preds = %vector.scevcheck10124
  %i.nlk = add i32 %i.nky, %i.nkx
  %i.nll = add i32 %i.nlk, -1
  %i.nlm = zext i32 %i.nll to i64
  %i.nln = sub nsw i64 %i.nlc, %i.nlm
  %i.nlo = shl nsw i64 %i.nln, 3
  %i.nlp = add nsw i64 %i.nlo, -9
  %diff.check10126 = icmp ult i64 %i.nlp, 31
  br i1 %diff.check10126, label %scalar.ph10127.preheader, label %vector.ph10129

vector.ph10129:                                   ; preds = %vector.memcheck10125
  %n.vec10130 = and i64 %i.nlc, 4294967292        ; 2 uses
  %i.nlq = and i64 %i.nlc, 3
  br label %vector.body10131

vector.body10131:                                 ; preds = %vector.body10131, %vector.ph10129
  %index10132 = phi i64 [ 0, %vector.ph10129 ], [ %index.next10135, %vector.body10131 ] ; 2 uses
  %i.nlr = sub i64 %i.nlc, %index10132            ; 2 uses
  %i.nls = getelementptr [8 x i8], ptr %9, i64 %i.nlr ; 2 uses
  %i.nlt = getelementptr i8, ptr %i.nls, i64 -8
  %i.nlu = getelementptr i8, ptr %i.nls, i64 -24
  %wide.load10133 = load <2 x i64>, ptr %i.nlt, align 8, !tbaa !91
  %wide.load10134 = load <2 x i64>, ptr %i.nlu, align 8, !tbaa !91
  %i.nlv = trunc nuw i64 %i.nlr to i32
  %i.nlw = add i32 %i.nlb, %i.nlv
  %i.nlx = zext i32 %i.nlw to i64
  %i.nly = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nlx ; 2 uses
  %i.nlz = getelementptr inbounds i8, ptr %i.nly, i64 -8
  %i.nma = getelementptr inbounds i8, ptr %i.nly, i64 -24
  store <2 x i64> %wide.load10133, ptr %i.nlz, align 8, !tbaa !91
  store <2 x i64> %wide.load10134, ptr %i.nma, align 8, !tbaa !91
  %index.next10135 = add nuw i64 %index10132, 4   ; 2 uses
  %i.nmb = icmp eq i64 %index.next10135, %n.vec10130
  br i1 %i.nmb, label %middle.block10136, label %vector.body10131, !llvm.loop !215

middle.block10136:                                ; preds = %vector.body10131
  %cmp.n10137 = icmp eq i64 %n.vec10130, %i.nlc
  br i1 %cmp.n10137, label %._crit_edge6206, label %scalar.ph10127.preheader

scalar.ph10127.preheader:                         ; preds = %vector.memcheck10125, %vector.scevcheck10124, %.lr.ph6205, %middle.block10136
  %indvars.iv7140.ph = phi i64 [ %i.nlc, %vector.memcheck10125 ], [ %i.nlc, %vector.scevcheck10124 ], [ %i.nlc, %.lr.ph6205 ], [ %i.nlq, %middle.block10136 ] ; 4 uses
  %i.nmc = add nsw i64 %indvars.iv7140.ph, -1
  %xtraiter11108 = and i64 %indvars.iv7140.ph, 3  ; 2 uses
  %lcmp.mod11109.not = icmp eq i64 %xtraiter11108, 0
  br i1 %lcmp.mod11109.not, label %scalar.ph10127.prol.loopexit, label %scalar.ph10127.prol

scalar.ph10127.prol:                              ; preds = %scalar.ph10127.preheader, %scalar.ph10127.prol
  %indvars.iv7140.prol = phi i64 [ %i.nmd, %scalar.ph10127.prol ], [ %indvars.iv7140.ph, %scalar.ph10127.preheader ] ; 3 uses
  %prol.iter11110 = phi i64 [ %prol.iter11110.next, %scalar.ph10127.prol ], [ 0, %scalar.ph10127.preheader ]
  %i.nmd = add nsw i64 %indvars.iv7140.prol, -1   ; 2 uses
  %i.nme = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7140.prol
  %i.nmf = load i64, ptr %i.nme, align 8, !tbaa !91
  %i.nmg = trunc nuw i64 %indvars.iv7140.prol to i32
  %i.nmh = add i32 %i.nlb, %i.nmg
  %i.nmi = zext i32 %i.nmh to i64
  %i.nmj = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nmi
  store i64 %i.nmf, ptr %i.nmj, align 8, !tbaa !91
  %prol.iter11110.next = add i64 %prol.iter11110, 1 ; 2 uses
  %prol.iter11110.cmp.not = icmp eq i64 %prol.iter11110.next, %xtraiter11108
  br i1 %prol.iter11110.cmp.not, label %scalar.ph10127.prol.loopexit, label %scalar.ph10127.prol, !llvm.loop !216

scalar.ph10127.prol.loopexit:                     ; preds = %scalar.ph10127.prol, %scalar.ph10127.preheader
  %indvars.iv7140.unr = phi i64 [ %indvars.iv7140.ph, %scalar.ph10127.preheader ], [ %i.nmd, %scalar.ph10127.prol ]
  %i.nmk = icmp ult i64 %i.nmc, 3
  br i1 %i.nmk, label %._crit_edge6206, label %scalar.ph10127

scalar.ph10127:                                   ; preds = %scalar.ph10127.prol.loopexit, %scalar.ph10127
  %indvars.iv7140 = phi i64 [ %i.nng, %scalar.ph10127 ], [ %indvars.iv7140.unr, %scalar.ph10127.prol.loopexit ] ; 6 uses
  %i.nml = add nsw i64 %indvars.iv7140, -1        ; 2 uses
  %i.nmm = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7140
  %i.nmn = load i64, ptr %i.nmm, align 8, !tbaa !91
  %i.nmo = trunc nuw i64 %indvars.iv7140 to i32
  %i.nmp = add i32 %i.nlb, %i.nmo
  %i.nmq = zext i32 %i.nmp to i64
  %i.nmr = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nmq
  store i64 %i.nmn, ptr %i.nmr, align 8, !tbaa !91
  %i.nms = add nsw i64 %indvars.iv7140, -2        ; 2 uses
  %i.nmt = getelementptr [8 x i8], ptr %9, i64 %i.nml
  %i.nmu = load i64, ptr %i.nmt, align 8, !tbaa !91
  %i.nmv = trunc nuw i64 %i.nml to i32
  %i.nmw = add i32 %i.nlb, %i.nmv
  %i.nmx = zext i32 %i.nmw to i64
  %i.nmy = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nmx
  store i64 %i.nmu, ptr %i.nmy, align 8, !tbaa !91
  %i.nmz = add nsw i64 %indvars.iv7140, -3        ; 2 uses
  %i.nna = getelementptr [8 x i8], ptr %9, i64 %i.nms
  %i.nnb = load i64, ptr %i.nna, align 8, !tbaa !91
  %i.nnc = trunc nuw i64 %i.nms to i32
  %i.nnd = add i32 %i.nlb, %i.nnc
  %i.nne = zext i32 %i.nnd to i64
  %i.nnf = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nne
  store i64 %i.nnb, ptr %i.nnf, align 8, !tbaa !91
  %i.nng = add nsw i64 %indvars.iv7140, -4        ; 2 uses
  %i.nnh = getelementptr [8 x i8], ptr %9, i64 %i.nmz
  %i.nni = load i64, ptr %i.nnh, align 8, !tbaa !91
  %i.nnj = trunc nuw i64 %i.nmz to i32
  %i.nnk = add i32 %i.nlb, %i.nnj
  %i.nnl = zext i32 %i.nnk to i64
  %i.nnm = getelementptr inbounds nuw [8 x i8], ptr %i.nla, i64 %i.nnl
  store i64 %i.nni, ptr %i.nnm, align 8, !tbaa !91
  %.not46.i1580.wide.3 = icmp eq i64 %i.nng, 0
  br i1 %.not46.i1580.wide.3, label %._crit_edge6206, label %scalar.ph10127, !llvm.loop !217

._crit_edge6206:                                  ; preds = %scalar.ph10127.prol.loopexit, %scalar.ph10127, %middle.block10136, %.preheader5000
  %i.nnn = add i32 %i.nky, %i.nkx
  store i32 %i.nnn, ptr %9, align 8, !tbaa !138
  %.not47.i15826207 = icmp eq i32 %i.nkx, 0
  br i1 %.not47.i15826207, label %bigint_mul_pow2.exit1574, label %.lr.ph6210

.lr.ph6210:                                       ; preds = %._crit_edge6206
  %i.nno = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.lr.ph6202.preheader

bb.boe:                                           ; preds = %bb.bod
  %i.nnp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.nnq = zext i32 %i.nky to i64                 ; 10 uses
  %i.nnr = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.nnq
  store i64 0, ptr %i.nnr, align 8, !tbaa !91
  %.not.i15766194 = icmp eq i32 %i.nky, 0
  %.pre7678 = zext nneg i32 %i.nkw to i64         ; 5 uses
  br i1 %.not.i15766194, label %._crit_edge6198, label %.lr.ph6197

.lr.ph6197:                                       ; preds = %bb.boe
  %i.nns = sub nuw nsw i32 64, %i.nkw
  %i.nnt = zext nneg i32 %i.nns to i64            ; 4 uses
  %min.iters.check10107 = icmp ult i32 %i.nky, 20
  br i1 %min.iters.check10107, label %scalar.ph10106.preheader, label %vector.scevcheck10101

vector.scevcheck10101:                            ; preds = %.lr.ph6197
  %i.nnu = add nsw i64 %i.nnq, -1                 ; 2 uses
  %i.nnv = add i32 %i.nky, %i.nkx
  %i.nnw = trunc i64 %i.nnu to i32
  %i.nnx = icmp ult i32 %i.nnv, %i.nnw
  %i.nny = icmp ugt i64 %i.nnu, 4294967295
  %i.nnz = or i1 %i.nnx, %i.nny
  br i1 %i.nnz, label %scalar.ph10106.preheader, label %vector.memcheck10102

vector.memcheck10102:                             ; preds = %vector.scevcheck10101
  %i.noa = shl nuw nsw i64 %i.nnq, 3              ; 2 uses
  %i.nob = add i32 %i.nky, %i.nkx
  %i.noc = zext i32 %i.nob to i64
  %i.nod = shl nuw nsw i64 %i.noc, 3              ; 2 uses
  %i.noe = sub nsw i64 %i.nod, %i.noa
  %diff.check10103 = icmp ugt i64 %i.noe, -32
  %i.nof = sub nsw i64 %i.noa, %i.nod
  %i.nog = add nsw i64 %i.nof, -9
  %diff.check10104 = icmp ult i64 %i.nog, 31
  %conflict.rdx10105 = or i1 %diff.check10103, %diff.check10104
  br i1 %conflict.rdx10105, label %scalar.ph10106.preheader, label %vector.ph10108

vector.ph10108:                                   ; preds = %vector.memcheck10102
  %n.vec10109 = and i64 %i.nnq, 4294967292        ; 2 uses
  %i.noh = and i64 %i.nnq, 3
  %broadcast.splatinsert10110 = insertelement <2 x i64> poison, i64 %i.nnt, i64 0
  %broadcast.splat10111 = shufflevector <2 x i64> %broadcast.splatinsert10110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10112 = insertelement <2 x i64> poison, i64 %.pre7678, i64 0
  %broadcast.splat10113 = shufflevector <2 x i64> %broadcast.splatinsert10112, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10114

vector.body10114:                                 ; preds = %vector.body10114, %vector.ph10108
  %index10115 = phi i64 [ 0, %vector.ph10108 ], [ %index.next10120, %vector.body10114 ] ; 2 uses
  %i.noi = sub i64 %i.nnq, %index10115            ; 3 uses
  %i.noj = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.noi ; 2 uses
  %i.nok = getelementptr inbounds i8, ptr %i.noj, i64 -8
  %i.nol = getelementptr inbounds i8, ptr %i.noj, i64 -24
  %wide.load10116 = load <2 x i64>, ptr %i.nok, align 8, !tbaa !91
  %wide.load10117 = load <2 x i64>, ptr %i.nol, align 8, !tbaa !91
  %i.nom = shl <2 x i64> %wide.load10116, %broadcast.splat10113
  %i.non = shl <2 x i64> %wide.load10117, %broadcast.splat10113
  %i.noo = getelementptr [8 x i8], ptr %9, i64 %i.noi ; 2 uses
  %i.nop = getelementptr i8, ptr %i.noo, i64 -8
  %i.noq = getelementptr i8, ptr %i.noo, i64 -24
  %wide.load10118 = load <2 x i64>, ptr %i.nop, align 8, !tbaa !91
  %wide.load10119 = load <2 x i64>, ptr %i.noq, align 8, !tbaa !91
  %i.nor = lshr <2 x i64> %wide.load10118, %broadcast.splat10111
  %i.nos = lshr <2 x i64> %wide.load10119, %broadcast.splat10111
  %i.not = or <2 x i64> %i.nor, %i.nom
  %i.nou = or <2 x i64> %i.nos, %i.non
  %i.nov = trunc nuw i64 %i.noi to i32
  %i.now = add i32 %i.nkx, %i.nov
  %i.nox = zext i32 %i.now to i64
  %i.noy = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.nox ; 2 uses
  %i.noz = getelementptr inbounds i8, ptr %i.noy, i64 -8
  %i.npa = getelementptr inbounds i8, ptr %i.noy, i64 -24
  store <2 x i64> %i.not, ptr %i.noz, align 8, !tbaa !91
  store <2 x i64> %i.nou, ptr %i.npa, align 8, !tbaa !91
  %index.next10120 = add nuw i64 %index10115, 4   ; 2 uses
  %i.npb = icmp eq i64 %index.next10120, %n.vec10109
  br i1 %i.npb, label %middle.block10121, label %vector.body10114, !llvm.loop !218

middle.block10121:                                ; preds = %vector.body10114
  %cmp.n10122 = icmp eq i64 %n.vec10109, %i.nnq
  br i1 %cmp.n10122, label %._crit_edge6198, label %scalar.ph10106.preheader

scalar.ph10106.preheader:                         ; preds = %vector.memcheck10102, %vector.scevcheck10101, %.lr.ph6197, %middle.block10121
  %indvars.iv7135.ph = phi i64 [ %i.nnq, %vector.memcheck10102 ], [ %i.nnq, %vector.scevcheck10101 ], [ %i.nnq, %.lr.ph6197 ], [ %i.noh, %middle.block10121 ] ; 7 uses
  %xtraiter11105 = and i64 %indvars.iv7135.ph, 1
  %lcmp.mod11106.not = icmp eq i64 %xtraiter11105, 0
  br i1 %lcmp.mod11106.not, label %scalar.ph10106.prol.loopexit, label %scalar.ph10106.prol

scalar.ph10106.prol:                              ; preds = %scalar.ph10106.preheader
  %i.npc = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %indvars.iv7135.ph
  %i.npd = load i64, ptr %i.npc, align 8, !tbaa !91
  %i.npe = shl i64 %i.npd, %.pre7678
  %i.npf = add nsw i64 %indvars.iv7135.ph, -1
  %i.npg = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135.ph
  %i.nph = load i64, ptr %i.npg, align 8, !tbaa !91
  %i.npi = lshr i64 %i.nph, %i.nnt
  %i.npj = or i64 %i.npi, %i.npe
  %i.npk = trunc nuw i64 %indvars.iv7135.ph to i32
  %i.npl = add i32 %i.nkx, %i.npk
  %i.npm = zext i32 %i.npl to i64
  %i.npn = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.npm
  store i64 %i.npj, ptr %i.npn, align 8, !tbaa !91
  br label %scalar.ph10106.prol.loopexit

scalar.ph10106.prol.loopexit:                     ; preds = %scalar.ph10106.prol, %scalar.ph10106.preheader
  %indvars.iv7135.unr = phi i64 [ %indvars.iv7135.ph, %scalar.ph10106.preheader ], [ %i.npf, %scalar.ph10106.prol ]
  %i.npo = icmp eq i64 %indvars.iv7135.ph, 1
  br i1 %i.npo, label %._crit_edge6198, label %scalar.ph10106

scalar.ph10106:                                   ; preds = %scalar.ph10106.prol.loopexit, %scalar.ph10106
  %indvars.iv7135 = phi i64 [ %i.nqe, %scalar.ph10106 ], [ %indvars.iv7135.unr, %scalar.ph10106.prol.loopexit ] ; 6 uses
  %i.npp = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %indvars.iv7135
  %i.npq = load i64, ptr %i.npp, align 8, !tbaa !91
  %i.npr = shl i64 %i.npq, %.pre7678
  %i.nps = add nsw i64 %indvars.iv7135, -1        ; 2 uses
  %i.npt = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135
  %i.npu = load i64, ptr %i.npt, align 8, !tbaa !91
  %i.npv = lshr i64 %i.npu, %i.nnt
  %i.npw = or i64 %i.npv, %i.npr
  %i.npx = trunc nuw i64 %indvars.iv7135 to i32
  %i.npy = add i32 %i.nkx, %i.npx
  %i.npz = zext i32 %i.npy to i64
  %i.nqa = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.npz
  store i64 %i.npw, ptr %i.nqa, align 8, !tbaa !91
  %i.nqb = getelementptr [8 x i8], ptr %9, i64 %indvars.iv7135
  %i.nqc = load i64, ptr %i.nqb, align 8, !tbaa !91
  %i.nqd = shl i64 %i.nqc, %.pre7678
  %i.nqe = add nsw i64 %indvars.iv7135, -2        ; 2 uses
  %i.nqf = getelementptr [8 x i8], ptr %9, i64 %i.nps
  %i.nqg = load i64, ptr %i.nqf, align 8, !tbaa !91
  %i.nqh = lshr i64 %i.nqg, %i.nnt
  %i.nqi = or i64 %i.nqh, %i.nqd
  %i.nqj = trunc nuw i64 %i.nps to i32
  %i.nqk = add i32 %i.nkx, %i.nqj
  %i.nql = zext i32 %i.nqk to i64
  %i.nqm = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.nql
  store i64 %i.nqi, ptr %i.nqm, align 8, !tbaa !91
  %.not.i1576.wide.1 = icmp eq i64 %i.nqe, 0
  br i1 %.not.i1576.wide.1, label %._crit_edge6198, label %scalar.ph10106, !llvm.loop !219

._crit_edge6198:                                  ; preds = %scalar.ph10106.prol.loopexit, %scalar.ph10106, %middle.block10121, %bb.boe
  %i.nqn = load i64, ptr %i.nnp, align 8, !tbaa !91
  %i.nqo = shl i64 %i.nqn, %.pre7678
  %i.nqp = zext nneg i32 %i.nkx to i64
  %i.nqq = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.nqp
  store i64 %i.nqo, ptr %i.nqq, align 8, !tbaa !91
  %i.nqr = add i32 %i.nky, %i.nkx                 ; 2 uses
  %i.nqs = zext i32 %i.nqr to i64
  %i.nqt = getelementptr inbounds nuw [8 x i8], ptr %i.nnp, i64 %i.nqs
  %i.nqu = load i64, ptr %i.nqt, align 8, !tbaa !91
  %i.nqv = icmp ne i64 %i.nqu, 0
  %i.nqw = zext i1 %i.nqv to i32
  %i.nqx = add i32 %i.nqr, %i.nqw
  store i32 %i.nqx, ptr %9, align 8, !tbaa !138
  %.not45.i15786199 = icmp eq i32 %i.nkx, 0
  br i1 %.not45.i15786199, label %bigint_mul_pow2.exit1574, label %.lr.ph6202.preheader

.lr.ph6202.preheader:                             ; preds = %._crit_edge6198, %._crit_edge6215, %.lr.ph6227.preheader, %.lr.ph6210
  %.sink9175 = phi i32 [ %i.ney, %._crit_edge6215 ], [ %i.nkx, %.lr.ph6210 ], [ %i.ney, %.lr.ph6227.preheader ], [ %i.nkx, %._crit_edge6198 ]
  %.sink9170 = phi ptr [ %i.mxx, %._crit_edge6215 ], [ %i.nno, %.lr.ph6210 ], [ %i.mxx, %.lr.ph6227.preheader ], [ %i.nnp, %._crit_edge6198 ]
  %.ph9169 = phi i32 [ %i.nku, %._crit_edge6215 ], [ %i.nev, %.lr.ph6210 ], [ %i.nhm, %.lr.ph6227.preheader ], [ %i.nev, %._crit_edge6198 ]
  %27 = add nsw i32 %.sink9175, -1
  %i.nqy = zext i32 %27 to i64
  %28 = shl nuw nsw i64 %i.nqy, 3
  %29 = add nuw nsw i64 %28, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink9170, i8 0, i64 %29, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1574

bigint_mul_pow2.exit1574:                         ; preds = %.lr.ph6202.preheader, %._crit_edge6198, %._crit_edge6206, %._crit_edge6215
  %30 = phi i32 [ %i.nku, %._crit_edge6215 ], [ %i.nev, %._crit_edge6198 ], [ %i.nev, %._crit_edge6206 ], [ %.ph9169, %.lr.ph6202.preheader ] ; 2 uses
  %i.nqz = load i32, ptr %9, align 8, !tbaa !138  ; 4 uses
  %i.nra = icmp ult i32 %i.nqz, %30
  br i1 %i.nra, label %bigint_cmp.exit1622.thread, label %bb.bof

bb.bof:                                           ; preds = %bigint_mul_pow2.exit1574
  %i.nrb = icmp ugt i32 %i.nqz, %30
  br i1 %i.nrb, label %bigint_cmp.exit1622.thread, label %.preheader4996

.preheader4996:                                   ; preds = %bb.bof
  %.not.i16169938 = icmp eq i32 %i.nqz, 0
  br i1 %.not.i16169938, label %bigint_cmp.exit1622.thread4534, label %.lr.ph9941

.lr.ph9941:                                       ; preds = %.preheader4996
  %i.nrc = zext i32 %i.nqz to i64
  br label %bb.boh

bb.bog:                                           ; preds = %bb.boh
  %i.nrd = add nsw i64 %indvars.iv71539939, -1    ; 2 uses
  %.not.i1616 = icmp eq i64 %i.nrd, 0
  br i1 %.not.i1616, label %bigint_cmp.exit1622.thread4534, label %bb.boh, !llvm.loop !153

bb.boh:                                           ; preds = %.lr.ph9941, %bb.bog
  %.016.i16149940 = phi i32 [ undef, %.lr.ph9941 ], [ %.1.i1619, %bb.bog ]
  %indvars.iv71539939 = phi i64 [ %i.nrc, %.lr.ph9941 ], [ %i.nrd, %bb.bog ] ; 3 uses
  %i.nre = getelementptr [8 x i8], ptr %9, i64 %indvars.iv71539939
  %i.nrf = load i64, ptr %i.nre, align 8, !tbaa !91 ; 3 uses
  %i.nrg = getelementptr [8 x i8], ptr %10, i64 %indvars.iv71539939
  %i.nrh = load i64, ptr %i.nrg, align 8, !tbaa !91 ; 3 uses
  %.not4698 = icmp ult i64 %i.nrf, %i.nrh
  %.not4699 = icmp ugt i64 %i.nrf, %i.nrh
  %..016.i1617 = select i1 %.not4699, i32 1, i32 %.016.i16149940
  %.1.i1619 = select i1 %.not4698, i32 -1, i32 %..016.i1617 ; 3 uses
  %cond.i1620 = icmp eq i64 %i.nrf, %i.nrh
  br i1 %cond.i1620, label %bb.bog, label %bigint_cmp.exit1622, !llvm.loop !153

bigint_cmp.exit1622:                              ; preds = %bb.boh
  %.not989.i430 = icmp eq i32 %.1.i1619, 0
  br i1 %.not989.i430, label %bigint_cmp.exit1622.thread4534, label %bigint_cmp.exit1622.thread, !prof !124

bigint_cmp.exit1622.thread:                       ; preds = %bigint_mul_pow2.exit1574, %bb.bof, %bigint_cmp.exit1622
  %.2.i16214533 = phi i32 [ %.1.i1619, %bigint_cmp.exit1622 ], [ -1, %bigint_mul_pow2.exit1574 ], [ 1, %bb.bof ]
  %i.nri = icmp sgt i32 %.2.i16214533, 0
  %i.nrj = zext i1 %i.nri to i64
  br label %bb.boi

bigint_cmp.exit1622.thread4534:                   ; preds = %bb.bog, %.preheader4996, %bigint_cmp.exit1622
  %i.nrk = and i64 %.0.i1507.ph, 1
  br label %bb.boi

bb.boi:                                           ; preds = %bigint_cmp.exit1622.thread4534, %bigint_cmp.exit1622.thread
  %.pn.i431 = phi i64 [ %i.nrj, %bigint_cmp.exit1622.thread ], [ %i.nrk, %bigint_cmp.exit1622.thread4534 ]
  %.0895.i432 = add nuw nsw i64 %.pn.i431, %.0.i1507.ph ; 2 uses
  %i.nrl = icmp eq i64 %.0895.i432, 9218868437227405312
  br i1 %i.nrl, label %bb.boj, label %bb.boo, !prof !8

bb.boj:                                           ; preds = %bb.boi
  %i.nrm = and i32 %2, 128
  %.not4700 = icmp eq i32 %i.nrm, 0
  br i1 %.not4700, label %bb.bol, label %bb.bok, !prof !25

bb.bok:                                           ; preds = %bb.boj
  %i.nrn = load ptr, ptr %i.h, align 8, !tbaa !92
  store i8 0, ptr %i.nrn, align 1, !tbaa !81
  %i.nro = ptrtoint ptr %.33.i406 to i64
  %i.nrp = ptrtoint ptr %i.lqb to i64
  %i.nrq = sub i64 %i.nro, %i.nrp
  %i.nrr = shl i64 %i.nrq, 8
  %i.nrs = or disjoint i64 %i.nrr, 1
  store i64 %i.nrs, ptr %i.lqg, align 8, !tbaa !79
  %i.nrt = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store ptr %i.lqb, ptr %i.nrt, align 8, !tbaa !81
  store ptr %.33.i406, ptr %i.h, align 8, !tbaa !92
  br label %.split4569

bb.bol:                                           ; preds = %bb.boj
  br i1 %.not4658, label %bb.bon, label %bb.bom, !prof !25

bb.bom:                                           ; preds = %bb.bol
  store i64 20, ptr %i.lqg, align 8, !tbaa !79
  %i.nru = select i1 %i.lqk, i64 -4503599627370496, i64 9218868437227405312
  %i.nrv = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.nru, ptr %i.nrv, align 8, !tbaa !81
  br label %.split4569

bb.bon:                                           ; preds = %bb.bol
  store ptr @.str.93, ptr %i.f, align 8, !tbaa !92
  store ptr %i.lqb, ptr %i.e, align 8, !tbaa !92
  br label %.split4569.thread

bb.boo:                                           ; preds = %bb.boi
  store i64 20, ptr %i.lqg, align 8, !tbaa !79
  %i.nrw = select i1 %i.lqk, i64 -9223372036854775808, i64 0
  %i.nrx = or disjoint i64 %.0895.i432, %i.nrw
  %i.nry = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 24
  store i64 %i.nrx, ptr %i.nry, align 8, !tbaa !81
  br label %.split4569

.split4569.thread:                                ; preds = %bb.bnj, %bb.bon
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.bqv

.split4569:                                       ; preds = %bb.boo, %bb.bom, %bb.bok, %bb.bnl, %bb.bni, %bb.bng
  store ptr %.33.i406, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

.preheader4984:                                   ; preds = %bb.bpo, %bb.bpp, %bb.bpv, %bb.bpu, %bb.ayc, %bb.bpy, %bb.bql, %read_str_opt.exit927, %.split4538, %.split4555, %read_num.exit515, %read_true.exit778, %read_false.exit781, %read_null.exit784, %read_nan.exit830, %read_inf.exit1477, %.split4556, %.split4554, %.split4566, %.split4558, %.split4550, %.split4549, %.split4548, %.split4557, %.split4559, %.split4560, %.split4561, %.split4564, %.split4565, %.split4539, %.split4540, %.split4541, %.split4542, %.split4543, %.split4544, %.split4545, %.split4546, %.split4547, %.split4553, %.split4552, %.split4551, %.split4563, %.split4562, %.split4567, %.split4568, %.split4569
  %.19788.i193.ph = phi i64 [ %.18787.i222.ph, %.split4568 ], [ %.18787.i222.ph, %.split4567 ], [ %.18787.i222.ph, %.split4566 ], [ %.18787.i222.ph, %.split4565 ], [ %.18787.i222.ph, %.split4564 ], [ %.18787.i222.ph, %.split4563 ], [ %.18787.i222.ph, %.split4562 ], [ %.18787.i222.ph, %.split4561 ], [ %.18787.i222.ph, %.split4560 ], [ %.18787.i222.ph, %.split4559 ], [ %.18787.i222.ph, %.split4558 ], [ %.18787.i222.ph, %.split4557 ], [ %.18787.i222.ph, %.split4556 ], [ %.18787.i222.ph, %.split4555 ], [ %.18787.i222.ph, %.split4554 ], [ %.18787.i222.ph, %read_inf.exit1477 ], [ %.18787.i222.ph, %.split4553 ], [ %.18787.i222.ph, %.split4552 ], [ %.18787.i222.ph, %.split4551 ], [ %.18787.i222.ph, %.split4550 ], [ %.18787.i222.ph, %.split4549 ], [ %.18787.i222.ph, %.split4548 ], [ %.18787.i222.ph, %.split4547 ], [ %.18787.i222.ph, %.split4546 ], [ %.18787.i222.ph, %.split4545 ], [ %.18787.i222.ph, %.split4544 ], [ %.18787.i222.ph, %.split4543 ], [ %.18787.i222.ph, %.split4542 ], [ %.18787.i222.ph, %.split4541 ], [ %.18787.i222.ph, %.split4540 ], [ %.18787.i222.ph, %.split4539 ], [ %.18787.i222.ph, %.split4538 ], [ %.18787.i222.ph, %bb.bpy ], [ %.18787.i222.ph, %read_str_opt.exit927 ], [ %.18787.i222.ph, %read_nan.exit830 ], [ %.18787.i222.ph, %read_null.exit784 ], [ %.18787.i222.ph, %read_false.exit781 ], [ %.18787.i222.ph, %read_true.exit778 ], [ %.18787.i222.ph, %read_num.exit515 ], [ %.18787.i222.ph, %.split4569 ], [ %.11780.i187, %bb.ayc ], [ %.20789.i175, %bb.bql ], [ %.18787.i222.ph, %bb.bpu ], [ %.18787.i222.ph, %bb.bpv ], [ %.18787.i222.ph, %bb.bpp ], [ %.18787.i222.ph, %bb.bpo ] ; 2 uses
  %.7767.i194.ph = phi i64 [ %i.lqh, %.split4568 ], [ %i.lqh, %.split4567 ], [ %i.lqh, %.split4566 ], [ %i.lqh, %.split4565 ], [ %i.lqh, %.split4564 ], [ %i.lqh, %.split4563 ], [ %i.lqh, %.split4562 ], [ %i.lqh, %.split4561 ], [ %i.lqh, %.split4560 ], [ %i.lqh, %.split4559 ], [ %i.lqh, %.split4558 ], [ %i.lqh, %.split4557 ], [ %i.lqh, %.split4556 ], [ %i.lqh, %.split4555 ], [ %i.lqh, %.split4554 ], [ %i.lqh, %read_inf.exit1477 ], [ %i.lqh, %.split4553 ], [ %i.lqh, %.split4552 ], [ %i.lqh, %.split4551 ], [ %i.lqh, %.split4550 ], [ %i.lqh, %.split4549 ], [ %i.lqh, %.split4548 ], [ %i.lqh, %.split4547 ], [ %i.lqh, %.split4546 ], [ %i.lqh, %.split4545 ], [ %i.lqh, %.split4544 ], [ %i.lqh, %.split4543 ], [ %i.lqh, %.split4542 ], [ %i.lqh, %.split4541 ], [ %i.lqh, %.split4540 ], [ %i.lqh, %.split4539 ], [ %i.lqh, %.split4538 ], [ %i.nwl, %bb.bpy ], [ %i.kwv, %read_str_opt.exit927 ], [ %i.nsk, %read_nan.exit830 ], [ %i.nsk, %read_null.exit784 ], [ %i.nsg, %read_false.exit781 ], [ %i.nsb, %read_true.exit778 ], [ %i.lqh, %read_num.exit515 ], [ %i.lqh, %.split4569 ], [ %i.jyr, %bb.ayc ], [ %i.nxx, %bb.bql ], [ %i.nty, %bb.bpu ], [ %i.nty, %bb.bpv ], [ %i.nty, %bb.bpp ], [ %i.nty, %bb.bpo ] ; 2 uses
  %.31757.i195.ph = phi ptr [ %.30756.i224.ph, %.split4568 ], [ %.30756.i224.ph, %.split4567 ], [ %.30756.i224.ph, %.split4566 ], [ %.30756.i224.ph, %.split4565 ], [ %.30756.i224.ph, %.split4564 ], [ %.30756.i224.ph, %.split4563 ], [ %.30756.i224.ph, %.split4562 ], [ %.30756.i224.ph, %.split4561 ], [ %.30756.i224.ph, %.split4560 ], [ %.30756.i224.ph, %.split4559 ], [ %.30756.i224.ph, %.split4558 ], [ %.30756.i224.ph, %.split4557 ], [ %.30756.i224.ph, %.split4556 ], [ %.30756.i224.ph, %.split4555 ], [ %.30756.i224.ph, %.split4554 ], [ %.30756.i224.ph, %read_inf.exit1477 ], [ %.30756.i224.ph, %.split4553 ], [ %.30756.i224.ph, %.split4552 ], [ %.30756.i224.ph, %.split4551 ], [ %.30756.i224.ph, %.split4550 ], [ %.30756.i224.ph, %.split4549 ], [ %.30756.i224.ph, %.split4548 ], [ %.30756.i224.ph, %.split4547 ], [ %.30756.i224.ph, %.split4546 ], [ %.30756.i224.ph, %.split4545 ], [ %.30756.i224.ph, %.split4544 ], [ %.30756.i224.ph, %.split4543 ], [ %.30756.i224.ph, %.split4542 ], [ %.30756.i224.ph, %.split4541 ], [ %.30756.i224.ph, %.split4540 ], [ %.30756.i224.ph, %.split4539 ], [ %.30756.i224.ph, %.split4538 ], [ %.30756.i224.ph, %bb.bpy ], [ %.30756.i224.ph, %read_str_opt.exit927 ], [ %.30756.i224.ph, %read_nan.exit830 ], [ %.30756.i224.ph, %read_null.exit784 ], [ %.30756.i224.ph, %read_false.exit781 ], [ %.30756.i224.ph, %read_true.exit778 ], [ %.30756.i224.ph, %read_num.exit515 ], [ %.30756.i224.ph, %.split4569 ], [ %.19745.i189, %bb.ayc ], [ %.32758.i177, %bb.bql ], [ %.30756.i224.ph, %bb.bpu ], [ %.30756.i224.ph, %bb.bpv ], [ %.30756.i224.ph, %bb.bpp ], [ %.30756.i224.ph, %bb.bpo ] ; 4 uses
  %.31724.i196.ph = phi ptr [ %.30723.i225.ph, %.split4568 ], [ %.30723.i225.ph, %.split4567 ], [ %.30723.i225.ph, %.split4566 ], [ %.30723.i225.ph, %.split4565 ], [ %.30723.i225.ph, %.split4564 ], [ %.30723.i225.ph, %.split4563 ], [ %.30723.i225.ph, %.split4562 ], [ %.30723.i225.ph, %.split4561 ], [ %.30723.i225.ph, %.split4560 ], [ %.30723.i225.ph, %.split4559 ], [ %.30723.i225.ph, %.split4558 ], [ %.30723.i225.ph, %.split4557 ], [ %.30723.i225.ph, %.split4556 ], [ %.30723.i225.ph, %.split4555 ], [ %.30723.i225.ph, %.split4554 ], [ %.30723.i225.ph, %read_inf.exit1477 ], [ %.30723.i225.ph, %.split4553 ], [ %.30723.i225.ph, %.split4552 ], [ %.30723.i225.ph, %.split4551 ], [ %.30723.i225.ph, %.split4550 ], [ %.30723.i225.ph, %.split4549 ], [ %.30723.i225.ph, %.split4548 ], [ %.30723.i225.ph, %.split4547 ], [ %.30723.i225.ph, %.split4546 ], [ %.30723.i225.ph, %.split4545 ], [ %.30723.i225.ph, %.split4544 ], [ %.30723.i225.ph, %.split4543 ], [ %.30723.i225.ph, %.split4542 ], [ %.30723.i225.ph, %.split4541 ], [ %.30723.i225.ph, %.split4540 ], [ %.30723.i225.ph, %.split4539 ], [ %.30723.i225.ph, %.split4538 ], [ %.30723.i225.ph, %bb.bpy ], [ %.30723.i225.ph, %read_str_opt.exit927 ], [ %.30723.i225.ph, %read_nan.exit830 ], [ %.30723.i225.ph, %read_null.exit784 ], [ %.30723.i225.ph, %read_false.exit781 ], [ %.30723.i225.ph, %read_true.exit778 ], [ %.30723.i225.ph, %read_num.exit515 ], [ %.30723.i225.ph, %.split4569 ], [ %.19712.i190, %bb.ayc ], [ %.32725.i178, %bb.bql ], [ %.30723.i225.ph, %bb.bpu ], [ %.30723.i225.ph, %bb.bpv ], [ %.30723.i225.ph, %bb.bpp ], [ %.30723.i225.ph, %bb.bpo ] ; 2 uses
  %.31691.i197.ph = phi ptr [ %i.lqg, %.split4568 ], [ %i.lqg, %.split4567 ], [ %i.lqg, %.split4566 ], [ %i.lqg, %.split4565 ], [ %i.lqg, %.split4564 ], [ %i.lqg, %.split4563 ], [ %i.lqg, %.split4562 ], [ %i.lqg, %.split4561 ], [ %i.lqg, %.split4560 ], [ %i.lqg, %.split4559 ], [ %i.lqg, %.split4558 ], [ %i.lqg, %.split4557 ], [ %i.lqg, %.split4556 ], [ %i.lqg, %.split4555 ], [ %i.lqg, %.split4554 ], [ %i.lqg, %read_inf.exit1477 ], [ %i.lqg, %.split4553 ], [ %i.lqg, %.split4552 ], [ %i.lqg, %.split4551 ], [ %i.lqg, %.split4550 ], [ %i.lqg, %.split4549 ], [ %i.lqg, %.split4548 ], [ %i.lqg, %.split4547 ], [ %i.lqg, %.split4546 ], [ %i.lqg, %.split4545 ], [ %i.lqg, %.split4544 ], [ %i.lqg, %.split4543 ], [ %i.lqg, %.split4542 ], [ %i.lqg, %.split4541 ], [ %i.lqg, %.split4540 ], [ %i.lqg, %.split4539 ], [ %i.lqg, %.split4538 ], [ %i.nwk, %bb.bpy ], [ %i.kwu, %read_str_opt.exit927 ], [ %i.nsj, %read_nan.exit830 ], [ %i.nsj, %read_null.exit784 ], [ %i.nsh, %read_false.exit781 ], [ %i.nsc, %read_true.exit778 ], [ %i.lqg, %read_num.exit515 ], [ %i.lqg, %.split4569 ], [ %.19679.i191, %bb.ayc ], [ %.32692.i179, %bb.bql ], [ %i.ntx, %bb.bpu ], [ %i.ntx, %bb.bpv ], [ %i.ntx, %bb.bpp ], [ %i.ntx, %bb.bpo ] ; 2 uses
  %.31.i198.ph = phi ptr [ %.30.i227.ph, %.split4568 ], [ %.30.i227.ph, %.split4567 ], [ %.30.i227.ph, %.split4566 ], [ %.30.i227.ph, %.split4565 ], [ %.30.i227.ph, %.split4564 ], [ %.30.i227.ph, %.split4563 ], [ %.30.i227.ph, %.split4562 ], [ %.30.i227.ph, %.split4561 ], [ %.30.i227.ph, %.split4560 ], [ %.30.i227.ph, %.split4559 ], [ %.30.i227.ph, %.split4558 ], [ %.30.i227.ph, %.split4557 ], [ %.30.i227.ph, %.split4556 ], [ %.30.i227.ph, %.split4555 ], [ %.30.i227.ph, %.split4554 ], [ %.30.i227.ph, %read_inf.exit1477 ], [ %.30.i227.ph, %.split4553 ], [ %.30.i227.ph, %.split4552 ], [ %.30.i227.ph, %.split4551 ], [ %.30.i227.ph, %.split4550 ], [ %.30.i227.ph, %.split4549 ], [ %.30.i227.ph, %.split4548 ], [ %.30.i227.ph, %.split4547 ], [ %.30.i227.ph, %.split4546 ], [ %.30.i227.ph, %.split4545 ], [ %.30.i227.ph, %.split4544 ], [ %.30.i227.ph, %.split4543 ], [ %.30.i227.ph, %.split4542 ], [ %.30.i227.ph, %.split4541 ], [ %.30.i227.ph, %.split4540 ], [ %.30.i227.ph, %.split4539 ], [ %.30.i227.ph, %.split4538 ], [ %.30.i227.ph, %bb.bpy ], [ %.30.i227.ph, %read_str_opt.exit927 ], [ %.30.i227.ph, %read_nan.exit830 ], [ %.30.i227.ph, %read_null.exit784 ], [ %.30.i227.ph, %read_false.exit781 ], [ %.30.i227.ph, %read_true.exit778 ], [ %.30.i227.ph, %read_num.exit515 ], [ %.30.i227.ph, %.split4569 ], [ %i.jyp, %bb.ayc ], [ %i.nxv, %bb.bql ], [ %.30.i227.ph, %bb.bpu ], [ %.30.i227.ph, %bb.bpv ], [ %.30.i227.ph, %bb.bpp ], [ %.30.i227.ph, %bb.bpo ] ; 2 uses
  %i.nrz = and i32 %2, 2056
  %.not4779 = icmp eq i32 %i.nrz, 0
  %.pre7571 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4986

read_num.exit515.thread:                          ; preds = %bb.bma, %bb.bmh, %bb.bmq, %bb.bhc, %bb.blq, %bb.blw, %bb.bhe, %bb.bhg, %read_inf_or_nan.exit843.thread, %bb.bli
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.bqv

read_num.exit515:                                 ; preds = %bb.bio, %bb.bir, %bb.biu, %bb.bmc, %bb.bme, %bb.bmg, %bb.bmk, %bb.bmn, %bb.bmp
  %.sink9136 = phi ptr [ %i.lxq, %bb.bio ], [ %i.lxx, %bb.bir ], [ %i.lye, %bb.biu ], [ %.31.i398.lcssa, %bb.bmc ], [ %.31.i398.lcssa, %bb.bme ], [ %.31.i398.lcssa, %bb.bmg ], [ %.32.i400, %bb.bmk ], [ %.32.i400, %bb.bmn ], [ %.32.i400, %bb.bmp ]
  store ptr %.sink9136, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.preheader4984

bb.bop:                                           ; preds = %bb.bgd
  switch i8 %i.lqa, label %bb.bpb [
    i8 123, label %.loopexit4974
    i8 91, label %.loopexit4975
    i8 116, label %bb.boq
    i8 102, label %bb.bor
    i8 110, label %bb.bos
  ]

bb.boq:                                           ; preds = %bb.bop
  %.sroa.01.0.copyload.i1735 = load i32, ptr %i.lqb, align 1
  %i.nsa = icmp eq i32 %.sroa.01.0.copyload.i1735, 1702195828
  br i1 %i.nsa, label %read_true.exit778, label %read_true.exit.thread, !prof !25

read_true.exit778:                                ; preds = %bb.boq
  %i.nsb = add i64 %.5765.i167.ph, 2
  %i.nsc = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 2 uses
  store i64 11, ptr %i.nsc, align 8, !tbaa !79
  %i.nsd = getelementptr inbounds nuw i8, ptr %i.lqb, i64 4
  store ptr %i.nsd, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4984

bb.bor:                                           ; preds = %bb.bop
  %i.nse = getelementptr inbounds nuw i8, ptr %i.lqb, i64 1
  %.sroa.01.0.copyload.i1731 = load i32, ptr %i.nse, align 1
  %i.nsf = icmp eq i32 %.sroa.01.0.copyload.i1731, 1702063201
  br i1 %i.nsf, label %read_false.exit781, label %read_false.exit.thread, !prof !25

read_false.exit781:                               ; preds = %bb.bor
  %i.nsg = add i64 %.5765.i167.ph, 2
  %i.nsh = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 2 uses
  store i64 3, ptr %i.nsh, align 8, !tbaa !79
  %i.nsi = getelementptr inbounds nuw i8, ptr %i.lqb, i64 5
  store ptr %i.nsi, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4984

bb.bos:                                           ; preds = %bb.bop
  %i.nsj = getelementptr inbounds nuw i8, ptr %.30690.i226.ph, i64 16 ; 4 uses
  %i.nsk = add i64 %.5765.i167.ph, 2              ; 2 uses
  %.sroa.01.0.copyload.i1727 = load i32, ptr %i.lqb, align 1 ; 3 uses
  %i.nsl = icmp eq i32 %.sroa.01.0.copyload.i1727, 1819047278
  %i.nsm = trunc i32 %.sroa.01.0.copyload.i1727 to i8 ; 2 uses
  br i1 %i.nsl, label %read_null.exit784, label %bb.bot, !prof !25

read_null.exit784:                                ; preds = %bb.bos
  store i64 2, ptr %i.nsj, align 8, !tbaa !79
  %i.nsn = getelementptr inbounds nuw i8, ptr %i.lqb, i64 4
  store ptr %i.nsn, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4984

bb.bot:                                           ; preds = %bb.bos
  br i1 %.not4658, label %read_nan.exit.thread, label %bb.bou, !prof !25

bb.bou:                                           ; preds = %bb.bot
  %i.nso = icmp eq i8 %i.nsm, 45
  %i.nsp = icmp ne i8 %i.nsm, 43
  %i.nsq = and i32 %2, 512
  %i.nsr = icmp ne i32 %i.nsq, 0
  %or.cond4628 = or i1 %i.nsr, %i.nsp
  br i1 %or.cond4628, label %bb.bov, label %read_nan.exit.thread, !prof !119

bb.bov:                                           ; preds = %bb.bou
  %.mask8132 = and i32 %.sroa.01.0.copyload.i1727, 255
  %i.nss = zext nneg i32 %.mask8132 to i64
  %i.nst = getelementptr inbounds nuw i8, ptr @char_table3, i64 %i.nss
  %i.nsu = load i8, ptr %i.nst, align 1, !tbaa !81 ; 2 uses
  %i.nsv = trunc i8 %i.nsu to i1
  %.mask = and i8 %i.nsu, 1
  %i.nsw = zext nneg i8 %.mask to i64
  %i.nsx = getelementptr inbounds nuw i8, ptr %i.lqb, i64 %i.nsw ; 4 uses
  %i.nsy = load i8, ptr %i.nsx, align 1, !tbaa !81
  %i.nsz = and i8 %i.nsy, -33
  %i.nta = icmp eq i8 %i.nsz, 78
  br i1 %i.nta, label %bb.bow, label %read_nan.exit.thread
end_hunk_7
begin_hunk_8_@read_root_single:bb.a
  %i.acn = icmp ult i64 %i.ack, %i.aca
  %i.aco = zext i1 %i.acn to i64
  %i.acp = add nuw i64 %i.aco, %i.abz
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gs
  %.0596 = phi i64 [ %i.abz, %bb.gs ], [ %i.acp, %bb.gu ] ; 2 uses
  %i.acq = icmp sgt i64 %.0596, -1                ; 2 uses
  %.neg983.i = sext i1 %i.acq to i32
  %i.acr = zext i1 %i.acq to i64
  %i.acs = shl i64 %.0596, %i.acr                 ; 2 uses
  %i.act = and i64 %i.acs, 1024
  %i.acu = add i64 %i.act, %i.acs                 ; 2 uses
  %i.acv = icmp ult i64 %i.acu, 1024
  %spec.select651.v = select i1 %i.acv, i32 65, i32 64
  %i.acw = lshr i64 %i.acu, 11
  %reass.sub980 = sub nsw i32 %i.abr, %i.abt
  %i.acx = add nsw i32 %reass.sub980, 1086
  %spec.select651 = add nsw i32 %i.acx, %.neg983.i
  %i.acy = add nsw i32 %spec.select651, %spec.select651.v
  %i.acz = zext nneg i32 %i.acy to i64
  %i.ada = shl nuw nsw i64 %i.acz, 52
  %i.adb = and i64 %i.acw, 4503599627370495
  %i.adc = or disjoint i64 %i.ada, %i.adb
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.add = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.ade = or disjoint i64 %i.adc, %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.ade, ptr %i.adf, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !92
  br label %read_num.exit.thread

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.gt
  %.pre-phi1151 = phi i32 [ %.pre1150, %..critedge992.i_crit_edge ], [ %i.abt, %bb.gt ]
  %.pre-phi1149 = phi i128 [ %.pre1148, %..critedge992.i_crit_edge ], [ %i.abv, %bb.gt ]
  %.pre-phi1147 = phi i32 [ %.pre1146, %..critedge992.i_crit_edge ], [ %i.abr, %bb.gt ]
  %.pre-phi1141 = phi i32 [ %.pre1140, %..critedge992.i_crit_edge ], [ %i.abk, %bb.gt ] ; 2 uses
  %.pre-phi1137 = phi i64 [ %.pre1136, %..critedge992.i_crit_edge ], [ %i.abs, %bb.gt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.adg = select i1 %i.abg, i64 0, i64 4
  %i.adh = shl i64 %i.adg, %.pre-phi1137          ; 2 uses
  %i.adi = add i32 %.pre-phi1141, 686
  %i.adj = sext i32 %i.adi to i64
  %i.adk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adj
  %i.adl = load i64, ptr %i.adk, align 16, !tbaa !91
  %i.adm = add i32 %.pre-phi1141, 687
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adn
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !91
  %i.adq = lshr i64 %i.adp, 63
  %i.adr = add i64 %i.adq, %i.adl
  %i.ads = zext i64 %i.adr to i128
  %i.adt = mul nuw i128 %.pre-phi1149, %i.ads     ; 2 uses
  %i.adu = lshr i128 %i.adt, 64
  %i.adv = trunc nuw i128 %i.adu to i64
  %i.adw = trunc i128 %i.adt to i64
  %i.adx = lshr i64 %i.adw, 63
  %i.ady = add nuw i64 %i.adx, %i.adv             ; 2 uses
  %.not986.i = icmp eq i64 %i.adh, 0
  %i.adz = select i1 %.not986.i, i64 8, i64 9
  %i.aea = add i64 %i.adz, %i.adh
  %i.aeb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ady, i1 true) ; 3 uses
  %i.aec = trunc nuw nsw i64 %i.aeb to i32
  %i.aed = shl i64 %i.ady, %i.aeb                 ; 3 uses
  %i.aee = add nsw i32 %.pre-phi1147, 64
  %i.aef = add nuw nsw i32 %.pre-phi1151, %i.aec
  %i.aeg = sub nsw i32 %i.aee, %i.aef             ; 7 uses
  %i.aeh = shl i64 %i.aea, %i.aeb                 ; 3 uses
  %i.aei = icmp sgt i32 %i.aeg, -1086
  br i1 %i.aei, label %.thread616, label %bb.gw, !prof !25

bb.gw:                                            ; preds = %.critedge992.i
  %i.aej = icmp samesign ult i32 %i.aeg, -1137
  br i1 %i.aej, label %.thread613, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aek = sub nuw nsw i32 -1074, %i.aeg          ; 2 uses
  %i.ael = icmp samesign ult i32 %i.aeg, -1134
  br i1 %i.ael, label %.thread613, label %.thread616, !prof !231

.thread613:                                       ; preds = %bb.gw, %bb.gx
  %.0897.i615 = phi i32 [ %i.aek, %bb.gx ], [ 64, %bb.gw ]
  %i.aem = add nsw i32 %.0897.i615, -60           ; 2 uses
  %i.aen = zext nneg i32 %i.aem to i64            ; 2 uses
  %i.aeo = lshr i64 %i.aed, %i.aen
  %i.aep = add nsw i32 %i.aem, %i.aeg
  %i.aeq = lshr i64 %i.aeh, %i.aen
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
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.ago ; 4 uses
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
end_hunk_8
begin_hunk_9_@read_root_single:bb.a
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
  %i.ans = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
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
  br label %.lr.ph882.preheader

bb.hz:                                            ; preds = %bb.hy
  %i.aqh = zext i32 %i.anp to i64                 ; 10 uses
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aqh
  store i64 0, ptr %i.aqi, align 8, !tbaa !91
  %.not.i260891 = icmp eq i32 %i.anp, 0
  %.pre1152 = zext nneg i32 %i.anr to i64         ; 5 uses
  br i1 %.not.i260891, label %._crit_edge895, label %.lr.ph894

.lr.ph894:                                        ; preds = %bb.hz
  %i.aqj = sub nuw nsw i32 64, %i.anr
  %i.aqk = zext nneg i32 %i.aqj to i64            ; 4 uses
  %min.iters.check1478 = icmp ult i32 %i.anp, 20
  br i1 %min.iters.check1478, label %scalar.ph1477.preheader, label %vector.scevcheck1472

vector.scevcheck1472:                             ; preds = %.lr.ph894
  %i.aql = add nsw i64 %i.aqh, -1                 ; 2 uses
  %i.aqm = add i32 %i.anp, %i.ans
  %i.aqn = trunc i64 %i.aql to i32
  %i.aqo = icmp ult i32 %i.aqm, %i.aqn
  %i.aqp = icmp ugt i64 %i.aql, 4294967295
  %i.aqq = or i1 %i.aqo, %i.aqp
  br i1 %i.aqq, label %scalar.ph1477.preheader, label %vector.memcheck1473

vector.memcheck1473:                              ; preds = %vector.scevcheck1472
  %i.aqr = shl nuw nsw i64 %i.aqh, 3              ; 2 uses
  %i.aqs = add i32 %i.anp, %i.ans
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = shl nuw nsw i64 %i.aqt, 3              ; 2 uses
  %i.aqv = sub nsw i64 %i.aqu, %i.aqr
  %diff.check1474 = icmp ugt i64 %i.aqv, -32
  %i.aqw = sub nsw i64 %i.aqr, %i.aqu
  %i.aqx = add nsw i64 %i.aqw, -9
  %diff.check1475 = icmp ult i64 %i.aqx, 31
  %conflict.rdx1476 = or i1 %diff.check1474, %diff.check1475
  br i1 %conflict.rdx1476, label %scalar.ph1477.preheader, label %vector.ph1479

vector.ph1479:                                    ; preds = %vector.memcheck1473
  %n.vec1480 = and i64 %i.aqh, 4294967292         ; 2 uses
  %i.aqy = and i64 %i.aqh, 3
  %broadcast.splatinsert1481 = insertelement <2 x i64> poison, i64 %i.aqk, i64 0
  %broadcast.splat1482 = shufflevector <2 x i64> %broadcast.splatinsert1481, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1483 = insertelement <2 x i64> poison, i64 %.pre1152, i64 0
  %broadcast.splat1484 = shufflevector <2 x i64> %broadcast.splatinsert1483, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1485

vector.body1485:                                  ; preds = %vector.body1485, %vector.ph1479
  %index1486 = phi i64 [ 0, %vector.ph1479 ], [ %index.next1491, %vector.body1485 ] ; 2 uses
  %i.aqz = sub i64 %i.aqh, %index1486             ; 3 uses
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aqz ; 2 uses
  %i.arb = getelementptr inbounds i8, ptr %i.ara, i64 -8
  %i.arc = getelementptr inbounds i8, ptr %i.ara, i64 -24
  %wide.load1487 = load <2 x i64>, ptr %i.arb, align 8, !tbaa !91
  %wide.load1488 = load <2 x i64>, ptr %i.arc, align 8, !tbaa !91
  %i.ard = shl <2 x i64> %wide.load1487, %broadcast.splat1484
  %i.are = shl <2 x i64> %wide.load1488, %broadcast.splat1484
  %i.arf = getelementptr [8 x i8], ptr %7, i64 %i.aqz ; 2 uses
  %i.arg = getelementptr i8, ptr %i.arf, i64 -8
  %i.arh = getelementptr i8, ptr %i.arf, i64 -24
  %wide.load1489 = load <2 x i64>, ptr %i.arg, align 8, !tbaa !91
  %wide.load1490 = load <2 x i64>, ptr %i.arh, align 8, !tbaa !91
  %i.ari = lshr <2 x i64> %wide.load1489, %broadcast.splat1482
  %i.arj = lshr <2 x i64> %wide.load1490, %broadcast.splat1482
  %i.ark = or <2 x i64> %i.ari, %i.ard
  %i.arl = or <2 x i64> %i.arj, %i.are
  %i.arm = trunc nuw i64 %i.aqz to i32
  %i.arn = add i32 %i.ans, %i.arm
  %i.aro = zext i32 %i.arn to i64
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.aro ; 2 uses
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 -8
  %i.arr = getelementptr inbounds i8, ptr %i.arp, i64 -24
  store <2 x i64> %i.ark, ptr %i.arq, align 8, !tbaa !91
  store <2 x i64> %i.arl, ptr %i.arr, align 8, !tbaa !91
  %index.next1491 = add nuw i64 %index1486, 4     ; 2 uses
  %i.ars = icmp eq i64 %index.next1491, %n.vec1480
  br i1 %i.ars, label %middle.block1492, label %vector.body1485, !llvm.loop !235

middle.block1492:                                 ; preds = %vector.body1485
  %cmp.n1493 = icmp eq i64 %n.vec1480, %i.aqh
  br i1 %cmp.n1493, label %._crit_edge895, label %scalar.ph1477.preheader

scalar.ph1477.preheader:                          ; preds = %vector.memcheck1473, %vector.scevcheck1472, %.lr.ph894, %middle.block1492
  %indvars.iv1087.ph = phi i64 [ %i.aqh, %vector.memcheck1473 ], [ %i.aqh, %vector.scevcheck1472 ], [ %i.aqh, %.lr.ph894 ], [ %i.aqy, %middle.block1492 ] ; 7 uses
  %xtraiter1607 = and i64 %indvars.iv1087.ph, 1
  %lcmp.mod1608.not = icmp eq i64 %xtraiter1607, 0
  br i1 %lcmp.mod1608.not, label %scalar.ph1477.prol.loopexit, label %scalar.ph1477.prol

scalar.ph1477.prol:                               ; preds = %scalar.ph1477.preheader
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1087.ph
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91
  %i.arv = shl i64 %i.aru, %.pre1152
  %i.arw = add nsw i64 %indvars.iv1087.ph, -1
  %i.arx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1087.ph
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !91
  %i.arz = lshr i64 %i.ary, %i.aqk
  %i.asa = or i64 %i.arz, %i.arv
  %i.asb = trunc nuw i64 %indvars.iv1087.ph to i32
  %i.asc = add i32 %i.ans, %i.asb
  %i.asd = zext i32 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.asd
  store i64 %i.asa, ptr %i.ase, align 8, !tbaa !91
  br label %scalar.ph1477.prol.loopexit

scalar.ph1477.prol.loopexit:                      ; preds = %scalar.ph1477.prol, %scalar.ph1477.preheader
  %indvars.iv1087.unr = phi i64 [ %indvars.iv1087.ph, %scalar.ph1477.preheader ], [ %i.arw, %scalar.ph1477.prol ]
  %i.asf = icmp eq i64 %indvars.iv1087.ph, 1
  br i1 %i.asf, label %._crit_edge895, label %scalar.ph1477

scalar.ph1477:                                    ; preds = %scalar.ph1477.prol.loopexit, %scalar.ph1477
  %indvars.iv1087 = phi i64 [ %i.asv, %scalar.ph1477 ], [ %indvars.iv1087.unr, %scalar.ph1477.prol.loopexit ] ; 6 uses
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %indvars.iv1087
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !91
  %i.asi = shl i64 %i.ash, %.pre1152
  %i.asj = add nsw i64 %indvars.iv1087, -1        ; 2 uses
  %i.ask = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1087
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !91
  %i.asm = lshr i64 %i.asl, %i.aqk
  %i.asn = or i64 %i.asm, %i.asi
  %i.aso = trunc nuw i64 %indvars.iv1087 to i32
  %i.asp = add i32 %i.ans, %i.aso
  %i.asq = zext i32 %i.asp to i64
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.asq
  store i64 %i.asn, ptr %i.asr, align 8, !tbaa !91
  %i.ass = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1087
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !91
  %i.asu = shl i64 %i.ast, %.pre1152
  %i.asv = add nsw i64 %indvars.iv1087, -2        ; 2 uses
  %i.asw = getelementptr [8 x i8], ptr %7, i64 %i.asj
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !91
  %i.asy = lshr i64 %i.asx, %i.aqk
  %i.asz = or i64 %i.asy, %i.asu
  %i.ata = trunc nuw i64 %i.asj to i32
  %i.atb = add i32 %i.ans, %i.ata
  %i.atc = zext i32 %i.atb to i64
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.atc
  store i64 %i.asz, ptr %i.atd, align 8, !tbaa !91
  %.not.i260.wide.1 = icmp eq i64 %i.asv, 0
  br i1 %.not.i260.wide.1, label %._crit_edge895, label %scalar.ph1477, !llvm.loop !236

._crit_edge895:                                   ; preds = %scalar.ph1477.prol.loopexit, %scalar.ph1477, %middle.block1492, %bb.hz
  %i.ate = load i64, ptr %i.agr, align 8, !tbaa !91
  %i.atf = shl i64 %i.ate, %.pre1152
  %i.atg = zext nneg i32 %i.ans to i64
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.atg
  store i64 %i.atf, ptr %i.ath, align 8, !tbaa !91
  %i.ati = add i32 %i.anp, %i.ans                 ; 2 uses
  %i.atj = zext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.atj
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !91
  %i.atm = icmp ne i64 %i.atl, 0
  %i.atn = zext i1 %i.atm to i32
  %i.ato = add i32 %i.ati, %i.atn                 ; 2 uses
  %.not45.i261896 = icmp eq i32 %i.ans, 0
  br i1 %.not45.i261896, label %bigint_mul_pow2.exit, label %.lr.ph882.preheader

bb.ia:                                            ; preds = %bigint_mul_pow10.exit
  %i.atp = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.atq = and i32 %i.atp, 63                     ; 3 uses
  %i.atr = lshr i32 %i.atp, 6                     ; 16 uses
  %i.ats = load i32, ptr %6, align 8, !tbaa !138  ; 12 uses
  %i.att = icmp eq i32 %i.atq, 0
  br i1 %i.att, label %.preheader729, label %bb.ib, !prof !8

.preheader729:                                    ; preds = %bb.ia
  %.not46.i269883 = icmp eq i32 %i.ats, 0
  br i1 %.not46.i269883, label %._crit_edge886, label %.lr.ph885

.lr.ph885:                                        ; preds = %.preheader729
  %i.atu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.atv = add nsw i32 %i.atr, -1                 ; 6 uses
  %i.atw = zext i32 %i.ats to i64                 ; 9 uses
  %min.iters.check1461 = icmp ult i32 %i.ats, 30
  br i1 %min.iters.check1461, label %scalar.ph1460.preheader, label %vector.scevcheck1457

vector.scevcheck1457:                             ; preds = %.lr.ph885
  %i.atx = add nsw i64 %i.atw, -1                 ; 2 uses
  %i.aty = add i32 %i.ats, %i.atr
  %i.atz = add i32 %i.aty, -1
  %i.aua = trunc i64 %i.atx to i32
  %i.aub = icmp ult i32 %i.atz, %i.aua
  %i.auc = icmp ugt i64 %i.atx, 4294967295
  %i.aud = or i1 %i.aub, %i.auc
  br i1 %i.aud, label %scalar.ph1460.preheader, label %vector.memcheck1458

vector.memcheck1458:                              ; preds = %vector.scevcheck1457
  %i.aue = add i32 %i.ats, %i.atr
  %i.auf = add i32 %i.aue, -1
  %i.aug = zext i32 %i.auf to i64
  %i.auh = sub nsw i64 %i.atw, %i.aug
  %i.aui = shl nsw i64 %i.auh, 3
  %i.auj = add nsw i64 %i.aui, -9
  %diff.check1459 = icmp ult i64 %i.auj, 31
  br i1 %diff.check1459, label %scalar.ph1460.preheader, label %vector.ph1462

vector.ph1462:                                    ; preds = %vector.memcheck1458
  %n.vec1463 = and i64 %i.atw, 4294967292         ; 2 uses
  %i.auk = and i64 %i.atw, 3
  br label %vector.body1464

vector.body1464:                                  ; preds = %vector.body1464, %vector.ph1462
  %index1465 = phi i64 [ 0, %vector.ph1462 ], [ %index.next1468, %vector.body1464 ] ; 2 uses
  %i.aul = sub i64 %i.atw, %index1465             ; 2 uses
  %i.aum = getelementptr [8 x i8], ptr %6, i64 %i.aul ; 2 uses
  %i.aun = getelementptr i8, ptr %i.aum, i64 -8
  %i.auo = getelementptr i8, ptr %i.aum, i64 -24
  %wide.load1466.a = load <2 x i64>, ptr %i.aun, align 8, !tbaa !91
  %wide.load1467 = load <2 x i64>, ptr %i.auo, align 8, !tbaa !91
  %i.aup = trunc nuw i64 %i.aul to i32
  %i.auq = add i32 %i.atv, %i.aup
  %i.aur = zext i32 %i.auq to i64
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.aur ; 2 uses
  %i.aut = getelementptr inbounds i8, ptr %i.aus, i64 -8
  %i.auu = getelementptr inbounds i8, ptr %i.aus, i64 -24
  store <2 x i64> %wide.load1466.a, ptr %i.aut, align 8, !tbaa !91
  store <2 x i64> %wide.load1467, ptr %i.auu, align 8, !tbaa !91
  %index.next1468 = add nuw i64 %index1465, 4     ; 2 uses
  %i.auv = icmp eq i64 %index.next1468, %n.vec1463
  br i1 %i.auv, label %middle.block1469, label %vector.body1464, !llvm.loop !237

middle.block1469:                                 ; preds = %vector.body1464
  %cmp.n1470 = icmp eq i64 %n.vec1463, %i.atw
  br i1 %cmp.n1470, label %._crit_edge886, label %scalar.ph1460.preheader

scalar.ph1460.preheader:                          ; preds = %vector.memcheck1458, %vector.scevcheck1457, %.lr.ph885, %middle.block1469
  %indvars.iv1082.ph = phi i64 [ %i.atw, %vector.memcheck1458 ], [ %i.atw, %vector.scevcheck1457 ], [ %i.atw, %.lr.ph885 ], [ %i.auk, %middle.block1469 ] ; 4 uses
  %i.auw = add nsw i64 %indvars.iv1082.ph, -1
  %xtraiter1605 = and i64 %indvars.iv1082.ph, 3   ; 2 uses
  %lcmp.mod1606.not = icmp eq i64 %xtraiter1605, 0
  br i1 %lcmp.mod1606.not, label %scalar.ph1460.prol.loopexit, label %scalar.ph1460.prol

scalar.ph1460.prol:                               ; preds = %scalar.ph1460.preheader, %scalar.ph1460.prol
  %indvars.iv1082.prol = phi i64 [ %i.aux, %scalar.ph1460.prol ], [ %indvars.iv1082.ph, %scalar.ph1460.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1460.prol ], [ 0, %scalar.ph1460.preheader ]
  %i.aux = add nsw i64 %indvars.iv1082.prol, -1   ; 2 uses
  %i.auy = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1082.prol
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !91
  %i.ava = trunc nuw i64 %indvars.iv1082.prol to i32
  %i.avb = add i32 %i.atv, %i.ava
  %i.avc = zext i32 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avc
  store i64 %i.auz, ptr %i.avd, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1605
  br i1 %prol.iter.cmp.not, label %scalar.ph1460.prol.loopexit, label %scalar.ph1460.prol, !llvm.loop !238

scalar.ph1460.prol.loopexit:                      ; preds = %scalar.ph1460.prol, %scalar.ph1460.preheader
  %indvars.iv1082.unr = phi i64 [ %indvars.iv1082.ph, %scalar.ph1460.preheader ], [ %i.aux, %scalar.ph1460.prol ]
  %i.ave = icmp ult i64 %i.auw, 3
  br i1 %i.ave, label %._crit_edge886, label %scalar.ph1460

scalar.ph1460:                                    ; preds = %scalar.ph1460.prol.loopexit, %scalar.ph1460
  %indvars.iv1082 = phi i64 [ %i.awa, %scalar.ph1460 ], [ %indvars.iv1082.unr, %scalar.ph1460.prol.loopexit ] ; 6 uses
  %i.avf = add nsw i64 %indvars.iv1082, -1        ; 2 uses
  %i.avg = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1082
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !91
  %i.avi = trunc nuw i64 %indvars.iv1082 to i32
  %i.avj = add i32 %i.atv, %i.avi
  %i.avk = zext i32 %i.avj to i64
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avk
  store i64 %i.avh, ptr %i.avl, align 8, !tbaa !91
  %i.avm = add nsw i64 %indvars.iv1082, -2        ; 2 uses
  %i.avn = getelementptr [8 x i8], ptr %6, i64 %i.avf
  %i.avo = load i64, ptr %i.avn, align 8, !tbaa !91
  %i.avp = trunc nuw i64 %i.avf to i32
  %i.avq = add i32 %i.atv, %i.avp
  %i.avr = zext i32 %i.avq to i64
  %i.avs = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avr
  store i64 %i.avo, ptr %i.avs, align 8, !tbaa !91
  %i.avt = add nsw i64 %indvars.iv1082, -3        ; 2 uses
  %i.avu = getelementptr [8 x i8], ptr %6, i64 %i.avm
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !91
  %i.avw = trunc nuw i64 %i.avm to i32
  %i.avx = add i32 %i.atv, %i.avw
  %i.avy = zext i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.avy
  store i64 %i.avv, ptr %i.avz, align 8, !tbaa !91
  %i.awa = add nsw i64 %indvars.iv1082, -4        ; 2 uses
  %i.awb = getelementptr [8 x i8], ptr %6, i64 %i.avt
  %i.awc = load i64, ptr %i.awb, align 8, !tbaa !91
  %i.awd = trunc nuw i64 %i.avt to i32
  %i.awe = add i32 %i.atv, %i.awd
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.awf
  store i64 %i.awc, ptr %i.awg, align 8, !tbaa !91
  %.not46.i269.wide.3 = icmp eq i64 %i.awa, 0
  br i1 %.not46.i269.wide.3, label %._crit_edge886, label %scalar.ph1460, !llvm.loop !239

._crit_edge886:                                   ; preds = %scalar.ph1460.prol.loopexit, %scalar.ph1460, %middle.block1469, %.preheader729
  %i.awh = add i32 %i.ats, %i.atr
  store i32 %i.awh, ptr %6, align 8, !tbaa !138
  %.not47.i271887 = icmp eq i32 %i.atr, 0
  br i1 %.not47.i271887, label %bigint_mul_pow2.exit, label %.lr.ph890

.lr.ph890:                                        ; preds = %._crit_edge886
  %i.awi = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph882.preheader

bb.ib:                                            ; preds = %bb.ia
  %i.awj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.awk = zext i32 %i.ats to i64                 ; 10 uses
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.awk
  store i64 0, ptr %i.awl, align 8, !tbaa !91
  %.not.i265874 = icmp eq i32 %i.ats, 0
  %.pre1154 = zext nneg i32 %i.atq to i64         ; 5 uses
  br i1 %.not.i265874, label %._crit_edge878, label %.lr.ph877

.lr.ph877:                                        ; preds = %bb.ib
  %i.awm = sub nuw nsw i32 64, %i.atq
  %i.awn = zext nneg i32 %i.awm to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.ats, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph877
  %i.awo = add nsw i64 %i.awk, -1                 ; 2 uses
  %i.awp = add i32 %i.ats, %i.atr
  %i.awq = trunc i64 %i.awo to i32
  %i.awr = icmp ult i32 %i.awp, %i.awq
  %i.aws = icmp ugt i64 %i.awo, 4294967295
  %i.awt = or i1 %i.awr, %i.aws
  br i1 %i.awt, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awu = shl nuw nsw i64 %i.awk, 3              ; 2 uses
  %i.awv = add i32 %i.ats, %i.atr
  %i.aww = zext i32 %i.awv to i64
  %i.awx = shl nuw nsw i64 %i.aww, 3              ; 2 uses
  %i.awy = sub nsw i64 %i.awx, %i.awu
  %diff.check = icmp ugt i64 %i.awy, -32
  %i.awz = sub nsw i64 %i.awu, %i.awx
  %i.axa = add nsw i64 %i.awz, -9
  %diff.check1451 = icmp ult i64 %i.axa, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1451
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.awk, 4294967292             ; 2 uses
  %i.axb = and i64 %i.awk, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.awn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1452 = insertelement <2 x i64> poison, i64 %.pre1154, i64 0
  %broadcast.splat1453 = shufflevector <2 x i64> %broadcast.splatinsert1452, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.axc = sub i64 %i.awk, %index                 ; 3 uses
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axc ; 2 uses
  %i.axe = getelementptr inbounds i8, ptr %i.axd, i64 -8
  %i.axf = getelementptr inbounds i8, ptr %i.axd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.axe, align 8, !tbaa !91
  %wide.load1454 = load <2 x i64>, ptr %i.axf, align 8, !tbaa !91
  %i.axg = shl <2 x i64> %wide.load, %broadcast.splat1453
  %i.axh = shl <2 x i64> %wide.load1454, %broadcast.splat1453
  %i.axi = getelementptr [8 x i8], ptr %6, i64 %i.axc ; 2 uses
  %i.axj = getelementptr i8, ptr %i.axi, i64 -8
  %i.axk = getelementptr i8, ptr %i.axi, i64 -24
  %wide.load1455 = load <2 x i64>, ptr %i.axj, align 8, !tbaa !91
  %wide.load1456 = load <2 x i64>, ptr %i.axk, align 8, !tbaa !91
  %i.axl = lshr <2 x i64> %wide.load1455, %broadcast.splat
  %i.axm = lshr <2 x i64> %wide.load1456, %broadcast.splat
  %i.axn = or <2 x i64> %i.axl, %i.axg
  %i.axo = or <2 x i64> %i.axm, %i.axh
  %i.axp = trunc nuw i64 %i.axc to i32
  %i.axq = add i32 %i.atr, %i.axp
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.axr ; 2 uses
  %i.axt = getelementptr inbounds i8, ptr %i.axs, i64 -8
  %i.axu = getelementptr inbounds i8, ptr %i.axs, i64 -24
  store <2 x i64> %i.axn, ptr %i.axt, align 8, !tbaa !91
  store <2 x i64> %i.axo, ptr %i.axu, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.axv = icmp eq i64 %index.next, %n.vec
  br i1 %i.axv, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.awk
  br i1 %cmp.n, label %._crit_edge878, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph877, %middle.block
  %indvars.iv1077.ph = phi i64 [ %i.awk, %vector.memcheck ], [ %i.awk, %vector.scevcheck ], [ %i.awk, %.lr.ph877 ], [ %i.axb, %middle.block ] ; 7 uses
  %xtraiter1603 = and i64 %indvars.iv1077.ph, 1
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1603, 0
  br i1 %lcmp.mod1604.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077.ph
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !91
  %i.axy = shl i64 %i.axx, %.pre1154
  %i.axz = add nsw i64 %indvars.iv1077.ph, -1
  %i.aya = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077.ph
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !91
  %i.ayc = lshr i64 %i.ayb, %i.awn
  %i.ayd = or i64 %i.ayc, %i.axy
  %i.aye = trunc nuw i64 %indvars.iv1077.ph to i32
  %i.ayf = add i32 %i.atr, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1077.unr = phi i64 [ %indvars.iv1077.ph, %scalar.ph.preheader ], [ %i.axz, %scalar.ph.prol ]
  %i.ayi = icmp eq i64 %indvars.iv1077.ph, 1
  br i1 %i.ayi, label %._crit_edge878, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1077 = phi i64 [ %i.ayy, %scalar.ph ], [ %indvars.iv1077.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %indvars.iv1077
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !91
  %i.ayl = shl i64 %i.ayk, %.pre1154
  %i.aym = add nsw i64 %indvars.iv1077, -1        ; 2 uses
  %i.ayn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayo = load i64, ptr %i.ayn, align 8, !tbaa !91
  %i.ayp = lshr i64 %i.ayo, %i.awn
  %i.ayq = or i64 %i.ayp, %i.ayl
  %i.ayr = trunc nuw i64 %indvars.iv1077 to i32
  %i.ays = add i32 %i.atr, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.ayt
  store i64 %i.ayq, ptr %i.ayu, align 8, !tbaa !91
  %i.ayv = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1077
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !91
  %i.ayx = shl i64 %i.ayw, %.pre1154
  %i.ayy = add nsw i64 %indvars.iv1077, -2        ; 2 uses
  %i.ayz = getelementptr [8 x i8], ptr %6, i64 %i.aym
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !91
  %i.azb = lshr i64 %i.aza, %i.awn
  %i.azc = or i64 %i.azb, %i.ayx
  %i.azd = trunc nuw i64 %i.aym to i32
  %i.aze = add i32 %i.atr, %i.azd
  %i.azf = zext i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azf
  store i64 %i.azc, ptr %i.azg, align 8, !tbaa !91
  %.not.i265.wide.1 = icmp eq i64 %i.ayy, 0
  br i1 %.not.i265.wide.1, label %._crit_edge878, label %scalar.ph, !llvm.loop !241

._crit_edge878:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ib
  %i.azh = load i64, ptr %i.awj, align 8, !tbaa !91
  %i.azi = shl i64 %i.azh, %.pre1154
  %i.azj = zext nneg i32 %i.atr to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azj
  store i64 %i.azi, ptr %i.azk, align 8, !tbaa !91
  %i.azl = add i32 %i.ats, %i.atr                 ; 2 uses
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.awj, i64 %i.azm
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !91
  %i.azp = icmp ne i64 %i.azo, 0
  %i.azq = zext i1 %i.azp to i32
  %i.azr = add i32 %i.azl, %i.azq
  store i32 %i.azr, ptr %6, align 8, !tbaa !138
  %.not45.i267879 = icmp eq i32 %i.atr, 0
  br i1 %.not45.i267879, label %bigint_mul_pow2.exit, label %.lr.ph882.preheader

.lr.ph882.preheader:                              ; preds = %._crit_edge878, %._crit_edge895, %.lr.ph907.preheader, %.lr.ph890
  %.sink1365 = phi i32 [ %i.ans, %._crit_edge895 ], [ %i.atr, %.lr.ph890 ], [ %i.ans, %.lr.ph907.preheader ], [ %i.atr, %._crit_edge878 ]
  %.sink1360 = phi ptr [ %i.agr, %._crit_edge895 ], [ %i.awi, %.lr.ph890 ], [ %i.agr, %.lr.ph907.preheader ], [ %i.awj, %._crit_edge878 ]
  %.ph1359 = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %.lr.ph890 ], [ %i.aqg, %.lr.ph907.preheader ], [ %i.anp, %._crit_edge878 ]
  %8 = add nsw i32 %.sink1365, -1
  %i.azs = zext i32 %8 to i64
  %9 = shl nuw nsw i64 %i.azs, 3
  %10 = add nuw nsw i64 %9, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink1360, i8 0, i64 %10, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %.lr.ph882.preheader, %._crit_edge878, %._crit_edge886, %._crit_edge895
  %11 = phi i32 [ %i.ato, %._crit_edge895 ], [ %i.anp, %._crit_edge878 ], [ %i.anp, %._crit_edge886 ], [ %.ph1359, %.lr.ph882.preheader ] ; 2 uses
  %i.azt = load i32, ptr %6, align 8, !tbaa !138  ; 4 uses
  %i.azu = icmp ult i32 %i.azt, %11
  br i1 %i.azu, label %bigint_cmp.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %bigint_mul_pow2.exit
  %i.azv = icmp ugt i32 %i.azt, %11
  br i1 %i.azv, label %bigint_cmp.exit.thread, label %.preheader725

.preheader725:                                    ; preds = %bb.ic
  %.not.i2731438 = icmp eq i32 %i.azt, 0
  br i1 %.not.i2731438, label %bigint_cmp.exit.thread623, label %.lr.ph1441

.lr.ph1441:                                       ; preds = %.preheader725
  %i.azw = zext i32 %i.azt to i64
  br label %bb.ie

bb.id:                                            ; preds = %bb.ie
  %i.azx = add nsw i64 %indvars.iv10951439, -1    ; 2 uses
  %.not.i273 = icmp eq i64 %i.azx, 0
  br i1 %.not.i273, label %bigint_cmp.exit.thread623, label %bb.ie, !llvm.loop !153

bb.ie:                                            ; preds = %.lr.ph1441, %bb.id
  %.016.i1440 = phi i32 [ undef, %.lr.ph1441 ], [ %.1.i274, %bb.id ]
  %indvars.iv10951439 = phi i64 [ %i.azw, %.lr.ph1441 ], [ %i.azx, %bb.id ] ; 3 uses
  %i.azy = getelementptr [8 x i8], ptr %6, i64 %indvars.iv10951439
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !91 ; 3 uses
  %i.baa = getelementptr [8 x i8], ptr %7, i64 %indvars.iv10951439
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !91 ; 3 uses
  %.not702 = icmp ult i64 %i.azz, %i.bab
  %.not703 = icmp ugt i64 %i.azz, %i.bab
  %..016.i = select i1 %.not703, i32 1, i32 %.016.i1440
  %.1.i274 = select i1 %.not702, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.azz, %i.bab
  br i1 %cond.i, label %bb.id, label %bigint_cmp.exit, !llvm.loop !153

bigint_cmp.exit:                                  ; preds = %bb.ie
  %.not989.i = icmp eq i32 %.1.i274, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread623, label %bigint_cmp.exit.thread, !prof !124

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.ic, %bigint_cmp.exit
  %.2.i275622 = phi i32 [ %.1.i274, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.ic ]
  %i.bac = icmp sgt i32 %.2.i275622, 0
  %i.bad = zext i1 %i.bac to i64
  br label %bb.if

bigint_cmp.exit.thread623:                        ; preds = %bb.id, %.preheader725, %bigint_cmp.exit
  %i.bae = and i64 %.0.i254.ph, 1
  br label %bb.if

bb.if:                                            ; preds = %bigint_cmp.exit.thread623, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.bad, %bigint_cmp.exit.thread ], [ %i.bae, %bigint_cmp.exit.thread623 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i254.ph  ; 2 uses
  %i.baf = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.baf, label %bb.ig, label %bb.il, !prof !8

bb.ig:                                            ; preds = %bb.if
  %i.bag = and i32 %4, 128
  %.not704 = icmp eq i32 %i.bag, 0
  br i1 %.not704, label %bb.ii, label %bb.ih, !prof !25

bb.ih:                                            ; preds = %bb.ig
  %i.bah = load ptr, ptr %i.e, align 8, !tbaa !92
  store i8 0, ptr %i.bah, align 1, !tbaa !81
  %i.bai = ptrtoint ptr %.33.i to i64
  %i.baj = ptrtoint ptr %1 to i64
  %i.bak = sub i64 %i.bai, %i.baj
  %i.bal = shl i64 %i.bak, 8
  %i.bam = or disjoint i64 %i.bal, 1
  store i64 %i.bam, ptr %i.j, align 8, !tbaa !79
  %i.ban = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %1, ptr %i.ban, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit.thread632

bb.ii:                                            ; preds = %bb.ig
  %i.bao = and i32 %4, 16
  %.not705 = icmp eq i32 %i.bao, 0
  br i1 %.not705, label %bb.ik, label %bb.ij, !prof !25

bb.ij:                                            ; preds = %bb.ii
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.bap = select i1 %i.r, i64 -4503599627370496, i64 9218868437227405312
  %i.baq = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bap, ptr %i.baq, align 8, !tbaa !81
  br label %read_num.exit.thread632

bb.ik:                                            ; preds = %bb.ii
  store ptr @.str.93, ptr %i.c, align 8, !tbaa !92
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  br label %read_num.exit

bb.il:                                            ; preds = %bb.if
  store i64 20, ptr %i.j, align 8, !tbaa !79
  %i.bar = select i1 %i.r, i64 -9223372036854775808, i64 0
  %i.bas = or disjoint i64 %.0895.i, %i.bar
  %i.bat = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.bas, ptr %i.bat, align 8, !tbaa !81
  br label %read_num.exit.thread632

read_num.exit.thread:                             ; preds = %bb.fx, %bb.fz, %bb.gb, %bb.gf, %bb.gi, %bb.gk, %bb.gv, %bb.gq, %bb.z, %bb.fg, %bb.ft, %.loopexit736, %bb.bd, %.thread, %bb.eu, %bb.ev, %bb.ew, %bb.az, %bb.ba, %bb.bb, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.t, %read_inf.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit.thread632:                          ; preds = %bb.hd, %bb.hf, %bb.hi, %bb.ih, %bb.ij, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit:                                    ; preds = %bb.hg, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.sink.split

bb.im:                                            ; preds = %bb.b
  switch i8 %i.k, label %bb.mw [
    i8 34, label %bb.in
    i8 116, label %bb.mm
    i8 102, label %bb.mn
    i8 110, label %bb.mo
  ]

bb.in:                                            ; preds = %bb.im
  %i.bau = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %i.bav = and i32 %4, 64
  %.not661 = icmp eq i32 %i.bav, 0                ; 3 uses
  br label %.backedge724

.backedge724:                                     ; preds = %.backedge724.backedge, %bb.in
  %.0599 = phi ptr [ %i.bau, %bb.in ], [ %.0599.be, %.backedge724.backedge ] ; 18 uses
  %i.baw = load i8, ptr %.0599, align 1, !tbaa !81 ; 2 uses
  %i.bax = zext i8 %i.baw to i64
  %i.bay = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bax
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !81
  %i.bba = trunc i8 %i.baz to i1
  br i1 %i.bba, label %bb.io, label %bb.je, !prof !25

bb.io:                                            ; preds = %.backedge724
  %i.bbb = getelementptr inbounds nuw i8, ptr %.0599, i64 1 ; 2 uses
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !81 ; 2 uses
  %i.bbd = zext i8 %i.bbc to i64
  %i.bbe = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbd
  %i.bbf = load i8, ptr %i.bbe, align 1, !tbaa !81
  %i.bbg = trunc i8 %i.bbf to i1
  br i1 %i.bbg, label %bb.ip, label %bb.je, !prof !25

bb.ip:                                            ; preds = %bb.io
  %i.bbh = getelementptr inbounds nuw i8, ptr %.0599, i64 2 ; 2 uses
  %i.bbi = load i8, ptr %i.bbh, align 1, !tbaa !81 ; 2 uses
  %i.bbj = zext i8 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbj
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !81
  %i.bbm = trunc i8 %i.bbl to i1
  br i1 %i.bbm, label %bb.iq, label %bb.je, !prof !25

bb.iq:                                            ; preds = %bb.ip
  %i.bbn = getelementptr inbounds nuw i8, ptr %.0599, i64 3 ; 2 uses
  %i.bbo = load i8, ptr %i.bbn, align 1, !tbaa !81 ; 2 uses
  %i.bbp = zext i8 %i.bbo to i64
  %i.bbq = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbp
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !81
  %i.bbs = trunc i8 %i.bbr to i1
  br i1 %i.bbs, label %bb.ir, label %bb.je, !prof !25

bb.ir:                                            ; preds = %bb.iq
  %i.bbt = getelementptr inbounds nuw i8, ptr %.0599, i64 4 ; 2 uses
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !81 ; 2 uses
  %i.bbv = zext i8 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bbv
  %i.bbx = load i8, ptr %i.bbw, align 1, !tbaa !81
  %i.bby = trunc i8 %i.bbx to i1
  br i1 %i.bby, label %bb.is, label %bb.je, !prof !25

bb.is:                                            ; preds = %bb.ir
  %i.bbz = getelementptr inbounds nuw i8, ptr %.0599, i64 5 ; 2 uses
  %i.bca = load i8, ptr %i.bbz, align 1, !tbaa !81 ; 2 uses
  %i.bcb = zext i8 %i.bca to i64
  %i.bcc = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcb
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !81
  %i.bce = trunc i8 %i.bcd to i1
  br i1 %i.bce, label %bb.it, label %bb.je, !prof !25

bb.it:                                            ; preds = %bb.is
  %i.bcf = getelementptr inbounds nuw i8, ptr %.0599, i64 6 ; 2 uses
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !81 ; 2 uses
  %i.bch = zext i8 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bch
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !81
  %i.bck = trunc i8 %i.bcj to i1
  br i1 %i.bck, label %bb.iu, label %bb.je, !prof !25

bb.iu:                                            ; preds = %bb.it
  %i.bcl = getelementptr inbounds nuw i8, ptr %.0599, i64 7 ; 2 uses
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !81 ; 2 uses
  %i.bcn = zext i8 %i.bcm to i64
  %i.bco = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bcn
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !81
  %i.bcq = trunc i8 %i.bcp to i1
  br i1 %i.bcq, label %bb.iv, label %bb.je, !prof !25

bb.iv:                                            ; preds = %bb.iu
  %i.bcr = getelementptr inbounds nuw i8, ptr %.0599, i64 8 ; 2 uses
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !81 ; 2 uses
  %i.bct = zext i8 %i.bcs to i64
  %i.bcu = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bct
end_hunk_9
begin_hunk_10_@yyjson_read_number:bb.a
  %i.abx = trunc nuw i128 %i.abw to i64
  %i.aby = add i64 %i.abx, %i.abo                 ; 2 uses
  %i.abz = add i64 %i.aby, -1
  %i.aca = icmp ult i64 %i.abz, -2
  br i1 %i.aca, label %bb.gw, label %.critedge992.i

bb.gw:                                            ; preds = %bb.gv
  %i.acb = icmp ult i64 %i.aby, %i.abo
  %i.acc = zext i1 %i.acb to i64
  %i.acd = add nuw i64 %i.acc, %i.abn
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.0116 = phi i64 [ %i.abn, %bb.gu ], [ %i.acd, %bb.gw ] ; 2 uses
  %i.ace = icmp sgt i64 %.0116, -1                ; 2 uses
  %.neg983.i = sext i1 %i.ace to i32
  %i.acf = zext i1 %i.ace to i64
  %i.acg = shl i64 %.0116, %i.acf                 ; 2 uses
  %i.ach = and i64 %i.acg, 1024
  %i.aci = add i64 %i.ach, %i.acg                 ; 2 uses
  %i.acj = icmp ult i64 %i.aci, 1024
  %spec.select149.v = select i1 %i.acj, i32 65, i32 64
  %i.ack = lshr i64 %i.aci, 11
  %reass.sub348 = sub nsw i32 %i.abf, %i.abh
  %i.acl = add nsw i32 %reass.sub348, 1086
  %spec.select149 = add nsw i32 %i.acl, %.neg983.i
  %i.acm = add nsw i32 %spec.select149, %spec.select149.v
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 52
  %i.acp = and i64 %i.ack, 4503599627370495
  %i.acq = or disjoint i64 %i.aco, %i.acp
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.acr = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.acs = or disjoint i64 %i.acq, %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.acs, ptr %i.act, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split608

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.gv
  %.pre-phi457 = phi i32 [ %.pre456, %..critedge992.i_crit_edge ], [ %i.abh, %bb.gv ]
  %.pre-phi455 = phi i128 [ %.pre454, %..critedge992.i_crit_edge ], [ %i.abj, %bb.gv ]
  %.pre-phi453 = phi i32 [ %.pre452, %..critedge992.i_crit_edge ], [ %i.abf, %bb.gv ]
  %.pre-phi447 = phi i32 [ %.pre446, %..critedge992.i_crit_edge ], [ %i.aay, %bb.gv ] ; 2 uses
  %.pre-phi443 = phi i64 [ %.pre442, %..critedge992.i_crit_edge ], [ %i.abg, %bb.gv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.acu = select i1 %i.aau, i64 0, i64 4
  %i.acv = shl i64 %i.acu, %.pre-phi443           ; 2 uses
  %i.acw = add i32 %.pre-phi447, 686
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.acx
  %i.acz = load i64, ptr %i.acy, align 16, !tbaa !91
  %i.ada = add i32 %.pre-phi447, 687
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.adb
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !91
  %i.ade = lshr i64 %i.add, 63
  %i.adf = add i64 %i.ade, %i.acz
  %i.adg = zext i64 %i.adf to i128
  %i.adh = mul nuw i128 %.pre-phi455, %i.adg      ; 2 uses
  %i.adi = lshr i128 %i.adh, 64
  %i.adj = trunc nuw i128 %i.adi to i64
  %i.adk = trunc i128 %i.adh to i64
  %i.adl = lshr i64 %i.adk, 63
  %i.adm = add nuw i64 %i.adl, %i.adj             ; 2 uses
  %.not986.i = icmp eq i64 %i.acv, 0
  %i.adn = select i1 %.not986.i, i64 8, i64 9
  %i.ado = add i64 %i.adn, %i.acv
  %i.adp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adm, i1 true) ; 3 uses
  %i.adq = trunc nuw nsw i64 %i.adp to i32
  %i.adr = shl i64 %i.adm, %i.adp                 ; 3 uses
  %i.ads = add nsw i32 %.pre-phi453, 64
  %i.adt = add nuw nsw i32 %.pre-phi457, %i.adq
  %i.adu = sub nsw i32 %i.ads, %i.adt             ; 7 uses
  %i.adv = shl i64 %i.ado, %i.adp                 ; 3 uses
  %i.adw = icmp sgt i32 %i.adu, -1086
  br i1 %i.adw, label %.thread126, label %bb.gy, !prof !25

bb.gy:                                            ; preds = %.critedge992.i
  %i.adx = icmp samesign ult i32 %i.adu, -1137
  br i1 %i.adx, label %.thread123, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ady = sub nuw nsw i32 -1074, %i.adu          ; 2 uses
  %i.adz = icmp samesign ult i32 %i.adu, -1134
  br i1 %i.adz, label %.thread123, label %.thread126, !prof !247

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
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.agb ; 4 uses
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
end_hunk_10
begin_hunk_11_@yyjson_read_number:bb.a
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
  %i.anf = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
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
  br label %.lr.ph316.preheader

bb.ia:                                            ; preds = %bb.hz
  %i.apu = zext i32 %i.anc to i64                 ; 10 uses
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.apu
  store i64 0, ptr %i.apv, align 8, !tbaa !91
  %.not.i34325 = icmp eq i32 %i.anc, 0
  %.pre458 = zext nneg i32 %i.ane to i64          ; 5 uses
  br i1 %.not.i34325, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.ia
  %i.apw = sub nuw nsw i32 64, %i.ane
  %i.apx = zext nneg i32 %i.apw to i64            ; 4 uses
  %min.iters.check670 = icmp ult i32 %i.anc, 20
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.scevcheck664

vector.scevcheck664:                              ; preds = %.lr.ph328
  %i.apy = add nsw i64 %i.apu, -1                 ; 2 uses
  %i.apz = add i32 %i.anc, %i.anf
  %i.aqa = trunc i64 %i.apy to i32
  %i.aqb = icmp ult i32 %i.apz, %i.aqa
  %i.aqc = icmp ugt i64 %i.apy, 4294967295
  %i.aqd = or i1 %i.aqb, %i.aqc
  br i1 %i.aqd, label %scalar.ph669.preheader, label %vector.memcheck665

vector.memcheck665:                               ; preds = %vector.scevcheck664
  %i.aqe = shl nuw nsw i64 %i.apu, 3              ; 2 uses
  %i.aqf = add i32 %i.anc, %i.anf
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = shl nuw nsw i64 %i.aqg, 3              ; 2 uses
  %i.aqi = sub nsw i64 %i.aqh, %i.aqe
  %diff.check666 = icmp ugt i64 %i.aqi, -32
  %i.aqj = sub nsw i64 %i.aqe, %i.aqh
  %i.aqk = add nsw i64 %i.aqj, -9
  %diff.check667 = icmp ult i64 %i.aqk, 31
  %conflict.rdx668 = or i1 %diff.check666, %diff.check667
  br i1 %conflict.rdx668, label %scalar.ph669.preheader, label %vector.ph671

vector.ph671:                                     ; preds = %vector.memcheck665
  %n.vec672 = and i64 %i.apu, 4294967292          ; 2 uses
  %i.aql = and i64 %i.apu, 3
  %broadcast.splatinsert673 = insertelement <2 x i64> poison, i64 %i.apx, i64 0
  %broadcast.splat674 = shufflevector <2 x i64> %broadcast.splatinsert673, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert675 = insertelement <2 x i64> poison, i64 %.pre458, i64 0
  %broadcast.splat676 = shufflevector <2 x i64> %broadcast.splatinsert675, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph671
  %index678 = phi i64 [ 0, %vector.ph671 ], [ %index.next683, %vector.body677 ] ; 2 uses
  %i.aqm = sub i64 %i.apu, %index678              ; 3 uses
  %i.aqn = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.aqm ; 2 uses
  %i.aqo = getelementptr inbounds i8, ptr %i.aqn, i64 -8
  %i.aqp = getelementptr inbounds i8, ptr %i.aqn, i64 -24
  %wide.load679 = load <2 x i64>, ptr %i.aqo, align 8, !tbaa !91
  %wide.load680 = load <2 x i64>, ptr %i.aqp, align 8, !tbaa !91
  %i.aqq = shl <2 x i64> %wide.load679, %broadcast.splat676
  %i.aqr = shl <2 x i64> %wide.load680, %broadcast.splat676
  %i.aqs = getelementptr [8 x i8], ptr %6, i64 %i.aqm ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 -8
  %i.aqu = getelementptr i8, ptr %i.aqs, i64 -24
  %wide.load681 = load <2 x i64>, ptr %i.aqt, align 8, !tbaa !91
  %wide.load682 = load <2 x i64>, ptr %i.aqu, align 8, !tbaa !91
  %i.aqv = lshr <2 x i64> %wide.load681, %broadcast.splat674
  %i.aqw = lshr <2 x i64> %wide.load682, %broadcast.splat674
  %i.aqx = or <2 x i64> %i.aqv, %i.aqq
  %i.aqy = or <2 x i64> %i.aqw, %i.aqr
  %i.aqz = trunc nuw i64 %i.aqm to i32
  %i.ara = add i32 %i.anf, %i.aqz
  %i.arb = zext i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.arb ; 2 uses
  %i.ard = getelementptr inbounds i8, ptr %i.arc, i64 -8
  %i.are = getelementptr inbounds i8, ptr %i.arc, i64 -24
  store <2 x i64> %i.aqx, ptr %i.ard, align 8, !tbaa !91
  store <2 x i64> %i.aqy, ptr %i.are, align 8, !tbaa !91
  %index.next683 = add nuw i64 %index678, 4       ; 2 uses
  %i.arf = icmp eq i64 %index.next683, %n.vec672
  br i1 %i.arf, label %middle.block684, label %vector.body677, !llvm.loop !251

middle.block684:                                  ; preds = %vector.body677
  %cmp.n685 = icmp eq i64 %n.vec672, %i.apu
  br i1 %cmp.n685, label %._crit_edge329, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %vector.memcheck665, %vector.scevcheck664, %.lr.ph328, %middle.block684
  %indvars.iv419.ph = phi i64 [ %i.apu, %vector.memcheck665 ], [ %i.apu, %vector.scevcheck664 ], [ %i.apu, %.lr.ph328 ], [ %i.aql, %middle.block684 ] ; 7 uses
  %xtraiter764 = and i64 %indvars.iv419.ph, 1
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %scalar.ph669.prol.loopexit, label %scalar.ph669.prol

scalar.ph669.prol:                                ; preds = %scalar.ph669.preheader
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv419.ph
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !91
  %i.ari = shl i64 %i.arh, %.pre458
  %i.arj = add nsw i64 %indvars.iv419.ph, -1
  %i.ark = getelementptr [8 x i8], ptr %6, i64 %indvars.iv419.ph
  %i.arl = load i64, ptr %i.ark, align 8, !tbaa !91
  %i.arm = lshr i64 %i.arl, %i.apx
  %i.arn = or i64 %i.arm, %i.ari
  %i.aro = trunc nuw i64 %indvars.iv419.ph to i32
  %i.arp = add i32 %i.anf, %i.aro
  %i.arq = zext i32 %i.arp to i64
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.arq
  store i64 %i.arn, ptr %i.arr, align 8, !tbaa !91
  br label %scalar.ph669.prol.loopexit

scalar.ph669.prol.loopexit:                       ; preds = %scalar.ph669.prol, %scalar.ph669.preheader
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %scalar.ph669.preheader ], [ %i.arj, %scalar.ph669.prol ]
  %i.ars = icmp eq i64 %indvars.iv419.ph, 1
  br i1 %i.ars, label %._crit_edge329, label %scalar.ph669

scalar.ph669:                                     ; preds = %scalar.ph669.prol.loopexit, %scalar.ph669
  %indvars.iv419 = phi i64 [ %i.asi, %scalar.ph669 ], [ %indvars.iv419.unr, %scalar.ph669.prol.loopexit ] ; 6 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %indvars.iv419
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91
  %i.arv = shl i64 %i.aru, %.pre458
  %i.arw = add nsw i64 %indvars.iv419, -1         ; 2 uses
  %i.arx = getelementptr [8 x i8], ptr %6, i64 %indvars.iv419
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !91
  %i.arz = lshr i64 %i.ary, %i.apx
  %i.asa = or i64 %i.arz, %i.arv
  %i.asb = trunc nuw i64 %indvars.iv419 to i32
  %i.asc = add i32 %i.anf, %i.asb
  %i.asd = zext i32 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.asd
  store i64 %i.asa, ptr %i.ase, align 8, !tbaa !91
  %i.asf = getelementptr [8 x i8], ptr %6, i64 %indvars.iv419
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !91
  %i.ash = shl i64 %i.asg, %.pre458
  %i.asi = add nsw i64 %indvars.iv419, -2         ; 2 uses
  %i.asj = getelementptr [8 x i8], ptr %6, i64 %i.arw
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !91
  %i.asl = lshr i64 %i.ask, %i.apx
  %i.asm = or i64 %i.asl, %i.ash
  %i.asn = trunc nuw i64 %i.arw to i32
  %i.aso = add i32 %i.anf, %i.asn
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.asp
  store i64 %i.asm, ptr %i.asq, align 8, !tbaa !91
  %.not.i34.wide.1 = icmp eq i64 %i.asi, 0
  br i1 %.not.i34.wide.1, label %._crit_edge329, label %scalar.ph669, !llvm.loop !252

._crit_edge329:                                   ; preds = %scalar.ph669.prol.loopexit, %scalar.ph669, %middle.block684, %bb.ia
  %i.asr = load i64, ptr %i.age, align 8, !tbaa !91
  %i.ass = shl i64 %i.asr, %.pre458
  %i.ast = zext nneg i32 %i.anf to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.ast
  store i64 %i.ass, ptr %i.asu, align 8, !tbaa !91
  %i.asv = add i32 %i.anc, %i.anf                 ; 2 uses
  %i.asw = zext i32 %i.asv to i64
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.asw
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !91
  %i.asz = icmp ne i64 %i.asy, 0
  %i.ata = zext i1 %i.asz to i32
  %i.atb = add i32 %i.asv, %i.ata                 ; 2 uses
  %.not45.i330 = icmp eq i32 %i.anf, 0
  br i1 %.not45.i330, label %bigint_mul_pow2.exit, label %.lr.ph316.preheader

bb.ib:                                            ; preds = %bigint_mul_pow10.exit
  %i.atc = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.atd = and i32 %i.atc, 63                     ; 3 uses
  %i.ate = lshr i32 %i.atc, 6                     ; 16 uses
  %i.atf = load i32, ptr %5, align 8, !tbaa !138  ; 12 uses
  %i.atg = icmp eq i32 %i.atd, 0
  br i1 %i.atg, label %.preheader196, label %bb.ic, !prof !8

.preheader196:                                    ; preds = %bb.ib
  %.not46.i41317 = icmp eq i32 %i.atf, 0
  br i1 %.not46.i41317, label %._crit_edge320, label %.lr.ph319

.lr.ph319:                                        ; preds = %.preheader196
  %i.ath = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ati = add nsw i32 %i.ate, -1                 ; 6 uses
  %i.atj = zext i32 %i.atf to i64                 ; 9 uses
  %min.iters.check653 = icmp ult i32 %i.atf, 30
  br i1 %min.iters.check653, label %scalar.ph652.preheader, label %vector.scevcheck649

vector.scevcheck649:                              ; preds = %.lr.ph319
  %i.atk = add nsw i64 %i.atj, -1                 ; 2 uses
  %i.atl = add i32 %i.atf, %i.ate
  %i.atm = add i32 %i.atl, -1
  %i.atn = trunc i64 %i.atk to i32
  %i.ato = icmp ult i32 %i.atm, %i.atn
  %i.atp = icmp ugt i64 %i.atk, 4294967295
  %i.atq = or i1 %i.ato, %i.atp
  br i1 %i.atq, label %scalar.ph652.preheader, label %vector.memcheck650

vector.memcheck650:                               ; preds = %vector.scevcheck649
  %i.atr = add i32 %i.atf, %i.ate
  %i.ats = add i32 %i.atr, -1
  %i.att = zext i32 %i.ats to i64
  %i.atu = sub nsw i64 %i.atj, %i.att
  %i.atv = shl nsw i64 %i.atu, 3
  %i.atw = add nsw i64 %i.atv, -9
  %diff.check651 = icmp ult i64 %i.atw, 31
  br i1 %diff.check651, label %scalar.ph652.preheader, label %vector.ph654

vector.ph654:                                     ; preds = %vector.memcheck650
  %n.vec655 = and i64 %i.atj, 4294967292          ; 2 uses
  %i.atx = and i64 %i.atj, 3
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph654
  %index657 = phi i64 [ 0, %vector.ph654 ], [ %index.next660, %vector.body656 ] ; 2 uses
  %i.aty = sub i64 %i.atj, %index657              ; 2 uses
  %i.atz = getelementptr [8 x i8], ptr %5, i64 %i.aty ; 2 uses
  %i.aua = getelementptr i8, ptr %i.atz, i64 -8
  %i.aub = getelementptr i8, ptr %i.atz, i64 -24
  %wide.load658.a = load <2 x i64>, ptr %i.aua, align 8, !tbaa !91
  %wide.load659 = load <2 x i64>, ptr %i.aub, align 8, !tbaa !91
  %i.auc = trunc nuw i64 %i.aty to i32
  %i.aud = add i32 %i.ati, %i.auc
  %i.aue = zext i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.aue ; 2 uses
  %i.aug = getelementptr inbounds i8, ptr %i.auf, i64 -8
  %i.auh = getelementptr inbounds i8, ptr %i.auf, i64 -24
  store <2 x i64> %wide.load658.a, ptr %i.aug, align 8, !tbaa !91
  store <2 x i64> %wide.load659, ptr %i.auh, align 8, !tbaa !91
  %index.next660 = add nuw i64 %index657, 4       ; 2 uses
  %i.aui = icmp eq i64 %index.next660, %n.vec655
  br i1 %i.aui, label %middle.block661, label %vector.body656, !llvm.loop !253

middle.block661:                                  ; preds = %vector.body656
  %cmp.n662 = icmp eq i64 %n.vec655, %i.atj
  br i1 %cmp.n662, label %._crit_edge320, label %scalar.ph652.preheader

scalar.ph652.preheader:                           ; preds = %vector.memcheck650, %vector.scevcheck649, %.lr.ph319, %middle.block661
  %indvars.iv414.ph = phi i64 [ %i.atj, %vector.memcheck650 ], [ %i.atj, %vector.scevcheck649 ], [ %i.atj, %.lr.ph319 ], [ %i.atx, %middle.block661 ] ; 4 uses
  %i.auj = add nsw i64 %indvars.iv414.ph, -1
  %xtraiter762 = and i64 %indvars.iv414.ph, 3     ; 2 uses
  %lcmp.mod763.not = icmp eq i64 %xtraiter762, 0
  br i1 %lcmp.mod763.not, label %scalar.ph652.prol.loopexit, label %scalar.ph652.prol

scalar.ph652.prol:                                ; preds = %scalar.ph652.preheader, %scalar.ph652.prol
  %indvars.iv414.prol = phi i64 [ %i.auk, %scalar.ph652.prol ], [ %indvars.iv414.ph, %scalar.ph652.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph652.prol ], [ 0, %scalar.ph652.preheader ]
  %i.auk = add nsw i64 %indvars.iv414.prol, -1    ; 2 uses
  %i.aul = getelementptr [8 x i8], ptr %5, i64 %indvars.iv414.prol
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !91
  %i.aun = trunc nuw i64 %indvars.iv414.prol to i32
  %i.auo = add i32 %i.ati, %i.aun
  %i.aup = zext i32 %i.auo to i64
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.aup
  store i64 %i.aum, ptr %i.auq, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter762
  br i1 %prol.iter.cmp.not, label %scalar.ph652.prol.loopexit, label %scalar.ph652.prol, !llvm.loop !254

scalar.ph652.prol.loopexit:                       ; preds = %scalar.ph652.prol, %scalar.ph652.preheader
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %scalar.ph652.preheader ], [ %i.auk, %scalar.ph652.prol ]
  %i.aur = icmp ult i64 %i.auj, 3
  br i1 %i.aur, label %._crit_edge320, label %scalar.ph652

scalar.ph652:                                     ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652
  %indvars.iv414 = phi i64 [ %i.avn, %scalar.ph652 ], [ %indvars.iv414.unr, %scalar.ph652.prol.loopexit ] ; 6 uses
  %i.aus = add nsw i64 %indvars.iv414, -1         ; 2 uses
  %i.aut = getelementptr [8 x i8], ptr %5, i64 %indvars.iv414
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !91
  %i.auv = trunc nuw i64 %indvars.iv414 to i32
  %i.auw = add i32 %i.ati, %i.auv
  %i.aux = zext i32 %i.auw to i64
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.aux
  store i64 %i.auu, ptr %i.auy, align 8, !tbaa !91
  %i.auz = add nsw i64 %indvars.iv414, -2         ; 2 uses
  %i.ava = getelementptr [8 x i8], ptr %5, i64 %i.aus
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !91
  %i.avc = trunc nuw i64 %i.aus to i32
  %i.avd = add i32 %i.ati, %i.avc
  %i.ave = zext i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.ave
  store i64 %i.avb, ptr %i.avf, align 8, !tbaa !91
  %i.avg = add nsw i64 %indvars.iv414, -3         ; 2 uses
  %i.avh = getelementptr [8 x i8], ptr %5, i64 %i.auz
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !91
  %i.avj = trunc nuw i64 %i.auz to i32
  %i.avk = add i32 %i.ati, %i.avj
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.avl
  store i64 %i.avi, ptr %i.avm, align 8, !tbaa !91
  %i.avn = add nsw i64 %indvars.iv414, -4         ; 2 uses
  %i.avo = getelementptr [8 x i8], ptr %5, i64 %i.avg
  %i.avp = load i64, ptr %i.avo, align 8, !tbaa !91
  %i.avq = trunc nuw i64 %i.avg to i32
  %i.avr = add i32 %i.ati, %i.avq
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.avs
  store i64 %i.avp, ptr %i.avt, align 8, !tbaa !91
  %.not46.i41.wide.3 = icmp eq i64 %i.avn, 0
  br i1 %.not46.i41.wide.3, label %._crit_edge320, label %scalar.ph652, !llvm.loop !255

._crit_edge320:                                   ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652, %middle.block661, %.preheader196
  %i.avu = add i32 %i.atf, %i.ate
  store i32 %i.avu, ptr %5, align 8, !tbaa !138
  %.not47.i43321 = icmp eq i32 %i.ate, 0
  br i1 %.not47.i43321, label %bigint_mul_pow2.exit, label %.lr.ph324

.lr.ph324:                                        ; preds = %._crit_edge320
  %i.avv = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph316.preheader

bb.ic:                                            ; preds = %bb.ib
  %i.avw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.avx = zext i32 %i.atf to i64                 ; 10 uses
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.avx
  store i64 0, ptr %i.avy, align 8, !tbaa !91
  %.not.i37308 = icmp eq i32 %i.atf, 0
  %.pre460 = zext nneg i32 %i.atd to i64          ; 5 uses
  br i1 %.not.i37308, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %bb.ic
  %i.avz = sub nuw nsw i32 64, %i.atd
  %i.awa = zext nneg i32 %i.avz to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.atf, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.awb = add nsw i64 %i.avx, -1                 ; 2 uses
  %i.awc = add i32 %i.atf, %i.ate
  %i.awd = trunc i64 %i.awb to i32
  %i.awe = icmp ult i32 %i.awc, %i.awd
  %i.awf = icmp ugt i64 %i.awb, 4294967295
  %i.awg = or i1 %i.awe, %i.awf
  br i1 %i.awg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.awh = shl nuw nsw i64 %i.avx, 3              ; 2 uses
  %i.awi = add i32 %i.atf, %i.ate
  %i.awj = zext i32 %i.awi to i64
  %i.awk = shl nuw nsw i64 %i.awj, 3              ; 2 uses
  %i.awl = sub nsw i64 %i.awk, %i.awh
  %diff.check = icmp ugt i64 %i.awl, -32
  %i.awm = sub nsw i64 %i.awh, %i.awk
  %i.awn = add nsw i64 %i.awm, -9
  %diff.check643 = icmp ult i64 %i.awn, 31
  %conflict.rdx = or i1 %diff.check, %diff.check643
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.avx, 4294967292             ; 2 uses
  %i.awo = and i64 %i.avx, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.awa, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert644 = insertelement <2 x i64> poison, i64 %.pre460, i64 0
  %broadcast.splat645 = shufflevector <2 x i64> %broadcast.splatinsert644, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.awp = sub i64 %i.avx, %index                 ; 3 uses
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.awp ; 2 uses
  %i.awr = getelementptr inbounds i8, ptr %i.awq, i64 -8
  %i.aws = getelementptr inbounds i8, ptr %i.awq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.awr, align 8, !tbaa !91
  %wide.load646 = load <2 x i64>, ptr %i.aws, align 8, !tbaa !91
  %i.awt = shl <2 x i64> %wide.load, %broadcast.splat645
  %i.awu = shl <2 x i64> %wide.load646, %broadcast.splat645
  %i.awv = getelementptr [8 x i8], ptr %5, i64 %i.awp ; 2 uses
  %i.aww = getelementptr i8, ptr %i.awv, i64 -8
  %i.awx = getelementptr i8, ptr %i.awv, i64 -24
  %wide.load647 = load <2 x i64>, ptr %i.aww, align 8, !tbaa !91
  %wide.load648 = load <2 x i64>, ptr %i.awx, align 8, !tbaa !91
  %i.awy = lshr <2 x i64> %wide.load647, %broadcast.splat
  %i.awz = lshr <2 x i64> %wide.load648, %broadcast.splat
  %i.axa = or <2 x i64> %i.awy, %i.awt
  %i.axb = or <2 x i64> %i.awz, %i.awu
  %i.axc = trunc nuw i64 %i.awp to i32
  %i.axd = add i32 %i.ate, %i.axc
  %i.axe = zext i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.axe ; 2 uses
  %i.axg = getelementptr inbounds i8, ptr %i.axf, i64 -8
  %i.axh = getelementptr inbounds i8, ptr %i.axf, i64 -24
  store <2 x i64> %i.axa, ptr %i.axg, align 8, !tbaa !91
  store <2 x i64> %i.axb, ptr %i.axh, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.axi = icmp eq i64 %index.next, %n.vec
  br i1 %i.axi, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.avx
  br i1 %cmp.n, label %._crit_edge312, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph311, %middle.block
  %indvars.iv409.ph = phi i64 [ %i.avx, %vector.memcheck ], [ %i.avx, %vector.scevcheck ], [ %i.avx, %.lr.ph311 ], [ %i.awo, %middle.block ] ; 7 uses
  %xtraiter760 = and i64 %indvars.iv409.ph, 1
  %lcmp.mod761.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod761.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %indvars.iv409.ph
  %i.axk = load i64, ptr %i.axj, align 8, !tbaa !91
  %i.axl = shl i64 %i.axk, %.pre460
  %i.axm = add nsw i64 %indvars.iv409.ph, -1
  %i.axn = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409.ph
  %i.axo = load i64, ptr %i.axn, align 8, !tbaa !91
  %i.axp = lshr i64 %i.axo, %i.awa
  %i.axq = or i64 %i.axp, %i.axl
  %i.axr = trunc nuw i64 %indvars.iv409.ph to i32
  %i.axs = add i32 %i.ate, %i.axr
  %i.axt = zext i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.axt
  store i64 %i.axq, ptr %i.axu, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %scalar.ph.preheader ], [ %i.axm, %scalar.ph.prol ]
  %i.axv = icmp eq i64 %indvars.iv409.ph, 1
  br i1 %i.axv, label %._crit_edge312, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv409 = phi i64 [ %i.ayl, %scalar.ph ], [ %indvars.iv409.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %indvars.iv409
  %i.axx = load i64, ptr %i.axw, align 8, !tbaa !91
  %i.axy = shl i64 %i.axx, %.pre460
  %i.axz = add nsw i64 %indvars.iv409, -1         ; 2 uses
  %i.aya = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.ayb = load i64, ptr %i.aya, align 8, !tbaa !91
  %i.ayc = lshr i64 %i.ayb, %i.awa
  %i.ayd = or i64 %i.ayc, %i.axy
  %i.aye = trunc nuw i64 %indvars.iv409 to i32
  %i.ayf = add i32 %i.ate, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !91
  %i.ayi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !91
  %i.ayk = shl i64 %i.ayj, %.pre460
  %i.ayl = add nsw i64 %indvars.iv409, -2         ; 2 uses
  %i.aym = getelementptr [8 x i8], ptr %5, i64 %i.axz
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !91
  %i.ayo = lshr i64 %i.ayn, %i.awa
  %i.ayp = or i64 %i.ayo, %i.ayk
  %i.ayq = trunc nuw i64 %i.axz to i32
  %i.ayr = add i32 %i.ate, %i.ayq
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ays
  store i64 %i.ayp, ptr %i.ayt, align 8, !tbaa !91
  %.not.i37.wide.1 = icmp eq i64 %i.ayl, 0
  br i1 %.not.i37.wide.1, label %._crit_edge312, label %scalar.ph, !llvm.loop !257

._crit_edge312:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ic
  %i.ayu = load i64, ptr %i.avw, align 8, !tbaa !91
  %i.ayv = shl i64 %i.ayu, %.pre460
  %i.ayw = zext nneg i32 %i.ate to i64
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayw
  store i64 %i.ayv, ptr %i.ayx, align 8, !tbaa !91
  %i.ayy = add i32 %i.atf, %i.ate                 ; 2 uses
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %i.ayz
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !91
  %i.azc = icmp ne i64 %i.azb, 0
  %i.azd = zext i1 %i.azc to i32
  %i.aze = add i32 %i.ayy, %i.azd
  store i32 %i.aze, ptr %5, align 8, !tbaa !138
  %.not45.i39313 = icmp eq i32 %i.ate, 0
  br i1 %.not45.i39313, label %bigint_mul_pow2.exit, label %.lr.ph316.preheader

.lr.ph316.preheader:                              ; preds = %._crit_edge312, %._crit_edge329, %.lr.ph341.preheader, %.lr.ph324
  %.sink616 = phi i32 [ %i.anf, %._crit_edge329 ], [ %i.ate, %.lr.ph324 ], [ %i.anf, %.lr.ph341.preheader ], [ %i.ate, %._crit_edge312 ]
  %.sink611 = phi ptr [ %i.age, %._crit_edge329 ], [ %i.avv, %.lr.ph324 ], [ %i.age, %.lr.ph341.preheader ], [ %i.avw, %._crit_edge312 ]
  %.ph610 = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %.lr.ph324 ], [ %i.apt, %.lr.ph341.preheader ], [ %i.anc, %._crit_edge312 ]
  %7 = add nsw i32 %.sink616, -1
  %i.azf = zext i32 %7 to i64
  %8 = shl nuw nsw i64 %i.azf, 3
  %9 = add nuw nsw i64 %8, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink611, i8 0, i64 %9, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %.lr.ph316.preheader, %._crit_edge312, %._crit_edge320, %._crit_edge329
  %10 = phi i32 [ %i.atb, %._crit_edge329 ], [ %i.anc, %._crit_edge312 ], [ %i.anc, %._crit_edge320 ], [ %.ph610, %.lr.ph316.preheader ] ; 2 uses
  %i.azg = load i32, ptr %5, align 8, !tbaa !138  ; 4 uses
  %i.azh = icmp ult i32 %i.azg, %10
  br i1 %i.azh, label %bigint_cmp.exit.thread, label %bb.id

bb.id:                                            ; preds = %bigint_mul_pow2.exit
  %i.azi = icmp ugt i32 %i.azg, %10
  br i1 %i.azi, label %bigint_cmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.id
  %.not.i45639 = icmp eq i32 %i.azg, 0
  br i1 %.not.i45639, label %bigint_cmp.exit.thread133, label %.lr.ph642

.lr.ph642:                                        ; preds = %.preheader
  %i.azj = zext i32 %i.azg to i64
  br label %bb.if

bb.ie:                                            ; preds = %bb.if
  %i.azk = add nsw i64 %indvars.iv427640, -1      ; 2 uses
  %.not.i45 = icmp eq i64 %i.azk, 0
  br i1 %.not.i45, label %bigint_cmp.exit.thread133, label %bb.if, !llvm.loop !153

bb.if:                                            ; preds = %.lr.ph642, %bb.ie
  %.016.i641 = phi i32 [ undef, %.lr.ph642 ], [ %.1.i46, %bb.ie ]
  %indvars.iv427640 = phi i64 [ %i.azj, %.lr.ph642 ], [ %i.azk, %bb.ie ] ; 3 uses
  %i.azl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv427640
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !91 ; 3 uses
  %i.azn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv427640
  %i.azo = load i64, ptr %i.azn, align 8, !tbaa !91 ; 3 uses
  %.not182 = icmp ult i64 %i.azm, %i.azo
  %.not183 = icmp ugt i64 %i.azm, %i.azo
  %..016.i = select i1 %.not183, i32 1, i32 %.016.i641
  %.1.i46 = select i1 %.not182, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.azm, %i.azo
  br i1 %cond.i, label %bb.ie, label %bigint_cmp.exit, !llvm.loop !153

bigint_cmp.exit:                                  ; preds = %bb.if
  %.not989.i = icmp eq i32 %.1.i46, 0
  br i1 %.not989.i, label %bigint_cmp.exit.thread133, label %bigint_cmp.exit.thread, !prof !124

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.id, %bigint_cmp.exit
  %.2.i47132 = phi i32 [ %.1.i46, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.id ]
  %i.azp = icmp sgt i32 %.2.i47132, 0
  %i.azq = zext i1 %i.azp to i64
  br label %bb.ig

bigint_cmp.exit.thread133:                        ; preds = %bb.ie, %.preheader, %bigint_cmp.exit
  %i.azr = and i64 %.0.i28.ph, 1
  br label %bb.ig

bb.ig:                                            ; preds = %bigint_cmp.exit.thread133, %bigint_cmp.exit.thread
  %.pn.i = phi i64 [ %i.azq, %bigint_cmp.exit.thread ], [ %i.azr, %bigint_cmp.exit.thread133 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i28.ph   ; 2 uses
  %i.azs = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.azs, label %bb.ih, label %bb.il, !prof !8

bb.ih:                                            ; preds = %bb.ig
  %i.azt = and i32 %2, 128
  %.not184 = icmp eq i32 %i.azt, 0
  br i1 %.not184, label %bb.ij, label %bb.ii, !prof !25

bb.ii:                                            ; preds = %bb.ih
  %i.azu = load ptr, ptr %i.d, align 8, !tbaa !92
  store i8 0, ptr %i.azu, align 1, !tbaa !81
  %i.azv = ptrtoint ptr %.33.i to i64
  %i.azw = sub i64 %i.azv, %i.f
  %i.azx = shl i64 %i.azw, 8
  %i.azy = or disjoint i64 %i.azx, 1
  store i64 %i.azy, ptr %1, align 8, !tbaa !79
  %i.azz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.azz, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.ij:                                            ; preds = %bb.ih
  %i.baa = and i32 %2, 16
  %.not185 = icmp eq i32 %i.baa, 0
  br i1 %.not185, label %read_num.exit, label %bb.ik, !prof !25

bb.ik:                                            ; preds = %bb.ij
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.bab = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.bac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bab, ptr %i.bac, align 8, !tbaa !81
  br label %read_num.exit.thread142

bb.il:                                            ; preds = %bb.ig
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.bad = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.bae = or disjoint i64 %.0895.i, %i.bad
  %i.baf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bae, ptr %i.baf, align 8, !tbaa !81
  br label %read_num.exit.thread142

read_num.exit.thread138:                          ; preds = %bb.fx, %bb.ac, %bb.fm, %bb.ge, %bb.fd, %read_inf_or_nan.exit.thread, %bb.fs, %bb.gn, %bb.ae, %bb.ag
  %.sink607 = phi ptr [ %i.yj, %bb.fx ], [ %i.de, %bb.ac ], [ %i.wv, %bb.fm ], [ %0, %bb.ge ], [ %i.vv, %bb.fd ], [ %.0903.i215, %read_inf_or_nan.exit.thread ], [ %.28.i, %bb.fs ], [ %0, %bb.gn ], [ %i.dt, %bb.ae ], [ %i.ee, %bb.ag ]
  store ptr %.sink607, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split

read_num.exit.thread142:                          ; preds = %bb.hf, %bb.hh, %bb.hj, %bb.ii, %bb.ik, %bb.il
  store ptr %.33.i, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split608

read_num.exit:                                    ; preds = %bb.ij, %bb.hg
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  store ptr %0, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split

.sink.split:                                      ; preds = %read_num.exit.thread138, %read_num.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.im

bb.im:                                            ; preds = %.sink.split, %.split140, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont89.cont.else

.cont89.cont.else:                                ; preds = %bb.im
  %.sroa.gep69 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bag = load ptr, ptr %i.b, align 8, !tbaa !92 ; 2 uses
  %i.bah = icmp ugt ptr %i.bag, %0
  %i.bai = ptrtoint ptr %i.bag to i64
  %i.baj = sub i64 %i.bai, %i.f
  %i.bak = select i1 %i.bah, i64 %i.baj, i64 0
  store i64 %i.bak, ptr %.sroa.gep69, align 8, !tbaa !105
  %i.bal = load ptr, ptr %i.e, align 8, !tbaa !92
  %.sroa.gep71 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bal, ptr %.sroa.gep71, align 8, !tbaa !107
  store i32 9, ptr %4, align 8, !tbaa !108
  br label %.cont.cont.cont

.sink.split608:                                   ; preds = %read_inf.exit, %bb.v, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %bb.ca, %bb.cd, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cv, %bb.cy, %bb.db, %bb.de, %bb.bd, %bb.bc, %bb.bb, %bb.ey, %bb.ex, %bb.ew, %.thread, %bb.bf, %.loopexit202, %bb.fv, %bb.fi, %bb.ab, %bb.gs, %bb.gx, %bb.gm, %bb.gk, %bb.gh, %bb.gd, %bb.gb, %bb.fz, %read_num.exit.thread142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.in

bb.in:                                            ; preds = %.sink.split608, %.split140, %.split
  %i.bam = load ptr, ptr %i.b, align 8, !tbaa !92
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %.cont89.cont.else, %bb.im, %.cont86.cont.else, %bb.d, %.cont.cont.else, %bb.b, %bb.in
  %.0 = phi ptr [ null, %.cont86.cont.else ], [ null, %.cont.cont.else ], [ %i.bam, %bb.in ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.im ], [ null, %.cont89.cont.else ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @yyjson_incr_new(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !10
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.sroa.77.0 = phi ptr [ %.sroa.77.0.copyload, %bb.b ], [ @default_free, %bb.a ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ @default_realloc, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ @default_malloc, %bb.a ] ; 3 uses
  %i.a = and i32 %2, -16221
  %.not48 = icmp eq ptr %0, null
  %i.b = icmp ugt i64 %1, -6
  %or.cond = or i1 %.not48, %i.b
  br i1 %or.cond, label %bb.k, label %bb.d, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef 144) #33 ; 15 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !10
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx5, align 8, !tbaa !10
  %.sroa.77.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.77.0, ptr %.sroa.77.0..sroa_idx9, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx12, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.a, ptr %i.e, align 8, !tbaa !259
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %1, ptr %i.f, align 8, !tbaa !261
  %i.g = and i32 %2, 1
  %.not51 = icmp eq i32 %i.g, 0
  br i1 %.not51, label %bb.g, label %bb.f, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %0, ptr %i.h, align 8, !tbaa !262
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.i = add nuw i64 %1, 4
  %i.j = tail call ptr %.sroa.0.0(ptr noundef %.sroa.8.0, i64 noundef %i.i) #33 ; 3 uses
end_hunk_11
begin_hunk_12_@yyjson_incr_read:bb.a
  %i.afi = icmp ult i64 %i.aff, %i.aev
  %i.afj = zext i1 %i.afi to i64
  %i.afk = add nuw i64 %i.afj, %i.aeu
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hl
  %.03034 = phi i64 [ %i.aeu, %bb.hl ], [ %i.afk, %bb.hn ] ; 2 uses
  %i.afl = icmp sgt i64 %.03034, -1               ; 2 uses
  %.neg983.i1037 = sext i1 %i.afl to i32
  %i.afm = zext i1 %i.afl to i64
  %i.afn = shl i64 %.03034, %i.afm                ; 2 uses
  %i.afo = and i64 %i.afn, 1024
  %i.afp = add i64 %i.afo, %i.afn                 ; 2 uses
  %i.afq = icmp ult i64 %i.afp, 1024
  %spec.select3332.v = select i1 %i.afq, i32 65, i32 64
  %i.afr = lshr i64 %i.afp, 11
  %reass.sub4467 = sub nsw i32 %i.aem, %i.aeo
  %i.afs = add nsw i32 %reass.sub4467, 1086
  %spec.select3332 = add nsw i32 %i.afs, %.neg983.i1037
  %i.aft = add nsw i32 %spec.select3332, %spec.select3332.v
  %i.afu = zext nneg i32 %i.aft to i64
  %i.afv = shl nuw nsw i64 %i.afu, 52
  %i.afw = and i64 %i.afr, 4503599627370495
  %i.afx = or disjoint i64 %i.afv, %i.afw
  store i64 20, ptr %.0617, align 8, !tbaa !79
  %i.afy = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.afz = or disjoint i64 %i.afx, %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.afz, ptr %i.aga, align 8, !tbaa !81
  store ptr %.33.i1008, ptr %i.d, align 8, !tbaa !92
  br label %read_num.exit1117.thread

.critedge992.i1036:                               ; preds = %..critedge992.i1036_crit_edge, %bb.hm
  %.pre-phi4996 = phi i32 [ %.pre4995, %..critedge992.i1036_crit_edge ], [ %i.aeo, %bb.hm ]
  %.pre-phi4994 = phi i128 [ %.pre4993, %..critedge992.i1036_crit_edge ], [ %i.aeq, %bb.hm ]
  %.pre-phi4992 = phi i32 [ %.pre4991, %..critedge992.i1036_crit_edge ], [ %i.aem, %bb.hm ]
  %.pre-phi4986 = phi i32 [ %.pre4985, %..critedge992.i1036_crit_edge ], [ %i.aef, %bb.hm ] ; 2 uses
  %.pre-phi4982 = phi i64 [ %.pre4981, %..critedge992.i1036_crit_edge ], [ %i.aen, %bb.hm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.agb = select i1 %i.aeb, i64 0, i64 4
  %i.agc = shl i64 %i.agb, %.pre-phi4982          ; 2 uses
  %i.agd = add i32 %.pre-phi4986, 686
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.age
  %i.agg = load i64, ptr %i.agf, align 16, !tbaa !91
  %i.agh = add i32 %.pre-phi4986, 687
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.agi
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !91
  %i.agl = lshr i64 %i.agk, 63
  %i.agm = add i64 %i.agl, %i.agg
  %i.agn = zext i64 %i.agm to i128
  %i.ago = mul nuw i128 %.pre-phi4994, %i.agn     ; 2 uses
  %i.agp = lshr i128 %i.ago, 64
  %i.agq = trunc nuw i128 %i.agp to i64
  %i.agr = trunc i128 %i.ago to i64
  %i.ags = lshr i64 %i.agr, 63
  %i.agt = add nuw i64 %i.ags, %i.agq             ; 2 uses
  %.not986.i1017 = icmp eq i64 %i.agc, 0
  %i.agu = select i1 %.not986.i1017, i64 8, i64 9
  %i.agv = add i64 %i.agu, %i.agc
  %i.agw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agt, i1 true) ; 3 uses
  %i.agx = trunc nuw nsw i64 %i.agw to i32
  %i.agy = shl i64 %i.agt, %i.agw                 ; 3 uses
  %i.agz = add nsw i32 %.pre-phi4992, 64
  %i.aha = add nuw nsw i32 %.pre-phi4996, %i.agx
  %i.ahb = sub nsw i32 %i.agz, %i.aha             ; 7 uses
  %i.ahc = shl i64 %i.agv, %i.agw                 ; 3 uses
  %i.ahd = icmp sgt i32 %i.ahb, -1086
  br i1 %i.ahd, label %.thread3155, label %bb.hp, !prof !25

bb.hp:                                            ; preds = %.critedge992.i1036
  %i.ahe = icmp samesign ult i32 %i.ahb, -1137
  br i1 %i.ahe, label %.thread3152, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.ahf = sub nuw nsw i32 -1074, %i.ahb          ; 2 uses
  %i.ahg = icmp samesign ult i32 %i.ahb, -1134
  br i1 %i.ahg, label %.thread3152, label %.thread3155, !prof !169

.thread3152:                                      ; preds = %bb.hp, %bb.hq
  %.0897.i10203154 = phi i32 [ %i.ahf, %bb.hq ], [ 64, %bb.hp ]
  %i.ahh = add nsw i32 %.0897.i10203154, -60      ; 2 uses
  %i.ahi = zext nneg i32 %i.ahh to i64            ; 2 uses
  %i.ahj = lshr i64 %i.agy, %i.ahi
  %i.ahk = add nsw i32 %i.ahh, %i.ahb
  %i.ahl = lshr i64 %i.ahc, %i.ahi
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
  %.sroa.9.0.i1030 = select i1 %.not988.i1029, i32 -1075, i32 %i.ajj ; 4 uses
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
end_hunk_12
begin_hunk_13_@yyjson_incr_read:bb.a
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
  %i.aqn = lshr i32 %.sroa.9.0.i1030, 6           ; 15 uses
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
  br label %.lr.ph4348.preheader

bb.is:                                            ; preds = %bb.ir
  %i.atc = zext i32 %i.aqk to i64                 ; 10 uses
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.atc
  store i64 0, ptr %i.atd, align 8, !tbaa !91
  %.not.i15194357 = icmp eq i32 %i.aqk, 0
  %.pre4997 = zext nneg i32 %i.aqm to i64         ; 5 uses
  br i1 %.not.i15194357, label %._crit_edge4361, label %.lr.ph4360

.lr.ph4360:                                       ; preds = %bb.is
  %i.ate = sub nuw nsw i32 64, %i.aqm
  %i.atf = zext nneg i32 %i.ate to i64            ; 4 uses
  %min.iters.check6163 = icmp ult i32 %i.aqk, 20
  br i1 %min.iters.check6163, label %scalar.ph6162.preheader, label %vector.scevcheck6157

vector.scevcheck6157:                             ; preds = %.lr.ph4360
  %i.atg = add nsw i64 %i.atc, -1                 ; 2 uses
  %i.ath = add i32 %i.aqk, %i.aqn
  %i.ati = trunc i64 %i.atg to i32
  %i.atj = icmp ult i32 %i.ath, %i.ati
  %i.atk = icmp ugt i64 %i.atg, 4294967295
  %i.atl = or i1 %i.atj, %i.atk
  br i1 %i.atl, label %scalar.ph6162.preheader, label %vector.memcheck6158

vector.memcheck6158:                              ; preds = %vector.scevcheck6157
  %i.atm = shl nuw nsw i64 %i.atc, 3              ; 2 uses
  %i.atn = add i32 %i.aqk, %i.aqn
  %i.ato = zext i32 %i.atn to i64
  %i.atp = shl nuw nsw i64 %i.ato, 3              ; 2 uses
  %i.atq = sub nsw i64 %i.atp, %i.atm
  %diff.check6159 = icmp ugt i64 %i.atq, -32
  %i.atr = sub nsw i64 %i.atm, %i.atp
  %i.ats = add nsw i64 %i.atr, -9
  %diff.check6160 = icmp ult i64 %i.ats, 31
  %conflict.rdx6161 = or i1 %diff.check6159, %diff.check6160
  br i1 %conflict.rdx6161, label %scalar.ph6162.preheader, label %vector.ph6164

vector.ph6164:                                    ; preds = %vector.memcheck6158
  %n.vec6165 = and i64 %i.atc, 4294967292         ; 2 uses
  %i.att = and i64 %i.atc, 3
  %broadcast.splatinsert6166 = insertelement <2 x i64> poison, i64 %i.atf, i64 0
  %broadcast.splat6167 = shufflevector <2 x i64> %broadcast.splatinsert6166, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6168 = insertelement <2 x i64> poison, i64 %.pre4997, i64 0
  %broadcast.splat6169 = shufflevector <2 x i64> %broadcast.splatinsert6168, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6170

vector.body6170:                                  ; preds = %vector.body6170, %vector.ph6164
  %index6171 = phi i64 [ 0, %vector.ph6164 ], [ %index.next6176, %vector.body6170 ] ; 2 uses
  %i.atu = sub i64 %i.atc, %index6171             ; 3 uses
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.atu ; 2 uses
  %i.atw = getelementptr inbounds i8, ptr %i.atv, i64 -8
  %i.atx = getelementptr inbounds i8, ptr %i.atv, i64 -24
  %wide.load6172 = load <2 x i64>, ptr %i.atw, align 8, !tbaa !91
  %wide.load6173 = load <2 x i64>, ptr %i.atx, align 8, !tbaa !91
  %i.aty = shl <2 x i64> %wide.load6172, %broadcast.splat6169
  %i.atz = shl <2 x i64> %wide.load6173, %broadcast.splat6169
  %i.aua = getelementptr [8 x i8], ptr %4, i64 %i.atu ; 2 uses
  %i.aub = getelementptr i8, ptr %i.aua, i64 -8
  %i.auc = getelementptr i8, ptr %i.aua, i64 -24
  %wide.load6174 = load <2 x i64>, ptr %i.aub, align 8, !tbaa !91
  %wide.load6175 = load <2 x i64>, ptr %i.auc, align 8, !tbaa !91
  %i.aud = lshr <2 x i64> %wide.load6174, %broadcast.splat6167
  %i.aue = lshr <2 x i64> %wide.load6175, %broadcast.splat6167
  %i.auf = or <2 x i64> %i.aud, %i.aty
  %i.aug = or <2 x i64> %i.aue, %i.atz
  %i.auh = trunc nuw i64 %i.atu to i32
  %i.aui = add i32 %i.aqn, %i.auh
  %i.auj = zext i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.auj ; 2 uses
  %i.aul = getelementptr inbounds i8, ptr %i.auk, i64 -8
  %i.aum = getelementptr inbounds i8, ptr %i.auk, i64 -24
  store <2 x i64> %i.auf, ptr %i.aul, align 8, !tbaa !91
  store <2 x i64> %i.aug, ptr %i.aum, align 8, !tbaa !91
  %index.next6176 = add nuw i64 %index6171, 4     ; 2 uses
  %i.aun = icmp eq i64 %index.next6176, %n.vec6165
  br i1 %i.aun, label %middle.block6177, label %vector.body6170, !llvm.loop !278

middle.block6177:                                 ; preds = %vector.body6170
  %cmp.n6178 = icmp eq i64 %n.vec6165, %i.atc
  br i1 %cmp.n6178, label %._crit_edge4361, label %scalar.ph6162.preheader

scalar.ph6162.preheader:                          ; preds = %vector.memcheck6158, %vector.scevcheck6157, %.lr.ph4360, %middle.block6177
  %indvars.iv4802.ph = phi i64 [ %i.atc, %vector.memcheck6158 ], [ %i.atc, %vector.scevcheck6157 ], [ %i.atc, %.lr.ph4360 ], [ %i.att, %middle.block6177 ] ; 7 uses
  %xtraiter6546 = and i64 %indvars.iv4802.ph, 1
  %lcmp.mod6547.not = icmp eq i64 %xtraiter6546, 0
  br i1 %lcmp.mod6547.not, label %scalar.ph6162.prol.loopexit, label %scalar.ph6162.prol

scalar.ph6162.prol:                               ; preds = %scalar.ph6162.preheader
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4802.ph
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !91
  %i.auq = shl i64 %i.aup, %.pre4997
  %i.aur = add nsw i64 %indvars.iv4802.ph, -1
  %i.aus = getelementptr [8 x i8], ptr %4, i64 %indvars.iv4802.ph
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !91
  %i.auu = lshr i64 %i.aut, %i.atf
  %i.auv = or i64 %i.auu, %i.auq
  %i.auw = trunc nuw i64 %indvars.iv4802.ph to i32
  %i.aux = add i32 %i.aqn, %i.auw
  %i.auy = zext i32 %i.aux to i64
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.auy
  store i64 %i.auv, ptr %i.auz, align 8, !tbaa !91
  br label %scalar.ph6162.prol.loopexit

scalar.ph6162.prol.loopexit:                      ; preds = %scalar.ph6162.prol, %scalar.ph6162.preheader
  %indvars.iv4802.unr = phi i64 [ %indvars.iv4802.ph, %scalar.ph6162.preheader ], [ %i.aur, %scalar.ph6162.prol ]
  %i.ava = icmp eq i64 %indvars.iv4802.ph, 1
  br i1 %i.ava, label %._crit_edge4361, label %scalar.ph6162

scalar.ph6162:                                    ; preds = %scalar.ph6162.prol.loopexit, %scalar.ph6162
  %indvars.iv4802 = phi i64 [ %i.avq, %scalar.ph6162 ], [ %indvars.iv4802.unr, %scalar.ph6162.prol.loopexit ] ; 6 uses
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %indvars.iv4802
  %i.avc = load i64, ptr %i.avb, align 8, !tbaa !91
  %i.avd = shl i64 %i.avc, %.pre4997
  %i.ave = add nsw i64 %indvars.iv4802, -1        ; 2 uses
  %i.avf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv4802
  %i.avg = load i64, ptr %i.avf, align 8, !tbaa !91
  %i.avh = lshr i64 %i.avg, %i.atf
  %i.avi = or i64 %i.avh, %i.avd
  %i.avj = trunc nuw i64 %indvars.iv4802 to i32
  %i.avk = add i32 %i.aqn, %i.avj
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.avl
  store i64 %i.avi, ptr %i.avm, align 8, !tbaa !91
  %i.avn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv4802
  %i.avo = load i64, ptr %i.avn, align 8, !tbaa !91
  %i.avp = shl i64 %i.avo, %.pre4997
  %i.avq = add nsw i64 %indvars.iv4802, -2        ; 2 uses
  %i.avr = getelementptr [8 x i8], ptr %4, i64 %i.ave
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !91
  %i.avt = lshr i64 %i.avs, %i.atf
  %i.avu = or i64 %i.avt, %i.avp
  %i.avv = trunc nuw i64 %i.ave to i32
  %i.avw = add i32 %i.aqn, %i.avv
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.avx
  store i64 %i.avu, ptr %i.avy, align 8, !tbaa !91
  %.not.i1519.wide.1 = icmp eq i64 %i.avq, 0
  br i1 %.not.i1519.wide.1, label %._crit_edge4361, label %scalar.ph6162, !llvm.loop !279

._crit_edge4361:                                  ; preds = %scalar.ph6162.prol.loopexit, %scalar.ph6162, %middle.block6177, %bb.is
  %i.avz = load i64, ptr %i.ajm, align 8, !tbaa !91
  %i.awa = shl i64 %i.avz, %.pre4997
  %i.awb = zext nneg i32 %i.aqn to i64
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.awb
  store i64 %i.awa, ptr %i.awc, align 8, !tbaa !91
  %i.awd = add i32 %i.aqk, %i.aqn                 ; 2 uses
  %i.awe = zext i32 %i.awd to i64
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.awe
  %i.awg = load i64, ptr %i.awf, align 8, !tbaa !91
  %i.awh = icmp ne i64 %i.awg, 0
  %i.awi = zext i1 %i.awh to i32
  %i.awj = add i32 %i.awd, %i.awi                 ; 2 uses
  %.not45.i15204362 = icmp eq i32 %i.aqn, 0
  br i1 %.not45.i15204362, label %bigint_mul_pow2.exit, label %.lr.ph4348.preheader

bb.it:                                            ; preds = %bigint_mul_pow10.exit
  %i.awk = sub nsw i32 0, %.sroa.9.0.i1030        ; 2 uses
  %i.awl = and i32 %i.awk, 63                     ; 3 uses
  %i.awm = lshr i32 %i.awk, 6                     ; 16 uses
  %i.awn = load i32, ptr %3, align 8, !tbaa !138  ; 12 uses
  %i.awo = icmp eq i32 %i.awl, 0
  br i1 %i.awo, label %.preheader3531, label %bb.iu, !prof !8

.preheader3531:                                   ; preds = %bb.it
  %.not46.i15284349 = icmp eq i32 %i.awn, 0
  br i1 %.not46.i15284349, label %._crit_edge4352, label %.lr.ph4351

.lr.ph4351:                                       ; preds = %.preheader3531
  %i.awp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.awq = add nsw i32 %i.awm, -1                 ; 6 uses
  %i.awr = zext i32 %i.awn to i64                 ; 9 uses
  %min.iters.check6146 = icmp ult i32 %i.awn, 30
  br i1 %min.iters.check6146, label %scalar.ph6145.preheader, label %vector.scevcheck6142

vector.scevcheck6142:                             ; preds = %.lr.ph4351
  %i.aws = add nsw i64 %i.awr, -1                 ; 2 uses
  %i.awt = add i32 %i.awn, %i.awm
  %i.awu = add i32 %i.awt, -1
  %i.awv = trunc i64 %i.aws to i32
  %i.aww = icmp ult i32 %i.awu, %i.awv
  %i.awx = icmp ugt i64 %i.aws, 4294967295
  %i.awy = or i1 %i.aww, %i.awx
  br i1 %i.awy, label %scalar.ph6145.preheader, label %vector.memcheck6143

vector.memcheck6143:                              ; preds = %vector.scevcheck6142
  %i.awz = add i32 %i.awn, %i.awm
  %i.axa = add i32 %i.awz, -1
  %i.axb = zext i32 %i.axa to i64
  %i.axc = sub nsw i64 %i.awr, %i.axb
  %i.axd = shl nsw i64 %i.axc, 3
  %i.axe = add nsw i64 %i.axd, -9
  %diff.check6144 = icmp ult i64 %i.axe, 31
  br i1 %diff.check6144, label %scalar.ph6145.preheader, label %vector.ph6147

vector.ph6147:                                    ; preds = %vector.memcheck6143
  %n.vec6148 = and i64 %i.awr, 4294967292         ; 2 uses
  %i.axf = and i64 %i.awr, 3
  br label %vector.body6149

vector.body6149:                                  ; preds = %vector.body6149, %vector.ph6147
  %index6150 = phi i64 [ 0, %vector.ph6147 ], [ %index.next6153, %vector.body6149 ] ; 2 uses
  %i.axg = sub i64 %i.awr, %index6150             ; 2 uses
  %i.axh = getelementptr [8 x i8], ptr %3, i64 %i.axg ; 2 uses
  %i.axi = getelementptr i8, ptr %i.axh, i64 -8
  %i.axj = getelementptr i8, ptr %i.axh, i64 -24
  %wide.load6151 = load <2 x i64>, ptr %i.axi, align 8, !tbaa !91
  %wide.load6152 = load <2 x i64>, ptr %i.axj, align 8, !tbaa !91
  %i.axk = trunc nuw i64 %i.axg to i32
  %i.axl = add i32 %i.awq, %i.axk
  %i.axm = zext i32 %i.axl to i64
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.axm ; 2 uses
  %i.axo = getelementptr inbounds i8, ptr %i.axn, i64 -8
  %i.axp = getelementptr inbounds i8, ptr %i.axn, i64 -24
  store <2 x i64> %wide.load6151, ptr %i.axo, align 8, !tbaa !91
  store <2 x i64> %wide.load6152, ptr %i.axp, align 8, !tbaa !91
  %index.next6153 = add nuw i64 %index6150, 4     ; 2 uses
  %i.axq = icmp eq i64 %index.next6153, %n.vec6148
  br i1 %i.axq, label %middle.block6154, label %vector.body6149, !llvm.loop !280

middle.block6154:                                 ; preds = %vector.body6149
  %cmp.n6155 = icmp eq i64 %n.vec6148, %i.awr
  br i1 %cmp.n6155, label %._crit_edge4352, label %scalar.ph6145.preheader

scalar.ph6145.preheader:                          ; preds = %vector.memcheck6143, %vector.scevcheck6142, %.lr.ph4351, %middle.block6154
  %indvars.iv4797.ph = phi i64 [ %i.awr, %vector.memcheck6143 ], [ %i.awr, %vector.scevcheck6142 ], [ %i.awr, %.lr.ph4351 ], [ %i.axf, %middle.block6154 ] ; 4 uses
  %i.axr = add nsw i64 %indvars.iv4797.ph, -1
  %xtraiter6543 = and i64 %indvars.iv4797.ph, 3   ; 2 uses
  %lcmp.mod6544.not = icmp eq i64 %xtraiter6543, 0
  br i1 %lcmp.mod6544.not, label %scalar.ph6145.prol.loopexit, label %scalar.ph6145.prol

scalar.ph6145.prol:                               ; preds = %scalar.ph6145.preheader, %scalar.ph6145.prol
  %indvars.iv4797.prol = phi i64 [ %i.axs, %scalar.ph6145.prol ], [ %indvars.iv4797.ph, %scalar.ph6145.preheader ] ; 3 uses
  %prol.iter6545 = phi i64 [ %prol.iter6545.next, %scalar.ph6145.prol ], [ 0, %scalar.ph6145.preheader ]
  %i.axs = add nsw i64 %indvars.iv4797.prol, -1   ; 2 uses
  %i.axt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4797.prol
  %i.axu = load i64, ptr %i.axt, align 8, !tbaa !91
  %i.axv = trunc nuw i64 %indvars.iv4797.prol to i32
  %i.axw = add i32 %i.awq, %i.axv
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.axx
  store i64 %i.axu, ptr %i.axy, align 8, !tbaa !91
  %prol.iter6545.next = add i64 %prol.iter6545, 1 ; 2 uses
  %prol.iter6545.cmp.not = icmp eq i64 %prol.iter6545.next, %xtraiter6543
  br i1 %prol.iter6545.cmp.not, label %scalar.ph6145.prol.loopexit, label %scalar.ph6145.prol, !llvm.loop !281

scalar.ph6145.prol.loopexit:                      ; preds = %scalar.ph6145.prol, %scalar.ph6145.preheader
  %indvars.iv4797.unr = phi i64 [ %indvars.iv4797.ph, %scalar.ph6145.preheader ], [ %i.axs, %scalar.ph6145.prol ]
  %i.axz = icmp ult i64 %i.axr, 3
  br i1 %i.axz, label %._crit_edge4352, label %scalar.ph6145

scalar.ph6145:                                    ; preds = %scalar.ph6145.prol.loopexit, %scalar.ph6145
  %indvars.iv4797 = phi i64 [ %i.ayv, %scalar.ph6145 ], [ %indvars.iv4797.unr, %scalar.ph6145.prol.loopexit ] ; 6 uses
  %i.aya = add nsw i64 %indvars.iv4797, -1        ; 2 uses
  %i.ayb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4797
  %i.ayc = load i64, ptr %i.ayb, align 8, !tbaa !91
  %i.ayd = trunc nuw i64 %indvars.iv4797 to i32
  %i.aye = add i32 %i.awq, %i.ayd
  %i.ayf = zext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.ayf
  store i64 %i.ayc, ptr %i.ayg, align 8, !tbaa !91
  %i.ayh = add nsw i64 %indvars.iv4797, -2        ; 2 uses
  %i.ayi = getelementptr [8 x i8], ptr %3, i64 %i.aya
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !91
  %i.ayk = trunc nuw i64 %i.aya to i32
  %i.ayl = add i32 %i.awq, %i.ayk
  %i.aym = zext i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.aym
  store i64 %i.ayj, ptr %i.ayn, align 8, !tbaa !91
  %i.ayo = add nsw i64 %indvars.iv4797, -3        ; 2 uses
  %i.ayp = getelementptr [8 x i8], ptr %3, i64 %i.ayh
  %i.ayq = load i64, ptr %i.ayp, align 8, !tbaa !91
  %i.ayr = trunc nuw i64 %i.ayh to i32
  %i.ays = add i32 %i.awq, %i.ayr
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.ayt
  store i64 %i.ayq, ptr %i.ayu, align 8, !tbaa !91
  %i.ayv = add nsw i64 %indvars.iv4797, -4        ; 2 uses
  %i.ayw = getelementptr [8 x i8], ptr %3, i64 %i.ayo
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !91
  %i.ayy = trunc nuw i64 %i.ayo to i32
  %i.ayz = add i32 %i.awq, %i.ayy
  %i.aza = zext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.awp, i64 %i.aza
  store i64 %i.ayx, ptr %i.azb, align 8, !tbaa !91
  %.not46.i1528.wide.3 = icmp eq i64 %i.ayv, 0
  br i1 %.not46.i1528.wide.3, label %._crit_edge4352, label %scalar.ph6145, !llvm.loop !282

._crit_edge4352:                                  ; preds = %scalar.ph6145.prol.loopexit, %scalar.ph6145, %middle.block6154, %.preheader3531
  %i.azc = add i32 %i.awn, %i.awm
  store i32 %i.azc, ptr %3, align 8, !tbaa !138
  %.not47.i15304353 = icmp eq i32 %i.awm, 0
  br i1 %.not47.i15304353, label %bigint_mul_pow2.exit, label %.lr.ph4356

.lr.ph4356:                                       ; preds = %._crit_edge4352
  %i.azd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph4348.preheader

bb.iu:                                            ; preds = %bb.it
  %i.aze = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.azf = zext i32 %i.awn to i64                 ; 10 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azf
  store i64 0, ptr %i.azg, align 8, !tbaa !91
  %.not.i15244340 = icmp eq i32 %i.awn, 0
  %.pre4999 = zext nneg i32 %i.awl to i64         ; 5 uses
  br i1 %.not.i15244340, label %._crit_edge4344, label %.lr.ph4343

.lr.ph4343:                                       ; preds = %bb.iu
  %i.azh = sub nuw nsw i32 64, %i.awl
  %i.azi = zext nneg i32 %i.azh to i64            ; 4 uses
  %min.iters.check6125 = icmp ult i32 %i.awn, 20
  br i1 %min.iters.check6125, label %scalar.ph6124.preheader, label %vector.scevcheck6119

vector.scevcheck6119:                             ; preds = %.lr.ph4343
  %i.azj = add nsw i64 %i.azf, -1                 ; 2 uses
  %i.azk = add i32 %i.awn, %i.awm
  %i.azl = trunc i64 %i.azj to i32
  %i.azm = icmp ult i32 %i.azk, %i.azl
  %i.azn = icmp ugt i64 %i.azj, 4294967295
  %i.azo = or i1 %i.azm, %i.azn
  br i1 %i.azo, label %scalar.ph6124.preheader, label %vector.memcheck6120

vector.memcheck6120:                              ; preds = %vector.scevcheck6119
  %i.azp = shl nuw nsw i64 %i.azf, 3              ; 2 uses
  %i.azq = add i32 %i.awn, %i.awm
  %i.azr = zext i32 %i.azq to i64
  %i.azs = shl nuw nsw i64 %i.azr, 3              ; 2 uses
  %i.azt = sub nsw i64 %i.azs, %i.azp
  %diff.check6121 = icmp ugt i64 %i.azt, -32
  %i.azu = sub nsw i64 %i.azp, %i.azs
  %i.azv = add nsw i64 %i.azu, -9
  %diff.check6122 = icmp ult i64 %i.azv, 31
  %conflict.rdx6123 = or i1 %diff.check6121, %diff.check6122
  br i1 %conflict.rdx6123, label %scalar.ph6124.preheader, label %vector.ph6126

vector.ph6126:                                    ; preds = %vector.memcheck6120
  %n.vec6127 = and i64 %i.azf, 4294967292         ; 2 uses
  %i.azw = and i64 %i.azf, 3
  %broadcast.splatinsert6128 = insertelement <2 x i64> poison, i64 %i.azi, i64 0
  %broadcast.splat6129 = shufflevector <2 x i64> %broadcast.splatinsert6128, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6130 = insertelement <2 x i64> poison, i64 %.pre4999, i64 0
  %broadcast.splat6131 = shufflevector <2 x i64> %broadcast.splatinsert6130, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6132

vector.body6132:                                  ; preds = %vector.body6132, %vector.ph6126
  %index6133 = phi i64 [ 0, %vector.ph6126 ], [ %index.next6138, %vector.body6132 ] ; 2 uses
  %i.azx = sub i64 %i.azf, %index6133             ; 3 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azx ; 2 uses
  %i.azz = getelementptr inbounds i8, ptr %i.azy, i64 -8
  %i.baa = getelementptr inbounds i8, ptr %i.azy, i64 -24
  %wide.load6134 = load <2 x i64>, ptr %i.azz, align 8, !tbaa !91
  %wide.load6135 = load <2 x i64>, ptr %i.baa, align 8, !tbaa !91
  %i.bab = shl <2 x i64> %wide.load6134, %broadcast.splat6131
  %i.bac = shl <2 x i64> %wide.load6135, %broadcast.splat6131
  %i.bad = getelementptr [8 x i8], ptr %3, i64 %i.azx ; 2 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 -8
  %i.baf = getelementptr i8, ptr %i.bad, i64 -24
  %wide.load6136 = load <2 x i64>, ptr %i.bae, align 8, !tbaa !91
  %wide.load6137 = load <2 x i64>, ptr %i.baf, align 8, !tbaa !91
  %i.bag = lshr <2 x i64> %wide.load6136, %broadcast.splat6129
  %i.bah = lshr <2 x i64> %wide.load6137, %broadcast.splat6129
  %i.bai = or <2 x i64> %i.bag, %i.bab
  %i.baj = or <2 x i64> %i.bah, %i.bac
  %i.bak = trunc nuw i64 %i.azx to i32
  %i.bal = add i32 %i.awm, %i.bak
  %i.bam = zext i32 %i.bal to i64
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bam ; 2 uses
  %i.bao = getelementptr inbounds i8, ptr %i.ban, i64 -8
  %i.bap = getelementptr inbounds i8, ptr %i.ban, i64 -24
  store <2 x i64> %i.bai, ptr %i.bao, align 8, !tbaa !91
  store <2 x i64> %i.baj, ptr %i.bap, align 8, !tbaa !91
  %index.next6138 = add nuw i64 %index6133, 4     ; 2 uses
  %i.baq = icmp eq i64 %index.next6138, %n.vec6127
  br i1 %i.baq, label %middle.block6139, label %vector.body6132, !llvm.loop !283

middle.block6139:                                 ; preds = %vector.body6132
  %cmp.n6140 = icmp eq i64 %n.vec6127, %i.azf
  br i1 %cmp.n6140, label %._crit_edge4344, label %scalar.ph6124.preheader

scalar.ph6124.preheader:                          ; preds = %vector.memcheck6120, %vector.scevcheck6119, %.lr.ph4343, %middle.block6139
  %indvars.iv4792.ph = phi i64 [ %i.azf, %vector.memcheck6120 ], [ %i.azf, %vector.scevcheck6119 ], [ %i.azf, %.lr.ph4343 ], [ %i.azw, %middle.block6139 ] ; 7 uses
  %xtraiter6540 = and i64 %indvars.iv4792.ph, 1
  %lcmp.mod6541.not = icmp eq i64 %xtraiter6540, 0
  br i1 %lcmp.mod6541.not, label %scalar.ph6124.prol.loopexit, label %scalar.ph6124.prol

scalar.ph6124.prol:                               ; preds = %scalar.ph6124.preheader
  %i.bar = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv4792.ph
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !91
  %i.bat = shl i64 %i.bas, %.pre4999
  %i.bau = add nsw i64 %indvars.iv4792.ph, -1
  %i.bav = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792.ph
  %i.baw = load i64, ptr %i.bav, align 8, !tbaa !91
  %i.bax = lshr i64 %i.baw, %i.azi
  %i.bay = or i64 %i.bax, %i.bat
  %i.baz = trunc nuw i64 %indvars.iv4792.ph to i32
  %i.bba = add i32 %i.awm, %i.baz
  %i.bbb = zext i32 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbb
  store i64 %i.bay, ptr %i.bbc, align 8, !tbaa !91
  br label %scalar.ph6124.prol.loopexit

scalar.ph6124.prol.loopexit:                      ; preds = %scalar.ph6124.prol, %scalar.ph6124.preheader
  %indvars.iv4792.unr = phi i64 [ %indvars.iv4792.ph, %scalar.ph6124.preheader ], [ %i.bau, %scalar.ph6124.prol ]
  %i.bbd = icmp eq i64 %indvars.iv4792.ph, 1
  br i1 %i.bbd, label %._crit_edge4344, label %scalar.ph6124

scalar.ph6124:                                    ; preds = %scalar.ph6124.prol.loopexit, %scalar.ph6124
  %indvars.iv4792 = phi i64 [ %i.bbt, %scalar.ph6124 ], [ %indvars.iv4792.unr, %scalar.ph6124.prol.loopexit ] ; 6 uses
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv4792
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !91
  %i.bbg = shl i64 %i.bbf, %.pre4999
  %i.bbh = add nsw i64 %indvars.iv4792, -1        ; 2 uses
  %i.bbi = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !91
  %i.bbk = lshr i64 %i.bbj, %i.azi
  %i.bbl = or i64 %i.bbk, %i.bbg
  %i.bbm = trunc nuw i64 %indvars.iv4792 to i32
  %i.bbn = add i32 %i.awm, %i.bbm
  %i.bbo = zext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbo
  store i64 %i.bbl, ptr %i.bbp, align 8, !tbaa !91
  %i.bbq = getelementptr [8 x i8], ptr %3, i64 %indvars.iv4792
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !91
  %i.bbs = shl i64 %i.bbr, %.pre4999
  %i.bbt = add nsw i64 %indvars.iv4792, -2        ; 2 uses
  %i.bbu = getelementptr [8 x i8], ptr %3, i64 %i.bbh
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !91
  %i.bbw = lshr i64 %i.bbv, %i.azi
  %i.bbx = or i64 %i.bbw, %i.bbs
  %i.bby = trunc nuw i64 %i.bbh to i32
  %i.bbz = add i32 %i.awm, %i.bby
  %i.bca = zext i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bca
  store i64 %i.bbx, ptr %i.bcb, align 8, !tbaa !91
  %.not.i1524.wide.1 = icmp eq i64 %i.bbt, 0
  br i1 %.not.i1524.wide.1, label %._crit_edge4344, label %scalar.ph6124, !llvm.loop !284

._crit_edge4344:                                  ; preds = %scalar.ph6124.prol.loopexit, %scalar.ph6124, %middle.block6139, %bb.iu
  %i.bcc = load i64, ptr %i.aze, align 8, !tbaa !91
  %i.bcd = shl i64 %i.bcc, %.pre4999
  %i.bce = zext nneg i32 %i.awm to i64
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bce
  store i64 %i.bcd, ptr %i.bcf, align 8, !tbaa !91
  %i.bcg = add i32 %i.awn, %i.awm                 ; 2 uses
  %i.bch = zext i32 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bch
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !91
  %i.bck = icmp ne i64 %i.bcj, 0
  %i.bcl = zext i1 %i.bck to i32
  %i.bcm = add i32 %i.bcg, %i.bcl
  store i32 %i.bcm, ptr %3, align 8, !tbaa !138
  %.not45.i15264345 = icmp eq i32 %i.awm, 0
  br i1 %.not45.i15264345, label %bigint_mul_pow2.exit, label %.lr.ph4348.preheader

.lr.ph4348.preheader:                             ; preds = %._crit_edge4344, %._crit_edge4361, %.lr.ph4373.preheader, %.lr.ph4356
  %.sink5677 = phi i32 [ %i.aqn, %._crit_edge4361 ], [ %i.awm, %.lr.ph4356 ], [ %i.aqn, %.lr.ph4373.preheader ], [ %i.awm, %._crit_edge4344 ]
  %.sink5672 = phi ptr [ %i.ajm, %._crit_edge4361 ], [ %i.azd, %.lr.ph4356 ], [ %i.ajm, %.lr.ph4373.preheader ], [ %i.aze, %._crit_edge4344 ]
  %.ph5671 = phi i32 [ %i.awj, %._crit_edge4361 ], [ %i.aqk, %.lr.ph4356 ], [ %i.atb, %.lr.ph4373.preheader ], [ %i.aqk, %._crit_edge4344 ]
  %10 = add nsw i32 %.sink5677, -1
  %i.bcn = zext i32 %10 to i64
  %11 = shl nuw nsw i64 %i.bcn, 3
  %12 = add nuw nsw i64 %11, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5672, i8 0, i64 %12, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit

bigint_mul_pow2.exit:                             ; preds = %.lr.ph4348.preheader, %._crit_edge4344, %._crit_edge4352, %._crit_edge4361
  %13 = phi i32 [ %i.awj, %._crit_edge4361 ], [ %i.aqk, %._crit_edge4344 ], [ %i.aqk, %._crit_edge4352 ], [ %.ph5671, %.lr.ph4348.preheader ] ; 2 uses
  %i.bco = load i32, ptr %3, align 8, !tbaa !138  ; 4 uses
  %i.bcp = icmp ult i32 %i.bco, %13
  br i1 %i.bcp, label %bigint_cmp.exit.thread, label %bb.iv

bb.iv:                                            ; preds = %bigint_mul_pow2.exit
  %i.bcq = icmp ugt i32 %i.bco, %13
  br i1 %i.bcq, label %bigint_cmp.exit.thread, label %.preheader3527

.preheader3527:                                   ; preds = %bb.iv
  %.not.i15685970 = icmp eq i32 %i.bco, 0
  br i1 %.not.i15685970, label %bigint_cmp.exit.thread3162, label %.lr.ph5973

.lr.ph5973:                                       ; preds = %.preheader3527
  %i.bcr = zext i32 %i.bco to i64
  br label %bb.ix

bb.iw:                                            ; preds = %bb.ix
  %i.bcs = add nsw i64 %indvars.iv48105971, -1    ; 2 uses
  %.not.i1568 = icmp eq i64 %i.bcs, 0
  br i1 %.not.i1568, label %bigint_cmp.exit.thread3162, label %bb.ix, !llvm.loop !153

bb.ix:                                            ; preds = %.lr.ph5973, %bb.iw
  %.016.i5972 = phi i32 [ undef, %.lr.ph5973 ], [ %.1.i1569, %bb.iw ]
  %indvars.iv48105971 = phi i64 [ %i.bcr, %.lr.ph5973 ], [ %i.bcs, %bb.iw ] ; 3 uses
  %i.bct = getelementptr [8 x i8], ptr %3, i64 %indvars.iv48105971
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !91 ; 3 uses
  %i.bcv = getelementptr [8 x i8], ptr %4, i64 %indvars.iv48105971
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !91 ; 3 uses
  %.not3496 = icmp ult i64 %i.bcu, %i.bcw
  %.not3497 = icmp ugt i64 %i.bcu, %i.bcw
  %..016.i = select i1 %.not3497, i32 1, i32 %.016.i5972
  %.1.i1569 = select i1 %.not3496, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.bcu, %i.bcw
  br i1 %cond.i, label %bb.iw, label %bigint_cmp.exit, !llvm.loop !153

bigint_cmp.exit:                                  ; preds = %bb.ix
  %.not989.i1032 = icmp eq i32 %.1.i1569, 0
  br i1 %.not989.i1032, label %bigint_cmp.exit.thread3162, label %bigint_cmp.exit.thread, !prof !124

bigint_cmp.exit.thread:                           ; preds = %bigint_mul_pow2.exit, %bb.iv, %bigint_cmp.exit
  %.2.i15703161 = phi i32 [ %.1.i1569, %bigint_cmp.exit ], [ -1, %bigint_mul_pow2.exit ], [ 1, %bb.iv ]
  %i.bcx = icmp sgt i32 %.2.i15703161, 0
  %i.bcy = zext i1 %i.bcx to i64
  br label %bb.iy

bigint_cmp.exit.thread3162:                       ; preds = %bb.iw, %.preheader3527, %bigint_cmp.exit
  %i.bcz = and i64 %.0.i1497.ph, 1
  br label %bb.iy

bb.iy:                                            ; preds = %bigint_cmp.exit.thread3162, %bigint_cmp.exit.thread
  %.pn.i1033 = phi i64 [ %i.bcy, %bigint_cmp.exit.thread ], [ %i.bcz, %bigint_cmp.exit.thread3162 ]
  %.0895.i1034 = add nuw nsw i64 %.pn.i1033, %.0.i1497.ph ; 2 uses
  %i.bda = icmp eq i64 %.0895.i1034, 9218868437227405312
  br i1 %i.bda, label %bb.iz, label %bb.je, !prof !8

bb.iz:                                            ; preds = %bb.iy
  %i.bdb = and i32 %.fr, 128
  %.not3498 = icmp eq i32 %i.bdb, 0
  br i1 %.not3498, label %bb.jb, label %bb.ja, !prof !25

bb.ja:                                            ; preds = %bb.iz
  %i.bdc = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.bdc, align 1, !tbaa !81
  %i.bdd = ptrtoint ptr %.33.i1008 to i64
  %i.bde = ptrtoint ptr %i.bq to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = shl i64 %i.bdf, 8
  %i.bdh = or disjoint i64 %i.bdg, 1
  store i64 %i.bdh, ptr %.0617, align 8, !tbaa !79
  %i.bdi = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store ptr %i.bq, ptr %i.bdi, align 8, !tbaa !81
  store ptr %.33.i1008, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit1117.thread3171

bb.jb:                                            ; preds = %bb.iz
  %i.bdj = and i32 %.fr, 16
  %.not3499 = icmp eq i32 %i.bdj, 0
  br i1 %.not3499, label %bb.jd, label %bb.jc, !prof !25

bb.jc:                                            ; preds = %bb.jb
  store i64 20, ptr %.0617, align 8, !tbaa !79
  %i.bdk = select i1 %i.cb, i64 -4503599627370496, i64 9218868437227405312
  %i.bdl = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.bdk, ptr %i.bdl, align 8, !tbaa !81
  br label %read_num.exit1117.thread3171

bb.jd:                                            ; preds = %bb.jb
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  store ptr %i.bq, ptr %i.d, align 8, !tbaa !92
  br label %read_num.exit1117

bb.je:                                            ; preds = %bb.iy
  store i64 20, ptr %.0617, align 8, !tbaa !79
  %i.bdm = select i1 %i.cb, i64 -9223372036854775808, i64 0
  %i.bdn = or disjoint i64 %.0895.i1034, %i.bdm
  %i.bdo = getelementptr inbounds nuw i8, ptr %.0617, i64 8
  store i64 %i.bdn, ptr %i.bdo, align 8, !tbaa !81
  br label %read_num.exit1117.thread3171

read_num.exit1117.thread:                         ; preds = %bb.gq, %bb.gs, %bb.gu, %bb.gy, %bb.hb, %bb.hd, %bb.ho, %bb.hj, %bb.as, %bb.fz, %bb.gm, %.loopexit3538, %bb.bw, %.thread5326, %bb.fn, %bb.fo, %bb.fp, %bb.bs, %bb.bt, %bb.bu, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.am, %read_inf.exit1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit1117.thread3167:                     ; preds = %bb.go, %bb.at, %bb.gd, %bb.gv, %bb.fu, %read_inf_or_nan.exit.thread, %bb.gj, %bb.he, %bb.av, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.atc

read_num.exit1117.thread3171:                     ; preds = %bb.hw, %bb.hy, %bb.ib, %bb.ja, %bb.jc, %bb.je
  store ptr %.33.i1008, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %read_str_opt.exit

read_num.exit1117:                                ; preds = %bb.hz, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.atc

bb.jf:                                            ; preds = %bb.s
  switch i8 %i.bp, label %bb.na [
    i8 34, label %bb.jg
    i8 116, label %bb.mx
    i8 102, label %bb.my
    i8 110, label %bb.mz
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 5 uses
  %i.bdq = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %.not113.i = icmp eq ptr %i.bdq, null
  br i1 %.not113.i, label %bb.ji, label %bb.jh, !prof !25

bb.jh:                                            ; preds = %bb.jg
  %i.bdr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !92 ; 2 uses
  %.not114.i = icmp eq ptr %i.bds, null
  br i1 %.not114.i, label %bb.ji, label %.preheader3522

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %.93056 = phi ptr [ %i.bdp, %bb.jg ], [ %i.bdq, %bb.jh ]
  %i.bdt = and i32 %.fr, 64
  %.not3460 = icmp eq i32 %i.bdt, 0
  br label %.backedge3526

.backedge3526:                                    ; preds = %.backedge3526.backedge, %bb.ji
  %.103057 = phi ptr [ %.93056, %bb.ji ], [ %.103057.be, %.backedge3526.backedge ] ; 18 uses
  %i.bdu = load i8, ptr %.103057, align 1, !tbaa !81 ; 2 uses
  %i.bdv = zext i8 %i.bdu to i64
  %i.bdw = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bdv
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !81
  %i.bdy = trunc i8 %i.bdx to i1
  br i1 %i.bdy, label %bb.jj, label %bb.jz, !prof !25

bb.jj:                                            ; preds = %.backedge3526
  %i.bdz = getelementptr inbounds nuw i8, ptr %.103057, i64 1 ; 2 uses
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !81 ; 2 uses
  %i.beb = zext i8 %i.bea to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !81
  %i.bee = trunc i8 %i.bed to i1
  br i1 %i.bee, label %bb.jk, label %bb.jz, !prof !25

bb.jk:                                            ; preds = %bb.jj
  %i.bef = getelementptr inbounds nuw i8, ptr %.103057, i64 2 ; 2 uses
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !81 ; 2 uses
  %i.beh = zext i8 %i.beg to i64
  %i.bei = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.beh
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !81
  %i.bek = trunc i8 %i.bej to i1
  br i1 %i.bek, label %bb.jl, label %bb.jz, !prof !25

bb.jl:                                            ; preds = %bb.jk
  %i.bel = getelementptr inbounds nuw i8, ptr %.103057, i64 3 ; 2 uses
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !81 ; 2 uses
  %i.ben = zext i8 %i.bem to i64
  %i.beo = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ben
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !81
  %i.beq = trunc i8 %i.bep to i1
  br i1 %i.beq, label %bb.jm, label %bb.jz, !prof !25

bb.jm:                                            ; preds = %bb.jl
  %i.ber = getelementptr inbounds nuw i8, ptr %.103057, i64 4 ; 2 uses
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !81 ; 2 uses
  %i.bet = zext i8 %i.bes to i64
  %i.beu = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bet
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !81
  %i.bew = trunc i8 %i.bev to i1
  br i1 %i.bew, label %bb.jn, label %bb.jz, !prof !25

bb.jn:                                            ; preds = %bb.jm
  %i.bex = getelementptr inbounds nuw i8, ptr %.103057, i64 5 ; 2 uses
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !81 ; 2 uses
  %i.bez = zext i8 %i.bey to i64
  %i.bfa = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bez
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !81
  %i.bfc = trunc i8 %i.bfb to i1
  br i1 %i.bfc, label %bb.jo, label %bb.jz, !prof !25

bb.jo:                                            ; preds = %bb.jn
  %i.bfd = getelementptr inbounds nuw i8, ptr %.103057, i64 6 ; 2 uses
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !81 ; 2 uses
  %i.bff = zext i8 %i.bfe to i64
  %i.bfg = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.bff
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !81
end_hunk_13
begin_hunk_14_@yyjson_incr_read:bb.a
  %i.ddi = zext i1 %i.ddh to i64
  %i.ddj = add nuw i64 %i.ddi, %i.dct
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.ve
  %.03031 = phi i64 [ %i.dct, %bb.ve ], [ %i.ddj, %bb.vg ] ; 2 uses
  %i.ddk = icmp sgt i64 %.03031, -1               ; 2 uses
  %.neg983.i906 = sext i1 %i.ddk to i32
  %i.ddl = zext i1 %i.ddk to i64
  %i.ddm = shl i64 %.03031, %i.ddl                ; 2 uses
  %i.ddn = and i64 %i.ddm, 1024
  %i.ddo = add i64 %i.ddn, %i.ddm                 ; 2 uses
  %i.ddp = icmp ult i64 %i.ddo, 1024
  %spec.select3341.v = select i1 %i.ddp, i32 65, i32 64
  %i.ddq = lshr i64 %i.ddo, 11
  %reass.sub4459 = sub nsw i32 %i.dcl, %i.dcn
  %i.ddr = add nsw i32 %reass.sub4459, 1086
  %spec.select3341 = add nsw i32 %i.ddr, %.neg983.i906
  %i.dds = add nsw i32 %spec.select3341, %spec.select3341.v
  %i.ddt = zext nneg i32 %i.dds to i64
  %i.ddu = shl nuw nsw i64 %i.ddt, 52
  %i.ddv = and i64 %i.ddq, 4503599627370495
  %i.ddw = or disjoint i64 %i.ddu, %i.ddv
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.ddx = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.ddy = or disjoint i64 %i.ddw, %i.ddx
  %i.ddz = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ddy, ptr %i.ddz, align 8, !tbaa !81
  store ptr %.33.i877, ptr %i.d, align 8, !tbaa !92
  br label %.sink.split5680

.critedge992.i905:                                ; preds = %..critedge992.i905_crit_edge, %bb.vf
  %.pre-phi5018 = phi i32 [ %.pre5017, %..critedge992.i905_crit_edge ], [ %i.dcn, %bb.vf ]
  %.pre-phi5016 = phi i128 [ %.pre5015, %..critedge992.i905_crit_edge ], [ %i.dcp, %bb.vf ]
  %.pre-phi5014 = phi i32 [ %.pre5013, %..critedge992.i905_crit_edge ], [ %i.dcl, %bb.vf ]
  %.pre-phi5008 = phi i32 [ %.pre5007, %..critedge992.i905_crit_edge ], [ %i.dce, %bb.vf ] ; 2 uses
  %.pre-phi5004 = phi i64 [ %.pre5003, %..critedge992.i905_crit_edge ], [ %i.dcm, %bb.vf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.dea = select i1 %i.dca, i64 0, i64 4
  %i.deb = shl i64 %i.dea, %.pre-phi5004          ; 2 uses
  %i.dec = add i32 %.pre-phi5008, 686
  %i.ded = sext i32 %i.dec to i64
  %i.dee = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.ded
  %i.def = load i64, ptr %i.dee, align 16, !tbaa !91
  %i.deg = add i32 %.pre-phi5008, 687
  %i.deh = sext i32 %i.deg to i64
  %i.dei = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.deh
  %i.dej = load i64, ptr %i.dei, align 8, !tbaa !91
  %i.dek = lshr i64 %i.dej, 63
  %i.del = add i64 %i.dek, %i.def
  %i.dem = zext i64 %i.del to i128
  %i.den = mul nuw i128 %.pre-phi5016, %i.dem     ; 2 uses
  %i.deo = lshr i128 %i.den, 64
  %i.dep = trunc nuw i128 %i.deo to i64
  %i.deq = trunc i128 %i.den to i64
  %i.der = lshr i64 %i.deq, 63
  %i.des = add nuw i64 %i.der, %i.dep             ; 2 uses
  %.not986.i886 = icmp eq i64 %i.deb, 0
  %i.det = select i1 %.not986.i886, i64 8, i64 9
  %i.deu = add i64 %i.det, %i.deb
  %i.dev = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.des, i1 true) ; 3 uses
  %i.dew = trunc nuw nsw i64 %i.dev to i32
  %i.dex = shl i64 %i.des, %i.dev                 ; 3 uses
  %i.dey = add nsw i32 %.pre-phi5014, 64
  %i.dez = add nuw nsw i32 %.pre-phi5018, %i.dew
  %i.dfa = sub nsw i32 %i.dey, %i.dez             ; 7 uses
  %i.dfb = shl i64 %i.deu, %i.dev                 ; 3 uses
  %i.dfc = icmp sgt i32 %i.dfa, -1086
  br i1 %i.dfc, label %.thread3208, label %bb.vi, !prof !25

bb.vi:                                            ; preds = %.critedge992.i905
  %i.dfd = icmp samesign ult i32 %i.dfa, -1137
  br i1 %i.dfd, label %.thread3205, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.dfe = sub nuw nsw i32 -1074, %i.dfa          ; 2 uses
  %i.dff = icmp samesign ult i32 %i.dfa, -1134
  br i1 %i.dff, label %.thread3205, label %.thread3208, !prof !134

.thread3205:                                      ; preds = %bb.vi, %bb.vj
  %.0897.i8893207 = phi i32 [ %i.dfe, %bb.vj ], [ 64, %bb.vi ]
  %i.dfg = add nsw i32 %.0897.i8893207, -60       ; 2 uses
  %i.dfh = zext nneg i32 %i.dfg to i64            ; 2 uses
  %i.dfi = lshr i64 %i.dex, %i.dfh
  %i.dfj = add nsw i32 %i.dfg, %i.dfa
  %i.dfk = lshr i64 %i.dfb, %i.dfh
  %i.dfl = add nuw i64 %i.dfk, 9
  br label %.thread3208

.thread3208:                                      ; preds = %.critedge992.i905, %.thread3205, %bb.vj
  %.0898.i890 = phi i64 [ %i.dfl, %.thread3205 ], [ %i.dfb, %bb.vj ], [ %i.dfb, %.critedge992.i905 ] ; 2 uses
  %.0896.i891 = phi i32 [ 60, %.thread3205 ], [ %i.dfe, %bb.vj ], [ 11, %.critedge992.i905 ] ; 3 uses
  %.sroa.19.0.in.i892 = phi i32 [ %i.dfj, %.thread3205 ], [ %i.dfa, %bb.vj ], [ %i.dfa, %.critedge992.i905 ]
  %.sroa.025.0.i893 = phi i64 [ %i.dfi, %.thread3205 ], [ %i.dex, %bb.vj ], [ %i.dex, %.critedge992.i905 ] ; 2 uses
  %i.dfm = zext nneg i32 %.0896.i891 to i64       ; 2 uses
  %notmask.i894 = shl nsw i64 -1, %i.dfm
  %i.dfn = xor i64 %notmask.i894, -1
  %i.dfo = and i64 %.sroa.025.0.i893, %i.dfn
  %i.dfp = shl nuw nsw i64 %i.dfo, 3              ; 2 uses
  %i.dfq = add nsw i32 %.0896.i891, -1
  %i.dfr = zext nneg i32 %i.dfq to i64
  %i.dfs = shl nuw nsw i64 8, %i.dfr              ; 2 uses
  %i.dft = lshr i64 %.sroa.025.0.i893, %i.dfm
  %i.dfu = add i64 %i.dfs, %.0898.i890
  %i.dfv = icmp uge i64 %i.dfp, %i.dfu            ; 2 uses
  %i.dfw = zext i1 %i.dfv to i64
  %i.dfx = add nuw nsw i64 %i.dft, %i.dfw         ; 3 uses
  %i.dfy = icmp eq i64 %i.dfx, 0
  br i1 %i.dfy, label %bb.vt, label %bb.vk, !prof !8

bb.vk:                                            ; preds = %.thread3208
  %i.dfz = add nsw i32 %.sroa.19.0.in.i892, %.0896.i891
  %i.dga = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.dfx, i1 true) ; 2 uses
  %i.dgb = trunc nuw nsw i64 %i.dga to i32
  %i.dgc = shl i64 %i.dfx, %i.dga
  %i.dgd = lshr i64 %i.dgc, 11                    ; 2 uses
  %i.dge = sub nsw i32 %i.dfz, %i.dgb             ; 5 uses
  %i.dgf = icmp sgt i32 %i.dge, 960
  br i1 %i.dgf, label %diy_fp_to_ieee_raw.exit1499, label %bb.vl, !prof !8

bb.vl:                                            ; preds = %bb.vk
  %i.dgg = icmp sgt i32 %i.dge, -1086
  br i1 %i.dgg, label %bb.vm, label %bb.vn, !prof !25

bb.vm:                                            ; preds = %bb.vl
  %i.dgh = add nsw i32 %i.dge, 1086
  %i.dgi = zext nneg i32 %i.dgh to i64
  %i.dgj = shl nuw nsw i64 %i.dgi, 52
  %i.dgk = and i64 %i.dgd, 4503599627370495
  %i.dgl = or disjoint i64 %i.dgj, %i.dgk
  br label %bb.vt

bb.vn:                                            ; preds = %bb.vl
  %i.dgm = icmp samesign ugt i32 %i.dge, -1138
  br i1 %i.dgm, label %bb.vo, label %bb.vt, !prof !25

bb.vo:                                            ; preds = %bb.vn
  %i.dgn = sub nuw nsw i32 -1085, %i.dge
  %i.dgo = zext nneg i32 %i.dgn to i64
  %i.dgp = lshr i64 %i.dgd, %i.dgo
  br label %bb.vt

diy_fp_to_ieee_raw.exit1499:                      ; preds = %bb.vk
  %i.dgq = and i32 %.fr, 128
  %.not3443 = icmp eq i32 %i.dgq, 0
  br i1 %.not3443, label %bb.vq, label %bb.vp, !prof !25

bb.vp:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dgr = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.dgr, align 1, !tbaa !81
  %i.dgs = ptrtoint ptr %.33.i877 to i64
  %i.dgt = ptrtoint ptr %i.bzz to i64
  %i.dgu = sub i64 %i.dgs, %i.dgt
  %i.dgv = shl i64 %i.dgu, 8
  %i.dgw = or disjoint i64 %i.dgv, 1
  store i64 %i.dgw, ptr %.6623, align 8, !tbaa !79
  %i.dgx = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.bzz, ptr %i.dgx, align 8, !tbaa !81
  store ptr %.33.i877, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit986.thread3225

bb.vq:                                            ; preds = %diy_fp_to_ieee_raw.exit1499
  %i.dgy = and i32 %.fr, 16
  %.not3444 = icmp eq i32 %i.dgy, 0
  br i1 %.not3444, label %bb.vs, label %bb.vr, !prof !25

bb.vr:                                            ; preds = %bb.vq
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.dgz = select i1 %i.cad, i64 -4503599627370496, i64 9218868437227405312
  %i.dha = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dgz, ptr %i.dha, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

bb.vs:                                            ; preds = %bb.vq
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit986

bb.vt:                                            ; preds = %.thread3208, %bb.vm, %bb.vo, %bb.vn
  %.0.i1498.ph = phi i64 [ 0, %bb.vn ], [ %i.dgp, %bb.vo ], [ %i.dgl, %bb.vm ], [ 0, %.thread3208 ] ; 7 uses
  %i.dhb = sub i64 %i.dfs, %.0898.i890
  %.not987.i896 = icmp ule i64 %i.dfp, %i.dhb
  %spec.select.i897 = or i1 %.not987.i896, %i.dfv
  br i1 %spec.select.i897, label %bb.vu, label %bb.vv, !prof !25

bb.vu:                                            ; preds = %bb.vt
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.dhc = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.dhd = or disjoint i64 %.0.i1498.ph, %i.dhc
  %i.dhe = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.dhd, ptr %i.dhe, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

bb.vv:                                            ; preds = %bb.vt
  %.not988.i898 = icmp samesign ult i64 %.0.i1498.ph, 4503599627370496 ; 2 uses
  %i.dhf = and i64 %.0.i1498.ph, 4503599627370495
  %i.dhg = or disjoint i64 %i.dhf, 4503599627370496
  %i.dhh = lshr i64 %.0.i1498.ph, 52
  %i.dhi = trunc nuw nsw i64 %i.dhh to i32
  %i.dhj = add nsw i32 %i.dhi, -1076
  %.sroa.9.0.i899 = select i1 %.not988.i898, i32 -1075, i32 %i.dhj ; 4 uses
  %.sroa.018.0.i900 = select i1 %.not988.i898, i64 %.0.i1498.ph, i64 %i.dhg
  %i.dhk = shl nuw nsw i64 %.sroa.018.0.i900, 1
  %i.dhl = or disjoint i64 %i.dhk, 1
  call fastcc void @bigint_set_buf(ptr noundef %5, i64 noundef %.22894.i878, ptr noundef %i.b, ptr noundef %.3863.i881, ptr noundef %.3867.i880, ptr noundef %.23.i879)
  %i.dhm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.dhl, ptr %i.dhm, align 8, !tbaa !91
  %i.dhn = load i32, ptr %i.b, align 4, !tbaa !114 ; 6 uses
  %i.dho = icmp sgt i32 %i.dhn, -1
  br i1 %i.dho, label %.preheader3559, label %bb.wd

.preheader3559:                                   ; preds = %bb.vv
  %.promoted4121 = load i32, ptr %5, align 8      ; 2 uses
  %i.dhp = icmp samesign ugt i32 %i.dhn, 18
  br i1 %i.dhp, label %.lr.ph4124, label %._crit_edge4125

.lr.ph4124:                                       ; preds = %.preheader3559
  %i.dhq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.vw

bb.vw:                                            ; preds = %.lr.ph4124, %bigint_mul_u64.exit1627
  %.0.i15074123 = phi i32 [ %i.dhn, %.lr.ph4124 ], [ %i.dje, %bigint_mul_u64.exit1627 ] ; 2 uses
  %i.dhr = phi i32 [ %.promoted4121, %.lr.ph4124 ], [ %i.djd, %bigint_mul_u64.exit1627 ] ; 9 uses
  %.not4457 = icmp eq i32 %i.dhr, 0
  br i1 %.not4457, label %._crit_edge4111, label %.lr.ph4110.preheader

.lr.ph4110.preheader:                             ; preds = %bb.vw
  %wide.trip.count4714 = zext i32 %i.dhr to i64
  br label %.lr.ph4110

.lr.ph4110:                                       ; preds = %.lr.ph4110.preheader, %bb.vx
  %indvars.iv4711 = phi i64 [ 0, %.lr.ph4110.preheader ], [ %indvars.iv.next4712, %bb.vx ] ; 3 uses
  %i.dhs = getelementptr inbounds nuw [8 x i8], ptr %i.dhq, i64 %indvars.iv4711
  %i.dht = load i64, ptr %i.dhs, align 8, !tbaa !91
  %.not.i1626 = icmp eq i64 %i.dht, 0
  br i1 %.not.i1626, label %bb.vx, label %._crit_edge4111.loopexit

bb.vx:                                            ; preds = %.lr.ph4110
  %indvars.iv.next4712 = add nuw nsw i64 %indvars.iv4711, 1 ; 2 uses
  %exitcond4715.not = icmp eq i64 %indvars.iv.next4712, %wide.trip.count4714
  br i1 %exitcond4715.not, label %bigint_mul_u64.exit1627, label %.lr.ph4110, !llvm.loop !135

._crit_edge4111.loopexit:                         ; preds = %.lr.ph4110
  %i.dhu = trunc nuw i64 %indvars.iv4711 to i32
  br label %._crit_edge4111

._crit_edge4111:                                  ; preds = %._crit_edge4111.loopexit, %bb.vw
  %.018.i1622.lcssa = phi i32 [ 0, %bb.vw ], [ %i.dhu, %._crit_edge4111.loopexit ] ; 2 uses
  %i.dhv = icmp ult i32 %.018.i1622.lcssa, %i.dhr
  br i1 %i.dhv, label %.lr.ph4118.preheader, label %bigint_mul_u64.exit1627

.lr.ph4118.preheader:                             ; preds = %._crit_edge4111
  %i.dhw = zext i32 %.018.i1622.lcssa to i64      ; 4 uses
  %wide.trip.count4719 = zext i32 %i.dhr to i64   ; 2 uses
  %i.dhx = sub nsw i64 %wide.trip.count4719, %i.dhw ; 3 uses
  %xtraiter6483 = and i64 %i.dhx, 1
  %i.dhy = add nsw i64 %wide.trip.count4719, -1
  %i.dhz = icmp eq i64 %i.dhy, %i.dhw
  br i1 %i.dhz, label %.lr.ph4118.epil.preheader, label %.lr.ph4118.preheader.new

.lr.ph4118.preheader.new:                         ; preds = %.lr.ph4118.preheader
  %unroll_iter6488 = and i64 %i.dhx, -2
  br label %.lr.ph4118

.lr.ph4118:                                       ; preds = %.lr.ph4118, %.lr.ph4118.preheader.new
  %indvars.iv4716 = phi i64 [ %i.dhw, %.lr.ph4118.preheader.new ], [ %indvars.iv.next4717.1, %.lr.ph4118 ] ; 3 uses
  %.0.i16244116 = phi i64 [ 0, %.lr.ph4118.preheader.new ], [ %i.dip, %.lr.ph4118 ]
  %niter6489 = phi i64 [ 0, %.lr.ph4118.preheader.new ], [ %niter6489.next.1, %.lr.ph4118 ]
  %i.dia = getelementptr inbounds nuw [8 x i8], ptr %i.dhq, i64 %indvars.iv4716 ; 2 uses
  %i.dib = load i64, ptr %i.dia, align 8, !tbaa !91
  %i.dic = zext i64 %i.dib to i128
  %i.did = mul nuw i128 %i.dic, 10000000000000000000
  %i.die = zext i64 %.0.i16244116 to i128
  %i.dif = add nuw i128 %i.did, %i.die            ; 2 uses
  %i.dig = lshr i128 %i.dif, 64
  %i.dih = trunc i128 %i.dif to i64
  store i64 %i.dih, ptr %i.dia, align 8, !tbaa !91
  %i.dii = getelementptr inbounds nuw [8 x i8], ptr %i.dhq, i64 %indvars.iv4716
  %i.dij = getelementptr inbounds nuw i8, ptr %i.dii, i64 8 ; 2 uses
  %i.dik = load i64, ptr %i.dij, align 8, !tbaa !91
  %i.dil = zext i64 %i.dik to i128
  %i.dim = mul nuw i128 %i.dil, 10000000000000000000
  %i.din = add nuw i128 %i.dim, %i.dig            ; 2 uses
  %i.dio = lshr i128 %i.din, 64                   ; 2 uses
  %i.dip = trunc nuw i128 %i.dio to i64           ; 3 uses
  %i.diq = trunc i128 %i.din to i64
  store i64 %i.diq, ptr %i.dij, align 8, !tbaa !91
  %indvars.iv.next4717.1 = add nuw nsw i64 %indvars.iv4716, 2 ; 2 uses
  %niter6489.next.1 = add i64 %niter6489, 2       ; 2 uses
  %niter6489.ncmp.1 = icmp eq i64 %niter6489.next.1, %unroll_iter6488
  br i1 %niter6489.ncmp.1, label %._crit_edge4119.unr-lcssa, label %.lr.ph4118, !llvm.loop !136

._crit_edge4119.unr-lcssa:                        ; preds = %.lr.ph4118
  %lcmp.mod6484.not = icmp eq i64 %xtraiter6483, 0
  br i1 %lcmp.mod6484.not, label %._crit_edge4119, label %.lr.ph4118.epil.preheader

.lr.ph4118.epil.preheader:                        ; preds = %._crit_edge4119.unr-lcssa, %.lr.ph4118.preheader
  %indvars.iv4716.epil.init = phi i64 [ %i.dhw, %.lr.ph4118.preheader ], [ %indvars.iv.next4717.1, %._crit_edge4119.unr-lcssa ]
  %.0.i16244116.epil.init = phi i64 [ 0, %.lr.ph4118.preheader ], [ %i.dip, %._crit_edge4119.unr-lcssa ]
  %lcmp.mod6487 = trunc i64 %i.dhx to i1
  call void @llvm.assume(i1 %lcmp.mod6487)
  %i.dir = getelementptr inbounds nuw [8 x i8], ptr %i.dhq, i64 %indvars.iv4716.epil.init ; 2 uses
  %i.dis = load i64, ptr %i.dir, align 8, !tbaa !91
  %i.dit = zext i64 %i.dis to i128
  %i.diu = mul nuw i128 %i.dit, 10000000000000000000
  %i.div = zext i64 %.0.i16244116.epil.init to i128
  %i.diw = add nuw i128 %i.diu, %i.div            ; 2 uses
  %i.dix = lshr i128 %i.diw, 64                   ; 2 uses
  %i.diy = trunc nuw i128 %i.dix to i64
  %i.diz = trunc i128 %i.diw to i64
  store i64 %i.diz, ptr %i.dir, align 8, !tbaa !91
  br label %._crit_edge4119

._crit_edge4119:                                  ; preds = %._crit_edge4119.unr-lcssa, %.lr.ph4118.epil.preheader
  %.lcssa6276 = phi i128 [ %i.dio, %._crit_edge4119.unr-lcssa ], [ %i.dix, %.lr.ph4118.epil.preheader ]
  %.lcssa6275 = phi i64 [ %i.dip, %._crit_edge4119.unr-lcssa ], [ %i.diy, %.lr.ph4118.epil.preheader ]
  %.not19.i1625 = icmp eq i128 %.lcssa6276, 0
  br i1 %.not19.i1625, label %bigint_mul_u64.exit1627, label %bb.vy

bb.vy:                                            ; preds = %._crit_edge4119
  %i.dja = add i32 %i.dhr, 1
  %i.djb = zext i32 %i.dhr to i64
  %i.djc = getelementptr inbounds nuw [8 x i8], ptr %i.dhq, i64 %i.djb
  store i64 %.lcssa6275, ptr %i.djc, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1627

bigint_mul_u64.exit1627:                          ; preds = %bb.vx, %._crit_edge4111, %._crit_edge4119, %bb.vy
  %i.djd = phi i32 [ %i.dhr, %._crit_edge4119 ], [ %i.dja, %bb.vy ], [ %i.dhr, %._crit_edge4111 ], [ %i.dhr, %bb.vx ] ; 2 uses
  %i.dje = add nsw i32 %.0.i15074123, -19         ; 2 uses
  %i.djf = icmp sgt i32 %.0.i15074123, 37
  br i1 %i.djf, label %bb.vw, label %._crit_edge4125, !llvm.loop !137

._crit_edge4125:                                  ; preds = %bigint_mul_u64.exit1627, %.preheader3559
  %i.djg = phi i32 [ %.promoted4121, %.preheader3559 ], [ %i.djd, %bigint_mul_u64.exit1627 ] ; 7 uses
  %.0.i1507.lcssa = phi i32 [ %i.dhn, %.preheader3559 ], [ %i.dje, %bigint_mul_u64.exit1627 ] ; 2 uses
  store i32 %i.djg, ptr %5, align 8
  %.not.i1508 = icmp eq i32 %.0.i1507.lcssa, 0
  br i1 %.not.i1508, label %bigint_mul_pow10.exit1509, label %bb.vz

bb.vz:                                            ; preds = %._crit_edge4125
  %i.djh = sext i32 %.0.i1507.lcssa to i64
  %i.dji = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.djh
  %i.djj = load i64, ptr %i.dji, align 8, !tbaa !91
  %i.djk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not4458 = icmp eq i32 %i.djg, 0
  br i1 %.not4458, label %._crit_edge4131, label %.lr.ph4130.preheader

.lr.ph4130.preheader:                             ; preds = %bb.vz
  %wide.trip.count4724 = zext i32 %i.djg to i64
  br label %.lr.ph4130

.lr.ph4130:                                       ; preds = %.lr.ph4130.preheader, %bb.wa
  %indvars.iv4721 = phi i64 [ 0, %.lr.ph4130.preheader ], [ %indvars.iv.next4722, %bb.wa ] ; 3 uses
  %i.djl = getelementptr inbounds nuw [8 x i8], ptr %i.djk, i64 %indvars.iv4721
  %i.djm = load i64, ptr %i.djl, align 8, !tbaa !91
  %.not.i1632 = icmp eq i64 %i.djm, 0
  br i1 %.not.i1632, label %bb.wa, label %._crit_edge4131.loopexit

bb.wa:                                            ; preds = %.lr.ph4130
  %indvars.iv.next4722 = add nuw nsw i64 %indvars.iv4721, 1 ; 2 uses
  %exitcond4725.not = icmp eq i64 %indvars.iv.next4722, %wide.trip.count4724
  br i1 %exitcond4725.not, label %bigint_mul_pow10.exit1509, label %.lr.ph4130, !llvm.loop !135

._crit_edge4131.loopexit:                         ; preds = %.lr.ph4130
  %i.djn = trunc nuw i64 %indvars.iv4721 to i32
  br label %._crit_edge4131

._crit_edge4131:                                  ; preds = %._crit_edge4131.loopexit, %bb.vz
  %.018.i1628.lcssa = phi i32 [ 0, %bb.vz ], [ %i.djn, %._crit_edge4131.loopexit ] ; 2 uses
  %i.djo = icmp ult i32 %.018.i1628.lcssa, %i.djg
  br i1 %i.djo, label %.lr.ph4138, label %bigint_mul_pow10.exit1509

.lr.ph4138:                                       ; preds = %._crit_edge4131
  %i.djp = zext i64 %i.djj to i128                ; 3 uses
  %i.djq = zext i32 %.018.i1628.lcssa to i64      ; 4 uses
  %wide.trip.count4729 = zext i32 %i.djg to i64   ; 2 uses
  %i.djr = sub nsw i64 %wide.trip.count4729, %i.djq ; 3 uses
  %xtraiter6491 = and i64 %i.djr, 1
  %i.djs = add nsw i64 %wide.trip.count4729, -1
  %i.djt = icmp eq i64 %i.djs, %i.djq
  br i1 %i.djt, label %.epil.preheader6490, label %.lr.ph4138.new

.lr.ph4138.new:                                   ; preds = %.lr.ph4138
  %unroll_iter6496 = and i64 %i.djr, -2
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wb, %.lr.ph4138.new
  %indvars.iv4726 = phi i64 [ %i.djq, %.lr.ph4138.new ], [ %indvars.iv.next4727.1, %bb.wb ] ; 3 uses
  %.0.i16304136 = phi i64 [ 0, %.lr.ph4138.new ], [ %i.dkj, %bb.wb ]
  %niter6497 = phi i64 [ 0, %.lr.ph4138.new ], [ %niter6497.next.1, %bb.wb ]
  %i.dju = getelementptr inbounds nuw [8 x i8], ptr %i.djk, i64 %indvars.iv4726 ; 2 uses
  %i.djv = load i64, ptr %i.dju, align 8, !tbaa !91
  %i.djw = zext i64 %i.djv to i128
  %i.djx = mul nuw i128 %i.djw, %i.djp
  %i.djy = zext i64 %.0.i16304136 to i128
  %i.djz = add nuw i128 %i.djx, %i.djy            ; 2 uses
  %i.dka = lshr i128 %i.djz, 64
  %i.dkb = trunc i128 %i.djz to i64
  store i64 %i.dkb, ptr %i.dju, align 8, !tbaa !91
  %i.dkc = getelementptr inbounds nuw [8 x i8], ptr %i.djk, i64 %indvars.iv4726
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 8 ; 2 uses
end_hunk_14
begin_hunk_15_@yyjson_incr_read:bb.a
.lr.ph4084:                                       ; preds = %.lr.ph4084, %.lr.ph4084.preheader.new
  %indvars.iv4696 = phi i64 [ %i.dlf, %.lr.ph4084.preheader.new ], [ %indvars.iv.next4697.1, %.lr.ph4084 ] ; 3 uses
  %.0.i16124082 = phi i64 [ 0, %.lr.ph4084.preheader.new ], [ %i.dly, %.lr.ph4084 ]
  %niter6474 = phi i64 [ 0, %.lr.ph4084.preheader.new ], [ %niter6474.next.1, %.lr.ph4084 ]
  %i.dlj = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4696 ; 2 uses
  %i.dlk = load i64, ptr %i.dlj, align 8, !tbaa !91
  %i.dll = zext i64 %i.dlk to i128
  %i.dlm = mul nuw i128 %i.dll, 10000000000000000000
  %i.dln = zext i64 %.0.i16124082 to i128
  %i.dlo = add nuw i128 %i.dlm, %i.dln            ; 2 uses
  %i.dlp = lshr i128 %i.dlo, 64
  %i.dlq = trunc i128 %i.dlo to i64
  store i64 %i.dlq, ptr %i.dlj, align 8, !tbaa !91
  %i.dlr = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4696
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dlr, i64 8 ; 2 uses
  %i.dlt = load i64, ptr %i.dls, align 8, !tbaa !91
  %i.dlu = zext i64 %i.dlt to i128
  %i.dlv = mul nuw i128 %i.dlu, 10000000000000000000
  %i.dlw = add nuw i128 %i.dlv, %i.dlp            ; 2 uses
  %i.dlx = lshr i128 %i.dlw, 64                   ; 2 uses
  %i.dly = trunc nuw i128 %i.dlx to i64           ; 3 uses
  %i.dlz = trunc i128 %i.dlw to i64
  store i64 %i.dlz, ptr %i.dls, align 8, !tbaa !91
  %indvars.iv.next4697.1 = add nuw nsw i64 %indvars.iv4696, 2 ; 2 uses
  %niter6474.next.1 = add i64 %niter6474, 2       ; 2 uses
  %niter6474.ncmp.1 = icmp eq i64 %niter6474.next.1, %unroll_iter6473
  br i1 %niter6474.ncmp.1, label %._crit_edge4085.unr-lcssa, label %.lr.ph4084, !llvm.loop !136

._crit_edge4085.unr-lcssa:                        ; preds = %.lr.ph4084
  %lcmp.mod6469.not = icmp eq i64 %xtraiter6468, 0
  br i1 %lcmp.mod6469.not, label %._crit_edge4085, label %.lr.ph4084.epil.preheader

.lr.ph4084.epil.preheader:                        ; preds = %._crit_edge4085.unr-lcssa, %.lr.ph4084.preheader
  %indvars.iv4696.epil.init = phi i64 [ %i.dlf, %.lr.ph4084.preheader ], [ %indvars.iv.next4697.1, %._crit_edge4085.unr-lcssa ]
  %.0.i16124082.epil.init = phi i64 [ 0, %.lr.ph4084.preheader ], [ %i.dly, %._crit_edge4085.unr-lcssa ]
  %lcmp.mod6472 = trunc i64 %i.dlg to i1
  call void @llvm.assume(i1 %lcmp.mod6472)
  %i.dma = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4696.epil.init ; 2 uses
  %i.dmb = load i64, ptr %i.dma, align 8, !tbaa !91
  %i.dmc = zext i64 %i.dmb to i128
  %i.dmd = mul nuw i128 %i.dmc, 10000000000000000000
  %i.dme = zext i64 %.0.i16124082.epil.init to i128
  %i.dmf = add nuw i128 %i.dmd, %i.dme            ; 2 uses
  %i.dmg = lshr i128 %i.dmf, 64                   ; 2 uses
  %i.dmh = trunc nuw i128 %i.dmg to i64
  %i.dmi = trunc i128 %i.dmf to i64
  store i64 %i.dmi, ptr %i.dma, align 8, !tbaa !91
  br label %._crit_edge4085

._crit_edge4085:                                  ; preds = %._crit_edge4085.unr-lcssa, %.lr.ph4084.epil.preheader
  %.lcssa6285 = phi i128 [ %i.dlx, %._crit_edge4085.unr-lcssa ], [ %i.dmg, %.lr.ph4084.epil.preheader ]
  %.lcssa6284 = phi i64 [ %i.dly, %._crit_edge4085.unr-lcssa ], [ %i.dmh, %.lr.ph4084.epil.preheader ]
  %.not19.i1613 = icmp eq i128 %.lcssa6285, 0
  br i1 %.not19.i1613, label %bigint_mul_u64.exit1615, label %bb.wf

bb.wf:                                            ; preds = %._crit_edge4085
  %i.dmj = add i32 %i.dla, 1
  %i.dmk = zext i32 %i.dla to i64
  %i.dml = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dmk
  store i64 %.lcssa6284, ptr %i.dml, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1615

bigint_mul_u64.exit1615:                          ; preds = %bb.we, %._crit_edge4077, %._crit_edge4085, %bb.wf
  %i.dmm = phi i32 [ %i.dla, %._crit_edge4085 ], [ %i.dmj, %bb.wf ], [ %i.dla, %._crit_edge4077 ], [ %i.dla, %bb.we ] ; 5 uses
  %i.dmn = add nsw i32 %.0.i15104089, -19         ; 3 uses
  %i.dmo = icmp sgt i32 %.0.i15104089, 37
  br i1 %i.dmo, label %.lr.ph4091, label %._crit_edge4092, !llvm.loop !137

._crit_edge4092:                                  ; preds = %bigint_mul_u64.exit1615
  store i32 %i.dmm, ptr %6, align 8
  %.not.i1511 = icmp eq i32 %i.dmn, 0
  br i1 %.not.i1511, label %bigint_mul_pow10.exit1509, label %bb.wg

bb.wg:                                            ; preds = %._crit_edge4092
  %i.dmp = sext i32 %i.dmn to i64
  %i.dmq = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.dmp
  %i.dmr = load i64, ptr %i.dmq, align 8, !tbaa !91 ; 2 uses
  %.not4456 = icmp eq i32 %i.dmm, 0
  br i1 %.not4456, label %._crit_edge4098, label %.lr.ph4097.preheader

.lr.ph4097.preheader:                             ; preds = %.thread5400, %bb.wg
  %i.dms = phi i64 [ %i.dkz, %.thread5400 ], [ %i.dmr, %bb.wg ]
  %i.dmt = phi i32 [ 1, %.thread5400 ], [ %i.dmm, %bb.wg ] ; 3 uses
  %wide.trip.count4704 = zext i32 %i.dmt to i64
  br label %.lr.ph4097

.lr.ph4097:                                       ; preds = %.lr.ph4097.preheader, %bb.wh
  %indvars.iv4701 = phi i64 [ 0, %.lr.ph4097.preheader ], [ %indvars.iv.next4702, %bb.wh ] ; 3 uses
  %i.dmu = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4701
  %i.dmv = load i64, ptr %i.dmu, align 8, !tbaa !91
  %.not.i1620 = icmp eq i64 %i.dmv, 0
  br i1 %.not.i1620, label %bb.wh, label %._crit_edge4098.loopexit

bb.wh:                                            ; preds = %.lr.ph4097
  %indvars.iv.next4702 = add nuw nsw i64 %indvars.iv4701, 1 ; 2 uses
  %exitcond4705.not = icmp eq i64 %indvars.iv.next4702, %wide.trip.count4704
  br i1 %exitcond4705.not, label %bigint_mul_pow10.exit1509, label %.lr.ph4097, !llvm.loop !135

._crit_edge4098.loopexit:                         ; preds = %.lr.ph4097
  %i.dmw = trunc nuw i64 %indvars.iv4701 to i32
  br label %._crit_edge4098

._crit_edge4098:                                  ; preds = %._crit_edge4098.loopexit, %bb.wg
  %i.dmx = phi i64 [ %i.dmr, %bb.wg ], [ %i.dms, %._crit_edge4098.loopexit ]
  %i.dmy = phi i32 [ 0, %bb.wg ], [ %i.dmt, %._crit_edge4098.loopexit ] ; 6 uses
  %.018.i1616.lcssa = phi i32 [ 0, %bb.wg ], [ %i.dmw, %._crit_edge4098.loopexit ] ; 2 uses
  %i.dmz = icmp ult i32 %.018.i1616.lcssa, %i.dmy
  br i1 %i.dmz, label %.lr.ph4105, label %bigint_mul_pow10.exit1509

.lr.ph4105:                                       ; preds = %._crit_edge4098
  %i.dna = zext i64 %i.dmx to i128                ; 3 uses
  %i.dnb = zext i32 %.018.i1616.lcssa to i64      ; 4 uses
  %wide.trip.count4709 = zext i32 %i.dmy to i64   ; 2 uses
  %i.dnc = sub nsw i64 %wide.trip.count4709, %i.dnb ; 3 uses
  %xtraiter6476 = and i64 %i.dnc, 1
  %i.dnd = add nsw i64 %wide.trip.count4709, -1
  %i.dne = icmp eq i64 %i.dnd, %i.dnb
  br i1 %i.dne, label %.epil.preheader6475, label %.lr.ph4105.new

.lr.ph4105.new:                                   ; preds = %.lr.ph4105
  %unroll_iter6481 = and i64 %i.dnc, -2
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wi, %.lr.ph4105.new
  %indvars.iv4706 = phi i64 [ %i.dnb, %.lr.ph4105.new ], [ %indvars.iv.next4707.1, %bb.wi ] ; 3 uses
  %.0.i16184103 = phi i64 [ 0, %.lr.ph4105.new ], [ %i.dnu, %bb.wi ]
  %niter6482 = phi i64 [ 0, %.lr.ph4105.new ], [ %niter6482.next.1, %bb.wi ]
  %i.dnf = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4706 ; 2 uses
  %i.dng = load i64, ptr %i.dnf, align 8, !tbaa !91
  %i.dnh = zext i64 %i.dng to i128
  %i.dni = mul nuw i128 %i.dnh, %i.dna
  %i.dnj = zext i64 %.0.i16184103 to i128
  %i.dnk = add nuw i128 %i.dni, %i.dnj            ; 2 uses
  %i.dnl = lshr i128 %i.dnk, 64
  %i.dnm = trunc i128 %i.dnk to i64
  store i64 %i.dnm, ptr %i.dnf, align 8, !tbaa !91
  %i.dnn = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4706
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dnn, i64 8 ; 2 uses
  %i.dnp = load i64, ptr %i.dno, align 8, !tbaa !91
  %i.dnq = zext i64 %i.dnp to i128
  %i.dnr = mul nuw i128 %i.dnq, %i.dna
  %i.dns = add nuw i128 %i.dnr, %i.dnl            ; 2 uses
  %i.dnt = lshr i128 %i.dns, 64                   ; 2 uses
  %i.dnu = trunc nuw i128 %i.dnt to i64           ; 3 uses
  %i.dnv = trunc i128 %i.dns to i64
  store i64 %i.dnv, ptr %i.dno, align 8, !tbaa !91
  %indvars.iv.next4707.1 = add nuw nsw i64 %indvars.iv4706, 2 ; 2 uses
  %niter6482.next.1 = add i64 %niter6482, 2       ; 2 uses
  %niter6482.ncmp.1 = icmp eq i64 %niter6482.next.1, %unroll_iter6481
  br i1 %niter6482.ncmp.1, label %._crit_edge4106.unr-lcssa, label %bb.wi, !llvm.loop !136

._crit_edge4106.unr-lcssa:                        ; preds = %bb.wi
  %lcmp.mod6477.not = icmp eq i64 %xtraiter6476, 0
  br i1 %lcmp.mod6477.not, label %._crit_edge4106, label %.epil.preheader6475

.epil.preheader6475:                              ; preds = %._crit_edge4106.unr-lcssa, %.lr.ph4105
  %indvars.iv4706.epil.init = phi i64 [ %i.dnb, %.lr.ph4105 ], [ %indvars.iv.next4707.1, %._crit_edge4106.unr-lcssa ]
  %.0.i16184103.epil.init = phi i64 [ 0, %.lr.ph4105 ], [ %i.dnu, %._crit_edge4106.unr-lcssa ]
  %lcmp.mod6480 = trunc i64 %i.dnc to i1
  call void @llvm.assume(i1 %lcmp.mod6480)
  %i.dnw = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4706.epil.init ; 2 uses
  %i.dnx = load i64, ptr %i.dnw, align 8, !tbaa !91
  %i.dny = zext i64 %i.dnx to i128
  %i.dnz = mul nuw i128 %i.dny, %i.dna
  %i.doa = zext i64 %.0.i16184103.epil.init to i128
  %i.dob = add nuw i128 %i.dnz, %i.doa            ; 2 uses
  %i.doc = lshr i128 %i.dob, 64                   ; 2 uses
  %i.dod = trunc nuw i128 %i.doc to i64
  %i.doe = trunc i128 %i.dob to i64
  store i64 %i.doe, ptr %i.dnw, align 8, !tbaa !91
  br label %._crit_edge4106

._crit_edge4106:                                  ; preds = %._crit_edge4106.unr-lcssa, %.epil.preheader6475
  %.lcssa6280 = phi i128 [ %i.dnt, %._crit_edge4106.unr-lcssa ], [ %i.doc, %.epil.preheader6475 ]
  %.lcssa6279 = phi i64 [ %i.dnu, %._crit_edge4106.unr-lcssa ], [ %i.dod, %.epil.preheader6475 ]
  %.not19.i1619 = icmp eq i128 %.lcssa6280, 0
  br i1 %.not19.i1619, label %bigint_mul_pow10.exit1509, label %bb.wj

bb.wj:                                            ; preds = %._crit_edge4106
  %i.dof = add i32 %i.dmy, 1
  br label %bigint_mul_pow10.exit1509.sink.split

bigint_mul_pow10.exit1509.sink.split:             ; preds = %bb.wc, %bb.wj
  %.sink5667 = phi i32 [ %i.dmy, %bb.wj ], [ %i.djg, %bb.wc ]
  %i.dog = phi ptr [ %6, %bb.wj ], [ %5, %bb.wc ]
  %.lcssa5524.sink = phi i64 [ %.lcssa6279, %bb.wj ], [ %.lcssa6271, %bb.wc ]
  %.ph5663 = phi i32 [ %i.dof, %bb.wj ], [ 1, %bb.wc ]
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 8
  %i.doi = zext i32 %.sink5667 to i64
  %i.doj = getelementptr inbounds nuw [8 x i8], ptr %i.doh, i64 %i.doi
  store i64 %.lcssa5524.sink, ptr %i.doj, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1509

bigint_mul_pow10.exit1509:                        ; preds = %bb.wh, %bb.wa, %bigint_mul_pow10.exit1509.sink.split, %._crit_edge4098, %._crit_edge4131, %._crit_edge4092, %._crit_edge4106, %._crit_edge4125, %._crit_edge4139
  %i.dok = phi i32 [ %i.dmm, %._crit_edge4092 ], [ %i.dmy, %._crit_edge4106 ], [ %i.dmy, %._crit_edge4098 ], [ 1, %._crit_edge4125 ], [ 1, %._crit_edge4139 ], [ 1, %bb.wa ], [ %.ph5663, %bigint_mul_pow10.exit1509.sink.split ], [ 1, %._crit_edge4131 ], [ %i.dmt, %bb.wh ] ; 16 uses
  %i.dol = icmp sgt i32 %.sroa.9.0.i899, 0
  br i1 %i.dol, label %bb.wk, label %bb.wm

bb.wk:                                            ; preds = %bigint_mul_pow10.exit1509
  %i.dom = and i32 %.sroa.9.0.i899, 63            ; 3 uses
  %i.don = lshr i32 %.sroa.9.0.i899, 6            ; 15 uses
  %i.doo = icmp eq i32 %i.dom, 0
  br i1 %i.doo, label %.preheader3554, label %bb.wl, !prof !8

.preheader3554:                                   ; preds = %bb.wk
  %.not46.i15374167 = icmp eq i32 %i.dok, 0
  br i1 %.not46.i15374167, label %.lr.ph4174.preheader, label %.lr.ph4169

.lr.ph4169:                                       ; preds = %.preheader3554
  %i.dop = add nsw i32 %i.don, -1                 ; 6 uses
  %i.doq = zext i32 %i.dok to i64                 ; 9 uses
  %min.iters.check6108 = icmp ult i32 %i.dok, 30
  br i1 %min.iters.check6108, label %scalar.ph6107.preheader, label %vector.scevcheck6104

vector.scevcheck6104:                             ; preds = %.lr.ph4169
  %i.dor = add nsw i64 %i.doq, -1                 ; 2 uses
  %i.dos = add i32 %i.dok, %i.don
  %i.dot = add i32 %i.dos, -1
  %i.dou = trunc i64 %i.dor to i32
  %i.dov = icmp ult i32 %i.dot, %i.dou
  %i.dow = icmp ugt i64 %i.dor, 4294967295
  %i.dox = or i1 %i.dov, %i.dow
  br i1 %i.dox, label %scalar.ph6107.preheader, label %vector.memcheck6105

vector.memcheck6105:                              ; preds = %vector.scevcheck6104
  %i.doy = add i32 %i.dok, %i.don
  %i.doz = add i32 %i.doy, -1
  %i.dpa = zext i32 %i.doz to i64
  %i.dpb = sub nsw i64 %i.doq, %i.dpa
  %i.dpc = shl nsw i64 %i.dpb, 3
  %i.dpd = add nsw i64 %i.dpc, -9
  %diff.check6106 = icmp ult i64 %i.dpd, 31
  br i1 %diff.check6106, label %scalar.ph6107.preheader, label %vector.ph6109

vector.ph6109:                                    ; preds = %vector.memcheck6105
  %n.vec6110 = and i64 %i.doq, 4294967292         ; 2 uses
  %i.dpe = and i64 %i.doq, 3
  br label %vector.body6111

vector.body6111:                                  ; preds = %vector.body6111, %vector.ph6109
  %index6112 = phi i64 [ 0, %vector.ph6109 ], [ %index.next6115, %vector.body6111 ] ; 2 uses
  %i.dpf = sub i64 %i.doq, %index6112             ; 2 uses
  %i.dpg = getelementptr [8 x i8], ptr %6, i64 %i.dpf ; 2 uses
  %i.dph = getelementptr i8, ptr %i.dpg, i64 -8
  %i.dpi = getelementptr i8, ptr %i.dpg, i64 -24
  %wide.load6113 = load <2 x i64>, ptr %i.dph, align 8, !tbaa !91
  %wide.load6114 = load <2 x i64>, ptr %i.dpi, align 8, !tbaa !91
  %i.dpj = trunc nuw i64 %i.dpf to i32
  %i.dpk = add i32 %i.dop, %i.dpj
  %i.dpl = zext i32 %i.dpk to i64
  %i.dpm = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dpl ; 2 uses
  %i.dpn = getelementptr inbounds i8, ptr %i.dpm, i64 -8
  %i.dpo = getelementptr inbounds i8, ptr %i.dpm, i64 -24
  store <2 x i64> %wide.load6113, ptr %i.dpn, align 8, !tbaa !91
  store <2 x i64> %wide.load6114, ptr %i.dpo, align 8, !tbaa !91
  %index.next6115 = add nuw i64 %index6112, 4     ; 2 uses
  %i.dpp = icmp eq i64 %index.next6115, %n.vec6110
  br i1 %i.dpp, label %middle.block6116, label %vector.body6111, !llvm.loop !288

middle.block6116:                                 ; preds = %vector.body6111
  %cmp.n6117 = icmp eq i64 %n.vec6110, %i.doq
  br i1 %cmp.n6117, label %.lr.ph4174.preheader, label %scalar.ph6107.preheader

scalar.ph6107.preheader:                          ; preds = %vector.memcheck6105, %vector.scevcheck6104, %.lr.ph4169, %middle.block6116
  %indvars.iv4746.ph = phi i64 [ %i.doq, %vector.memcheck6105 ], [ %i.doq, %vector.scevcheck6104 ], [ %i.doq, %.lr.ph4169 ], [ %i.dpe, %middle.block6116 ] ; 4 uses
  %i.dpq = add nsw i64 %indvars.iv4746.ph, -1
  %xtraiter6507 = and i64 %indvars.iv4746.ph, 3   ; 2 uses
  %lcmp.mod6508.not = icmp eq i64 %xtraiter6507, 0
  br i1 %lcmp.mod6508.not, label %scalar.ph6107.prol.loopexit, label %scalar.ph6107.prol

scalar.ph6107.prol:                               ; preds = %scalar.ph6107.preheader, %scalar.ph6107.prol
  %indvars.iv4746.prol = phi i64 [ %i.dpr, %scalar.ph6107.prol ], [ %indvars.iv4746.ph, %scalar.ph6107.preheader ] ; 3 uses
  %prol.iter6509 = phi i64 [ %prol.iter6509.next, %scalar.ph6107.prol ], [ 0, %scalar.ph6107.preheader ]
  %i.dpr = add nsw i64 %indvars.iv4746.prol, -1   ; 2 uses
  %i.dps = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4746.prol
  %i.dpt = load i64, ptr %i.dps, align 8, !tbaa !91
  %i.dpu = trunc nuw i64 %indvars.iv4746.prol to i32
  %i.dpv = add i32 %i.dop, %i.dpu
  %i.dpw = zext i32 %i.dpv to i64
  %i.dpx = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dpw
  store i64 %i.dpt, ptr %i.dpx, align 8, !tbaa !91
  %prol.iter6509.next = add i64 %prol.iter6509, 1 ; 2 uses
  %prol.iter6509.cmp.not = icmp eq i64 %prol.iter6509.next, %xtraiter6507
  br i1 %prol.iter6509.cmp.not, label %scalar.ph6107.prol.loopexit, label %scalar.ph6107.prol, !llvm.loop !289

scalar.ph6107.prol.loopexit:                      ; preds = %scalar.ph6107.prol, %scalar.ph6107.preheader
  %indvars.iv4746.unr = phi i64 [ %indvars.iv4746.ph, %scalar.ph6107.preheader ], [ %i.dpr, %scalar.ph6107.prol ]
  %i.dpy = icmp ult i64 %i.dpq, 3
  br i1 %i.dpy, label %.lr.ph4174.preheader, label %scalar.ph6107

scalar.ph6107:                                    ; preds = %scalar.ph6107.prol.loopexit, %scalar.ph6107
  %indvars.iv4746 = phi i64 [ %i.dqu, %scalar.ph6107 ], [ %indvars.iv4746.unr, %scalar.ph6107.prol.loopexit ] ; 6 uses
  %i.dpz = add nsw i64 %indvars.iv4746, -1        ; 2 uses
  %i.dqa = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4746
  %i.dqb = load i64, ptr %i.dqa, align 8, !tbaa !91
  %i.dqc = trunc nuw i64 %indvars.iv4746 to i32
  %i.dqd = add i32 %i.dop, %i.dqc
  %i.dqe = zext i32 %i.dqd to i64
  %i.dqf = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dqe
  store i64 %i.dqb, ptr %i.dqf, align 8, !tbaa !91
  %i.dqg = add nsw i64 %indvars.iv4746, -2        ; 2 uses
  %i.dqh = getelementptr [8 x i8], ptr %6, i64 %i.dpz
  %i.dqi = load i64, ptr %i.dqh, align 8, !tbaa !91
  %i.dqj = trunc nuw i64 %i.dpz to i32
  %i.dqk = add i32 %i.dop, %i.dqj
  %i.dql = zext i32 %i.dqk to i64
  %i.dqm = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dql
  store i64 %i.dqi, ptr %i.dqm, align 8, !tbaa !91
  %i.dqn = add nsw i64 %indvars.iv4746, -3        ; 2 uses
  %i.dqo = getelementptr [8 x i8], ptr %6, i64 %i.dqg
  %i.dqp = load i64, ptr %i.dqo, align 8, !tbaa !91
  %i.dqq = trunc nuw i64 %i.dqg to i32
  %i.dqr = add i32 %i.dop, %i.dqq
  %i.dqs = zext i32 %i.dqr to i64
  %i.dqt = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dqs
  store i64 %i.dqp, ptr %i.dqt, align 8, !tbaa !91
  %i.dqu = add nsw i64 %indvars.iv4746, -4        ; 2 uses
  %i.dqv = getelementptr [8 x i8], ptr %6, i64 %i.dqn
  %i.dqw = load i64, ptr %i.dqv, align 8, !tbaa !91
  %i.dqx = trunc nuw i64 %i.dqn to i32
  %i.dqy = add i32 %i.dop, %i.dqx
  %i.dqz = zext i32 %i.dqy to i64
  %i.dra = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dqz
  store i64 %i.dqw, ptr %i.dra, align 8, !tbaa !91
  %.not46.i1537.wide.3 = icmp eq i64 %i.dqu, 0
  br i1 %.not46.i1537.wide.3, label %.lr.ph4174.preheader, label %scalar.ph6107, !llvm.loop !290

.lr.ph4174.preheader:                             ; preds = %scalar.ph6107.prol.loopexit, %scalar.ph6107, %middle.block6116, %.preheader3554
  %i.drb = add i32 %i.dok, %i.don                 ; 2 uses
  store i32 %i.drb, ptr %6, align 8, !tbaa !138
  br label %.lr.ph4149.preheader

bb.wl:                                            ; preds = %bb.wk
  %i.drc = zext i32 %i.dok to i64                 ; 10 uses
  %i.drd = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.drc
  store i64 0, ptr %i.drd, align 8, !tbaa !91
  %.not.i15334158 = icmp eq i32 %i.dok, 0
  %.pre5019 = zext nneg i32 %i.dom to i64         ; 5 uses
  br i1 %.not.i15334158, label %._crit_edge4162, label %.lr.ph4161

.lr.ph4161:                                       ; preds = %bb.wl
  %i.dre = sub nuw nsw i32 64, %i.dom
  %i.drf = zext nneg i32 %i.dre to i64            ; 4 uses
  %min.iters.check6087 = icmp ult i32 %i.dok, 20
  br i1 %min.iters.check6087, label %scalar.ph6086.preheader, label %vector.scevcheck6081

vector.scevcheck6081:                             ; preds = %.lr.ph4161
  %i.drg = add nsw i64 %i.drc, -1                 ; 2 uses
  %i.drh = add i32 %i.dok, %i.don
  %i.dri = trunc i64 %i.drg to i32
  %i.drj = icmp ult i32 %i.drh, %i.dri
  %i.drk = icmp ugt i64 %i.drg, 4294967295
  %i.drl = or i1 %i.drj, %i.drk
  br i1 %i.drl, label %scalar.ph6086.preheader, label %vector.memcheck6082

vector.memcheck6082:                              ; preds = %vector.scevcheck6081
  %i.drm = shl nuw nsw i64 %i.drc, 3              ; 2 uses
  %i.drn = add i32 %i.dok, %i.don
  %i.dro = zext i32 %i.drn to i64
  %i.drp = shl nuw nsw i64 %i.dro, 3              ; 2 uses
  %i.drq = sub nsw i64 %i.drp, %i.drm
  %diff.check6083 = icmp ugt i64 %i.drq, -32
  %i.drr = sub nsw i64 %i.drm, %i.drp
  %i.drs = add nsw i64 %i.drr, -9
  %diff.check6084 = icmp ult i64 %i.drs, 31
  %conflict.rdx6085 = or i1 %diff.check6083, %diff.check6084
  br i1 %conflict.rdx6085, label %scalar.ph6086.preheader, label %vector.ph6088

vector.ph6088:                                    ; preds = %vector.memcheck6082
  %n.vec6089 = and i64 %i.drc, 4294967292         ; 2 uses
  %i.drt = and i64 %i.drc, 3
  %broadcast.splatinsert6090 = insertelement <2 x i64> poison, i64 %i.drf, i64 0
  %broadcast.splat6091 = shufflevector <2 x i64> %broadcast.splatinsert6090, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6092 = insertelement <2 x i64> poison, i64 %.pre5019, i64 0
  %broadcast.splat6093 = shufflevector <2 x i64> %broadcast.splatinsert6092, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6094

vector.body6094:                                  ; preds = %vector.body6094, %vector.ph6088
  %index6095 = phi i64 [ 0, %vector.ph6088 ], [ %index.next6100, %vector.body6094 ] ; 2 uses
  %i.dru = sub i64 %i.drc, %index6095             ; 3 uses
  %i.drv = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dru ; 2 uses
  %i.drw = getelementptr inbounds i8, ptr %i.drv, i64 -8
  %i.drx = getelementptr inbounds i8, ptr %i.drv, i64 -24
  %wide.load6096 = load <2 x i64>, ptr %i.drw, align 8, !tbaa !91
  %wide.load6097 = load <2 x i64>, ptr %i.drx, align 8, !tbaa !91
  %i.dry = shl <2 x i64> %wide.load6096, %broadcast.splat6093
  %i.drz = shl <2 x i64> %wide.load6097, %broadcast.splat6093
  %i.dsa = getelementptr [8 x i8], ptr %6, i64 %i.dru ; 2 uses
  %i.dsb = getelementptr i8, ptr %i.dsa, i64 -8
  %i.dsc = getelementptr i8, ptr %i.dsa, i64 -24
  %wide.load6098 = load <2 x i64>, ptr %i.dsb, align 8, !tbaa !91
  %wide.load6099 = load <2 x i64>, ptr %i.dsc, align 8, !tbaa !91
  %i.dsd = lshr <2 x i64> %wide.load6098, %broadcast.splat6091
  %i.dse = lshr <2 x i64> %wide.load6099, %broadcast.splat6091
  %i.dsf = or <2 x i64> %i.dsd, %i.dry
  %i.dsg = or <2 x i64> %i.dse, %i.drz
  %i.dsh = trunc nuw i64 %i.dru to i32
  %i.dsi = add i32 %i.don, %i.dsh
  %i.dsj = zext i32 %i.dsi to i64
  %i.dsk = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dsj ; 2 uses
  %i.dsl = getelementptr inbounds i8, ptr %i.dsk, i64 -8
  %i.dsm = getelementptr inbounds i8, ptr %i.dsk, i64 -24
  store <2 x i64> %i.dsf, ptr %i.dsl, align 8, !tbaa !91
  store <2 x i64> %i.dsg, ptr %i.dsm, align 8, !tbaa !91
  %index.next6100 = add nuw i64 %index6095, 4     ; 2 uses
  %i.dsn = icmp eq i64 %index.next6100, %n.vec6089
  br i1 %i.dsn, label %middle.block6101, label %vector.body6094, !llvm.loop !291

middle.block6101:                                 ; preds = %vector.body6094
  %cmp.n6102 = icmp eq i64 %n.vec6089, %i.drc
  br i1 %cmp.n6102, label %._crit_edge4162, label %scalar.ph6086.preheader

scalar.ph6086.preheader:                          ; preds = %vector.memcheck6082, %vector.scevcheck6081, %.lr.ph4161, %middle.block6101
  %indvars.iv4741.ph = phi i64 [ %i.drc, %vector.memcheck6082 ], [ %i.drc, %vector.scevcheck6081 ], [ %i.drc, %.lr.ph4161 ], [ %i.drt, %middle.block6101 ] ; 7 uses
  %xtraiter6504 = and i64 %indvars.iv4741.ph, 1
  %lcmp.mod6505.not = icmp eq i64 %xtraiter6504, 0
  br i1 %lcmp.mod6505.not, label %scalar.ph6086.prol.loopexit, label %scalar.ph6086.prol

scalar.ph6086.prol:                               ; preds = %scalar.ph6086.preheader
  %i.dso = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4741.ph
  %i.dsp = load i64, ptr %i.dso, align 8, !tbaa !91
  %i.dsq = shl i64 %i.dsp, %.pre5019
  %i.dsr = add nsw i64 %indvars.iv4741.ph, -1
  %i.dss = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4741.ph
  %i.dst = load i64, ptr %i.dss, align 8, !tbaa !91
  %i.dsu = lshr i64 %i.dst, %i.drf
  %i.dsv = or i64 %i.dsu, %i.dsq
  %i.dsw = trunc nuw i64 %indvars.iv4741.ph to i32
  %i.dsx = add i32 %i.don, %i.dsw
  %i.dsy = zext i32 %i.dsx to i64
  %i.dsz = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dsy
  store i64 %i.dsv, ptr %i.dsz, align 8, !tbaa !91
  br label %scalar.ph6086.prol.loopexit

scalar.ph6086.prol.loopexit:                      ; preds = %scalar.ph6086.prol, %scalar.ph6086.preheader
  %indvars.iv4741.unr = phi i64 [ %indvars.iv4741.ph, %scalar.ph6086.preheader ], [ %i.dsr, %scalar.ph6086.prol ]
  %i.dta = icmp eq i64 %indvars.iv4741.ph, 1
  br i1 %i.dta, label %._crit_edge4162, label %scalar.ph6086

scalar.ph6086:                                    ; preds = %scalar.ph6086.prol.loopexit, %scalar.ph6086
  %indvars.iv4741 = phi i64 [ %i.dtq, %scalar.ph6086 ], [ %indvars.iv4741.unr, %scalar.ph6086.prol.loopexit ] ; 6 uses
  %i.dtb = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %indvars.iv4741
  %i.dtc = load i64, ptr %i.dtb, align 8, !tbaa !91
  %i.dtd = shl i64 %i.dtc, %.pre5019
  %i.dte = add nsw i64 %indvars.iv4741, -1        ; 2 uses
  %i.dtf = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4741
  %i.dtg = load i64, ptr %i.dtf, align 8, !tbaa !91
  %i.dth = lshr i64 %i.dtg, %i.drf
  %i.dti = or i64 %i.dth, %i.dtd
  %i.dtj = trunc nuw i64 %indvars.iv4741 to i32
  %i.dtk = add i32 %i.don, %i.dtj
  %i.dtl = zext i32 %i.dtk to i64
  %i.dtm = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dtl
  store i64 %i.dti, ptr %i.dtm, align 8, !tbaa !91
  %i.dtn = getelementptr [8 x i8], ptr %6, i64 %indvars.iv4741
  %i.dto = load i64, ptr %i.dtn, align 8, !tbaa !91
  %i.dtp = shl i64 %i.dto, %.pre5019
  %i.dtq = add nsw i64 %indvars.iv4741, -2        ; 2 uses
  %i.dtr = getelementptr [8 x i8], ptr %6, i64 %i.dte
  %i.dts = load i64, ptr %i.dtr, align 8, !tbaa !91
  %i.dtt = lshr i64 %i.dts, %i.drf
  %i.dtu = or i64 %i.dtt, %i.dtp
  %i.dtv = trunc nuw i64 %i.dte to i32
  %i.dtw = add i32 %i.don, %i.dtv
  %i.dtx = zext i32 %i.dtw to i64
  %i.dty = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dtx
  store i64 %i.dtu, ptr %i.dty, align 8, !tbaa !91
  %.not.i1533.wide.1 = icmp eq i64 %i.dtq, 0
  br i1 %.not.i1533.wide.1, label %._crit_edge4162, label %scalar.ph6086, !llvm.loop !292

._crit_edge4162:                                  ; preds = %scalar.ph6086.prol.loopexit, %scalar.ph6086, %middle.block6101, %bb.wl
  %i.dtz = load i64, ptr %i.dhm, align 8, !tbaa !91
  %i.dua = shl i64 %i.dtz, %.pre5019
  %i.dub = zext nneg i32 %i.don to i64
  %i.duc = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.dub
  store i64 %i.dua, ptr %i.duc, align 8, !tbaa !91
  %i.dud = add i32 %i.dok, %i.don                 ; 2 uses
  %i.due = zext i32 %i.dud to i64
  %i.duf = getelementptr inbounds nuw [8 x i8], ptr %i.dhm, i64 %i.due
  %i.dug = load i64, ptr %i.duf, align 8, !tbaa !91
  %i.duh = icmp ne i64 %i.dug, 0
  %i.dui = zext i1 %i.duh to i32
  %i.duj = add i32 %i.dud, %i.dui                 ; 2 uses
  %.not45.i15354163 = icmp eq i32 %i.don, 0
  br i1 %.not45.i15354163, label %bigint_mul_pow2.exit1540, label %.lr.ph4149.preheader

bb.wm:                                            ; preds = %bigint_mul_pow10.exit1509
  %i.duk = sub nsw i32 0, %.sroa.9.0.i899         ; 2 uses
  %i.dul = and i32 %i.duk, 63                     ; 3 uses
  %i.dum = lshr i32 %i.duk, 6                     ; 16 uses
  %i.dun = load i32, ptr %5, align 8, !tbaa !138  ; 12 uses
  %i.duo = icmp eq i32 %i.dul, 0
  br i1 %i.duo, label %.preheader3557, label %bb.wn, !prof !8

.preheader3557:                                   ; preds = %bb.wm
  %.not46.i15464150 = icmp eq i32 %i.dun, 0
  br i1 %.not46.i15464150, label %._crit_edge4153, label %.lr.ph4152

.lr.ph4152:                                       ; preds = %.preheader3557
  %i.dup = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.duq = add nsw i32 %i.dum, -1                 ; 6 uses
  %i.dur = zext i32 %i.dun to i64                 ; 9 uses
  %min.iters.check6070 = icmp ult i32 %i.dun, 30
  br i1 %min.iters.check6070, label %scalar.ph6069.preheader, label %vector.scevcheck6066

vector.scevcheck6066:                             ; preds = %.lr.ph4152
  %i.dus = add nsw i64 %i.dur, -1                 ; 2 uses
  %i.dut = add i32 %i.dun, %i.dum
  %i.duu = add i32 %i.dut, -1
  %i.duv = trunc i64 %i.dus to i32
  %i.duw = icmp ult i32 %i.duu, %i.duv
  %i.dux = icmp ugt i64 %i.dus, 4294967295
  %i.duy = or i1 %i.duw, %i.dux
  br i1 %i.duy, label %scalar.ph6069.preheader, label %vector.memcheck6067

vector.memcheck6067:                              ; preds = %vector.scevcheck6066
  %i.duz = add i32 %i.dun, %i.dum
  %i.dva = add i32 %i.duz, -1
  %i.dvb = zext i32 %i.dva to i64
  %i.dvc = sub nsw i64 %i.dur, %i.dvb
  %i.dvd = shl nsw i64 %i.dvc, 3
  %i.dve = add nsw i64 %i.dvd, -9
  %diff.check6068 = icmp ult i64 %i.dve, 31
  br i1 %diff.check6068, label %scalar.ph6069.preheader, label %vector.ph6071

vector.ph6071:                                    ; preds = %vector.memcheck6067
  %n.vec6072 = and i64 %i.dur, 4294967292         ; 2 uses
  %i.dvf = and i64 %i.dur, 3
  br label %vector.body6073

vector.body6073:                                  ; preds = %vector.body6073, %vector.ph6071
  %index6074 = phi i64 [ 0, %vector.ph6071 ], [ %index.next6077, %vector.body6073 ] ; 2 uses
  %i.dvg = sub i64 %i.dur, %index6074             ; 2 uses
  %i.dvh = getelementptr [8 x i8], ptr %5, i64 %i.dvg ; 2 uses
  %i.dvi = getelementptr i8, ptr %i.dvh, i64 -8
  %i.dvj = getelementptr i8, ptr %i.dvh, i64 -24
  %wide.load6075 = load <2 x i64>, ptr %i.dvi, align 8, !tbaa !91
  %wide.load6076 = load <2 x i64>, ptr %i.dvj, align 8, !tbaa !91
  %i.dvk = trunc nuw i64 %i.dvg to i32
  %i.dvl = add i32 %i.duq, %i.dvk
  %i.dvm = zext i32 %i.dvl to i64
  %i.dvn = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dvm ; 2 uses
  %i.dvo = getelementptr inbounds i8, ptr %i.dvn, i64 -8
  %i.dvp = getelementptr inbounds i8, ptr %i.dvn, i64 -24
  store <2 x i64> %wide.load6075, ptr %i.dvo, align 8, !tbaa !91
  store <2 x i64> %wide.load6076, ptr %i.dvp, align 8, !tbaa !91
  %index.next6077 = add nuw i64 %index6074, 4     ; 2 uses
  %i.dvq = icmp eq i64 %index.next6077, %n.vec6072
  br i1 %i.dvq, label %middle.block6078, label %vector.body6073, !llvm.loop !293

middle.block6078:                                 ; preds = %vector.body6073
  %cmp.n6079 = icmp eq i64 %n.vec6072, %i.dur
  br i1 %cmp.n6079, label %._crit_edge4153, label %scalar.ph6069.preheader

scalar.ph6069.preheader:                          ; preds = %vector.memcheck6067, %vector.scevcheck6066, %.lr.ph4152, %middle.block6078
  %indvars.iv4736.ph = phi i64 [ %i.dur, %vector.memcheck6067 ], [ %i.dur, %vector.scevcheck6066 ], [ %i.dur, %.lr.ph4152 ], [ %i.dvf, %middle.block6078 ] ; 4 uses
  %i.dvr = add nsw i64 %indvars.iv4736.ph, -1
  %xtraiter6501 = and i64 %indvars.iv4736.ph, 3   ; 2 uses
  %lcmp.mod6502.not = icmp eq i64 %xtraiter6501, 0
  br i1 %lcmp.mod6502.not, label %scalar.ph6069.prol.loopexit, label %scalar.ph6069.prol

scalar.ph6069.prol:                               ; preds = %scalar.ph6069.preheader, %scalar.ph6069.prol
  %indvars.iv4736.prol = phi i64 [ %i.dvs, %scalar.ph6069.prol ], [ %indvars.iv4736.ph, %scalar.ph6069.preheader ] ; 3 uses
  %prol.iter6503 = phi i64 [ %prol.iter6503.next, %scalar.ph6069.prol ], [ 0, %scalar.ph6069.preheader ]
  %i.dvs = add nsw i64 %indvars.iv4736.prol, -1   ; 2 uses
  %i.dvt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4736.prol
  %i.dvu = load i64, ptr %i.dvt, align 8, !tbaa !91
  %i.dvv = trunc nuw i64 %indvars.iv4736.prol to i32
  %i.dvw = add i32 %i.duq, %i.dvv
  %i.dvx = zext i32 %i.dvw to i64
  %i.dvy = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dvx
  store i64 %i.dvu, ptr %i.dvy, align 8, !tbaa !91
  %prol.iter6503.next = add i64 %prol.iter6503, 1 ; 2 uses
  %prol.iter6503.cmp.not = icmp eq i64 %prol.iter6503.next, %xtraiter6501
  br i1 %prol.iter6503.cmp.not, label %scalar.ph6069.prol.loopexit, label %scalar.ph6069.prol, !llvm.loop !294

scalar.ph6069.prol.loopexit:                      ; preds = %scalar.ph6069.prol, %scalar.ph6069.preheader
  %indvars.iv4736.unr = phi i64 [ %indvars.iv4736.ph, %scalar.ph6069.preheader ], [ %i.dvs, %scalar.ph6069.prol ]
  %i.dvz = icmp ult i64 %i.dvr, 3
  br i1 %i.dvz, label %._crit_edge4153, label %scalar.ph6069

scalar.ph6069:                                    ; preds = %scalar.ph6069.prol.loopexit, %scalar.ph6069
  %indvars.iv4736 = phi i64 [ %i.dwv, %scalar.ph6069 ], [ %indvars.iv4736.unr, %scalar.ph6069.prol.loopexit ] ; 6 uses
  %i.dwa = add nsw i64 %indvars.iv4736, -1        ; 2 uses
  %i.dwb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4736
  %i.dwc = load i64, ptr %i.dwb, align 8, !tbaa !91
  %i.dwd = trunc nuw i64 %indvars.iv4736 to i32
  %i.dwe = add i32 %i.duq, %i.dwd
  %i.dwf = zext i32 %i.dwe to i64
  %i.dwg = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dwf
  store i64 %i.dwc, ptr %i.dwg, align 8, !tbaa !91
  %i.dwh = add nsw i64 %indvars.iv4736, -2        ; 2 uses
  %i.dwi = getelementptr [8 x i8], ptr %5, i64 %i.dwa
  %i.dwj = load i64, ptr %i.dwi, align 8, !tbaa !91
  %i.dwk = trunc nuw i64 %i.dwa to i32
  %i.dwl = add i32 %i.duq, %i.dwk
  %i.dwm = zext i32 %i.dwl to i64
  %i.dwn = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dwm
  store i64 %i.dwj, ptr %i.dwn, align 8, !tbaa !91
  %i.dwo = add nsw i64 %indvars.iv4736, -3        ; 2 uses
  %i.dwp = getelementptr [8 x i8], ptr %5, i64 %i.dwh
  %i.dwq = load i64, ptr %i.dwp, align 8, !tbaa !91
  %i.dwr = trunc nuw i64 %i.dwh to i32
  %i.dws = add i32 %i.duq, %i.dwr
  %i.dwt = zext i32 %i.dws to i64
  %i.dwu = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dwt
  store i64 %i.dwq, ptr %i.dwu, align 8, !tbaa !91
  %i.dwv = add nsw i64 %indvars.iv4736, -4        ; 2 uses
  %i.dww = getelementptr [8 x i8], ptr %5, i64 %i.dwo
  %i.dwx = load i64, ptr %i.dww, align 8, !tbaa !91
  %i.dwy = trunc nuw i64 %i.dwo to i32
  %i.dwz = add i32 %i.duq, %i.dwy
  %i.dxa = zext i32 %i.dwz to i64
  %i.dxb = getelementptr inbounds nuw [8 x i8], ptr %i.dup, i64 %i.dxa
  store i64 %i.dwx, ptr %i.dxb, align 8, !tbaa !91
  %.not46.i1546.wide.3 = icmp eq i64 %i.dwv, 0
  br i1 %.not46.i1546.wide.3, label %._crit_edge4153, label %scalar.ph6069, !llvm.loop !295

._crit_edge4153:                                  ; preds = %scalar.ph6069.prol.loopexit, %scalar.ph6069, %middle.block6078, %.preheader3557
  %i.dxc = add i32 %i.dun, %i.dum
  store i32 %i.dxc, ptr %5, align 8, !tbaa !138
  %.not47.i15484154 = icmp eq i32 %i.dum, 0
  br i1 %.not47.i15484154, label %bigint_mul_pow2.exit1540, label %.lr.ph4157

.lr.ph4157:                                       ; preds = %._crit_edge4153
  %i.dxd = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph4149.preheader

bb.wn:                                            ; preds = %bb.wm
  %i.dxe = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.dxf = zext i32 %i.dun to i64                 ; 10 uses
  %i.dxg = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.dxf
  store i64 0, ptr %i.dxg, align 8, !tbaa !91
  %.not.i15424141 = icmp eq i32 %i.dun, 0
  %.pre5021 = zext nneg i32 %i.dul to i64         ; 5 uses
  br i1 %.not.i15424141, label %._crit_edge4145, label %.lr.ph4144

.lr.ph4144:                                       ; preds = %bb.wn
  %i.dxh = sub nuw nsw i32 64, %i.dul
  %i.dxi = zext nneg i32 %i.dxh to i64            ; 4 uses
  %min.iters.check6049 = icmp ult i32 %i.dun, 20
  br i1 %min.iters.check6049, label %scalar.ph6048.preheader, label %vector.scevcheck6043

vector.scevcheck6043:                             ; preds = %.lr.ph4144
  %i.dxj = add nsw i64 %i.dxf, -1                 ; 2 uses
  %i.dxk = add i32 %i.dun, %i.dum
  %i.dxl = trunc i64 %i.dxj to i32
  %i.dxm = icmp ult i32 %i.dxk, %i.dxl
  %i.dxn = icmp ugt i64 %i.dxj, 4294967295
  %i.dxo = or i1 %i.dxm, %i.dxn
  br i1 %i.dxo, label %scalar.ph6048.preheader, label %vector.memcheck6044

vector.memcheck6044:                              ; preds = %vector.scevcheck6043
  %i.dxp = shl nuw nsw i64 %i.dxf, 3              ; 2 uses
  %i.dxq = add i32 %i.dun, %i.dum
  %i.dxr = zext i32 %i.dxq to i64
  %i.dxs = shl nuw nsw i64 %i.dxr, 3              ; 2 uses
  %i.dxt = sub nsw i64 %i.dxs, %i.dxp
  %diff.check6045 = icmp ugt i64 %i.dxt, -32
  %i.dxu = sub nsw i64 %i.dxp, %i.dxs
  %i.dxv = add nsw i64 %i.dxu, -9
  %diff.check6046 = icmp ult i64 %i.dxv, 31
  %conflict.rdx6047 = or i1 %diff.check6045, %diff.check6046
  br i1 %conflict.rdx6047, label %scalar.ph6048.preheader, label %vector.ph6050

vector.ph6050:                                    ; preds = %vector.memcheck6044
  %n.vec6051 = and i64 %i.dxf, 4294967292         ; 2 uses
  %i.dxw = and i64 %i.dxf, 3
  %broadcast.splatinsert6052 = insertelement <2 x i64> poison, i64 %i.dxi, i64 0
  %broadcast.splat6053 = shufflevector <2 x i64> %broadcast.splatinsert6052, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6054 = insertelement <2 x i64> poison, i64 %.pre5021, i64 0
  %broadcast.splat6055 = shufflevector <2 x i64> %broadcast.splatinsert6054, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6056

vector.body6056:                                  ; preds = %vector.body6056, %vector.ph6050
  %index6057 = phi i64 [ 0, %vector.ph6050 ], [ %index.next6062, %vector.body6056 ] ; 2 uses
  %i.dxx = sub i64 %i.dxf, %index6057             ; 3 uses
  %i.dxy = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.dxx ; 2 uses
  %i.dxz = getelementptr inbounds i8, ptr %i.dxy, i64 -8
  %i.dya = getelementptr inbounds i8, ptr %i.dxy, i64 -24
  %wide.load6058 = load <2 x i64>, ptr %i.dxz, align 8, !tbaa !91
  %wide.load6059 = load <2 x i64>, ptr %i.dya, align 8, !tbaa !91
  %i.dyb = shl <2 x i64> %wide.load6058, %broadcast.splat6055
  %i.dyc = shl <2 x i64> %wide.load6059, %broadcast.splat6055
  %i.dyd = getelementptr [8 x i8], ptr %5, i64 %i.dxx ; 2 uses
  %i.dye = getelementptr i8, ptr %i.dyd, i64 -8
  %i.dyf = getelementptr i8, ptr %i.dyd, i64 -24
  %wide.load6060 = load <2 x i64>, ptr %i.dye, align 8, !tbaa !91
  %wide.load6061 = load <2 x i64>, ptr %i.dyf, align 8, !tbaa !91
  %i.dyg = lshr <2 x i64> %wide.load6060, %broadcast.splat6053
  %i.dyh = lshr <2 x i64> %wide.load6061, %broadcast.splat6053
  %i.dyi = or <2 x i64> %i.dyg, %i.dyb
  %i.dyj = or <2 x i64> %i.dyh, %i.dyc
  %i.dyk = trunc nuw i64 %i.dxx to i32
  %i.dyl = add i32 %i.dum, %i.dyk
  %i.dym = zext i32 %i.dyl to i64
  %i.dyn = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.dym ; 2 uses
  %i.dyo = getelementptr inbounds i8, ptr %i.dyn, i64 -8
  %i.dyp = getelementptr inbounds i8, ptr %i.dyn, i64 -24
  store <2 x i64> %i.dyi, ptr %i.dyo, align 8, !tbaa !91
  store <2 x i64> %i.dyj, ptr %i.dyp, align 8, !tbaa !91
  %index.next6062 = add nuw i64 %index6057, 4     ; 2 uses
  %i.dyq = icmp eq i64 %index.next6062, %n.vec6051
  br i1 %i.dyq, label %middle.block6063, label %vector.body6056, !llvm.loop !296

middle.block6063:                                 ; preds = %vector.body6056
  %cmp.n6064 = icmp eq i64 %n.vec6051, %i.dxf
  br i1 %cmp.n6064, label %._crit_edge4145, label %scalar.ph6048.preheader

scalar.ph6048.preheader:                          ; preds = %vector.memcheck6044, %vector.scevcheck6043, %.lr.ph4144, %middle.block6063
  %indvars.iv4731.ph = phi i64 [ %i.dxf, %vector.memcheck6044 ], [ %i.dxf, %vector.scevcheck6043 ], [ %i.dxf, %.lr.ph4144 ], [ %i.dxw, %middle.block6063 ] ; 7 uses
  %xtraiter6498 = and i64 %indvars.iv4731.ph, 1
  %lcmp.mod6499.not = icmp eq i64 %xtraiter6498, 0
  br i1 %lcmp.mod6499.not, label %scalar.ph6048.prol.loopexit, label %scalar.ph6048.prol

scalar.ph6048.prol:                               ; preds = %scalar.ph6048.preheader
  %i.dyr = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %indvars.iv4731.ph
  %i.dys = load i64, ptr %i.dyr, align 8, !tbaa !91
  %i.dyt = shl i64 %i.dys, %.pre5021
  %i.dyu = add nsw i64 %indvars.iv4731.ph, -1
  %i.dyv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731.ph
  %i.dyw = load i64, ptr %i.dyv, align 8, !tbaa !91
  %i.dyx = lshr i64 %i.dyw, %i.dxi
  %i.dyy = or i64 %i.dyx, %i.dyt
  %i.dyz = trunc nuw i64 %indvars.iv4731.ph to i32
  %i.dza = add i32 %i.dum, %i.dyz
  %i.dzb = zext i32 %i.dza to i64
  %i.dzc = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.dzb
  store i64 %i.dyy, ptr %i.dzc, align 8, !tbaa !91
  br label %scalar.ph6048.prol.loopexit

scalar.ph6048.prol.loopexit:                      ; preds = %scalar.ph6048.prol, %scalar.ph6048.preheader
  %indvars.iv4731.unr = phi i64 [ %indvars.iv4731.ph, %scalar.ph6048.preheader ], [ %i.dyu, %scalar.ph6048.prol ]
  %i.dzd = icmp eq i64 %indvars.iv4731.ph, 1
  br i1 %i.dzd, label %._crit_edge4145, label %scalar.ph6048

scalar.ph6048:                                    ; preds = %scalar.ph6048.prol.loopexit, %scalar.ph6048
  %indvars.iv4731 = phi i64 [ %i.dzt, %scalar.ph6048 ], [ %indvars.iv4731.unr, %scalar.ph6048.prol.loopexit ] ; 6 uses
  %i.dze = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %indvars.iv4731
  %i.dzf = load i64, ptr %i.dze, align 8, !tbaa !91
  %i.dzg = shl i64 %i.dzf, %.pre5021
  %i.dzh = add nsw i64 %indvars.iv4731, -1        ; 2 uses
  %i.dzi = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731
  %i.dzj = load i64, ptr %i.dzi, align 8, !tbaa !91
  %i.dzk = lshr i64 %i.dzj, %i.dxi
  %i.dzl = or i64 %i.dzk, %i.dzg
  %i.dzm = trunc nuw i64 %indvars.iv4731 to i32
  %i.dzn = add i32 %i.dum, %i.dzm
  %i.dzo = zext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.dzo
  store i64 %i.dzl, ptr %i.dzp, align 8, !tbaa !91
  %i.dzq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4731
  %i.dzr = load i64, ptr %i.dzq, align 8, !tbaa !91
  %i.dzs = shl i64 %i.dzr, %.pre5021
  %i.dzt = add nsw i64 %indvars.iv4731, -2        ; 2 uses
  %i.dzu = getelementptr [8 x i8], ptr %5, i64 %i.dzh
  %i.dzv = load i64, ptr %i.dzu, align 8, !tbaa !91
  %i.dzw = lshr i64 %i.dzv, %i.dxi
  %i.dzx = or i64 %i.dzw, %i.dzs
  %i.dzy = trunc nuw i64 %i.dzh to i32
  %i.dzz = add i32 %i.dum, %i.dzy
  %i.eaa = zext i32 %i.dzz to i64
  %i.eab = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.eaa
  store i64 %i.dzx, ptr %i.eab, align 8, !tbaa !91
  %.not.i1542.wide.1 = icmp eq i64 %i.dzt, 0
  br i1 %.not.i1542.wide.1, label %._crit_edge4145, label %scalar.ph6048, !llvm.loop !297

._crit_edge4145:                                  ; preds = %scalar.ph6048.prol.loopexit, %scalar.ph6048, %middle.block6063, %bb.wn
  %i.eac = load i64, ptr %i.dxe, align 8, !tbaa !91
  %i.ead = shl i64 %i.eac, %.pre5021
  %i.eae = zext nneg i32 %i.dum to i64
  %i.eaf = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.eae
  store i64 %i.ead, ptr %i.eaf, align 8, !tbaa !91
  %i.eag = add i32 %i.dun, %i.dum                 ; 2 uses
  %i.eah = zext i32 %i.eag to i64
  %i.eai = getelementptr inbounds nuw [8 x i8], ptr %i.dxe, i64 %i.eah
  %i.eaj = load i64, ptr %i.eai, align 8, !tbaa !91
  %i.eak = icmp ne i64 %i.eaj, 0
  %i.eal = zext i1 %i.eak to i32
  %i.eam = add i32 %i.eag, %i.eal
  store i32 %i.eam, ptr %5, align 8, !tbaa !138
  %.not45.i15444146 = icmp eq i32 %i.dum, 0
  br i1 %.not45.i15444146, label %bigint_mul_pow2.exit1540, label %.lr.ph4149.preheader

.lr.ph4149.preheader:                             ; preds = %._crit_edge4145, %._crit_edge4162, %.lr.ph4174.preheader, %.lr.ph4157
  %.sink5690 = phi i32 [ %i.don, %._crit_edge4162 ], [ %i.dum, %.lr.ph4157 ], [ %i.don, %.lr.ph4174.preheader ], [ %i.dum, %._crit_edge4145 ]
  %.sink5685 = phi ptr [ %i.dhm, %._crit_edge4162 ], [ %i.dxd, %.lr.ph4157 ], [ %i.dhm, %.lr.ph4174.preheader ], [ %i.dxe, %._crit_edge4145 ]
  %.ph5684 = phi i32 [ %i.duj, %._crit_edge4162 ], [ %i.dok, %.lr.ph4157 ], [ %i.drb, %.lr.ph4174.preheader ], [ %i.dok, %._crit_edge4145 ]
  %14 = add nsw i32 %.sink5690, -1
  %i.ean = zext i32 %14 to i64
  %15 = shl nuw nsw i64 %i.ean, 3
  %16 = add nuw nsw i64 %15, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5685, i8 0, i64 %16, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1540

bigint_mul_pow2.exit1540:                         ; preds = %.lr.ph4149.preheader, %._crit_edge4145, %._crit_edge4153, %._crit_edge4162
  %17 = phi i32 [ %i.duj, %._crit_edge4162 ], [ %i.dok, %._crit_edge4145 ], [ %i.dok, %._crit_edge4153 ], [ %.ph5684, %.lr.ph4149.preheader ] ; 2 uses
  %i.eao = load i32, ptr %5, align 8, !tbaa !138  ; 4 uses
  %i.eap = icmp ult i32 %i.eao, %17
  br i1 %i.eap, label %bigint_cmp.exit1579.thread, label %bb.wo

bb.wo:                                            ; preds = %bigint_mul_pow2.exit1540
  %i.eaq = icmp ugt i32 %i.eao, %17
  br i1 %i.eaq, label %bigint_cmp.exit1579.thread, label %.preheader3553

.preheader3553:                                   ; preds = %bb.wo
  %.not.i15735956 = icmp eq i32 %i.eao, 0
  br i1 %.not.i15735956, label %bigint_cmp.exit1579.thread3215, label %.lr.ph5959

.lr.ph5959:                                       ; preds = %.preheader3553
  %i.ear = zext i32 %i.eao to i64
  br label %bb.wq

bb.wp:                                            ; preds = %bb.wq
  %i.eas = add nsw i64 %indvars.iv47495957, -1    ; 2 uses
  %.not.i1573 = icmp eq i64 %i.eas, 0
  br i1 %.not.i1573, label %bigint_cmp.exit1579.thread3215, label %bb.wq, !llvm.loop !153

bb.wq:                                            ; preds = %.lr.ph5959, %bb.wp
  %.016.i15715958 = phi i32 [ undef, %.lr.ph5959 ], [ %.1.i1576, %bb.wp ]
  %indvars.iv47495957 = phi i64 [ %i.ear, %.lr.ph5959 ], [ %i.eas, %bb.wp ] ; 3 uses
  %i.eat = getelementptr [8 x i8], ptr %5, i64 %indvars.iv47495957
  %i.eau = load i64, ptr %i.eat, align 8, !tbaa !91 ; 3 uses
  %i.eav = getelementptr [8 x i8], ptr %6, i64 %indvars.iv47495957
  %i.eaw = load i64, ptr %i.eav, align 8, !tbaa !91 ; 3 uses
  %.not3445 = icmp ult i64 %i.eau, %i.eaw
  %.not3446 = icmp ugt i64 %i.eau, %i.eaw
  %..016.i1574 = select i1 %.not3446, i32 1, i32 %.016.i15715958
  %.1.i1576 = select i1 %.not3445, i32 -1, i32 %..016.i1574 ; 3 uses
  %cond.i1577 = icmp eq i64 %i.eau, %i.eaw
  br i1 %cond.i1577, label %bb.wp, label %bigint_cmp.exit1579, !llvm.loop !153

bigint_cmp.exit1579:                              ; preds = %bb.wq
  %.not989.i901 = icmp eq i32 %.1.i1576, 0
  br i1 %.not989.i901, label %bigint_cmp.exit1579.thread3215, label %bigint_cmp.exit1579.thread, !prof !124

bigint_cmp.exit1579.thread:                       ; preds = %bigint_mul_pow2.exit1540, %bb.wo, %bigint_cmp.exit1579
  %.2.i15783214 = phi i32 [ %.1.i1576, %bigint_cmp.exit1579 ], [ -1, %bigint_mul_pow2.exit1540 ], [ 1, %bb.wo ]
  %i.eax = icmp sgt i32 %.2.i15783214, 0
  %i.eay = zext i1 %i.eax to i64
  br label %bb.wr

bigint_cmp.exit1579.thread3215:                   ; preds = %bb.wp, %.preheader3553, %bigint_cmp.exit1579
  %i.eaz = and i64 %.0.i1498.ph, 1
  br label %bb.wr

bb.wr:                                            ; preds = %bigint_cmp.exit1579.thread3215, %bigint_cmp.exit1579.thread
  %.pn.i902 = phi i64 [ %i.eay, %bigint_cmp.exit1579.thread ], [ %i.eaz, %bigint_cmp.exit1579.thread3215 ]
  %.0895.i903 = add nuw nsw i64 %.pn.i902, %.0.i1498.ph ; 2 uses
  %i.eba = icmp eq i64 %.0895.i903, 9218868437227405312
  br i1 %i.eba, label %bb.ws, label %bb.wx, !prof !8

bb.ws:                                            ; preds = %bb.wr
  %i.ebb = and i32 %.fr, 128
  %.not3447 = icmp eq i32 %i.ebb, 0
  br i1 %.not3447, label %bb.wu, label %bb.wt, !prof !25

bb.wt:                                            ; preds = %bb.ws
  %i.ebc = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.ebc, align 1, !tbaa !81
  %i.ebd = ptrtoint ptr %.33.i877 to i64
  %i.ebe = ptrtoint ptr %i.bzz to i64
  %i.ebf = sub i64 %i.ebd, %i.ebe
  %i.ebg = shl i64 %i.ebf, 8
  %i.ebh = or disjoint i64 %i.ebg, 1
  store i64 %i.ebh, ptr %.6623, align 8, !tbaa !79
  %i.ebi = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store ptr %i.bzz, ptr %i.ebi, align 8, !tbaa !81
  store ptr %.33.i877, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit986.thread3225

bb.wu:                                            ; preds = %bb.ws
  %i.ebj = and i32 %.fr, 16
  %.not3448 = icmp eq i32 %i.ebj, 0
  br i1 %.not3448, label %bb.ww, label %bb.wv, !prof !25

bb.wv:                                            ; preds = %bb.wu
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.ebk = select i1 %i.cad, i64 -4503599627370496, i64 9218868437227405312
  %i.ebl = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ebk, ptr %i.ebl, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

bb.ww:                                            ; preds = %bb.wu
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  store ptr %i.bzz, ptr %i.d, align 8, !tbaa !92
  br label %read_num.exit986

bb.wx:                                            ; preds = %bb.wr
  store i64 20, ptr %.6623, align 8, !tbaa !79
  %i.ebm = select i1 %i.cad, i64 -9223372036854775808, i64 0
  %i.ebn = or disjoint i64 %.0895.i903, %i.ebm
  %i.ebo = getelementptr inbounds nuw i8, ptr %.6623, i64 8
  store i64 %i.ebn, ptr %i.ebo, align 8, !tbaa !81
  br label %read_num.exit986.thread3225

read_num.exit986.thread3220:                      ; preds = %bb.uh, %bb.om, %bb.tw, %bb.uo, %bb.tn, %read_inf_or_nan.exit1129.thread, %bb.uc, %bb.ux, %bb.oo, %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.atc

read_num.exit986.thread3225:                      ; preds = %bb.vp, %bb.vr, %bb.vu, %bb.wt, %bb.wv, %bb.wx
  store ptr %.33.i877, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.sink.split5680

read_num.exit986:                                 ; preds = %bb.vs, %bb.ww
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.atc

bb.wy:                                            ; preds = %bb.nl
  switch i8 %i.bzb, label %bb.aba [
    i8 34, label %bb.wz
    i8 116, label %bb.aaq
    i8 102, label %bb.aat
    i8 110, label %bb.aaw
    i8 93, label %bb.aaz
  ]

bb.wz:                                            ; preds = %bb.wy
  %i.ebp = getelementptr inbounds nuw i8, ptr %.4621, i64 16 ; 3 uses
  %.not837 = icmp ult ptr %i.ebp, %.4649
  br i1 %.not837, label %bb.xb, label %bb.xa, !prof !25

bb.xa:                                            ; preds = %bb.wz
  %i.ebq = lshr i64 %.4726, 1
  %i.ebr = add i64 %i.ebq, %.4726                 ; 4 uses
  %i.ebs = shl i64 %.4726, 4
  %i.ebt = shl i64 %i.ebr, 4
  %i.ebu = call ptr %.sroa.5.0.copyload(ptr noundef %.sroa.13338.0.copyload, ptr noundef %.4686, i64 noundef %i.ebs, i64 noundef %i.ebt) #33 ; 7 uses
  %.not838 = icmp eq ptr %i.ebu, null
  br i1 %.not838, label %bb.ate, label %.thread3227

.thread3227:                                      ; preds = %bb.xa
  %i.ebv = ptrtoint ptr %i.ebp to i64
  %i.ebw = ptrtoint ptr %.4686 to i64             ; 3 uses
  %i.ebx = sub i64 %i.ebv, %i.ebw
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebu, i64 %i.ebx
  %i.ebz = ptrtoint ptr %.4613 to i64
  %i.eca = sub i64 %i.ebz, %i.ebw
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.ebu, i64 %i.eca
  %i.ecc = load ptr, ptr %i.z, align 8, !tbaa !269
  %i.ecd = ptrtoint ptr %i.ecc to i64
  %i.ece = sub i64 %i.ecd, %i.ebw
  %i.ecf = getelementptr inbounds nuw i8, ptr %i.ebu, i64 %i.ece
  store ptr %i.ecf, ptr %i.z, align 8, !tbaa !269
  store ptr %i.ebu, ptr %i.ab, align 8, !tbaa !265
  %i.ecg = getelementptr [16 x i8], ptr %i.ebu, i64 %i.ebr
  %i.ech = getelementptr i8, ptr %i.ecg, i64 -32  ; 2 uses
  store ptr %i.ech, ptr %i.ad, align 8, !tbaa !270
  %.pre4935 = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %bb.xb

bb.xb:                                            ; preds = %.thread3227, %bb.wz
  %i.eci = phi ptr [ %.pre4935, %.thread3227 ], [ %i.bza, %bb.wz ]
  %.6728 = phi i64 [ %i.ebr, %.thread3227 ], [ %.4726, %bb.wz ] ; 22 uses
  %.8690 = phi ptr [ %i.ebu, %.thread3227 ], [ %.4686, %bb.wz ]
  %.8653 = phi ptr [ %i.ech, %.thread3227 ], [ %.4649, %bb.wz ] ; 22 uses
  %.8625 = phi ptr [ %i.eby, %.thread3227 ], [ %i.ebp, %bb.wz ] ; 3 uses
  %.8 = phi ptr [ %i.ecb, %.thread3227 ], [ %.4613, %bb.wz ] ; 22 uses
  %i.ecj = add i64 %.2712, 1
  %i.eck = getelementptr inbounds nuw i8, ptr %i.eci, i64 1 ; 3 uses
  %i.ecl = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %.not113.i1140 = icmp eq ptr %i.ecl, null
  br i1 %.not113.i1140, label %bb.xd, label %bb.xc, !prof !25

bb.xc:                                            ; preds = %bb.xb
  %i.ecm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ecn = load ptr, ptr %i.ecm, align 8, !tbaa !92 ; 2 uses
  %.not114.i1141 = icmp eq ptr %i.ecn, null
  br i1 %.not114.i1141, label %bb.xd, label %.preheader3544

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  %.93084 = phi ptr [ %i.eck, %bb.xb ], [ %i.ecl, %bb.xc ]
  %i.eco = and i32 %.fr, 64
  %.not3407 = icmp eq i32 %i.eco, 0
  br label %.backedge3550

.backedge3550:                                    ; preds = %.backedge3550.backedge, %bb.xd
  %.103085 = phi ptr [ %.93084, %bb.xd ], [ %.103085.be, %.backedge3550.backedge ] ; 18 uses
  %i.ecp = load i8, ptr %.103085, align 1, !tbaa !81 ; 2 uses
  %i.ecq = zext i8 %i.ecp to i64
  %i.ecr = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ecq
  %i.ecs = load i8, ptr %i.ecr, align 1, !tbaa !81
  %i.ect = trunc i8 %i.ecs to i1
  br i1 %i.ect, label %bb.xe, label %bb.xu, !prof !25

bb.xe:                                            ; preds = %.backedge3550
  %i.ecu = getelementptr inbounds nuw i8, ptr %.103085, i64 1 ; 2 uses
  %i.ecv = load i8, ptr %i.ecu, align 1, !tbaa !81 ; 2 uses
  %i.ecw = zext i8 %i.ecv to i64
  %i.ecx = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.ecw
  %i.ecy = load i8, ptr %i.ecx, align 1, !tbaa !81
  %i.ecz = trunc i8 %i.ecy to i1
  br i1 %i.ecz, label %bb.xf, label %bb.xu, !prof !25

bb.xf:                                            ; preds = %bb.xe
  %i.eda = getelementptr inbounds nuw i8, ptr %.103085, i64 2 ; 2 uses
  %i.edb = load i8, ptr %i.eda, align 1, !tbaa !81 ; 2 uses
  %i.edc = zext i8 %i.edb to i64
  %i.edd = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.edc
end_hunk_15
begin_hunk_16_@yyjson_incr_read:bb.a
  %i.huk = zext i1 %i.huj to i64
  %i.hul = add nuw i64 %i.huk, %i.htv
  br label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr, %bb.aqp
  %.03028 = phi i64 [ %i.htv, %bb.aqp ], [ %i.hul, %bb.aqr ] ; 2 uses
  %i.hum = icmp sgt i64 %.03028, -1               ; 2 uses
  %.neg983.i = sext i1 %i.hum to i32
  %i.hun = zext i1 %i.hum to i64
  %i.huo = shl i64 %.03028, %i.hun                ; 2 uses
  %i.hup = and i64 %i.huo, 1024
  %i.huq = add i64 %i.hup, %i.huo                 ; 2 uses
  %i.hur = icmp ult i64 %i.huq, 1024
  %spec.select3350.v = select i1 %i.hur, i32 65, i32 64
  %i.hus = lshr i64 %i.huq, 11
  %reass.sub4451 = sub nsw i32 %i.htn, %i.htp
  %i.hut = add nsw i32 %reass.sub4451, 1086
  %spec.select3350 = add nsw i32 %i.hut, %.neg983.i
  %i.huu = add nsw i32 %spec.select3350, %spec.select3350.v
  %i.huv = zext nneg i32 %i.huu to i64
  %i.huw = shl nuw nsw i64 %i.huv, 52
  %i.hux = and i64 %i.hus, 4503599627370495
  %i.huy = or disjoint i64 %i.huw, %i.hux
  store i64 20, ptr %i.gqu, align 8, !tbaa !79
  %i.huz = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.hva = or disjoint i64 %i.huy, %i.huz
  %i.hvb = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hva, ptr %i.hvb, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !92
  br label %.sink.split5712

.critedge992.i:                                   ; preds = %..critedge992.i_crit_edge, %bb.aqq
  %.pre-phi5040 = phi i32 [ %.pre5039, %..critedge992.i_crit_edge ], [ %i.htp, %bb.aqq ]
  %.pre-phi5038 = phi i128 [ %.pre5037, %..critedge992.i_crit_edge ], [ %i.htr, %bb.aqq ]
  %.pre-phi5036 = phi i32 [ %.pre5035, %..critedge992.i_crit_edge ], [ %i.htn, %bb.aqq ]
  %.pre-phi5030 = phi i32 [ %.pre5029, %..critedge992.i_crit_edge ], [ %i.htg, %bb.aqq ] ; 2 uses
  %.pre-phi5026 = phi i64 [ %.pre5025, %..critedge992.i_crit_edge ], [ %i.hto, %bb.aqq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.hvc = select i1 %i.htc, i64 0, i64 4
  %i.hvd = shl i64 %i.hvc, %.pre-phi5026          ; 2 uses
  %i.hve = add i32 %.pre-phi5030, 686
  %i.hvf = sext i32 %i.hve to i64
  %i.hvg = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hvf
  %i.hvh = load i64, ptr %i.hvg, align 16, !tbaa !91
  %i.hvi = add i32 %.pre-phi5030, 687
  %i.hvj = sext i32 %i.hvi to i64
  %i.hvk = getelementptr inbounds [8 x i8], ptr @pow10_sig_table, i64 %i.hvj
  %i.hvl = load i64, ptr %i.hvk, align 8, !tbaa !91
  %i.hvm = lshr i64 %i.hvl, 63
  %i.hvn = add i64 %i.hvm, %i.hvh
  %i.hvo = zext i64 %i.hvn to i128
  %i.hvp = mul nuw i128 %.pre-phi5038, %i.hvo     ; 2 uses
  %i.hvq = lshr i128 %i.hvp, 64
  %i.hvr = trunc nuw i128 %i.hvq to i64
  %i.hvs = trunc i128 %i.hvp to i64
  %i.hvt = lshr i64 %i.hvs, 63
  %i.hvu = add nuw i64 %i.hvt, %i.hvr             ; 2 uses
  %.not986.i = icmp eq i64 %i.hvd, 0
  %i.hvv = select i1 %.not986.i, i64 8, i64 9
  %i.hvw = add i64 %i.hvv, %i.hvd
  %i.hvx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hvu, i1 true) ; 3 uses
  %i.hvy = trunc nuw nsw i64 %i.hvx to i32
  %i.hvz = shl i64 %i.hvu, %i.hvx                 ; 3 uses
  %i.hwa = add nsw i32 %.pre-phi5036, 64
  %i.hwb = add nuw nsw i32 %.pre-phi5040, %i.hvy
  %i.hwc = sub nsw i32 %i.hwa, %i.hwb             ; 7 uses
  %i.hwd = shl i64 %i.hvw, %i.hvx                 ; 3 uses
  %i.hwe = icmp sgt i32 %i.hwc, -1086
  br i1 %i.hwe, label %.thread3309, label %bb.aqt, !prof !25

bb.aqt:                                           ; preds = %.critedge992.i
  %i.hwf = icmp samesign ult i32 %i.hwc, -1137
  br i1 %i.hwf, label %.thread3306, label %bb.aqu

bb.aqu:                                           ; preds = %bb.aqt
  %i.hwg = sub nuw nsw i32 -1074, %i.hwc          ; 2 uses
  %i.hwh = icmp samesign ult i32 %i.hwc, -1134
  br i1 %i.hwh, label %.thread3306, label %.thread3309, !prof !134

.thread3306:                                      ; preds = %bb.aqt, %bb.aqu
  %.0897.i3308 = phi i32 [ %i.hwg, %bb.aqu ], [ 64, %bb.aqt ]
  %i.hwi = add nsw i32 %.0897.i3308, -60          ; 2 uses
  %i.hwj = zext nneg i32 %i.hwi to i64            ; 2 uses
  %i.hwk = lshr i64 %i.hvz, %i.hwj
  %i.hwl = add nsw i32 %i.hwi, %i.hwc
  %i.hwm = lshr i64 %i.hwd, %i.hwj
  %i.hwn = add nuw i64 %i.hwm, 9
  br label %.thread3309

.thread3309:                                      ; preds = %.critedge992.i, %.thread3306, %bb.aqu
  %.0898.i = phi i64 [ %i.hwn, %.thread3306 ], [ %i.hwd, %bb.aqu ], [ %i.hwd, %.critedge992.i ] ; 2 uses
  %.0896.i = phi i32 [ 60, %.thread3306 ], [ %i.hwg, %bb.aqu ], [ 11, %.critedge992.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hwl, %.thread3306 ], [ %i.hwc, %bb.aqu ], [ %i.hwc, %.critedge992.i ]
  %.sroa.025.0.i = phi i64 [ %i.hwk, %.thread3306 ], [ %i.hvz, %bb.aqu ], [ %i.hvz, %.critedge992.i ] ; 2 uses
  %i.hwo = zext nneg i32 %.0896.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hwo
  %i.hwp = xor i64 %notmask.i, -1
  %i.hwq = and i64 %.sroa.025.0.i, %i.hwp
  %i.hwr = shl nuw nsw i64 %i.hwq, 3              ; 2 uses
  %i.hws = add nsw i32 %.0896.i, -1
  %i.hwt = zext nneg i32 %i.hws to i64
  %i.hwu = shl nuw nsw i64 8, %i.hwt              ; 2 uses
  %i.hwv = lshr i64 %.sroa.025.0.i, %i.hwo
  %i.hww = add i64 %i.hwu, %.0898.i
  %i.hwx = icmp uge i64 %i.hwr, %i.hww            ; 2 uses
  %i.hwy = zext i1 %i.hwx to i64
  %i.hwz = add nuw nsw i64 %i.hwv, %i.hwy         ; 3 uses
  %i.hxa = icmp eq i64 %i.hwz, 0
  br i1 %i.hxa, label %bb.are, label %bb.aqv, !prof !8

bb.aqv:                                           ; preds = %.thread3309
  %i.hxb = add nsw i32 %.sroa.19.0.in.i, %.0896.i
  %i.hxc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hwz, i1 true) ; 2 uses
  %i.hxd = trunc nuw nsw i64 %i.hxc to i32
  %i.hxe = shl i64 %i.hwz, %i.hxc
  %i.hxf = lshr i64 %i.hxe, 11                    ; 2 uses
  %i.hxg = sub nsw i32 %i.hxb, %i.hxd             ; 5 uses
  %i.hxh = icmp sgt i32 %i.hxg, 960
  br i1 %i.hxh, label %diy_fp_to_ieee_raw.exit1501, label %bb.aqw, !prof !8

bb.aqw:                                           ; preds = %bb.aqv
  %i.hxi = icmp sgt i32 %i.hxg, -1086
  br i1 %i.hxi, label %bb.aqx, label %bb.aqy, !prof !25

bb.aqx:                                           ; preds = %bb.aqw
  %i.hxj = add nsw i32 %i.hxg, 1086
  %i.hxk = zext nneg i32 %i.hxj to i64
  %i.hxl = shl nuw nsw i64 %i.hxk, 52
  %i.hxm = and i64 %i.hxf, 4503599627370495
  %i.hxn = or disjoint i64 %i.hxl, %i.hxm
  br label %bb.are

bb.aqy:                                           ; preds = %bb.aqw
  %i.hxo = icmp samesign ugt i32 %i.hxg, -1138
  br i1 %i.hxo, label %bb.aqz, label %bb.are, !prof !25

bb.aqz:                                           ; preds = %bb.aqy
  %i.hxp = sub nuw nsw i32 -1085, %i.hxg
  %i.hxq = zext nneg i32 %i.hxp to i64
  %i.hxr = lshr i64 %i.hxf, %i.hxq
  br label %bb.are

diy_fp_to_ieee_raw.exit1501:                      ; preds = %bb.aqv
  %i.hxs = and i32 %.fr, 128
  %.not3392 = icmp eq i32 %i.hxs, 0
  br i1 %.not3392, label %bb.arb, label %bb.ara, !prof !25

bb.ara:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hxt = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.hxt, align 1, !tbaa !81
  %i.hxu = ptrtoint ptr %.33.i to i64
  %i.hxv = ptrtoint ptr %i.gqq to i64
  %i.hxw = sub i64 %i.hxu, %i.hxv
  %i.hxx = shl i64 %i.hxw, 8
  %i.hxy = or disjoint i64 %i.hxx, 1
  store i64 %i.hxy, ptr %i.gqu, align 8, !tbaa !79
  %i.hxz = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqq, ptr %i.hxz, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit.thread3326

bb.arb:                                           ; preds = %diy_fp_to_ieee_raw.exit1501
  %i.hya = and i32 %.fr, 16
  %.not3393 = icmp eq i32 %i.hya, 0
  br i1 %.not3393, label %bb.ard, label %bb.arc, !prof !25

bb.arc:                                           ; preds = %bb.arb
  store i64 20, ptr %i.gqu, align 8, !tbaa !79
  %i.hyb = select i1 %i.gqx, i64 -4503599627370496, i64 9218868437227405312
  %i.hyc = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hyb, ptr %i.hyc, align 8, !tbaa !81
  br label %read_num.exit.thread3326

bb.ard:                                           ; preds = %bb.arb
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  br label %read_num.exit

bb.are:                                           ; preds = %.thread3309, %bb.aqx, %bb.aqz, %bb.aqy
  %.0.i1500.ph = phi i64 [ 0, %bb.aqy ], [ %i.hxr, %bb.aqz ], [ %i.hxn, %bb.aqx ], [ 0, %.thread3309 ] ; 7 uses
  %i.hyd = sub i64 %i.hwu, %.0898.i
  %.not987.i = icmp ule i64 %i.hwr, %i.hyd
  %spec.select.i = or i1 %.not987.i, %i.hwx
  br i1 %spec.select.i, label %bb.arf, label %bb.arg, !prof !25

bb.arf:                                           ; preds = %bb.are
  store i64 20, ptr %i.gqu, align 8, !tbaa !79
  %i.hye = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.hyf = or disjoint i64 %.0.i1500.ph, %i.hye
  %i.hyg = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.hyf, ptr %i.hyg, align 8, !tbaa !81
  br label %read_num.exit.thread3326

bb.arg:                                           ; preds = %bb.are
  %.not988.i = icmp samesign ult i64 %.0.i1500.ph, 4503599627370496 ; 2 uses
  %i.hyh = and i64 %.0.i1500.ph, 4503599627370495
  %i.hyi = or disjoint i64 %i.hyh, 4503599627370496
  %i.hyj = lshr i64 %.0.i1500.ph, 52
  %i.hyk = trunc nuw nsw i64 %i.hyj to i32
  %i.hyl = add nsw i32 %i.hyk, -1076
  %.sroa.9.0.i = select i1 %.not988.i, i32 -1075, i32 %i.hyl ; 4 uses
  %.sroa.018.0.i = select i1 %.not988.i, i64 %.0.i1500.ph, i64 %i.hyi
  %i.hym = shl nuw nsw i64 %.sroa.018.0.i, 1
  %i.hyn = or disjoint i64 %i.hym, 1
  call fastcc void @bigint_set_buf(ptr noundef %7, i64 noundef %.22894.i, ptr noundef %i.c, ptr noundef %.3863.i, ptr noundef %.3867.i, ptr noundef %.23.i)
  %i.hyo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 29 uses
  store i64 %i.hyn, ptr %i.hyo, align 8, !tbaa !91
  %i.hyp = load i32, ptr %i.c, align 4, !tbaa !114 ; 6 uses
  %i.hyq = icmp sgt i32 %i.hyp, -1
  br i1 %i.hyq, label %.preheader3597, label %bb.aro

.preheader3597:                                   ; preds = %bb.arg
  %.promoted3907 = load i32, ptr %7, align 8      ; 2 uses
  %i.hyr = icmp samesign ugt i32 %i.hyp, 18
  br i1 %i.hyr, label %.lr.ph3910, label %._crit_edge3911

.lr.ph3910:                                       ; preds = %.preheader3597
  %i.hys = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %bb.arh

bb.arh:                                           ; preds = %.lr.ph3910, %bigint_mul_u64.exit1603
  %.0.i15133909 = phi i32 [ %i.hyp, %.lr.ph3910 ], [ %i.iag, %bigint_mul_u64.exit1603 ] ; 2 uses
  %i.hyt = phi i32 [ %.promoted3907, %.lr.ph3910 ], [ %i.iaf, %bigint_mul_u64.exit1603 ] ; 9 uses
  %.not4449 = icmp eq i32 %i.hyt, 0
  br i1 %.not4449, label %._crit_edge3897, label %.lr.ph3896.preheader

.lr.ph3896.preheader:                             ; preds = %bb.arh
  %wide.trip.count4653 = zext i32 %i.hyt to i64
  br label %.lr.ph3896

.lr.ph3896:                                       ; preds = %.lr.ph3896.preheader, %bb.ari
  %indvars.iv4650 = phi i64 [ 0, %.lr.ph3896.preheader ], [ %indvars.iv.next4651, %bb.ari ] ; 3 uses
  %i.hyu = getelementptr inbounds nuw [8 x i8], ptr %i.hys, i64 %indvars.iv4650
  %i.hyv = load i64, ptr %i.hyu, align 8, !tbaa !91
  %.not.i1602 = icmp eq i64 %i.hyv, 0
  br i1 %.not.i1602, label %bb.ari, label %._crit_edge3897.loopexit

bb.ari:                                           ; preds = %.lr.ph3896
  %indvars.iv.next4651 = add nuw nsw i64 %indvars.iv4650, 1 ; 2 uses
  %exitcond4654.not = icmp eq i64 %indvars.iv.next4651, %wide.trip.count4653
  br i1 %exitcond4654.not, label %bigint_mul_u64.exit1603, label %.lr.ph3896, !llvm.loop !135

._crit_edge3897.loopexit:                         ; preds = %.lr.ph3896
  %i.hyw = trunc nuw i64 %indvars.iv4650 to i32
  br label %._crit_edge3897

._crit_edge3897:                                  ; preds = %._crit_edge3897.loopexit, %bb.arh
  %.018.i1598.lcssa = phi i32 [ 0, %bb.arh ], [ %i.hyw, %._crit_edge3897.loopexit ] ; 2 uses
  %i.hyx = icmp ult i32 %.018.i1598.lcssa, %i.hyt
  br i1 %i.hyx, label %.lr.ph3904.preheader, label %bigint_mul_u64.exit1603

.lr.ph3904.preheader:                             ; preds = %._crit_edge3897
  %i.hyy = zext i32 %.018.i1598.lcssa to i64      ; 4 uses
  %wide.trip.count4658 = zext i32 %i.hyt to i64   ; 2 uses
  %i.hyz = sub nsw i64 %wide.trip.count4658, %i.hyy ; 3 uses
  %xtraiter6443 = and i64 %i.hyz, 1
  %i.hza = add nsw i64 %wide.trip.count4658, -1
  %i.hzb = icmp eq i64 %i.hza, %i.hyy
  br i1 %i.hzb, label %.lr.ph3904.epil.preheader, label %.lr.ph3904.preheader.new

.lr.ph3904.preheader.new:                         ; preds = %.lr.ph3904.preheader
  %unroll_iter6448 = and i64 %i.hyz, -2
  br label %.lr.ph3904

.lr.ph3904:                                       ; preds = %.lr.ph3904, %.lr.ph3904.preheader.new
  %indvars.iv4655 = phi i64 [ %i.hyy, %.lr.ph3904.preheader.new ], [ %indvars.iv.next4656.1, %.lr.ph3904 ] ; 3 uses
  %.0.i16003902 = phi i64 [ 0, %.lr.ph3904.preheader.new ], [ %i.hzr, %.lr.ph3904 ]
  %niter6449 = phi i64 [ 0, %.lr.ph3904.preheader.new ], [ %niter6449.next.1, %.lr.ph3904 ]
  %i.hzc = getelementptr inbounds nuw [8 x i8], ptr %i.hys, i64 %indvars.iv4655 ; 2 uses
  %i.hzd = load i64, ptr %i.hzc, align 8, !tbaa !91
  %i.hze = zext i64 %i.hzd to i128
  %i.hzf = mul nuw i128 %i.hze, 10000000000000000000
  %i.hzg = zext i64 %.0.i16003902 to i128
  %i.hzh = add nuw i128 %i.hzf, %i.hzg            ; 2 uses
  %i.hzi = lshr i128 %i.hzh, 64
  %i.hzj = trunc i128 %i.hzh to i64
  store i64 %i.hzj, ptr %i.hzc, align 8, !tbaa !91
  %i.hzk = getelementptr inbounds nuw [8 x i8], ptr %i.hys, i64 %indvars.iv4655
  %i.hzl = getelementptr inbounds nuw i8, ptr %i.hzk, i64 8 ; 2 uses
  %i.hzm = load i64, ptr %i.hzl, align 8, !tbaa !91
  %i.hzn = zext i64 %i.hzm to i128
  %i.hzo = mul nuw i128 %i.hzn, 10000000000000000000
  %i.hzp = add nuw i128 %i.hzo, %i.hzi            ; 2 uses
  %i.hzq = lshr i128 %i.hzp, 64                   ; 2 uses
  %i.hzr = trunc nuw i128 %i.hzq to i64           ; 3 uses
  %i.hzs = trunc i128 %i.hzp to i64
  store i64 %i.hzs, ptr %i.hzl, align 8, !tbaa !91
  %indvars.iv.next4656.1 = add nuw nsw i64 %indvars.iv4655, 2 ; 2 uses
  %niter6449.next.1 = add i64 %niter6449, 2       ; 2 uses
  %niter6449.ncmp.1 = icmp eq i64 %niter6449.next.1, %unroll_iter6448
  br i1 %niter6449.ncmp.1, label %._crit_edge3905.unr-lcssa, label %.lr.ph3904, !llvm.loop !136

._crit_edge3905.unr-lcssa:                        ; preds = %.lr.ph3904
  %lcmp.mod6444.not = icmp eq i64 %xtraiter6443, 0
  br i1 %lcmp.mod6444.not, label %._crit_edge3905, label %.lr.ph3904.epil.preheader

.lr.ph3904.epil.preheader:                        ; preds = %._crit_edge3905.unr-lcssa, %.lr.ph3904.preheader
  %indvars.iv4655.epil.init = phi i64 [ %i.hyy, %.lr.ph3904.preheader ], [ %indvars.iv.next4656.1, %._crit_edge3905.unr-lcssa ]
  %.0.i16003902.epil.init = phi i64 [ 0, %.lr.ph3904.preheader ], [ %i.hzr, %._crit_edge3905.unr-lcssa ]
  %lcmp.mod6447 = trunc i64 %i.hyz to i1
  call void @llvm.assume(i1 %lcmp.mod6447)
  %i.hzt = getelementptr inbounds nuw [8 x i8], ptr %i.hys, i64 %indvars.iv4655.epil.init ; 2 uses
  %i.hzu = load i64, ptr %i.hzt, align 8, !tbaa !91
  %i.hzv = zext i64 %i.hzu to i128
  %i.hzw = mul nuw i128 %i.hzv, 10000000000000000000
  %i.hzx = zext i64 %.0.i16003902.epil.init to i128
  %i.hzy = add nuw i128 %i.hzw, %i.hzx            ; 2 uses
  %i.hzz = lshr i128 %i.hzy, 64                   ; 2 uses
  %i.iaa = trunc nuw i128 %i.hzz to i64
  %i.iab = trunc i128 %i.hzy to i64
  store i64 %i.iab, ptr %i.hzt, align 8, !tbaa !91
  br label %._crit_edge3905

._crit_edge3905:                                  ; preds = %._crit_edge3905.unr-lcssa, %.lr.ph3904.epil.preheader
  %.lcssa6350 = phi i128 [ %i.hzq, %._crit_edge3905.unr-lcssa ], [ %i.hzz, %.lr.ph3904.epil.preheader ]
  %.lcssa6349 = phi i64 [ %i.hzr, %._crit_edge3905.unr-lcssa ], [ %i.iaa, %.lr.ph3904.epil.preheader ]
  %.not19.i1601 = icmp eq i128 %.lcssa6350, 0
  br i1 %.not19.i1601, label %bigint_mul_u64.exit1603, label %bb.arj

bb.arj:                                           ; preds = %._crit_edge3905
  %i.iac = add i32 %i.hyt, 1
  %i.iad = zext i32 %i.hyt to i64
  %i.iae = getelementptr inbounds nuw [8 x i8], ptr %i.hys, i64 %i.iad
  store i64 %.lcssa6349, ptr %i.iae, align 8, !tbaa !91
  br label %bigint_mul_u64.exit1603

bigint_mul_u64.exit1603:                          ; preds = %bb.ari, %._crit_edge3897, %._crit_edge3905, %bb.arj
  %i.iaf = phi i32 [ %i.hyt, %._crit_edge3905 ], [ %i.iac, %bb.arj ], [ %i.hyt, %._crit_edge3897 ], [ %i.hyt, %bb.ari ] ; 2 uses
  %i.iag = add nsw i32 %.0.i15133909, -19         ; 2 uses
  %i.iah = icmp sgt i32 %.0.i15133909, 37
  br i1 %i.iah, label %bb.arh, label %._crit_edge3911, !llvm.loop !137

._crit_edge3911:                                  ; preds = %bigint_mul_u64.exit1603, %.preheader3597
  %i.iai = phi i32 [ %.promoted3907, %.preheader3597 ], [ %i.iaf, %bigint_mul_u64.exit1603 ] ; 7 uses
  %.0.i1513.lcssa = phi i32 [ %i.hyp, %.preheader3597 ], [ %i.iag, %bigint_mul_u64.exit1603 ] ; 2 uses
  store i32 %i.iai, ptr %7, align 8
  %.not.i1514 = icmp eq i32 %.0.i1513.lcssa, 0
  br i1 %.not.i1514, label %bigint_mul_pow10.exit1515, label %bb.ark

bb.ark:                                           ; preds = %._crit_edge3911
  %i.iaj = sext i32 %.0.i1513.lcssa to i64
  %i.iak = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.iaj
  %i.ial = load i64, ptr %i.iak, align 8, !tbaa !91
  %i.iam = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %.not4450 = icmp eq i32 %i.iai, 0
  br i1 %.not4450, label %._crit_edge3917, label %.lr.ph3916.preheader

.lr.ph3916.preheader:                             ; preds = %bb.ark
  %wide.trip.count4663 = zext i32 %i.iai to i64
  br label %.lr.ph3916

.lr.ph3916:                                       ; preds = %.lr.ph3916.preheader, %bb.arl
  %indvars.iv4660 = phi i64 [ 0, %.lr.ph3916.preheader ], [ %indvars.iv.next4661, %bb.arl ] ; 3 uses
  %i.ian = getelementptr inbounds nuw [8 x i8], ptr %i.iam, i64 %indvars.iv4660
  %i.iao = load i64, ptr %i.ian, align 8, !tbaa !91
  %.not.i1608 = icmp eq i64 %i.iao, 0
  br i1 %.not.i1608, label %bb.arl, label %._crit_edge3917.loopexit

bb.arl:                                           ; preds = %.lr.ph3916
  %indvars.iv.next4661 = add nuw nsw i64 %indvars.iv4660, 1 ; 2 uses
  %exitcond4664.not = icmp eq i64 %indvars.iv.next4661, %wide.trip.count4663
  br i1 %exitcond4664.not, label %bigint_mul_pow10.exit1515, label %.lr.ph3916, !llvm.loop !135

._crit_edge3917.loopexit:                         ; preds = %.lr.ph3916
  %i.iap = trunc nuw i64 %indvars.iv4660 to i32
  br label %._crit_edge3917

._crit_edge3917:                                  ; preds = %._crit_edge3917.loopexit, %bb.ark
  %.018.i1604.lcssa = phi i32 [ 0, %bb.ark ], [ %i.iap, %._crit_edge3917.loopexit ] ; 2 uses
  %i.iaq = icmp ult i32 %.018.i1604.lcssa, %i.iai
  br i1 %i.iaq, label %.lr.ph3924, label %bigint_mul_pow10.exit1515

.lr.ph3924:                                       ; preds = %._crit_edge3917
  %i.iar = zext i64 %i.ial to i128                ; 3 uses
  %i.ias = zext i32 %.018.i1604.lcssa to i64      ; 4 uses
  %wide.trip.count4668 = zext i32 %i.iai to i64   ; 2 uses
  %i.iat = sub nsw i64 %wide.trip.count4668, %i.ias ; 3 uses
  %xtraiter6451 = and i64 %i.iat, 1
  %i.iau = add nsw i64 %wide.trip.count4668, -1
  %i.iav = icmp eq i64 %i.iau, %i.ias
  br i1 %i.iav, label %.epil.preheader6450, label %.lr.ph3924.new

.lr.ph3924.new:                                   ; preds = %.lr.ph3924
  %unroll_iter6456 = and i64 %i.iat, -2
  br label %bb.arm

bb.arm:                                           ; preds = %bb.arm, %.lr.ph3924.new
  %indvars.iv4665 = phi i64 [ %i.ias, %.lr.ph3924.new ], [ %indvars.iv.next4666.1, %bb.arm ] ; 3 uses
  %.0.i16063922 = phi i64 [ 0, %.lr.ph3924.new ], [ %i.ibl, %bb.arm ]
  %niter6457 = phi i64 [ 0, %.lr.ph3924.new ], [ %niter6457.next.1, %bb.arm ]
  %i.iaw = getelementptr inbounds nuw [8 x i8], ptr %i.iam, i64 %indvars.iv4665 ; 2 uses
  %i.iax = load i64, ptr %i.iaw, align 8, !tbaa !91
  %i.iay = zext i64 %i.iax to i128
  %i.iaz = mul nuw i128 %i.iay, %i.iar
  %i.iba = zext i64 %.0.i16063922 to i128
  %i.ibb = add nuw i128 %i.iaz, %i.iba            ; 2 uses
  %i.ibc = lshr i128 %i.ibb, 64
  %i.ibd = trunc i128 %i.ibb to i64
  store i64 %i.ibd, ptr %i.iaw, align 8, !tbaa !91
  %i.ibe = getelementptr inbounds nuw [8 x i8], ptr %i.iam, i64 %indvars.iv4665
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.ibe, i64 8 ; 2 uses
end_hunk_16
begin_hunk_17_@yyjson_incr_read:bb.a
.lr.ph3870:                                       ; preds = %.lr.ph3870, %.lr.ph3870.preheader.new
  %indvars.iv4635 = phi i64 [ %i.ich, %.lr.ph3870.preheader.new ], [ %indvars.iv.next4636.1, %.lr.ph3870 ] ; 3 uses
  %.0.i15903868 = phi i64 [ 0, %.lr.ph3870.preheader.new ], [ %i.ida, %.lr.ph3870 ]
  %niter = phi i64 [ 0, %.lr.ph3870.preheader.new ], [ %niter.next.1, %.lr.ph3870 ]
  %i.icl = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4635 ; 2 uses
  %i.icm = load i64, ptr %i.icl, align 8, !tbaa !91
  %i.icn = zext i64 %i.icm to i128
  %i.ico = mul nuw i128 %i.icn, 10000000000000000000
  %i.icp = zext i64 %.0.i15903868 to i128
  %i.icq = add nuw i128 %i.ico, %i.icp            ; 2 uses
  %i.icr = lshr i128 %i.icq, 64
  %i.ics = trunc i128 %i.icq to i64
  store i64 %i.ics, ptr %i.icl, align 8, !tbaa !91
  %i.ict = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4635
  %i.icu = getelementptr inbounds nuw i8, ptr %i.ict, i64 8 ; 2 uses
  %i.icv = load i64, ptr %i.icu, align 8, !tbaa !91
  %i.icw = zext i64 %i.icv to i128
  %i.icx = mul nuw i128 %i.icw, 10000000000000000000
  %i.icy = add nuw i128 %i.icx, %i.icr            ; 2 uses
  %i.icz = lshr i128 %i.icy, 64                   ; 2 uses
  %i.ida = trunc nuw i128 %i.icz to i64           ; 3 uses
  %i.idb = trunc i128 %i.icy to i64
  store i64 %i.idb, ptr %i.icu, align 8, !tbaa !91
  %indvars.iv.next4636.1 = add nuw nsw i64 %indvars.iv4635, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3871.unr-lcssa, label %.lr.ph3870, !llvm.loop !136

._crit_edge3871.unr-lcssa:                        ; preds = %.lr.ph3870
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge3871, label %.lr.ph3870.epil.preheader

.lr.ph3870.epil.preheader:                        ; preds = %._crit_edge3871.unr-lcssa, %.lr.ph3870.preheader
  %indvars.iv4635.epil.init = phi i64 [ %i.ich, %.lr.ph3870.preheader ], [ %indvars.iv.next4636.1, %._crit_edge3871.unr-lcssa ]
  %.0.i15903868.epil.init = phi i64 [ 0, %.lr.ph3870.preheader ], [ %i.ida, %._crit_edge3871.unr-lcssa ]
  %lcmp.mod6435 = trunc i64 %i.ici to i1
  call void @llvm.assume(i1 %lcmp.mod6435)
  %i.idc = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4635.epil.init ; 2 uses
  %i.idd = load i64, ptr %i.idc, align 8, !tbaa !91
  %i.ide = zext i64 %i.idd to i128
  %i.idf = mul nuw i128 %i.ide, 10000000000000000000
  %i.idg = zext i64 %.0.i15903868.epil.init to i128
  %i.idh = add nuw i128 %i.idf, %i.idg            ; 2 uses
  %i.idi = lshr i128 %i.idh, 64                   ; 2 uses
  %i.idj = trunc nuw i128 %i.idi to i64
  %i.idk = trunc i128 %i.idh to i64
  store i64 %i.idk, ptr %i.idc, align 8, !tbaa !91
  br label %._crit_edge3871

._crit_edge3871:                                  ; preds = %._crit_edge3871.unr-lcssa, %.lr.ph3870.epil.preheader
  %.lcssa6359 = phi i128 [ %i.icz, %._crit_edge3871.unr-lcssa ], [ %i.idi, %.lr.ph3870.epil.preheader ]
  %.lcssa6358 = phi i64 [ %i.ida, %._crit_edge3871.unr-lcssa ], [ %i.idj, %.lr.ph3870.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa6359, 0
  br i1 %.not19.i, label %bigint_mul_u64.exit, label %bb.arq

bb.arq:                                           ; preds = %._crit_edge3871
  %i.idl = add i32 %i.icc, 1
  %i.idm = zext i32 %i.icc to i64
  %i.idn = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.idm
  store i64 %.lcssa6358, ptr %i.idn, align 8, !tbaa !91
  br label %bigint_mul_u64.exit

bigint_mul_u64.exit:                              ; preds = %bb.arp, %._crit_edge3863, %._crit_edge3871, %bb.arq
  %i.ido = phi i32 [ %i.icc, %._crit_edge3871 ], [ %i.idl, %bb.arq ], [ %i.icc, %._crit_edge3863 ], [ %i.icc, %bb.arp ] ; 5 uses
  %i.idp = add nsw i32 %.0.i15163875, -19         ; 3 uses
  %i.idq = icmp sgt i32 %.0.i15163875, 37
  br i1 %i.idq, label %.lr.ph3877, label %._crit_edge3878, !llvm.loop !137

._crit_edge3878:                                  ; preds = %bigint_mul_u64.exit
  store i32 %i.ido, ptr %8, align 8
  %.not.i1517 = icmp eq i32 %i.idp, 0
  br i1 %.not.i1517, label %bigint_mul_pow10.exit1515, label %bb.arr

bb.arr:                                           ; preds = %._crit_edge3878
  %i.idr = sext i32 %i.idp to i64
  %i.ids = getelementptr inbounds [8 x i8], ptr @u64_pow10_table, i64 %i.idr
  %i.idt = load i64, ptr %i.ids, align 8, !tbaa !91 ; 2 uses
  %.not4448 = icmp eq i32 %i.ido, 0
  br i1 %.not4448, label %._crit_edge3884, label %.lr.ph3883.preheader

.lr.ph3883.preheader:                             ; preds = %.thread5445, %bb.arr
  %i.idu = phi i64 [ %i.icb, %.thread5445 ], [ %i.idt, %bb.arr ]
  %i.idv = phi i32 [ 1, %.thread5445 ], [ %i.ido, %bb.arr ] ; 3 uses
  %wide.trip.count4643 = zext i32 %i.idv to i64
  br label %.lr.ph3883

.lr.ph3883:                                       ; preds = %.lr.ph3883.preheader, %bb.ars
  %indvars.iv4640 = phi i64 [ 0, %.lr.ph3883.preheader ], [ %indvars.iv.next4641, %bb.ars ] ; 3 uses
  %i.idw = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4640
  %i.idx = load i64, ptr %i.idw, align 8, !tbaa !91
  %.not.i1596 = icmp eq i64 %i.idx, 0
  br i1 %.not.i1596, label %bb.ars, label %._crit_edge3884.loopexit

bb.ars:                                           ; preds = %.lr.ph3883
  %indvars.iv.next4641 = add nuw nsw i64 %indvars.iv4640, 1 ; 2 uses
  %exitcond4644.not = icmp eq i64 %indvars.iv.next4641, %wide.trip.count4643
  br i1 %exitcond4644.not, label %bigint_mul_pow10.exit1515, label %.lr.ph3883, !llvm.loop !135

._crit_edge3884.loopexit:                         ; preds = %.lr.ph3883
  %i.idy = trunc nuw i64 %indvars.iv4640 to i32
  br label %._crit_edge3884

._crit_edge3884:                                  ; preds = %._crit_edge3884.loopexit, %bb.arr
  %i.idz = phi i64 [ %i.idt, %bb.arr ], [ %i.idu, %._crit_edge3884.loopexit ]
  %i.iea = phi i32 [ 0, %bb.arr ], [ %i.idv, %._crit_edge3884.loopexit ] ; 6 uses
  %.018.i1592.lcssa = phi i32 [ 0, %bb.arr ], [ %i.idy, %._crit_edge3884.loopexit ] ; 2 uses
  %i.ieb = icmp ult i32 %.018.i1592.lcssa, %i.iea
  br i1 %i.ieb, label %.lr.ph3891, label %bigint_mul_pow10.exit1515

.lr.ph3891:                                       ; preds = %._crit_edge3884
  %i.iec = zext i64 %i.idz to i128                ; 3 uses
  %i.ied = zext i32 %.018.i1592.lcssa to i64      ; 4 uses
  %wide.trip.count4648 = zext i32 %i.iea to i64   ; 2 uses
  %i.iee = sub nsw i64 %wide.trip.count4648, %i.ied ; 3 uses
  %xtraiter6436 = and i64 %i.iee, 1
  %i.ief = add nsw i64 %wide.trip.count4648, -1
  %i.ieg = icmp eq i64 %i.ief, %i.ied
  br i1 %i.ieg, label %.epil.preheader, label %.lr.ph3891.new

.lr.ph3891.new:                                   ; preds = %.lr.ph3891
  %unroll_iter6441 = and i64 %i.iee, -2
  br label %bb.art

bb.art:                                           ; preds = %bb.art, %.lr.ph3891.new
  %indvars.iv4645 = phi i64 [ %i.ied, %.lr.ph3891.new ], [ %indvars.iv.next4646.1, %bb.art ] ; 3 uses
  %.0.i15943889 = phi i64 [ 0, %.lr.ph3891.new ], [ %i.iew, %bb.art ]
  %niter6442 = phi i64 [ 0, %.lr.ph3891.new ], [ %niter6442.next.1, %bb.art ]
  %i.ieh = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4645 ; 2 uses
  %i.iei = load i64, ptr %i.ieh, align 8, !tbaa !91
  %i.iej = zext i64 %i.iei to i128
  %i.iek = mul nuw i128 %i.iej, %i.iec
  %i.iel = zext i64 %.0.i15943889 to i128
  %i.iem = add nuw i128 %i.iek, %i.iel            ; 2 uses
  %i.ien = lshr i128 %i.iem, 64
  %i.ieo = trunc i128 %i.iem to i64
  store i64 %i.ieo, ptr %i.ieh, align 8, !tbaa !91
  %i.iep = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4645
  %i.ieq = getelementptr inbounds nuw i8, ptr %i.iep, i64 8 ; 2 uses
  %i.ier = load i64, ptr %i.ieq, align 8, !tbaa !91
  %i.ies = zext i64 %i.ier to i128
  %i.iet = mul nuw i128 %i.ies, %i.iec
  %i.ieu = add nuw i128 %i.iet, %i.ien            ; 2 uses
  %i.iev = lshr i128 %i.ieu, 64                   ; 2 uses
  %i.iew = trunc nuw i128 %i.iev to i64           ; 3 uses
  %i.iex = trunc i128 %i.ieu to i64
  store i64 %i.iex, ptr %i.ieq, align 8, !tbaa !91
  %indvars.iv.next4646.1 = add nuw nsw i64 %indvars.iv4645, 2 ; 2 uses
  %niter6442.next.1 = add i64 %niter6442, 2       ; 2 uses
  %niter6442.ncmp.1 = icmp eq i64 %niter6442.next.1, %unroll_iter6441
  br i1 %niter6442.ncmp.1, label %._crit_edge3892.unr-lcssa, label %bb.art, !llvm.loop !136

._crit_edge3892.unr-lcssa:                        ; preds = %bb.art
  %lcmp.mod6437.not = icmp eq i64 %xtraiter6436, 0
  br i1 %lcmp.mod6437.not, label %._crit_edge3892, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3892.unr-lcssa, %.lr.ph3891
  %indvars.iv4645.epil.init = phi i64 [ %i.ied, %.lr.ph3891 ], [ %indvars.iv.next4646.1, %._crit_edge3892.unr-lcssa ]
  %.0.i15943889.epil.init = phi i64 [ 0, %.lr.ph3891 ], [ %i.iew, %._crit_edge3892.unr-lcssa ]
  %lcmp.mod6440 = trunc i64 %i.iee to i1
  call void @llvm.assume(i1 %lcmp.mod6440)
  %i.iey = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4645.epil.init ; 2 uses
  %i.iez = load i64, ptr %i.iey, align 8, !tbaa !91
  %i.ifa = zext i64 %i.iez to i128
  %i.ifb = mul nuw i128 %i.ifa, %i.iec
  %i.ifc = zext i64 %.0.i15943889.epil.init to i128
  %i.ifd = add nuw i128 %i.ifb, %i.ifc            ; 2 uses
  %i.ife = lshr i128 %i.ifd, 64                   ; 2 uses
  %i.iff = trunc nuw i128 %i.ife to i64
  %i.ifg = trunc i128 %i.ifd to i64
  store i64 %i.ifg, ptr %i.iey, align 8, !tbaa !91
  br label %._crit_edge3892

._crit_edge3892:                                  ; preds = %._crit_edge3892.unr-lcssa, %.epil.preheader
  %.lcssa6354 = phi i128 [ %i.iev, %._crit_edge3892.unr-lcssa ], [ %i.ife, %.epil.preheader ]
  %.lcssa6353 = phi i64 [ %i.iew, %._crit_edge3892.unr-lcssa ], [ %i.iff, %.epil.preheader ]
  %.not19.i1595 = icmp eq i128 %.lcssa6354, 0
  br i1 %.not19.i1595, label %bigint_mul_pow10.exit1515, label %bb.aru

bb.aru:                                           ; preds = %._crit_edge3892
  %i.ifh = add i32 %i.iea, 1
  br label %bigint_mul_pow10.exit1515.sink.split

bigint_mul_pow10.exit1515.sink.split:             ; preds = %bb.arn, %bb.aru
  %.sink5711 = phi i32 [ %i.iea, %bb.aru ], [ %i.iai, %bb.arn ]
  %i.ifi = phi ptr [ %8, %bb.aru ], [ %7, %bb.arn ]
  %.lcssa5585.sink = phi i64 [ %.lcssa6353, %bb.aru ], [ %.lcssa6345, %bb.arn ]
  %.ph5707 = phi i32 [ %i.ifh, %bb.aru ], [ 1, %bb.arn ]
  %i.ifj = getelementptr inbounds nuw i8, ptr %i.ifi, i64 8
  %i.ifk = zext i32 %.sink5711 to i64
  %i.ifl = getelementptr inbounds nuw [8 x i8], ptr %i.ifj, i64 %i.ifk
  store i64 %.lcssa5585.sink, ptr %i.ifl, align 8, !tbaa !91
  br label %bigint_mul_pow10.exit1515

bigint_mul_pow10.exit1515:                        ; preds = %bb.ars, %bb.arl, %bigint_mul_pow10.exit1515.sink.split, %._crit_edge3884, %._crit_edge3917, %._crit_edge3878, %._crit_edge3892, %._crit_edge3911, %._crit_edge3925
  %i.ifm = phi i32 [ %i.ido, %._crit_edge3878 ], [ %i.iea, %._crit_edge3892 ], [ %i.iea, %._crit_edge3884 ], [ 1, %._crit_edge3911 ], [ 1, %._crit_edge3925 ], [ 1, %bb.arl ], [ %.ph5707, %bigint_mul_pow10.exit1515.sink.split ], [ 1, %._crit_edge3917 ], [ %i.idv, %bb.ars ] ; 16 uses
  %i.ifn = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.ifn, label %bb.arv, label %bb.arx

bb.arv:                                           ; preds = %bigint_mul_pow10.exit1515
  %i.ifo = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ifp = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
  %i.ifq = icmp eq i32 %i.ifo, 0
  br i1 %i.ifq, label %.preheader3592, label %bb.arw, !prof !8

.preheader3592:                                   ; preds = %bb.arv
  %.not46.i15553953 = icmp eq i32 %i.ifm, 0
  br i1 %.not46.i15553953, label %.lr.ph3960.preheader, label %.lr.ph3955

.lr.ph3955:                                       ; preds = %.preheader3592
  %i.ifr = add nsw i32 %i.ifp, -1                 ; 6 uses
  %i.ifs = zext i32 %i.ifm to i64                 ; 9 uses
  %min.iters.check6032 = icmp ult i32 %i.ifm, 30
  br i1 %min.iters.check6032, label %scalar.ph6031.preheader, label %vector.scevcheck6028

vector.scevcheck6028:                             ; preds = %.lr.ph3955
  %i.ift = add nsw i64 %i.ifs, -1                 ; 2 uses
  %i.ifu = add i32 %i.ifm, %i.ifp
  %i.ifv = add i32 %i.ifu, -1
  %i.ifw = trunc i64 %i.ift to i32
  %i.ifx = icmp ult i32 %i.ifv, %i.ifw
  %i.ify = icmp ugt i64 %i.ift, 4294967295
  %i.ifz = or i1 %i.ifx, %i.ify
  br i1 %i.ifz, label %scalar.ph6031.preheader, label %vector.memcheck6029

vector.memcheck6029:                              ; preds = %vector.scevcheck6028
  %i.iga = add i32 %i.ifm, %i.ifp
  %i.igb = add i32 %i.iga, -1
  %i.igc = zext i32 %i.igb to i64
  %i.igd = sub nsw i64 %i.ifs, %i.igc
  %i.ige = shl nsw i64 %i.igd, 3
  %i.igf = add nsw i64 %i.ige, -9
  %diff.check6030 = icmp ult i64 %i.igf, 31
  br i1 %diff.check6030, label %scalar.ph6031.preheader, label %vector.ph6033

vector.ph6033:                                    ; preds = %vector.memcheck6029
  %n.vec6034 = and i64 %i.ifs, 4294967292         ; 2 uses
  %i.igg = and i64 %i.ifs, 3
  br label %vector.body6035

vector.body6035:                                  ; preds = %vector.body6035, %vector.ph6033
  %index6036 = phi i64 [ 0, %vector.ph6033 ], [ %index.next6039, %vector.body6035 ] ; 2 uses
  %i.igh = sub i64 %i.ifs, %index6036             ; 2 uses
  %i.igi = getelementptr [8 x i8], ptr %8, i64 %i.igh ; 2 uses
  %i.igj = getelementptr i8, ptr %i.igi, i64 -8
  %i.igk = getelementptr i8, ptr %i.igi, i64 -24
  %wide.load6037 = load <2 x i64>, ptr %i.igj, align 8, !tbaa !91
  %wide.load6038 = load <2 x i64>, ptr %i.igk, align 8, !tbaa !91
  %i.igl = trunc nuw i64 %i.igh to i32
  %i.igm = add i32 %i.ifr, %i.igl
  %i.ign = zext i32 %i.igm to i64
  %i.igo = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ign ; 2 uses
  %i.igp = getelementptr inbounds i8, ptr %i.igo, i64 -8
  %i.igq = getelementptr inbounds i8, ptr %i.igo, i64 -24
  store <2 x i64> %wide.load6037, ptr %i.igp, align 8, !tbaa !91
  store <2 x i64> %wide.load6038, ptr %i.igq, align 8, !tbaa !91
  %index.next6039 = add nuw i64 %index6036, 4     ; 2 uses
  %i.igr = icmp eq i64 %index.next6039, %n.vec6034
  br i1 %i.igr, label %middle.block6040, label %vector.body6035, !llvm.loop !307

middle.block6040:                                 ; preds = %vector.body6035
  %cmp.n6041 = icmp eq i64 %n.vec6034, %i.ifs
  br i1 %cmp.n6041, label %.lr.ph3960.preheader, label %scalar.ph6031.preheader

scalar.ph6031.preheader:                          ; preds = %vector.memcheck6029, %vector.scevcheck6028, %.lr.ph3955, %middle.block6040
  %indvars.iv4685.ph = phi i64 [ %i.ifs, %vector.memcheck6029 ], [ %i.ifs, %vector.scevcheck6028 ], [ %i.ifs, %.lr.ph3955 ], [ %i.igg, %middle.block6040 ] ; 4 uses
  %i.igs = add nsw i64 %indvars.iv4685.ph, -1
  %xtraiter6465 = and i64 %indvars.iv4685.ph, 3   ; 2 uses
  %lcmp.mod6466.not = icmp eq i64 %xtraiter6465, 0
  br i1 %lcmp.mod6466.not, label %scalar.ph6031.prol.loopexit, label %scalar.ph6031.prol

scalar.ph6031.prol:                               ; preds = %scalar.ph6031.preheader, %scalar.ph6031.prol
  %indvars.iv4685.prol = phi i64 [ %i.igt, %scalar.ph6031.prol ], [ %indvars.iv4685.ph, %scalar.ph6031.preheader ] ; 3 uses
  %prol.iter6467 = phi i64 [ %prol.iter6467.next, %scalar.ph6031.prol ], [ 0, %scalar.ph6031.preheader ]
  %i.igt = add nsw i64 %indvars.iv4685.prol, -1   ; 2 uses
  %i.igu = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4685.prol
  %i.igv = load i64, ptr %i.igu, align 8, !tbaa !91
  %i.igw = trunc nuw i64 %indvars.iv4685.prol to i32
  %i.igx = add i32 %i.ifr, %i.igw
  %i.igy = zext i32 %i.igx to i64
  %i.igz = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.igy
  store i64 %i.igv, ptr %i.igz, align 8, !tbaa !91
  %prol.iter6467.next = add i64 %prol.iter6467, 1 ; 2 uses
  %prol.iter6467.cmp.not = icmp eq i64 %prol.iter6467.next, %xtraiter6465
  br i1 %prol.iter6467.cmp.not, label %scalar.ph6031.prol.loopexit, label %scalar.ph6031.prol, !llvm.loop !308

scalar.ph6031.prol.loopexit:                      ; preds = %scalar.ph6031.prol, %scalar.ph6031.preheader
  %indvars.iv4685.unr = phi i64 [ %indvars.iv4685.ph, %scalar.ph6031.preheader ], [ %i.igt, %scalar.ph6031.prol ]
  %i.iha = icmp ult i64 %i.igs, 3
  br i1 %i.iha, label %.lr.ph3960.preheader, label %scalar.ph6031

scalar.ph6031:                                    ; preds = %scalar.ph6031.prol.loopexit, %scalar.ph6031
  %indvars.iv4685 = phi i64 [ %i.ihw, %scalar.ph6031 ], [ %indvars.iv4685.unr, %scalar.ph6031.prol.loopexit ] ; 6 uses
  %i.ihb = add nsw i64 %indvars.iv4685, -1        ; 2 uses
  %i.ihc = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4685
  %i.ihd = load i64, ptr %i.ihc, align 8, !tbaa !91
  %i.ihe = trunc nuw i64 %indvars.iv4685 to i32
  %i.ihf = add i32 %i.ifr, %i.ihe
  %i.ihg = zext i32 %i.ihf to i64
  %i.ihh = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ihg
  store i64 %i.ihd, ptr %i.ihh, align 8, !tbaa !91
  %i.ihi = add nsw i64 %indvars.iv4685, -2        ; 2 uses
  %i.ihj = getelementptr [8 x i8], ptr %8, i64 %i.ihb
  %i.ihk = load i64, ptr %i.ihj, align 8, !tbaa !91
  %i.ihl = trunc nuw i64 %i.ihb to i32
  %i.ihm = add i32 %i.ifr, %i.ihl
  %i.ihn = zext i32 %i.ihm to i64
  %i.iho = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ihn
  store i64 %i.ihk, ptr %i.iho, align 8, !tbaa !91
  %i.ihp = add nsw i64 %indvars.iv4685, -3        ; 2 uses
  %i.ihq = getelementptr [8 x i8], ptr %8, i64 %i.ihi
  %i.ihr = load i64, ptr %i.ihq, align 8, !tbaa !91
  %i.ihs = trunc nuw i64 %i.ihi to i32
  %i.iht = add i32 %i.ifr, %i.ihs
  %i.ihu = zext i32 %i.iht to i64
  %i.ihv = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ihu
  store i64 %i.ihr, ptr %i.ihv, align 8, !tbaa !91
  %i.ihw = add nsw i64 %indvars.iv4685, -4        ; 2 uses
  %i.ihx = getelementptr [8 x i8], ptr %8, i64 %i.ihp
  %i.ihy = load i64, ptr %i.ihx, align 8, !tbaa !91
  %i.ihz = trunc nuw i64 %i.ihp to i32
  %i.iia = add i32 %i.ifr, %i.ihz
  %i.iib = zext i32 %i.iia to i64
  %i.iic = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.iib
  store i64 %i.ihy, ptr %i.iic, align 8, !tbaa !91
  %.not46.i1555.wide.3 = icmp eq i64 %i.ihw, 0
  br i1 %.not46.i1555.wide.3, label %.lr.ph3960.preheader, label %scalar.ph6031, !llvm.loop !309

.lr.ph3960.preheader:                             ; preds = %scalar.ph6031.prol.loopexit, %scalar.ph6031, %middle.block6040, %.preheader3592
  %i.iid = add i32 %i.ifm, %i.ifp                 ; 2 uses
  store i32 %i.iid, ptr %8, align 8, !tbaa !138
  br label %.lr.ph3935.preheader

bb.arw:                                           ; preds = %bb.arv
  %i.iie = zext i32 %i.ifm to i64                 ; 10 uses
  %i.iif = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.iie
  store i64 0, ptr %i.iif, align 8, !tbaa !91
  %.not.i15513944 = icmp eq i32 %i.ifm, 0
  %.pre5041 = zext nneg i32 %i.ifo to i64         ; 5 uses
  br i1 %.not.i15513944, label %._crit_edge3948, label %.lr.ph3947

.lr.ph3947:                                       ; preds = %bb.arw
  %i.iig = sub nuw nsw i32 64, %i.ifo
  %i.iih = zext nneg i32 %i.iig to i64            ; 4 uses
  %min.iters.check6011 = icmp ult i32 %i.ifm, 20
  br i1 %min.iters.check6011, label %scalar.ph6010.preheader, label %vector.scevcheck6005

vector.scevcheck6005:                             ; preds = %.lr.ph3947
  %i.iii = add nsw i64 %i.iie, -1                 ; 2 uses
  %i.iij = add i32 %i.ifm, %i.ifp
  %i.iik = trunc i64 %i.iii to i32
  %i.iil = icmp ult i32 %i.iij, %i.iik
  %i.iim = icmp ugt i64 %i.iii, 4294967295
  %i.iin = or i1 %i.iil, %i.iim
  br i1 %i.iin, label %scalar.ph6010.preheader, label %vector.memcheck6006

vector.memcheck6006:                              ; preds = %vector.scevcheck6005
  %i.iio = shl nuw nsw i64 %i.iie, 3              ; 2 uses
  %i.iip = add i32 %i.ifm, %i.ifp
  %i.iiq = zext i32 %i.iip to i64
  %i.iir = shl nuw nsw i64 %i.iiq, 3              ; 2 uses
  %i.iis = sub nsw i64 %i.iir, %i.iio
  %diff.check6007 = icmp ugt i64 %i.iis, -32
  %i.iit = sub nsw i64 %i.iio, %i.iir
  %i.iiu = add nsw i64 %i.iit, -9
  %diff.check6008 = icmp ult i64 %i.iiu, 31
  %conflict.rdx6009 = or i1 %diff.check6007, %diff.check6008
  br i1 %conflict.rdx6009, label %scalar.ph6010.preheader, label %vector.ph6012

vector.ph6012:                                    ; preds = %vector.memcheck6006
  %n.vec6013 = and i64 %i.iie, 4294967292         ; 2 uses
  %i.iiv = and i64 %i.iie, 3
  %broadcast.splatinsert6014 = insertelement <2 x i64> poison, i64 %i.iih, i64 0
  %broadcast.splat6015 = shufflevector <2 x i64> %broadcast.splatinsert6014, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6016 = insertelement <2 x i64> poison, i64 %.pre5041, i64 0
  %broadcast.splat6017 = shufflevector <2 x i64> %broadcast.splatinsert6016, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body6018

vector.body6018:                                  ; preds = %vector.body6018, %vector.ph6012
  %index6019 = phi i64 [ 0, %vector.ph6012 ], [ %index.next6024, %vector.body6018 ] ; 2 uses
  %i.iiw = sub i64 %i.iie, %index6019             ; 3 uses
  %i.iix = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.iiw ; 2 uses
  %i.iiy = getelementptr inbounds i8, ptr %i.iix, i64 -8
  %i.iiz = getelementptr inbounds i8, ptr %i.iix, i64 -24
  %wide.load6020 = load <2 x i64>, ptr %i.iiy, align 8, !tbaa !91
  %wide.load6021 = load <2 x i64>, ptr %i.iiz, align 8, !tbaa !91
  %i.ija = shl <2 x i64> %wide.load6020, %broadcast.splat6017
  %i.ijb = shl <2 x i64> %wide.load6021, %broadcast.splat6017
  %i.ijc = getelementptr [8 x i8], ptr %8, i64 %i.iiw ; 2 uses
  %i.ijd = getelementptr i8, ptr %i.ijc, i64 -8
  %i.ije = getelementptr i8, ptr %i.ijc, i64 -24
  %wide.load6022 = load <2 x i64>, ptr %i.ijd, align 8, !tbaa !91
  %wide.load6023 = load <2 x i64>, ptr %i.ije, align 8, !tbaa !91
  %i.ijf = lshr <2 x i64> %wide.load6022, %broadcast.splat6015
  %i.ijg = lshr <2 x i64> %wide.load6023, %broadcast.splat6015
  %i.ijh = or <2 x i64> %i.ijf, %i.ija
  %i.iji = or <2 x i64> %i.ijg, %i.ijb
  %i.ijj = trunc nuw i64 %i.iiw to i32
  %i.ijk = add i32 %i.ifp, %i.ijj
  %i.ijl = zext i32 %i.ijk to i64
  %i.ijm = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ijl ; 2 uses
  %i.ijn = getelementptr inbounds i8, ptr %i.ijm, i64 -8
  %i.ijo = getelementptr inbounds i8, ptr %i.ijm, i64 -24
  store <2 x i64> %i.ijh, ptr %i.ijn, align 8, !tbaa !91
  store <2 x i64> %i.iji, ptr %i.ijo, align 8, !tbaa !91
  %index.next6024 = add nuw i64 %index6019, 4     ; 2 uses
  %i.ijp = icmp eq i64 %index.next6024, %n.vec6013
  br i1 %i.ijp, label %middle.block6025, label %vector.body6018, !llvm.loop !310

middle.block6025:                                 ; preds = %vector.body6018
  %cmp.n6026 = icmp eq i64 %n.vec6013, %i.iie
  br i1 %cmp.n6026, label %._crit_edge3948, label %scalar.ph6010.preheader

scalar.ph6010.preheader:                          ; preds = %vector.memcheck6006, %vector.scevcheck6005, %.lr.ph3947, %middle.block6025
  %indvars.iv4680.ph = phi i64 [ %i.iie, %vector.memcheck6006 ], [ %i.iie, %vector.scevcheck6005 ], [ %i.iie, %.lr.ph3947 ], [ %i.iiv, %middle.block6025 ] ; 7 uses
  %xtraiter6462 = and i64 %indvars.iv4680.ph, 1
  %lcmp.mod6463.not = icmp eq i64 %xtraiter6462, 0
  br i1 %lcmp.mod6463.not, label %scalar.ph6010.prol.loopexit, label %scalar.ph6010.prol

scalar.ph6010.prol:                               ; preds = %scalar.ph6010.preheader
  %i.ijq = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4680.ph
  %i.ijr = load i64, ptr %i.ijq, align 8, !tbaa !91
  %i.ijs = shl i64 %i.ijr, %.pre5041
  %i.ijt = add nsw i64 %indvars.iv4680.ph, -1
  %i.iju = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4680.ph
  %i.ijv = load i64, ptr %i.iju, align 8, !tbaa !91
  %i.ijw = lshr i64 %i.ijv, %i.iih
  %i.ijx = or i64 %i.ijw, %i.ijs
  %i.ijy = trunc nuw i64 %indvars.iv4680.ph to i32
  %i.ijz = add i32 %i.ifp, %i.ijy
  %i.ika = zext i32 %i.ijz to i64
  %i.ikb = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ika
  store i64 %i.ijx, ptr %i.ikb, align 8, !tbaa !91
  br label %scalar.ph6010.prol.loopexit

scalar.ph6010.prol.loopexit:                      ; preds = %scalar.ph6010.prol, %scalar.ph6010.preheader
  %indvars.iv4680.unr = phi i64 [ %indvars.iv4680.ph, %scalar.ph6010.preheader ], [ %i.ijt, %scalar.ph6010.prol ]
  %i.ikc = icmp eq i64 %indvars.iv4680.ph, 1
  br i1 %i.ikc, label %._crit_edge3948, label %scalar.ph6010

scalar.ph6010:                                    ; preds = %scalar.ph6010.prol.loopexit, %scalar.ph6010
  %indvars.iv4680 = phi i64 [ %i.iks, %scalar.ph6010 ], [ %indvars.iv4680.unr, %scalar.ph6010.prol.loopexit ] ; 6 uses
  %i.ikd = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %indvars.iv4680
  %i.ike = load i64, ptr %i.ikd, align 8, !tbaa !91
  %i.ikf = shl i64 %i.ike, %.pre5041
  %i.ikg = add nsw i64 %indvars.iv4680, -1        ; 2 uses
  %i.ikh = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4680
  %i.iki = load i64, ptr %i.ikh, align 8, !tbaa !91
  %i.ikj = lshr i64 %i.iki, %i.iih
  %i.ikk = or i64 %i.ikj, %i.ikf
  %i.ikl = trunc nuw i64 %indvars.iv4680 to i32
  %i.ikm = add i32 %i.ifp, %i.ikl
  %i.ikn = zext i32 %i.ikm to i64
  %i.iko = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ikn
  store i64 %i.ikk, ptr %i.iko, align 8, !tbaa !91
  %i.ikp = getelementptr [8 x i8], ptr %8, i64 %indvars.iv4680
  %i.ikq = load i64, ptr %i.ikp, align 8, !tbaa !91
  %i.ikr = shl i64 %i.ikq, %.pre5041
  %i.iks = add nsw i64 %indvars.iv4680, -2        ; 2 uses
  %i.ikt = getelementptr [8 x i8], ptr %8, i64 %i.ikg
  %i.iku = load i64, ptr %i.ikt, align 8, !tbaa !91
  %i.ikv = lshr i64 %i.iku, %i.iih
  %i.ikw = or i64 %i.ikv, %i.ikr
  %i.ikx = trunc nuw i64 %i.ikg to i32
  %i.iky = add i32 %i.ifp, %i.ikx
  %i.ikz = zext i32 %i.iky to i64
  %i.ila = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ikz
  store i64 %i.ikw, ptr %i.ila, align 8, !tbaa !91
  %.not.i1551.wide.1 = icmp eq i64 %i.iks, 0
  br i1 %.not.i1551.wide.1, label %._crit_edge3948, label %scalar.ph6010, !llvm.loop !311

._crit_edge3948:                                  ; preds = %scalar.ph6010.prol.loopexit, %scalar.ph6010, %middle.block6025, %bb.arw
  %i.ilb = load i64, ptr %i.hyo, align 8, !tbaa !91
  %i.ilc = shl i64 %i.ilb, %.pre5041
  %i.ild = zext nneg i32 %i.ifp to i64
  %i.ile = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ild
  store i64 %i.ilc, ptr %i.ile, align 8, !tbaa !91
  %i.ilf = add i32 %i.ifm, %i.ifp                 ; 2 uses
  %i.ilg = zext i32 %i.ilf to i64
  %i.ilh = getelementptr inbounds nuw [8 x i8], ptr %i.hyo, i64 %i.ilg
  %i.ili = load i64, ptr %i.ilh, align 8, !tbaa !91
  %i.ilj = icmp ne i64 %i.ili, 0
  %i.ilk = zext i1 %i.ilj to i32
  %i.ill = add i32 %i.ilf, %i.ilk                 ; 2 uses
  %.not45.i15533949 = icmp eq i32 %i.ifp, 0
  br i1 %.not45.i15533949, label %bigint_mul_pow2.exit1558, label %.lr.ph3935.preheader

bb.arx:                                           ; preds = %bigint_mul_pow10.exit1515
  %i.ilm = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.iln = and i32 %i.ilm, 63                     ; 3 uses
  %i.ilo = lshr i32 %i.ilm, 6                     ; 16 uses
  %i.ilp = load i32, ptr %7, align 8, !tbaa !138  ; 12 uses
  %i.ilq = icmp eq i32 %i.iln, 0
  br i1 %i.ilq, label %.preheader3595, label %bb.ary, !prof !8

.preheader3595:                                   ; preds = %bb.arx
  %.not46.i15643936 = icmp eq i32 %i.ilp, 0
  br i1 %.not46.i15643936, label %._crit_edge3939, label %.lr.ph3938

.lr.ph3938:                                       ; preds = %.preheader3595
  %i.ilr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ils = add nsw i32 %i.ilo, -1                 ; 6 uses
  %i.ilt = zext i32 %i.ilp to i64                 ; 9 uses
  %min.iters.check5994 = icmp ult i32 %i.ilp, 30
  br i1 %min.iters.check5994, label %scalar.ph5993.preheader, label %vector.scevcheck5990

vector.scevcheck5990:                             ; preds = %.lr.ph3938
  %i.ilu = add nsw i64 %i.ilt, -1                 ; 2 uses
  %i.ilv = add i32 %i.ilp, %i.ilo
  %i.ilw = add i32 %i.ilv, -1
  %i.ilx = trunc i64 %i.ilu to i32
  %i.ily = icmp ult i32 %i.ilw, %i.ilx
  %i.ilz = icmp ugt i64 %i.ilu, 4294967295
  %i.ima = or i1 %i.ily, %i.ilz
  br i1 %i.ima, label %scalar.ph5993.preheader, label %vector.memcheck5991

vector.memcheck5991:                              ; preds = %vector.scevcheck5990
  %i.imb = add i32 %i.ilp, %i.ilo
  %i.imc = add i32 %i.imb, -1
  %i.imd = zext i32 %i.imc to i64
  %i.ime = sub nsw i64 %i.ilt, %i.imd
  %i.imf = shl nsw i64 %i.ime, 3
  %i.img = add nsw i64 %i.imf, -9
  %diff.check5992 = icmp ult i64 %i.img, 31
  br i1 %diff.check5992, label %scalar.ph5993.preheader, label %vector.ph5995

vector.ph5995:                                    ; preds = %vector.memcheck5991
  %n.vec5996 = and i64 %i.ilt, 4294967292         ; 2 uses
  %i.imh = and i64 %i.ilt, 3
  br label %vector.body5997

vector.body5997:                                  ; preds = %vector.body5997, %vector.ph5995
  %index5998 = phi i64 [ 0, %vector.ph5995 ], [ %index.next6001, %vector.body5997 ] ; 2 uses
  %i.imi = sub i64 %i.ilt, %index5998             ; 2 uses
  %i.imj = getelementptr [8 x i8], ptr %7, i64 %i.imi ; 2 uses
  %i.imk = getelementptr i8, ptr %i.imj, i64 -8
  %i.iml = getelementptr i8, ptr %i.imj, i64 -24
  %wide.load5999 = load <2 x i64>, ptr %i.imk, align 8, !tbaa !91
  %wide.load6000 = load <2 x i64>, ptr %i.iml, align 8, !tbaa !91
  %i.imm = trunc nuw i64 %i.imi to i32
  %i.imn = add i32 %i.ils, %i.imm
  %i.imo = zext i32 %i.imn to i64
  %i.imp = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.imo ; 2 uses
  %i.imq = getelementptr inbounds i8, ptr %i.imp, i64 -8
  %i.imr = getelementptr inbounds i8, ptr %i.imp, i64 -24
  store <2 x i64> %wide.load5999, ptr %i.imq, align 8, !tbaa !91
  store <2 x i64> %wide.load6000, ptr %i.imr, align 8, !tbaa !91
  %index.next6001 = add nuw i64 %index5998, 4     ; 2 uses
  %i.ims = icmp eq i64 %index.next6001, %n.vec5996
  br i1 %i.ims, label %middle.block6002, label %vector.body5997, !llvm.loop !312

middle.block6002:                                 ; preds = %vector.body5997
  %cmp.n6003 = icmp eq i64 %n.vec5996, %i.ilt
  br i1 %cmp.n6003, label %._crit_edge3939, label %scalar.ph5993.preheader

scalar.ph5993.preheader:                          ; preds = %vector.memcheck5991, %vector.scevcheck5990, %.lr.ph3938, %middle.block6002
  %indvars.iv4675.ph = phi i64 [ %i.ilt, %vector.memcheck5991 ], [ %i.ilt, %vector.scevcheck5990 ], [ %i.ilt, %.lr.ph3938 ], [ %i.imh, %middle.block6002 ] ; 4 uses
  %i.imt = add nsw i64 %indvars.iv4675.ph, -1
  %xtraiter6460 = and i64 %indvars.iv4675.ph, 3   ; 2 uses
  %lcmp.mod6461.not = icmp eq i64 %xtraiter6460, 0
  br i1 %lcmp.mod6461.not, label %scalar.ph5993.prol.loopexit, label %scalar.ph5993.prol

scalar.ph5993.prol:                               ; preds = %scalar.ph5993.preheader, %scalar.ph5993.prol
  %indvars.iv4675.prol = phi i64 [ %i.imu, %scalar.ph5993.prol ], [ %indvars.iv4675.ph, %scalar.ph5993.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph5993.prol ], [ 0, %scalar.ph5993.preheader ]
  %i.imu = add nsw i64 %indvars.iv4675.prol, -1   ; 2 uses
  %i.imv = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4675.prol
  %i.imw = load i64, ptr %i.imv, align 8, !tbaa !91
  %i.imx = trunc nuw i64 %indvars.iv4675.prol to i32
  %i.imy = add i32 %i.ils, %i.imx
  %i.imz = zext i32 %i.imy to i64
  %i.ina = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.imz
  store i64 %i.imw, ptr %i.ina, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter6460
  br i1 %prol.iter.cmp.not, label %scalar.ph5993.prol.loopexit, label %scalar.ph5993.prol, !llvm.loop !313

scalar.ph5993.prol.loopexit:                      ; preds = %scalar.ph5993.prol, %scalar.ph5993.preheader
  %indvars.iv4675.unr = phi i64 [ %indvars.iv4675.ph, %scalar.ph5993.preheader ], [ %i.imu, %scalar.ph5993.prol ]
  %i.inb = icmp ult i64 %i.imt, 3
  br i1 %i.inb, label %._crit_edge3939, label %scalar.ph5993

scalar.ph5993:                                    ; preds = %scalar.ph5993.prol.loopexit, %scalar.ph5993
  %indvars.iv4675 = phi i64 [ %i.inx, %scalar.ph5993 ], [ %indvars.iv4675.unr, %scalar.ph5993.prol.loopexit ] ; 6 uses
  %i.inc = add nsw i64 %indvars.iv4675, -1        ; 2 uses
  %i.ind = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4675
  %i.ine = load i64, ptr %i.ind, align 8, !tbaa !91
  %i.inf = trunc nuw i64 %indvars.iv4675 to i32
  %i.ing = add i32 %i.ils, %i.inf
  %i.inh = zext i32 %i.ing to i64
  %i.ini = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.inh
  store i64 %i.ine, ptr %i.ini, align 8, !tbaa !91
  %i.inj = add nsw i64 %indvars.iv4675, -2        ; 2 uses
  %i.ink = getelementptr [8 x i8], ptr %7, i64 %i.inc
  %i.inl = load i64, ptr %i.ink, align 8, !tbaa !91
  %i.inm = trunc nuw i64 %i.inc to i32
  %i.inn = add i32 %i.ils, %i.inm
  %i.ino = zext i32 %i.inn to i64
  %i.inp = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.ino
  store i64 %i.inl, ptr %i.inp, align 8, !tbaa !91
  %i.inq = add nsw i64 %indvars.iv4675, -3        ; 2 uses
  %i.inr = getelementptr [8 x i8], ptr %7, i64 %i.inj
  %i.ins = load i64, ptr %i.inr, align 8, !tbaa !91
  %i.int = trunc nuw i64 %i.inj to i32
  %i.inu = add i32 %i.ils, %i.int
  %i.inv = zext i32 %i.inu to i64
  %i.inw = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.inv
  store i64 %i.ins, ptr %i.inw, align 8, !tbaa !91
  %i.inx = add nsw i64 %indvars.iv4675, -4        ; 2 uses
  %i.iny = getelementptr [8 x i8], ptr %7, i64 %i.inq
  %i.inz = load i64, ptr %i.iny, align 8, !tbaa !91
  %i.ioa = trunc nuw i64 %i.inq to i32
  %i.iob = add i32 %i.ils, %i.ioa
  %i.ioc = zext i32 %i.iob to i64
  %i.iod = getelementptr inbounds nuw [8 x i8], ptr %i.ilr, i64 %i.ioc
  store i64 %i.inz, ptr %i.iod, align 8, !tbaa !91
  %.not46.i1564.wide.3 = icmp eq i64 %i.inx, 0
  br i1 %.not46.i1564.wide.3, label %._crit_edge3939, label %scalar.ph5993, !llvm.loop !314

._crit_edge3939:                                  ; preds = %scalar.ph5993.prol.loopexit, %scalar.ph5993, %middle.block6002, %.preheader3595
  %i.ioe = add i32 %i.ilp, %i.ilo
  store i32 %i.ioe, ptr %7, align 8, !tbaa !138
  %.not47.i15663940 = icmp eq i32 %i.ilo, 0
  br i1 %.not47.i15663940, label %bigint_mul_pow2.exit1558, label %.lr.ph3943

.lr.ph3943:                                       ; preds = %._crit_edge3939
  %i.iof = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %.lr.ph3935.preheader

bb.ary:                                           ; preds = %bb.arx
  %i.iog = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.ioh = zext i32 %i.ilp to i64                 ; 10 uses
  %i.ioi = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.ioh
  store i64 0, ptr %i.ioi, align 8, !tbaa !91
  %.not.i15603927 = icmp eq i32 %i.ilp, 0
  %.pre5043 = zext nneg i32 %i.iln to i64         ; 5 uses
  br i1 %.not.i15603927, label %._crit_edge3931, label %.lr.ph3930

.lr.ph3930:                                       ; preds = %bb.ary
  %i.ioj = sub nuw nsw i32 64, %i.iln
  %i.iok = zext nneg i32 %i.ioj to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.ilp, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3930
  %i.iol = add nsw i64 %i.ioh, -1                 ; 2 uses
  %i.iom = add i32 %i.ilp, %i.ilo
  %i.ion = trunc i64 %i.iol to i32
  %i.ioo = icmp ult i32 %i.iom, %i.ion
  %i.iop = icmp ugt i64 %i.iol, 4294967295
  %i.ioq = or i1 %i.ioo, %i.iop
  br i1 %i.ioq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ior = shl nuw nsw i64 %i.ioh, 3              ; 2 uses
  %i.ios = add i32 %i.ilp, %i.ilo
  %i.iot = zext i32 %i.ios to i64
  %i.iou = shl nuw nsw i64 %i.iot, 3              ; 2 uses
  %i.iov = sub nsw i64 %i.iou, %i.ior
  %diff.check = icmp ugt i64 %i.iov, -32
  %i.iow = sub nsw i64 %i.ior, %i.iou
  %i.iox = add nsw i64 %i.iow, -9
  %diff.check5984 = icmp ult i64 %i.iox, 31
  %conflict.rdx = or i1 %diff.check, %diff.check5984
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ioh, 4294967292             ; 2 uses
  %i.ioy = and i64 %i.ioh, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.iok, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5985 = insertelement <2 x i64> poison, i64 %.pre5043, i64 0
  %broadcast.splat5986 = shufflevector <2 x i64> %broadcast.splatinsert5985, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ioz = sub i64 %i.ioh, %index                 ; 3 uses
  %i.ipa = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.ioz ; 2 uses
  %i.ipb = getelementptr inbounds i8, ptr %i.ipa, i64 -8
  %i.ipc = getelementptr inbounds i8, ptr %i.ipa, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ipb, align 8, !tbaa !91
  %wide.load5987 = load <2 x i64>, ptr %i.ipc, align 8, !tbaa !91
  %i.ipd = shl <2 x i64> %wide.load, %broadcast.splat5986
  %i.ipe = shl <2 x i64> %wide.load5987, %broadcast.splat5986
  %i.ipf = getelementptr [8 x i8], ptr %7, i64 %i.ioz ; 2 uses
  %i.ipg = getelementptr i8, ptr %i.ipf, i64 -8
  %i.iph = getelementptr i8, ptr %i.ipf, i64 -24
  %wide.load5988 = load <2 x i64>, ptr %i.ipg, align 8, !tbaa !91
  %wide.load5989 = load <2 x i64>, ptr %i.iph, align 8, !tbaa !91
  %i.ipi = lshr <2 x i64> %wide.load5988, %broadcast.splat
  %i.ipj = lshr <2 x i64> %wide.load5989, %broadcast.splat
  %i.ipk = or <2 x i64> %i.ipi, %i.ipd
  %i.ipl = or <2 x i64> %i.ipj, %i.ipe
  %i.ipm = trunc nuw i64 %i.ioz to i32
  %i.ipn = add i32 %i.ilo, %i.ipm
  %i.ipo = zext i32 %i.ipn to i64
  %i.ipp = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.ipo ; 2 uses
  %i.ipq = getelementptr inbounds i8, ptr %i.ipp, i64 -8
  %i.ipr = getelementptr inbounds i8, ptr %i.ipp, i64 -24
  store <2 x i64> %i.ipk, ptr %i.ipq, align 8, !tbaa !91
  store <2 x i64> %i.ipl, ptr %i.ipr, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ips = icmp eq i64 %index.next, %n.vec
  br i1 %i.ips, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ioh
  br i1 %cmp.n, label %._crit_edge3931, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3930, %middle.block
  %indvars.iv4670.ph = phi i64 [ %i.ioh, %vector.memcheck ], [ %i.ioh, %vector.scevcheck ], [ %i.ioh, %.lr.ph3930 ], [ %i.ioy, %middle.block ] ; 7 uses
  %xtraiter6458 = and i64 %indvars.iv4670.ph, 1
  %lcmp.mod6459.not = icmp eq i64 %xtraiter6458, 0
  br i1 %lcmp.mod6459.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ipt = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %indvars.iv4670.ph
  %i.ipu = load i64, ptr %i.ipt, align 8, !tbaa !91
  %i.ipv = shl i64 %i.ipu, %.pre5043
  %i.ipw = add nsw i64 %indvars.iv4670.ph, -1
  %i.ipx = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670.ph
  %i.ipy = load i64, ptr %i.ipx, align 8, !tbaa !91
  %i.ipz = lshr i64 %i.ipy, %i.iok
  %i.iqa = or i64 %i.ipz, %i.ipv
  %i.iqb = trunc nuw i64 %indvars.iv4670.ph to i32
  %i.iqc = add i32 %i.ilo, %i.iqb
  %i.iqd = zext i32 %i.iqc to i64
  %i.iqe = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.iqd
  store i64 %i.iqa, ptr %i.iqe, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv4670.unr = phi i64 [ %indvars.iv4670.ph, %scalar.ph.preheader ], [ %i.ipw, %scalar.ph.prol ]
  %i.iqf = icmp eq i64 %indvars.iv4670.ph, 1
  br i1 %i.iqf, label %._crit_edge3931, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv4670 = phi i64 [ %i.iqv, %scalar.ph ], [ %indvars.iv4670.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.iqg = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %indvars.iv4670
  %i.iqh = load i64, ptr %i.iqg, align 8, !tbaa !91
  %i.iqi = shl i64 %i.iqh, %.pre5043
  %i.iqj = add nsw i64 %indvars.iv4670, -1        ; 2 uses
  %i.iqk = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670
  %i.iql = load i64, ptr %i.iqk, align 8, !tbaa !91
  %i.iqm = lshr i64 %i.iql, %i.iok
  %i.iqn = or i64 %i.iqm, %i.iqi
  %i.iqo = trunc nuw i64 %indvars.iv4670 to i32
  %i.iqp = add i32 %i.ilo, %i.iqo
  %i.iqq = zext i32 %i.iqp to i64
  %i.iqr = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.iqq
  store i64 %i.iqn, ptr %i.iqr, align 8, !tbaa !91
  %i.iqs = getelementptr [8 x i8], ptr %7, i64 %indvars.iv4670
  %i.iqt = load i64, ptr %i.iqs, align 8, !tbaa !91
  %i.iqu = shl i64 %i.iqt, %.pre5043
  %i.iqv = add nsw i64 %indvars.iv4670, -2        ; 2 uses
  %i.iqw = getelementptr [8 x i8], ptr %7, i64 %i.iqj
  %i.iqx = load i64, ptr %i.iqw, align 8, !tbaa !91
  %i.iqy = lshr i64 %i.iqx, %i.iok
  %i.iqz = or i64 %i.iqy, %i.iqu
  %i.ira = trunc nuw i64 %i.iqj to i32
  %i.irb = add i32 %i.ilo, %i.ira
  %i.irc = zext i32 %i.irb to i64
  %i.ird = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.irc
  store i64 %i.iqz, ptr %i.ird, align 8, !tbaa !91
  %.not.i1560.wide.1 = icmp eq i64 %i.iqv, 0
  br i1 %.not.i1560.wide.1, label %._crit_edge3931, label %scalar.ph, !llvm.loop !316

._crit_edge3931:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ary
  %i.ire = load i64, ptr %i.iog, align 8, !tbaa !91
  %i.irf = shl i64 %i.ire, %.pre5043
  %i.irg = zext nneg i32 %i.ilo to i64
  %i.irh = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.irg
  store i64 %i.irf, ptr %i.irh, align 8, !tbaa !91
  %i.iri = add i32 %i.ilp, %i.ilo                 ; 2 uses
  %i.irj = zext i32 %i.iri to i64
  %i.irk = getelementptr inbounds nuw [8 x i8], ptr %i.iog, i64 %i.irj
  %i.irl = load i64, ptr %i.irk, align 8, !tbaa !91
  %i.irm = icmp ne i64 %i.irl, 0
  %i.irn = zext i1 %i.irm to i32
  %i.iro = add i32 %i.iri, %i.irn
  store i32 %i.iro, ptr %7, align 8, !tbaa !138
  %.not45.i15623932 = icmp eq i32 %i.ilo, 0
  br i1 %.not45.i15623932, label %bigint_mul_pow2.exit1558, label %.lr.ph3935.preheader

.lr.ph3935.preheader:                             ; preds = %._crit_edge3931, %._crit_edge3948, %.lr.ph3960.preheader, %.lr.ph3943
  %.sink5741 = phi i32 [ %i.ifp, %._crit_edge3948 ], [ %i.ilo, %.lr.ph3943 ], [ %i.ifp, %.lr.ph3960.preheader ], [ %i.ilo, %._crit_edge3931 ]
  %.sink5736 = phi ptr [ %i.hyo, %._crit_edge3948 ], [ %i.iof, %.lr.ph3943 ], [ %i.hyo, %.lr.ph3960.preheader ], [ %i.iog, %._crit_edge3931 ]
  %.ph5735 = phi i32 [ %i.ill, %._crit_edge3948 ], [ %i.ifm, %.lr.ph3943 ], [ %i.iid, %.lr.ph3960.preheader ], [ %i.ifm, %._crit_edge3931 ]
  %18 = add nsw i32 %.sink5741, -1
  %i.irp = zext i32 %18 to i64
  %19 = shl nuw nsw i64 %i.irp, 3
  %20 = add nuw nsw i64 %19, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink5736, i8 0, i64 %20, i1 false), !tbaa !91
  br label %bigint_mul_pow2.exit1558

bigint_mul_pow2.exit1558:                         ; preds = %.lr.ph3935.preheader, %._crit_edge3931, %._crit_edge3939, %._crit_edge3948
  %21 = phi i32 [ %i.ill, %._crit_edge3948 ], [ %i.ifm, %._crit_edge3931 ], [ %i.ifm, %._crit_edge3939 ], [ %.ph5735, %.lr.ph3935.preheader ] ; 2 uses
  %i.irq = load i32, ptr %7, align 8, !tbaa !138  ; 4 uses
  %i.irr = icmp ult i32 %i.irq, %21
  br i1 %i.irr, label %bigint_cmp.exit1588.thread, label %bb.arz

bb.arz:                                           ; preds = %bigint_mul_pow2.exit1558
  %i.irs = icmp ugt i32 %i.irq, %21
  br i1 %i.irs, label %bigint_cmp.exit1588.thread, label %.preheader3591

.preheader3591:                                   ; preds = %bb.arz
  %.not.i15825942 = icmp eq i32 %i.irq, 0
  br i1 %.not.i15825942, label %bigint_cmp.exit1588.thread3316, label %.lr.ph5945

.lr.ph5945:                                       ; preds = %.preheader3591
  %i.irt = zext i32 %i.irq to i64
  br label %bb.asb

bb.asa:                                           ; preds = %bb.asb
  %i.iru = add nsw i64 %indvars.iv46885943, -1    ; 2 uses
  %.not.i1582 = icmp eq i64 %i.iru, 0
  br i1 %.not.i1582, label %bigint_cmp.exit1588.thread3316, label %bb.asb, !llvm.loop !153

bb.asb:                                           ; preds = %.lr.ph5945, %bb.asa
  %.016.i15805944 = phi i32 [ undef, %.lr.ph5945 ], [ %.1.i1585, %bb.asa ]
  %indvars.iv46885943 = phi i64 [ %i.irt, %.lr.ph5945 ], [ %i.iru, %bb.asa ] ; 3 uses
  %i.irv = getelementptr [8 x i8], ptr %7, i64 %indvars.iv46885943
  %i.irw = load i64, ptr %i.irv, align 8, !tbaa !91 ; 3 uses
  %i.irx = getelementptr [8 x i8], ptr %8, i64 %indvars.iv46885943
  %i.iry = load i64, ptr %i.irx, align 8, !tbaa !91 ; 3 uses
  %.not3394 = icmp ult i64 %i.irw, %i.iry
  %.not3395 = icmp ugt i64 %i.irw, %i.iry
  %..016.i1583 = select i1 %.not3395, i32 1, i32 %.016.i15805944
  %.1.i1585 = select i1 %.not3394, i32 -1, i32 %..016.i1583 ; 3 uses
  %cond.i1586 = icmp eq i64 %i.irw, %i.iry
  br i1 %cond.i1586, label %bb.asa, label %bigint_cmp.exit1588, !llvm.loop !153

bigint_cmp.exit1588:                              ; preds = %bb.asb
  %.not989.i = icmp eq i32 %.1.i1585, 0
  br i1 %.not989.i, label %bigint_cmp.exit1588.thread3316, label %bigint_cmp.exit1588.thread, !prof !124

bigint_cmp.exit1588.thread:                       ; preds = %bigint_mul_pow2.exit1558, %bb.arz, %bigint_cmp.exit1588
  %.2.i15873315 = phi i32 [ %.1.i1585, %bigint_cmp.exit1588 ], [ -1, %bigint_mul_pow2.exit1558 ], [ 1, %bb.arz ]
  %i.irz = icmp sgt i32 %.2.i15873315, 0
  %i.isa = zext i1 %i.irz to i64
  br label %bb.asc

bigint_cmp.exit1588.thread3316:                   ; preds = %bb.asa, %.preheader3591, %bigint_cmp.exit1588
  %i.isb = and i64 %.0.i1500.ph, 1
  br label %bb.asc

bb.asc:                                           ; preds = %bigint_cmp.exit1588.thread3316, %bigint_cmp.exit1588.thread
  %.pn.i = phi i64 [ %i.isa, %bigint_cmp.exit1588.thread ], [ %i.isb, %bigint_cmp.exit1588.thread3316 ]
  %.0895.i = add nuw nsw i64 %.pn.i, %.0.i1500.ph ; 2 uses
  %i.isc = icmp eq i64 %.0895.i, 9218868437227405312
  br i1 %i.isc, label %bb.asd, label %bb.asi, !prof !8

bb.asd:                                           ; preds = %bb.asc
  %i.isd = and i32 %.fr, 128
  %.not3396 = icmp eq i32 %i.isd, 0
  br i1 %.not3396, label %bb.asf, label %bb.ase, !prof !25

bb.ase:                                           ; preds = %bb.asd
  %i.ise = load ptr, ptr %i.g, align 8, !tbaa !92
  store i8 0, ptr %i.ise, align 1, !tbaa !81
  %i.isf = ptrtoint ptr %.33.i to i64
  %i.isg = ptrtoint ptr %i.gqq to i64
  %i.ish = sub i64 %i.isf, %i.isg
  %i.isi = shl i64 %i.ish, 8
  %i.isj = or disjoint i64 %i.isi, 1
  store i64 %i.isj, ptr %i.gqu, align 8, !tbaa !79
  %i.isk = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store ptr %i.gqq, ptr %i.isk, align 8, !tbaa !81
  store ptr %.33.i, ptr %i.g, align 8, !tbaa !92
  br label %read_num.exit.thread3326

bb.asf:                                           ; preds = %bb.asd
  %i.isl = and i32 %.fr, 16
  %.not3397 = icmp eq i32 %i.isl, 0
  br i1 %.not3397, label %bb.ash, label %bb.asg, !prof !25

bb.asg:                                           ; preds = %bb.asf
  store i64 20, ptr %i.gqu, align 8, !tbaa !79
  %i.ism = select i1 %i.gqx, i64 -4503599627370496, i64 9218868437227405312
  %i.isn = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.ism, ptr %i.isn, align 8, !tbaa !81
  br label %read_num.exit.thread3326

bb.ash:                                           ; preds = %bb.asf
  store ptr @.str.93, ptr %i.e, align 8, !tbaa !92
  store ptr %i.gqq, ptr %i.d, align 8, !tbaa !92
  br label %read_num.exit

bb.asi:                                           ; preds = %bb.asc
  store i64 20, ptr %i.gqu, align 8, !tbaa !79
  %i.iso = select i1 %i.gqx, i64 -9223372036854775808, i64 0
  %i.isp = or disjoint i64 %.0895.i, %i.iso
  %i.isq = getelementptr inbounds nuw i8, ptr %.24641, i64 24
  store i64 %i.isp, ptr %i.isq, align 8, !tbaa !81
  br label %read_num.exit.thread3326

read_num.exit.thread3321:                         ; preds = %bb.aps, %bb.ajx, %bb.aph, %bb.apz, %bb.aoy, %read_inf_or_nan.exit1133.thread, %bb.apn, %bb.aqi, %bb.ajz, %bb.akb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

read_num.exit.thread3326:                         ; preds = %bb.ara, %bb.arc, %bb.arf, %bb.ase, %bb.asg, %bb.asi
  store ptr %.33.i, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %.sink.split5712

read_num.exit:                                    ; preds = %bb.ard, %bb.ash
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.atc

bb.asj:                                           ; preds = %.lr.ph3828
  switch i8 %i.gqr, label %bb.asn [
    i8 123, label %.loopexit3570
    i8 91, label %.loopexit3571
    i8 116, label %bb.ask
    i8 102, label %bb.asl
    i8 110, label %bb.asm
  ]

bb.ask:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1665 = load i32, ptr %i.gqq, align 1
  %i.isr = icmp eq i32 %.sroa.01.0.copyload.i1665, 1702195828
  br i1 %i.isr, label %read_true.exit, label %read_true.exit1119, !prof !25

read_true.exit:                                   ; preds = %bb.ask
  %i.iss = add i64 %.8718, 1
  %i.ist = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 11, ptr %i.ist, align 8, !tbaa !79
  %i.isu = getelementptr inbounds nuw i8, ptr %i.gqq, i64 4 ; 2 uses
  store ptr %i.isu, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

bb.asl:                                           ; preds = %bb.asj
  %i.isv = getelementptr inbounds nuw i8, ptr %i.gqq, i64 1
  %.sroa.01.0.copyload.i1662 = load i32, ptr %i.isv, align 1
  %i.isw = icmp eq i32 %.sroa.01.0.copyload.i1662, 1702063201
  br i1 %i.isw, label %read_false.exit, label %read_false.exit1121, !prof !25

read_false.exit:                                  ; preds = %bb.asl
  %i.isx = add i64 %.8718, 1
  %i.isy = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 3, ptr %i.isy, align 8, !tbaa !79
  %i.isz = getelementptr inbounds nuw i8, ptr %i.gqq, i64 5 ; 2 uses
  store ptr %i.isz, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

bb.asm:                                           ; preds = %bb.asj
  %.sroa.01.0.copyload.i1659 = load i32, ptr %i.gqq, align 1
  %i.ita = icmp eq i32 %.sroa.01.0.copyload.i1659, 1819047278
  br i1 %i.ita, label %read_null.exit, label %read_null.exit1123, !prof !25

read_null.exit:                                   ; preds = %bb.asm
  %i.itb = add i64 %.8718, 1
  %i.itc = getelementptr inbounds nuw i8, ptr %.24641, i64 16 ; 2 uses
  store i64 2, ptr %i.itc, align 8, !tbaa !79
  %i.itd = getelementptr inbounds nuw i8, ptr %i.gqq, i64 4 ; 2 uses
  store ptr %i.itd, ptr %i.d, align 8, !tbaa !92
  br label %.preheader3579

.preheader3579:                                   ; preds = %..preheader3579_crit_edge, %bb.abi, %bb.aso, %bb.asv, %read_str_opt.exit1192, %read_true.exit, %read_false.exit, %read_null.exit
  %.promoted4026 = phi ptr [ %i.itd, %read_null.exit ], [ %i.isz, %read_false.exit ], [ %i.isu, %read_true.exit ], [ %i.itn, %bb.aso ], [ %.promoted4026.pre, %..preheader3579_crit_edge ], [ %.promoted40264920, %bb.abi ], [ %.promoted40264919, %bb.asv ], [ %i.gqn, %read_str_opt.exit1192 ] ; 3 uses
  %.9761.ph = phi i64 [ %.8760, %read_null.exit ], [ %.8760, %read_false.exit ], [ %.8760, %read_true.exit ], [ %.8760, %bb.aso ], [ %i.w, %..preheader3579_crit_edge ], [ %.4756, %bb.abi ], [ %.10762, %bb.asv ], [ %.8760, %read_str_opt.exit1192 ] ; 3 uses
  %.18740.ph = phi i64 [ %.17739, %read_null.exit ], [ %.17739, %read_false.exit ], [ %.17739, %read_true.exit ], [ %.17739, %bb.aso ], [ %i.y, %..preheader3579_crit_edge ], [ %.11733, %bb.abi ], [ %.19741, %bb.asv ], [ %.17739, %read_str_opt.exit1192 ] ; 5 uses
  %.9719.ph = phi i64 [ %i.itb, %read_null.exit ], [ %i.isx, %read_false.exit ], [ %i.iss, %read_true.exit ], [ %i.itm, %bb.aso ], [ %i.u, %..preheader3579_crit_edge ], [ %i.fag, %bb.abi ], [ %i.iur, %bb.asv ], [ %i.fxd, %read_str_opt.exit1192 ] ; 3 uses
  %.25707.ph = phi ptr [ %.24706, %read_null.exit ], [ %.24706, %read_false.exit ], [ %.24706, %read_true.exit ], [ %.24706, %bb.aso ], [ %i.ac, %..preheader3579_crit_edge ], [ %.16698, %bb.abi ], [ %.26708, %bb.asv ], [ %.24706, %read_str_opt.exit1192 ] ; 2 uses
  %.25670.ph = phi ptr [ %.24669, %read_null.exit ], [ %.24669, %read_false.exit ], [ %.24669, %read_true.exit ], [ %.24669, %bb.aso ], [ %i.ae, %..preheader3579_crit_edge ], [ %.16661, %bb.abi ], [ %.26671, %bb.asv ], [ %.24669, %read_str_opt.exit1192 ] ; 5 uses
  %.25642.ph = phi ptr [ %i.itc, %read_null.exit ], [ %i.isy, %read_false.exit ], [ %i.ist, %read_true.exit ], [ %i.gqu, %bb.aso ], [ %i.aa, %..preheader3579_crit_edge ], [ %.16633, %bb.abi ], [ %.26643, %bb.asv ], [ %i.fxc, %read_str_opt.exit1192 ] ; 3 uses
  %.25.ph = phi ptr [ %.24, %read_null.exit ], [ %.24, %read_false.exit ], [ %.24, %read_true.exit ], [ %.24, %bb.aso ], [ %i.ag, %..preheader3579_crit_edge ], [ %i.fae, %bb.abi ], [ %i.iup, %bb.asv ], [ %.24, %read_str_opt.exit1192 ] ; 5 uses
  store i32 6, ptr %0, align 8, !tbaa !264
  store ptr %.25642.ph, ptr %i.z, align 8, !tbaa !269
  store i64 %.9719.ph, ptr %i.t, align 8, !tbaa !266
  store i64 %.9761.ph, ptr %i.v, align 8, !tbaa !267
  store ptr %.promoted4026, ptr %i.n, align 8, !tbaa !263
  %.not8274029 = icmp ult ptr %.promoted4026, %i.m
  br i1 %.not8274029, label %.lr.ph4031, label %.loopexit3576, !prof !112

bb.asn:                                           ; preds = %bb.asj
  %i.ite = and i8 %i.gqp, 4
  %.not3360 = icmp eq i8 %i.ite, 0
  br i1 %.not3360, label %.loopexit3572, label %.preheader3605

.preheader3605:                                   ; preds = %bb.asn, %.preheader3605
  %i.itf = phi ptr [ %i.itg, %.preheader3605 ], [ %i.gqq, %bb.asn ]
  %i.itg = getelementptr inbounds nuw i8, ptr %i.itf, i64 1 ; 5 uses
  store ptr %i.itg, ptr %i.d, align 8, !tbaa !92
  %i.ith = load i8, ptr %i.itg, align 1, !tbaa !81 ; 3 uses
  %i.iti = zext i8 %i.ith to i64
  %i.itj = getelementptr inbounds nuw i8, ptr @char_table1, i64 %i.iti
  %i.itk = load i8, ptr %i.itj, align 1, !tbaa !81 ; 2 uses
  %i.itl = and i8 %i.itk, 4
  %.not3361 = icmp eq i8 %i.itl, 0
  br i1 %.not3361, label %.loopexit3606, label %.preheader3605, !llvm.loop !303

.sink.split5712:                                  ; preds = %read_inf.exit, %bb.ajq, %bb.ald, %bb.alg, %bb.alj, %bb.alm, %bb.alp, %bb.als, %bb.alv, %bb.aly, %bb.amb, %bb.ame, %bb.amh, %bb.amk, %bb.amn, %bb.amq, %bb.amt, %bb.amw, %bb.amz, %bb.aky, %bb.akx, %bb.akw, %bb.aot, %bb.aos, %bb.aor, %.thread5413, %bb.ala, %.loopexit3602, %bb.apq, %bb.apd, %bb.ajw, %bb.aqn, %bb.aqs, %bb.aqh, %bb.aqf, %bb.aqc, %bb.apy, %bb.apw, %bb.apu, %read_num.exit.thread3326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.aso

bb.aso:                                           ; preds = %.sink.split5712, %.split3324, %.split3323
  %i.itm = add i64 %.8718, 1
  %i.itn = load ptr, ptr %i.d, align 8, !tbaa !92 ; 3 uses
  %.not826 = icmp ult ptr %i.itn, %i.m
end_hunk_17
