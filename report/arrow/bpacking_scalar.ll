inline.NumInlined: 2245
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5arrow8internal13unpack_scalarItEEvPKhPT_iii:bb.a
  %i.akw = insertelement <8 x i16> poison, i16 %i.akt, i64 0
  %i.akx = insertelement <8 x i16> %i.akw, i16 %i.akv, i64 1
  %i.aky = insertelement <8 x i16> %i.akx, i16 %i.aks, i64 2
  %i.akz = insertelement <8 x i16> %i.aky, i16 %i.akr, i64 3
  %i.ala = insertelement <8 x i16> %i.akz, i16 %i.akq, i64 4
  %i.alb = insertelement <8 x i16> %i.ala, i16 %i.aku, i64 5
  %i.alc = insertelement <8 x i16> %i.alb, i16 %i.ako, i64 6
  %i.ald = insertelement <8 x i16> %i.alc, i16 %i.akn, i64 7
  %i.ale = and <8 x i16> %i.ald, splat (i16 127)
  %i.alf = getelementptr inbounds nuw i8, ptr %.02630.i178.i, i64 16
  %.val79.i.i.i.i = load i32, ptr %i.akd, align 1 ; 5 uses
  %.val80.i.i.i.i = load i32, ptr %i.akc, align 1 ; 5 uses
  %i.alg = lshr i32 %.val80.i.i.i.i, 13
  %i.alh = lshr i32 %.val80.i.i.i.i, 20
  %i.ali = tail call i32 @llvm.fshl.i32(i32 %.val79.i.i.i.i, i32 %.val80.i.i.i.i, i32 5)
  %i.alj = tail call i32 @llvm.fshl.i32(i32 %.val80.i.i.i.i, i32 %.val81.i.i.i.i, i32 1)
  %i.alk = trunc i32 %.val79.i.i.i.i to i16       ; 2 uses
  %i.all = trunc i32 %i.ali to i16
  %i.alm = trunc nuw nsw i32 %i.alh to i16
  %i.aln = trunc i32 %i.alg to i16
  %i.alo = trunc i32 %.val80.i.i.i.i to i16
  %i.alp = trunc i32 %i.alj to i16
  %i.alq = trunc nuw nsw i32 %i.akm to i16
  %i.alr = lshr i16 %i.alk, 9
  %i.als = lshr i16 %i.alk, 2
  %i.alt = lshr i16 %i.alo, 6
  %i.alu = insertelement <8 x i16> poison, i16 %i.alq, i64 0
  %i.alv = insertelement <8 x i16> %i.alu, i16 %i.alp, i64 1
  %i.alw = insertelement <8 x i16> %i.alv, i16 %i.alt, i64 2
  %i.alx = insertelement <8 x i16> %i.alw, i16 %i.aln, i64 3
  %i.aly = insertelement <8 x i16> %i.alx, i16 %i.alm, i64 4
  %i.alz = insertelement <8 x i16> %i.aly, i16 %i.all, i64 5
  %i.ama = insertelement <8 x i16> %i.alz, i16 %i.als, i64 6
  %i.amb = insertelement <8 x i16> %i.ama, i16 %i.alr, i64 7
  %i.amc = and <8 x i16> %i.amb, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 -1>
  %i.amd = getelementptr inbounds nuw i8, ptr %.02630.i178.i, i64 32
  %.val78.i.i.i179.i = load i32, ptr %i.ake, align 1 ; 5 uses
  %i.ame = lshr i32 %.val78.i.i.i179.i, 19
  %i.amf = lshr i32 %.val78.i.i.i179.i, 12
  %i.amg = lshr i32 %.val79.i.i.i.i, 23
  %i.amh = lshr i32 %.val79.i.i.i.i, 16
  %i.ami = tail call i32 @llvm.fshl.i32(i32 %.val78.i.i.i179.i, i32 %.val79.i.i.i.i, i32 2)
  %i.amj = trunc nuw nsw i32 %i.ame to i16
  %i.amk = trunc i32 %i.amf to i16
  %i.aml = trunc i32 %.val78.i.i.i179.i to i16
  %i.amm = trunc i32 %i.ami to i16
  %i.amn = trunc nuw nsw i32 %i.amg to i16
  %i.amo = trunc nuw i32 %i.amh to i16
  %i.amp = lshr i16 %i.aml, 5
  %i.amq = insertelement <8 x i16> poison, i16 %i.amo, i64 0
  %i.amr = insertelement <8 x i16> %i.amq, i16 %i.amn, i64 1
  %i.ams = insertelement <8 x i16> %i.amr, i16 %i.amm, i64 2
  %i.amt = insertelement <8 x i16> %i.ams, i16 %i.amp, i64 3
  %i.amu = insertelement <8 x i16> %i.amt, i16 %i.amk, i64 4
  %i.amv = insertelement <8 x i16> %i.amu, i16 %i.amj, i64 5
  %i.amw = getelementptr inbounds nuw i8, ptr %.02630.i178.i, i64 48
  %.val.i.i.i181.i = load i32, ptr %i.akg, align 1 ; 5 uses
  %.val77.i.i.i180.i = load i32, ptr %i.akf, align 1 ; 5 uses
  %i.amx = tail call i32 @llvm.fshl.i32(i32 %.val77.i.i.i180.i, i32 %.val78.i.i.i179.i, i32 6)
  %i.amy = tail call i32 @llvm.fshl.i32(i32 %.val.i.i.i181.i, i32 %.val77.i.i.i180.i, i32 3)
  %i.amz = lshr i32 %.val.i.i.i181.i, 25
  %i.ana = lshr i32 %.val.i.i.i181.i, 18
  %i.anb = lshr i32 %.val.i.i.i181.i, 11
  %i.anc = lshr i32 %.val77.i.i.i180.i, 22
  %i.and = lshr i32 %.val77.i.i.i180.i, 15
  store <8 x i16> %i.ale, ptr %.02630.i178.i, align 2, !tbaa !38
  store <8 x i16> %i.amc, ptr %i.alf, align 2, !tbaa !38
  %i.ane = trunc i32 %i.amx to i16
  %i.anf = trunc nuw nsw i32 %i.amz to i16
  %i.ang = trunc nuw nsw i32 %i.ana to i16
  %i.anh = trunc i32 %i.anb to i16
  %i.ani = trunc i32 %.val.i.i.i181.i to i16
  %i.anj = trunc i32 %i.amy to i16
  %i.ank = trunc nuw nsw i32 %i.anc to i16
  %i.anl = trunc i32 %i.and to i16
  %i.anm = trunc i32 %.val77.i.i.i180.i to i16    ; 2 uses
  %i.ann = lshr i16 %i.anm, 1
  %i.ano = insertelement <8 x i16> %i.amv, i16 %i.ane, i64 6
  %i.anp = insertelement <8 x i16> %i.ano, i16 %i.ann, i64 7
  %i.anq = and <8 x i16> %i.anp, splat (i16 127)
  store <8 x i16> %i.anq, ptr %i.amd, align 2, !tbaa !38
  %i.anr = lshr i16 %i.ani, 4
  %i.ans = lshr i16 %i.anm, 8
  %i.ant = insertelement <8 x i16> poison, i16 %i.ans, i64 0
  %i.anu = insertelement <8 x i16> %i.ant, i16 %i.anl, i64 1
  %i.anv = insertelement <8 x i16> %i.anu, i16 %i.ank, i64 2
  %i.anw = insertelement <8 x i16> %i.anv, i16 %i.anj, i64 3
  %i.anx = insertelement <8 x i16> %i.anw, i16 %i.anr, i64 4
  %i.any = insertelement <8 x i16> %i.anx, i16 %i.anh, i64 5
  %i.anz = insertelement <8 x i16> %i.any, i16 %i.ang, i64 6
  %i.aoa = insertelement <8 x i16> %i.anz, i16 %i.anf, i64 7
  %i.aob = and <8 x i16> %i.aoa, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 -1>
  store <8 x i16> %i.aob, ptr %i.amw, align 2, !tbaa !38
  %i.aoc = getelementptr inbounds nuw i8, ptr %.02531.i177.i, i64 28 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.02630.i178.i, i64 64 ; 2 uses
  %i.aoe = add nuw nsw i32 %.032.i176.i, 1        ; 2 uses
  %exitcond.not.i182.i = icmp eq i32 %i.aoe, %i.aje
  br i1 %exitcond.not.i182.i, label %._crit_edge.i167.i, label %.lr.ph.i175.i, !llvm.loop !60

bb.q:                                             ; preds = %bb.a
  %i.aof = shl nsw i32 %2, 3
  %i.aog = add nsw i32 %4, %i.aof
  %i.aoh = icmp sgt i32 %2, 0
  br i1 %i.aoh, label %.lr.ph.i.i207.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i207.i:                                  ; preds = %bb.q, %bb.r
  %.026.i.i208.i = phi ptr [ %i.aox, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i209.i = phi i32 [ %i.aok, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.aoi = srem i32 %.02325.i.i209.i, 8           ; 2 uses
  %i.aoj = sdiv i32 %.02325.i.i209.i, 8           ; 2 uses
  %.not.i.i210.i = icmp eq i32 %i.aoi, 0
  br i1 %.not.i.i210.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i207.i
  %i.aok = add nsw i32 %.02325.i.i209.i, 8        ; 3 uses
  %i.aol = add nsw i32 %.02325.i.i209.i, 7
  %i.aom = sdiv i32 %i.aol, 8
  %i.aon = sub nsw i32 %i.aom, %i.aoj             ; 2 uses
  %i.aoo = add nsw i32 %i.aon, 1
  %i.aop = icmp slt i32 %i.aon, 2
  tail call void @llvm.assume(i1 %i.aop)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !17
  %i.aoq = sext i32 %i.aoj to i64
  %i.aor = getelementptr inbounds i8, ptr %0, i64 %i.aoq
  %i.aos = sext i32 %i.aoo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.aor, i64 %i.aos, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i211.i = load i64, ptr %i.p, align 8, !tbaa !17
  %i.aot = zext nneg i32 %i.aoi to i64
  %i.aou = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i211.i, %i.aot
  %i.aov = trunc i64 %i.aou to i16
  %i.aow = and i16 %i.aov, 255
  store i16 %i.aow, ptr %.026.i.i208.i, align 2, !tbaa !38
  %i.aox = getelementptr inbounds nuw i8, ptr %.026.i.i208.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.aoy = icmp slt i32 %i.aok, %i.aog
  br i1 %i.aoy, label %.lr.ph.i.i207.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !61

_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.r, %.lr.ph.i.i207.i, %bb.q
  %.023.lcssa.i.i188.i = phi i32 [ %4, %bb.q ], [ %.02325.i.i209.i, %.lr.ph.i.i207.i ], [ %i.aok, %bb.r ]
  %i.aoz = sub nsw i32 %.023.lcssa.i.i188.i, %4
  %i.apa = sdiv i32 %i.aoz, 8                     ; 3 uses
  %i.apb = shl nsw i32 %i.apa, 3
  %i.apc = add nsw i32 %i.apb, %4
  %i.apd = sub nsw i32 %2, %i.apa                 ; 4 uses
  %i.ape = sdiv i32 %i.apc, 8
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds i8, ptr %0, i64 %i.apf ; 2 uses
  %i.aph = sext i32 %i.apa to i64
  %i.api = getelementptr inbounds [2 x i8], ptr %1, i64 %i.aph ; 2 uses
  %i.apj = sdiv i32 %i.apd, 32                    ; 2 uses
  %i.apk = icmp sgt i32 %i.apd, 31
  br i1 %i.apk, label %.lr.ph.i195.i, label %._crit_edge.i189.i

._crit_edge.i189.i:                               ; preds = %.lr.ph.i195.i, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i190.i = phi ptr [ %i.api, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.auu, %.lr.ph.i195.i ] ; 8 uses
  %.025.lcssa.i191.i = phi ptr [ %i.apg, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.aut, %.lr.ph.i195.i ] ; 5 uses
  %i.apl = shl nsw i32 %i.apj, 5                  ; 2 uses
  %i.apm = sub nsw i32 %i.apd, %i.apl             ; 2 uses
  %i.apn = icmp samesign ult i32 %i.apm, 32
  tail call void @llvm.assume(i1 %i.apn)
  %.not.i192.i = icmp eq i32 %i.apd, %i.apl
  br i1 %.not.i192.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEtEEvPKhPT0_iii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i189.i
  %i.apo = shl nuw nsw i32 %i.apm, 3
  %i.app = zext nneg i32 %i.apo to i64            ; 3 uses
  %i.apq = tail call i64 @llvm.usub.sat.i64(i64 %i.app, i64 8) ; 3 uses
  %i.apr = lshr exact i64 %i.apq, 3
  %i.aps = add nuw nsw i64 %i.apr, 1              ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.apq, 24
  br i1 %min.iters.check, label %.lr.ph.i28.i193.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.apt = tail call i64 @llvm.usub.sat.i64(i64 %i.app, i64 8) ; 2 uses
  %i.apu = lshr exact i64 %i.apt, 3
  %i.apv = lshr exact i64 %i.apt, 2
  %i.apw = getelementptr i8, ptr %.026.lcssa.i190.i, i64 %i.apv
  %scevgep = getelementptr i8, ptr %i.apw, i64 2
  %i.apx = getelementptr i8, ptr %.025.lcssa.i191.i, i64 %i.apu
  %scevgep222 = getelementptr i8, ptr %i.apx, i64 1
  %bound0 = icmp ult ptr %.026.lcssa.i190.i, %scevgep222
  %bound1 = icmp ult ptr %.025.lcssa.i191.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i193.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check224 = icmp samesign ult i64 %i.apq, 120
  br i1 %min.iters.check224, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aps, 12
  %n.vec = and i64 %i.aps, 536870896              ; 5 uses
  %i.apy = shl nuw nsw i64 %n.vec, 3
  %i.apz = shl nuw nsw i64 %n.vec, 1
  %i.aqa = getelementptr i8, ptr %.026.lcssa.i190.i, i64 %i.apz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %5 = and i64 %index, 2305843009213693936
  %i.aqb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.026.lcssa.i190.i, i64 %i.aqb ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i191.i, i64 %5 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %wide.load = load <8 x i8>, ptr %i.aqc, align 1, !alias.scope !62
  %wide.load225 = load <8 x i8>, ptr %i.aqd, align 1, !alias.scope !62
  %i.aqe = zext <8 x i8> %wide.load to <8 x i16>
  %i.aqf = zext <8 x i8> %wide.load225 to <8 x i16>
  %i.aqg = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.aqe, ptr %next.gep, align 2, !tbaa !38, !alias.scope !65, !noalias !62
  store <8 x i16> %i.aqf, ptr %i.aqg, align 2, !tbaa !38, !alias.scope !65, !noalias !62
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aqh = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqh, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aps, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEtEEvPKhPT0_iii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i28.i193.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %i.aps, 536870908           ; 4 uses
  %i.aqi = shl nuw nsw i64 %n.vec228, 3
  %i.aqj = shl nuw nsw i64 %n.vec228, 1
  %i.aqk = getelementptr i8, ptr %.026.lcssa.i190.i, i64 %i.aqj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index229 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 3 uses
  %6 = and i64 %index229, 2305843009213693948
  %i.aql = shl i64 %index229, 1
  %next.gep230 = getelementptr i8, ptr %.026.lcssa.i190.i, i64 %i.aql
  %i.aqm = getelementptr inbounds nuw i8, ptr %.025.lcssa.i191.i, i64 %6
  %wide.load231 = load <4 x i8>, ptr %i.aqm, align 1, !alias.scope !62
  %i.aqn = zext <4 x i8> %wide.load231 to <4 x i16>
  store <4 x i16> %i.aqn, ptr %next.gep230, align 2, !tbaa !38, !alias.scope !65, !noalias !62
  %index.next232 = add nuw i64 %index229, 4       ; 2 uses
  %i.aqo = icmp eq i64 %index.next232, %n.vec228
  br i1 %i.aqo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n233 = icmp eq i64 %i.aps, %n.vec228
  br i1 %cmp.n233, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i193.i.preheader

.lr.ph.i28.i193.i.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.apy, %vec.epilog.iter.check ], [ %i.aqi, %vec.epilog.middle.block ]
  %.024.i.i194.i.ph = phi ptr [ %.026.lcssa.i190.i, %iter.check ], [ %.026.lcssa.i190.i, %vector.memcheck ], [ %i.aqa, %vec.epilog.iter.check ], [ %i.aqk, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i193.i

.lr.ph.i28.i193.i:                                ; preds = %.lr.ph.i28.i193.i.preheader, %.lr.ph.i28.i193.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i28.i193.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i28.i193.i.preheader ] ; 2 uses
  %.024.i.i194.i = phi ptr [ %i.aqt, %.lr.ph.i28.i193.i ], [ %.024.i.i194.i.ph, %.lr.ph.i28.i193.i.preheader ] ; 2 uses
  %i.aqp = lshr exact i64 %indvars.iv.i.i, 3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i191.i, i64 %i.aqp
  %i.aqr = load i8, ptr %i.aqq, align 1
  %i.aqs = zext i8 %i.aqr to i16
  store i16 %i.aqs, ptr %.024.i.i194.i, align 2, !tbaa !38
  %i.aqt = getelementptr inbounds nuw i8, ptr %.024.i.i194.i, i64 2
  %i.aqu = icmp samesign ult i64 %indvars.iv.next.i.i, %i.app
  br i1 %i.aqu, label %.lr.ph.i28.i193.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !72

.lr.ph.i195.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i195.i
  %.032.i196.i = phi i32 [ %i.auv, %.lr.ph.i195.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i197.i = phi ptr [ %i.aut, %.lr.ph.i195.i ], [ %i.apg, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 9 uses
  %.02630.i198.i = phi ptr [ %i.auu, %.lr.ph.i195.i ], [ %i.api, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 33 uses
  %.val78.i.i.i199.i = load i32, ptr %.02531.i197.i, align 1 ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 4
  %.val77.i.i.i200.i = load i32, ptr %i.aqv, align 1 ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 8
  %.val76.i.i.i201.i = load i32, ptr %i.aqw, align 1 ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 12
  %.val75.i.i.i202.i = load i32, ptr %i.aqx, align 1 ; 3 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 16
  %.val74.i.i.i203.i = load i32, ptr %i.aqy, align 1 ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 20
  %.val73.i.i.i204.i = load i32, ptr %i.aqz, align 1 ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 24
  %.val72.i.i.i.i = load i32, ptr %i.ara, align 1 ; 3 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 28
  %.val.i.i.i205.i = load i32, ptr %i.arb, align 1 ; 3 uses
  %i.arc = lshr i32 %.val78.i.i.i199.i, 16
  %i.ard = lshr i32 %.val78.i.i.i199.i, 24
  %i.are = lshr i32 %.val77.i.i.i200.i, 16
  %i.arf = lshr i32 %.val77.i.i.i200.i, 24
  %i.arg = lshr i32 %.val76.i.i.i201.i, 16
  %i.arh = lshr i32 %.val76.i.i.i201.i, 24
  %i.ari = lshr i32 %.val75.i.i.i202.i, 16
  %i.arj = lshr i32 %.val75.i.i.i202.i, 24
  %i.ark = lshr i32 %.val74.i.i.i203.i, 16
  %i.arl = lshr i32 %.val74.i.i.i203.i, 24
  %i.arm = lshr i32 %.val73.i.i.i204.i, 16
  %i.arn = lshr i32 %.val73.i.i.i204.i, 24
  %i.aro = lshr i32 %.val72.i.i.i.i, 16
  %i.arp = lshr i32 %.val72.i.i.i.i, 24
  %i.arq = lshr i32 %.val.i.i.i205.i, 16
  %i.arr = lshr i32 %.val.i.i.i205.i, 24
  %i.ars = trunc i32 %.val78.i.i.i199.i to i16    ; 2 uses
  %i.art = and i16 %i.ars, 255
  store i16 %i.art, ptr %.02630.i198.i, align 2, !tbaa !38
  %i.aru = lshr i16 %i.ars, 8
  %i.arv = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 2
  store i16 %i.aru, ptr %i.arv, align 2, !tbaa !38
  %i.arw = trunc nuw i32 %i.arc to i16
  %i.arx = and i16 %i.arw, 255
  %i.ary = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 4
  store i16 %i.arx, ptr %i.ary, align 2, !tbaa !38
  %i.arz = trunc nuw nsw i32 %i.ard to i16
  %i.asa = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 6
  store i16 %i.arz, ptr %i.asa, align 2, !tbaa !38
  %i.asb = trunc i32 %.val77.i.i.i200.i to i16    ; 2 uses
  %i.asc = and i16 %i.asb, 255
  %i.asd = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 8
  store i16 %i.asc, ptr %i.asd, align 2, !tbaa !38
  %i.ase = lshr i16 %i.asb, 8
  %i.asf = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 10
  store i16 %i.ase, ptr %i.asf, align 2, !tbaa !38
  %i.asg = trunc nuw i32 %i.are to i16
  %i.ash = and i16 %i.asg, 255
  %i.asi = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 12
  store i16 %i.ash, ptr %i.asi, align 2, !tbaa !38
  %i.asj = trunc nuw nsw i32 %i.arf to i16
  %i.ask = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 14
  store i16 %i.asj, ptr %i.ask, align 2, !tbaa !38
  %i.asl = trunc i32 %.val76.i.i.i201.i to i16    ; 2 uses
  %i.asm = and i16 %i.asl, 255
  %i.asn = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 16
  store i16 %i.asm, ptr %i.asn, align 2, !tbaa !38
  %i.aso = lshr i16 %i.asl, 8
  %i.asp = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 18
  store i16 %i.aso, ptr %i.asp, align 2, !tbaa !38
  %i.asq = trunc nuw i32 %i.arg to i16
  %i.asr = and i16 %i.asq, 255
  %i.ass = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 20
  store i16 %i.asr, ptr %i.ass, align 2, !tbaa !38
  %i.ast = trunc nuw nsw i32 %i.arh to i16
  %i.asu = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 22
  store i16 %i.ast, ptr %i.asu, align 2, !tbaa !38
  %i.asv = trunc i32 %.val75.i.i.i202.i to i16    ; 2 uses
  %i.asw = and i16 %i.asv, 255
  %i.asx = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 24
  store i16 %i.asw, ptr %i.asx, align 2, !tbaa !38
  %i.asy = lshr i16 %i.asv, 8
  %i.asz = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 26
  store i16 %i.asy, ptr %i.asz, align 2, !tbaa !38
  %i.ata = trunc nuw i32 %i.ari to i16
  %i.atb = and i16 %i.ata, 255
  %i.atc = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 28
  store i16 %i.atb, ptr %i.atc, align 2, !tbaa !38
  %i.atd = trunc nuw nsw i32 %i.arj to i16
  %i.ate = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 30
  store i16 %i.atd, ptr %i.ate, align 2, !tbaa !38
  %i.atf = trunc i32 %.val74.i.i.i203.i to i16    ; 2 uses
  %i.atg = and i16 %i.atf, 255
  %i.ath = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 32
  store i16 %i.atg, ptr %i.ath, align 2, !tbaa !38
  %i.ati = lshr i16 %i.atf, 8
  %i.atj = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 34
  store i16 %i.ati, ptr %i.atj, align 2, !tbaa !38
  %i.atk = trunc nuw i32 %i.ark to i16
  %i.atl = and i16 %i.atk, 255
  %i.atm = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 36
  store i16 %i.atl, ptr %i.atm, align 2, !tbaa !38
  %i.atn = trunc nuw nsw i32 %i.arl to i16
  %i.ato = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 38
  store i16 %i.atn, ptr %i.ato, align 2, !tbaa !38
  %i.atp = trunc i32 %.val73.i.i.i204.i to i16    ; 2 uses
  %i.atq = and i16 %i.atp, 255
  %i.atr = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 40
  store i16 %i.atq, ptr %i.atr, align 2, !tbaa !38
  %i.ats = lshr i16 %i.atp, 8
  %i.att = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 42
  store i16 %i.ats, ptr %i.att, align 2, !tbaa !38
  %i.atu = trunc nuw i32 %i.arm to i16
  %i.atv = and i16 %i.atu, 255
  %i.atw = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 44
  store i16 %i.atv, ptr %i.atw, align 2, !tbaa !38
  %i.atx = trunc nuw nsw i32 %i.arn to i16
  %i.aty = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 46
  store i16 %i.atx, ptr %i.aty, align 2, !tbaa !38
  %i.atz = trunc i32 %.val72.i.i.i.i to i16       ; 2 uses
  %i.aua = and i16 %i.atz, 255
  %i.aub = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 48
  store i16 %i.aua, ptr %i.aub, align 2, !tbaa !38
  %i.auc = lshr i16 %i.atz, 8
  %i.aud = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 50
  store i16 %i.auc, ptr %i.aud, align 2, !tbaa !38
  %i.aue = trunc nuw i32 %i.aro to i16
  %i.auf = and i16 %i.aue, 255
  %i.aug = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 52
  store i16 %i.auf, ptr %i.aug, align 2, !tbaa !38
  %i.auh = trunc nuw nsw i32 %i.arp to i16
  %i.aui = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 54
  store i16 %i.auh, ptr %i.aui, align 2, !tbaa !38
  %i.auj = trunc i32 %.val.i.i.i205.i to i16      ; 2 uses
  %i.auk = and i16 %i.auj, 255
  %i.aul = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 56
  store i16 %i.auk, ptr %i.aul, align 2, !tbaa !38
  %i.aum = lshr i16 %i.auj, 8
  %i.aun = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 58
  store i16 %i.aum, ptr %i.aun, align 2, !tbaa !38
  %i.auo = trunc nuw i32 %i.arq to i16
  %i.aup = and i16 %i.auo, 255
  %i.auq = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 60
  store i16 %i.aup, ptr %i.auq, align 2, !tbaa !38
  %i.aur = trunc nuw nsw i32 %i.arr to i16
  %i.aus = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 62
  store i16 %i.aur, ptr %i.aus, align 2, !tbaa !38
  %i.aut = getelementptr inbounds nuw i8, ptr %.02531.i197.i, i64 32 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %.02630.i198.i, i64 64 ; 2 uses
  %i.auv = add nuw nsw i32 %.032.i196.i, 1        ; 2 uses
  %exitcond.not.i206.i = icmp eq i32 %i.auv, %i.apj
  br i1 %exitcond.not.i206.i, label %._crit_edge.i189.i, label %.lr.ph.i195.i, !llvm.loop !73

bb.s:                                             ; preds = %bb.a
  %i.auw = mul nsw i32 %2, 9
  %i.aux = add nsw i32 %4, %i.auw
  %i.auy = icmp sgt i32 %2, 0
  br i1 %i.auy, label %.lr.ph.i.i229.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i229.i:                                  ; preds = %bb.s, %bb.t
  %.026.i.i230.i = phi ptr [ %i.avo, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i231.i = phi i32 [ %i.avb, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.auz = srem i32 %.02325.i.i231.i, 8           ; 2 uses
  %i.ava = sdiv i32 %.02325.i.i231.i, 8           ; 2 uses
  %.not.i.i232.i = icmp eq i32 %i.auz, 0
  br i1 %.not.i.i232.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i229.i
  %i.avb = add nsw i32 %.02325.i.i231.i, 9        ; 3 uses
  %i.avc = add nsw i32 %.02325.i.i231.i, 8
  %i.avd = sdiv i32 %i.avc, 8
  %i.ave = sub nsw i32 %i.avd, %i.ava             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.aia = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 8
  %i.aib = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 12
  %i.aic = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 16
  %i.aid = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 20
  %i.aie = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 24
  %.val.i.i245 = load i32, ptr %i.aie, align 1    ; 5 uses
  %.val82.i.i = load i32, ptr %.02531.i241, align 1 ; 5 uses
  %i.aif = lshr i32 %.val82.i.i, 21
  %i.aig = lshr i32 %.val82.i.i, 14
  %i.aih = lshr i32 %.val82.i.i, 7
  %i.aii = insertelement <4 x i32> poison, i32 %.val82.i.i, i64 0
  %i.aij = insertelement <4 x i32> %i.aii, i32 %i.aih, i64 1
  %i.aik = insertelement <4 x i32> %i.aij, i32 %i.aig, i64 2
  %i.ail = insertelement <4 x i32> %i.aik, i32 %i.aif, i64 3
  %i.aim = and <4 x i32> %i.ail, splat (i32 127)
  %i.ain = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 16
  %i.aio = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 32
  %.val81.i.i = load i32, ptr %i.ahz, align 1     ; 6 uses
  %i.aip = tail call i32 @llvm.fshl.i32(i32 %.val81.i.i, i32 %.val82.i.i, i32 4)
  %i.aiq = lshr i32 %.val81.i.i, 17
  %i.air = lshr i32 %.val81.i.i, 10
  %i.ais = lshr i32 %.val81.i.i, 3
  %i.ait = insertelement <4 x i32> poison, i32 %i.aip, i64 0
  %i.aiu = insertelement <4 x i32> %i.ait, i32 %i.ais, i64 1
  %i.aiv = insertelement <4 x i32> %i.aiu, i32 %i.air, i64 2
  %i.aiw = insertelement <4 x i32> %i.aiv, i32 %i.aiq, i64 3
  %i.aix = and <4 x i32> %i.aiw, splat (i32 127)
  %i.aiy = lshr i32 %.val81.i.i, 24
  %i.aiz = insertelement <4 x i32> poison, i32 %i.aiy, i64 0
  %i.aja = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 48
  %.val80.i.i = load i32, ptr %i.aia, align 1     ; 5 uses
  %i.ajb = tail call i32 @llvm.fshl.i32(i32 %.val80.i.i, i32 %.val81.i.i, i32 1)
  %i.ajc = lshr i32 %.val80.i.i, 13
  %i.ajd = lshr i32 %.val80.i.i, 6
  %i.aje = insertelement <4 x i32> %i.aiz, i32 %i.ajb, i64 1
  %i.ajf = insertelement <4 x i32> %i.aje, i32 %i.ajd, i64 2
  %i.ajg = insertelement <4 x i32> %i.ajf, i32 %i.ajc, i64 3
  %i.ajh = and <4 x i32> %i.ajg, splat (i32 127)
  %i.aji = lshr i32 %.val80.i.i, 20
  %i.ajj = insertelement <4 x i32> poison, i32 %i.aji, i64 0
  %i.ajk = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 64
  %.val79.i.i = load i32, ptr %i.aib, align 1     ; 6 uses
  %i.ajl = tail call i32 @llvm.fshl.i32(i32 %.val79.i.i, i32 %.val80.i.i, i32 5)
  %i.ajm = lshr i32 %.val79.i.i, 9
  %i.ajn = lshr i32 %.val79.i.i, 2
  %i.ajo = insertelement <4 x i32> %i.ajj, i32 %i.ajl, i64 1
  %i.ajp = insertelement <4 x i32> %i.ajo, i32 %i.ajn, i64 2
  %i.ajq = insertelement <4 x i32> %i.ajp, i32 %i.ajm, i64 3
  %i.ajr = and <4 x i32> %i.ajq, splat (i32 127)
  %i.ajs = lshr i32 %.val79.i.i, 23
  %i.ajt = lshr i32 %.val79.i.i, 16
  %i.aju = insertelement <4 x i32> poison, i32 %i.ajt, i64 0
  %i.ajv = insertelement <4 x i32> %i.aju, i32 %i.ajs, i64 1
  %i.ajw = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 80
  %.val77.i.i244 = load i32, ptr %i.aid, align 1  ; 6 uses
  %.val78.i.i243 = load i32, ptr %i.aic, align 1  ; 5 uses
  store <4 x i32> %i.aim, ptr %.02630.i242, align 4, !tbaa !3
  store <4 x i32> %i.aix, ptr %i.ain, align 4, !tbaa !3
  store <4 x i32> %i.ajh, ptr %i.aio, align 4, !tbaa !3
  store <4 x i32> %i.ajr, ptr %i.aja, align 4, !tbaa !3
  %i.ajx = tail call i32 @llvm.fshl.i32(i32 %.val78.i.i243, i32 %.val79.i.i, i32 2)
  %i.ajy = lshr i32 %.val78.i.i243, 5
  %i.ajz = insertelement <4 x i32> %i.ajv, i32 %i.ajx, i64 2
  %i.aka = insertelement <4 x i32> %i.ajz, i32 %i.ajy, i64 3
  %i.akb = and <4 x i32> %i.aka, splat (i32 127)
  store <4 x i32> %i.akb, ptr %i.ajk, align 4, !tbaa !3
  %i.akc = tail call i32 @llvm.fshl.i32(i32 %.val77.i.i244, i32 %.val78.i.i243, i32 6)
  %i.akd = lshr i32 %.val77.i.i244, 1
  %i.ake = lshr i32 %.val78.i.i243, 19
  %i.akf = lshr i32 %.val78.i.i243, 12
  %i.akg = insertelement <4 x i32> poison, i32 %i.akf, i64 0
  %i.akh = insertelement <4 x i32> %i.akg, i32 %i.ake, i64 1
  %i.aki = insertelement <4 x i32> %i.akh, i32 %i.akc, i64 2
  %i.akj = insertelement <4 x i32> %i.aki, i32 %i.akd, i64 3
  %i.akk = and <4 x i32> %i.akj, splat (i32 127)
  store <4 x i32> %i.akk, ptr %i.ajw, align 4, !tbaa !3
  %i.akl = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 96
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %.val.i.i245, i32 %.val77.i.i244, i32 3)
  %i.akn = lshr i32 %.val77.i.i244, 22
  %i.ako = lshr i32 %.val77.i.i244, 15
  %i.akp = lshr i32 %.val77.i.i244, 8
  %i.akq = insertelement <4 x i32> poison, i32 %i.akp, i64 0
  %i.akr = insertelement <4 x i32> %i.akq, i32 %i.ako, i64 1
  %i.aks = insertelement <4 x i32> %i.akr, i32 %i.akn, i64 2
  %i.akt = insertelement <4 x i32> %i.aks, i32 %i.akm, i64 3
  %i.aku = and <4 x i32> %i.akt, splat (i32 127)
  store <4 x i32> %i.aku, ptr %i.akl, align 4, !tbaa !3
  %i.akv = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 112
  %i.akw = lshr i32 %.val.i.i245, 25
  %i.akx = lshr i32 %.val.i.i245, 18
  %i.aky = lshr i32 %.val.i.i245, 11
  %i.akz = lshr i32 %.val.i.i245, 4
  %i.ala = insertelement <4 x i32> poison, i32 %i.akz, i64 0
  %i.alb = insertelement <4 x i32> %i.ala, i32 %i.aky, i64 1
  %i.alc = insertelement <4 x i32> %i.alb, i32 %i.akx, i64 2
  %i.ald = insertelement <4 x i32> %i.alc, i32 %i.akw, i64 3
  %i.ale = and <4 x i32> %i.ald, <i32 127, i32 127, i32 127, i32 -1>
  store <4 x i32> %i.ale, ptr %i.akv, align 4, !tbaa !3
  %i.alf = getelementptr inbounds nuw i8, ptr %.02531.i241, i64 28 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.02630.i242, i64 128 ; 2 uses
  %i.alh = add nuw nsw i32 %.032.i240, 1          ; 2 uses
  %exitcond.not.i246 = icmp eq i32 %i.alh, %i.ahc
  br i1 %exitcond.not.i246, label %._crit_edge.i231, label %.lr.ph.i239, !llvm.loop !116

bb.q:                                             ; preds = %bb.a
  %i.ali = shl nsw i32 %2, 3
  %i.alj = add nsw i32 %4, %i.ali
  %i.alk = icmp sgt i32 %2, 0
  br i1 %i.alk, label %.lr.ph.i.i271, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i271:                                    ; preds = %bb.q, %bb.r
  %.026.i.i272 = phi ptr [ %i.ama, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i273 = phi i32 [ %i.aln, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.all = srem i32 %.02325.i.i273, 8             ; 2 uses
  %i.alm = sdiv i32 %.02325.i.i273, 8             ; 2 uses
  %.not.i.i274 = icmp eq i32 %i.all, 0
  br i1 %.not.i.i274, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i271
  %i.aln = add nsw i32 %.02325.i.i273, 8          ; 3 uses
  %i.alo = add nsw i32 %.02325.i.i273, 7
  %i.alp = sdiv i32 %i.alo, 8
  %i.alq = sub nsw i32 %i.alp, %i.alm             ; 2 uses
  %i.alr = add nsw i32 %i.alq, 1
  %i.als = icmp slt i32 %i.alq, 2
  tail call void @llvm.assume(i1 %i.als)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8, !tbaa !17
  %i.alt = sext i32 %i.alm to i64
  %i.alu = getelementptr inbounds i8, ptr %0, i64 %i.alt
  %i.alv = sext i32 %i.alr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr readonly align 1 %i.alu, i64 %i.alv, i1 false)
  %.0..0..0..0..0..0..0..0..i.i275 = load i64, ptr %i.at, align 8, !tbaa !17
  %i.alw = zext nneg i32 %i.all to i64
  %i.alx = lshr i64 %.0..0..0..0..0..0..0..0..i.i275, %i.alw
  %i.aly = trunc i64 %i.alx to i32
  %i.alz = and i32 %i.aly, 255
  store i32 %i.alz, ptr %.026.i.i272, align 4, !tbaa !3
  %i.ama = getelementptr inbounds nuw i8, ptr %.026.i.i272, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.amb = icmp slt i32 %i.aln, %i.alj
  br i1 %i.amb, label %.lr.ph.i.i271, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !117

_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.r, %.lr.ph.i.i271, %bb.q
  %.023.lcssa.i.i252 = phi i32 [ %4, %bb.q ], [ %i.aln, %bb.r ], [ %.02325.i.i273, %.lr.ph.i.i271 ]
  %i.amc = sub nsw i32 %.023.lcssa.i.i252, %4
  %i.amd = sdiv i32 %i.amc, 8                     ; 3 uses
  %i.ame = shl nsw i32 %i.amd, 3
  %i.amf = add nsw i32 %i.ame, %4
  %i.amg = sub nsw i32 %2, %i.amd                 ; 4 uses
  %i.amh = sdiv i32 %i.amf, 8
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds i8, ptr %0, i64 %i.ami ; 2 uses
  %i.amk = sext i32 %i.amd to i64
  %i.aml = getelementptr inbounds [4 x i8], ptr %1, i64 %i.amk ; 2 uses
  %i.amm = sdiv i32 %i.amg, 32                    ; 2 uses
  %i.amn = icmp sgt i32 %i.amg, 31
  br i1 %i.amn, label %.lr.ph.i259, label %._crit_edge.i253

._crit_edge.i253:                                 ; preds = %.lr.ph.i259, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i254 = phi ptr [ %i.aml, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aqs, %.lr.ph.i259 ] ; 6 uses
  %.025.lcssa.i255 = phi ptr [ %i.amj, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.aqr, %.lr.ph.i259 ] ; 4 uses
  %i.amo = shl nsw i32 %i.amm, 5                  ; 2 uses
  %i.amp = sub nsw i32 %i.amg, %i.amo             ; 2 uses
  %i.amq = icmp samesign ult i32 %i.amp, 32
  tail call void @llvm.assume(i1 %i.amq)
  %.not.i256 = icmp eq i32 %i.amg, %i.amo
  br i1 %.not.i256, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i

.lr.ph.i28.preheader.i:                           ; preds = %._crit_edge.i253
  %i.amr = shl nuw nsw i32 %i.amp, 3
  %i.ams = zext nneg i32 %i.amr to i64            ; 3 uses
  %i.amt = tail call i64 @llvm.usub.sat.i64(i64 %i.ams, i64 8) ; 2 uses
  %i.amu = lshr exact i64 %i.amt, 3
  %i.amv = add nuw nsw i64 %i.amu, 1              ; 2 uses
  %min.iters.check1978 = icmp samesign ult i64 %i.amt, 152
  br i1 %min.iters.check1978, label %.lr.ph.i28.i257.preheader, label %vector.memcheck1970

vector.memcheck1970:                              ; preds = %.lr.ph.i28.preheader.i
  %i.amw = tail call i64 @llvm.usub.sat.i64(i64 %i.ams, i64 8) ; 2 uses
  %i.amx = lshr exact i64 %i.amw, 3
  %i.amy = lshr exact i64 %i.amw, 1
  %i.amz = getelementptr i8, ptr %.026.lcssa.i254, i64 %i.amy
  %scevgep1972 = getelementptr i8, ptr %i.amz, i64 4
  %i.ana = getelementptr i8, ptr %.025.lcssa.i255, i64 %i.amx
  %scevgep1973 = getelementptr i8, ptr %i.ana, i64 1
  %bound01974 = icmp ult ptr %.026.lcssa.i254, %scevgep1973
  %bound11975 = icmp ult ptr %.025.lcssa.i255, %scevgep1972
  %found.conflict1976 = and i1 %bound01974, %bound11975
  br i1 %found.conflict1976, label %.lr.ph.i28.i257.preheader, label %vector.ph1979

vector.ph1979:                                    ; preds = %vector.memcheck1970
  %n.vec1981 = and i64 %i.amv, 536870904          ; 4 uses
  %i.anb = shl nuw nsw i64 %n.vec1981, 3
  %i.anc = shl nuw nsw i64 %n.vec1981, 2
  %i.and = getelementptr i8, ptr %.026.lcssa.i254, i64 %i.anc
  br label %vector.body1982

vector.body1982:                                  ; preds = %vector.body1982, %vector.ph1979
  %index1983 = phi i64 [ 0, %vector.ph1979 ], [ %index.next1987, %vector.body1982 ] ; 3 uses
  %5 = and i64 %index1983, 2305843009213693944
  %i.ane = shl i64 %index1983, 2
  %next.gep1984 = getelementptr i8, ptr %.026.lcssa.i254, i64 %i.ane ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i255, i64 %5 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  %wide.load1985 = load <4 x i8>, ptr %i.anf, align 1, !alias.scope !118
  %wide.load1986 = load <4 x i8>, ptr %i.ang, align 1, !alias.scope !118
  %i.anh = zext <4 x i8> %wide.load1985 to <4 x i32>
  %i.ani = zext <4 x i8> %wide.load1986 to <4 x i32>
  %i.anj = getelementptr i8, ptr %next.gep1984, i64 16
  store <4 x i32> %i.anh, ptr %next.gep1984, align 4, !tbaa !3, !alias.scope !121, !noalias !118
  store <4 x i32> %i.ani, ptr %i.anj, align 4, !tbaa !3, !alias.scope !121, !noalias !118
  %index.next1987 = add nuw i64 %index1983, 8     ; 2 uses
  %i.ank = icmp eq i64 %index.next1987, %n.vec1981
  br i1 %i.ank, label %middle.block1988, label %vector.body1982, !llvm.loop !123

middle.block1988:                                 ; preds = %vector.body1982
  %cmp.n1989 = icmp eq i64 %i.amv, %n.vec1981
  br i1 %cmp.n1989, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i257.preheader

.lr.ph.i28.i257.preheader:                        ; preds = %vector.memcheck1970, %.lr.ph.i28.preheader.i, %middle.block1988
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck1970 ], [ 0, %.lr.ph.i28.preheader.i ], [ %i.anb, %middle.block1988 ]
  %.024.i.i258.ph = phi ptr [ %.026.lcssa.i254, %vector.memcheck1970 ], [ %.026.lcssa.i254, %.lr.ph.i28.preheader.i ], [ %i.and, %middle.block1988 ]
  br label %.lr.ph.i28.i257

.lr.ph.i28.i257:                                  ; preds = %.lr.ph.i28.i257.preheader, %.lr.ph.i28.i257
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i28.i257 ], [ %indvars.iv.i.ph, %.lr.ph.i28.i257.preheader ] ; 2 uses
  %.024.i.i258 = phi ptr [ %i.anp, %.lr.ph.i28.i257 ], [ %.024.i.i258.ph, %.lr.ph.i28.i257.preheader ] ; 2 uses
  %i.anl = lshr exact i64 %indvars.iv.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.025.lcssa.i255, i64 %i.anl
  %i.ann = load i8, ptr %i.anm, align 1
  %i.ano = zext i8 %i.ann to i32
  store i32 %i.ano, ptr %.024.i.i258, align 4, !tbaa !3
  %i.anp = getelementptr inbounds nuw i8, ptr %.024.i.i258, i64 4
  %i.anq = icmp samesign ult i64 %indvars.iv.next.i, %i.ams
  br i1 %i.anq, label %.lr.ph.i28.i257, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !124

.lr.ph.i259:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i259
  %.032.i260 = phi i32 [ %i.aqt, %.lr.ph.i259 ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i261 = phi ptr [ %i.aqr, %.lr.ph.i259 ], [ %i.amj, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %.02630.i262 = phi ptr [ %i.aqs, %.lr.ph.i259 ], [ %i.aml, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 4
  %i.ans = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 8
  %i.ant = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 12
  %i.anu = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 16
  %i.anv = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 20
  %i.anw = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 24
  %i.anx = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 28
  %.val78.i.i263 = load i32, ptr %.02531.i261, align 1 ; 4 uses
  %i.any = lshr i32 %.val78.i.i263, 24
  %i.anz = lshr i32 %.val78.i.i263, 16
  %i.aoa = lshr i32 %.val78.i.i263, 8
  %i.aob = insertelement <4 x i32> poison, i32 %.val78.i.i263, i64 0
  %i.aoc = insertelement <4 x i32> %i.aob, i32 %i.aoa, i64 1
  %i.aod = insertelement <4 x i32> %i.aoc, i32 %i.anz, i64 2
  %i.aoe = insertelement <4 x i32> %i.aod, i32 %i.any, i64 3
  %i.aof = and <4 x i32> %i.aoe, <i32 255, i32 255, i32 255, i32 -1>
  %i.aog = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 16
  %.val77.i.i264 = load i32, ptr %i.anr, align 1  ; 4 uses
  %i.aoh = lshr i32 %.val77.i.i264, 24
  %i.aoi = lshr i32 %.val77.i.i264, 16
  %i.aoj = lshr i32 %.val77.i.i264, 8
  %i.aok = insertelement <4 x i32> poison, i32 %.val77.i.i264, i64 0
  %i.aol = insertelement <4 x i32> %i.aok, i32 %i.aoj, i64 1
  %i.aom = insertelement <4 x i32> %i.aol, i32 %i.aoi, i64 2
  %i.aon = insertelement <4 x i32> %i.aom, i32 %i.aoh, i64 3
  %i.aoo = and <4 x i32> %i.aon, <i32 255, i32 255, i32 255, i32 -1>
  %i.aop = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 32
  %.val76.i.i265 = load i32, ptr %i.ans, align 1  ; 4 uses
  %i.aoq = lshr i32 %.val76.i.i265, 24
  %i.aor = lshr i32 %.val76.i.i265, 16
  %i.aos = lshr i32 %.val76.i.i265, 8
  %i.aot = insertelement <4 x i32> poison, i32 %.val76.i.i265, i64 0
  %i.aou = insertelement <4 x i32> %i.aot, i32 %i.aos, i64 1
  %i.aov = insertelement <4 x i32> %i.aou, i32 %i.aor, i64 2
  %i.aow = insertelement <4 x i32> %i.aov, i32 %i.aoq, i64 3
  %i.aox = and <4 x i32> %i.aow, <i32 255, i32 255, i32 255, i32 -1>
  %i.aoy = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 48
  %.val75.i.i266 = load i32, ptr %i.ant, align 1  ; 4 uses
  %i.aoz = lshr i32 %.val75.i.i266, 24
  %i.apa = lshr i32 %.val75.i.i266, 16
  %i.apb = lshr i32 %.val75.i.i266, 8
  %i.apc = insertelement <4 x i32> poison, i32 %.val75.i.i266, i64 0
  %i.apd = insertelement <4 x i32> %i.apc, i32 %i.apb, i64 1
  %i.ape = insertelement <4 x i32> %i.apd, i32 %i.apa, i64 2
  %i.apf = insertelement <4 x i32> %i.ape, i32 %i.aoz, i64 3
  %i.apg = and <4 x i32> %i.apf, <i32 255, i32 255, i32 255, i32 -1>
  %i.aph = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 64
  %.val74.i.i267 = load i32, ptr %i.anu, align 1  ; 4 uses
  %i.api = lshr i32 %.val74.i.i267, 24
  %i.apj = lshr i32 %.val74.i.i267, 16
  %i.apk = lshr i32 %.val74.i.i267, 8
  %i.apl = insertelement <4 x i32> poison, i32 %.val74.i.i267, i64 0
  %i.apm = insertelement <4 x i32> %i.apl, i32 %i.apk, i64 1
  %i.apn = insertelement <4 x i32> %i.apm, i32 %i.apj, i64 2
  %i.apo = insertelement <4 x i32> %i.apn, i32 %i.api, i64 3
  %i.app = and <4 x i32> %i.apo, <i32 255, i32 255, i32 255, i32 -1>
  %i.apq = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 80
  %.val73.i.i268 = load i32, ptr %i.anv, align 1  ; 4 uses
  %i.apr = lshr i32 %.val73.i.i268, 24
  %i.aps = lshr i32 %.val73.i.i268, 16
  %i.apt = lshr i32 %.val73.i.i268, 8
  %i.apu = insertelement <4 x i32> poison, i32 %.val73.i.i268, i64 0
  %i.apv = insertelement <4 x i32> %i.apu, i32 %i.apt, i64 1
  %i.apw = insertelement <4 x i32> %i.apv, i32 %i.aps, i64 2
  %i.apx = insertelement <4 x i32> %i.apw, i32 %i.apr, i64 3
  %i.apy = and <4 x i32> %i.apx, <i32 255, i32 255, i32 255, i32 -1>
  %i.apz = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 96
  %.val72.i.i = load i32, ptr %i.anw, align 1     ; 4 uses
  %i.aqa = lshr i32 %.val72.i.i, 24
  %i.aqb = lshr i32 %.val72.i.i, 16
  %i.aqc = lshr i32 %.val72.i.i, 8
  %i.aqd = insertelement <4 x i32> poison, i32 %.val72.i.i, i64 0
  %i.aqe = insertelement <4 x i32> %i.aqd, i32 %i.aqc, i64 1
  %i.aqf = insertelement <4 x i32> %i.aqe, i32 %i.aqb, i64 2
  %i.aqg = insertelement <4 x i32> %i.aqf, i32 %i.aqa, i64 3
  %i.aqh = and <4 x i32> %i.aqg, <i32 255, i32 255, i32 255, i32 -1>
  %i.aqi = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 112
  %.val.i.i269 = load i32, ptr %i.anx, align 1    ; 4 uses
  store <4 x i32> %i.aof, ptr %.02630.i262, align 4, !tbaa !3
  store <4 x i32> %i.aoo, ptr %i.aog, align 4, !tbaa !3
  store <4 x i32> %i.aox, ptr %i.aop, align 4, !tbaa !3
  store <4 x i32> %i.apg, ptr %i.aoy, align 4, !tbaa !3
  store <4 x i32> %i.app, ptr %i.aph, align 4, !tbaa !3
  store <4 x i32> %i.apy, ptr %i.apq, align 4, !tbaa !3
  store <4 x i32> %i.aqh, ptr %i.apz, align 4, !tbaa !3
  %i.aqj = lshr i32 %.val.i.i269, 24
  %i.aqk = lshr i32 %.val.i.i269, 16
  %i.aql = lshr i32 %.val.i.i269, 8
  %i.aqm = insertelement <4 x i32> poison, i32 %.val.i.i269, i64 0
  %i.aqn = insertelement <4 x i32> %i.aqm, i32 %i.aql, i64 1
  %i.aqo = insertelement <4 x i32> %i.aqn, i32 %i.aqk, i64 2
  %i.aqp = insertelement <4 x i32> %i.aqo, i32 %i.aqj, i64 3
  %i.aqq = and <4 x i32> %i.aqp, <i32 255, i32 255, i32 255, i32 -1>
  store <4 x i32> %i.aqq, ptr %i.aqi, align 4, !tbaa !3
  %i.aqr = getelementptr inbounds nuw i8, ptr %.02531.i261, i64 32 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.02630.i262, i64 128 ; 2 uses
  %i.aqt = add nuw nsw i32 %.032.i260, 1          ; 2 uses
  %exitcond.not.i270 = icmp eq i32 %i.aqt, %i.amm
  br i1 %exitcond.not.i270, label %._crit_edge.i253, label %.lr.ph.i259, !llvm.loop !125

bb.s:                                             ; preds = %bb.a
  %i.aqu = mul nsw i32 %2, 9
  %i.aqv = add nsw i32 %4, %i.aqu
  %i.aqw = icmp sgt i32 %2, 0
  br i1 %i.aqw, label %.lr.ph.i.i293, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i293:                                    ; preds = %bb.s, %bb.t
  %.026.i.i294 = phi ptr [ %i.arm, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i295 = phi i32 [ %i.aqz, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.aqx = srem i32 %.02325.i.i295, 8             ; 2 uses
  %i.aqy = sdiv i32 %.02325.i.i295, 8             ; 2 uses
  %.not.i.i296 = icmp eq i32 %i.aqx, 0
  br i1 %.not.i.i296, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i293
  %i.aqz = add nsw i32 %.02325.i.i295, 9          ; 3 uses
  %i.ara = add nsw i32 %.02325.i.i295, 8
  %i.arb = sdiv i32 %i.ara, 8
  %i.arc = sub nsw i32 %i.arb, %i.aqy             ; 2 uses
  %i.ard = add nsw i32 %i.arc, 1
  %i.are = icmp slt i32 %i.arc, 2
  tail call void @llvm.assume(i1 %i.are)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8, !tbaa !17
  %i.arf = sext i32 %i.aqy to i64
  %i.arg = getelementptr inbounds i8, ptr %0, i64 %i.arf
  %i.arh = sext i32 %i.ard to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr readonly align 1 %i.arg, i64 %i.arh, i1 false)
  %.0..0..0..0..0..0..0..0..i.i297 = load i64, ptr %i.as, align 8, !tbaa !17
  %i.ari = zext nneg i32 %i.aqx to i64
  %i.arj = lshr i64 %.0..0..0..0..0..0..0..0..i.i297, %i.ari
  %i.ark = trunc i64 %i.arj to i32
  %i.arl = and i32 %i.ark, 511
  store i32 %i.arl, ptr %.026.i.i294, align 4, !tbaa !3
  %i.arm = getelementptr inbounds nuw i8, ptr %.026.i.i294, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.arn = icmp slt i32 %i.aqz, %i.aqv
  br i1 %i.arn, label %.lr.ph.i.i293, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !126

_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.t, %.lr.ph.i.i293, %bb.s
  %.023.lcssa.i.i276 = phi i32 [ %4, %bb.s ], [ %i.aqz, %bb.t ], [ %.02325.i.i295, %.lr.ph.i.i293 ]
  %i.aro = sub nsw i32 %.023.lcssa.i.i276, %4
  %i.arp = sdiv i32 %i.aro, 9                     ; 3 uses
  %i.arq = mul nsw i32 %i.arp, 9
  %i.arr = add nsw i32 %i.arq, %4
  %i.ars = sub nsw i32 %2, %i.arp                 ; 4 uses
  %i.art = sdiv i32 %i.arr, 8
  %i.aru = sext i32 %i.art to i64
  %i.arv = getelementptr inbounds i8, ptr %0, i64 %i.aru ; 2 uses
  %i.arw = sext i32 %i.arp to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.arw ; 2 uses
  %i.ary = sdiv i32 %i.ars, 32                    ; 2 uses
  %i.arz = icmp sgt i32 %i.ars, 31
  br i1 %i.arz, label %.lr.ph.i285, label %._crit_edge.i277

._crit_edge.i277:                                 ; preds = %.lr.ph.i285, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i278 = phi ptr [ %i.arx, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.awe, %.lr.ph.i285 ]
  %.025.lcssa.i279 = phi ptr [ %i.arv, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.awd, %.lr.ph.i285 ]
  %i.asa = shl nsw i32 %i.ary, 5                  ; 2 uses
  %i.asb = sub nsw i32 %i.ars, %i.asa             ; 2 uses
  %i.asc = icmp samesign ult i32 %i.asb, 32
  tail call void @llvm.assume(i1 %i.asc)
end_hunk_1
begin_hunk_2_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.cpg = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 40
  %.val96.i.i458 = load i32, ptr %i.cpg, align 1  ; 3 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 44
  %.val95.i.i459 = load i32, ptr %i.cph, align 1  ; 3 uses
  %i.cpi = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 48
  %.val94.i.i460 = load i32, ptr %i.cpi, align 1  ; 3 uses
  %i.cpj = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 52
  %i.cpk = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 56
  %i.cpl = lshr i32 %.val106.i.i, 15
  %i.cpm = tail call i32 @llvm.fshl.i32(i32 %.val105.i.i, i32 %.val106.i.i, i32 2)
  %i.cpn = lshr i32 %.val105.i.i, 13
  %i.cpo = insertelement <4 x i32> poison, i32 %.val106.i.i, i64 0
  %i.cpp = insertelement <4 x i32> %i.cpo, i32 %i.cpl, i64 1
  %i.cpq = insertelement <4 x i32> %i.cpp, i32 %i.cpm, i64 2
  %i.cpr = insertelement <4 x i32> %i.cpq, i32 %i.cpn, i64 3
  %i.cps = and <4 x i32> %i.cpr, splat (i32 32767)
  %i.cpt = tail call i32 @llvm.fshl.i32(i32 %.val104.i.i, i32 %.val105.i.i, i32 4)
  %i.cpu = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 16
  %i.cpv = lshr i32 %.val104.i.i, 11
  %i.cpw = tail call i32 @llvm.fshl.i32(i32 %.val103.i.i, i32 %.val104.i.i, i32 6)
  %i.cpx = lshr i32 %.val103.i.i, 9
  %i.cpy = insertelement <4 x i32> poison, i32 %i.cpt, i64 0
  %i.cpz = insertelement <4 x i32> %i.cpy, i32 %i.cpv, i64 1
  %i.cqa = insertelement <4 x i32> %i.cpz, i32 %i.cpw, i64 2
  %i.cqb = insertelement <4 x i32> %i.cqa, i32 %i.cpx, i64 3
  %i.cqc = and <4 x i32> %i.cqb, splat (i32 32767)
  %i.cqd = tail call i32 @llvm.fshl.i32(i32 %.val102.i.i452, i32 %.val103.i.i, i32 8)
  %i.cqe = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 32
  %i.cqf = lshr i32 %.val102.i.i452, 7
  %i.cqg = tail call i32 @llvm.fshl.i32(i32 %.val101.i.i453, i32 %.val102.i.i452, i32 10)
  %i.cqh = lshr i32 %.val101.i.i453, 5
  %i.cqi = insertelement <4 x i32> poison, i32 %i.cqd, i64 0
  %i.cqj = insertelement <4 x i32> %i.cqi, i32 %i.cqf, i64 1
  %i.cqk = insertelement <4 x i32> %i.cqj, i32 %i.cqg, i64 2
  %i.cql = insertelement <4 x i32> %i.cqk, i32 %i.cqh, i64 3
  %i.cqm = and <4 x i32> %i.cql, splat (i32 32767)
  %i.cqn = tail call i32 @llvm.fshl.i32(i32 %.val100.i.i454, i32 %.val101.i.i453, i32 12)
  %i.cqo = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 48
  %i.cqp = lshr i32 %.val100.i.i454, 3
  %i.cqq = tail call i32 @llvm.fshl.i32(i32 %.val99.i.i455, i32 %.val100.i.i454, i32 14)
  %i.cqr = lshr i32 %.val99.i.i455, 1
  %i.cqs = insertelement <4 x i32> poison, i32 %i.cqn, i64 0
  %i.cqt = insertelement <4 x i32> %i.cqs, i32 %i.cqp, i64 1
  %i.cqu = insertelement <4 x i32> %i.cqt, i32 %i.cqq, i64 2
  %i.cqv = insertelement <4 x i32> %i.cqu, i32 %i.cqr, i64 3
  %i.cqw = and <4 x i32> %i.cqv, splat (i32 32767)
  %i.cqx = lshr i32 %.val99.i.i455, 16
  %i.cqy = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 64
  %i.cqz = tail call i32 @llvm.fshl.i32(i32 %.val98.i.i456, i32 %.val99.i.i455, i32 1)
  %i.cra = lshr i32 %.val98.i.i456, 14
  %i.crb = tail call i32 @llvm.fshl.i32(i32 %.val97.i.i457, i32 %.val98.i.i456, i32 3)
  %i.crc = insertelement <4 x i32> poison, i32 %i.cqx, i64 0
  %i.crd = insertelement <4 x i32> %i.crc, i32 %i.cqz, i64 1
  %i.cre = insertelement <4 x i32> %i.crd, i32 %i.cra, i64 2
  %i.crf = insertelement <4 x i32> %i.cre, i32 %i.crb, i64 3
  %i.crg = and <4 x i32> %i.crf, splat (i32 32767)
  %i.crh = lshr i32 %.val97.i.i457, 12
  %i.cri = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 80
  %i.crj = tail call i32 @llvm.fshl.i32(i32 %.val96.i.i458, i32 %.val97.i.i457, i32 5)
  %i.crk = lshr i32 %.val96.i.i458, 10
  %i.crl = tail call i32 @llvm.fshl.i32(i32 %.val95.i.i459, i32 %.val96.i.i458, i32 7)
  %i.crm = insertelement <4 x i32> poison, i32 %i.crh, i64 0
  %i.crn = insertelement <4 x i32> %i.crm, i32 %i.crj, i64 1
  %i.cro = insertelement <4 x i32> %i.crn, i32 %i.crk, i64 2
  %i.crp = insertelement <4 x i32> %i.cro, i32 %i.crl, i64 3
  %i.crq = and <4 x i32> %i.crp, splat (i32 32767)
  %i.crr = lshr i32 %.val95.i.i459, 8
  %i.crs = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 96
  %i.crt = tail call i32 @llvm.fshl.i32(i32 %.val94.i.i460, i32 %.val95.i.i459, i32 9)
  %i.cru = lshr i32 %.val94.i.i460, 6
  %i.crv = insertelement <4 x i32> poison, i32 %i.crr, i64 0
  %i.crw = insertelement <4 x i32> %i.crv, i32 %i.crt, i64 1
  %i.crx = insertelement <4 x i32> %i.crw, i32 %i.cru, i64 2
  %i.cry = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 112
  %.val.i.i462 = load i32, ptr %i.cpk, align 1    ; 3 uses
  %.val93.i.i461 = load i32, ptr %i.cpj, align 1  ; 3 uses
  store <4 x i32> %i.cps, ptr %.02630.i451, align 4, !tbaa !3
  store <4 x i32> %i.cqc, ptr %i.cpu, align 4, !tbaa !3
  store <4 x i32> %i.cqm, ptr %i.cqe, align 4, !tbaa !3
  store <4 x i32> %i.cqw, ptr %i.cqo, align 4, !tbaa !3
  store <4 x i32> %i.crg, ptr %i.cqy, align 4, !tbaa !3
  store <4 x i32> %i.crq, ptr %i.cri, align 4, !tbaa !3
  %i.crz = tail call i32 @llvm.fshl.i32(i32 %.val93.i.i461, i32 %.val94.i.i460, i32 11)
  %i.csa = insertelement <4 x i32> %i.crx, i32 %i.crz, i64 3
  %i.csb = and <4 x i32> %i.csa, splat (i32 32767)
  store <4 x i32> %i.csb, ptr %i.crs, align 4, !tbaa !3
  %i.csc = tail call i32 @llvm.fshl.i32(i32 %.val.i.i462, i32 %.val93.i.i461, i32 13)
  %i.csd = lshr i32 %.val.i.i462, 17
  %i.cse = lshr i32 %.val.i.i462, 2
  %i.csf = lshr i32 %.val93.i.i461, 4
  %i.csg = insertelement <4 x i32> poison, i32 %i.csf, i64 0
  %i.csh = insertelement <4 x i32> %i.csg, i32 %i.csc, i64 1
  %i.csi = insertelement <4 x i32> %i.csh, i32 %i.cse, i64 2
  %i.csj = insertelement <4 x i32> %i.csi, i32 %i.csd, i64 3
  %i.csk = and <4 x i32> %i.csj, <i32 32767, i32 32767, i32 32767, i32 -1>
  store <4 x i32> %i.csk, ptr %i.cry, align 4, !tbaa !3
  %i.csl = getelementptr inbounds nuw i8, ptr %.02531.i450, i64 60 ; 2 uses
  %i.csm = getelementptr inbounds nuw i8, ptr %.02630.i451, i64 128 ; 2 uses
  %i.csn = add nuw nsw i32 %.032.i449, 1          ; 2 uses
  %exitcond.not.i463 = icmp eq i32 %i.csn, %i.bzc
  br i1 %exitcond.not.i463, label %._crit_edge.i440, label %.lr.ph.i448, !llvm.loop !152

bb.ag:                                            ; preds = %bb.a
  %i.cso = shl nsw i32 %2, 4
  %i.csp = add nsw i32 %4, %i.cso
  %i.csq = icmp sgt i32 %2, 0
  br i1 %i.csq, label %.lr.ph.i.i501, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i501:                                    ; preds = %bb.ag, %bb.ah
  %.026.i.i502 = phi ptr [ %i.ctg, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i503 = phi i32 [ %i.cst, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.csr = srem i32 %.02325.i.i503, 8             ; 2 uses
  %i.css = sdiv i32 %.02325.i.i503, 8             ; 2 uses
  %.not.i.i504 = icmp eq i32 %i.csr, 0
  br i1 %.not.i.i504, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i501
  %i.cst = add nsw i32 %.02325.i.i503, 16         ; 3 uses
  %i.csu = add nsw i32 %.02325.i.i503, 15
  %i.csv = sdiv i32 %i.csu, 8
  %i.csw = sub nsw i32 %i.csv, %i.css             ; 2 uses
  %i.csx = add nsw i32 %i.csw, 1
  %i.csy = icmp slt i32 %i.csw, 3
  tail call void @llvm.assume(i1 %i.csy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !tbaa !17
  %i.csz = sext i32 %i.css to i64
  %i.cta = getelementptr inbounds i8, ptr %0, i64 %i.csz
  %i.ctb = sext i32 %i.csx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %i.cta, i64 %i.ctb, i1 false)
  %.0..0..0..0..0..0..0..0..i.i505 = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.ctc = zext nneg i32 %i.csr to i64
  %i.ctd = lshr i64 %.0..0..0..0..0..0..0..0..i.i505, %i.ctc
  %i.cte = trunc i64 %i.ctd to i32
  %i.ctf = and i32 %i.cte, 65535
  store i32 %i.ctf, ptr %.026.i.i502, align 4, !tbaa !3
  %i.ctg = getelementptr inbounds nuw i8, ptr %.026.i.i502, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.cth = icmp slt i32 %i.cst, %i.csp
  br i1 %i.cth, label %.lr.ph.i.i501, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !153

_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i501, %bb.ag
  %.023.lcssa.i.i469 = phi i32 [ %4, %bb.ag ], [ %i.cst, %bb.ah ], [ %.02325.i.i503, %.lr.ph.i.i501 ]
  %i.cti = sub nsw i32 %.023.lcssa.i.i469, %4
  %i.ctj = sdiv i32 %i.cti, 16                    ; 3 uses
  %i.ctk = shl nsw i32 %i.ctj, 4
  %i.ctl = add nsw i32 %i.ctk, %4
  %i.ctm = sub nsw i32 %2, %i.ctj                 ; 4 uses
  %i.ctn = sdiv i32 %i.ctl, 8
  %i.cto = sext i32 %i.ctn to i64
  %i.ctp = getelementptr inbounds i8, ptr %0, i64 %i.cto ; 2 uses
  %i.ctq = sext i32 %i.ctj to i64
  %i.ctr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ctq ; 2 uses
  %i.cts = sdiv i32 %i.ctm, 32                    ; 2 uses
  %i.ctt = icmp sgt i32 %i.ctm, 31
  br i1 %i.ctt, label %.lr.ph.i480, label %._crit_edge.i470

._crit_edge.i470:                                 ; preds = %.lr.ph.i480, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i471 = phi ptr [ %i.ctr, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cvv, %.lr.ph.i480 ] ; 6 uses
  %.025.lcssa.i472 = phi ptr [ %i.ctp, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cvu, %.lr.ph.i480 ] ; 4 uses
  %i.ctu = shl nsw i32 %i.cts, 5                  ; 2 uses
  %i.ctv = sub nsw i32 %i.ctm, %i.ctu             ; 2 uses
  %i.ctw = icmp samesign ult i32 %i.ctv, 32
  tail call void @llvm.assume(i1 %i.ctw)
  %.not.i473 = icmp eq i32 %i.ctm, %i.ctu
  br i1 %.not.i473, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i474

.lr.ph.i28.preheader.i474:                        ; preds = %._crit_edge.i470
  %i.ctx = shl nuw nsw i32 %i.ctv, 4
  %i.cty = zext nneg i32 %i.ctx to i64            ; 3 uses
  %i.ctz = tail call i64 @llvm.usub.sat.i64(i64 %i.cty, i64 16) ; 2 uses
  %i.cua = lshr exact i64 %i.ctz, 4
  %i.cub = add nuw nsw i64 %i.cua, 1              ; 2 uses
  %min.iters.check1930 = icmp samesign ult i64 %i.ctz, 304
  br i1 %min.iters.check1930, label %.lr.ph.i28.i475.preheader, label %vector.memcheck1922

vector.memcheck1922:                              ; preds = %.lr.ph.i28.preheader.i474
  %i.cuc = tail call i64 @llvm.usub.sat.i64(i64 %i.cty, i64 16) ; 2 uses
  %i.cud = lshr exact i64 %i.cuc, 3
  %i.cue = lshr exact i64 %i.cuc, 2
  %i.cuf = getelementptr i8, ptr %.026.lcssa.i471, i64 %i.cue
  %scevgep1924 = getelementptr i8, ptr %i.cuf, i64 4
  %i.cug = getelementptr i8, ptr %.025.lcssa.i472, i64 %i.cud
  %scevgep1925 = getelementptr i8, ptr %i.cug, i64 2
  %bound01926 = icmp ult ptr %.026.lcssa.i471, %scevgep1925
  %bound11927 = icmp ult ptr %.025.lcssa.i472, %scevgep1924
  %found.conflict1928 = and i1 %bound01926, %bound11927
  br i1 %found.conflict1928, label %.lr.ph.i28.i475.preheader, label %vector.ph1931

vector.ph1931:                                    ; preds = %vector.memcheck1922
  %n.vec1933 = and i64 %i.cub, 268435448          ; 4 uses
  %i.cuh = shl nuw nsw i64 %n.vec1933, 4
  %i.cui = shl nuw nsw i64 %n.vec1933, 2
  %i.cuj = getelementptr i8, ptr %.026.lcssa.i471, i64 %i.cui
  br label %vector.body1934

vector.body1934:                                  ; preds = %vector.body1934, %vector.ph1931
  %index1935 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1938, %vector.body1934 ] ; 3 uses
  %i.cuk = shl i64 %index1935, 2
  %next.gep1936 = getelementptr i8, ptr %.026.lcssa.i471, i64 %i.cuk ; 2 uses
  %i.cul = shl i64 %index1935, 1
  %6 = and i64 %i.cul, 2305843009213693936
  %i.cum = getelementptr inbounds nuw i8, ptr %.025.lcssa.i472, i64 %6 ; 2 uses
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cum, i64 8
  %wide.load = load <4 x i16>, ptr %i.cum, align 1, !alias.scope !154
  %wide.load1937 = load <4 x i16>, ptr %i.cun, align 1, !alias.scope !154
  %i.cuo = zext <4 x i16> %wide.load to <4 x i32>
  %i.cup = zext <4 x i16> %wide.load1937 to <4 x i32>
  %i.cuq = getelementptr i8, ptr %next.gep1936, i64 16
  store <4 x i32> %i.cuo, ptr %next.gep1936, align 4, !tbaa !3, !alias.scope !157, !noalias !154
  store <4 x i32> %i.cup, ptr %i.cuq, align 4, !tbaa !3, !alias.scope !157, !noalias !154
  %index.next1938 = add nuw i64 %index1935, 8     ; 2 uses
  %i.cur = icmp eq i64 %index.next1938, %n.vec1933
  br i1 %i.cur, label %middle.block1939, label %vector.body1934, !llvm.loop !159

middle.block1939:                                 ; preds = %vector.body1934
  %cmp.n1940 = icmp eq i64 %i.cub, %n.vec1933
  br i1 %cmp.n1940, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i475.preheader

.lr.ph.i28.i475.preheader:                        ; preds = %vector.memcheck1922, %.lr.ph.i28.preheader.i474, %middle.block1939
  %indvars.iv.i476.ph = phi i64 [ 0, %vector.memcheck1922 ], [ 0, %.lr.ph.i28.preheader.i474 ], [ %i.cuh, %middle.block1939 ]
  %.024.i.i477.ph = phi ptr [ %.026.lcssa.i471, %vector.memcheck1922 ], [ %.026.lcssa.i471, %.lr.ph.i28.preheader.i474 ], [ %i.cuj, %middle.block1939 ]
  br label %.lr.ph.i28.i475

.lr.ph.i28.i475:                                  ; preds = %.lr.ph.i28.i475.preheader, %.lr.ph.i28.i475
  %indvars.iv.i476 = phi i64 [ %indvars.iv.next.i478, %.lr.ph.i28.i475 ], [ %indvars.iv.i476.ph, %.lr.ph.i28.i475.preheader ] ; 2 uses
  %.024.i.i477 = phi ptr [ %i.cuw, %.lr.ph.i28.i475 ], [ %.024.i.i477.ph, %.lr.ph.i28.i475.preheader ] ; 2 uses
  %i.cus = lshr exact i64 %indvars.iv.i476, 3
  %indvars.iv.next.i478 = add nuw nsw i64 %indvars.iv.i476, 16 ; 2 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %.025.lcssa.i472, i64 %i.cus
  %i.cuu = load i16, ptr %i.cut, align 1
  %i.cuv = zext i16 %i.cuu to i32
  store i32 %i.cuv, ptr %.024.i.i477, align 4, !tbaa !3
  %i.cuw = getelementptr inbounds nuw i8, ptr %.024.i.i477, i64 4
  %i.cux = icmp samesign ult i64 %indvars.iv.next.i478, %i.cty
  br i1 %i.cux, label %.lr.ph.i28.i475, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !160

.lr.ph.i480:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i480
  %.032.i481 = phi i32 [ %i.cvw, %.lr.ph.i480 ], [ 0, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i482 = phi ptr [ %i.cvu, %.lr.ph.i480 ], [ %i.ctp, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i483 = phi ptr [ %i.cvv, %.lr.ph.i480 ], [ %i.ctr, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %.02531.i482, i64 16
  %i.cuz = getelementptr inbounds nuw i8, ptr %.02531.i482, i64 32
  %i.cva = getelementptr inbounds nuw i8, ptr %.02531.i482, i64 48
  %i.cvb = load <4 x i32>, ptr %.02531.i482, align 1 ; 2 uses
  %i.cvc = and <4 x i32> %i.cvb, splat (i32 65535)
  %i.cvd = lshr <4 x i32> %i.cvb, splat (i32 16)
  %i.cve = shufflevector <4 x i32> %i.cvc, <4 x i32> %i.cvd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cvf = getelementptr inbounds nuw i8, ptr %.02630.i483, i64 32
  %i.cvg = load <4 x i32>, ptr %i.cuy, align 1    ; 2 uses
  %i.cvh = and <4 x i32> %i.cvg, splat (i32 65535)
  %i.cvi = lshr <4 x i32> %i.cvg, splat (i32 16)
  %i.cvj = shufflevector <4 x i32> %i.cvh, <4 x i32> %i.cvi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cvk = getelementptr inbounds nuw i8, ptr %.02630.i483, i64 64
  %i.cvl = load <4 x i32>, ptr %i.cuz, align 1    ; 2 uses
  %i.cvm = and <4 x i32> %i.cvl, splat (i32 65535)
  %i.cvn = lshr <4 x i32> %i.cvl, splat (i32 16)
  %i.cvo = shufflevector <4 x i32> %i.cvm, <4 x i32> %i.cvn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cvp = getelementptr inbounds nuw i8, ptr %.02630.i483, i64 96
  %i.cvq = load <4 x i32>, ptr %i.cva, align 1    ; 2 uses
  store <8 x i32> %i.cve, ptr %.02630.i483, align 4, !tbaa !3
  store <8 x i32> %i.cvj, ptr %i.cvf, align 4, !tbaa !3
  store <8 x i32> %i.cvo, ptr %i.cvk, align 4, !tbaa !3
  %i.cvr = and <4 x i32> %i.cvq, splat (i32 65535)
  %i.cvs = lshr <4 x i32> %i.cvq, splat (i32 16)
  %i.cvt = shufflevector <4 x i32> %i.cvr, <4 x i32> %i.cvs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.cvt, ptr %i.cvp, align 4, !tbaa !3
  %i.cvu = getelementptr inbounds nuw i8, ptr %.02531.i482, i64 64 ; 2 uses
  %i.cvv = getelementptr inbounds nuw i8, ptr %.02630.i483, i64 128 ; 2 uses
  %i.cvw = add nuw nsw i32 %.032.i481, 1          ; 2 uses
  %exitcond.not.i500 = icmp eq i32 %i.cvw, %i.cts
  br i1 %exitcond.not.i500, label %._crit_edge.i470, label %.lr.ph.i480, !llvm.loop !161

bb.ai:                                            ; preds = %bb.a
  %i.cvx = mul nsw i32 %2, 17
  %i.cvy = add nsw i32 %4, %i.cvx
  %i.cvz = icmp sgt i32 %2, 0
  br i1 %i.cvz, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i531:                                    ; preds = %bb.ai, %bb.aj
  %.026.i.i532 = phi ptr [ %i.cwp, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  %.02325.i.i533 = phi i32 [ %i.cwc, %bb.aj ], [ %4, %bb.ai ] ; 5 uses
  %i.cwa = srem i32 %.02325.i.i533, 8             ; 2 uses
  %i.cwb = sdiv i32 %.02325.i.i533, 8             ; 2 uses
  %.not.i.i534 = icmp eq i32 %i.cwa, 0
  br i1 %.not.i.i534, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i531
  %i.cwc = add nsw i32 %.02325.i.i533, 17         ; 3 uses
  %i.cwd = add nsw i32 %.02325.i.i533, 16
  %i.cwe = sdiv i32 %i.cwd, 8
  %i.cwf = sub nsw i32 %i.cwe, %i.cwb             ; 2 uses
  %i.cwg = add nsw i32 %i.cwf, 1
  %i.cwh = icmp slt i32 %i.cwf, 3
  tail call void @llvm.assume(i1 %i.cwh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8, !tbaa !17
  %i.cwi = sext i32 %i.cwb to i64
  %i.cwj = getelementptr inbounds i8, ptr %0, i64 %i.cwi
  %i.cwk = sext i32 %i.cwg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr readonly align 1 %i.cwj, i64 %i.cwk, i1 false)
  %.0..0..0..0..0..0..0..0..i.i535 = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.cwl = zext nneg i32 %i.cwa to i64
  %i.cwm = lshr i64 %.0..0..0..0..0..0..0..0..i.i535, %i.cwl
  %i.cwn = trunc i64 %i.cwm to i32
  %i.cwo = and i32 %i.cwn, 131071
  store i32 %i.cwo, ptr %.026.i.i532, align 4, !tbaa !3
  %i.cwp = getelementptr inbounds nuw i8, ptr %.026.i.i532, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.cwq = icmp slt i32 %i.cwc, %i.cvy
  br i1 %i.cwq, label %.lr.ph.i.i531, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !162

_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.aj, %.lr.ph.i.i531, %bb.ai
  %.023.lcssa.i.i506 = phi i32 [ %4, %bb.ai ], [ %i.cwc, %bb.aj ], [ %.02325.i.i533, %.lr.ph.i.i531 ]
  %i.cwr = sub nsw i32 %.023.lcssa.i.i506, %4
  %i.cws = sdiv i32 %i.cwr, 17                    ; 3 uses
  %i.cwt = mul nsw i32 %i.cws, 17
  %i.cwu = add nsw i32 %i.cwt, %4
  %i.cwv = sub nsw i32 %2, %i.cws                 ; 4 uses
  %i.cww = sdiv i32 %i.cwu, 8
  %i.cwx = sext i32 %i.cww to i64                 ; 2 uses
  %i.cwy = getelementptr i8, ptr %0, i64 %i.cwx   ; 9 uses
  %i.cwz = sext i32 %i.cws to i64                 ; 2 uses
  %i.cxa = getelementptr [4 x i8], ptr %1, i64 %i.cwz ; 9 uses
  %i.cxb = sdiv i32 %i.cwv, 32                    ; 4 uses
  %i.cxc = icmp sgt i32 %i.cwv, 31
  br i1 %i.cxc, label %.lr.ph.i515.preheader, label %._crit_edge.i507

.lr.ph.i515.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i
  %i.cxd = add nsw i32 %i.cxb, -1                 ; 2 uses
  %i.cxe = zext i32 %i.cxd to i64
  %i.cxf = add nuw nsw i64 %i.cxe, 1              ; 2 uses
  %min.iters.check1902 = icmp ult i32 %i.cxd, 3
  br i1 %min.iters.check1902, label %.lr.ph.i515.preheader2040, label %vector.memcheck1895

vector.memcheck1895:                              ; preds = %.lr.ph.i515.preheader
  %i.cxg = add nsw i32 %i.cxb, -1
  %i.cxh = zext i32 %i.cxg to i64                 ; 2 uses
  %i.cxi = shl nuw nsw i64 %i.cxh, 7
  %i.cxj = shl nsw i64 %i.cwz, 2
  %i.cxk = getelementptr i8, ptr %1, i64 %i.cxi
  %i.cxl = getelementptr i8, ptr %i.cxk, i64 %i.cxj
  %scevgep1896 = getelementptr i8, ptr %i.cxl, i64 128
  %i.cxm = mul nuw nsw i64 %i.cxh, 68
  %i.cxn = getelementptr i8, ptr %0, i64 %i.cxm
  %i.cxo = getelementptr i8, ptr %i.cxn, i64 %i.cwx
  %scevgep1897 = getelementptr i8, ptr %i.cxo, i64 68
  %bound01898 = icmp ult ptr %i.cxa, %scevgep1897
  %bound11899 = icmp ult ptr %i.cwy, %scevgep1896
  %found.conflict1900 = and i1 %bound01898, %bound11899
  br i1 %found.conflict1900, label %.lr.ph.i515.preheader2040, label %vector.ph1903

vector.ph1903:                                    ; preds = %vector.memcheck1895
  %n.vec1905 = and i64 %i.cxf, 8589934588         ; 5 uses
  %i.cxp = trunc i64 %n.vec1905 to i32
  %i.cxq = mul nuw nsw i64 %n.vec1905, 68
  %i.cxr = getelementptr i8, ptr %i.cwy, i64 %i.cxq ; 2 uses
  %i.cxs = shl nuw nsw i64 %n.vec1905, 7
  %i.cxt = getelementptr i8, ptr %i.cxa, i64 %i.cxs ; 2 uses
  br label %vector.body1906

vector.body1906:                                  ; preds = %vector.body1906, %vector.ph1903
  %index1907 = phi i64 [ 0, %vector.ph1903 ], [ %index.next1916, %vector.body1906 ] ; 3 uses
  %i.cxu = mul i64 %index1907, 68                 ; 4 uses
  %next.gep1908 = getelementptr i8, ptr %i.cwy, i64 %i.cxu ; 17 uses
  %i.cxv = getelementptr i8, ptr %i.cwy, i64 %i.cxu ; 17 uses
  %next.gep1909 = getelementptr i8, ptr %i.cxv, i64 68
  %i.cxw = getelementptr i8, ptr %i.cwy, i64 %i.cxu ; 17 uses
  %next.gep1910 = getelementptr i8, ptr %i.cxw, i64 136
  %i.cxx = getelementptr i8, ptr %i.cwy, i64 %i.cxu ; 17 uses
  %next.gep1911 = getelementptr i8, ptr %i.cxx, i64 204
  %i.cxy = shl i64 %index1907, 7                  ; 4 uses
  %next.gep1912 = getelementptr i8, ptr %i.cxa, i64 %i.cxy ; 8 uses
  %i.cxz = getelementptr i8, ptr %i.cxa, i64 %i.cxy ; 8 uses
  %next.gep1913 = getelementptr i8, ptr %i.cxz, i64 128
  %i.cya = getelementptr i8, ptr %i.cxa, i64 %i.cxy ; 8 uses
  %next.gep1914 = getelementptr i8, ptr %i.cya, i64 256
  %i.cyb = getelementptr i8, ptr %i.cxa, i64 %i.cxy ; 8 uses
  %next.gep1915 = getelementptr i8, ptr %i.cyb, i64 384
  %i.cyc = load i32, ptr %next.gep1908, align 1, !alias.scope !163
  %i.cyd = load i32, ptr %next.gep1909, align 1, !alias.scope !163
  %i.cye = load i32, ptr %next.gep1910, align 1, !alias.scope !163
  %i.cyf = load i32, ptr %next.gep1911, align 1, !alias.scope !163
  %i.cyg = insertelement <4 x i32> poison, i32 %i.cyc, i64 0
  %i.cyh = insertelement <4 x i32> %i.cyg, i32 %i.cyd, i64 1
  %i.cyi = insertelement <4 x i32> %i.cyh, i32 %i.cye, i64 2
  %i.cyj = insertelement <4 x i32> %i.cyi, i32 %i.cyf, i64 3 ; 2 uses
  %i.cyk = getelementptr inbounds nuw i8, ptr %next.gep1908, i64 4
  %i.cyl = getelementptr i8, ptr %i.cxv, i64 72
  %i.cym = getelementptr i8, ptr %i.cxw, i64 140
  %i.cyn = getelementptr i8, ptr %i.cxx, i64 208
  %i.cyo = load i32, ptr %i.cyk, align 1, !alias.scope !163
  %i.cyp = load i32, ptr %i.cyl, align 1, !alias.scope !163
  %i.cyq = load i32, ptr %i.cym, align 1, !alias.scope !163
  %i.cyr = load i32, ptr %i.cyn, align 1, !alias.scope !163
  %i.cys = insertelement <4 x i32> poison, i32 %i.cyo, i64 0
  %i.cyt = insertelement <4 x i32> %i.cys, i32 %i.cyp, i64 1
  %i.cyu = insertelement <4 x i32> %i.cyt, i32 %i.cyq, i64 2
  %i.cyv = insertelement <4 x i32> %i.cyu, i32 %i.cyr, i64 3 ; 3 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %next.gep1908, i64 8
  %i.cyx = getelementptr i8, ptr %i.cxv, i64 76
  %i.cyy = getelementptr i8, ptr %i.cxw, i64 144
  %i.cyz = getelementptr i8, ptr %i.cxx, i64 212
end_hunk_2
begin_hunk_3_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %.val125.i.i731 = load i32, ptr %i.igs, align 1 ; 3 uses
  %.val123.i.i733 = load i32, ptr %i.igu, align 1 ; 3 uses
  %.val124.i.i732 = load i32, ptr %i.igt, align 1 ; 2 uses
  %i.ihy = lshr i32 %.val125.i.i731, 1
  %i.ihz = tail call i32 @llvm.fshl.i32(i32 %.val125.i.i731, i32 %.val126.i.i730, i32 22)
  %i.iia = insertelement <4 x i32> poison, i32 %i.ihz, i64 2
  %i.iib = insertelement <4 x i32> %i.iia, i32 %i.ihy, i64 3
  %i.iic = shufflevector <4 x i32> %i.ihw, <4 x i32> %i.iib, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iid = and <4 x i32> %i.iic, splat (i32 8388607)
  %i.iie = tail call i32 @llvm.fshl.i32(i32 %.val123.i.i733, i32 %.val124.i.i732, i32 17)
  %i.iif = tail call i32 @llvm.fshl.i32(i32 %.val124.i.i732, i32 %.val125.i.i731, i32 8)
  %i.iig = lshr i32 %.val123.i.i733, 6
  %i.iih = insertelement <4 x i32> poison, i32 %i.iif, i64 0
  %i.iii = insertelement <4 x i32> %i.iih, i32 %i.iie, i64 1
  %i.iij = insertelement <4 x i32> poison, i32 %i.iig, i64 2
  %i.iik = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 48
  %.val122.i.i734 = load i32, ptr %i.igv, align 1 ; 2 uses
  %.val120.i.i736 = load i32, ptr %i.igx, align 1 ; 3 uses
  %.val121.i.i735 = load i32, ptr %i.igw, align 1 ; 2 uses
  %i.iil = tail call i32 @llvm.fshl.i32(i32 %.val122.i.i734, i32 %.val123.i.i733, i32 3)
  %i.iim = insertelement <4 x i32> %i.iij, i32 %i.iil, i64 3
  %i.iin = shufflevector <4 x i32> %i.iii, <4 x i32> %i.iim, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iio = and <4 x i32> %i.iin, splat (i32 8388607)
  %i.iip = tail call i32 @llvm.fshl.i32(i32 %.val120.i.i736, i32 %.val121.i.i735, i32 21)
  %i.iiq = tail call i32 @llvm.fshl.i32(i32 %.val121.i.i735, i32 %.val122.i.i734, i32 12)
  %i.iir = lshr i32 %.val120.i.i736, 2
  %i.iis = tail call i32 @llvm.fshl.i32(i32 %.val119.i.i737, i32 %.val120.i.i736, i32 7)
  %i.iit = insertelement <4 x i32> poison, i32 %i.iiq, i64 0
  %i.iiu = insertelement <4 x i32> %i.iit, i32 %i.iip, i64 1
  %i.iiv = insertelement <4 x i32> poison, i32 %i.iir, i64 2
  %i.iiw = insertelement <4 x i32> %i.iiv, i32 %i.iis, i64 3
  %i.iix = shufflevector <4 x i32> %i.iiu, <4 x i32> %i.iiw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iiy = and <4 x i32> %i.iix, splat (i32 8388607)
  %i.iiz = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 64
  %i.ija = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 68
  %i.ijb = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 72
  %.val118.i.i738 = load i32, ptr %i.igz, align 1 ; 3 uses
  %.val116.i.i740 = load i32, ptr %i.ihb, align 1 ; 2 uses
  %.val117.i.i739 = load i32, ptr %i.iha, align 1 ; 2 uses
  %i.ijc = tail call i32 @llvm.fshl.i32(i32 %.val118.i.i738, i32 %.val119.i.i737, i32 16)
  %i.ijd = and i32 %i.ijc, 8388607
  %i.ije = lshr i32 %.val118.i.i738, 7
  %i.ijf = and i32 %i.ije, 8388607
  %i.ijg = tail call i32 @llvm.fshl.i32(i32 %.val116.i.i740, i32 %.val117.i.i739, i32 11)
  %i.ijh = tail call i32 @llvm.fshl.i32(i32 %.val117.i.i739, i32 %.val118.i.i738, i32 2)
  %i.iji = insertelement <4 x i32> poison, i32 %i.ijh, i64 0
  %i.ijj = insertelement <4 x i32> %i.iji, i32 %i.ijg, i64 1
  %i.ijk = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 88
  %.val115.i.i741 = load i32, ptr %i.ihc, align 1 ; 3 uses
  %.val113.i.i743 = load i32, ptr %i.ihe, align 1 ; 3 uses
  %.val114.i.i742 = load i32, ptr %i.ihd, align 1 ; 2 uses
  %i.ijl = lshr i32 %.val115.i.i741, 3
  %i.ijm = tail call i32 @llvm.fshl.i32(i32 %.val115.i.i741, i32 %.val116.i.i740, i32 20)
  %i.ijn = insertelement <4 x i32> poison, i32 %i.ijm, i64 2
  %i.ijo = insertelement <4 x i32> %i.ijn, i32 %i.ijl, i64 3
  %i.ijp = shufflevector <4 x i32> %i.ijj, <4 x i32> %i.ijo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ijq = and <4 x i32> %i.ijp, splat (i32 8388607)
  %i.ijr = tail call i32 @llvm.fshl.i32(i32 %.val113.i.i743, i32 %.val114.i.i742, i32 15)
  %i.ijs = tail call i32 @llvm.fshl.i32(i32 %.val114.i.i742, i32 %.val115.i.i741, i32 6)
  %i.ijt = lshr i32 %.val113.i.i743, 8
  %i.iju = insertelement <4 x i32> poison, i32 %i.ijs, i64 0
  %i.ijv = insertelement <4 x i32> %i.iju, i32 %i.ijr, i64 1
  %i.ijw = insertelement <4 x i32> poison, i32 %i.ijt, i64 2
  %i.ijx = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 104
  %.val112.i.i744 = load i32, ptr %i.ihf, align 1 ; 2 uses
  %.val110.i.i746 = load i32, ptr %i.ihh, align 1 ; 3 uses
  %.val111.i.i745 = load i32, ptr %i.ihg, align 1 ; 2 uses
  store <4 x i32> %i.ihs, ptr %.02630.i729, align 4, !tbaa !3
  store <4 x i32> %i.iid, ptr %i.ihn, align 4, !tbaa !3
  store <4 x i32> %i.iio, ptr %i.ihx, align 4, !tbaa !3
  store <4 x i32> %i.iiy, ptr %i.iik, align 4, !tbaa !3
  store i32 %i.ijd, ptr %i.iiz, align 4, !tbaa !3
  store i32 %i.ijf, ptr %i.ija, align 4, !tbaa !3
  store <4 x i32> %i.ijq, ptr %i.ijb, align 4, !tbaa !3
  %i.ijy = tail call i32 @llvm.fshl.i32(i32 %.val112.i.i744, i32 %.val113.i.i743, i32 1)
  %i.ijz = insertelement <4 x i32> %i.ijw, i32 %i.ijy, i64 3
  %i.ika = shufflevector <4 x i32> %i.ijv, <4 x i32> %i.ijz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ikb = and <4 x i32> %i.ika, splat (i32 8388607)
  store <4 x i32> %i.ikb, ptr %i.ijk, align 4, !tbaa !3
  %i.ikc = tail call i32 @llvm.fshl.i32(i32 %.val110.i.i746, i32 %.val111.i.i745, i32 19)
  %i.ikd = tail call i32 @llvm.fshl.i32(i32 %.val111.i.i745, i32 %.val112.i.i744, i32 10)
  %i.ike = lshr i32 %.val110.i.i746, 4
  %i.ikf = tail call i32 @llvm.fshl.i32(i32 %.val109.i.i747, i32 %.val110.i.i746, i32 5)
  %i.ikg = insertelement <4 x i32> poison, i32 %i.ikd, i64 0
  %i.ikh = insertelement <4 x i32> %i.ikg, i32 %i.ikc, i64 1
  %i.iki = insertelement <4 x i32> poison, i32 %i.ike, i64 2
  %i.ikj = insertelement <4 x i32> %i.iki, i32 %i.ikf, i64 3
  %i.ikk = shufflevector <4 x i32> %i.ikh, <4 x i32> %i.ikj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ikl = and <4 x i32> %i.ikk, splat (i32 8388607)
  store <4 x i32> %i.ikl, ptr %i.ijx, align 4, !tbaa !3
  %i.ikm = tail call i32 @llvm.fshl.i32(i32 %.val.i.i748, i32 %.val109.i.i747, i32 14)
  %i.ikn = and i32 %i.ikm, 8388607
  %i.iko = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 120
  store i32 %i.ikn, ptr %i.iko, align 4, !tbaa !3
  %i.ikp = lshr i32 %.val.i.i748, 9
  %i.ikq = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 124
  store i32 %i.ikp, ptr %i.ikq, align 4, !tbaa !3
  %i.ikr = getelementptr inbounds nuw i8, ptr %.02531.i728, i64 92 ; 2 uses
  %i.iks = getelementptr inbounds nuw i8, ptr %.02630.i729, i64 128 ; 2 uses
  %i.ikt = add nuw nsw i32 %.032.i727, 1          ; 2 uses
  %exitcond.not.i749 = icmp eq i32 %i.ikt, %i.hnb
  br i1 %exitcond.not.i749, label %._crit_edge.i718, label %.lr.ph.i726, !llvm.loop !218

bb.aw:                                            ; preds = %bb.a
  %i.iku = mul nsw i32 %2, 24
  %i.ikv = add nsw i32 %4, %i.iku
  %i.ikw = icmp sgt i32 %2, 0
  br i1 %i.ikw, label %.lr.ph.i.i795, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i795:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i796 = phi ptr [ %i.ilm, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i797 = phi i32 [ %i.ikz, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.ikx = srem i32 %.02325.i.i797, 8             ; 2 uses
  %i.iky = sdiv i32 %.02325.i.i797, 8             ; 2 uses
  %.not.i.i798 = icmp eq i32 %i.ikx, 0
  br i1 %.not.i.i798, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i795
  %i.ikz = add nsw i32 %.02325.i.i797, 24         ; 3 uses
  %i.ila = add nsw i32 %.02325.i.i797, 23
  %i.ilb = sdiv i32 %i.ila, 8
  %i.ilc = sub nsw i32 %i.ilb, %i.iky             ; 2 uses
  %i.ild = add nsw i32 %i.ilc, 1
  %i.ile = icmp slt i32 %i.ilc, 4
  tail call void @llvm.assume(i1 %i.ile)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !17
  %i.ilf = sext i32 %i.iky to i64
  %i.ilg = getelementptr inbounds i8, ptr %0, i64 %i.ilf
  %i.ilh = sext i32 %i.ild to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.ilg, i64 %i.ilh, i1 false)
  %.0..0..0..0..0..0..0..0..i.i799 = load i64, ptr %i.p, align 8, !tbaa !17
  %i.ili = zext nneg i32 %i.ikx to i64
  %i.ilj = lshr i64 %.0..0..0..0..0..0..0..0..i.i799, %i.ili
  %i.ilk = trunc i64 %i.ilj to i32
  %i.ill = and i32 %i.ilk, 16777215
  store i32 %i.ill, ptr %.026.i.i796, align 4, !tbaa !3
  %i.ilm = getelementptr inbounds nuw i8, ptr %.026.i.i796, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.iln = icmp slt i32 %i.ikz, %i.ikv
  br i1 %i.iln, label %.lr.ph.i.i795, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !219

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i795, %bb.aw
  %.023.lcssa.i.i755 = phi i32 [ %4, %bb.aw ], [ %i.ikz, %bb.ax ], [ %.02325.i.i797, %.lr.ph.i.i795 ]
  %i.ilo = sub nsw i32 %.023.lcssa.i.i755, %4
  %i.ilp = sdiv i32 %i.ilo, 24                    ; 3 uses
  %i.ilq = mul nsw i32 %i.ilp, 24
  %i.ilr = add nsw i32 %i.ilq, %4
  %i.ils = sub nsw i32 %2, %i.ilp                 ; 4 uses
  %i.ilt = sdiv i32 %i.ilr, 8
  %i.ilu = sext i32 %i.ilt to i64
  %i.ilv = getelementptr inbounds i8, ptr %0, i64 %i.ilu ; 2 uses
  %i.ilw = sext i32 %i.ilp to i64
  %i.ilx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ilw ; 2 uses
  %i.ily = sdiv i32 %i.ils, 32                    ; 2 uses
  %i.ilz = icmp sgt i32 %i.ils, 31
  br i1 %i.ilz, label %.lr.ph.i766, label %._crit_edge.i756

._crit_edge.i756:                                 ; preds = %.lr.ph.i766, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i757 = phi ptr [ %i.ilx, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.irl, %.lr.ph.i766 ] ; 6 uses
  %.025.lcssa.i758 = phi ptr [ %i.ilv, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.irk, %.lr.ph.i766 ] ; 7 uses
  %i.ima = shl nsw i32 %i.ily, 5                  ; 2 uses
  %i.imb = sub nsw i32 %i.ils, %i.ima             ; 2 uses
  %i.imc = icmp samesign ult i32 %i.imb, 32
  tail call void @llvm.assume(i1 %i.imc)
  %.not.i759 = icmp eq i32 %i.ils, %i.ima
  br i1 %.not.i759, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i760

.lr.ph.i28.preheader.i760:                        ; preds = %._crit_edge.i756
  %i.imd = mul nuw nsw i32 %i.imb, 24
  %i.ime = zext nneg i32 %i.imd to i64            ; 3 uses
  %i.imf = add nsw i64 %i.ime, -8                 ; 2 uses
  %i.img = udiv i64 %i.imf, 24
  %i.imh = add nuw nsw i64 %i.img, 1              ; 2 uses
  %min.iters.check1748 = icmp ult i64 %i.imf, 456
  br i1 %min.iters.check1748, label %.lr.ph.i28.i761.preheader, label %vector.memcheck1741

vector.memcheck1741:                              ; preds = %.lr.ph.i28.preheader.i760
  %i.imi = add nsw i64 %i.ime, -8
  %i.imj = udiv i64 %i.imi, 24                    ; 2 uses
  %i.imk = shl nuw nsw i64 %i.imj, 2
  %i.iml = getelementptr i8, ptr %.026.lcssa.i757, i64 %i.imk
  %scevgep1742 = getelementptr i8, ptr %i.iml, i64 4
  %i.imm = mul nuw nsw i64 %i.imj, 3
  %i.imn = getelementptr i8, ptr %.025.lcssa.i758, i64 %i.imm
  %scevgep1743 = getelementptr i8, ptr %i.imn, i64 3
  %bound01744 = icmp ult ptr %.026.lcssa.i757, %scevgep1743
  %bound11745 = icmp ult ptr %.025.lcssa.i758, %scevgep1742
  %found.conflict1746 = and i1 %bound01744, %bound11745
  br i1 %found.conflict1746, label %.lr.ph.i28.i761.preheader, label %vector.ph1749

vector.ph1749:                                    ; preds = %vector.memcheck1741
  %n.vec1751 = and i64 %i.imh, 2305843009213693948 ; 4 uses
  %i.imo = mul i64 %n.vec1751, 24
  %i.imp = shl nuw nsw i64 %n.vec1751, 2
  %i.imq = getelementptr i8, ptr %.026.lcssa.i757, i64 %i.imp
  br label %vector.body1752

vector.body1752:                                  ; preds = %vector.body1752, %vector.ph1749
  %index1753 = phi i64 [ 0, %vector.ph1749 ], [ %index.next1755, %vector.body1752 ] ; 3 uses
  %i.imr = mul i64 %index1753, 24                 ; 4 uses
  %i.ims = add i64 %i.imr, 48
  %i.imt = add i64 %i.imr, 72
  %i.imu = shl i64 %index1753, 2
  %next.gep1754 = getelementptr i8, ptr %.026.lcssa.i757, i64 %i.imu
  %i.imv = lshr exact i64 %i.imr, 3
  %i.imw = lshr exact i64 %i.imr, 3
  %i.imx = lshr exact i64 %i.ims, 3
  %i.imy = lshr exact i64 %i.imt, 3
  %i.imz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i758, i64 %i.imv
  %i.ina = getelementptr inbounds nuw i8, ptr %.025.lcssa.i758, i64 %i.imw
  %i.inb = getelementptr inbounds nuw i8, ptr %i.ina, i64 3
  %i.inc = getelementptr inbounds nuw i8, ptr %.025.lcssa.i758, i64 %i.imx
  %i.ind = getelementptr inbounds nuw i8, ptr %.025.lcssa.i758, i64 %i.imy
  %i.ine = load i24, ptr %i.imz, align 1, !alias.scope !220
  %i.inf = load i24, ptr %i.inb, align 1, !alias.scope !220
  %i.ing = load i24, ptr %i.inc, align 1, !alias.scope !220
  %i.inh = load i24, ptr %i.ind, align 1, !alias.scope !220
  %i.ini = insertelement <4 x i24> poison, i24 %i.ine, i64 0
  %i.inj = insertelement <4 x i24> %i.ini, i24 %i.inf, i64 1
  %i.ink = insertelement <4 x i24> %i.inj, i24 %i.ing, i64 2
  %i.inl = insertelement <4 x i24> %i.ink, i24 %i.inh, i64 3
  %i.inm = zext <4 x i24> %i.inl to <4 x i32>
  store <4 x i32> %i.inm, ptr %next.gep1754, align 4, !tbaa !3, !alias.scope !223, !noalias !220
  %index.next1755 = add nuw i64 %index1753, 4     ; 2 uses
  %i.inn = icmp eq i64 %index.next1755, %n.vec1751
  br i1 %i.inn, label %middle.block1756, label %vector.body1752, !llvm.loop !225

middle.block1756:                                 ; preds = %vector.body1752
  %cmp.n1757 = icmp eq i64 %i.imh, %n.vec1751
  br i1 %cmp.n1757, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i761.preheader

.lr.ph.i28.i761.preheader:                        ; preds = %vector.memcheck1741, %.lr.ph.i28.preheader.i760, %middle.block1756
  %indvars.iv.i762.ph = phi i64 [ 0, %vector.memcheck1741 ], [ 0, %.lr.ph.i28.preheader.i760 ], [ %i.imo, %middle.block1756 ]
  %.024.i.i763.ph = phi ptr [ %.026.lcssa.i757, %vector.memcheck1741 ], [ %.026.lcssa.i757, %.lr.ph.i28.preheader.i760 ], [ %i.imq, %middle.block1756 ]
  br label %.lr.ph.i28.i761

.lr.ph.i28.i761:                                  ; preds = %.lr.ph.i28.i761.preheader, %.lr.ph.i28.i761
  %indvars.iv.i762 = phi i64 [ %indvars.iv.next.i764, %.lr.ph.i28.i761 ], [ %indvars.iv.i762.ph, %.lr.ph.i28.i761.preheader ] ; 2 uses
  %.024.i.i763 = phi ptr [ %i.inr, %.lr.ph.i28.i761 ], [ %.024.i.i763.ph, %.lr.ph.i28.i761.preheader ] ; 2 uses
  %i.ino = lshr exact i64 %indvars.iv.i762, 3
  %indvars.iv.next.i764 = add nuw nsw i64 %indvars.iv.i762, 24 ; 2 uses
  %i.inp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i758, i64 %i.ino
  %.0.copyload = load i24, ptr %i.inp, align 1
  %i.inq = zext i24 %.0.copyload to i32
  store i32 %i.inq, ptr %.024.i.i763, align 4, !tbaa !3
  %i.inr = getelementptr inbounds nuw i8, ptr %.024.i.i763, i64 4
  %i.ins = icmp samesign ult i64 %indvars.iv.next.i764, %i.ime
  br i1 %i.ins, label %.lr.ph.i28.i761, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_122ScalarUnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !226

.lr.ph.i766:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i766
  %.032.i767 = phi i32 [ %i.irm, %.lr.ph.i766 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i768 = phi ptr [ %i.irk, %.lr.ph.i766 ], [ %i.ilv, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 25 uses
  %.02630.i769 = phi ptr [ %i.irl, %.lr.ph.i766 ], [ %i.ilx, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 12 uses
  %.val126.i.i770 = load i32, ptr %.02531.i768, align 1 ; 2 uses
  %i.int = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 4
  %.val125.i.i771 = load i32, ptr %i.int, align 1 ; 2 uses
  %i.inu = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 8
  %.val124.i.i772 = load i32, ptr %i.inu, align 1 ; 2 uses
  %i.inv = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 12
  %.val123.i.i773 = load i32, ptr %i.inv, align 1 ; 2 uses
  %i.inw = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 16
  %.val122.i.i774 = load i32, ptr %i.inw, align 1 ; 2 uses
  %i.inx = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 20
  %.val121.i.i775 = load i32, ptr %i.inx, align 1 ; 2 uses
  %i.iny = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 24
  %.val120.i.i776 = load i32, ptr %i.iny, align 1 ; 2 uses
  %i.inz = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 28
  %.val119.i.i777 = load i32, ptr %i.inz, align 1 ; 2 uses
  %i.ioa = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 32
  %.val118.i.i778 = load i32, ptr %i.ioa, align 1 ; 2 uses
  %i.iob = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 36
  %.val117.i.i779 = load i32, ptr %i.iob, align 1 ; 2 uses
  %i.ioc = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 40
  %.val116.i.i780 = load i32, ptr %i.ioc, align 1 ; 2 uses
  %i.iod = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 44
  %.val115.i.i781 = load i32, ptr %i.iod, align 1 ; 2 uses
  %i.ioe = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 48
  %.val114.i.i782 = load i32, ptr %i.ioe, align 1 ; 2 uses
  %i.iof = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 52
  %.val113.i.i783 = load i32, ptr %i.iof, align 1 ; 2 uses
  %i.iog = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 56
  %.val112.i.i784 = load i32, ptr %i.iog, align 1 ; 2 uses
  %i.ioh = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 60
  %.val111.i.i785 = load i32, ptr %i.ioh, align 1 ; 2 uses
  %i.ioi = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 64
  %.val110.i.i786 = load i32, ptr %i.ioi, align 1 ; 2 uses
  %i.ioj = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 68
  %.val109.i.i787 = load i32, ptr %i.ioj, align 1 ; 2 uses
  %i.iok = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 72
  %.val108.i.i788 = load i32, ptr %i.iok, align 1 ; 2 uses
  %i.iol = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 76
  %.val107.i.i789 = load i32, ptr %i.iol, align 1 ; 2 uses
  %i.iom = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 80
  %.val106.i.i790 = load i32, ptr %i.iom, align 1 ; 2 uses
  %i.ion = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 84
  %.val105.i.i791 = load i32, ptr %i.ion, align 1 ; 2 uses
  %i.ioo = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 88
  %.val104.i.i792 = load i32, ptr %i.ioo, align 1 ; 2 uses
  %i.iop = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 92
  %.val.i.i793 = load i32, ptr %i.iop, align 1    ; 2 uses
  %i.ioq = and i32 %.val126.i.i770, 16777215
  store i32 %i.ioq, ptr %.02630.i769, align 4, !tbaa !3
  %i.ior = tail call i32 @llvm.fshl.i32(i32 %.val125.i.i771, i32 %.val126.i.i770, i32 8)
  %i.ios = and i32 %i.ior, 16777215
  %i.iot = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 4
  store i32 %i.ios, ptr %i.iot, align 4, !tbaa !3
  %i.iou = tail call i32 @llvm.fshl.i32(i32 %.val124.i.i772, i32 %.val125.i.i771, i32 16)
  %i.iov = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 8
  %i.iow = tail call i32 @llvm.fshl.i32(i32 %.val122.i.i774, i32 %.val123.i.i773, i32 8)
  %i.iox = lshr i32 %.val124.i.i772, 8
  %i.ioy = insertelement <4 x i32> poison, i32 %i.iou, i64 0
  %i.ioz = insertelement <4 x i32> %i.ioy, i32 %i.iox, i64 1
  %i.ipa = insertelement <4 x i32> %i.ioz, i32 %.val123.i.i773, i64 2
  %i.ipb = insertelement <4 x i32> %i.ipa, i32 %i.iow, i64 3
  %i.ipc = and <4 x i32> %i.ipb, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.ipc, ptr %i.iov, align 4, !tbaa !3
  %i.ipd = tail call i32 @llvm.fshl.i32(i32 %.val121.i.i775, i32 %.val122.i.i774, i32 16)
  %i.ipe = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 24
  %i.ipf = tail call i32 @llvm.fshl.i32(i32 %.val119.i.i777, i32 %.val120.i.i776, i32 8)
  %i.ipg = lshr i32 %.val121.i.i775, 8
  %i.iph = insertelement <4 x i32> poison, i32 %i.ipd, i64 0
  %i.ipi = insertelement <4 x i32> %i.iph, i32 %i.ipg, i64 1
  %i.ipj = insertelement <4 x i32> %i.ipi, i32 %.val120.i.i776, i64 2
  %i.ipk = insertelement <4 x i32> %i.ipj, i32 %i.ipf, i64 3
  %i.ipl = and <4 x i32> %i.ipk, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.ipl, ptr %i.ipe, align 4, !tbaa !3
  %i.ipm = tail call i32 @llvm.fshl.i32(i32 %.val118.i.i778, i32 %.val119.i.i777, i32 16)
  %i.ipn = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 40
  %i.ipo = tail call i32 @llvm.fshl.i32(i32 %.val116.i.i780, i32 %.val117.i.i779, i32 8)
  %i.ipp = lshr i32 %.val118.i.i778, 8
  %i.ipq = insertelement <4 x i32> poison, i32 %i.ipm, i64 0
  %i.ipr = insertelement <4 x i32> %i.ipq, i32 %i.ipp, i64 1
  %i.ips = insertelement <4 x i32> %i.ipr, i32 %.val117.i.i779, i64 2
  %i.ipt = insertelement <4 x i32> %i.ips, i32 %i.ipo, i64 3
  %i.ipu = and <4 x i32> %i.ipt, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.ipu, ptr %i.ipn, align 4, !tbaa !3
  %i.ipv = tail call i32 @llvm.fshl.i32(i32 %.val115.i.i781, i32 %.val116.i.i780, i32 16)
  %i.ipw = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 56
  %i.ipx = tail call i32 @llvm.fshl.i32(i32 %.val113.i.i783, i32 %.val114.i.i782, i32 8)
  %i.ipy = lshr i32 %.val115.i.i781, 8
  %i.ipz = insertelement <4 x i32> poison, i32 %i.ipv, i64 0
  %i.iqa = insertelement <4 x i32> %i.ipz, i32 %i.ipy, i64 1
  %i.iqb = insertelement <4 x i32> %i.iqa, i32 %.val114.i.i782, i64 2
  %i.iqc = insertelement <4 x i32> %i.iqb, i32 %i.ipx, i64 3
  %i.iqd = and <4 x i32> %i.iqc, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.iqd, ptr %i.ipw, align 4, !tbaa !3
  %i.iqe = tail call i32 @llvm.fshl.i32(i32 %.val112.i.i784, i32 %.val113.i.i783, i32 16)
  %i.iqf = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 72
  %i.iqg = tail call i32 @llvm.fshl.i32(i32 %.val110.i.i786, i32 %.val111.i.i785, i32 8)
  %i.iqh = lshr i32 %.val112.i.i784, 8
  %i.iqi = insertelement <4 x i32> poison, i32 %i.iqe, i64 0
  %i.iqj = insertelement <4 x i32> %i.iqi, i32 %i.iqh, i64 1
  %i.iqk = insertelement <4 x i32> %i.iqj, i32 %.val111.i.i785, i64 2
  %i.iql = insertelement <4 x i32> %i.iqk, i32 %i.iqg, i64 3
  %i.iqm = and <4 x i32> %i.iql, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.iqm, ptr %i.iqf, align 4, !tbaa !3
  %i.iqn = tail call i32 @llvm.fshl.i32(i32 %.val109.i.i787, i32 %.val110.i.i786, i32 16)
  %i.iqo = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 88
  %i.iqp = tail call i32 @llvm.fshl.i32(i32 %.val107.i.i789, i32 %.val108.i.i788, i32 8)
  %i.iqq = lshr i32 %.val109.i.i787, 8
  %i.iqr = insertelement <4 x i32> poison, i32 %i.iqn, i64 0
  %i.iqs = insertelement <4 x i32> %i.iqr, i32 %i.iqq, i64 1
  %i.iqt = insertelement <4 x i32> %i.iqs, i32 %.val108.i.i788, i64 2
  %i.iqu = insertelement <4 x i32> %i.iqt, i32 %i.iqp, i64 3
  %i.iqv = and <4 x i32> %i.iqu, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.iqv, ptr %i.iqo, align 4, !tbaa !3
  %i.iqw = tail call i32 @llvm.fshl.i32(i32 %.val106.i.i790, i32 %.val107.i.i789, i32 16)
  %i.iqx = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 104
  %i.iqy = tail call i32 @llvm.fshl.i32(i32 %.val104.i.i792, i32 %.val105.i.i791, i32 8)
  %i.iqz = lshr i32 %.val106.i.i790, 8
  %i.ira = insertelement <4 x i32> poison, i32 %i.iqw, i64 0
  %i.irb = insertelement <4 x i32> %i.ira, i32 %i.iqz, i64 1
  %i.irc = insertelement <4 x i32> %i.irb, i32 %.val105.i.i791, i64 2
  %i.ird = insertelement <4 x i32> %i.irc, i32 %i.iqy, i64 3
  %i.ire = and <4 x i32> %i.ird, <i32 16777215, i32 -1, i32 16777215, i32 16777215>
  store <4 x i32> %i.ire, ptr %i.iqx, align 4, !tbaa !3
  %i.irf = tail call i32 @llvm.fshl.i32(i32 %.val.i.i793, i32 %.val104.i.i792, i32 16)
  %i.irg = and i32 %i.irf, 16777215
  %i.irh = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 120
  store i32 %i.irg, ptr %i.irh, align 4, !tbaa !3
  %i.iri = lshr i32 %.val.i.i793, 8
  %i.irj = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 124
  store i32 %i.iri, ptr %i.irj, align 4, !tbaa !3
  %i.irk = getelementptr inbounds nuw i8, ptr %.02531.i768, i64 96 ; 2 uses
  %i.irl = getelementptr inbounds nuw i8, ptr %.02630.i769, i64 128 ; 2 uses
  %i.irm = add nuw nsw i32 %.032.i767, 1          ; 2 uses
  %exitcond.not.i794 = icmp eq i32 %i.irm, %i.ily
  br i1 %exitcond.not.i794, label %._crit_edge.i756, label %.lr.ph.i766, !llvm.loop !227

bb.ay:                                            ; preds = %bb.a
  %i.irn = mul nsw i32 %2, 25
  %i.iro = add nsw i32 %4, %i.irn
  %i.irp = icmp sgt i32 %2, 0
  br i1 %i.irp, label %.lr.ph.i.i833, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i833:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i834 = phi ptr [ %i.isf, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i835 = phi i32 [ %i.irs, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.irq = srem i32 %.02325.i.i835, 8             ; 2 uses
  %i.irr = sdiv i32 %.02325.i.i835, 8             ; 2 uses
end_hunk_3
